.. include:: <isogrk3.txt>

SDK Sensors
===========

The SDK offers several methods of controlling and communicating with sensors.

General Explanation
-------------------

I2C Explanation
^^^^^^^^^^^^^^^

I2C is a two wire serial communication bus that is designed to communicate with multiple devices. The two wires are the SCL, or clock line, and SDA, or data line. The REV hub connector also contains two more pins for 3.3v and GND. The protocol can address multiple devices using addresses, where the master device sends the address it is communicating with, then the data it wants to send. The device it is talking to then responds. This means any number of devices can be connected to one I2C port, so long as no two devices have the same I2C addresses.

I2C has multiple speed specifications, but the REV hub supports both 100khz and 400khz communication standards. The specification also requires the lines to be pulled up, so the REV hub has dual 2.49 k\ |Omega| pull up resistors, negating the need for external pull up resistors.

.. tip:: Devices generally have their I2C addresses hard coded, meaning they cannot be changed. Check the devices data sheet to make sure addresses will not conflict if connecting multiple I2C devices together.

.. note:: I2C is often called slower than other forms of sensors. It is not inherently slower, but due to the way I2C communication works in the SDK it takes multiple commands to read one I2C sensor, which means one I2C read can take 2-3x longer than one digital or analog read.

Analog Input
^^^^^^^^^^^^

Reads the input voltage to the expansion hub. These ports are the ONLY sensor ports that are 5v tolerant.

Digital I/O
^^^^^^^^^^^

Digital I/O can be configured to either act as an INPUT, reading whether the port is HIGH or LOW, or an OUTPUT, sending HIGH or LOW signals. The digital input is pulled HIGH to prevent floating.

.. note:: Floating occurs when you attempt to read from a digital input pin but the signal is disconnected or not pulled HIGH or to ground. As a result, the pin is considered "floating" and can have inconsistent results. To prevent this, a resistor bridges between the port and 3.3V, so that instead of floating the pin instead reads HIGH when nothing is connected.

.. danger:: When wiring limit switches or other digital devices, DO NOT connect the limit switch to 3.3V and the digital port, like most datasheets recommend. Instead, the REV hub expects a connection between GROUND and the digital pin. **Connecting between 3.3V and the digital pin may cause instability or the hub to die.**
