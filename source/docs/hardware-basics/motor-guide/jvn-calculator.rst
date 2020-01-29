==============
JVN Calculator
==============
With the JVN calculator for FTC, it is possible to calculate the gear ratio that
is necessary for an arm.
The JVN Design Calculator is a very valuable
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
Then, change the gear ratio in the sheet itself.
The bottom left of the sheet has a gear reduction page.
Simply put the overall gear ratio of your gearbox in the right side,
keeping the one on the left.
For example for a NeveRest 20:1,
write in “1” in the driving gear column and “20” in the “driven gear” column.
Then, add the additional gearing.
For example, if the total ratio is 40:1,
there should be a 1:2 ratio in the driving:driven gear ratio below the 1:20.
It doesn’t matter whether it is 10:20, or 42:84 - only the proportion matters.
This gives you a lot of flexibility when looking for the right ratio.
Additional gear reductions can be added if needed.

The same goes for linear mechanisms, with one additional note.
The calculator will ask for a pulley diameter,
so provide the diameter of the spool that the string is wound on.
For a horizontal linear mechanism, neglect stall load.
For vertical linear mechanisms, only pay attention to stall load if the
mechanism will hang the robot.
It is recommended that the load is 60+ pounds for a 40 pound robot for safety.
A good starting point is around 6 in/sec, but most teams will increase the
speed over time.

For 1-speed drivetrains,
just enter in the correct motor specifications and add in the total weight and
wheel diameter.
Don’t worry about the efficiency and speed loss, just keep it where it is.
The adjusted speed will account for sag into field tiles,
loss of efficiency through belts, gears, etc.,
and loss of grip as the wheels eventually wear out.
A good starting point should be around 1.5-2 ft/s,
though many teams have faster drivetrains.

General Tips
============

* Always use the VEX dyno test results for free speed, stall torque,
  stall current, and free current.
* Ensure that the total current draw does not exceed the stall current!
  Generally, this should not be a problem, but it is something to be aware of.
* Stall load refers to how heavy a weight the mechanism can lift at the end
  before it stalls.
  **It is a good principle for the stall load to be 1.5x-2x, or even more,
  of the actual load. This is called a Factor of Safety**.
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
(If the link is broken, search JVN for FTC)
