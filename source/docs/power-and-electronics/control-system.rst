.. include:: <isonum.txt>

Control Systems
===============

The FTC control system is based on using Android phones as a ":term:`Robot Controller`" and a ":term:`Driver Station`." The ":term:`Robot Controller`" phone is mounted on the robot and connected by a USB cable to a special "Hub", which in turn is connected to motors, servos, and sensors.

The two major manufacturers of control hubs for FTC are Modern Robotics and REV; however, nearly all teams are shifting over to REV because it is cheaper, simpler, and more reliable.

More information about the FTC Control system can be found below:

- `Official control system Wiki on GitHub <https://github.com/FIRST-Tech-Challenge/FtcRobotController/wiki>`_
- `REV Control System Documentation <https://docs.revrobotics.com/duo-control/>`_
- `Official troubleshooting guide <https://www.firstinspires.org/sites/default/files/uploads/resource_library/ftc/control-system-troubleshooting-guide.pdf>`_

There are two possible control systems that can be run on an FTC robot legally:

- :term:`RC Phone <Robot Controller>` + REV Expansion Hub(s)
- REV Control Hub + REV Expansion Hub as it is less expensive and more reliable than the older Modern Robotics

RC Phone + REV Expansion Hub(s)
-------------------------------

.. warning:: It is of vital importance to update the firmware on REV Expansion hubs to at least version 1.8.2. It includes better protection against disconnects and improves program performance. See the `REV Expansion Hub firmware update docs`_.

This is the standard control system for teams starting out in FTC. The REV Expansion Hub is reliable, as long as proper strain relief and wiring is carried out. This includes the :term:`USB Retention Mount`, as well as 3D printing :term:`XT30` stress relief mounts.

The Expansion Hub connects to the :term:`Robot Controller` phone through the mini USB port, and the :term:`RC <Robot Controller>` phone is linked to the DS (:term:`Driver Station`) phone through WiFi Direct. For more information on setting up the Expansion Hub and configuring the robot, head to `REV Robotics' Technical Resources Expansion Hub Guide <https://docs.revrobotics.com/duo-control/legacy/expansion-hub-gs>`_.

- `USB Retention Mount <https://www.revrobotics.com/rev-41-1214/>`_
- `XT30 Stress Relief <https://www.thingiverse.com/thing:2887045>`_
- `REV Robotics Technical Resources <https://www.revrobotics.com/resources/>`_

.. image:: images/control-system/exh-wiring-diagram.jpg
   :alt: A diagram of the RC Phone + Expansion Hub(s) control system
   :width: 100%

REV Control Hub + REV Expansion Hub
-----------------------------------

.. warning:: It is of vital importance to update the firmware on REV Expansion hubs to at least version 1.8.2. It includes better protection against disconnects and improves program performance. See the `REV Expansion Hub firmware update docs`_.

Note: The Control Hub will be legal for all teams from the 2020-2021 FTC season onwards. In 2019-2020, the Control Hub was not legal for all teams as it was undergoing a pilot program.

.. image:: images/control-system/ch-wiring-diagram.png
   :alt: A diagram of the Control Hub + Expansion Hub control system
   :width: 100%

.. _REV Expansion Hub firmware update docs: https://docs.revrobotics.com/duo-control/managing-the-control-system/updating-firmware
