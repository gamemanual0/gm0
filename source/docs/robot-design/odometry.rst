Odometry
========

.. warning:: This is a very niche aspect of design in FTC. Generally it is something done by more experienced teams who have had time to repeatedly test their designs and mechanisms with software during the off-season.

Odometry is a form of localization that uses data from sensors like encoders. Localization is a means for being able to locate the position of the bot at some point in time. This is useful for :doc:`software <../software/odometry>`, but in order to produce accurate results, teams need to design hardware that can be used as the sensors for localization.

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
--------

A lot of the localization done in software relies on readings from encoders. :ref:`encoders` are sensors that track "counts" or "ticks," which are values that represent a certain amount of a rotation. Different encoders might have a different number of counts per revolution, or CPR (sometimes also called ticks per rev). The greater the number of counts, the more accurate the data.

Encoders are plugged into the JST-PH ports in the REV hubs. These encoders can either be built-in to the motors or external. External encoders will still need to be plugged into an encoder port but are not related to the motor in that port. Through software, we can use the motor object to determine the position of the encoder. This should be done with motors that do not use encoders. If you're using dead wheels, you will not need the drive motor encoder ports, so those are potential ports you might want to use.

There are really only two good options for odometry, specifically deadwheels. Otherwise you will want to just use the encoders that come with the motors you are using for the drivetrain if instead you would rather utilize the drive encoders (which is not recommended).

REV Through-Bore
^^^^^^^^^^^^^^^^

Often short-handed to "REV-coders" or "revcoders," the `REV Through-Bore encoders <https://www.revrobotics.com/rev-11-1271/>`_ is the option that has gained significant traction in the FTC community for odometry is because of how easy it is to set up and design with. Unlike previously used encoders like the E8T, the through-bore does not have a sliding disc.

Some reasons teams might want to consider using the revcoders for their odometry are:

- It's magnetic and won't break easily
- Cheap
- Large CPR
- Easy wiring

However, there will be velocity overflow if not handled properly. Due to the high tick count, the velocity of the encoder can result in integer overflow due to the REV Hub bus using 16-bit signed values for sensor data.

S4T
^^^

The `S4T <https://www.usdigital.com/products/encoders/incremental/shaft/S4T>`_ miniature shaft encoder is another option for FTC teams to use on their odometry. A team might want to use these encoders for the sake of packaging, which is the amount of space the odometry sensor hardware (odometers, a.k.a. odometry pods) takes up.

However there are several disadvantages to the S4T when compared to the through-bore encoder:

- More expensive
- Less durable

Unlike the revcoders which are much easier to set up initially, to get the maximum lifetime out of S4Ts, you need gears to offload the strain put on the encoder.

Design
------

One of the great revcoder designs out there is the one from `open odometry <https://openodometry.weebly.com/>`_. They are compact and can fit in a goBILDA channel. The goal of an odometer design is to remain as compact as possible while ensuring as much connection with the ground. The best way to do this have the pod be able to pivot on an axle and use tensioning to keep it in contact with the field.

Spring Tensioning
^^^^^^^^^^^^^^^^^

Spring tensioning is important for making sure there isn't a lot of slipping or skidding of the pods/odometers.

.. figure:: images/odometry/spring-tensioned-pod.png
   :width: 33em

   Image of FTC 18275 (SubZero)'s spring tensioning
