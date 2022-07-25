Gamepad Input Handling
======================

Gamepad Layout
--------------

Diagrams
^^^^^^^^

.. todo:: PUT DIAGRAMS HERE BEFORE MERGING

Button Aliases
^^^^^^^^^^^^^^

Since both PS4-style and Xbox-Style controllers are FTC legal, there are `aliases in the FTC SDK <https://github.com/OpenFTC/Extracted-RC/blob/c960dd7de34d49a66c00a345636175392f936b9e/RobotCore/src/main/java/com/qualcomm/robotcore/hardware/Gamepad.java#L892>`_ between PS4-style and Xbox-style button naming.

.. dropdown:: Aliases

   +--------------+-----------+
   | PS4          | Xbox      |
   +==============+===========+
   | ``circle``   | ``b``     |
   +--------------+-----------+
   | ``cross``    | ``a``     |
   +--------------+-----------+
   | ``triangle`` | ``y``     |
   +--------------+-----------+
   | ``square``   | ``x``     |
   +--------------+-----------+
   | ``share``    | ``back``  |
   +--------------+-----------+
   | ``options``  | ``start`` |
   +--------------+-----------+
   | ``ps``       | ``guide`` |
   +--------------+-----------+

Boolean Inputs
--------------

TeleOp OpModes are generally written in iterative style, with a loop that contains code that is called over an over. Under this paradigm, a simple handling of user input could look like

.. code-block::

   if (gamepad1.a) {
       motor.setPower(1);
   }
   else {
       motor.setPower(0);
   }

In this situation, this likely does what the driver wants: while the button is held, the motor's power is set to 1, and otherwise the power is set to 0. Since writing the same power to a motor multiple times has no effect on the motor's behavior, this works perfectly fine. However, issues arise when wanting to do something once when a button is pressed. For example, it is tempting to write something like this to get a press of a or b to adjust a servo.

.. code-block::

   if (gamepad1.a) {
       servo.setPosition(servo.getPosition()+0.1);
   }
   else if (gamepad1.b) {
       servo.setPosition(servo.getPosition()-0.1);
   }

However, this will behave unpredictably, as each time the button is pressed, the ``setPosition`` method will be called multiple times as the loop frequency changes as does the button press length. There are a few techniques to avoid this, however they all require comparing the gamepad state to the gamepad state in the previous loop; therefore, it is necessary to store it.

Storing Gamepad State
^^^^^^^^^^^^^^^^^^^^^

While each gamepad input's previous state could be stored individually in a variable, e.g. ``boolean previousA``, this very quickly gets annoying. Luckily, the FTC SDK provides a way to copy gamepad states, with ``gamepad.copy(gamepadToCopy)``.

.. note:: In addition to storing the gamepad state for the previous iteration of the loop, the gamepad state for the current iteration of the loop is also stored. This is necessary because if the state of a button was always read from ``gamepad1``/``gamepad2``, it could change between reading the value and storing the previous value. This is because ``gamepad1``/``gamepad2`` update concurrently for ``LinearOpMode``, and so can change during a loop iteration.

In a ``LinearOpMode`` based TeleOp program, storing both current and previous gamepad state could look like:

.. code-block::

   public void runOpMode() {
        // By setting these values to new Gamepad(), they will default to all
        // boolean values as false and all float values as 0
        Gamepad currentGamepad1 = new Gamepad();
        Gamepad currentGamepad2 = new Gamepad();

        Gamepad previousGamepad1 = new Gamepad();
        Gamepad previousGamepad2 = new Gamepad();

        // other initialization code goes here

        while (opModeIsActive()) {
            try {
                // Store the gamepad values from the previous loop iteration in
                // previousGamepad1/2 to be used in this loop iteration.
                // This is equivalent to doing this at the end of the previous
                // loop iteration, as it will run in the same order except for
                // the first/last iteration of the loop.
                previousGamepad1.copy(currentGamepad1);
                previousGamepad2.copy(currentGamepad2);

                // Store the gamepad values from this loop iteration in
                // currentGamepad1/2 to be used for the entirety of this loop iteration.
                // This prevents the gamepad values from changing between being
                // used and stored in previousGamepad1/2.
                currentGamepad1.copy(gamepad1);
                currentGamepad2.copy(gamepad2);
            }
            catch (RobotCoreException e) {
                // Swallow the possible exception, it should not happen as
                // currentGamepad1/2 are being copied from valid Gamepads.
            }

            // Main teleop loop goes here
        }
    }

Rising-Edge Detector
^^^^^^^^^^^^^^^^^^^^

The most commonly used technique is a rising-edge detector. It allows code to be run only once when the button is initially pressed, as opposed to every loop while it is held down. It works by checking that the button is currently pressed, but was not pressed in the previous loop. For example, inside of a TeleOp loop:

.. code-block::

   if (currentGamepad1.a && !previousGamepad1.a) {
       servo.setPosition(servo.getPosition() + 0.1);
   }

This will increase the servo position by 0.1 exactly once per press of ``a``.

Falling-Edge Detector
^^^^^^^^^^^^^^^^^^^^^

A very similar technique is a falling-edge detector. It allows code to be run only once when the button is released, as opposed to every loop while it is held down. It works by checking that the button is currently not pressed, but was pressed in the previous loop. For example, inside of a TeleOp loop:

.. code-block::

   if (!currentGamepad1.b && previousGamepad1.b) {
       servo.setPosition(servo.getPosition() - 0.1);
   }

This will decrease the servo position by 0.1 exactly once per release of ``b``.

.. note:: One button can run different code on the rising and falling edge. This is mainly useful for fairly complex interactions and so is not demonstrated here.

Toggles
^^^^^^^

One common use case for rising-edge detectors is to control toggles.
