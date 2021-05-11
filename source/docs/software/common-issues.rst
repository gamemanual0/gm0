Common Issues
=============

Exceptions
----------

Exceptions are events that occur during the execution of a program, disrupting the normal flow of instructions, used in error events or problems that arise during runtime. A exception can be catched to avoid propagation, otherwise any exception that's not handled will cause the program flow to stop immediately.

Some types of exceptions include:

- **NullPointerException**

  - It occurs when trying to call a method or getting a property of an object from a variable with a *null* value, which basically means that the variable doesn't hold a value *yet*, or the value doesn't exist.
  - This exception is one of the most common in FTC, below is an example that throws a NullPointerException:

  .. code:: java

    public class CrashyOpMode extends OpMode {

        // This call to the "get" method here will throw a NullPointerException.
        //
        // The value of the "hardwareMap" variable is null at this point, due to
        // the way the SDK is limited to define the value of this variable, its
        // value is defined right before the init (or runOpMode() in LinearOpModes)
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

  - This can be fixed moving the "motor" variable value definition to the init (or ``runOpMode()`` in linear opmodes) method as follows:

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

- **InterruptedException**

  - It means that the SDK requested the OpMode to stop

How the SDK handles exceptions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The FTC SDK performs an "emergency stop" routine when a exception is thrown and it's not handled properly (except for InterruptedExceptions and some other internal special cases, since these simply cause the OpMode to be ended), this routine consists of showing the error message, abrouptly ending the OpMode and restarting the Robot Controller application.

This behavior can be a big problem during competition matches, so it's generally a good idea to debug all OpModes extensively before any official match. Reading the SDK output error messages from the Driver Station or the Robot Controller apps alone isn't very helpful since they're very short, but logcat can help in these cases since it provides full stack traces with line numbers telling where the error happened in your OpMode. For further information check the :ref:`logcat section <logcat>` in the "Using Android Studio" page.

Stuck in start, loop, stop...
-----------------------------

OpModes are *strictly controlled programs*, in the sense that the SDK requires them to flow in a certain way with the methods ``init()``, ``loop()``, etc. If you take more than a specific time (`5 seconds, or 900 milliseconds in stop commands <https://github.com/OpenFTC/Extracted-RC/blob/f47d6f15fa1b59faaf509a522e0ec04f223ec125/RobotCore/src/main/java/com/qualcomm/robotcore/eventloop/opmode/OpMode.java#L189>`_) executing an action in any of these methods, the SDK will perform the "emergency stop" routine explained before, with the "stuck in ``action``" error message. If you need to run any sort of lenghty action in your OpMode, another option would be using a LinearOpMode instead.

LinearOpModes are less strict since their single ``runOpMode()`` method can flow more freely, but they still need to be cooperative to stop requests. Take the following code as an example

.. code:: java

    public class StuckyOpMode extends LinearOpMode {

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

To cooperate with the stopping of the OpMode, a ``opModeIsActive()`` or ``!isStopRequested()`` condition is required to be added to all the blocking loops executed in the ``runOpMode()`` method. Consult the :ref:`"Using the FTC SDK" <linearopmode methods>` page for more information about these methods.

A example for a cooperative LinearOpMode would be as follows:

.. code:: java

   public class CooperativeOpMode extends LinearOpMode {

      @Override
      public void runOpMode() {
          // Wait for the the driver to press PLAY on the DS
          waitForStart();

          while(someCondition && opModeIsActive()) {
              // Do something while the "someCondition" is true
              // and the OpMode is running (started and not stopped).
          }

          while(someOtherCondition && !isStopRequested()) {
              // Do something while the "someOtherCondition"
              // is true and the OpMode is not stopped.
          }
      }

   }
