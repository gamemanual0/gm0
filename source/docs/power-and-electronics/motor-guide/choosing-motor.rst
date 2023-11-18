.. include:: <isonum.txt>

Choosing a Motor
================

Legal Motors
------------

12 V motors are strictly controlled by FTC\ |reg| rules. As of 2020-2021 season, the only FTC legal motors are the following ones:

- TETRIX 12V DC Motor (`regular <https://www.pitsco.com/TETRIX-DC-Gear-Motor>`_, `Torquenado <https://www.pitsco.com/TETRIX-MAX-TorqueNADO-Motor-with-Encoder/>`_)
- `AndyMark NeveRest series 12V DC Motors <https://www.andymark.com/categories/mechanical-gearboxes-gearmotors>`_
- Modern Robotics/MATRIX 12V DC Motors (this also includes `goBILDA motors <https://www.gobilda.com/motors/>`_, which are MATRIX motors with a different gearbox)
- `REV Robotics HD Hex 12V DC Motor <https://www.revrobotics.com/rev-41-1301/>`_
- `REV Robotics Core Hex 12V DC Motor <https://www.revrobotics.com/rev-41-1300/>`_

With the exception of :term:`REV Core Hex Motor <Core Hex Motor>`, which is discussed separately, all other motors above have very similar structures. They consist of the following components.

- **Bare motor**. In all cases above, this is a 12V motor of :term:`RS-555 type <RS-550 Series Motor>`, with free speed around 6,000 RPM and stall current around 10A. The motor specs posted by different vendors might be slightly different, but the difference is mainly due to different testing methods. In real life, the bare motors used by :term:`AndyMark NeveRest motors <NeveRest Motor>`, :term:`REV Robotics HD Hex motors <HD Hex Motor>`, and :term:`goBILDA motors <Yellow Jacket Motor>` are virtually identical. The most reliable specs can be found in the :ref:`motor-data` section.
- **Gearbox**. The gearbox is attached to the front of the motor and reduces the speed while increasing the torque. For example, a 20:1 gearbox reduces the speed by a factor of 20, resulting in a no-load speed of around 300RPM. See :term:`Gear Reduction`. A gearbox also contains the output :term:`shaft <Shaft>` (typically 6mm D profile; REV motors use 5mm hex shafts) and mounting holes. The gearbox can also be replaced; this is FTC legal but requires some skill.
- **Encoder**. Attached to the back of the motor and protected by a plastic cap, the :term:`encoder <Encoder>` contains a sensor registering motor :term:`shaft <Shaft>` rotation. It can be connected to REV hubs and used for precise control of motor speed or rotating to a specific position.

Since the bare motor is similar for all motors discussed above, the choice of the right motor is dictated by the gearbox: the :term:`gear ratio <Gear Reduction>`, output :term:`shaft <Shaft>` type, and ease of mounting.

Gearboxes
---------

There are two kinds of gearboxes: spur and planetary (also known as orbital). Their inner structure and difference is discussed in detail in :doc:`gearbox-anatomy` section. For new teams, it suffices to know that planetary gearboxes are slightly more expensive, but more reliable. Spur gearboxes can strip under shock loads (for example, when your robot hits a wall), requiring you to replace the gearbox. For this reason, it is advised to use planetary gearbox in high-load use cases such as drivetrains.

Available Spur Gearboxes and Motors
-----------------------------------

.. danger::
  Spur gearboxes are NOT recommended due to their shorter lifespan and lower mechanical resilience compared to planetary gearboxes. If you are purchasing new motors, it is highly suggested to purchase planetary gearbox motors instead. Care should be taken to not put load on the output shaft of a spur gearbox. In particular, spur gear motors should NOT be used in high load applications, such as a drivetrain

Motors with spur gearboxes include :term:`AndyMark NeveRest Classic motors <NeveRest Motor>` (in 40:1 and 60:1 ratios), the :term:`REV HD Hex 40:1 Spur motor <HD Hex Motor>`, and goBILDA 5201 Series Yellow Jacket Spur Gear Motors. All of them offer similar performance and reliability, so your choice is primarily dictated by the convenience of mounting and connecting to the rest of your design (e.g., if you use REV kit, you should probably choose :term:`REV HD Hex motor <HD Hex Motor>`, as it uses the same :term:`5mm hex shaft <Shaft>` as the rest of REV system).

- goBILDA's 5201 series spur gearboxes are much cheaper than either REV's or Andymark's; whether that's a good or bad thing is up to you. They utilize the rather uncommon (in the FTC world) bullet connection for power. However, these are now discontinued. The output shaft is a 6mm D-shaft.

- :term:`REV HD Hex Planetary <HD Hex Motor>` 40:1 motor - This motor comes only in a 40:1 ratio, but does use the same connections (JST VH) as the REV Expansion and Control Hub for power which means no adapter cables. The output :term:`shaft <Shaft>` is a 5mm hex :term:`shaft <Shaft>`. :term:`REV UltraHex <UltraHex>` has a 5mm hex :term:`bore <Bore>` running through the middle of a 1/2" hex :term:`shaft <Shaft>`, which makes adapting this motor to any length of :term:`UltraHex`, and by extension, 1/2" hex :term:`shaft <Shaft>`, very easy.
- :term:`Andymark NeveRest <NeveRest Motor>` Classic motors come in a few different ratios, which are 40:1 and 60:1. The output shaft is a :term:`6mm D-shaft <Shaft>`, and like all NeveRest motors use the :term:`Anderson PowerPole` to connect to power. This connector is perhaps the most robust of the ones listed here.

Planetary Gearboxes
-------------------

Standard planetary gearboxes include :term:`Andymark NeveRest Orbital motors <NeveRest Motor>`, :term:`REV 20:1 Planetary motor <HD Hex Motor>`, and :term:`goBILDA's 5202/5203/5204 Series Yellow Jacket Motors <Yellow Jacket Motor>`.

Any of these "standard" gearboxes are more robust than spur gearboxes. Like the spur gearboxes, the gearboxes from different vendors, while not interchangeable, are very comparable in terms of robustness. Once again, the main thing to consider here is your desired reduction, your desired motor connections, and your desired output :term:`shaft <Shaft>` type.

- `goBILDA Yellow Jacket <https://www.gobilda.com/yellow-jacket-planetary-gear-motors/>`_ has the most varied selection of gearbox ratios with too many to list here, but utilize the rather uncommon bullet connection for power. The output :term:`shaft <Shaft>` is a :term:`6mm D-shaft <Shaft>` or 8 REX (7 mm hex rounded to 8 mm).
- REV HD Hex Planetary motor - This motor comes only in a 20:1 ratio, but uses the same connections (:term:`JST-VH`) as the REV Expansion and Control hub for power which means no adapter cables. The output shaft is a :term:`5mm hex shaft <Shaft>`. REV :term:`UltraHex` has a 5mm hex :term:`Bore` running through the middle of a :term:`1/2" hex shaft <Shaft>`, which makes adapting this motor to any length of :term:`UltraHex`, and by extension, :term:`1/2" hex shaft <Shaft>` very easy. The ratio of the :term:`HD Hex Motor` is 20:1.
- Andymark NeveRest Orbital motors come in two :term:`ratios <Gear Reduction>`, 3.7:1 and 20:1. The output shaft is a :term:`6mm D-shaft <Shaft>`, and like all :term:`NeveRest motors <NeveRest Motor>` use the :term:`Anderson PowerPole` to connect to power. This connector is perhaps the most robust of the ones listed here.
- `REV UltraPlanetary <https://www.revrobotics.com/rev-41-1600/>`_ gearbox - The UltraPlanetary is a customizable planetary gearbox that is designed for FTC. The three gearbox options are 3:1, 4:1, and 5:1, and can be mix & matched to create a custom ratio. It is possible to use from one to three gearboxes for a minimum ratio of 3:1 and a maximum of 125:1.

  .. note::
    While REV lists the UltraPlanetary stages as 3:1, 4:1, and 5:1, their actual gear ratios are slightly different. Consult the `REV UltraPlanetary User's Manual for the exact gear ratios <https://docs.revrobotics.com/ultraplanetary/ultraplanetary-gearbox/cartridge-details>`_.

  The UltraPlanetary was intended to give teams maximum customization without the typical limiting factor - high cost. The total cost for the three stage gearbox and motor is *exceptionally* good value for a customizable motor. In addition, the UltraPlanetary has a female 5mm hex output :term:`shaft <Shaft>` which allows teams to customize the shaft length.

Choosing The Right Gearbox
--------------------------

For regular use, any of the planetary gearboxes will fit your needs. Planetary gearboxes are just a tiny bit more expensive, but boast better backlash and efficiency, higher load capacity, and better capacity for shock loads than spur gearboxes. The tradeoffs, cost and mechanical noise, are almost never a factor.

.. tip:: Because both gearbox types are so similar in price for similar ratios, we generally recommend the use of a planetary over a spur gearbox.

If you already own spur gearboxes, try to use them in lower-load situations and use planetary motors on your drivetrain.

For small reductions, it may be more economical to choose a motor you already own and build an external reduction using gears, chain, or belts. It should again come down to your desired output shaft, desired gear ratio, and for the UltraPlanetary, whether you want the ability to swap parts out on the fly.
