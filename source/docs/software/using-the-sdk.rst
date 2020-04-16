=================
Using the FTC SDK
=================
LinearOpMode vs OpMode
======================
There are two OpMode classes within the FTC SDK:
``OpMode`` and ``LinearOpMode``.
The one you use affects how you write the program.
For examples of how to use OpMode and LinearOpMode,
`refer to the example OpModes in the sdk <https://github.com/FIRST-Tech-Challenge/SkyStone/tree/master/FtcRobotController/src/main/java/org/firstinspires/ftc/robotcontroller/external/samples>`_.

LinearOpMode Methods
--------------------

* ``runOpMode()``: Code inside this method will run exactly once after you
  press the INIT button.
  This is where you should put all code for the OpMode.
* ``waitForStart()``: This method pauses the Op-Mode until you press the START
  button on the driver station.
* ``isStarted()``: returns ``true`` if the START button has been pressed,
  otherwise it returns ``false``.
* ``isStopRequested()``: returns ``true`` if the STOP button has been pressed,
  otherwise it returns ``false``.
* ``idle()``: puts the thread to sleep
* ``opModeIsActive()``: returns ``isStarted() && !isStopRequested()`` and calls
  ``idle()``.

OpMode Methods
--------------

* ``init()``: Code inside this method will run exactly once after you press the
  INIT button on the driver station.
* ``init_loop()``: Once the code in ``init()`` has been run,
  code inside this method will run continuously until the START button is
  pressed on the driver station.
* ``start()``: Code inside this method will run exactly once after you press
  the START button on the driver station.
* ``loop()``: Once the code in ``start()`` has been run,
  code inside this method will run continuously until the STOP button is
  pressed on the driver station.
* ``stop()``: Code inside this method will run exactly once after you press the
  STOP button on the driver station.

Note that unlike LinearOpMode,
all methods in OpMode must be overwritten to be used.

Reading and Writing to Hardware
===============================
When using the FTC SDK, there are a variety of built in hardware classes.
Objects can be created for these classes and then instantiated.
These objects can then be used to communicate with hardware on the robot such
as DC Motors, Servos, and Sensors.

Creating and Instantiating Hardware Objects
-------------------------------------------
The first thing required to properly create an object is to import its class.
In Android Studio, if the class is referenced without being imported Alt+Enter
can be pressed to automatically import it.
After it is imported, the next step is to create the object::

    private DcMotor liftMotor;

After the object is created, it must be instantiated.
Part of the opmode superclass is something called ``hardwareMap``.
``hardwareMap`` is used in the FTC SDK to instantiate objects rather than
calling a constructor.
It contains all of the information entered into the configuration on the
Robot Controller, such as names of hardware and what port it is plugged into.
Here is an example of instantiating the motor we created above::

    liftMotor = hardwareMap.get(DcMotor.class, "Lift Motor");

Whatever sensor you are using,
you will pass that class into the spot where ``DcMotor.class`` is.
For example, if liftMotor was a Servo, ``Servo.class`` would be passed
instead.
For the second argument, you pass whatever the device is named in the Robot
Controller configuration.
``hardwareMap`` will then go find what port the device with that name is
plugged into, which allows the hardware to be accessed.

Examples of Using Common Hardware Components
--------------------------------------------

Built in to the FTC SDK are many examples of using things such as Color
Sensors, Distance Sensors, Servos, Motors, etc.
Here, we would like to give more of an explanation of using Motors and Servos
because there are a few things the examples do not teach.

DC Motor
^^^^^^^^
::

    DcMotor leftMotor = hardwareMap.get(DcMotor.class, "Left Motor");
    DcMotor rightMotor = hardwareMap.get(DcMotor.class, "Right Motor");

    DcMotor elevatorMotor = hardware.get(DcMotor.class, "Elevator Motor");
    DcMotor intakeMotor = hardware.get(DcMotor.class, "Intake Motor");

After a ``DcMotor`` is instantiated,
there are a few variables you can set to affect how the DC Motor runs.
The first of these is direction::

    leftMotor.setDirection(DcMotor.Direction.REVERSE);
    rightMotor.setDirection(DcMotor.Direction.FORWARD);

Changing the direction of the motor does exactly what should be expected,
it changes the direction.
If a power of 1 is applied to the motor while it is in forward mode,
it will turn one direction.
If it is in reverse, a power of 1 will spin it in the other direction.
If you face the shaft of the motor towards you,
forward is counterclockwise (with the exception of NeveRest motors).

Next, there are two zero power behaviors that can be adjusted::

    leftMotor.setZeroPowerBehavior(DcMotor.ZeroPowerBehavior.BRAKE);
    rightMotor.setZeroPowerBehavior(DcMotor.ZeroPowerBehavior.FLOAT);

Changing this variable affects how the DC Motor behaves while a power of 0 is
applied.
``BRAKE`` will cause the motor to try and slow itself down if it is moving
(it will NOT cause the motor to hold its position if not already moving),
while ``FLOAT`` causes the motor to glide to a stop, letting friction do all
the work.

Finally, there are four different run modes that can be used with DC motors:
::

    leftMotor.setMode(DcMotor.RunMode.RUN_WITHOUT_ENCODER);
    rightMotor.setMode(DcMotor.RunMode.RUN_USING_ENCODER);

    elevatorMotor.setMode(DcMotor.RunMode.RUN_TO_POSITION);
    intakeMotor.setMode(DcMotor.RunMode.STOP_AND_RESET_ENCODER);

It is important to note that encoder values can be read in any of these modes
provided an encoder is properly plugged in.
These modes just change how the motor reacts to these encoder values.
``RUN_WITHOUT_ENCODER`` makes the motor behave as if there is no encoder
plugged in.
When ``setPower()`` is called, it sets the output voltage to the motor
directly.

Using ``RUN_WITH_ENCODER``, the power set takes a more indirect route to the
motor.
It first goes through a velocity PID,
and the output from that controller is output to the motor.
This effectively means that setPower() sets the speed of the motor,
not the power.
If a power of .2 were fed while this mode is active,
the motor will attempt to turn the same speed by fluctuating the output voltage
depending on the load on the motor.
This mode has one significant disadvantage, however.
The max speed of the motor is somewhat significantly decreased, so it is
recommended to use ``RUN_WITHOUT_ENCODER`` if possible if maximum speed is
the goal; however, ``RUN_USING_ENCODER`` will provide more consistent
results.

The final mode is ``RUN_TO_POSITION``.
To make the motor move with this mode,
the function ``setTargetPosition()`` must be called.
When a power is applied to the motor,
a control loop will use that as the max power and try to drive the encoder
position to the target position.
This can be useful to newer teams for autonomous,
as it can be an easy way to have accurate driving functions.

Servo
^^^^^
::

    Servo relicServo = hardwareMap.get(Servo.class, "Release Servo");

After instantiating a Servo, there are two main functions that can be called:
``setPosition()`` and ``getPosition()``.
::

    releaseServo.setPosition(0.75);
    telemetry.addData("Release Servo Target", releaseServo.getPosition());

``setPosition()`` sets the position of the servo.
The SDK will use a built-in control loop with the servo’s potentiometer to
drive the servo to that position and hold that position. ``setPosition()``
takes in a double between 0 and 1, where 0 is the servo’s lower limit of
rotation and 1 is the servo’s upper limit of rotation.
Everything between is directly proportional,
so 0.5 is the middle, 0.75 is 3/4 the way up, etc.

``getPosition()`` does not return the servo’s current position,
rather its current target position.
If a variable for the servo’s current target position is stored properly,
this function should never be needed.

Continuous Rotation Servo
^^^^^^^^^^^^^^^^^^^^^^^^^
::

    CRServo intakeServo = hardwareMap.get(CRServo.class, "Intake Servo");

A CRServo has one main method; ``setPower()``.
This works very similarly to ``DcMotor`` 's ``setPower()``, meaning that
passing it 0 makes it stop, passing it 1 makes it go forward at full speed,
passing it -1 makes it go backwards at full speed, and everything in between.
::

    intakeServo.setPower(0.75);

Gamepad Input
^^^^^^^^^^^^^

A very important aspect of programming a driver controlled opmode is taking
driver controls.
Thankfully in the FTC SDK, this is very easy to do.
Inside of every opmode, there are already 2 working gamepad objects,
``gamepad1`` and ``gamepad2``.
``gamepad1`` is the controller that is connected using start+a, while
``gamepad2`` is the controller connected using start+b.
To get input, no functions need to be called; rather fields of ``gamepad1`` or ``gamepad2`` need to be accessed. 
Here are a few examples:
::

    leftMotor.setPower(-gamepad1.left_stick_y);
    rightMotor.setPower(-gamepad1.left_stick_y);

    if (gamepad2.a) {
        intakeServo.setPower(-1.0);
    }
    else if (gamepad2.b) {
        intakeServo.setPower(1.0);
    }

A Note on Hardware Call Speed
===============================
Every hardware call you make, (whether it be setting the power for a motor,
setting a servo position, reading an encoder value, etc.)
will take approximately 3 milliseconds to execute,
except for I2C calls which can take upwards of 7ms.
This is because behind the scenes, the SDK may need to make multiple hardware
calls in order to perform the I2C operation.

.. note:: When using a Control Hub, you may see considerably faster hardware
    call times because the Control Hub uses a direct UART connection to the
    Lynx board instead of going through USB and a middle-man FTDI as happens
    when using a phone.

These times may seem fast, but they add up quickly.
Consider a control loop to drive forward for N encoder counts while maintaining
heading using the IMU.
This would require 5 normal hardware calls
(4 set power + 1 read encoder) an an I2C call (IMU) which means that the loop
cycle would take approximately 22ms to execute,
and thus run at approximately 45Hz.

This means that it is critical to minimize the amount of hardware calls you
make in order to keep your control loops running fast.
For instance, do not read a sensor more than once per loop.
Instead, read it once and store the value to a variable if you need to use it
again at other points in the same loop cycle.

Using a bulk read hardware call can help with this problem.
A bulk read takes the same 3ms to execute as any other normal hardware call,
but it returns far more data.
In order to be able to use bulk reads,
you must either be running SDK v5.4 or higher, or use RevExtensions2.
