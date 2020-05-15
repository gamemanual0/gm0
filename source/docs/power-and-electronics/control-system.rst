===============
Control Systems
===============

The FTC control system is based on using Android phones as a “Robot Controller”
and a “Driver Station.” The “Robot Controller” phone is mounted on the robot
and connected by a USB cable to a special “Hub”, which in turn is connected to
motors, servos, and sensors.

The two major manufacturers of control hubs for  FTC are Modern Robotics and
REV; however, nearly all teams are shifting over to REV because it is cheaper,
simpler, and more reliable.

More information about the FTC Control system can be found below.

`Official control system Wiki on GitHub <https://github.com/first-tech-challenge/skystone/wiki>`_

`REV Expansion Hub Documentation <http://www.revrobotics.com/content/docs/REV-31-1153-GS.pdf>`_

`FIRST troubleshooting guide <https://www.firstinspires.org/sites/default/files/uploads/resource_library/ftc/control-system-troubleshooting-guide.pdf>`_


There are three possible control systems that can be run on an FTC robot
legally:

* RC Phone + Modern Robotics
* RC Phone + REV Expansion Hub(s)
* REV Control Hub + REV Expansion Hub

RC Phone + Modern Robotics
==========================
(Not included in the starter Electronics Kit).
Modern Robotics is quickly being replaced by REV’s control system,
as it is less expensive and more reliable than the older Modern Robotics
products.
It is very likely that you can ignore anything Modern Robotics related,
especially if your team is starting from scratch.

.. image:: images/control-system/mr-wiring-diagram.png
    :alt: A diagram of the RC Phone + Modern Robotics control system
    :width: 100%

RC Phone + REV Expansion Hub(s)
===============================

.. warning:: |firmware warning|

This is the standard control system for teams starting out in FTC.
The REV Expansion Hub is reliable, as long as proper strain relief and wiring
is carried out.
This includes the USB Retention Mount,
as well as 3D printing XT30 stress relief mounts.
The Expansion Hub connects to the Robot Controller phone through the mini USB
port, and the RC phone is linked to the DS (Driver Station) phone through WiFi
Direct.
For more information on setting up the Expansion Hub and configuring the robot,
head to REV Robotics’ Technical Resources page on their website.

* `USB Retention Mount <http://www.revrobotics.com/rev-41-1214/>`_
* `XT30 Stress Relief <https://www.thingiverse.com/thing:2887045>`_
* `REV Robotics Technical Resources <https://www.revrobotics.com/resources/>`_

.. image:: images/control-system/exh-wiring-diagram.jpg
    :alt: A diagram of the RC Phone + Expansion Hub(s) control system
    :width: 100%

REV Control Hub + REV Expansion Hub
===================================

.. warning:: |firmware warning|

**Note: The Control Hub is currently undergoing a pilot program and is only
legal for competition in specific regions throughout the US.
It is not legal for all FTC teams for the 2019-2020 season.**

.. image:: images/control-system/ch-wiring-diagram.png
    :alt: A diagram of the Control Hub + Expansion Hub control system
    :width: 100%


.. |firmware warning| replace:: It is of vital importance to update the
    firmware on REV Expansion hubs to at least version 1.8.2.
    It includes better protection against disconnects and improves program
    performance. See the `REV Expansion Hub firmware update docs`_.

.. _REV Expansion Hub firmware update docs: https://www.revrobotics.com/software/#ExpansionHubFirmware
