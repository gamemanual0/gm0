==============
JVN Calculator
==============
The JVN Design calculator for FTC allows teams to calculate the gear ratio that
is necessary for a mechanism like a drivetrain or arm.
This is a very valuable
resource for picking appropriate gear ratios for almost application you need.
It was developed by `John V-Neun <https://johnvneun.com>`_, coach of FRC 148,
and was initially designed for FRC calculations.

It is fairly intuitive,
but can save a lot of time doing calculations on your own,
especially when developing designs like arms, linear slides, and drivetrains.
This is as the balance between power/torque and speed is critical to the end
design.
For example, arms require much more torque than speed,
while linear slides need very little torque to maximize speed.

To use the calculator for rotary mechanisms (arms), select the Rotary Arm
sheet.
A good practice is to “pencil in” VEX’s dynamometer testing for the bare
NeveRest motor.

**The VEX dyno test is a trusted and accurate resource for teams,
even though its results are significantly higher than the specifications posted
on vendor pages**.

The test results may be found by searching VEX Dyno Testing, or by clicking
`here <https://motors.vex.com/other-motors/am-NeveRest>`_.
(Note: this testing is done to the bare motor, without the end gearbox.)

Gear Ratios
===========

After entering in dyno data, change the gear ratio in the sheet itself.
The bottom left has a gear reduction page.
Simply put the overall gear ratio **of your gearbox** in the right side,
keeping the one on the left.
For example for a NeveRest 20:1,
write in “1” in the driving gear column and “20” in the “driven gear” column.
Then, add any external gear ratios.
For example, if the total ratio is 40:1,
there should be a 1:2 ratio in the driving:driven gear ratio below the 1:20.
It doesn’t matter whether it is 10:20, or 42:84 - only the proportion matters.
This gives you a lot of flexibility when looking for the right ratio.
Additional gear reductions can be added if needed.

Linear Mechanisms
=================

The same goes for linear mechanisms, with one additional note.
The calculator will ask for a pulley diameter,
so provide the diameter of the spool that the string is wound on.
For a horizontal linear mechanism, neglect stall load.
For vertical linear mechanisms, only pay attention to stall load if the
mechanism will hang the robot.

..  note::  It is recommended that the factor of safety for a hang be 1.5-2x the weight of the robot.
  Thus, the load should be 60-80+ pounds for a 40 pound robot.

A good starting point for non-hang extensions is around 6 in/sec, but most
teams will increase speed over time.
It may be prudent to start slower, though,
to allow your driver to adjust to the speed before increasing it.

Drivetrains
===========
For 1-speed drivetrains,
just enter in the correct motor specifications and add in the total weight and
wheel diameter.
Don’t worry about the efficiency and speed loss, just keep it where it is.
The adjusted speed will account for sag into field tiles,
loss of efficiency through belts, gears, etc.,
and loss of grip as the wheels eventually wear out.
A good starting point should be around 2 ft/s,
though many teams have faster drivetrains ranging to 5+ ft/s.
Bear in mind that for inexperienced teams,
a fast drivetrain decreases controllability.


General Tips
============

* Always use the VEX dyno test results for free speed, stall torque,
  stall current, and free current.
* Ensure that the total current draw does not exceed the stall current!
  Generally, this should not be a problem, but it is something to be aware of.
* For linear slides, maximize linear speed by using a low gear ratio.
  For arms, maximize torque by using a high gear ratio.
* You need to keep in mind the loaded current draw on your motor.
  Your motor has a stall current of ~10 amps, so you don’t want to exceed that.
  You also have a 20amp fuse on your battery,
  so make sure that you don’t exceed that for too long,
  or else you’ll pop the fuse.
* With each stage of gears, chains or belts, you lose efficiency.
  Depending on how well you build your system and what you are using,
  the percent loss changes.
  However, generally it is around :math:`5\%` per stage.
  Meaning that if you had three stages of gears, your efficiency should be
  :math:`0.95^3`, or approximately :math:`0.857` or :math:`85.7\%`.

`Download Link <https://www.chiefdelphi.com/uploads/default/original/3X/1/6/16e019399060799a45f54f4d75a8aa5fee1f394f.xlsx>`_
(If the link is broken, search JVN for FTC).
