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
for `software </software/odometry.html>`_, but in order
to produce accurate results, teams need to design
hardware that can be used as the sensors for localization.

Encoders
=================
A lot of the localization done in software relies on readings
from encoders.
`Encoders </hardware-basics/motor-guide/wiring-mounting-motors.html>`_
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
