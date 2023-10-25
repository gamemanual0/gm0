Engineering Design Process
==========================

*Note: The exact process will vary from team to team, so the graphic is not meant to be a hard and fast rule.*

.. graphviz::

   digraph {
      define[label="Define the Problem"];
      specify[label="Specify Requirements"];
      brainstorm[label="Brainstorm/CAD Design"];
      prototype[label="Prototype/Experiment"];
      test[label="Test"];
      analyze[label="Analyze Results"];
      implementation[label="Final Implementation"];

      define->specify
      specify->brainstorm
      brainstorm->prototype
      prototype->test
      test->analyze
      analyze->brainstorm
      test->implementation
   }

Components of the Engineering Design Process
--------------------------------------------

In general, the design process contains these steps; however, every team will modify the process to their needs and limitations.

- Define the problem: What are you trying to solve? What is the timeline?
- Specify requirements: What are the necessities for your proposed solution?
- Brainstorm/CAD Design: Draw or sketch a prototype on paper or in CAD.
- Prototype/Experiment: Put a first design together using physical materials.
- Test: Ensure you thoroughly test every part of your prototype to detect flaws.
- Analyze results: Examine what you learned from your tests to iterate successively.
- Final implementation: Polish and solidify a final design that won't change.

As an example, let's look at an imaginary team building a drivetrain for Rover Ruckus (RR2), which was 2018-2019's game. In RR2, there was a crater, which was about 3" tall, and could be traversed. In that year's game, there were two main options: traverse said crater, or not traverse it and instead reach over with an arm.

The team must first specify requirements for the drivetrain. One of the most important aspects of a drivetrain is maneuverability. Another requirement could be speed, traction, reliability, etc. From the team's specified requirements, they would now look at drivetrains that fit their requirements. If the team wanted to traverse the crater, then a 4WD or 6WD would be an optimal design. If they did not need to traverse the crater, many options are still on the table such as the holonomic drivetrains.

The next step would be to brainstorm actual designs. It would be prudent to have more than one student to design one drivetrain prototype, so that the team could test more than one drivetrain.

From there, a team could begin the prototyping and testing process. This could involve tests of the time taken to cross the crater, time from crater to lander, top speed, maneuverability, etc. Simple tests may be conducted instead of complicated ones. For example, if the robot is projected to weigh 30 pounds, a dumbbell placed on top of the drivetrain simulates the extra weight well to see if the drivetrain can get over the crater easily and reliably, so the robot will not get stuck on the crater edge.

Next, analyze results and iterate. If, for example, there was too little clearance, and the drivetrain got stuck on the crater part of the time, then it would be necessary to raise the drivebase in order to remediate this problem. However, don't change too many things at once - **you want to change ONLY ONE variable at a time**, or else you won't know what may cause a further problem should it arise. Always try to change one variable at a time.

.. note:: **It often takes multiple iterations to get things right, so don't be discouraged if your second or even third attempt doesn't perform as well as you think it will**. Many teams have 10+ iterations of intake designs in order to refine and hone down their design to be optimally efficient. While that many tries isn't recommended for new teams, don't be afraid to modify *one factor* at a time to isolate and solve problems.

Your final implementation could be just an upgraded prototype, or, if you had used subpar/scrap materials for a prototype, you could change them out for durable ones.
