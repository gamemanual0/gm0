.. include:: <isonum.txt>

SDK Communication
=================

When using any method in the FTC\ |reg| SDK that accesses hardware, be that setting motor power, reading an encoder, a sensor, etc., a LynxCommand is sent.

.. note::
   LynxCommands are not sent directly from the Robot Controller to an Expansion Hub through USB; in an expansion hub they are sent through USB to an FTDI, which converts the USB signal to a UART one. In the control hub, this USB step is skipped, instead the control hub board sends the data directly over UART to the internal expansion hub.

.. warning::
   LynxCommands being blocking (and more specifically a master lock being present on each usb device) means that multithreading hardware calls is at best not helpful and typically harmful to performance.

If an Android phone and Expansion Hub is used, LynxCommands are sent over USB; however if a Control Hub is used, LynxCommands are sent over UART. This is very important, not just because of the increased reliability with UART instead of USB, but also because LynxCommands take approximately 3 milliseconds over USB and approximately 2 milliseconds over UART.

Any expansion hubs connected via RS485 receive their commands via that connector. Lynx hubs do not have to retransmit packets, so the added latency from this process isn't significant, but there will be some added latency. Up to 255 expansion hubs can be connected together in theory.

.. note::

   Interacting with I2C devices takes significantly longer; upwards of 7 milliseconds over USB. However, this is not because each LynxCommand takes longer, but because multiple LynxCommands must be sent to interact with I2C.

   Please note that since version 5.5 of the SDK, I2C calls on the Control Hub are much faster than those on the Expansion Hub. This is because the polling rate was dramatically increased, which can cut down on unnecessary wasted time.
