Specialty Servos
================

In this section we list some :term:`servos <Servo>` with unique features.

HS788 Sail Winch Servo
----------------------

This large scale :term:`servo <Servo>` is unusual in that it is able to rotate multiple turns while retaining positioning feedback. Most :term:`servos <Servo>` have 180 degree range; for HS788, the range is about 8 full turns when used with a :term:`servo <Servo>` controller capable of 500-2500 microsecond PWM signal, such as :term:`REV Expansion Hub <Expansion Hub>`. This makes it a great option for powering linear slides (as long as they do not carry too heavy load).

HS788 is available from several vendors including ServoCity and goBILDA, both of which offer 25% discount to FTC teams.

PARALLAX High Speed CR Servo
----------------------------

This continuous rotation :term:`servo <Servo>` from Parallax (https://www.parallax.com/product/high-speed-continuous-rotation-servo/) has the speed of up to 180 RPM - three times as fast as most :term:`servos <Servo>`. This makes it usable for powering intakes (assuming you do not need much torque) and similar designs. Note that this :term:`servo <Servo>` requires 6V input, so it can not be used directly with :term:`REV hubs <Expansion Hub>`, which only provide 5V. Instead, you need a `REV Servo Power Module <https://www.revrobotics.com/rev-11-1144/>`_.

VEX 393 EDR
-----------

The :term:`VEX 393 EDR` is technically a motor, but is legally counted as a :term:`servo <Servo>` in Game Manual 1 rules. Why this is, we do not know, but :term:`VEX 393 motors <VEX 393 EDR>` have been legal in FTC for many years. The :term:`393 motor <VEX 393 EDR>` acts as a more powerful continuous rotation :term:`servo <Servo>`. It should be treated as a continuous rotation :term:`servo <Servo>` when configuring the robot and programming.

However, there are some difficulties to keep in mind. The 393 motor uses a 1/8" square :term:`shaft <Shaft>`, which is not directly compatible with any FTC build system. You will have to make custom adapters. Using a :term:`393 motor <VEX 393 EDR>` requires two additional equipment.

- **Motor Controller 29** The :term:`VEX Motor Controller 29` converts the 3 wire PWM signal from the REV Hub into the 2-wire motor signal used to drive the :term:`393 <VEX 393 EDR>`.
- **REV Servo Power Module** The REV :term:`Servo Power Module` is used to boost the voltage given to :term:`servos <Servo>` through the :term:`Expansion Hub` (5V) to 6V, which is needed to run a :term:`393 <VEX 393 EDR>`. The SPM accepts PWM signal through the three-pronged wire end of the :term:`MC29 <VEX Motor Controller 29>`. The SPM will need to be plugged in to the :term:`Expansion Hub's <Expansion Hub>` power through a Tamiya connector. Crimping ring terminals to the SPM is necessary.
