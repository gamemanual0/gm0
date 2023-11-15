.. include:: <isonum.txt>

Drivetrains
===========

This section will cover the heart of any robot, the drivetrain. The purpose of the drivetrain is to facilitate the movement of the robot, and thus is crucial to the overall function of the robot. If the drivetrain doesn't work, the rest of the robot won't work either. There are many possible types of drivetrains in FTC\ |reg|, which we have covered in the guide. Drivetrains are split into two main types: tank (skid-steer) and holonomic.

Drivetrain types
----------------

.. glossary::

   Tank Drivetrain
      A tank drivetrain primarily utilizes :term:`traction wheels <Traction wheel>` and cannot strafe (move sideways). To change directions, a tank drivetrain relies on either turning the wheels on the left and right side in the opposite direction (thus spinning the robot) or running one side faster than the other side (thus making the robot take the path of an arc). Tank drivetrains prioritize traction and acceleration over pure maneuverability, giving these drivetrains the potential to traverse obstacles and play defense. Tank drivetrains are relatively simple to build, yet are still competitive at the highest levels.

   Holonomic Drivetrain
      A holonomic drivetrain, in contrast to a tank drivetrain, can move sideways, due to using either :term:`mecanum <Mecanum Wheel>` or :term:`omni <Omni Wheel>` wheels. These kinds of wheels have special rollers that allow strafing movements. Thus, holonomic drivetrains prioritize movement over traction. Holonomic drivetrains eliminate the time it takes to turn for a tank drivetrain. However, holonomic is susceptible to defense and can suffer with a heavy robot. Holonomic has been proven to be competitive at the highest level for many years, and is common among world-class robots.

Drivetrain selection
--------------------

When building any mechanism, teams must list out some necessities or desired features. Here are some priorities for that we think are important for each drivetrain:

1. **Reliability**: Reliability, the key to success in *FIRST*\ |reg| Tech Challenge, starts with the drivetrain, the foundation to any robot. One aspect of reliability to consider is the type of motor and gearbox that is used in the drivetrain. For example, spur gearboxes are more likely to break under load than a planetary gearboxes. (See the :doc:`/docs/power-and-electronics/motor-guide/index` for details). Thus, spur gear motors are not the optimal choice for drivetrain, especially if the robot is projected to be on the heavy side (30+ pounds).

.. note:: Generally, more complex drivetrains pose more reliability challenges for inexperienced teams. Our advice is to stick to the simpler drivetrains such as 4 or 6 wheel drive and mecanum drive.

2. **Agility**: There are many factors to agility: top speed, acceleration, turning radius, turn speed, and ability to strafe. Note that turning radius is an often overlooked feature that is critical to the overall agility of the drivetrain. Generally, a solid drivetrain should have a free speed (speed under no load) in the range of 4.5-6 feet/second.

3. **Number of motors and gear ratio**: Generally, new teams may try to use only two motors on the drivetrain. While this is possible, it is not recommended, as all competitive teams use 4+ motors on the drivetrain. Another issue stemming from experience is that most teams' drivetrains are too slow. More advanced teams may focus on the ability to play :term:`defense <Defense>`, but in general, maneuverability and speed are the main factors to a successful drivetrain.

   60:1 and 40:1 motors are **almost always too slow for FTC drivetrain use cases**. Any gear ratio between 16:1 and 20:1 is perfectly reasonable on 4 inch wheels. 19.2:1 on 4 inch wheels is a popular choice because it enables one to go 1 to 1 off of a 19.2:1 planetary motor. This ratio gives a great balance, having near instant acceleration and a high top speed.

   On 3 inch wheels, the equivalent ratios are 12:1 to 15:1, which makes 13.7:1 on 3 inch wheels convenient, as it can be taken 1 to 1 off of goBILDA's 13.7:1 planetary gearbox motor.
   Teams can slow the drivetrain down in code by providing less power to the
   motors if needed.

   .. warning:: It is not recommended for teams to use spur gearboxes on their drivetrain. Instead, use planetary gearboxes, as they are less prone to shock loads and breakage.

4. **Traction/Pushing Power**: While this feature is often overemphasized, it is still very important. Pushing power describes a drivetrain's ability to endure defense/engage in defense. In addition, traction will be important if the drivetrain must traverse obstacles or some sort of terrain.
   Many factors affect the pushing power of a drivetrain, including wheel type,
   motor gearing, and overall weight of the robot.

   .. note:: If you already have a very agile drivetrain with experienced drivers, a team can avoid defense instead of having to fend it off or engage in it.

5. **Powering the drivetrain**: Generally, there are four options for power transmission: direct drive, :term:`chain <Sprocket>`, :term:`gear <Gear>`, and belt. More detail about each option can be found in the power transmission section.

   Teams should stay away from direct drive, as gearboxes are prone to breaking, especially under shock loads (for example, if the wheel is hit by another robot, or the wheel slams into the wall).

   We recommend belted drivetrains, but realize that belt is a difficult option for new teams. Chain and gears are also great options - chain requires a bit more forethought, as 1+ tensioner per side is required to maintain correct tension in the chain.

   CAD or a detailed sketch is generally recommended with chain in order to visualize the chain run (where the chain will be placed). Gears are slightly simpler, and can be a fantastic and easy option, especially when using extrusion. We would advise to stay away from TETRIX gears, and use the gears from other kits such as the REV delrin gears (with hex hub strengthener) or REV aluminum gears.

   See the :doc:`/docs/common-mechanisms/power-transmission/index` section for more details.

**An important step is determining what you want out of your drivetrain**.

- Do you want speed?
- Pushing power?
- Ability to get over terrain?
- Do you need to strafe?

All of these questions should be answered before choosing a drivetrain.

Drivetrain Options
------------------

.. toctree::
   :maxdepth: 2

   tank
   holonomic
   drivetrain-gallery

Glossary
--------

.. glossary::

   Omni Wheel
      Omni(directional) wheels, sold by many different vendors, are a special type of wheel that prioritizes mobility and strafing (moving laterally) over traction or front-back movement. They are similar to :term:`mecanum wheels <Mecanum Wheel>` in that omni wheels have rubber rollers that rotate perpendicular to the plane of the wheel.

      Thus, the robot can move sideways (although the robot is not powered in the sideways direction). It is also utilized as a low-friction wheel in 4 wheel, 6 wheel, and 8 wheel drivetrains instead of having corner traction wheels.

      Furthermore, X-drive utilizes four omni wheels, though traction is at a minimum.

      A mecanum wheel is *technically* an omnidirectional wheel, but when generally referred to, an "omni wheel" has rollers rotated 90 degrees to the rotation of the wheel, where a mecanum wheel is generally 45 degrees.

      .. image:: images/rev-omni-wheel.png
         :alt: A REV Robotics omni wheel
         :width: 200

   Traction wheel
      A traction or grip wheel is a wheel designed for maximum grip. It has an outer ring made of rubber, and its wide track ensures a larger contact patch with the ground. Traction wheels are commonly found in tank drivetrains. They are sold in different sizes and thicknesses by different manufacturers.

   Strafing
      Strafing is the act of moving sideways or laterally (somewhat similar to drifting). It is possible with omni or mecanum wheels, and not possible with traction wheels.

   Parallel Plate Drivetrain
      A parallel plate drivetrain is a drivetrain that has drive pods that consist of 2 plates spread apart with wheels and drive transmission in between them.

      These plates can be anywhere from 1" to 5" apart, depending on the space requirements of the wheels and drive system. Generally, a pod width of 3" or less is desired to maximize the space between the drive pods for mechanisms such as an intake.
