.. include:: <isonum.txt>

Choosing a Motor
================

Legal Motors
------------

12 V motors are strictly controlled by FTC rules. As of 2020-2021 season, the only FTC legal motors are the following ones:

- TETRIX 12V DC Motor (`regular <https://www.pitsco.com/TETRIX-DC-Gear-Motor>`_, `Torquenado <https://www.pitsco.com/TETRIX-MAX-TorqueNADO-Motor-with-Encoder/>`_)
- `AndyMark NeveRest series 12V DC Motors <https://www.andymark.com/categories/mechanical-gearboxes-gearmotors>`_
- Modern Robotics/MATRIX 12V DC Motors (this also includes `goBILDA motors <https://www.gobilda.com/motors/>`_, which are MATRIX motors with a different gearbox)
- `REV Robotics HD Hex 12V DC Motor <https://www.revrobotics.com/rev-41-1301/>`_
- `REV Robotics Core Hex 12V DC Motor <https://www.revrobotics.com/rev-41-1300/>`_

With the exception of :term:`REV Core Hex Motor <Core Hex Motor>`, which is discussed separately, all other motors above have very similar structures. They consist of the following components.

- **Bare motor**. In all cases above, this is a 12V motor of :term:`RS-555 type <RS-550 Series Motor>`, with free speed around 6,000 RPM and stall current around 10A. The motor specs posted by different vendors might be slightly different, but the difference is mainly due to different testing methods. In real life, the bare motors used by :term:`AndyMark NeveRest motors <NeveRest Motor>`, :term:`REV Robotics HD Hex motors <HD Hex Motor>`, and :term:`goBILDA motors <Yellow Jacket Motor>` are virtually identical. The most reliable specs can be found on the `VEX website <https://motors.vex.com/other-motors/am-neverest>`_.
- **Gearbox**. The gearbox is attached to the front of the motor and reduces the speed while increasing the torque. For example, a 20:1 gearbox reduces the speed by a factor of 20, resulting in a no-load speed of around 300RPM. See :term:`Gear Reduction`. A gearbox also contains the output :term:`shaft <Shaft>` (typically 6mm D profile; REV motors use 5mm hex shafts) and mounting holes. The gearbox can also be replaced; this is FTC legal but requires some skill.
- **Encoder**. Attached to the back of the motor and protected by a plastic cap, the :term:`encoder <Encoder>` contains a sensor registering motor :term:`shaft <Shaft>` rotation. It can be connected to :term:`REV hubs <Expansion Hub>` and used for precise control of motor speed or rotating to a specific position.

Since the bare motor is similar for all motors discussed above, the choice of the right motor is dictated by the gearbox: the :term:`gear ratio <Gear Reduction>`, output :term:`shaft <Shaft>` type, and ease of mounting.

Gearboxes
---------

There are two kinds of gearboxes: spur and planetary (also known as orbital). Their inner structure and difference is discussed in detail in :doc:`gearbox-anatomy` section. For new teams, it suffices to know that planetary gearboxes are slightly more expensive, but more reliable. Spur gearboxes can strip under shock loads (for example, when your robot hits a wall), requiring you to replace the gearbox. For this reason, it is advised to use planetary gearbox in high-load use cases such as drivetrains.

Available Spur Gearboxes and Motors
-----------------------------------

Motors with spur gearboxes include :term:`AndyMark NeveRest Classic motors <NeveRest Motor>` (in 40:1 and 60:1 ratios), the :term:`REV HD Hex 40:1 Spur motor <HD Hex Motor>`, and goBILDA 5201 Series Yellow Jacket Spur Gear Motors. All of them offer similar performance and reliability, so your choice is primarily dictated by the convenience of mounting and connecting to the rest of your design (e.g., if you use REV kit, you should probably choose :term:`REV HD Hex motor <HD Hex Motor>`, as it uses the same :term:`5mm hex shaft <Shaft>` as the rest of REV system).

.. caution:: These motors are fine for most situations, but should not be used for high loads or when the motor could be subject to shock loads. In particular, it is advised that you do not use them for drivetrains.

- goBILDA’s 5201 series spur gearboxes are much cheaper than either REV’s or Andymark’s; whether that’s a good or bad thing is up to you. They utilize the rather uncommon (in the FTC world) bullet connection for power. However, these are now discontinued. The output shaft is a 6mm D-shaft.

- :term:`REV HD Hex Planetary <HD Hex Motor>` 40:1 motor - This motor comes only in a 40:1 ratio, but does use the same connections (JST VH) as the :term:`REV Expansion <Expansion Hub>` and Control Hub for power which means no adapter cables. The output :term:`shaft <Shaft>` is a 5mm hex :term:`shaft <Shaft>`. :term:`REV UltraHex <UltraHex>` has a 5mm hex :term:`bore <Bore>` running through the middle of a 1/2” hex :term:`shaft <Shaft>`, which makes adapting this motor to any length of :term:`UltraHex`, and by extension, 1/2” hex :term:`shaft <Shaft>`, very easy.
- :term:`Andymark NeveRest <NeveRest Motor>` Classic motors come in a few different ratios, which are 40:1 and 60:1. The output shaft is a :term:`6mm D-shaft <Shaft>`, and like all NeveRest motors use the :term:`Anderson PowerPole` to connect to power. This connector is perhaps the most robust of the ones listed here.

Standard Planetary Gearboxes
----------------------------

Standard planetary gearboxes include :term:`Andymark NeveRest Orbital motors <NeveRest Motor>`, :term:`REV 20:1 Planetary motor <HD Hex Motor>`, and :term:`goBILDA’s 5202 Series Yellow Jacket Motors <Yellow Jacket Motor>`.

Any of these “standard” gearboxes are more robust than spur gearboxes. Like the spur gearboxes, the gearboxes from different vendors, while not interchangeable, are very comparable in terms of robustness. Once again, the main thing to consider here is your desired reduction, your desired motor connections, and your desired output :term:`shaft <Shaft>` type.

- **goBILDA Yellow Jacket** has the most varied selection of gearbox ratios with too many to list here, but utilize the rather uncommon bullet connection for power. The output :term:`shaft <Shaft>` is a :term:`6mm D-shaft <Shaft>`.
- **REV HD Hex Planetary motor** - This motor comes only in a 20:1 ratio, but uses the same connections (:term:`JST-VH`) as the :term:`REV Expansion <Expansion Hub>` and Control hub for power which means no adapter cables. The output shaft is a :term:`5mm hex shaft <Shaft>`. REV :term:`UltraHex` has a 5mm hex :term:`Bore` running through the middle of a :term:`1/2” hex shaft <Shaft>`, which makes adapting this motor to any length of :term:`UltraHex`, and by extension, :term:`1/2” hex shaft <Shaft>` very easy. The ratio of the :term:`HD Hex Motor` is 20:1.
- **Andymark NeveRest Orbital** motors come in two :term:`ratios <Gear Reduction>`, 3.7:1 and 20:1. The output shaft is a :term:`6mm D-shaft <Shaft>`, and like all :term:`NeveRest motors <NeveRest Motor>` use the :term:`Anderson PowerPole` to connect to power. This connector is perhaps the most robust of the ones listed here.

High-end Planetary Gearboxes
----------------------------

These gearboxes can be used to replace the "standard" gearboxes listed above. They give you more options and gear ratios and in some cases, are more robust than the standard ones, but they can be quite expensive and require more work.

- `REV UltraPlanetary <https://www.revrobotics.com/rev-41-1600/>`_ gearbox - The UltraPlanetary is a customizable planetary gearbox that is designed for FTC. The three gearbox options are 3:1, 4:1, and 5:1, and can be mix & matched to create a custom ratio. It is possible to use from one to three gearboxes for a minimum ratio of 3:1 and a maximum of 125:1.

  The UltraPlanetary was intended to give teams maximum customization without the typical limiting factor - high cost. The total cost for the three stage gearbox and motor is *exceptionally* good value for a customizable motor. In addition, the UltraPlanetary has a female 5mm hex output :term:`shaft <Shaft>` which allows teams to customize the shaft length.
- `Andymark NeveRest Sport <https://www.andymark.com/products/neverest-sport-options>`_ gearboxes - These gearboxes were designed to be more robust than the gearboxes found on :term:`Andymark NeveRest motors <NeveRest Motor>`. The NeveRest sport gearboxes can handle larger shock loads, and can provide a larger reduction with options up to 256:1. These gearboxes are relatively expensive, as no motors are included. You will need a bare :term:`NeveRest Motor`, :term:`REV HD Hex motor <HD Hex Motor>`, or goBILDA motor to attach to the gearbox. The selection should be based only on which connection type you like the most (:term:`PowerPole <Anderson PowerPole>` vs. :term:`JST-VH` vs. 3.5mm bullet) for power and price.
- `VEX VersaPlanetary <https://www.vexrobotics.com/versaplanetary.html>`_ gearboxes - These planetary gearboxes were designed for FRC\ |reg| use and are arguably the most durable gearbox in FTC. Because they were designed for such heavy use, the VP is quite costly. If you break one of the components, the gearbox is very easy to repair. Unlike other gearboxes, almost every part is replaceable and can be purchased separately. You can disassemble the gearbox from the motor-side, so removing the gearbox from the mounted plate is not necessary. Attaching the pinion to a :term:`bare motor <Bare Motor>` is simple since it clamps onto the motor shaft instead of a press fit like the other pinion gears. VersaPlanetaries also allow you to choose your own ratio with swappable 3:1, 4:1, 5:1, 7:1, 9:1, and 10:1 stages. When using VersaPlanetary gearboxes there are a few important factors for you to consider.

  - The higher the reduction, the weaker the stage is. So for instance, a gearbox with 4:1, 4:1, 5:1 stages would be stronger than a 10:1, 10:1 gearbox though they end up with the same output ratio of 100:1.
  - Always place the highest reduction as close as you can to the motor. There is less load placed on it here, and is less likely to break than if you placed it higher in the reduction. Then after your weakest stage, you should use your next weakest stage, until you reach the output stage.
  - VEXPro also sells a VersaPlanetary Lite option, which replaces the outer aluminum ring gear and housing with a 30% glass filled nylon. VersaPlanetary Lite gearboxes use the same gear sets as the regular VersaPlanetary, so if you ever feel the need for a stronger gearbox you can mix and match parts to fill your requirement. While still expensive, the VPLite is still one of the strongest gearboxes available for FTC use.
  - Like the NeveRest Sport gearboxes, you *will* need to supply your own bare motor to attach to the gearbox.

.. note:: The VPLite comes with a 3/8” hex output shaft only, whereas the more expensive VersaPlanetary comes with various options including 1/2” hex, 3/8” hex, 1/2” round with 1/8” keyway, a CIM Output option, and a Universal Female Output Shaft. However, the shaft can be swapped out for a different one.

Choosing The Right Gearbox
--------------------------

For regular use, any of the “standard” (see above) type of planetary gearboxes will fit your needs. Planetary gearboxes are just a tiny bit more expensive, but boast better backlash and efficiency, higher load capacity, and better capacity for shock loads than spur gearboxes. The tradeoffs, cost and mechanical noise, are almost never a factor.

.. tip:: Because both gearbox types are so similar in price for similar ratios, we generally recommend the use of a planetary over a spur gearbox.

If you already own spur gearboxes, try to use them in lower-load situations and use planetary motors on your drivetrain.

For larger reductions, the high-end gearboxes are a viable but expensive option. In some cases, it may be more economical to choose a motor you already own and build an external reduction using gears, chain, or belts. It should again come down to your desired output shaft, desired gear ratio, and for the VersaPlanetary, whether you want the ability to swap parts out on the fly. You also may be able to buy gearboxes off of local FRC teams at a solid discount - some may be willing to sell their older gearboxes.
