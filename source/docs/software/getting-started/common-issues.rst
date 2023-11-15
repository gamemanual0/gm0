.. include:: <isonum.txt>

Common Issues
=============

.. warning:: Be careful what code you take as a reference from this page! Some of it is intentionally buggy to demonstrate potential easy-to-make errors.

Exceptions
----------

Exceptions are events that occur during the execution of a program, disrupting the normal flow of instructions, used in error events or problems that arise during runtime. A exception can be catched to avoid propagation, otherwise any exception that's not handled will cause the program flow to stop immediately.

Some common types of exceptions include:

- **NullPointerException**

  - It occurs when trying to call a method or getting a property of an object from a variable with a *null* value, which basically means that the variable doesn't hold a value *yet*, or the value doesn't exist.
  - This exception is one of the most common in FTC\ |reg|, below is an example that throws a NullPointerException:

  .. code:: java

    public class CrashyOpMode extends OpMode {

        // This call to the "get" method here will throw a NullPointerException.
        //
        // The value of the "hardwareMap" variable is null at this point, due to
        // the way the SDK is limited to define the value of this variable, its
        // value is defined right before the init() (or runOpMode() in LinearOpModes)
        // method is called.
        Servo clawServo = hardwareMap.get(Servo.class, "claw");

        @Override
        public void init() {
            // This statement won't ever be reached due to the
            // thrown NullPointerException, explained above,
            // since it happens before the OpMode starts execution.
            clawServo.setPosition(0.5);
        }

        // ...

    }

  - This can be fixed moving the "Servo" variable value definition to the init (or ``runOpMode()`` in LinearOpModes) method as follows:

  .. code:: java

    public class WorkingOpMode extends OpMode {

        Servo clawServo = null;

        @Override
        public void init() {
            // This won't throw a NullPointerException since the value of the
            // "hardwareMap" variable is defined at this point, but note that
            // the "get" method will return null if the name "claw" isn't
            // configured. (consult the "Using the SDK" section)
            clawServo = hardwareMap.get(Servo.class, "claw");

            // This statement should be reached and executed now.
            //
            // Note that if the "claw" servo is not configured, the value returned
            // by the hardwareMap will be null as explained before, therefore,
            // a NullPointerException would be thrown here if that happens.
            clawServo.setPosition(0.5);
        }

        // ...

    }

- **TargetPositionNotSetException**

  - This exception type is a custom one from the SDK. It means you changed the motor ``RunMode`` to RUN_TO_POSITION before setting a target position:

  .. code:: java

     // This will throw a "TargetPositionNotSetException" here!
     motor.setRunMode(DcMotor.RunMode.RUN_TO_POSITION);

     // And this statement won't be reached.
     motor.setTargetPosition(1120);

  - It is fixed by simply switching the order of the statements; setting target position first, then changing the ``RunMode``:

  .. code:: java

     // Setting the target position first
     motor.setTargetPosition(1120);

     // Then switching the RunMode
     motor.setRunMode(DcMotor.RunMode.RUN_TO_POSITION);

- **ArithmeticException**

  - Occurs when performing any illegal arithmetic operations such as dividing by zero:

  .. code:: java

     int number = 128 / 0; // This will throw an ArithmeticException!

  - It can be handled by enclosing the code likely to throw this type of exception with a `try catch block <https://www.w3schools.com/java/java_try_catch.asp>`_:

  .. code:: java

     int number; // Declaring the variable in the outside scope

     try {
        // Giving it a value that will possibly throw an ArithmeticException
        number = 128 / 0;
     } catch (ArithmeticException e) {
        // Do something when the ArithmeticException happens.
        // (The value of the "number" variable will remain 0)
     }

- **InterruptedException**

  - It means that the SDK requested the OpMode to stop, and it's considered part of normal operation. An interrupt means that the current thread has been requested to end, so don't panic when you see a spam of those in :ref:`logcat <logcat>`!

  - If you call a method that possibly throws an InterruptedException (such as ``Thread.sleep()``) it should be handled like this, with the try catch syntax mentioned before:

    .. code:: java

       try {
          // Block for 500 milliseconds
          Thread.sleep(500);
       } catch(InterruptedException e) {
          // Tells the current thread (OpMode) to
          // end the execution as soon as possible
          Thread.currentThread().interrupt();
       }

  - Note that LinearOpMode already contains a shorthand `sleep() <https://github.com/OpenFTC/Extracted-RC/blob/f47d6f15fa1b59faaf509a522e0ec04f223ec125/RobotCore/src/main/java/com/qualcomm/robotcore/eventloop/opmode/LinearOpMode.java#L96>`_ method that does this under the hood. (And you shouldn't be using sleeps in OpMode since they're more strictly controlled. Read next sections for further information)

How the SDK handles exceptions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Except for InterruptedExceptions and some other internal special cases, which simply cause the OpMode to end, the FTC SDK performs an "emergency stop" routine when an exception is thrown and not handled properly. This halts the OpMode and displays the full stacktrace on screen. The stacktrace can also be viewed through :ref:`logcat` when using Android Studio.

.. note:: Before SDK 8.0, only the first line of the error would be displayed and selecting "Restart Robot" from the menu would be required before running an OpMode again.

It's generally a good idea to debug all OpModes extensively before any official match, as these exceptions are disruptive.

.. stuck in start loop stop:

Stuck in start, loop, stop...
-----------------------------

OpModes are *strictly controlled programs*, in the sense that the SDK requires them to flow in a certain way with the methods ``init()``, ``loop()``, etc. If you take more than a specific time (`5 seconds, or 900 milliseconds in stop commands <https://github.com/OpenFTC/Extracted-RC/blob/f47d6f15fa1b59faaf509a522e0ec04f223ec125/RobotCore/src/main/java/com/qualcomm/robotcore/eventloop/opmode/OpMode.java#L189>`_) executing an action in any of these methods, the SDK will perform the "emergency stop" routine explained before, with the "stuck in ``action``" error message.

.. code:: java

   public class StuckyOpMode extends OpMode {

      // ...

      @Override
      public void loop() {
          // Don't do this in a normal iterative OpMode!
          // This will cause a "stuck in stop" error after
          // 5 seconds, since iterative OpModes shouldn't
          // be blocked by loops or any lengthy operation.
          while(true) {
            // ...
          }
      }

   }

If you need to run any sort of lenghty action in your OpMode, another option would be using a LinearOpMode instead.

LinearOpModes are less strict since their single ``runOpMode()`` method can flow more freely, but they still need to be cooperative to stop requests. Take the following code as an example:

.. code:: java

    public class StuckyLinearOpMode extends LinearOpMode {

        @Override
        public void runOpMode() {
            // Wait for the driver to press PLAY on the DS
            waitForStart();

            while(true) {
              // Do stuff infinitely
            }
        }

    }

This code isn't cooperative to stop requests, since the ``while`` loop doesn't have an exit condition to cooperate with the OpMode stopping, therefore, this code will cause a "stuck in stop" error once it's stopped in the Driver Station.

To cooperate with the stopping of the OpMode, an ``opModeIsActive()`` or ``!isStopRequested()`` condition is required to be added to all the blocking loops executed in the ``runOpMode()`` method. Consult the :doc:`linear-opmode-vs-opmode` page for more information about these methods.

An example for a cooperative LinearOpMode would be as follows:

.. code:: java

   public class CooperativeLinearOpMode extends LinearOpMode {

      @Override
      public void runOpMode() {
          while(someCondition && !isStopRequested()) {
              // Do something while the "someOtherCondition"
              // is true and the OpMode is not stopped.
          }

          // Wait for the driver to press PLAY on the DS
          waitForStart();

          while(someOtherCondition && opModeIsActive()) {
              // Do something while the "someCondition" is true
              // and the OpMode is running (started and not stopped).
          }
      }

   }
