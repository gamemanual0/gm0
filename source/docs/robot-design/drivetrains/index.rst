===========
Drivetrains
===========
This section will cover the heart of any robot, the drivetrain.
The purpose of the drivetrain is to facilitate the movement of the robot,
and thus is crucial to the overall function of the robot.
If the drivetrain doesn’t work, the rest of the robot won’t work either.
There are many possible types of drivetrains in FTC,
which we have covered in the guide.
Drivetrains are split into two main types: tank (skid-steer) and holonomic.

Drivetrain types
==================================
A tank drivetrain primarily utilizes traction wheels and cannot strafe
(move sideways).
To change directions, a tank drivetrain relies on either turning the wheels on
the left and right side in the opposite direction (thus spinning the robot) or
running one side faster than the other side
(thus making the robot take the path of an arc).
Tank drivetrains prioritize traction and acceleration over pure
maneuverability, giving these drivetrains the potential to traverse obstacles
and play defense.
Tank drivetrains are relatively simple to build,
yet are still competitive at the highest levels.

A holonomic drivetrain, in contrast to a tank drivetrain, can move sideways,
due to using either mecanum or omni wheels.
These kinds of wheels have special rollers that allow strafing movements.
Thus, holonomic drivetrains prioritize movement over traction.
Holonomic drivetrains eliminate the time it takes to turn for a tank
drivetrain.
However, holonomic is susceptible to defense and can suffer with a heavy robot.
Holonomic has been proven to be competitive at the highest level for many
years, and is common among world-class robots.

Drivetrain selection
==========================

When building any mechanism,
teams must list out some necessities or desired features.
Here are some priorities for that we think are important for each drivetrain:

1. **Reliability**: Reliability, the key to success in FIRST Tech Challenge,
   starts with the drivetrain, the foundation to any robot.
   One aspect of reliability to consider is the type of motor and gearbox that
   is used in the drivetrain.
   For example, spur gearboxes are more likely to break under load than a
   planetary gearboxes.
   (See :doc:`../../hardware-basics/motor-guide/index` for details).
   Thus, spur gear motors are not the optimal choice for drivetrain,
   especially if the robot is projected to be on the heavy side (30+ pounds).

   Generally, more complex drivetrains pose more reliability challenges for
   inexperienced teams.
   Our advice is to stick to the simpler drivetrains such as 4 or 6 wheel drive
   and mecanum drive.
2. **Agility**: There are many factors to agility: top speed, acceleration,
   turning radius, turn speed, and ability to strafe.
   Note that turning radius is an often overlooked feature that is critical to
   the overall agility of the drivetrain.
   Generally, a solid drivetrain should have a maximum speed of around 2-3.5
   feet/second, and be able to turn fully in around two seconds.
   A good resource to determine the agility of a drivetrain is the
   :doc:`../../hardware-basics//motor-guide/jvn-calculator`;
   refer to that section for more information.
3. **Number of motors and gear ratio**: Generally, new teams may try to use
   only two motors on the drivetrain.
   While this is possible, it is not recommended,
   as all competitive teams use 4+ motors on the drivetrain.
   Another issue stemming from experience is that most teams’ drivetrains are
   too slow.
   More advanced teams may focus on the ability to play defense,
   but in general, maneuverability and speed are the main factors to a
   successful drivetrain.
   60:1 and 40:1 drivetrains are
   **almost always too slow for FTC use cases**.
   A popular setup in FTC is **4 motor, 20:1 using 4 inch wheels**.
   This ratio gives a great balance,
   having near instant acceleration and a high top speed.
   Teams can slow the drivetrain down in code by providing less power to the
   motors if needed.
   **It is not recommended for teams to use spur gearboxes on their drivetrain.
   Instead, use planetary gearboxes, as they are less prone to shock loads and
   breakage.**
4. **Traction/Pushing Power**: While this feature is often overemphasized,
   it is still very important.
   Pushing power describes a drivetrain’s ability to endure defense/engage in
   defense.
   Many factors affect the pushing power of a drivetrain, including wheel type,
   motor gearing, and overall weight of the robot.
   Note that if you already have a very agile drivetrain with experienced
   drivers, a team can avoid defense instead of having to fend it off or engage
   in it.
5. **Powering the drivetrain**: Generally, there are four options for power
   transmission: direct drive, chain, gears, and belt.
   More detail about each option can be found in the power transmission
   section.
   Teams should stay away from direct drive, as gearboxes are prone to
   breaking, especially under shock loads
   (for example, if the wheel is hit by another robot, or the wheel slams into
   the wall).
   We recommend belted drivetrains, but realize that belt is a difficult option
   for new teams.
   Chain and gears are also great options - chain requires a bit more
   forethought, as 1+ tensioner per side is required to maintain correct
   tension in the chain.
   CAD or a detailed sketch is generally recommended with chain in order to
   visualize the chain run (where the chain will be placed).
   Gears are slightly simpler, and can be a fantastic and easy option,
   especially when using extrusion.
   We would advise to stay away from TETRIX gears,
   and use the gears from other kits such as the REV delrin gears
   (with hex hub strengthener) or REV aluminum gears.
   See :doc:`../power-transmission/index` for more details.

**An important step is determining what you want out of your drivetrain**.

* Do you want speed?
* Pushing power?
* Ability to get over terrain?
* Do you need to strafe?
* All of these questions need to be answered before choosing a drivetrain.

Drivetrain Options
==================
.. toctree::
   :maxdepth: 2

   tank
   holonomic
   cad-tutorials
   drivetrain-gallery
