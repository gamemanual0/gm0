.. include:: <isonum.txt>

Servo Usage Tips
================

Below are some tips on using servos in FTC\ |reg|.

- Do not backdrive :term:`servos <Servo>`. Forcibly rotating a powered :term:`servo <Servo>` away from its position risks damaging the internal :term:`gears <Gear>`.
- Pay attention to a servo's travel range! The default 600-2400 range of the FTC control system when selecting the "Servo" configuration can make it appear that popular servos like the goBILDA Dual Mode Servos and REV Smart Robot Servos have less range than advertised. Make sure you select the "Full Range Servo" configuration instead to get the full 500-2500 range.
- :term:`Servo` wires usually are black-red-white or black-red-yellow. Matching the colors is an easy way to check if the servo is plugged in correctly. Most :term:`servo <Servo>` connectors provide no protection from plugging them the wrong way: if you rotate it 180 degrees, it will still fit - but the :term:`servo <Servo>` would not work. (It shouldn't be damaged, though.) Thus, if your :term:`servo <Servo>` is not working, first check if they are plugged in correctly. Then check it again.
- When using :term:`servo <Servo>` wire extensions, use `retaining clips <https://www.gobilda.com/servo-connector-clip-yellow-6-pack/>`_ to prevent the connection from coming apart when someone pulls on the wire. Alternatively, electrical tape will work in a pinch.
   .. tip::
      Some vendors sell versions of the 3-pin female connector with retaining clips built-in. BackBayRC on Amazon sells pre-made `servo extension wires with locking connectors <https://www.amazon.com/BackBayRC-Extension-Strands-Vehicles-bikes/dp/B0CXR2YBS4/>`_; and Ferra Components sells both `pre-made servo extension wires with locking connectors <https://ferracomponents.com/products/20awg-locking-servo-wire>`_, and `packs of locking connectors you can crimp yourself <https://ferracomponents.com/products/servo-locking-connector>`_.
- Do not use bare socket head screws to attach :term:`servos <Servo>` - when tightened, they will damage the plastic. Use button head screws or socket heads with a washer.
- :term:`Servos <Servo>` break very easily when subjected to lateral loads or bending of the :term:`shaft <Shaft>`. For example, if you mount an arm or a claw directly on the :term:`servo <Servo>` without any additional precautions, it is very likely that you will break the :term:`servo <Servo>` first time you drive into the wall with the arm extended (and this will inevitably happen).

  To avoid that, use additional supports. The easiest way to do it is by using `ServoBlocks from goBILDA <https://www.gobilda.com/servoblocks>`_. :term:`ServoBlocks` act as exoskeletons for the :term:`servo <Servo>`, providing additional support. They pay for themselves, since they help protect your servos from getting damaged. Additionally, REV offers the inside and outside channel :term:`servo <Servo>` bracket, which when paired with the aluminum servo :term:`shaft <Shaft>` adapter and :term:`bearing <Ball Bearing>` assembly, fulfills the same function.

  .. figure:: images/servoblock.jpg
     :alt: A servo in a compact ServoBlock

     A servo in a compact ServoBlock

- Use linkages. Instead of mounting some rotating piece directly on a :term:`servo <Servo>`, mount it so it can rotate around a pivot point and then connect it to the :term:`servo <Servo>` using linkage as shown below:

  .. figure:: images/linkage.jpg
     :alt: linkage

     Linkage example, courtesy of team 4137 Islandbots. A goBILDA flat beam is used as the link.

- If you need more power, use a `REV Servo Hub <https://www.revrobotics.com/rev-11-1855/>`_ or `goBILDA 6V Servo Power Injector <https://www.gobilda.com/6v-servo-power-injector-6-channel-8-15v-input/>`_. **This is important for servos under high load conditions.**

  .. admonition:: Term

     .. glossary::

        Servo Power Module
           A Servo Power Module (SPM) is a device made by REV Robotics that boosts the voltage that the Expansion Hub provides to a :term:`servo <Servo>`. The Control/Expansion Hub's output for servos is 5V at 6 amps, and the SPM boosts the voltage to 6V and up to 15amps.

           .. attention::
              The Servo Power Module has a tendency to fail spectacularly, burning out the SPM, and sometimes the Control/Expansion Hub it is plugged into.  Teams shouold use the newer REV Servo Hub or goBILDA Servo Power Injector instead.

           .. image:: images/glossary/servo-power-module.png
              :alt: A REV Robotics Servo Power Module
              :width: 200

        Servo Hub
           A Servo Hub is a device made by REV Robotics that is a controller like the Expansion Hub, but only controls servos. The Control/Expansion Hub's output for servos is 5V at 6 amps, but the Servo Hub's output for servos is 6V and up to 15amps.

           .. tip::
              The Servo Hub can make wiring significantly easier in certain circumstances. For example, if you have an arm on a long extension that has 4 servos on it, you can run just the power wire and the data wire to a Servo Hub on the end of the arm, rather than running 4 servo extension cables the entire length.

           .. image:: images/glossary/servo-hub.png
              :alt: A REV Robotics Servo Power Module
              :width: 200

        goBILDA 6V Servo Power Injector
           A Servo Power Injector (SPI) is a device made by goBILDA that boosts the voltage that the Expansion Hub provides to a :term:`servo <Servo>`. The Control/Expansion Hub's output for servos is 5V at 6 amps, and the SPI boosts the voltage to 6V and up to 24 amps total output. It works similarly to the original REV Servo Power Module, but with significant improvements to maximum output power and overcurrent handling to prevent failure.

           .. image:: images/glossary/servo-power-injector.jpg
              :alt: A goBILDA 6V Servo Power Injector
              :width: 200
