Servo Usage Tips
================

Below are some tips on using servos in FTC.

- Do not backdrive :term:`servos <Servo>`. Forcibly rotating a powered :term:`servo <Servo>` away from its position risks damaging the internal :term:`gears <Gear>`.
- Pay attention to a servo's travel range! The FTC API, by default, outputs 600-2400 µs. ``ServoImplEx`` can be used to increase the range to a maximum of 500-2500 µs

  .. code:: java

     ServoImplEx servo = hardwareMap.get(ServoImplEx.class, "myservo");
     // ...
     servo.setPwmRange(new PwmRange(500, 2500));
- :term:`Servo` wires usually are black-red-white. Matching the colors is an easy way to check if the servo is plugged in correctly. :term:`Servo` connectors provide no protection from plugging them the wrong way: if you rotate it 180 degrees, it will still fit - but the :term:`servo <Servo>` would not work. (It wouldn't be damaged, though). Thus, if your :term:`servo <Servo>` is not working, first check if they are plugged in correctly. Then check it again.
- When using :term:`servo <Servo>` wire extensions, use `retaining clips <https://www.gobilda.com/servo-connector-clip-yellow-6-pack/>`_ to prevent the connection from coming apart when someone pulls on the wire. Alternatively, electrical tape will work in a pinch.
- Do not use socket head screws to attach :term:`servos <Servo>` - when tightened, they will damage the plastic. Use button head screws or socket heads with a washer.
- :term:`Servos <Servo>` break very easily when subjected to lateral loads or bending of the :term:`shaft <Shaft>`. For example, if you mount an arm or a claw directly on the :term:`servo <Servo>` without any additional precautions, it is very likely that you will break the :term:`servo <Servo>` first time you drive into the wall with the arm extended (and this will inevitably happen).

  To avoid that, use additional supports. The easiest way to do it is by using :term:`Servoblocks` from Actobotics or goBILDA. These assemblies act as exoskeletons for the :term:`servo <Servo>`, providing additional support. They are expensive, but worth every penny. Additionally, REV offers the inside and outside channel :term:`servo <Servo>` bracket, which when paired with the aluminum servo :term:`shaft <Shaft>` adapter and :term:`bearing <Ball Bearing>` assembly, fulfills the same function.

  .. figure:: images/servoblock.jpg
     :alt: servoblock

     A servo in a ServoBlock

There are also some alternative designs of servo supports; one of them, which is not as strong as the original :term:`Servoblock <Servoblocks>` but much more compact, is shown below (`CAD <https://myhub.autodesk360.com/ue2801558/g/shares/SH56a43QTfd62c1cd968b8829158db7626b9>`_ is also available):

.. figure:: images/compact_servo_block.png
   :alt: compact servoblock

   Alternative :term:`servo <Servo>` support block

- Use linkages. Instead of mounting some rotating piece directly on a :term:`servo <Servo>`, mount it so it can rotate around a pivot point and then connect it to the :term:`servo <Servo>` using linkage as shown below:

  .. figure:: images/linkage.jpg
     :alt: linkage

     Linkage example, courtesy of team 4137 Islandbots. A goBILDA flat beam is used as the link.

- If you need more power, use `REV Servo Power Module <https://www.revrobotics.com/rev-11-1144/>`_. By itself, :term:`REV Expansion Hub <Expansion Hub>` provides 5V power to servos, and the current is limited to 2A for each of 3 pairs of servo ports (0-1, 2-3, 4-5). Since stall current on a servo such as goBILDA Dual Mode servo is about 2.5A, it means that if one of the servos in a pair is stalled, the other one will not be getting enough power to maintain its position. The :term:`REV Servo Power Module <Servo Power Module>` provides 6V and up to 15A current total for 6 :term:`servo <Servo>` ports.
