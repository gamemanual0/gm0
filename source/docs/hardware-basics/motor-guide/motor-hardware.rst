===============
Motor Hardware
===============
Shafts
======
In FTC, shafts are the way to transfer power from the motor to the mechanism it
is powering.
Keep in mind that some shafts such as 8 mm round shaft cannot use set screws
(although set screws are generally discouraged).
Adapting from different shaft types can be very inelegant and inefficient,
with the exception of 5 mm to/from 1/2” hex.
The different (common) types of shafts in FTC are as follows.

* Hex
    * 5 mm hex
    * 3/8” hex (Thunderhex)
    * 1/2” hex (Ultrahex, Thunderhex)
* D-shaft
    * 4.7 mm D-shaft
    * 6 mm D-shaft
    * 1/4” D-shaft
* Round
    * 6 mm round shaft
    * 8 mm round shaft
* Square
    * 1/8” square shaft
    * 1/4” square shaft (Thundersquare)
* REX (round and hex profile shaft)
    * 8 mm diameter
    * 12 mm diameter

Connectors
==========
There are different types of connections from various manufacturers,
which is another aspect of motors to consider.
Teams need to adapt to the JST system used by REV if they are using the
REV Expansion Hub.
Here are the different types of connectors for FTC motors.

* JST connector (standard REV)
* Anderson PowerPole
* Bullet connector

Gearboxes
=========
Fundamentally, a gearbox is just a collection of gears and an enclosure that
causes those gears to connect.
Gearboxes have an output ratio,
the final gear ratio between the motor input and the final output shaft.
Gear ratios are further explained in the glossary.

In FTC, gearboxes may be more common than you think -
every motor has a gearbox attached to it.
These gearboxes are one of the following two types: spur or planetary.
**Just for clarification, the gearboxes below are separate from the base
motor.**

Spur Gearboxes
--------------
Spur gearboxes are an arrangement of gear ratios,
often stacked to achieve a large compound ratio (e.g. 40:1).
Each individual ratio only has two gears- one may be 8:1,
another may be 5:1, but the final ratio will be 40:1.
These gearboxes are used in the Andymark NeveRest Classic series and
goBILDA’s 5201 series motors, as well as some REV HD Hex Motors
(gearbox types are denoted on REV’s website very clearly).
Due to the nature of how these gearboxes are built,
each reduction only has a few teeth from each gear engaged,
and those teeth carry the entire load of the gearbox.
It’s easy to damage a spur gearbox from shock load,
and if anything happens to one of the gears,
the gearbox will stop functioning.
**We do not recommend using spur gearboxes on high-load applications such as
drivetrains or arms.
Instead, use planetary gearboxes**.

.. figure:: images/motor-hardware/spur-gearbox.jpg
    :alt: An example spur gearbox

    Example of a spur gearbox.
    Note how all gears mesh with only one other gear.

Advantages of Spur Gearboxes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Cost.
Generally, spur gearboxes are cheaper than planetary gearboxes.
However, in FTC that price change is often minimal.
A 20:1 planetary gearbox from Andymark is only $2 more than a spur 40:1
(used 40:1 for cost comparison because there is a lack of overlap in gear
ratios between planetary and spur gearboxes from vendors).

Spur gearboxes from Andymark NeveRest Classic motors,
the REV HD Hex 40:1 Spur motor,
and goBilda 5201 Series Yellow Jacket Spur Gear Motors.
The gears in these gearboxes, while not interchangeable,
are very comparable and practically indistinguishable in performance
(when they are the same reduction).
The main thing to consider here is your **desired reduction,
your desired motor connections, and your desired output shaft type**.

* goBILDA’s 5201 series spur gearboxes are much cheaper than either REV’s or
  Andymark’s; whether that’s a good or bad thing is up to you.
  They utilize the rather uncommon (in the FTC world) bullet connection for
  power.
  The output shaft is a 6mm D-shaft.
* REV HD Hex Planetary 40:1 motor - This motor comes only in a 40:1 ratio,
  but does use the same connections (JST VH) as the REV Expansion and
  Control hub for power which means no adapter cables.
  The output shaft is a 5mm hex shaft. REV UltraHex has a 5mm hex bore running
  through the middle of a 1/2” hex shaft, which makes adapting this motor to
  any length of Ultrahex, and by extension, 1/2” hex shaft, very easy.
* Andymark NeveRest Classic motors come in a few different ratios,
  which are 40:1 and 60:1. The output shaft is a 6mm D-shaft,
  and like all NeveRest motors use the Anderson Power Pole to connect to power.
  This connector is perhaps the most robust of the ones listed here.

Planetary Gearboxes
-------------------
Planetary gearboxes use a more complex system of gears to achieve a robust
reduction in a compact space.
In automotive engineering, planetary gear sets can achieve a few different
ratios without changing gear size, but all planetary gearboxes that you will
see in FTC only achieve one gear ratio.
Planetary gearboxes are used in the Andymark Orbital series,
some REV HD Hex Planetary and UltraPlanetary Motors
(gearbox types are denoted on REV’s website very clearly),
and goBILDA’s wide selection of planetary gear motors.
Additionally, AndyMark sells a few aftermarket planetary gearboxes called
NeveRest Sport and 57 Sport,
and VEXpro sells the customizable VersaPlanetary gearbox.
As you can see from the graphic below, there are more teeth meshing per stage
than in the spur gearbox.

.. figure:: images/motor-hardware/planetary-gearbox.png
    :alt: A planetary gearbox diagram

    Example of a planetary gearbox stage.
    Note how the sun gear meshes with >1 gear.

Advantages of Planetary Gearboxes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* Backlash is lower than spur gearbox equivalents. Backlash is defined as the
  clearance or lost motion caused by gaps between parts.
  This can easily be explained through putting a wheel or gear on a motor shaft
  and lightly rotating it.
  The part should be able to wiggle around a little without having considerable
  force imparted on it.
  This is caused because it is impossible for the gear teeth inside the gearbox
  to mesh perfectly, and is the same for chain and sprockets,
  or any other form of power transmission.
  However, planetary gearboxes have less backlash as they have less stages of
  gears.
* Efficiency is better than spur gearboxes. A typical two-stage spur gearbox is
  about 85% efficient,
  whereas most two stage planetary gearboxes are 94% efficient.
* Load capacity is higher for planetary gearboxes.
  This is due to having multiple teeth engaged per stage,
  which spreads the load.
  **This means planetary gearboxes will not break as easily when used in
  high-load applications such as drivetrains**.

Available Planetary Gearboxes and Motors
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Standard planetary gearboxes include Andymark NeveRest Orbital motors,
REV 20:1 Planetary motor, and
goBILDA’s 5202 Series Yellow Jacket Planetary Gear Motors.

Any of these “standard” gearboxes are more robust than the “regular” spur
gearboxes.
Like the spur gearboxes, the gears in these gearboxes,
while not interchangeable, are very comparable in terms of robustness.
Once again, the main thing to consider here is your **desired reduction,
your desired motor connections, and your desired output shaft type**.

* goBILDA has, by far, the most varied selection of gearbox ratios with too
  many to list here, but utilize the rather uncommon (in the FTC world)
  bullet connection for power.
  The output shaft is a 6mm D-shaft.
* REV HD Hex Planetary motor - This motor comes only in a 20:1 ratio,
  but uses the same connections (JST-VH) as the REV Expansion and Control hub
  for power which means no adapter cables. The output shaft is a 5mm hex shaft.
  REV Ultrahex has a 5mm hex bore running through the middle of a 1/2” hex
  shaft, which makes adapting this motor to any length of Ultrahex,
  and by extension, 1/2” hex shaft very easy.
  The ratio of HD Hex is 20:1.
* Andymark NeveRest Orbital motors come in two ratios, which are 3.7:1 and
  20:1.
  The output shaft is a 6mm D-shaft,
  and like all NeveRest motors use the Anderson Power Pole to connect to power.
  This connector is perhaps the most robust of the ones listed here.

High-end planetary gearboxes include Andymark NeveRest Sport and VersaPlanetary
gearboxes, which can be quite expensive.
However, the REV UltraPlanetary gearbox is a very affordable kit for new teams.

* REV UltraPlanetary gearbox - The UltraPlanetary is a customizable planetary
  gearbox that is designed for FTC. The three gearbox options are 3:1, 4:1,
  and 5:1, and can be mix & matched to create a custom ratio.
  It is possible to use from one to three gearboxes for a minimum ratio of 3:1
  and maximum.
  The UltraPlanetary was intended to give teams the maximum customization
  without the typical limiting factor - high cost.
  The total cost for the three stage gearbox and motor is $36 -
  a very affordable price, given that most spur gearbox motors are in the ~30
  range.
  In addition, the UltraPlanetary has a female 5mm hex output shaft which
  allows teams to customize the shaft length.
  The UltraPlanetary is a great option for teams as it allows for
  customizability and very good value.
* Andymark NeveRest Sport gearboxes -
  These gearboxes were designed to be more robust than the gearboxes found on
  Andymark NeveRest motors.
  The NeveRest sport gearboxes can handle larger shock loads,
  and can provide a larger reduction with options up to 256:1.
  These gearboxes are relatively expensive,
  but still not the most expensive gearbox you can use in FTC,
  with prices ranging from $46.00 for the 4:1 reduction to $77.50 for the 256:1
  reduction.
  There are no motors included with the gearbox,
  you will need a bare NeveRest motor, REV HD Hex motor, or goBilda motor to
  attach to the gearbox.
  The selection should be based only on which connection type you like the most
  (powerpole vs. JST VH vs. 3.5mm bullet) for power.
* VersaPlanetary gearboxes -
  These planetary gearboxes were designed for FRC use and can be very expensive
  (upwards of $80 for a 40:1 ratio) but because they were designed for such
  heavy use the VersaPlanetary is arguably the most durable gearbox you can use
  in FTC.
  If you somehow manage you break one of the components of the gearbox,
  they are very easy to repair.
  Unlike other gearboxes, almost every part of the gearbox is replaceable and
  able to be bought by itself.
  Every other gearbox on this list would require you to buy a whole new gearbox
  if one part of it breaks. In addition to that, you can disassemble the
  gearbox from the motor-side of the gearbox,
  meaning in the event that something breaks,
  you don’t have to remove the gearbox from the plate it’s attached to to be
  able to switch that part out.
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

Choosing the right gearbox
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
