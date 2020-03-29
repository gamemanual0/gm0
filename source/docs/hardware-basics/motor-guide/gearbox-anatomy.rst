=================
Gearbox Internals
=================
Fundamentally, a gearbox is just a collection of gears and an enclosure that
connects them. Gearboxes have an **output ratio**,
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
goBILDA’s 5201 series motors, as well as REV HD Hex Motors
Due to the nature of how these gearboxes are built,
each reduction only has a few teeth from each gear engaged,
and those teeth carry the entire load of the gearbox.
It’s easy to damage a spur gearbox from shock load,
and if one gear breaks,
the entire gearbox will stop functioning.

..  tip:: Using spur gearboxes on high-load applications such as
  drivetrains or arms is not recommended.
  Instead, use planetary gearboxes.

.. figure:: images/motor-hardware/spur-gearbox.jpg
    :alt: An example spur gearbox

    Example of a spur gearbox.
    Note how all gears mesh with only one other gear.

Advantages of Spur Gearboxes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Generally, spur gearboxes are cheaper than planetary gearboxes.
However, in FTC that price change is often minimal.
A 20:1 planetary gearbox from REV is only $4 more than a spur 20:1

Spur gearboxes from different vendors are not interchangeable.
However, they are comparable and practically indistinguishable in performance.
The main thing to consider here is your **desired reduction,
your desired motor connections, and your desired output shaft type**.

Planetary Gearboxes
-------------------
Planetary gearboxes use a more complex system of gears to achieve a robust
reduction in a compact space.
In automotive engineering, planetary gear sets can achieve a few different
ratios without changing gear size, but all planetary gearboxes that you will
see in FTC only achieve one gear ratio.
Planetary gearboxes are used in the Andymark Orbital series,
some REV HD Hex Planetary and UltraPlanetary Motors
and goBILDA’s wide selection of planetary gear motors.
Additionally, AndyMark sells a few aftermarket planetary gearboxes called
NeveRest Sport and 57 Sport,
and VEXpro sells the customizable VersaPlanetary gearbox.
As you can see from the graphic below, there are more teeth meshing per stage
than in the spur gearbox.

.. figure:: images/motor-hardware/planetary-gearbox.png
    :alt: A planetary gearbox diagram

    Example of a planetary gearbox stage.
    Note how the sun gear meshes with more than one gear.

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
