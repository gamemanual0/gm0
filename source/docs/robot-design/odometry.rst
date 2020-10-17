=============
Odometry
=============

.. warning::
    This is a very niche aspect of design in FTC.
    Generally it is something done by more experienced
    teams who have had time to repeatedly test their
    designs and mechanisms with software during
    the off-season.

Odometry is a form of localization that uses data
from sensors like encoders. Localization is a
means for being able to locate the position
of the bot at some point in time. This is useful
for `software <../software/odometry.html>`_, but in order
to produce accurate results, teams need to design
hardware that can be used as the sensors for localization.

Encoders
=================
A lot of the localization done in software relies on readings
from encoders.
`Encoders
<../hardware-basics/motor-guide/wiring-mounting-motors.html#encoders>`_
are sensors that track "counts" or "ticks," which are values
that represent a certain amount of a rotation.
Different encoders might have a different number of counts
per revolution, or CPR (sometimes also called ticks per rev).
The greater the number of counts, the more accurate the data.
Encoders are plugged into the JST-PH ports in the REV hubs.
These encoders can either be built-in to the motors or external.
External encoders will still need to be plugged into an encoder
port but are not related to the motor in that port. Through software,
we can use the motor object to determine the position of the
encoder. This should be done with motors that do not use
encoders. If you're using dead wheels, you will not need the drive
motor encoder ports, so those are potential ports you might want
to use.

---------------------
Different Encoders
---------------------
There are really only two good options for odometry,
specifically deadwheels. Otherwise you will want to just
use the encoders that come with the motors you are using
for the drivetrain if instead you would rather utilize
the drive encoders (which is not recommended).

REV Through-Bore
---------------------
Often short-handed to "REV-coders" or "revcoders,"
the `REV Through-Bore encoders <https://www.revrobotics.com/rev-11-1271/>`_
is the option that has gained significant traction in
the FTC community for odometry (as well as FRC) because
of its absurd counts per revolution: 8192.

Some reasons teams might want to consider using the
revcoders for their odometry are:

* It's magnetic and won't break easily
* Cheap
* Large CPR
* Easy wiring

However, there will be velocity overflow if not handled properly.
Due to the high tick count, the velocity of the
encoder can result in integer overflow due to the REV Hub bus
using 16-bit signed values for sensor data.

S4T
-------------
The `S4T <https://www.usdigital.com/products/encoders/incremental/shaft/S4T>`_
miniature shaft encoder is another option for FTC teams
to use on their odometry. A team might want to use these
encoders for the sake of packaging, which is the amount of
space the odometry
sensor hardware (odometers, a.k.a. odometry pods) takes up.

However there are several disadvantages to the S4T
when compared to the through-bore encoder:

* Lower CPR
* More expensive
* Less durable

Unlike the revcoders which are much easier to set up initially,
to get the maximum lifetime out of S4Ts, you need gears
to offload the strain put on the encoder.

---------------------------------
Plugging in the Encoders
---------------------------------
As we said before, the encoders need to be plugged into
the JST-PH ports on your REV Hub.

.. figure:: images/odometry/encoder-ports-exh.png
    :alt: The encoder ports on the REV Hub are located
          right next to the motor power ports

As a result, your odometer placement is important
for wire management.

Design
=================
One of the great revcoder designs out there is the
one from `open odometry <https://openodometry.weebly.com/>`_.
They are compact and can fit in a goBILDA channel.
