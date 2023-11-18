.. include:: <isonum.txt>

Driver Station Guide
====================

The Driver Station (DS) is the way drivers interact with the robot. Through it, you configure settings, configure hardware, start and stop OpModes, use gamepads, and receive telemetry data from the robot. There are two main different choices for a Driver Station: the REV Robotics Driver Hub and an Android phone.

REV Driver Hub
--------------

The REV Robotics Driver Hub is effectively an Android phone with built in USB ports. It is purpose built for FTC\ |reg|, and has several advantages over traditional Android phones.

Advantages
^^^^^^^^^^

- Full sized USB ports do not require flimsy On The Go (micro-USB connector to USB-A port) cables
- Charges from USB-C including fast charging Power Delivery modes
- Larger screen than many Android phones
- Case is more robust then a standard Android phone

Disadvantages
^^^^^^^^^^^^^

- Price: A Driver Hub costs $250.00, whereas legal Android phones can be purchased secondhand for less
- Power Issues: Teams have reported random losses of power coming from an improperly sized battery.
- Battery Issues: Teams have reported high battery drain in sleep mode, leading to hubs dying faster then expected
- Wifi Issues: The wifi driver will occasionally crash when the device goes to sleep, requiring a device restart

.. important::
   If you purchase a Driver Hub and experience issues, refer to the `REV Driver Hub troubleshooting page <https://docs.revrobotics.com/duo-control/troubleshooting-the-control-system/driver-hub-troubleshooting>`_. The unexpected power off fix may be done preemptively to prevent a shutdown during a match.

Android Phones
--------------

As of 2023-2024, Android phones are still legal for competition use.

Advantages
^^^^^^^^^^

- Android phones can be very cheap when purchased secondhand
- Android phones generally are reliable out of the box

Disadvantages
^^^^^^^^^^^^^

- The lack of a full size USB A port means that flimsy On The Go cables must be used
- The phones themselves should be protected with a case to prevent damage

A 5 GHz phone is preferred over the standard 2.4 GHz phone to reduce ping issues. Have you ever noticed that your team's robot seems to lag at competitions only? This is because most school WiFi bands run on 2.4 GHz, which means that 2.4 GHz channels will be more crowded on competition day. This can lead to noticeably higher ping/lag which adversely affects driver and robot performance.

USB and :term:`OTG <Micro USB On The Go (OTG) Cable>` connections can be a possible source of disconnects during a match. This is generally caused by poor quality cables/adapters between the driver station and the gamepads. **It generally is worth it to purchase higher quality cables and adapters as opposed to the cheapest options.**

  `Recommended USB to OTG Cable <https://www.amazon.com/gp/product/B00YOX4JU6?pf_rd_r=PY8B4WPEQRQ80XYJCMSH&pf_rd_p=edaba0ee-c2fe-4124-9f5d-b31d6b1bfbee/>`_

.. admonition:: Term

   .. glossary::

      Micro USB On The Go (OTG) Cable
         The Micro USB OTG cable connects the :term:`Driver Station` phone with the Logitech controller that the driver uses in order to control the robot.

         It is recommended that teams purchase a couple spares due to faulty OTG cable connections and their low price.

         .. image:: images/glossary/otg-cable.png
            :alt: A USB OTG Cable
            :width: 200

Controllers
-----------

**LEGAL CONTROLLERS:** As of the 2021-2022 season, the following controllers are  `legal for competition: <https://www.firstinspires.org/sites/default/files/uploads/resource_library/ftc/legal-illegal-parts-list.pdf>`_

- Xbox 360 Controller for Windows
- Logitech F310 Controller
- ETPark Wired Controller for PS4
- Sony DualShock 4 Wireless Controller for PS4 (Must be connected wired over USB)

In the past, the Xbox 360 controller was preferred by many top teams over the Logitech F310. This is mostly as the Xbox controller has less of a dead spot. A dead spot is basically the area where the joystick can move but not communicate that the stick has shifted slightly. This means that when the joystick is moved to a position where the controller can detect it, the robot will sometimes have a tendency to lurch forward. Dead spots make it difficult for the driver to execute fine-tuned and precise movements. **This is likely a non-issue for the large majority of teams. Also, keep in mind that there are very specific models of the Xbox controller that are legal, so they can be hard to find new.**

Starting with the 2020-2021 season, the ETPark and Sony PS4 Controllers are legal and provide numerous advantages over Xbox 360 Controllers. Some of these advantages include, better trigger and bumper control, a more usable dpad, and trackpad support as of the 2021-2022 season. Use of the PS4 controller is slightly different because the locations of the Left Stick and DPAD are swapped and `some button names are different. <https://github.com/OpenFTC/OpenRC-Turbo/blob/2d1e527d3d53c3ac7da701a73d342b85cf407835/RobotCore/src/main/java/com/qualcomm/robotcore/hardware/Gamepad.java#L884>`_ **Pro Tip: Make sure your drivers have experience with the controller they plan to use for competition.**

Generally it is the opinion that the PS4 controllers are better than the other options. Among the options for PS4 controllers, the choice is really up to you. The Sony controller has slightly better buttons, but the ETPark controller is half the cost and a more solid connecting wire. **Keep in mind that the drivers can use different controllers, so pick the one most comfortable to you.**

A phone holder and :term:`OTG <Micro USB On The Go (OTG) Cable>` strain relief connector can be useful as it may help to prevent connections from loosening. Especially if teams are running dual controller configuration, ensuring that the USB hub is secure won't hurt.
