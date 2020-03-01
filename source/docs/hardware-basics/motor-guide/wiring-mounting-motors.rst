=========================
Motor Wiring And Mounting
=========================

Power Connections
-----------------
Depending on the vendor, the motors can come with one of the following
connectors:

* JST VH  connector (REV motors)
* Anderson PowerPole (AndyMark's NeveRest)
* 3.5mm Bullet connector (goBILDA)

JST VH is probably easiest to use, as it is the same connector used by REV
Expansion Hub. PowerPoles are very reliable and sturdy but somewhat bulky.
Bullet connectors are very compact, making it easy to route the cable through
openings, but can disconnect if someone pulls on the wire, so you need to be
careful with them.

Since REV Hubs use JST VH connectors, to connect motor with
PowerPole  or bullet connectors you need adapters, which you can buy from
REV Robotics and goBILDA.

You can extend or shorten motor power cables by soldering additional length
of cable. This is legal as long as you use 18 gauge or thicker cables.

For more tips on wiring the robot, see
:doc:`../../power-and-electronics/wiring`.


Encoders
--------
If using encoders, you need to connect them to the REV hub by a 4-wire cable.
REV Hub uses 4-pin JST PH connector for encoder ports. REV motors also use JST
PH encoder ports, so you can connect them to the hub by JST PH 4-wire cable,
available from REV Robotics.

goBILDA motors use JST XH 4-pin encoder  port (note the difference: XH vs PH),
so to connect them, you need a JST PH to JST XH cable, available from AndyMark
or goBILDA.

AndyMark also use JST XH encoder port; however, an additional problem is that
encoders of these motors require 5v power, whereas encoder port of REV hub only
provides 3.3v. Thus, it is recommended that you connect them user level
shifters, available from REV Robotics.  For details please check
`REV Expansion Hub Guide <http://www.revrobotics.com/content/docs/REV-31-1153-GS.pdf>`_, Section 4.2.

Note that encoder cables are very fragile. Take care to protect them!

Mounting Motors
---------------
There are two ways to mount a motor: using a clamping mount (such as
`32mm goBILDA clamping mount <https://www.gobilda.com/1400-series-1-side-2-post-clamping-mount-32mm-bore/>`_)
or face mounting, using threaded holes in the front face of the gearbox.
Each method has its advantages, so choose whatever works for your design. Note
that the pattern of face mounting holes is different for different vendors
(e.g., goBILDA uses 4 M4 holes in a square with side 16 mm, whereas
AndyMark classic motors use 6 M3 holes on a 31 mm diameter circle), so face
mounting, say, NeveRest motors to goBILDA parts requires use of special
adapters. Similarly, gearbox diameter also varies between motors, so when
choosing a clamping hub, make sure to use the right diameter.
