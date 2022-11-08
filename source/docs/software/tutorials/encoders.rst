Programming Tutorial - Encoders
===============================

What Are Encoders?
------------------
Very commonly in FTC, you want to know where something is. Whether that is how many times your drivetrain wheel has rotated, what angle your arm is at, or how far your string slides have gone, rotational encoders can help you. In FTC, an encoder refers to any sensor that tracks the rotational angle of a mechanism.

There are generally two types of encoders used in FTC, relative encoders and absolute encoders. This tutorial only covers relative encoders, the most common type of encoder in FTC.

Relative Encoders
^^^^^^^^^^^^^^^^^
These encoders are the most common type of encoder in FTC. Ranging from the built in encoder in every FTC legal motor to common external encoders like the REV Through Bore encoder, these encodes track the relative position of the shaft or mechanism they are attached to. **What this means is that the position tracked is relative to the position at the start of the opmode, meaning it will not remember its position between opmode runs**.

.. tip:: Relative don't necessary start at 0 at the beginning of every opmode, they can start at arbitrary, or random, values! You can use STOP_AND_RESET_ENCODERS to ensure that your encoders are always at zero at the beginning of the opmode (see below)

All relative encoders in FTC use the "Quadrature" protocol to send position information to the expansion hub. As a result, relative encoders must be plugged into the encoder ports located near the motor ports in order to function.

Terminology
-----------
**Count**: A "count" (sometimes referred to as a "tick") refers to one increment of the encoder's position. Relative encoders report their position as a number equal to the number of "ticks" or "counts" the encoder has moved from its starting angle.

**Counts Per Revolution**: The number of "counts" that an encoder will report after it has gone exactly one full revolution. This value is commonly used to convert encoder "counts" into degrees or revolutions.

.. warning:: Quadrature terminology can get very confusing! Some encoders may report "pulses per revolution". One pulse can either equal one count, or 4 counts. The best way to check is to plug the encoder into the rev hub and turn it 1 full revolution and check what it reports.

Programming Encoders
--------------------

Reading Encoders
^^^^^^^^^^^^^^^^

In FTC software, motor encoders and motors are both accessed by the same motor object. What this means is that we can access an encoder's position like so

.. tab-set::

   .. tab-item:: Java
      :sync: java

      .. code-block::

            double position = motor.getCurrentPosition();

   .. tab-item:: Blocks
      :sync: blocks

      .. image:: images/mecanum-drive/mecanum-drive-blocks-sample-2.png
         :width: 45em

While convenient if one is using the built in motor encoder, this can easily become confusing if using external encoders. To use external encoders, you must use the motor object associated with the port. For example, if there is a motor in port 1 named "Arm Motor", and an external encoder plugged into encoder port 1, then to get that encoder's position you must do

.. tab-set::

   .. tab-item:: Java
      :sync: java

      .. code-block::

            DcMotor motor = hardwareMap.dcmotor.get("Arm Motor");
            double position = motor.getCurrentPosition();

   .. tab-item:: Blocks
      :sync: blocks

      .. image:: images/mecanum-drive/mecanum-drive-blocks-sample-2.png
         :width: 45em

Great! We now have the relative position of our encoder, reported in the number of "counts" it is from some arbitrary zero angle. However, it is often convenient to have the encoder start at zero at the beginning of the opmode. While it technically does not change anything, it can help with debugging and simplify future code. To do this, we simply add a call to reset the motor encoders before we read them.

.. tab-set::

   .. tab-item:: Java
      :sync: java

      .. code-block::

            DcMotor motor = hardwareMap.dcMotor.get("Arm Motor");
            motor.setMode(DcMotor.RunMode.STOP_AND_RESET_ENCODER); //Reset the motor encoder
            motor.setMode(DcMotor.RunMode.RUN_WITHOUT_ENCODER); //Turn the motor back on when we are done
            double position = motor.getCurrentPosition();

   .. tab-item:: Blocks
      :sync: blocks

      .. image:: images/mecanum-drive/mecanum-drive-blocks-sample-2.png
         :width: 45em

As a note, **RUN_WITHOUT_ENCODER does not disable the encoder. All it does is tell the SDK not to use the motor encoder for built in velocity control**. We will go over what this means in a later section, for now know that it just turns the motor back on so we can use it after the encoder is reset.

Now we have our position, in counts, relative to the starting angle of the encoder. We can make a quick program to see this in action. Here, we use a motor encoder plugged into a port named "Arm Motor" in the hardware configuration.

.. tab-set::

   .. tab-item:: Java
      :sync: java

      .. code-block::

        package org.firstinspires.ftc.teamcode;

        import com.qualcomm.robotcore.eventloop.opmode.LinearOpMode;
        import com.qualcomm.robotcore.eventloop.opmode.TeleOp;
        import com.qualcomm.robotcore.hardware.DcMotor;
        @TeleOp
        public class EncoderOpmode extends LinearOpMode {
            @Override
            public void runOpMode() throws InterruptedException {
                //Find a motor in the hardware map named "Arm Motor"
                DcMotor motor = hardwareMap.dcMotor.get("Arm Motor");

                //Reset the motor encoder so that it reads zero ticks
                motor.setMode(DcMotor.RunMode.STOP_AND_RESET_ENCODER);

                //Turn the motor back on, required if you use STOP_AND_RESET_ENCODER
                motor.setMode(DcMotor.RunMode.RUN_WITHOUT_ENCODER);

                waitForStart();

                while (opModeIsActive()) {
                    //Get the current position of the motor
                    double position = motor.getCurrentPosition();

                    //Show the position of the motor on telemetry
                    telemetry.addData("Encoder Position", position);
                    telemetry.update();
                }
            }
        }


   .. tab-item:: Blocks
      :sync: blocks

      .. image:: images/mecanum-drive/mecanum-drive-blocks-sample-2.png
         :width: 45em

If you run the above opmode and turn the encoder, you should see the values change as you move. If you rotate the shaft back to where it started, you will see the number return to (very close to) normal. As an exercise, rotate the shaft one full revolution (360) degrees and note down the number.

There is one more thing we can do with encoders. While knowing the number of counts something moved is useful, often times one will need a different number, like the number of revolutions the encoder has underwent or the angle it is currently at. To determine these, we need a constant, the encoders Counts Per Revolution or CPR. For external encoders, this number is often provided in a datasheet. For motors, it will generally be on the product page, although some motors (most notibly the Rev Ultraplanetary Gearbox) do not provide it plainly.

.. tip:: You can calculate a motor's Counts Per Revolution by taking the base motor's Counts Per Revolution and muliplying it by the gearbox ratio. Be careful to use the actual gearbox ratio when doing this! For example, a 5:1 Ultraplanetary motor would have a counts per revolution of 28 * (5.23) = 146.44, because the base motor has 28 Counts Per Revolution and the 5:1 gearbox is actually 5.23:1. Remember, when using two gearboxes on top of each other, you multiply the gear ratios together.

In the following example, we divide the encoder position by its counts per revolution in order to obtain the number of revolutions the encoder has rotated. You have to replace [Your Counts Per Revolution Here] with the counts per revolution of your motor, found on its product page or calculated using the above tip.

.. tab-set::

   .. tab-item:: Java
      :sync: java

      .. code-block::

            double CPR = [Your Counts Per Revolution Here];

            double position = motor.getCurrentPosition();
            double revolutions = position/CPR;

   .. tab-item:: Blocks
      :sync: blocks

      .. image:: images/mecanum-drive/mecanum-drive-blocks-sample-2.png
         :width: 45em

There is one more number we can get, the angle the shaft is at. This is very simple, we just multiply the number of rotations by 360 (there are 360 degrees in one revolution). You might notice that this number can go above 360, as the shaft rotates multiple times. As such, we introduce angle_normalized, which will always be between 0 and 360.

.. tab-set::

   .. tab-item:: Java
      :sync: java

      .. code-block::

            double CPR = [Your Counts Per Revolution Here];

            double position = motor.getCurrentPosition();
            double revolutions = position/CPR;

            double angle = revolutions * 360;
            double angle_normalized = angle % 360;
   .. tab-item:: Blocks
      :sync: blocks

      .. image:: images/mecanum-drive/mecanum-drive-blocks-sample-2.png
         :width: 45em

Putting it all together, we get the following testing program.

.. tab-set::

   .. tab-item:: Java
      :sync: java

      .. code-block::

            package org.firstinspires.ftc.teamcode;

            import com.qualcomm.robotcore.eventloop.opmode.LinearOpMode;
            import com.qualcomm.robotcore.eventloop.opmode.TeleOp;
            import com.qualcomm.robotcore.hardware.DcMotor;
            @TeleOp
            public class EncoderOpmode extends LinearOpMode {
                @Override
                public void runOpMode() throws InterruptedException {
                    //Find a motor in the hardware map named "Arm Motor"
                    DcMotor motor = hardwareMap.dcMotor.get("Arm Motor");

                    //Reset the motor encoder so that it reads zero ticks
                    motor.setMode(DcMotor.RunMode.STOP_AND_RESET_ENCODER);

                    //Turn the motor back on, required if you use STOP_AND_RESET_ENCODER
                    motor.setMode(DcMotor.RunMode.RUN_WITHOUT_ENCODER);

                    waitForStart();

                    while (opModeIsActive()) {
                        //Get the current position of the motor
                        double CPR = [Your Counts Per Revolution Here];

                        double position = motor.getCurrentPosition();
                        double revolutions = position/CPR;

                        double angle = revolutions * 360;
                        double angle_normalized = angle % 360;

                        //Show the position of the motor on telemetry
                        telemetry.addData("Encoder Position", position);
                        telemetry.addData("Encoder Revolutions", revolutions);
                        telemetry.addData("Encoder Angle (Degrees)", angle);
                        telemetry.addData("Encoder Angle - Normalized (Degrees)", angle_normalized);
                        telemetry.update();
                    }
                }
            }

   .. tab-item:: Blocks
      :sync: blocks

      .. image:: images/mecanum-drive/mecanum-drive-blocks-sample-2.png
         :width: 45em

