=============================
Tank (Skid-Steer) Drivetrains
=============================

2 Wheel Drive (Pushbot Drive)
=============================
**Recommended only for first drivetrain, not for competitions**

This rookie drivetrain is considered one of the inferior drivetrains,
though it is usable at low competition levels.
This is the introductory drivetrain type for many rookies,
as it is promoted in official guides published by FIRST
(giving it the name pushbot).
It often has direct driven traction wheels with unpowered omni wheels.
This type of drivetrain has poor turning as the center of turning is at the
back of the robot between the two powered wheels.
In comparison to other drivetrains, it has poor acceleration due to only using
two motors.
Even though it may not be an optimal drivetrain,
it is still possible to be competitive as long as the drivetrain is reliable.
As a consensus, we would advise every new team to build the pushbot primarily
to learn how to build with a kit.
The pushbot is a good starting point and helps the team get familiarized with
using kit parts, attaching wheels, mounting motors, etc.;
however, it is subpar to every other drivetrain in a competitive context.
**While the pushbot is a good first drivetrain for new teams to get acquainted
with the kit, it is recommended that teams move away from this drivetrain when
building their competition robot.**

Advantages
----------

* Most simple drivetrain to build
* No need to worry about powering all four wheels

Disadvantages
-------------

* Slower than other options
* Underpowered (all other drivetrain options typically use 4 motors)
* Uses the Tetrix MAX motor, which is prone to burning out easily, is
  underpowered, and has a fragile gearbox.
* Lacks agility and maneuverability due to 2 motor turning
* Poor acceleration due to 2 motors
* Often direct driven, which is highly discouraged for drivetrains

.. figure:: images/tank/tetrix-pushbot.jpg
    :alt: Tetrix pushbot

    Example pushbot drivetrain included in the starter FTC guide

4 Wheel Drive
=============
In its most common form, the drivetrain uses the same wheel layout as the two
wheel drivetrain (2 traction wheels in the back, 2 omnis in the front),
but with one notable difference: **all four wheels are powered**.
Some teams will put all four traction wheels or use all four omni wheels.
It is not suggested to use all 4 traction wheels due to poor turning that
results in this setup.
This is caused by wheel scrub
(friction between the side of the wheel and the floor tile).
Using omni wheels for all four wheels will result in incredible turning, with
the robot rotating around its center.
However, this advantage comes with a major loss of traction.
For these reasons, many teams choose to use two traction wheels and two omni
wheels for a balance between quick turning and traction.
The primary advantage of this drivetrain over other tank drivetrains is its
ability to easily move across raised terrain when the bot’s center is raised
above the terrain.

It is suggested that a four wheel drivetrain be close to, or exactly, a square.
Otherwise, one may encounter problems turning.
**Weight distribution is furthermore a large factor that should be considered:
the more weight in the back, the better**.
Off-center turning, which may or may not be a drawback,
is nearly ubiquitous among 4 wheel drives.
This may not be a problem for teams, but it is good to be aware of it.
Off-center turning can be an advantage, but be warned that turning will be
slightly slower on 4 wheel drives than their six or eight wheel counterparts.

Advantages
----------

* More maneuverable than 2WD
* Solid acceleration and traction
* Can traverse terrain if the chassis is raised high enough
* Good pushing power for defense, yet maneuverable enough to avoid it

Disadvantages
-------------

* Can tip more easily than 6WD/8WD with a high center of mass
* All traction wheel 4WD can have decreased maneuverability
* Weight distribution factors into the turning point and turning radius of the
  robot

.. figure:: images/tank/3736-modified-4wd.png
    :alt: 3736 Serious Business' modified 4WD

    3736 Serious Business, Rover Ruckus; modified 4WD

.. figure:: images/tank/7209-4wd.jpg
    :alt: 7209 Tech Hog's Relic Recovery Robot

    7209 Tech Hogs, Relic Recovery

.. image:: images/tank/10641-4wd-table.png
    :alt: 10641 Atomic Gear's 4WD on a table

.. figure:: images/tank/10641-4wd-void.png
    :alt: 10641 Atomic Gear's 4WD in a void

    10641 Atomic Gears, Rover Ruckus

6 Wheel Drive (6WD)
===================
A 6 wheel drivetrain is a common competitive drivetrain in FTC for multiple
reasons: it has fantastic traction, great turning,
and by having 6 wheels, the drivetrain has more contact with the ground,
helping with stability and traction.
There are two main types of 6 wheel drivetrains:
ones with **corner omnis** and ones with a **drop center**.

A drop center 6WD is a 6 wheel drive with the center wheel mounted slightly
below the other two wheels.
The drop should be anywhere from more than 1/16” up to 1/4”.
However, the recommended drop is around 1/8”.
Typically, lighter robots (<25 lbs.) can have less drop, while heavier robots
(>25 lbs.) perform slightly better with more than 1/8” drop.
The purpose of dropping the middle wheel is to ensure that only 4 wheels are in
contact with the ground at all times.
This is because turning with 6 wheels on the ground introduces lots of
friction, making it very difficult to turn quickly.
Note that the **required drop may vary depending on both field condition and
weight of the overall robot**.
Turning can drastically degrade due to a difference in material underneath the
field, leading to the robot sinking down further than usual.
Moreover, **most drop center 6 wheel drives are made using custom drivetrains**
because it is difficult to get the center wheel drop using a kit based build
system (a notable exception being REV-based kit drivetrains).
It is possible to execute a drop center using goBILDA and Actobotics using
pillow blocks, but it is a little bit more awkward.

6 wheel drive with corner omni wheels does not have a center drop.
It attempts to solve the issue of turning by replacing the corner traction
wheels with omni wheels, allowing the drivetrain to achieve better turning,
albeit with slightly less traction than a center-drop.
This is very easily buildable in kits, and is a great all-around drivetrain.
Drop center and corner omnis can be combined for maximum turning reliability,
although this comes with side effects like rocking and reduced traction.

(Side note: tolerances in the size of the wheel may affect the traction of this
drivetrain - many VEX Robotics Competition teams have built 6WDs like this only
to find that their center traction wheel wasn’t touching the ground due to
variance in size.
We don’t have data on this phenomenon with FTC-class wheels,
but it’s something to be aware of.)

Advantages
----------

* Great traction and maneuverability
* Good acceleration, can have a high top speed
* Great stability under all robot weights
* Able to play defense

Disadvantages
-------------

* Drop-center 6WD is tricky to build with channel-based systems
* Drop-center 6WD as slightly worse turning, but more traction
* Drop-center 6WD is dependent on field conditions
* Corner omni 6WD has less traction
* Slow gear ratios will make a 6WD feel sluggish

.. figure:: images/tank/tilerunner-6wd.jpg
    :alt: AndyMark's TileRunner 6wd

    COTS Andymark Tilerunner Drivetrain with 0.05” center drop.
    **Not recommended due to price**.

.. figure:: images/tank/7236-6wd.png
    :alt: 7236 Recharged Green's 6wd

    7236 Recharged Green, Rover Ruckus; drop center 6WD

.. figure:: images/tank/5795-6wd.png
    :alt: 5795 Cybots's 6wd

    5975 Cybots, Velocity Vortex, drop center and corner omni 6WD

.. figure:: images/tank/ethan-6wd.jpg
    :alt: Ethan Doak's 6wd

    Ethan Doak, goBILDA 6 wheel drive with corner omni wheels

8 Wheel Drive
=============
An 8 wheel drivetrain is less common than its 6WD counterpart,
combining elements found in both 4 wheel and 6 wheel drivetrains.
For example, the 6 wheel drivetrain generally will have a dropped center wheel
so that the robot turns on four wheels instead of six,
reducing friction and increasing turning mobility.
On an 8 wheel drive, the center four wheels are dropped.
This means that when turning, only these middle four wheels are touching the
ground.
Thus, the 8 wheel drivetrain has slightly more stability while turning than a 6
wheel drive, whereas 6 wheel drives can turn more quickly.
Furthermore, since the 8 wheel drive has wheels in the same place as a 4 wheel
drive, it has the stability of a 4 wheel drive.
It is suggested that all eight wheels should be powered,
and planetary motors should be used over a spur gear motor.
Teams have the option of using doubled omni wheels on the outer four wheels.
Doing so will reduce traction/pushing power and increase mobility.

Advantages
----------

* Combines the stability of 6WD with the agility of 4WD
* Even more stable than 6WD
* Fantastic traction and acceleration
* Great for defense

Disadvantages
-------------

* Takes up more space than 6WD
* Powering all 8 wheels can be tricky
* Without adequate center drop, turning can be drastically reduced

.. figure:: images/tank/3846-8wd.jpg
    :alt: 3846 Maelstrom's 8WD

    3846 Maelstrom, Rover Ruckus

.. image:: images/tank/13075-8wd-render.png
    :alt: A render of 13075 Coram Deo Academy Robotics' 8WD

.. figure:: images/tank/13075-8wd.png
    :alt: 13075 Coram Deo Academy Robotics' 8WD

    13075 Coram Deo Academy Robotics, Rover Ruckus

Tread Drive
===========
Tread drive is the use of tank treads or wide belts to power movement,
much like a real life tank.
Unfortunately, in FTC, it is not a competitive drivetrain for a number of
reasons.
Tread is complex, and has many points of failure.
Treads are also very prone to defense, and a slight hit from another robot is
enough to misalign the treads.
Commercial Off-The-Shelf (COTS) tread options aren’t great either -
TETRIX tracks have a tendency to snap and derail when used on robot
drivetrains, making them not suitable for competition use.
While it is possible to implement tread drive successfully,
such as in the example below, most inexperienced teams do not have the
capability and know-how to do so.
Tread drive has negligible traction improvements at the cost of
maneuverability.
There are better options to traverse terrain, such as a 4WD.

Advantages
----------

* Very good at traversing terrain
* Fantastic traction and pushing power

Disadvantages
-------------

* Suffers in maneuverability and top speed
* Very complex to implement
* Treads are prone to breakage and can fall off easily

.. figure:: images/tank/5975-tread.png
    :alt: 5975 Cybots' Tread Drive Render

    5975 Cybots, Res-Q
