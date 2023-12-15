.. include:: <isonum.txt>

Design Tradeoffs
================

+--------------------------------+----------------------------------------+
| **Problem**                    | Solution                               |
+================================+========================================+
| **2 motor drivetrain**         | **4 motor drivetrain**                 |
|                                |                                        |
| - Less power                   | - Ability to traverse obstacles        |
| - Less acceleration            | - Improved power and acceleration      |
+--------------------------------+----------------------------------------+
| **Pushbot**                    | **Mecanum, 6WD, etc.**                 |
|                                |                                        |
| - Poor agility/manuverability  | - More agile, higher top speed         |
| - Poor top speed               | - Customizable gear ratio              |
+--------------------------------+----------------------------------------+
| **Claw**                       | **Intake**                             |
|                                |                                        |
| - Controls 1 element at a time | - Controls multiple elements at a time |
| - Easy to break                | - Much more efficient                  |
+--------------------------------+----------------------------------------+
| **Spur gear gearboxes**        | **Planetary gearboxes**                |
|                                |                                        |
| - Not for high load use cases  | - Better for drivetrains and high load |
| - Will break under shock load  | - Resistant to shock loads             |
+--------------------------------+----------------------------------------+
| **Single/multi-axis arm**      | **Linear extension**                   |
|                                |                                        |
| - Often needs high gear ratio  | - Generally faster than arms           |
| - More complex than linear     | - Much more precise                    |
|   extension                    |                                        |
+--------------------------------+----------------------------------------+

2 Motor Drivetrain |rarr| 4 Motor Drivetrain
--------------------------------------------

.. important:: In general, it is not recommended for teams to use 2 motors on the drivetrain, but instead use 4. This is mainly due to the added power and increased acceleration 4 motors provide.

Typically, top speed is determined by the gear ratio and the motor specifications, not the number of motors. **However**, acceleration is affected by the number of motors, and as FTC\ |reg| robots need to change direction and accelerate numerous times per match, slow acceleration has a significant adverse effect on the competitiveness of the robot. In addition, 2 motor robots may struggle to get over obstacles or climb up ramps, due to less power. One question that often comes up is "don't I need more motors for other things on the robot?" This is a valid question, but the answer is generally no. It is possible to build a competitive robot with 4 motors allocated to drivetrain, and 4 motors for other mechanisms, so there should be no reason to skimp. Do remember that the drivetrain is the foundation of the robot. Your mechanisms will not be anywhere near optimized if the drivetrain can't get your robot from A to B quickly and efficiently. There has not been a game in FTC history where the top robots needed >4 motors for the drivetrain, so this is a pretty safe rule to follow.

Pushbot |rarr| Mecanum, 6WD, Other Recommended Drivetrains
----------------------------------------------------------

.. important:: The pushbot drivetrain, commonly built by first-year teams using the *FIRST*\ |reg|-provided guides, is not recommended as a competitive drivetrain.

We do recommend teams who have purchased the Tetrix kit to build it for educational purposes only - that is, to get familiarized with the parts and basic building principles using a :term:`channel-based <Channel>` kit. However, we do not advise that teams use that pushbot at a competition due to its many flaws.

1. The pushbot is powered by 2 motors, and as stated above, there isn't a reason to stay with 2 motors on drivetrain.
2. The pushbot has poor top speed and turning ability, given that the gear ratio (40:1 on 4 inch wheels) is half the speed that many teams use.
3. It is not advisable to use direct drive.

However, most if not all of these problems will be solved by using a four-motor drivetrain such as the ones recommended in the drivetrain guide (mecanum, 6WD, etc.). Therefore, it is recommended for teams to refer to the :doc:`drivetrain </docs/common-mechanisms/drivetrains/index>` section and see which drivetrain would fit best for their overall game strategy.

Passive Intake/Claw |rarr| Active Intake
----------------------------------------

.. important:: Active intakes (ones with continuous rotational motion) should always be prioritized over passive intakes and grippers.

Active intakes are much more efficient and effective in picking up common game elements such as balls, cubes, and rectangular prisms than claws. This has been a widely accepted rule; many Worlds-level robots over the years use intakes. **The exception** is that a claw should be used for irregularly shaped objects that would be impossible to control via intake; for example, the relic in Relic Recovery.

Intakes have two major advantages over claws.

1. Intakes can control multiple game elements at a time.
2. Intakes are indiscriminate at picking up objects, making them much more efficient.

Claws can only pick up one object at a time, and the driver needs to aim the claw at that specific object to grab it. With an intake, the driver does not need to focus on one game element - instead; intakes will just pick up anything in its path, if designed properly. Claws are also prone to breakage, and thus suffer to defensive robots. They are also generally more fragile than intakes. Therefore, active intakes are as a result much more efficient than claws. Nearly every competitive robot from past years has used active intakes to great effect, so there is plenty of precedent to follow.

Spur Gear Gearboxes |rarr| Planetary Gearboxes
----------------------------------------------

.. note:: Spur gear gearboxes are fine for most applications for a rookie team. We are not advocating necessarily having to upgrade to planetary motors, but there are some advantages which may become useful in more advanced use cases such as high-load systems.

.. important:: Spur gear gearboxes have inherent disadvantages to planetary gearboxes. Spur gear gearboxes should not be used in high-load situations, primarily because the gears can strip and destroy the gearbox.

An example would be a drivetrain that has to change directions repeatedly and quickly. Planetary gearboxes are much better suited for drivetrain and arms, due to the configuration of the sun and planet gears. In addition, spur gear gearboxes are prone to shock loads; therefore, direct drive is not advisable on drivetrains. Refer to the :doc:`gearbox anatomy </docs/power-and-electronics/motor-guide/gearbox-anatomy>` section for more complete information on gearboxes. **This refers to using spur gear gearboxes which are attached directly to the pinion gear of the motor. It does not mean external ratios outside of the motor gearbox, which will always be in a spur gear configuration.**

Single/multi axis arm |rarr| Linear extension
---------------------------------------------

.. important:: Teams are generally advised to stay away from arms and move in the direction of linear slides, primarily due to the issue of complexity. This is because arms typically are less effective than linear extensions and are harder to implement properly.

Arms require a high gear ratio, so arms must be supported extremely well to bear the torque that the motor provides. A poorly supported and/or constructed arm will cause the driver needless pain as it is exceedingly difficult to line up an arm that constantly shakes. In contrast, linear extensions do not need to worry about gear ratios and gearboxes. They can be optimized to be more efficient than arms, and typically are more precise, as linear motion is easier to control than angular motion. Another positive is that linear slides can have more extension than arms, with some reaching 5+ feet in length.
