.. include:: <isonum.txt>

Sensor Glossary
===============

Sensors are used in a variety of applications within FTC\ |reg|. Sensors can give external feedback regarding the position of the robot (for example, relative to the field wall or to a vision target) or internal feedback (velocity, distance traveled, voltage, etc.). Sensors can also be used to determine the rotation of a mechanism and detect color.

Encoders/Potentiometers
-----------------------

- Rotational
   - Absolute (+ Potentiometers)
      - MA3 (`am-2899 <https://www.andymark.com/products/ma3-absolute-encoder-with-cable>`_)
      - Potentiometer (`REV-31-1155 <https://www.revrobotics.com/rev-31-1155/>`_)
   - Relative
      - REV Through Bore Encoder (`REV-11-1271 <https://www.revrobotics.com/rev-11-1271/>`_). It has absolute support but over PWM, which is inaccessible within the FTC control system.
      - E4T (`am-3132 <https://www.andymark.com/products/e4t-oem-miniature-optical-encoder-kit>`_)
      - Generic (`Sparkfun Rotary Encoder <https://www.sparkfun.com/products/9117>`_)
- Positional
   - Linear Potentiometers Slide Pot (`Sparkfun Slide Pot <https://www.sparkfun.com/products/9119>`_)

Contact
-------

- Physical
   - Limit Switches (`3103-0001-0001/3103-0001-0002 <https://www.gobilda.com/limit-switches/>`_)
   - Endstops Generic (`Sparkfun <https://www.sparkfun.com/products/13013>`_)
   - Touch Sensor REV (`REV-31-1425 <https://www.revrobotics.com/rev-31-1425/>`_)
- Magnetic
   - Hall Effect Sensor REV (`REV-31-1462 <https://www.revrobotics.com/rev-31-1462/>`_)

Optical
-------

- Color
   - Adafruit RGB
   - REV Color
   - MR Color
- Computer Vision
   - Hardware
      - PixyCMU
   - Software
      - OpenCV (EasyOpenCV)
      - Vuforia
      - TFLite

Distance
--------

- ToF
- Ultrasonic

Other
-----

- IMU
   - Accelerometer
   - Gyroscope
   - Compass
   - Magnetometer

Logic Level Converter
---------------------

The old Modern Robotics system run on 5v sensor logic. The new REV Robotics system uses 3.3v. For most off the shelf sensors, this doesn't cause any problems, but for some existing FTC sensors it does. To solve this REV sells boards, called `logic level converters <https://www.revrobotics.com/rev-31-1389/>`_, that convert the sensor data to be readable by the REV hubs. The `REV Expansion Hub <https://docs.revrobotics.com/duo-control/sensors/5v-sensors#logic-level-converter>`_ guide has a chart detailing what adapters are needed for what sensors.

.. attention:: According to REV testing, goBILDA, REV and TorqueNado motors don't need logic level converters, but only some NeveRest motors worked with no discernable reason why.

It is ideal to not use logic level converters to simplify your wiring. If you need to, there is a best practice. Electrical tape the connectors on either end, this helps with static, and it keeps it from being physically disconnected. This does produce a very noticeable effect with encoders on fields with lots of static.

The second tip is to never tape over the middle or LED. The board generates a very small amount of heat, and it's very easy to overheat if it can't ventilate, also don't fully enclose it in any cases without holes.
