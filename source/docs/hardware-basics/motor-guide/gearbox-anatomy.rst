=================
Gearbox Internals
=================
Fundamentally, a gearbox is just a collection of gears and an enclosure that
causes those gears to connect. Gearboxes have an output ratio,
the final gear ratio between the motor input and the final output shaft.
Gear ratios are further explained in the glossary.

In FTC, gearboxes may be more common than you think -
every motor has a gearbox attached to it.
These gearboxes are one of the following two types: spur or planetary.
Below we give a detailed analysis of each of these gearbox types.
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
  power. However, these are now discontinued.
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
