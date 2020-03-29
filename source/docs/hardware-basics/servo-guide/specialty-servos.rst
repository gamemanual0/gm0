================
Specialty Servos
================

In this section we list some servos with unique features.

HS788 Sail Winch Servo
----------------------
This large scale servo is unusual in that it is able to rotate multiple turns
while retaining positioning feedback. Most servos have 180 degree range; for
HS788, the range is about  8 full turns when used with a servo controller
capable of 500-2500 microsecond PWM signal, such as REV expansion hub. This
makes it a great option for powering linear slides (as long as they do not
carry too heavy load).

HS788 is available from several vendors including Servocity and goBILDA,
both of which offer 25% discount to FTC teams.

PARALLAX High Speed CR Servo
----------------------------
This continuous rotation servo from Parallax
(https://www.parallax.com/product/900-00025) has the speed of up to 180 RPM -
three times as fast as most servos.
This makes it usable for powering intakes
(assuming you do not need much torque)
and similar designs. Note that this servo requires 6V input, so it can not be
used  directly with REV hubs, which only provide 5V. Instead, you need a
`REV Servo Power Module <http://www.revrobotics.com/rev-11-1144/>`_.

VEX 393 EDR
===========
The VEX 393 motor is technically a motor, but is legally counted as a servo in
Game Manual 1 rules.
Why this is, we do not know, but VEX 393 motors have been legal in FTC for many
years.
The 393 motor acts as a more powerful and faster continuous rotation servo.

However, there are some difficulties to keep in mind.
The 393 motor uses a 1/8" square shaft, which is not directly compatible with
any FTC build system.
You will have to make custom adapters.
Using a 393 motor requires two additional equipment.

* **Motor Controller 29**
  The MC29 converts the 2-wire motor signal used to drive the 393 into a PWM
  signal for servo.
* **REV Servo Power Module**
  The REV SPM is used to boost the voltage given to servos through the
  Expansion Hub (3.3V) to 5V, which is the minimum voltage needed to run a 393.
  The SPM accepts PWM signal through the three-pronged wire end of the MC29.
  The SPM will need to be plugged in to the Expansion Hub's power through a
  Tamiya connector.
  Crimping ring terminals to the SPM is necessary.
