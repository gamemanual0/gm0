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

- Price: A Driver Hub costs $250.00, whereas legal Android phones can be purchased used for much less
- Power Issues: Teams have reported random losses of power coming from improper tolerences of the battery connection.
- Battery Issues: Teams have reported high battery drain in sleep mode, leading to hubs dying faster then expected
- Wifi Issues: The wifi driver will occasionally crash when the device goes to sleep, requiring a device restart

.. important::
   If you purchase a Driver Hub and experience issues, refer to the `REV Driver Hub troubleshooting page <https://docs.revrobotics.com/duo-control/troubleshooting-the-control-system/driver-hub-troubleshooting>`_. The unexpected power off fix may be done preemptively to prevent a shutdown during a match.

Android Phones
--------------

As of 2024-2025, specific Android phones are still legal for competition use.

Advantages
^^^^^^^^^^

- Legal Android phones can be very cheap when purchased secondhand
- Android phones generally are reliable out of the box

Disadvantages
^^^^^^^^^^^^^

- The lack of a full size USB A port means that flimsy On The Go cables must be used
- The phones themselves should be protected with a case to prevent damage

A 5 GHz phone is preferred over the standard 2.4 GHz phone to reduce ping issues. Have you ever noticed that your team's robot seems to lag at competitions only? This is because most school WiFi bands run on 2.4 GHz, which means that 2.4 GHz channels will be more crowded on competition day. This can lead to noticeably higher ping/lag which adversely affects driver and robot performance.

USB and :term:`OTG <Micro USB On The Go (OTG) Cable>` connections can be a possible source of disconnects during a match. This is generally caused by poor quality cables/adapters between the driver station and the gamepads. **It generally is worth it to purchase higher quality cables and adapters as opposed to the cheapest options.**

  `Recommended USB to OTG Cable <https://www.amazon.com/gp/product/B00YOX4JU6?pf_rd_r=PY8B4WPEQRQ80XYJCMSH&pf_rd_p=edaba0ee-c2fe-4124-9f5d-b31d6b1bfbee/>`_

A phone holder and :term:`OTG <Micro USB On The Go (OTG) Cable>` strain relief connector can be useful as it may help to prevent connections from loosening. Especially if teams are running a dual controller configuration, ensuring that the USB hub is secure won't hurt.

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

**LEGAL CONTROLLERS:** As of the 2024-2025 season, the following controllers are `legal for competition: <https://ftc-resources.firstinspires.org/file/ftc/game/manual>`_

- `Logitech F310 Controller <https://www.amazon.com/dp/B003VAHYQY>`_ (940-00010)
- Xbox 360 Controller for Windows (52A-00004)
- `Sony DualShock 4 Wireless Controller for PS4 <https://www.amazon.com/dp/B01LWVX2RG>`_\*
- `Sony DualSense Wireless Controller for PS5 <https://www.amazon.com/dp/B0CQKKHT5J>`_\*
- `Etpark Wired Controller for PS4 <https://www.revrobotics.com/rev-39-1865/>`_ (REV-39-1865, now discontinued)
- `REV Robotics USB PS4 Compatible Gamepad <https://www.revrobotics.com/rev-31-2983/>`_ (REV-31-2983)
- `Quadstick game controller <https://www.quadstick.com/>`_ in Xbox 360 Emulation Mode

\*\ *Operating in wired mode only (i.e., connected through USB cable without being Bluetooth paired to any device). This DOES NOT include the Sony DualSense Edge Wireless Controller in any configuration.*

In the past, the Xbox 360 controller was preferred by many top teams over the Logitech F310. This is mostly as the Xbox controller has less of a dead spot. A dead spot is basically the area where the joystick can move but not communicate that the stick has shifted slightly. This means that when the joystick is moved to a position where the controller can detect it, the robot will sometimes have a tendency to lurch forward. Dead spots make it difficult for the driver to execute fine-tuned and precise movements. **This is likely a non-issue for the large majority of teams. Also, keep in mind that there are very specific models of the Xbox controller that are legal, so they can be hard to find new.**

Now, the Etpark, REV, Sony PS4, and Sony PS5 controllers are legal and provide numerous advantages over Xbox 360 controllers. Some of these advantages include, better trigger and bumper control, a more usable dpad, and trackpad support. Use of the PS4/PS5-style controllers is slightly different because the locations of the Left Stick and DPAD are swapped compared to the Xbox 360 controller and `some button names are different. <https://github.com/OpenFTC/Extracted-RC/blob/ce0a67af28c966c7a166ae51765e115a853734fc/RobotCore/src/main/java/com/qualcomm/robotcore/hardware/Gamepad.java#L891>`_ **Pro Tip: Make sure your drivers have experience with the controller they plan to use for competition.**

Generally it is the opinion that the PS4/PS5 controllers are better than the other options. Among the options for PS4/PS5 controllers, the choice is really up to you. The Sony controllers have slightly better buttons, but the REV controller is half the cost and has a built-in solid connecting wire, meaning there is one less connection to potentially unplug or get damaged. **Keep in mind that different drivers can use different controllers, so have each driver pick the one most comfortable to them.**
