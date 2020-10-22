========
Odometry
========

.. warning::
    This is a very niche aspect of design in FTC.
    Generally it is something done by more experienced
    teams who have had time to repeatedly test their
    designs and mechanisms with software during
    the off-season.

Odometry refers to the use of motion sensors for localization.
Localization is a means for being able to locate the position
of the bot at some point in time. Localization is crucial in
path following and advanced autonomous modes as one needs to
know where they are to know what movements they must make to
reach a desired destination.
`Localization software <../software/odometry.html>`_ plays a
major role in odometry; however, in order
to produce accurate results, reliable and accurate hardware
design is a necessity.

The term dead wheels, tracking wheels, and odometry are often
conflated in the FTC community. However, there are a
few key differences one must keep in mind. Odometry refers to
the general use of motion sensors for localization purposes.

The simplest form of odometry is drive encoder localization.
This is the use of encoders measuring the rotation of motors
that power the drive train. One is able to read the encoder
data and feed it through the kinematic equation for that
specific drive train to derive the body's velocity. Drive
encoder localization is generally quite simple and easy to setup as
almost all of the FTC legal motors have built-in encoders. Getting
drive encoder localization setup is simply a matter of plugging
in wires, no additional hardware needed.

Many teams in the community have converged on a unique solution that
isn't seen very much outside of FTC: the use of "dead wheels,"
"tracking wheels," or "odometry pods" (these terms are all synonymous).
These refer to small "dead" or non-driven (not powered by a motor)
wheels attached to an `encoder sensor <#encoders>`_. Two or three
dead wheel pods are often sprung to the ground to ensure accurate
tracking. The two-wheel design utilizes one parallel and one
perpendicular pod (parallel and perpendicular with respect to the
drive wheel axis), measuring x and y movement respectively. Change
in heading is measured via a gyroscope. The three-wheel design
utilizes two parallel and one perpendicular pod, measuring x and y
movement respectively. However, this design forgoes the gyroscope
and instead measures heading via the difference with the two parallel
wheels. This is often more accurate in the context of the FTC control
system because the BNO055 IMU (used for the gyroscope in the two-wheel
design) utilizes I2C which is slower than the rest of the I/O
on the REV Hub and cannot be bulk read. These two issues lead to minute
drift issues which can compound over time, thus leading to a more
inaccurate localization system when using the two-wheel design.

However, designing consistently accurate dead wheels proves
to be a difficult design challenges doing so is often quite pricey. A
set of three dead wheels will cost a minimum of $100 for the encoders
alone, prior to any hardware.

Let's go through the advantages and disadvantages of each system.

Drive Encoder Localization
==========================
* Pros:

    * Cheap (the motors you're using most likely already have
      encoders built in)
    * Accessible
    * Very little configuration necessary
* Cons:

    * Drive encoder localization on mecanum drive can be quite inaccurate due
      to lack on traction on mecanum wheels.
    * Will drift on high acceleration on mecanum drive. Accuracy will be good
      enough for basic autonomous modes if acceleration is limited

Two-Wheel Odometry Pods
=======================
* Pros:

    * Cheaper than 3-wheel design
    * Pretty good accuracy
    * No tuning of the heading necessary
* Cons:

    * Subject to more drift than the 3-wheel design

Three-Wheel Odometry Pods
=========================
* Pros:

    * Relatively accurate tracking. Great accuracy in a 30-second
      autonomous mode
* Cons:

    * Quite pricey
    * Tuning of the heading is very important

Encoders
========
`Encoders
<../hardware-basics/motor-guide/wiring-mounting-motors.html#encoders>`_
are sensors that track "counts" or "ticks," which are values
that represent a certain amount of a rotation.
Different encoders might have a different number of counts
per revolution, or CPR (sometimes also called ticks per rev).
The greater the number of counts, the more precise the data.

Encoders are plugged into the JST-PH ports in the REV hubs.
These encoders can either be built-in to the motors or external.
External encoders will still need to be plugged into an encoder
port but are not related to the motor in that port. Through software,
we can use the motor object to determine the position of the
encoder. This should be done with motors that do not use
encoders. If you're using dead wheels, you will not need the drive
motor encoder ports, so those are potential ports you might want
to use.

REV Through-Bore
----------------
Often short-handed to "REV-coders" or "revcoders,"
the `REV Through-Bore encoders <https://www.revrobotics.com/rev-11-1271/>`_
has quickly become the de facto option the FTC community. The REV
encoders have gained such a reputation due to its relative affordability,
much improved reliability, and ease of use. The through-bore design
proves to be a *significant* improvement over previous optical disc
encoder designs. Optical disc encoders are very fragile, prone to
scratching, and are much less tolerant to design flaws.

**Advantages:**

    * Through-bore design is very robust
    * Relatively cheap
    * High CPR
    * Easy wiring

**Disadvantages:**

    * Quite large relative to other encoders. May be challenging to
      create a compact design

.. note:: The Through-Bore encoders have a very high CPR (8k). The REV
          Hub stores velocity in a 16-bit signed integer. This means it can
          store a maximum value of 2^15 (which is 32768). Thus, it only takes
          4 rotations a second (32k / 8k = 4) for the velocity value on the
          REV Hub to experience an `integer overflow <https://en.wikipedia.org/wiki/Integer_overflow?oldformat=true>`_.
          This is only a concern when dealing with motion profiling. The
          existing tools (Road Runner and FTCLib) have mechanisms for dealing
          with this issue.

S4T
---
The `S4T <https://www.usdigital.com/products/encoders/incremental/shaft/S4T>`_
miniature shaft encoder is another viable option used in dead wheel designs.
These encoders are very small and may reduce the footprint of your dead wheel
design significantly.

However, the S4T is quite expensive, nearly double the price of the REV
Through-Bores.

E8T (deprecated)
----------------
Once the de facto option for most FTC teams, the
`E8T <https://www.usdigital.com/products/encoders/incremental/kit/E8T>`_ optical
encoders are no longer recommended as the REV Through-Bores are a superior
option at an equivalent price. The open-hole optical disc design of these
encoders face a number of frustrating design flaws that made them very fragile
and prone to breaking. The only advantage that they have against the REV
Through-Bores are their small size.


Design
======
One of the great revcoder designs out there is the
one from `open odometry <https://openodometry.weebly.com/>`_.
They are compact and can fit in a goBILDA channel.
The goal of an odometer design is to remain as compact
as possible while ensuring as much connection with the ground.
The best way to do this have the pod be able to pivot on
an axle and use tensioning to keep it in contact with
the field.

Spring Tensioning
-----------------
For odometry, spring tensioning is the use of a spring to push odometry
modules towards the ground, either on a pivot (recommended) or linearly.
Spring tensioning is important in reducing slipping or skidding of the
pods/odometers.

.. figure:: images/odometry/spring-tensioned-pod.png
    :width: 33em

    Image of FTC 18275 (SubZero)'s spring tensioning
