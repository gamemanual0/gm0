Driver Station Guide
====================

From many years of collective experience, the writers have accumulated some general recommendations and best practices for driver stations to reduce the risk of disconnects.

- A 5GHz phone is preferred over the standard 2.4GHz phone to reduce ping issues. Have you ever noticed that your team's robot seems to lag at competitions only?

Most teams run on 2.4GHz, which means that the 2.4GHz channels will be more crowded on competition day. This can lead to noticeably higher ping/lag which adversely affects driver and robot performance.

- USB and :term:`OTG <Micro USB On The Go (OTG) Cable>` connections can be a possible source of disconnects during a match. This is generally caused by poor quality connectors or adapters between the driver station and the gamepad controller. **It generally is worth it to purchase higher quality connectors as opposed to the cheapest options.**

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
