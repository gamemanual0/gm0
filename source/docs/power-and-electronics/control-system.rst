.. include:: <isonum.txt>

Control Systems
===============

The FTC\ |reg| control system is based around a ":term:`Robot Controller`" and a ":term:`Driver Station`". The :term:`Robot Controller` is mounted on the robot. It is either embedded within or connected to special "Hub(s)", which in turn connect to motors, servos, and sensors. The :term:`Robot Controller` is linked to the :term:`Driver Station` through WiFi or WiFi Direct.

REV Robotics is the sole manufacturer of legal FTC control system components. The REV Expansion Hub connects to motors, servos, sensors, and a :term:`Robot Controller`. A REV Control Hub has the same functionality of an Expansion Hub but with a built-in :term:`Robot Controller`.

More information about the FTC Control System can be found below:

- `Official Control System Documentation on FTC Docs <https://ftc-docs.firstinspires.org/en/latest/programming_resources/shared/control_system_intro/The-FTC-Control-System.html>`_
- `REV Control System Documentation <https://docs.revrobotics.com/duo-control/>`_
- `Official troubleshooting guide <https://www.firstinspires.org/sites/default/files/uploads/resource_library/ftc/control-system-troubleshooting-guide.pdf>`_

There are two possible control systems that can be run on an FTC robot legally:

- REV Control Hub + REV Expansion Hub
- :term:`RC Phone <Robot Controller>` + REV Expansion Hub(s)

REV Control Hub + REV Expansion Hub
-----------------------------------

.. warning:: It is of vital importance to update the firmware on REV Expansion hubs to at least version 1.8.2. It includes better protection against disconnects and improves program performance. See the `REV Expansion Hub firmware update docs`_.

This is the standard control system for teams starting out in FTC.

The Control Hub connects to the Expansion Hub through either a RS-485 connection, or a USB-A (Control Hub side) to mini-USB (Expansion Hub-side) connection. In either case, proper strain relief and cable management should be used.

For more information on setting up the Control Hub and configuring the robot, head to `REV Robotics' Technical Resources Control Hub Guide <https://docs.revrobotics.com/duo-control/control-hub-gs>`_.

.. image:: images/control-system/ch-wiring-diagram.png
   :alt: A diagram of the Control Hub + Expansion Hub control system
   :width: 100%

RC Phone + REV Expansion Hub(s)
-------------------------------

.. warning:: It is of vital importance to update the firmware on REV Expansion hubs to at least version 1.8.2. It includes better protection against disconnects and improves program performance. See the `REV Expansion Hub firmware update docs`_.

The Expansion Hub connects to the :term:`Robot Controller` phone through its mini USB port. The REV Expansion Hub is reliable, as long as proper strain relief and wiring is carried out. This includes the :term:`USB Retention Mount`, as well as 3D printing :term:`XT30` stress relief mounts.

For more information on setting up the Expansion Hub and configuring the robot, head to `REV Robotics' Technical Resources Expansion Hub Guide <https://docs.revrobotics.com/duo-control/legacy/expansion-hub-gs>`_.

- `USB Retention Mount <https://www.revrobotics.com/rev-41-1214/>`_
- `XT30 Stress Relief <https://www.thingiverse.com/thing:2887045>`_

.. image:: images/control-system/exh-wiring-diagram.jpg
   :alt: A diagram of the RC Phone + Expansion Hub(s) control system
   :width: 100%

.. _REV Expansion Hub firmware update docs: https://docs.revrobotics.com/duo-control/managing-the-control-system/updating-firmware
