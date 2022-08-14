Specialty Servos
================

In this section we list some :term:`servos <Servo>` with unique features.

goBILDA 5 Turn Torque Servo
---------------------------

This :term:`servo <Servo>` is unusual in that it is able to rotate multiple turns while retaining positioning feedback. Most :term:`servos <Servo>` have 180 degree range; as the name implies the 5 turn servo can turn 5 times when used with a :term:`servo <Servo>` controller capable of 500-2500 microsecond PWM signal, such as REV Expansion Hub. This makes it a great option for powering linear slides (as long as they do not carry too heavy load).

The 5 turn torque servo is available from several vendors including ServoCity and goBILDA, both of which offer 25% discount to FTC teams.

VEX 393 EDR
-----------

.. admonition:: Term

   .. glossary::

      VEX 393 EDR
         The VEX 393 motor is a special type of motor that utilizes 1/8” square shaft. Therefore teams will have to fashion a custom motor mount and shaft adapter for the VEX 393.

         Under FTC rules, it is classified as a :term:`servo <Servo>`. However, in order to use the 393, teams must purchase an adapter from the 2-wire motor cable to the 3-wire servo cable, called the :term:`VEX Motor Controller 29`.

         These items are not usually in stock during the season, due to the demand from both VEX and FTC teams. Additionally, teams must purchase a Servo Power Module from REV Robotics to boost the output that the expansion hub provides. It is advised that only experienced teams use the 393 motor for this reason.

         .. figure:: images/glossary/vex-393.png
            :alt: A VEX 393 motor

            A VEX 393 motor

         .. figure:: images/glossary/3736-vex-393-usage.png
            :alt: A VEX 393 motor used on an intake

            3736 Serious Business’ intake

The VEX 393 EDR is technically a motor, but is legally counted as a :term:`servo <Servo>` in Game Manual 1 rules. Why this is, we do not know, but VEX 393 motors have been legal in FTC for many years. The VEX 393 EDR acts as a more powerful continuous rotation :term:`servo <Servo>`. It should be treated as a continuous rotation :term:`servo <Servo>` when configuring the robot and programming.

However, there are some difficulties to keep in mind. The 393 motor uses a 1/8" square :term:`shaft <Shaft>`, which is not directly compatible with any FTC build system. You will have to make custom adapters. Using a VEX 393 EDR requires two additional equipment.

- **Motor Controller 29** The VEX Motor Controller 29 converts the 3 wire PWM signal from the REV Hub into the 2-wire motor signal used to drive the :term:`393 <VEX 393 EDR>`.
- **REV Servo Power Module** The REV :term:`Servo Power Module` is used to boost the voltage given to :term:`servos <Servo>` through the Expansion Hub (5V) to 6V, which is needed to run a :term:`393 <VEX 393 EDR>`. The SPM accepts PWM signal through the three-pronged wire end of the :term:`MC29 <VEX Motor Controller 29>`. The SPM will need to be plugged in to the Expansion Hub's power through a Tamiya connector. Crimping ring terminals to the SPM is necessary.

.. admonition:: Term

   .. glossary::

      VEX Motor Controller 29
         The VEX Motor Controller 29 (MC29) is used specifically to convert the PWM signal used in three-wire servo cables to the two-wire cable that connects to the :term:`393 motor <VEX 393 EDR>`.

         It is highly recommended to protect the motor controller from **any** sort of impact, as they can easily break and/or have wires become detached. Also, it is important to have the MC29 as close to the Servo Power Module as possible, so that the signal doesn’t become overly noisy.

         .. image:: images/glossary/vex-motor-controller-29.png
            :alt: A VEX Motor Controller 29
            :width: 200
