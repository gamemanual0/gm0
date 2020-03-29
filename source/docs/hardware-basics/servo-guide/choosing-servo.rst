================
Choosing a Servo
================

For many  applications, you can just use one of the two most common servos
in FTC, `REV Smart Servo <http://www.revrobotics.com/rev-41-1097/>`_ or
`goBILDA Dual Mode Servo <https://www.gobilda.com/2000-series-dual-mode-servo-25-2/>`_.
However, sometimes these servos are not enough.
Here are some of servo features you need to pay attention to when selecting
a servo for your needs.

Servo Type: Regular or Continuous
---------------------------------
Servos described above, which can rotate to a given position based on PWM
input signal, are called **regular servos**. In addition, there are also
**continuous rotation** servos, which are effectively just small motors in a
servo form factor. They have no position control; instead, PWM signal is
used to control their rotation  speed.

Both REV Smart Servo and goBILDA Dual Mode servo (which are both based on
FR5311m programmable servo by Feetech) can be used as either regular or
continuous rotation servos. To switch between these two modes, you need
to use a servo programmer, available separately from REV or goBILDA.

..  caution::  Some vendors offer continuous rotation *option*
  on some servos. These options are modifications to the
  original servo made by the vendor and are illegal in FTC.
  The only legal continuous rotation servos are CR servos from the **factory**.
  If you have a seller modify a
  servo for continuous rotation, that servo is not legal.


Servo Torque And Speed
----------------------
Servo  output power is  measured in both **speed** and **torque**.
Speed (normally in seconds per 60°) refers to how fast the servo turns 60
degrees in Standard Rotation mode.
Torque (usually measured in oz-in or in kg-cm) refers to the amount of force
the servo can apply to a lever.
For reference, if you put a 1” bar on a servo,
then put a force gauge on the end, the torque rating of the servo (in oz/in)
will be measured.
As you may know, speed and torque have an inverse relationship.
Generally you can find some insanely powerful servos that are pretty slow
(slower than 0.20 s/60°) or some less powerful ones with faster ratios
(anything faster than 0.12 s/60° is considered very fast).
Finding the right servo for your application can be tough,
but a good way is trying to decide if you need more speed or torque,
and if your servo will experience shock loads or not.


Durability and Servo Gear Material
----------------------------------
The two things that threaten a servo’s longevity are the internal motor burning
out and more commonly, the gears stripping inside the servo.
A motor burning out is pretty uncommon, but it can happen under large loads for
a prolonged amount of time.
This means **you should never stall a servo against an immovable object**.

Gear stripping is a very common problem, and it is directly to the material
the gears are made from. This ranges from plastic to titanium,
so let’s go down the list, starting from the weakest.

* **Plastic**: with low power servos, these are normally okay.
  Generally used for applications in model airplanes such as ailerons.
  FTC applications include light load mechanisms which will not have direct
  contact with any game elements or the field.
* **Karbonite**: Hitec’s gear plastic is a very durable and long lasting
  plastic and is very good under long use and low load.
  Be aware that it can strip easily under the shock loads found in FTC.
* **Brass**: Brass gears are stronger than plastics but also suffer greatly
  when faced with shock loads in FTC, like intake wrists and deposit buckets.
  It’s found on slightly higher end servos in the $25-30 range,
  such as the REV smart servo.
* **Steel**: This is where we start getting big.
  Steel gears are very durable and you’ll have a tough time stripping these.
  In general, expect to pay $40+. The best value in this category is goBILDA
  Dual mode servo (v2), which sells for $21 after team discount.
* **Titanium**: Titanium is where you get into really high end,
  virtually unbreakable servos.
  Starting from $75, they can reach over $150.


Servo Size
----------
Servos come in different sizes. Fortunately, almost all manufacturers use the
same standard set of servo sizes, ranging from sub-micro to large. The two
sizes commonly used in FTC are *standard size* (which includes REV Smart Servo
and goBILDA Dual Mode Servo) and *large size* (also known as
quarter-scale) servos. However, large servos are quite uncommon.

Note that while in general, the larger the size, the more powerful the servo,
it is not a strict rule. You can buy very powerful standard size servos -
just expect to pay more for them.


Servo Spline
------------
The output shaft of the servo is commonly called the **spline**. Most servos
have industry standard 25 tooth spline (also known as F3); in particular,
this is the spline used by REV Smart Servo and goBILDA Dual Mode servo.
However, Hitec servos using 24 tooth spline are also very popular. Please check
the spline type before you buy the servo - otherwise, your servo attachments
will not fit.

For more info about servo splines, please check https://www.servocity.com/servo-spline-info/.


Cost
----
Servos range from cheap $7 servos for light applications,
all the way up to some Hitec or Savox servos for close to $200.
By far the best bang for your buck servos out there are the Feetech dual mode
servos, which is a programmable type of servo.
This includes both the **REV SRS** (Smart Robot Servo) and
**goBILDA Dual Mode servos**.
The biggest downside to the REV SRS and the old goBILDA servos (25-1) are their
brass gears.
Coupled with high output power, this meant that stripping gears with any shock
load was commonplace.
The new goBILDA Dual Mode servos (25-2) have steel gears, but are new
and aren’t as competition tested as other servos.

The next big name in FTC Servos is Hitec,
who are a huge name in hobby servos for decades and are very well trusted.
Their low end servos are inexpensive but easily broken.

A mid-priced Hitec servo is the HS 485-HB/488-HB servo, with Karbonite gears.
While it shouldn’t be used in high load applications,
it is fine for general use such as claws or trapdoors.
485HB uses 24 tooth spline; 488 HB uses 25 tooth spline (recommended).

Where Hitec really shines is the high end market. If your budget is over $100,
you can get into some very powerful Hitec servos.
Most have titanium gears and are programmable,
so you can dial in the performance and range to exactly what you need.

The last big player in the servo market in FTC is Savox, which produces
great mid-high range servos (think $60-$100+).
They are made with titanium gears (close to bulletproof) and are **fast**.
Savox servos are mostly brushless and coreless,
so they do tend to scream a little under load,
but they’re definitely worth it if your budget allows for it.



Best Value
==========
* Low Priced (~$18)
    * HiTec 488HB
    * Futaba servos
* Medium Priced (~$25)
    * `goBILDA Dual Mode Servo (25-2) <https://www.gobilda.com/2000-series-dual-mode-servo-25-2/>`_
    * `REV Smart Servo <http://www.revrobotics.com/rev-41-1097/>`_
* Best Performance ($75+)
    * Savox titanium servos
    * Hitec titanium servos

REV and goBILDA servos can be purchased from REV and goBILDA websites
respectively. For all other servos, good source is servocity.com or Amazon.
