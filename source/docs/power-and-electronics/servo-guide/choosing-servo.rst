.. include:: <isonum.txt>

Choosing a Servo
================

Choosing a :term:`servo <Servo>` can seem daunting at first, given the number of options to consider. This guide is intended to provide a starting point to compare different servo options, and also has some hand picked recommendations at the end.

.. important::

   It is very important to keep the reliability of a given vendor in mind when choosing servos. It is not uncommon for manufacturers and resellers on Amazon and other similar sites to exaggerate their servos specs, or pick unrealistic best case scenarios for measuring the specs. We have limited our recommendation only to vendors who historically have been reliable with publishing servo specifications.

   As a rule of thumb established manufacturers (HiTech, Savox, ServoCity, Gobilda, Andymark, etc) will usually publish accurate numbers, and servos from marketplaces (Amazon, AliExpress, etc) should be viewed with some skepticism.

Servo Type: Regular or Continuous
---------------------------------

:term:`Servos <Servo>` that can rotate to a given position based on PWM input signal are called **regular servos**. In addition, there are also **continuous rotation servos**, which are effectively just small motors in a :term:`servo <Servo>` form factor. They have no position control; instead, PWM signal is used to control their rotation speed.

Many servos from FTC\ |reg| vendors are Dual Mode, meaning they can switch between continuous and regular modes (often requiring the use of a sold-separately servo programmer). These servos can be used as either continuous or regular servos.

Servo Torque And Speed
----------------------

:term:`Servo` output power is measured in both **speed** and **torque**. Speed (normally in seconds per 60\ |deg|) refers to how fast the :term:`servo <Servo>` turns 60 degrees in Standard Rotation mode.

.. admonition:: Why seconds per 60 degrees?

   Historically, the servos commonly used in FTC were created for RC (Radio Controlled) car setups. These cars often had steering linkages with a maximum side to side travel of 60 degrees so manufacturers would often advertise their servos using seconds for 60 degrees.

Torque (usually measured in oz-in or in kg-cm) refers to the amount of force the :term:`servo <Servo>` can apply to a lever. For reference, if you put a 1" bar on a servo, then put a force gauge on the end, the torque rating of the servo (in oz-in) will be measured.

As you may know, speed and torque will generally have an inverse relationship. You can find some insanely powerful servos that are pretty slow (slower than 0.20 s/60\ |deg|) or some less powerful ones with faster ratios (anything faster than 0.12 s/60\ |deg| is considered very fast).

Finding the right :term:`servo <Servo>` for your application can be tough, but a good way is trying to decide if you need more speed or torque, and if your :term:`servo <Servo>` will experience shock loads or not.

Durability and Servo Gear Material
----------------------------------

The two things that threaten a :term:`servo's <Servo>` longevity are the internal motor burning out and more commonly, the :term:`gears <Gear>` stripping inside the :term:`servo <Servo>`. A motor burning out is pretty uncommon, but it can happen under large loads for a prolonged amount of time.

.. caution:: You should **never** stall a servo against an immovable object.

Gear stripping is a very common problem which occurs when the torque needed to actuate a component exceeds that of the :term:`servo's <Servo>` maximum torque. There are two main cases when this can occur.

- Shock load from external force can strip the :term:`gears <Gear>` easily, regardless of which material the :term:`gears <Gear>` are made from. An example could be the component slamming into the field wall or another robot.
- Shock load from reversing directions on an object that is too heavy can strip the :term:`gears <Gear>`. Torque increases with mass and also distance from the center of rotation. If the component being actuated is far from the :term:`servo <Servo>`, the long lever arm means larger torque. Furthermore, if the component is moving, reversing direction also will require more torque. Thus, the principle is that components should be light and not reverse direction suddenly to prolong :term:`servo <Servo>` life.

Shock load resistance is impacted directly by the material the :term:`gears <Gear>` are made from. This ranges from plastic to titanium, so let's go down the list, starting from the weakest.

- **Plastic**: with low power :term:`servos <Servo>`, these are normally okay. Generally used for applications in model airplanes such as ailerons. FTC applications include light load mechanisms which will not have direct contact with any game elements or the field. An example could be a servo that opens a trapdoor or moves game elements within the robot.
- **Karbonite**: Hitec's :term:`gear <Gear>` plastic is a very durable and long lasting plastic and is very good under long use and low load. Be aware that it can strip easily under the shock loads found in FTC. Karbonite is more durable than plastic but still suffers from shock loads.
- **Brass**: Brass :term:`gears <Gear>` are stronger than plastic but also suffer greatly when faced with shock loads in FTC like intake wrists and deposit buckets. It's found on slightly higher end servos such as the REV Smart Servo.
- **Steel**: This is where we start getting big. Steel :term:`gears <Gear>` are very durable and you'll have a tough time stripping these. In general, expect to pay a premium. The goBILDA Dual mode servos (v2) is an example of steel :term:`gear <Gear>` :term:`servo <Servo>`.
- **Titanium**: Titanium is where you get into really high end, virtually unbreakable :term:`servos <Servo>`. Starting from $75, they can reach over $150. A common misconception is that titanium is stronger than steel, however its advantage is in strength to weight ratio (as in, titanium gearboxes will often be lighter than steel gearboxes).

Servo Size
----------

:term:`Servos <Servo>` come in different sizes. Fortunately, almost all manufacturers use the same standard set of :term:`servo <Servo>` sizes, ranging from sub-micro to large. The two sizes commonly used in FTC are *standard size* (which includes REV Smart Servo and goBILDA Dual Mode Servos) and *large size* (also known as quarter-scale) :term:`servos <Servo>`. However, large :term:`servos <Servo>` are quite uncommon.

Note that while in general, the larger the size, the more powerful the :term:`servo <Servo>`, it is not a strict rule. You can buy very powerful standard size :term:`servos <Servo>` - just expect to pay more for them.

Servo Spline
------------

The output shaft of the :term:`servo <Servo>` is commonly called the **spline**. Most servos have industry standard 25 tooth spline (also known as F3); in particular, this is the spline used by REV Smart Servo and goBILDA Dual Mode servos. However, Hitec servos using 24 tooth spline are also very popular.

Andymark servos are an exception to this, as they use a 5mm hex shaft as their output instead of a 24 or 25 tooth servo spline.

.. attention:: Please check the spline type before you buy the :term:`servo <Servo>` - otherwise, your :term:`servo <Servo>` attachments will not fit.

For more info about servo splines, please check https://www.servocity.com/servo-spline-info/.

Servo Range
-----------

The angle over which a non-continuous :term:`servo <Servo>` can rotate while retaining position feedback is called the range. When choosing a servo, it is important to make sure you have enough range for the movement you need.

By default, the FTC Control Hub and FTC Expansion Hub output 600-2400 microsecond signals. However, this range can be expanded to 500-2500 microseconds. When choosing a servo, it is important to make sure that its range will be usable for your application inside of 500-2500 microseconds.

.. note::

   The default 600-2400 range of the FTC Expansion Hub and FTC Control Hub can make it appear that popular servos like the goBILDA Dual Mode servos and REV Smart Robot Servo have less range than advertised. You can use the following code to expand the range to 500-2500 microseconds.

   .. code-block:: java

      ServoImplEx servo = hardwareMap.get(ServoImplEx.class, "myservo");
      ...
      servo.setPwmRange(new PwmRange(500, 2500));

Cost
----

:term:`Servos <Servo>` range from cheap $7 :term:`servos <Servo>` for light applications, all the way up to some Hitec or Savox :term:`servos <Servo>` for close to $200.

By far the best bang for your buck :term:`servos <Servo>` out there are going to be **goBILDA dual mode** and **REV SRS** servos. In addition, the **Andymark High Torque/Speed** servos on paper are the best bang for your buck servo, but at the time of writing have not been released and tested.

The biggest downside to the REV SRS are their brass :term:`gears <Gear>`. Coupled with high output power, this meant that stripping :term:`gears <Gear>` with any shock load was commonplace.

The next big name in FTC :term:`Servos <Servo>` is Hitec, who is a huge name in hobby :term:`servos <Servo>` for decades and are very well trusted. Their low end :term:`servos <Servo>` are inexpensive but easily broken.

A mid-priced Hitec :term:`servo <Servo>` is the HS 485-HB/488-HB servo, with Karbonite :term:`gears <Gear>`. While it shouldn't be used in high load applications, it is fine for general use such as claws or trapdoors. 485HB uses 24 tooth spline; 488 HB uses 25 tooth spline (recommended).

Where Hitec really shines is the high end market. If your budget is over $100, you can get into some very powerful Hitec :term:`servos <Servo>`. Most have titanium :term:`gears <Gear>` and are programmable, so you can dial in the performance and range to exactly what you need.

Axon Robotics, a relatively new company, offers programmable, titanium-geared servos in the $75+ range.

The last big player in the :term:`servo <Servo>` market in FTC is Savox, which produces great mid-high range :term:`servos <Servo>` (think $60-$100+). They are made with titanium :term:`gears <Gear>` (close to bulletproof) and are **fast**. Savox :term:`servos <Servo>` are mostly brushless and coreless, so they do tend to scream a little under load, but they're definitely worth it if your budget allows for it.

Recommended Servos
------------------

We no longer recommend low priced servos. Due to their low strength, they end up requiring multiple replacements over time, negating any cost benefits.

Bang for Your Buck
^^^^^^^^^^^^^^^^^^

- `goBILDA Dual Mode Servo (Torque) (25-2-torque) <https://www.gobilda.com/2000-series-dual-mode-servo-25-2-torque/>`_
  - A very good price to performance servo. It is dual mode, has a higher than average output torque (and correspondingly lower speed), and steel gearbox.
- `goBILDA Dual Mode Servo (Speed) (25-3) <https://www.gobilda.com/2000-series-dual-mode-servo-25-3-speed/>`_
  - A very good price to performance servo. It is dual mode, has a higher than average output speed (and correspondingly lower torque), and steel gearbox.
- `REV Smart Servo <https://www.revrobotics.com/rev-41-1097/>`_
  - While very good price to performance, its brass gearbox makes it less recommended than goBILDA Dual Mode Servos
- `Andymark High Speed/Torque Servo <https://www.andymark.com/products/programmable-servos>`_
  - A newcomer to the market, this servo is extremely promising as a price to performance servo, with a unique 5mm hex output and imperial half inch mounting pattern. The high speed variant has more power output than the commonly used goBILDA Dual Mode servo. The high torque servo has a higher efficiency than the goBILDA Dual Mode servo. **It is unreleased at the time of writing, so these claims have not been verified.** This servo has been included due to Andymark's historical reliability.

Premium Options
^^^^^^^^^^^^^^^

- `Axon Robotics MAX+ <https://axon-robotics.com/products/max>`_
  - The best price to performance high performance servo. It has a high efficiency and a high power output. In addition, this servo can track its absolute position via an analog output wire.
- Hitec titanium servos
  - A reliable choice, Hitec has a large variety of servos making it a good option for super specific servos such as non-standard form factors or specific qualities desired such as high speed or very high torque.

Specialty Servos
^^^^^^^^^^^^^^^^

- `goBILDA 5 Turn Servo <https://www.gobilda.com/2000-series-5-turn-dual-mode-servo-25-2-torque/>`_
   - goBILDA manufactures all three of their Dual Mode servos (Speed, Super Speed, Torque) in 5 turn varients, which can rotate 5 turns while still tracking position. These servos have high range, making them ideal for use with external gearboxes, but are more expensive and have a lower precision than the normal varients.

REV and goBILDA :term:`servos <Servo>` can be purchased from REV and goBILDA websites respectively. For all other servos, some good sources are `ServoCity <https://www.servocity.com/>`_ or `Amazon <https://www.amazon.com/>`_.
