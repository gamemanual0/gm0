.. include:: <isonum.txt>

Control System Electronics
==========================

This page contains a breakdown of the known electronics in the control system, as well as any notes regarding them.

Expansion Hub Internals
---------------------------------

.. warning:: Don't take apart a Control or Expansion Hub unless you really know what you are doing. They can be damaged in the process, especially if one does not know how to properly reassemble it.

Lynx Board
^^^^^^^^^^

"Lynx" is the codename of the board within the Expansion Hub and Control Hub that interacts with hardware. References to "Lynx" are made in the FTC\ |reg| SDK refer to this board. It appears to have been developed by both REV and `DEKA <https://dekaresearch.com/>`_ (Dean Kamen's company), possibly for use in *FIRST*\ |reg| Global (judging by the *FIRST* Global silkscreen on the PCB). A reverse-engineered schematic can be found `here <https://github.com/DuckTapeAndAPrayer/LynxSchematic>`_.

.. warning:: Don't take apart a Control or Expansion Hub unless you really know what you are doing. They can be damaged in the process, especially if one does not know how to properly reassemble it.

.. figure:: images/control-system-internals/lynx-board.jpg
   :alt: A Lynx board that was removed from its case

   A Lynx board that was removed from its case

Processor
^^^^^^^^^

The main processor of the Expansion Hub is a Texas Instruments ARM Cortex M4 running at 80 MHZ.

Ports
^^^^^

The expansion hub has the following ports

- Two UART Debug Ports

  - The top port outputs a continuous high speed CSV stream of data from the various subsystems in the hub.
  - The bottom port outputs data at a baud rate of 115200 at a user specified verbosity.
- Four I2C Ports

  - These ports are 100/400 kHz compliant and are connected to a separate bus so there is no need to be concerned about address collisions
  - There are integrated pull up resistors on this port
- Eight DIO Ports

  - 3.3V only, current limited, can briefly supply more than the rated current spec. Pulled up internally.
- Four Analog Ports

  - 5V compliant, you can use a level shifter to supply 5v to the sensor, but take care the analog line bypasses the level shifter. The VIN and GND lines must pass through the level shifter for it to work however.
- Six Servo Ports

  - The 5V supply on the servo ports is default OFF, and will only enable once a servo is used. All six 5V pins are switched on and off together, and disabling PWM on one port will switch all of the ports off unless another servo is used.
- Two 5V Power Ports

  - The 5V supply is shared with the servos
- Four Motor Ports

  - Current limited and have overtemperature protection on the chip. The output does not brake the h-bridge during the PWM off cycle. What this means is that there might be linearity issues while deaccelerating, because of momentum in the motor.
  - The motor driver is a ST Microelectronics VNH5050 motor driver IC, which is capabile of handling well over the maximum amount of current an FTC motor can draw. It has integrated current sensing and has been used since the Modern Robotics era. It has built in thermal and current safety limits. This motor controller has been used for years, and may even date back to the early HiTechnic based control system.
- Four Encoder Ports

  - **IMPORTANT: Only two of the encoder ports (Ports 0 and 3) appear to be connected via hardware and are reliable at high speeds**. There are two methods of connecting an encoder internally to the Texas Instruments microprocessor, through hardware and software. Hardware ports use the integrated quadrature decoder chip and are extremely accurate at high speeds, whereas encoders decoded in software are not reliable at high speeds. As a result, high Count per Revolution (CPR) encoders (those with more than around 4000 counts per revolution) should NOT be used on ports 1 and 2.
- Two XT30 Connectors

  - Care should be taken when moving around cables as these connectors have been known to fail and break off the board.
  - In addition, XT30s will wear and get loose with time. See `XT30 Pins are Compressed - Expansion Hub Troubleshooting <https://docs.revrobotics.com/duo-control/troubleshooting-the-control-system/expansion-hub-troubleshooting#xt30-pins-are-compressed>`_ for details on the issue and how to fix it.
- USB Mini-B Connector

  - Capable of full speed USB 2.0, and 5V output to charge a phone. The 5v output may be unreliable, it depends on the hub.
- Internal Connector

  - This connector is what is used to connect to the compute daughterboard. It has a UART connection, as well as power and ground. All Expansion Hubs have this connector, whether or not they are a Control Hub. A Lynx board from an Expansion hub connected with Control Hub's daughterboard will work as a Control Hub. To go the other way the RHSP address has to be changed to something other than the Control Hub address of 173 after the daughterboard is removed.

Control Hub
^^^^^^^^^^^

The Control Hub is an Expansion Hub with an embedded single-board compute daughterboard connected to it. This enables it to not need a separate Robot Controller phone, as the compute board functions as the Robot Controller. Internally, LynxCommands are sent over from the daughterboard to the Lynx board over an internal UART connection.

The compute board's physical layout is based on the 96Boards CE spec, and is visibly extremely similar to the `Dragonboard 410c <https://www.96boards.org/product/dragonboard410c/>`_.

.. note::
   The original version of the Control Hub (REV-31-1152) used in FIRST Global actually used a `Dragonboard 410c <https://www.96boards.org/product/dragonboard410c/>`_ as the compute board.

The Control Hub compute board runs a customized version of Android 7.1. It does not have a proper heatsink on the SOC, only an RF shield that does not touch the SOC, which can cause thermal throttling when heavy processes such as vision pipelines are used. A large amount of heat seems to be sunk by the daughterboard PCB, which acts like a heat spreader.

- SOC: Rockchip RK3328

  - CPU: Quad-core ARM\ |reg| Cortex-A53

    - The device tree in the official kernel seems to indicate that the CPU can clock up to 1.5 GHz
  - GPU - ARM\ |reg| Mali 450MP4

    - HDMI 2.0 support for 4k @ 60Hz
- RAM: 1GB DDR3
- Storage: 8 to 16GB of eMMC flash memory

  - "8GB eMMC 4.51" is the spec officially listed by REV, but multiple real-world units that were checked all had 16GB eMMC chips found on their boards.
  - According to REV, in a support email: **"Original builds of the Control Hub were manufactured with 8GB eMMC chips. However, some 16GB versions were made due to supply chain constraints. Recent Control Hubs (purchased after 2022) are more likely to have the 16GB eMMC chip."**
- USB: 1x USB 3.0, 1x USB 2.0, 1x internal USB 2.0 used to connect the Wi-Fi chip
- Wi-Fi: Realtek RTL8821CU

  - IEEE 802.11a/b/g/n/ac Wi-Fi (Dual Band 2.4 & 5 GHz)

    - 802.11w Protected Management Frames standard supported for preventing `deauthentication attacks <https://en.wikipedia.org/wiki/Wi-Fi_deauthentication_attack>`_
  - Bluetooth 4.2 (Bluetooth 4.1 listed by REV)
- Debugging UART: 3 pin header (TX left, RX middle, Ground right), 1500000 baud

.. warning:: Don't take apart a Control or Expansion Hub unless you really know what you are doing. They can be damaged in the process, especially if one does not know how to properly reassemble it.

.. tip::
   It is possible to install an Armbian Linux build from https://forum.armbian.com/topic/26978-csc-armbian-for-rk3318rk3328-tv-box-boards/ and have it work on the Control Hub. Enable the `rk3318-box-led-conf3` board type using the ``rk3318-config`` command to allow Wi-FI and all USB ports to work. Enable the ``rk3328-uart1`` overlay using ``armbian-config`` to allow communicating with the Lynx board over the internal UART connection using ``/dev/ttyS1``.

   **YOU SHOULDN'T BE DOING THIS FOR FTC!**

.. figure:: images/control-system-internals/control-hub-internals.jpg
   :alt: The single board computer and Lynx board from a Control Hub

   The single board computer and Lynx board from a Control Hub
.. figure:: images/control-system-internals/android-board.jpg
   :alt: The compute board, removed from a Control Hub

   The compute board, removed from a Control Hub
