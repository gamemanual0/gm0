Common Issues
=============

Exceptions
----------

Exceptions are events that occur during the execution of a program, disrupting the normal flow of instructions. They're used in error events, problems that arise during runtime. A exception generally needs to be catched, otherwise any exception that's not properly handled will cause the program flow to stop immediately.

Some types of exceptions include:

- **NullPointerException**

  - It occurs when trying to call a method or getting a property of an object from a variable with a *null* value, which basically means that the variable doesn't hold a value *yet*, or that it doesn't exist.
  - This exception is one of the most common in FTC, below is an example that throws a NullPointerException:

  .. code:: java

    public class CrashyOpMode extends OpMode {

        // This call to the "get" method here will throw a NullPointerException.
        //
        // The value of the "hardwareMap" variable is null at this point, due to
        // the way the SDK is limited to define the value of this variable, its
        // value is defined right before the init (or runOpMode in linear opmodes)
        // method is called.
        public DcMotor motor = hardwareMap.get(DcMotor.class, "slider");

        // ...

    }

  - This can be fixed moving the "motor" variable value definition to the init (or runOpMode in linear opmodes) method as follows:

  .. code:: java

    public class WorkingOpMode extends OpMode {

        public DcMotor motor = null;

        @Override
        public void init() {
            // This won't throw a NullPointerException since the value of the
            // "hardwareMap" variable is defined at this point, but note that
            // the "get" method will return null if the name "slider" isn't
            // configured. (consult the "Using the SDK" section)
            motor = hardwareMap.get(DcMotor.class, "slider");
        }

        // ...

    }

- **InterruptedException**

  - It means that the SDK requested the OpMode to stop

How the SDK handles exceptions
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The FTC SDK performs an "emergency stop" routine when a exception is thrown and it's not handled properly (except for InterruptedExceptions, since these simply cause the OpMode to be ended), it consists of showing the error message, abrouptly ending the OpMode and restarting the Robot Controller application.

This behavior can be a big problem during competition matches, so it's generally a good idea to debug all OpModes extensively before any official match. Reading the SDK output error messages alone possibly isn't very helpful since they're very short, logcat can help in these cases since it provides full stack traces with line numbers telling where the error happened in your OpMode, for further information check the :ref:`android studio <logcat section>` guide.

Stuck in loop/stop
------------------

OpModes are *strictly controlled programs*, in the sense that the SDK requires them to flow in a certain way, in methods such as init(), loop(), etc. Linear opmodes are slightly more free since they can flow more freely, but they still need to be responsive to stop requests
