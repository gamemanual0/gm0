======
Wiring
======
Wiring is extremely important in FTC, as wires are crucial to the operation of
the robot.
It is highly discouraged for teams to overlook wiring,
but many new teams seems to disregard it or throw it to the very last moment.
While tedious and sometimes no fun,
wiring can mean the difference between a win and loss.

Connectors and Wires
====================
There are many types of connectors for use in FTC.
Here are the most common connectors you will find on an FTC robot.

* Powerpoles

    .. image:: images/wiring/powerpole-connector.png
        :alt: A powerpole connector
        :width: 200px

    * Used for module power
    * Used for motor power
* XT30

    .. image:: images/wiring/xt30-connector.png
        :alt: A XT30 connector
        :width: 200px

    * Used for module power
* JST-VH

    .. image:: images/wiring/jst-vh-connector.png
        :alt: A JST-VH connector
        :width: 200px

    * Used for motor power
* Dupont 0.1”

    .. image:: images/wiring/dupont-connector.png
        :alt: A Dupont 0.1" connector
        :width: 200px

    * Used for sensors
    * Used for servo wires
* JST-PH and JST-XH
    .. image:: images/wiring/jst-sensor-connectors.png
        :alt: JST-PH and JST-XH connectors
        :width: 200px

    * Used for sensors
* Tamiya
    .. image:: images/wiring/tamiya-connector.png
        :alt: A Tamiya connector
        :width: 200px

    .. warning::
        Do not use these connectors!
        The metal connectors are fragile and will lead to random disconnects.

    * Used for module power

FTC Wiring Guide
================
FIRST has created a wiring guide to help teams with tasks like crimping cables,
soldering connections, and ESD mitigation that won’t be covered in this guide.
Once you read up on electronics and wiring here,
look at the FTC Wiring Guide for the best practices and more tips & tricks.
In addition, FIRST has written an ESD mitigation whitepaper that is worth
taking a look at.

`Robot Wiring Guide <https://www.firstinspires.org/sites/default/files/uploads/resource_library/ftc/robot-wiring-guide.pdf>`_

`ESD Mitigation Whitepaper <https://www.firstinspires.org/sites/default/files/uploads/resource_library/ftc/analysis-esd-mitigation-echin.pdf>`_

General Advice
--------------
* **Always label wires! When bunched up, you may not know which wire goes into
  which port**.
* **Treat every wire connection as a point of failure**.
  Therefore, use electrical tape to tape up and insulate connections and
  utilize strain relief as much as possible.
* **Strain relief** should be used everywhere possible.
  It is highly recommended for teams to use products like the REV USB Retention
  Mount, as well as 3D printing strain relief methods for devices such as the
  Expansion Hub and robot controller phones.
* **DO NOT solder a wire before crimping it**.
  Solder can "creep" and losing connection is possible,
  possibly leading to fire.
* Keep all wire runs as short as possible to prevent entanglement and improve
  wire management.
* When using data/sensor cables, keep them away from motors.
  This will reduce electromagnetic interference (EMI).
  Add a ferrite bead if possible.
* Crimped connectors are generally better than soldered connectors,
  as solder joints can break easier than a crimped connection.
* Keep wires tucked away from moving mechanisms, and ensure that you will not
  be at risk of a mechanism snagging a wire.
  This is a proper application of materials such as acrylic,
  which allow drivers to see inside the robot while keeping wires out of the
  way of other robots/game pieces.
  It is advised for teams to purchase removable velcro ties or cable ties to
  aid with cable management.
* For power wires, lower gauge (larger size) wires are preferable.
  This means a lower resistance across the wire and higher power throughput.
  This is negligible for data wires, however.
* Small wires and cables are fragile.
  Treat them as such, and don’t put them in an area where they will constantly
  be hit by another object.
  Larger power cables can take much more abuse.
* Ensure that your wires are kept out of pinch points where another mechanism
  could sandwich the wire.
  This is especially important in arms or mechanisms that are hinged.

.. figure:: images/wiring/bad-wiring.png
    :alt: An example of poor wiring

    Bad example of wiring!

.. image:: images/wiring/731-wiring-1.png
    :alt: An example of good wiring by 731

.. figure:: images/wiring/731-wiring-2.png
    :alt: An example of good wiring by 731

    Good example of wiring by 731 Wannabee Strange, Rover Ruckus


.. figure:: images/wiring/8417-wiring.png
    :alt: An example of good wiring by 8417

    Good example of wiring by 8417 ‘Lectric Legends


.. figure:: images/wiring/7244-wiring.png
    :alt: An example of good wiring by 7244

    Good example of wiring by 7244 Out of the Box Robotics

When wiring, also take the time to plan out a specific layout for your wires
and how they will run throughout the robot.
Take the time to lay out something like an electronics panel if necessary!
When building the robot, devote adequate space to wiring.
This could mean mounting a PVC pipe and running wires from the back end of the
robot through it, or simply using velcro or zipties.
**It is also recommended for electronics to be mounted on a nonconductive
material such as wood to prevent ESD**.

.. figure:: images/wiring/3736-electronics-on-plastic.png
    :alt: An example of good wiring on a non-conductive surface by 3736

    3736 Serious Business

Specific Recommendations
------------------------
Module Power
^^^^^^^^^^^^
Be aware, XT30 connectors can wear out significantly faster than PowerPole
connectors.
Additionally, because XT30 connectors are soldered, they can break much easier
than PowerPole connections.

Cabling for module power should be at least 14awg, if not 12awg.
Keep in mind that it must be stranded, not solid, wire.

Motor Power
^^^^^^^^^^^
Cabling for motor power should be between 16awg and 12awg.
Again, stranded, not solid, wire.

Some motors (like the REV HD Hex and Core Hex) will have removable power
connectors on the back, while other motors (like the Andymark NeveRests)
will have a cable permanently soldered on the back.
It is much more convenient to have a connector on the back, or failing that,
have a very short plug on the back of the motor.
Once your wires are run and secured, taking them out won't be fun.

Servo Wires
^^^^^^^^^^^
Using heavy-duty extension wires are recommended.

Tape the connections between extension wires and servo wires with electrical
tape.
This is as the connections can become loose over time and are easy to pull out.

The VEX Motor Controller 29 has the wrong gender connector on the 3-pin end.
You are required to either use an adapter cable, or add the right connector to
the wires (recommended).
**Be sure to protect the MC29, as it is fragile and prone to failure if it
takes impact from another object**.

USB
^^^
USB is generally a strong connector, but is prone to wearing out over time.
Refrain from plugging/unplugging these cables more than necessary,
especially on the RC/DS phones.

USB loves strain relief.
To keep disconnects low, tie down cables to leave as little loose cabling on
the robot as possible.

Sensor Wires/Encoder Wires
^^^^^^^^^^^^^^^^^^^^^^^^^^
Sensor wires and their connectors can be incredibly fragile.
Use caution when routing,
and keep slack on the connector end when adding strain relief to the cable.

The JST data connectors on the REV Expansion Hub and Control Hub have +5v, GND,
and two data pins.
If you are using a digital or analog sensor that does not use I2C, you can use
a Y cable that gives two sensors off of one port.

Miscellaneous
=============
REV Grounding Strap
    The REV Grounding Strap is currently the only legal way to ground your
    robot.
    Attach the end to the metal part of your robot frame, and plug the XT30
    connector end into a free XT30 port on your robot.
Power distribution blocks/panels
    The REV Power Distribution Block allows teams to have more than four XT30
    connectors (2 on each Expansion Hub).
    The block can be connected to the Servo Power Module to boost voltage for
    servos or provide continuous rotation for the VEX 393 EDR.
Dryer sheet
    Dryer sheets can be used to wipe down the robot after every match in order
    to reduce static buildup.
    This is not directly recommended by FIRST or any vendor,
    but our empirical evidence throughout the years suggests that it helps,
    or at the very least, can’t hurt to do so.
Staticide/static spray
    Staticide is a spray that helps to keep static off of the robot.
    Please be sure to spray your robot before an event and not during the
    event.
Common causes of static
    * Every single contact point of your robot to the floor will increase the
      amount of static buildup.
    * Too much turning scrub (or traction when wheels try to turn).
      This is possible if a 4WD or 6WD (no center drop) with all traction
      wheels is used.
    * A conductive part dragging along the ground.
      For example, try not to have an intake touch the ground when the robot is
      moving as much as possible.
      Foam wheels and foam rollers are a common culprit.

