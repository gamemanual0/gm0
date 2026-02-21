.. include:: <isonum.txt>

Choosing a Motor
================

Legal Motors
------------

12 volt motors are strictly controlled by FTC\ |reg| rules. As of 2025-2026 season, the only FTC legal 12V motors are the following ones:

- `AndyMark NeveRest 12V DC <https://andymark.com/products/neverest-series-motor-only?sku=am-3104>`_ (am-3104, am-3104b)
- `AndyMark NeveRest Hex 12V DC <https://andymark.com/products/neverest-series-motor-only?sku=am-3104c_17t>`_ (am-3104c)
- `goBILDA Yellow Jacket 520x Series 12V DC <https://www.gobilda.com/yellow-jacket-planetary-gear-motors>`_ (5201, 5202, 5203, and 5204 series, e.g. 5201-0002-0026)
- `goBILDA 5000 Series 12V DC <https://www.gobilda.com/5000-series-motors>`_ (e.g. 5000-0002-4008)
- `Modern Robotics / MATRIX 12V DC <https://www.gobilda.com/5000-series-matrix-12vdc-motor/>`_ (5000-0002-0001)
- `NFR Products Yuksel 12V DC <https://nfrproducts.com/yuksel-12v-dc-motor>`_
- `REV Robotics HD Hex 12V DC <https://www.revrobotics.com/REV-41-1291/>`_ (REV-41-1291)
- `REV Robotics Core Hex 12V DC <https://www.revrobotics.com/rev-41-1300/>`_ (REV-41-1300)
- `Studica Robotics Maverick 12V DC <https://www.studica.com/studica-robotics-brand/maverick-dc-gear-motor-611-w-encoder>`_ (75001)
- `SWYFT Robotics SWYFT Spike Motor <https://swyftrobotics.com/products/swyft-spike-ftc-planetary-gearmotors>`_ (SR-MOTOR-DC-01)
- TETRIX MAX 12V DC (739530, 39530; now discontinued)
- `TETRIX MAX TorqueNADO 12V DC <https://www.pitsco.com/products/tetrix-max-torquenado-motor-with-encoder>`_ (W44260)

.. note::
   Many legal gearmotors are sold with labeling based on the entire assembly. These motors may be used with or without the provided gearbox, and/or with any other compatible gearbox.  Here are some examples:

   - `REV Robotics UltraPlanetary Gearbox Kit & HD Hex Motor <https://www.revrobotics.com/rev-41-1600/>`_ (REV-41-1600)
   - `REV Robotics HD Hex Motor 20:1 Spur Gearbox <https://www.revrobotics.com/rev-41-1298/>`_ (REV-41-1298)
   - `REV Robotics HD Hex Motor 40:1 Spur Gearbox <https://www.revrobotics.com/rev-41-1301/>`_ (REV-41-1301)
   - `AndyMark NeveRest Gearmotors <https://andymark.com/collections/gearmotors?filter.p.m.filters.recommended_for=FTC>`_

.. tip::
   Continuous Rotation servos can also be a great option in place of a 12V motor in various mechanisms.  See :doc:`Choosing a Servo <../servo-guide/choosing-servo>` for details.

With the exception of the :term:`REV Core Hex Motor <Core Hex Motor>`, all other motors above have very similar structures. They consist of the following components:

- **Bare motor**. In all cases above, this is a 12V motor of :term:`RS-555 type <RS-550 Series Motor>`, with free speed around 6,000 RPM and stall current around 10A. The motor specs posted by different vendors might be slightly different, but the difference is mainly due to different testing methods. In real life, the bare motors used by :term:`AndyMark NeveRest motors <NeveRest Motor>`, :term:`REV Robotics HD Hex motors <HD Hex Motor>`, and :term:`goBILDA motors <Yellow Jacket Motor>` are virtually identical. The most reliable specs can be found in the :ref:`motor-data` section.
- **Gearbox**. The gearbox is attached to the front of the motor and reduces the speed while increasing the torque. For example, a 20:1 gearbox reduces the speed by a factor of 20, resulting in a no-load speed of around 300RPM. See :term:`Gear Reduction`. A gearbox also contains the output :term:`shaft <Shaft>` (typically a 8mm REX shaft, 5mm hex shaft, or 6mm D shaft) and mounting holes. The gearbox can also be replaced; this is FTC legal but requires some skill.
- **Encoder**. Attached to the back of the motor and protected by a plastic cap, the :term:`encoder <Encoder>` contains a sensor registering motor :term:`shaft <Shaft>` rotation. It can be connected to REV hubs and used for precise control of motor speed or rotating to a specific position.

Since the bare motor is similar for all motors discussed above, the choice of the right motor is dictated by the gearbox: the :term:`gear ratio <Gear Reduction>`, output :term:`shaft <Shaft>` type, and ease of mounting.

Gearboxes
---------

There are two kinds of gearboxes: spur gearboxes, and planetary (also known as orbital) gearboxes. Their inner structure and difference is discussed in detail in :doc:`gearbox-anatomy` section. For new teams, it suffices to know that planetary gearboxes much more reliable, but may be slightly more expensive. Spur gearboxes can strip under shock loads (for example, when your robot hits a wall), requiring you to replace the gearbox. For this reason, it is advised to use planetary gearboxs, especially in high-load use cases such as drivetrains.

Planetary Gearboxes
^^^^^^^^^^^^^^^^^^^

Standard planetary gearboxes include :term:`AndyMark NeveRest Orbital motors <NeveRest Motor>`, :term:`REV 20:1 Planetary motor <HD Hex Motor>`, and :term:`goBILDA's 5202/5203/5204 Series Yellow Jacket Motors <Yellow Jacket Motor>`.

Any of these "standard" gearboxes are more robust than spur gearboxes. Like the spur gearboxes, the gearboxes from different vendors, while not interchangeable, are very comparable in terms of robustness. Once again, the main thing to consider here is your desired reduction, your desired motor connections, and your desired output :term:`shaft <Shaft>` type.

- `goBILDA Yellow Jacket <https://www.gobilda.com/yellow-jacket-planetary-gear-motors/>`_ has the most varied selection of gearbox ratios with too many to list here, but utilize the rather uncommon :term:`3.5mm Bullet` connection for power. The output :term:`shaft <Shaft>` is a 8mm REX (7mm hex rounded to 8 mm) or :term:`6mm D-shaft <Shaft>`.
- `REV HD Hex Motor with UltraPlanetary Gearbox <https://www.revrobotics.com/rev-41-1600/>`_ - The UltraPlanetary is a customizable planetary gearbox that is designed for FTC. The three gearbox options are 3:1, 4:1, and 5:1, and can be mix & matched to create a custom ratio. It is possible to use from one to three gearboxes for a minimum ratio of 3:1 and a maximum of 125:1.  The motor uses the same connections (:term:`JST VH`) as the REV Expansion and Control Hub for power, which means no adapter cables are necessary.

  .. note::
     While REV lists the UltraPlanetary stages as 3:1, 4:1, and 5:1, their actual gear ratios are slightly different. Consult the `REV UltraPlanetary User's Manual for the exact gear ratios <https://docs.revrobotics.com/rev-crossover-products/ultraplanetary/cartridge-details>`_.

  The UltraPlanetary was intended to give teams maximum customization without the typical limiting factor - high cost. The total cost for the three stage gearbox and motor is *exceptionally* good value for a customizable motor. In addition, the UltraPlanetary has a female 5mm hex output :term:`shaft <Shaft>` which allows teams to customize the shaft length.

  .. tip::
     goBILDA sells a special `output adapter <https://www.gobilda.com/flanged-stainless-steel-shaft-for-rev-motion-pattern-8mm-rex-29mm-length/>`_ and `motor mount <https://www.gobilda.com/1702-series-quad-block-motor-mount-43-3/>`_ that allows easily using the UltraPlanetary with the goBILDA system.
- `AndyMark NeveRest Orbital <https://andymark.com/products/neverest-orbital-gearmotors>`_ motors come in four :term:`ratios <Gear Reduction>`, 1:1, 3.7:1, 19.2:1, 50.9:1, and 263.7:1. The output shaft is a :term:`6mm D-shaft <Shaft>`, and the motors have inbuilt cables with :term:`Anderson PowerPole` or :term:`JST VH` connectors to connect to power.
- `AndyMark NeveRest Hex <https://andymark.com/products/neverest-hex-gearmotors>`_ motors come in five :term:`ratios <Gear Reduction>`, 1:1, 3.7:1, 13.7:1, 19.2:1, 50.9:1, and 263.7:1. The output shaft is a :term:`3/8 inch hex shaft <Shaft>`, and the motors have :term:`JST VH` connectors on the motors to connect to power cables.

Spur Gearboxes
^^^^^^^^^^^^^^

.. danger::
   Spur gearboxes are NOT recommended due to their shorter lifespan and lower mechanical resilience compared to planetary gearboxes. If you are purchasing new motors, it is highly suggested to purchase planetary gearbox motors instead. Care should be taken to not put load on the output shaft of a spur gearbox. In particular, spur gear motors should NOT be used in high load applications, such as a drivetrain.

Motors with spur gearboxes include :term:`AndyMark NeveRest Classic motors <NeveRest Motor>` (in 40:1 and 60:1 ratios), the :term:`REV HD Hex 40:1 Spur motor <HD Hex Motor>`, and the discontinued goBILDA 5201 Series Yellow Jacket Spur Gear Motors. All of them offer similar performance and reliability, so your choice is primarily dictated by the convenience of mounting and connecting to the rest of your design (e.g., if you use REV kit, you should probably choose :term:`REV HD Hex motor <HD Hex Motor>`, as it uses the same :term:`5mm hex shaft <Shaft>` as the rest of REV system).

- :term:`REV HD Hex Motor with Spur Gearbox <HD Hex Motor>` - This motor comes in a 20:1 or 40:1 ratio, and uses the same connections (:term:`JST VH`) as the REV Expansion and Control Hub for power, which means no adapter cables are necessary. The output :term:`shaft <Shaft>` is a 5mm hex :term:`shaft <Shaft>`. :term:`REV UltraHex <UltraHex>` has a 5mm hex :term:`bore <Bore>` running through the middle of a 1/2" hex :term:`shaft <Shaft>`, which makes adapting this motor to any length of :term:`UltraHex`, and by extension, 1/2" hex :term:`shaft <Shaft>`, very easy.
- :term:`AndyMark NeveRest Classic <NeveRest Motor>` motors come in 40:1 and 60:1 ratios. The output shaft is a :term:`6mm D-shaft <Shaft>`, and the motors have inbuilt cables with :term:`Anderson PowerPole` or :term:`JST VH` connectors to connect to power.

Choosing The Right Gearbox
--------------------------

For regular use, any of the planetary gearboxes will fit your needs. Planetary gearboxes are just a tiny bit more expensive, but boast better backlash and efficiency, higher load capacity, and better capacity for shock loads than spur gearboxes. The tradeoffs, cost and mechanical noise, are almost never a factor.

.. tip:: Because both gearbox types are so similar in price for similar ratios, we generally recommend the use of a planetary over a spur gearbox.

If you already own spur gearboxes, try to use them in lower-load situations, and use planetary motors on your drivetrain and high-load mechanisms.

For small reductions, it may be more economical to choose a motor you already own and build an external reduction using gears, chain, or belts. It should again come down to your desired output shaft, desired gear ratio, and for the UltraPlanetary, whether you want the ability to swap parts out on the fly.
