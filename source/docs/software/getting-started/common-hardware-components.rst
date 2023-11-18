.. include:: <isonum.txt>

Reading and Writing to Hardware
===============================

When using the FTC\ |reg| SDK, there are a variety of built in hardware classes which can be used to communicate with hardware on the robot such as DC Motors, :term:`Servos <Servo>`, and Sensors.

Creating and Instantiating Hardware Objects
-------------------------------------------

The first thing required to properly create an object is to import its class. In Android Studio, if the class is referenced without being imported Alt+Enter can be pressed to automatically import it. After it is imported, the next step is to create the object::

   private DcMotor liftMotor;

After the object is created, it must be instantiated. Part of the ``OpMode`` superclass is something called ``hardwareMap``. ``hardwareMap`` is used in the FTC SDK to instantiate objects rather than calling a constructor.

It contains all of the information entered into the configuration on the Robot Controller, such as names of hardware and what port it is plugged into. Here is an example of instantiating the motor we created above::

   liftMotor = hardwareMap.get(DcMotor.class, "Lift Motor");

Whatever sensor you are using, you will pass that class into the spot where ``DcMotor.class`` is. For example, if liftMotor was a Servo, ``Servo.class`` would be passed instead.

For the second argument, you pass whatever the device is named in the Robot Controller configuration. ``hardwareMap`` will then go find what port the device with that name is plugged into, which allows the hardware to be accessed.

Examples of Using Common Hardware Components
--------------------------------------------

DC Motor
^^^^^^^^

::

   DcMotor leftMotor = hardwareMap.get(DcMotor.class, "Left Motor");
   DcMotor rightMotor = hardwareMap.get(DcMotor.class, "Right Motor");

   DcMotor elevatorMotor = hardware.get(DcMotor.class, "Elevator Motor");
   DcMotor intakeMotor = hardware.get(DcMotor.class, "Intake Motor");

After a ``DcMotor`` is instantiated, there are a few variables you can set to affect how the DC Motor runs. The first of these is direction::

   leftMotor.setDirection(DcMotor.Direction.REVERSE);
   rightMotor.setDirection(DcMotor.Direction.FORWARD);

Changing the direction of the motor does exactly what should be expected, it changes the direction. If a power of 1 is applied to the motor while it is in forward mode, it will turn one direction. If it is in reverse, a power of 1 will spin it in the other direction. If you face the shaft of the motor towards you, forward is counterclockwise (with the exception of NeveRest motors).

Next, there are two zero power behaviors that can be adjusted::

   leftMotor.setZeroPowerBehavior(DcMotor.ZeroPowerBehavior.BRAKE);
   rightMotor.setZeroPowerBehavior(DcMotor.ZeroPowerBehavior.FLOAT);

Changing this variable affects how the DC Motor behaves while a power of 0 is applied. ``BRAKE`` will cause the motor to try and slow itself down if it is moving (it will NOT cause the motor to hold its position if not already moving), while ``FLOAT`` causes the motor to glide to a stop, letting friction do all the work.

Finally, there are four different run modes that can be used with DC motors: ::

   leftMotor.setMode(DcMotor.RunMode.RUN_WITHOUT_ENCODER);
   rightMotor.setMode(DcMotor.RunMode.RUN_USING_ENCODER);

   elevatorMotor.setMode(DcMotor.RunMode.RUN_TO_POSITION);
   intakeMotor.setMode(DcMotor.RunMode.STOP_AND_RESET_ENCODER);

It is important to note that encoder values can be read in any of these modes provided an encoder is properly plugged in. These modes just change how the motor reacts to these encoder values. `The REV Robotics documentation has an explanation of all four run modes <https://docs.revrobotics.com/duo-control/programming/using-encoder-feedback#choosing-a-motor-mode>`_.

.. warning:: ``RUN_TO_POSITION`` can be a convenient way to control a single-motor mechanism, as it offloads all control work; however, since every motor is dealt with independently, it is inadvisable to use this on mechanisms with multiple motors, especially drivetrains.

Encoders
~~~~~~~~

.. admonition:: Term

   .. glossary::

      Encoder
         An encoder refers to a device that tracks (generally) rotational movement around an axis.

         There are both absolute and relative encoders. An absolute encoder will report at exactly what angle the shaft is compared to its absolute "zero". A relative encoder will report how far the :term:`shaft <Shaft>` has rotated since it started tracking (for example, when autonomous starts). Relative encoders will have a quadrature output, whereas absolute encoders generally have analog or i2c outputs.

         Encoders are used to help find the position of where the robot, or one of its mechanisms, is.

While all FTC legal motors contain built in relative quadrature encoders, they must be wired separately and are not required for use. External encoders may be used and plugged into an encoder port so long as they use the quadrature communication protocol.

Accessing encoders requires calling one method on the DcMotor object, ``getCurrentPosition()``, which returns the current position of the encoder plugged into the port. This number may be arbitrary at the beginning of an opmode, and is not reset to 0 unless ``STOP_AND_RESET_ENCODERS`` is used or power is cycled to the expansion hub.

.. important:: There is no real standardized terminology when dealing with quadrature encoders. The SDK uses "CPR" or Counts Per Revolution by default,. You may also see some datasheets list "PPR" or Pulses per Revolution. One pulse can be equivalent to anywhere from 1 to 4 SDK "counts". Be careful when reading datasheets!

.. warning:: Encoders with high numbers of Counts per Revolution, such as the REV Through Bore Encoder, can lose steps if plugged into ports 1 or 2. In addition, calls to ``getVelocity()`` on a DcMotorEx object may overflow with high counts per revolution encoders, due to the returned number only being a 16 bit signed integer.

Servo
^^^^^

::

   Servo relicServo = hardwareMap.get(Servo.class, "Release Servo");

After instantiating a ``Servo``, there are two main functions that can be called: ``setPosition()`` and ``getPosition()``. ::

   releaseServo.setPosition(0.75);
   telemetry.addData("Release Servo Target", releaseServo.getPosition());

``setPosition()`` sets the position of the :term:`servo <Servo>`. The SDK will use a built-in control loop with the :term:`servo's <Servo>` potentiometer to drive the :term:`servo <Servo>` to that position and hold that position. ``setPosition()`` takes in a double between 0 and 1, where 0 is the :term:`servo's <Servo>` lower limit of rotation and 1 is the :term:`servo's <Servo>` upper limit of rotation. Everything between is directly proportional, so 0.5 is the middle, 0.75 is 3/4 the way up, etc.

``getPosition()`` does not return the :term:`servo's <Servo>` current position, rather its current target position. If a variable for the :term:`servo's <Servo>` current target position is stored properly, this function should never be needed.

Continuous Rotation Servo
~~~~~~~~~~~~~~~~~~~~~~~~~

::

   CRServo intakeServo = hardwareMap.get(CRServo.class, "Intake Servo");

A CRServo has one main method; ``setPower()``. This works very similarly to ``DcMotor`` 's ``setPower()``, meaning that passing it 0 makes it stop, passing it 1 makes it go forward at full speed, passing it -1 makes it go backwards at full speed, and everything in between. ::

   intakeServo.setPower(0.75);

Digital IO
^^^^^^^^^^

::

   DigitalChannel digitalDevice = hardwareMap.get(DigitalChannel.class, "digital device");

A DigitalChannel has a couple main methods. ``setMode()`` is used to set the port as either an OUTPUT or INPUT port, ``getState()`` returns the current state of the port (only works in INPUT mode), and ``setState()`` sets the state of the port (only works in OUTPUT mode)

.. tip:: Digital ports start by default in INPUT mode

.. danger:: Digital ports are pulled UP to prevent floating. This means that there is a resistor between the port and 3.3V so the port reads HIGH by default when nothing is connected. As a result digital devices MUST connect the digital pin to ground when closed, then leave it unconnected when open. For limit switches, this means connecting one lead to ground and the other to the digital port. **Connecting this wrong (connecting 3.3V to the digital port) may cause instability and can cause your expansion hub to crash**

Analog Input
^^^^^^^^^^^^

::

   AnalogInput analogInput = hardwareMap.get(AnalogInput.class, "analog input");

An ``AnalogInput`` has one main method: ``getVoltage()`` which is used to get the current input voltage to the port.

.. note:: Although ``getMaxVoltage()`` returns 3.3v, the expansion and control hub analog input ports can safely handle up to 5v.

A Note on Hardware Call Speed
-----------------------------

Every hardware call you make, (whether it be setting the power for a motor, setting a :term:`servo <Servo>` position, reading an encoder value, etc.) will take approximately 3 milliseconds to execute, except for I2C calls which can take upwards of 7ms. This is because behind the scenes, the SDK may need to make multiple hardware calls in order to perform the I2C operation.

.. note:: When using a Control Hub, you may see considerably faster hardware call times because the Control Hub uses a direct UART connection to the Lynx board instead of going through USB and a middle-man FTDI as happens when using a phone.

These times may seem fast, but they add up quickly. Consider a control loop to drive forward for N encoder counts while maintaining heading using the IMU. This would require 5 normal hardware calls (4 set power + 1 read encoder) and an I2C call (IMU) which means that the loop cycle would take approximately 22ms to execute, and thus run at approximately 45Hz.

This means that it is critical to minimize the amount of hardware calls you make in order to keep your control loops running fast. For instance, do not read a sensor more than once per loop. Instead, read it once and store the value to a variable if you need to use it again at other points in the same loop cycle.

Using a bulk read hardware call can help with this problem. A bulk read takes the same 3ms to execute as any other normal hardware call, but it returns far more data. In order to be able to use bulk reads, you must be running SDK v5.4 or higher. See :doc:`/docs/software/tutorials/bulk-reads` for more information
