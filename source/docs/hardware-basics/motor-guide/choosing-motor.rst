================
Choosing a Motor
================

Legal Motors
------------
12 V motors are strictly controlled by FTC rules. As of 2019-2020 season,
the only FTC legal motors are the following ones:

* TETRIX 12V DC Motor (`regular <https://www.pitsco.com/TETRIX-DC-Gear-Motor>`_,
  `Torquenado <https://www.pitsco.com/TETRIX-MAX-TorqueNADO-Motor-with-Encoder/>`_)
* `AndyMark NeveRest series 12V DC Motors <https://www.andymark.com/categories/mechanical-gearboxes-gearmotors>`_
* Modern Robotics/MATRIX 12V DC Motors (this also includes `goBILDA motors <https://www.gobilda.com/motors/>`_,
  which are MATRIX motors with a different gearbox)
* `REV Robotics HD Hex 12V DC Motor <http://www.revrobotics.com/rev-41-1301/>`_
* `REV Robotics Core Hex 12V DC Motor <http://www.revrobotics.com/rev-41-1300/>`_

With the exception of REV Core Hex Motor, which is discussed separately,
all other motors above have very similar structure. They consist of

* **Bare motor**. In all cases above, this is a 12V  motor of so-called RS-555
  type, with free speed around 6,000 RPM and stall current around 10A.
  The motor specs posted by different vendors might be slightly different,
  but the difference is mainly due to different testing methods.
  In real life, the bare motors  used by  AndyMark  NeveRest motors,
  REV Robotics HD Hex motors, and goBILDA motors are virtually identical.
  The most reliable  specs for this kind of motor can be found on the
  `VEX  website <https://motors.vex.com/other-motors/am-NeveRest>`_.
* **Gearbox**. The gearbox is attached to the front of the motor and reduces
  the speed while increasing the torque; for example, popular 20:1 gearbox
  reduces the speed by factor of 20, resulting in no-load speed of around
  300RPM.
  Gearbox also contains the output shaft (typically 6mm D profile; REV motors
  use 5mm hex shafts) and mounting holes. Gearbox can be replaced; this
  is FTC legal but requires some skill.
* **Encoder**. Attached to the back of the motor and protected by a plastic
  cap, the encoder contains a sensor registering motor shaft rotation.
  It can be connected to REV hubs and  used for precise control of motor speed
  or rotating to a specific position.

Since the bare motor is similar for all motors discussed above, the choice
of the right motor is dictated by the gearbox: the gear ratio, output shaft
type, and ease of mounting.

Gearboxes
---------
There are two kinds of gearboxes: spur  and planetary (also known
as orbital). Their inner structure and difference is discussed in detail in
:doc:`gearbox-anatomy` section. For new teams, it suffices to know that
planetary gearboxes are slightly more expensive, but much more reliable.
Spur gearboxes can strip under shock loads (for example, when your robot hits
a wall), requiring you to replace the gearbox. For this reason, it is advised
to use planetary gearbox whenever possible. In particular, for drivetrain you
should **always** use planetary gearboxes.

Available Spur Gearboxes and Motors
-----------------------------------
Motors with spur gearboxes include AndyMark NeveRest Classic motors
(in 40:1 and 60:1 ratios), the REV HD Hex 40:1 Spur motor,
and goBILDA 5201 Series Yellow Jacket Spur Gear Motors. All of them offer
similar performance and reliability, so your  choice is primarily  dictated
by the convenience of mounting and connecting to the rest of your design
(e.g., if you use REV kit, you should probably choose REV HD Hex motor, as it
uses the same 5mm hex shaft as the rest of REV system).

These motors are fine for most situations, but should not be used for high
loads or when the motor could be subject to shock loads. In particular, it is
advised that you do not use them for drivetrain.



Available Planetary Gearboxes and Motors: Standard
--------------------------------------------------
Standard planetary gearboxes include Andymark NeveRest Orbital motors,
REV 20:1 Planetary motor, and goBILDA’s 5202 Series Yellow Jacket Planetary
Gear Motors.

Any of these “standard” gearboxes are more robust than  spur
gearboxes.
Like the spur gearboxes, the  gearboxes from different vendors,
while not interchangeable, are very comparable in terms of robustness.
Once again, the main thing to consider here is your **desired reduction,
your desired motor connections, and your desired output shaft type**.

* **goBILDA** has, by far, the most varied selection of gearbox ratios with too
  many to list here, but utilize the rather uncommon (in the FTC world)
  bullet connection for power.
  The output shaft is a 6mm D-shaft.
* **REV HD Hex Planetary motor** - This motor comes only in a 20:1 ratio,
  but uses the same connections (JST-VH) as the REV Expansion and Control hub
  for power which means no adapter cables. The output shaft is a 5mm hex shaft.
  REV Ultrahex has a 5mm hex bore running through the middle of a 1/2” hex
  shaft, which makes adapting this motor to any length of Ultrahex,
  and by extension, 1/2” hex shaft very easy.
  The ratio of HD Hex is 20:1.
* **Andymark NeveRest Orbital** motors come in two ratios,  3.7:1 and
  20:1.
  The output shaft is a 6mm D-shaft, and like all NeveRest motors use the
  Anderson Power Pole to connect to power.
  This connector is perhaps the most robust of the ones listed here.

High-end Planetary Gearboxes
----------------------------
These gearboxes can be used to replace the "standard" gearboxes listed above.
They give you more options and gear ratios and in some cases, are more robust
than the standard  ones, but they can be quite expensive and require more work.
This category includes `Andymark NeveRest Sport <https://www.andymark.com/products/neverest-sport-option>`_,
`VEX VersaPlanetary <https://www.vexrobotics.com/versaplanetary.html>`_, and
`REV UltraPlanetary <http://www.revrobotics.com/rev-41-1600/>`_ gearboxes.

* `REV UltraPlanetary <http://www.revrobotics.com/rev-41-1600/>`_ gearbox -
  The UltraPlanetary is a customizable planetary
  gearbox that is designed for FTC. The three gearbox options are 3:1, 4:1,
  and 5:1, and can be mix & matched to create a custom ratio.
  It is possible to use from one to three gearboxes for a minimum ratio of 3:1
  and maximum of 143:1.
  The UltraPlanetary was intended to give teams the maximum customization
  without the typical limiting factor - high cost.
  The total cost for the three stage gearbox and motor is $36 -
  a very affordable price, given that most spur gearbox motors are in the ~30
  range.
  In addition, the UltraPlanetary has a female 5mm hex output shaft which
  allows teams to customize the shaft length.
  The UltraPlanetary is a great option for teams as it allows for
  customizability and very good value.
* `Andymark NeveRest Sport <https://www.andymark.com/products/neverest-sport-option>`_  gearboxes -
  These gearboxes were designed to be more robust than the gearboxes found on
  Andymark NeveRest motors.  The NeveRest sport gearboxes can handle larger
  shock loads, and can provide a larger reduction with options up to 256:1.
  These gearboxes are relatively expensive, but still not the most expensive
  gearbox you can use in FTC, with prices ranging from $46.00 for the 4:1
  reduction to $77.50 for the 256:1 reduction.
  There are no motors included with the gearbox,
  you will need a bare NeveRest motor, REV HD Hex motor, or goBilda motor to
  attach to the gearbox.
  The selection should be based only on which connection type you like the most
  (powerpole vs. JST VH vs. 3.5mm bullet) for power.
* `VEX VersaPlanetary <https://www.vexrobotics.com/versaplanetary.html>`_
  gearboxes - These planetary gearboxes were designed for FRC use and can be
  very expensive (upwards of $80 for a 40:1 ratio) but because they were
  designed for such heavy use the VersaPlanetary is arguably the most durable
  gearbox you can use in FTC.
  If you somehow manage you break one of the components of the gearbox,
  they are very easy to repair.
  Unlike other gearboxes, almost every part of the gearbox is replaceable and
  able to be bought by itself.
  Every other gearbox on this list would require you to buy a whole new gearbox
  if one part of it breaks. In addition to that, you can disassemble the
  gearbox from the motor-side of the gearbox,  meaning in the event that
  something breaks, you don’t have to remove the gearbox from the plate it’s
  attached to to be able to switch that part out.
  Another nice thing is that attaching the pinion to a bare motor is super easy
  since it clamps onto the motor shaft instead of being a press fit like the
  NeveRest sport pinion gear is.
  This means you don’t need any special tools like a press and can switch
  motors out very quickly, even during a competition. VersaPlanetarys also
  allow you to choose your own ratio with swappable 3:1, 4:1, 5:1, 7:1, 9:1,
  and 10:1 stages. When using VersaPlanetary gearboxes there are a few
  important factors for you to consider.

  * The higher the reduction, the weaker the stage is.
    So for instance, a gearbox with 4:1, 4:1, 5:1 stages would be stronger
    than a 10:1, 10:1 gearbox though they end up with the same output ratio
    of 100:1.
  * Always place the highest reduction as close as you can to the motor.
    There is less load placed on it here, and is less likely to break than if
    you placed it higher in the reduction.
    Then after your weakest stage, you should use your next weakest stage,
    until you reach the output stage.
  * Vex Pro also sells a VersaPlanetary Lite option,
    which replaces the outer aluminum ring gear and housing with a 30% glass
    filled nylon.
    VersaPlanetary Lite gearboxes use the same gear sets as the regular
    VersaPlanetary, so if you ever feel the need for a stronger gearbox you
    can mix and match parts to fill your requirement.
    While still expensive
    (compared to other planetary gearboxes from Andymark, REV, and goBilda)
    at about $50 for one gearbox,
    it’s still one of the strongest gearboxes available for FTC use.
    It should be noted that the lite version comes with a 3/8” hex output
    shaft only, whereas the more expensive VersaPlanetary comes with various
    options including 1/2” hex, 3/8” hex, 1/2” round with 1/8” keyway,
    a CIM Output option, and a Universal Female Output Shaft.
    However, the shaft can be swapped out for a different one.
    The VersaPlanetary lite also loses side mounting holes on the gearbox.
  * Like the NeveRest Sport gearboxes, you will need to supply your own bare
    motor to attach to the gearbox.




Choosing The Right Gearbox
--------------------------
For regular use, any of the “standard” (see above) type of planetary gearboxes
will fit your needs.
Planetary gearboxes are just a tiny bit more expensive,
but boast better backlash and efficiency, higher load capacity,
and better capacity for shock loads than spur gearboxes.
The tradeoffs, cost and mechanical noise, are almost never a factor.
**Because both gearbox types are so similar in price for similar ratios,
it’s impossible to recommend the use of a spur gearbox over a planetary gearbox
for most use cases in FTC**.
If you already own spur gearboxes, try to use them in lower-load situations and
try to put planetary motors at least on your drivetrain.

For larger reductions, the 57 Sport and VersaPlanetary gearboxes are a viable
but expensive option.
In some cases, it may be more economical to choose a motor you already own and
build an external reduction using gears, chain, or belts.
It should again come down to your desired output shaft, desired gear ratio,
and for the VersaPlanetary, whether you want the ability to swap parts out on
the fly.
You also may be able to buy 57 Sport gearboxes off of local FRC teams at a
solid discount - some may be willing to sell their older gearboxes.

The motor itself, meaning the part that actually has power running to it and
makes the shaft spin, not the gearbox that is often mounted on the motor,
doesn’t matter all that much in FTC.
The motors from Andymark, REV, and goBILDA might have different specifications
on their websites, but they’re all very similar.
The VEX motor testing (link in the :doc:`jvn-calculator` section)
shows the accurate specifications of a bare RS-555 series motor.
When choosing between companies,
always go with what works best with your motion system,
and which is easiest to work with your existing electronics system.
