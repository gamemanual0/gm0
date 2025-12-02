.. include:: <isonum.txt>

Choosing a Servo
================

Choosing a :term:`servo <Servo>` can seem daunting at first, given the number of options to consider. This guide is intended to provide a starting point to compare different servo options, and also has some hand picked recommendations at the end.

.. important::

   It is very important to keep the reliability of a given vendor in mind when choosing servos. It is very common for manufacturers and resellers on Amazon and other similar sites to significantly exaggerate their servos' specs, or pick unrealistic best-case scenarios for measuring the specs. We have limited our recommendations only to vendors who historically have been reliable with publishing accurate servo specifications.

   As a rule of thumb established manufacturers (Hitec, Savox, ServoCity, goBILDA, AndyMark, etc) will usually publish accurate numbers, and servos from marketplaces (Amazon, AliExpress, hobby stores, etc) should be viewed with significant skepticism.

Servo Type: Regular or Continuous
---------------------------------

:term:`Servos <Servo>` that can rotate to a given position based on PWM input signal are called **regular servos**. In addition, there are also **continuous rotation servos**, which are effectively just small motors in a :term:`servo <Servo>` form factor. They have no position control; instead, PWM signal is used to control their rotation speed.

.. tip::
   Continuous rotation servos aren't even always in a traditional servo form factor.  The `Melonbotics Super Servo Plus <https://www.melonbotics.com/products/super-servo-plus>`_, while considered a continuous rotation servos from a rules and control system perspective, is essentially a small motor + spur gearbox.  The 1000rpm rated output speed makes it an excellent alternative to large, heavy standard motors for small, high-speed mechanisms such as :doc:`active intakes </docs/common-mechanisms/active-intake/index>`.

Many servos from FTC\ |reg| vendors are Dual Mode, meaning they can switch between continuous and regular modes (often requiring the use of a sold-separately servo programmer). These servos can be used as either continuous or regular servos.

Servo Torque And Speed
----------------------

:term:`Servo` output power is measured in both **speed** and **torque**. Speed (normally in seconds per 60\ |deg|) refers to how fast the :term:`servo <Servo>` turns 60 degrees in Standard Rotation mode.

.. admonition:: Why seconds per 60 degrees?

   Historically, the servos commonly used in FTC were created for RC (Radio Controlled) car setups. These cars often had steering linkages with a maximum side to side travel of 60 degrees so manufacturers would often advertise their servos using seconds for 60 degrees.

Torque (usually measured in oz-in or in kg-cm) refers to the amount of force the :term:`servo <Servo>` can apply to a lever. For reference, if you put a 1" bar on a servo, then put a force gauge on the end, the torque rating of the servo (in oz-in) will be measured.

As you may know, speed and torque will generally have an inverse relationship. You can find some insanely powerful servos that are pretty slow (slower than 0.20 s/60\ |deg|) or some less powerful ones with faster ratios (anything faster than 0.12 s/60\ |deg| is considered fast).

Finding the right :term:`servo <Servo>` for your application can be tough, but a good way is trying to decide if you need more speed or torque, and if your :term:`servo <Servo>` will experience shock loads or not.

Durability and Servo Gear Material
----------------------------------

The two things that threaten a :term:`servo's <Servo>` longevity are the internal motor burning out and more commonly, the :term:`gears <Gear>` stripping inside the :term:`servo <Servo>`. A motor burning out is pretty uncommon, but it can happen under large loads for a prolonged amount of time.

.. caution:: You should **never** stall a servo against an immovable object.

Gear stripping is a problem which can occur when the torque needed to actuate a component exceeds that of the :term:`servo's <Servo>` maximum torque. There are two main cases when this can occur.

- Shock load from external force can strip the :term:`gears <Gear>`. An example could be the component slamming into the field wall or another robot.
- Shock load from reversing directions on an object that is too heavy can strip the :term:`gears <Gear>`. Torque increases with mass and also distance from the center of rotation. If the component being actuated is far from the :term:`servo <Servo>`, the long lever arm means larger torque. Furthermore, if the component is moving, reversing direction also will require more torque. Thus, the principle is that components should be light and not reverse direction suddenly to prolong :term:`servo <Servo>` life.

Shock load resistance is impacted directly by the material the :term:`gears <Gear>` are made from. This ranges from plastic to titanium, so let's go down the list, starting from the weakest.

- **Plastic** (usually Nylon): With low power :term:`servos <Servo>`, these can be okay if you ensure they are not subjected to shock loads. Generally used for applications in model airplanes such as ailerons. FTC applications include light load mechanisms which will not have direct contact with any game elements or the field. An example could be a servo that opens a trapdoor or moves game elements within the robot.

  - **Karbonite**: Hitec's :term:`gear <Gear>` plastic is more durable than Nylon and wears less over time, but it can still strip easily under the shock loads found in FTC.
- **Brass**: Brass :term:`gears <Gear>` are stronger than plastic, but also suffer greatly when faced with shock loads in FTC such as intake wrists and deposit buckets. Brass :term:`gears <Gear>` are found on slightly higher end servos such as the original REV Smart Robot Servo.
- **Steel**: This is where we start getting big. Steel :term:`gears <Gear>` are very durable and you'll have a tough time stripping these. The goBILDA Proton servos, goBILDA Dual Mode servos, REV V2 Smart Robot Servos, and Axon servos are all examples of steel :term:`gear <Gear>` :term:`servo <Servo>`.
- **Titanium**: Titanium is where you get into really high end :term:`servos <Servo>`. Starting from $75, they can reach over $150. A common misconception is that titanium is stronger than steel, however its advantage is in strength to weight ratio (as in, titanium gearboxes will often be lighter than steel gearboxes).

:term:`Servos <Servo>` with weaker materials (e.g. plastic and brass) used for their :term:`gears <Gear>` will often strip quite easily.  Servos with steel :term:`gears <Gear>` are significantly harder to strip; some teams have even reported stripping the aluminum hubs attached to their servos while the servos themselves survived with no damage.

Servo Size
----------

:term:`Servos <Servo>` come in different sizes. Fortunately, almost all manufacturers use the same standard set of :term:`servo <Servo>` sizes, ranging from sub-micro to large. The size most commonly used in FTC is the *standard size* (which includes REV Smart Robot Servos and goBILDA Dual Mode Servos) :term:`servos <Servo>`. *Micro size* (which includes the Axon Micro) :term:`servos <Servo>` can be useful when a particularly small mechanism is needed, though they usually are significantly less durable than *standard size* :term:`servos <Servo>`. *Large size* (also known as quarter-scale) :term:`servos <Servo>` are quite uncommon in FTC.

Note that while it is easy to assume the larger the size, the more powerful the :term:`servo <Servo>`, it is often not the case. You can buy very powerful standard size :term:`servos <Servo>` - just expect to pay more for them.

Servo Spline
------------

The output shaft of the :term:`servo <Servo>` is commonly called the **spline**. Most servos have industry standard 25 tooth spline (also known as F3); in particular, this is the spline used by REV Smart Servo and goBILDA Dual Mode servos. Hitec servos using 24 tooth spline were historically also very popular, but are much less common today.

AndyMark servos are an exception to this, as they use a 5mm hex shaft as their output instead of a 24 or 25 tooth servo spline.

.. attention:: Please check the spline type before you buy the :term:`servo <Servo>` - otherwise, your :term:`servo <Servo>` attachments will not fit.

For more info about servo splines, please check https://www.servocity.com/servo-spline-info/.

Servo Range
-----------

The angle over which a non-continuous :term:`servo <Servo>` can rotate while retaining position feedback is called the range. When choosing a servo, it is important to make sure you have enough range for the movement you need.

By default, the FTC control system outputs 600-2400 microsecond signals. However, this range can be expanded to 500-2500 microseconds. When choosing a servo, it is important to make sure that its range will be usable for your application inside of 500-2500 microseconds.

.. note::

   The default 600-2400 range of the FTC control system when selecting the "Servo" configuration limits the range of many servos to less than the advertised range. Make sure you select the "Full Range Servo" configuration instead to get the full 500-2500 range.

Cost
----

:term:`Servos <Servo>` range from cheap $7 :term:`servos <Servo>` for light applications, all the way up to some Hitec or Savox :term:`servos <Servo>` for close to $200.

By far the best bang for your buck :term:`servos <Servo>` out there are going to be the **goBILDA Dual Mode Servos** and **REV V2 Smart Robot Servos**. In addition, the **goBILDA Proton** servos are an excellent value for low-load mechanisms when you do not need more than 180 degrees of rotation or continuous rotation.

Axon Robotics offers brushless, highly-programmable, steel-geared servos in the $90 price range.  These servos are designed specifically for FTC, and are extremely popular among teams wishing to maximize their robot's capabilities and performance.

Recommended Servos
------------------

.. note::
   We do not recommend very low-priced servos. Due to their low strength, they end up requiring multiple replacements over time, negating any cost benefits.

- `goBILDA Servos <https://www.gobilda.com/standard-size-servos>`_: goBILDA offers a wide variety of servos suited excellently for FTC.

  - **goBILDA Dual Mode Servos** are very good price to performance/capability servos. They are dual mode, meaning you can program them to either standard or continuous rotation using a `goBILDA servo programmer <https://www.gobilda.com/servo-programmer-for-2000-series-dual-mode-servo/>`_ or `REV servo programmer <https://www.revrobotics.com/rev-31-1108/>`_. In standard mode, they are rated for up to 300 degrees of range. They come in three gear ratio options: Torque, Speed, and Super Speed. They are rated for a reasonably high total mechanical output power (around 2.7W for the Torque and Speed, and around 3.2W for the Super Speed), and have steel gearboxes.
  - **goBILDA 5 Turn Servos** are 5 turn variants of their standard Dual Mode servos, which can rotate 5 turns while still tracking position. These servos have high range, making them ideal for use with external gearboxes, but are more expensive and have a lower precision than the normal variants.
  - **goBILDA Proton Servos** are goBILDA's budget servos, coming it at approximately half the price of the standard Dual Mode servos. They come in two gear ratio options, Torque and Speed. Unlike the Dual Mode servos, these are not programmable, and therefore can not be used as continuous rotation servos. While their total mechanical power output of approximately 0.7W is a fair bit less than the Dual Mode servos, and they only have a 180 degree rotation range, their low price makes them a decent option for low-load mechanisms, and their steel gearboxes greatly reduce the chances of breaking the servos from accidental shock loads compared to other brands' budget servos.
- `REV Robotics V2 Smart Robot Servos <https://www.revrobotics.com/Smart-servo-v2>`_: These are similar to the goBILDA Dual Mode servos in price, performance, and capability. They are also dual mode, meaning you can program them to either standard or continuous rotation using a `goBILDA servo programmer <https://www.gobilda.com/servo-programmer-for-2000-series-dual-mode-servo/>`_ or `REV servo programmer <https://www.revrobotics.com/rev-31-1108/>`_. In standard mode, they are rated for up to 270 degrees of range. They come in two gear ratio options, Balanced and UltraSpeed. The UltraSpeed is rated for a relatively high total mechanical output power of approximately 3.5W, and the Balanced is rated for a somewhat lower output of approximately 2.5W. They have steel gearboxes.
- `Melonbotics Super Servo Plus <https://www.melonbotics.com/products/super-servo-plus>`_: This servo is different from the other servos listed here. While considered a continuous rotation servos from a rules and control system perspective, it is essentially a small motor + spur gearbox.  The 1000rpm rated output speed makes it an excellent alternative to large, heavy standard motors for small, high-speed mechanisms such as :doc:`active intakes </docs/common-mechanisms/active-intake/index>`.
- `Axon MAX MK2 <https://axon-robotics.com/products/max>`_: This is widely considered to be the best high performance servo for FTC. It has uses heat-treated stainless steel gears for top-notch reliability, and has a very high rated total mechanical power output of 7.5W (only 0.5W below the 8W limit defined in the Competition Manual). The servo features an analog output wire, allowing you to read the absolute position of the servo. The Axon MK2 servos are also highly programmable with the `Programmer MK2 <https://axon-robotics.com/products/programmer>`_, featuring a wide range of adjustable parameters and modes (including standard and continuous rotation modes).

  .. tip::

     Being able to read the absolute position of the servo can have significant benefits when programming your robot. For example, you can tell the servo to go to a position, wait for it to reach that position, then do the next action; as opposed to telling the servo to go to a position, waiting a set amount of time (which may be longer or shorter than the time actually needed), then doing the next action.

  .. important::

     The `Axon MINI MK2 <https://axon-robotics.com/products/mini>`_ is very similar to the MAX in terms of total output power (though geared at a slightly faster speed/lower torque), and has the same features (including the heat treated stainless steel gears, programmability, and analog output wire). However, this servo is a slightly different form factor to the standard form factor used by the other servos on this list.  While the height is shorter than the MAX, it is slightly wider, and the servo horn is in a different position compared to the standard servo size. Due to this, we don't recommend the MINI for anything other than fully custom-designed mechanisms not relying on standard mounts and horn position.
