.. include:: <isonum.txt>

Design Strategy
===============

A useful resource is the championship conference presentation from Karthik Kanagasabapathy, former lead mentor (and current advisor) of Hall of Fame team FRC\ |reg| 1114, Simbotics, on effective design and competition strategies: `Effective FIRST Strategies. <https://www.youtube.com/watch?v=5fifL47TvzE>`_ See also the `slideshow from the presentation <https://www.simbotics.org/_files/ugd/81d293_2417ace601d84fb5afaf62f424ad5bd3.pdf>`_.

General Design Tips and Mistakes
--------------------------------

Here are some good tips for teams to make decisions in the high-level design and strategic planning stages.

+--------------------------------+-----------------------------------------+
| Problem                        | Solution                                |
+================================+=========================================+
| **Do everything at once**      | **Perfect one objective first**         |
|                                |                                         |
| - Robot becomes half-baked     | - Robot is highly optimized             |
| - Cannot excel in one area     | - Consistently excels in one area       |
+--------------------------------+-----------------------------------------+
| **Overcomplicate**             | **Simplify**                            |
|                                |                                         |
| - More time needed to iterate  | - Best designs are usually simplest     |
| - Less reliable                | - Less moving parts                     |
+--------------------------------+-----------------------------------------+
| **Score-first design**         | **Design for consistency**              |
|                                |                                         |
| - Neglect proper principles    | - Usually reliability > scoring ability |
| - Often wildly inconsistent    | - Great plus for alliance selection     |
+--------------------------------+-----------------------------------------+
| **Build haphazardly**          | **Build for reliability**               |
|                                |                                         |
| - Build with subpar materials  | - Remove unneeded moving parts          |
| - Inadequate support structure | - Eliminate single points of failure    |
+--------------------------------+-----------------------------------------+
| **Fret about design**          | **Focus on execution**                  |
|                                |                                         |
| - Wastes testing time          | - Make a decision, then stick to it     |
| - Design alone is not enough   | - Execution often beats design          |
+--------------------------------+-----------------------------------------+

Doing Everything At Once |rarr| Perfecting One Objective First
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Consistency is king.**

.. important:: A common pitfall for first year teams is trying to accomplish all the game objectives at once, especially in tele-op and endgame.

**This is highly discouraged** because oftentimes new teams do not have the experience to do so. It is no small achievement to have a consistent robot that completes all objectives in competition, even at the higher levels.

Too often, we see teams bring half-baked robots that will attempt to do everything in a match, but excel at nothing. Even if they succeed, it is often by thin margins and cannot be repeated. This robot could be much more successful if the team spent their time to perfect one mechanism first.

Teams should always remember the principle that a robot that can complete one thing consistently will likely be more competitive than the robot that does everything inconsistently. We recommend teams focus on one objective during tele-op/endgame and perfect it.

.. tip:: Typically, teams which have a solid autonomous and consistent endgame can be competitive at the Qualifier level. This is a recommended goal for new teams.

Overcomplex |rarr| Simple
^^^^^^^^^^^^^^^^^^^^^^^^^

.. important:: Another common trap that teams fall into is to overcomplicate needlessly. Simplifying your robot simplifies possible headaches later.

While some robots are very complicated, keep in mind that those teams are generally experienced, have some sort of machining capability, and fully design their robot in CAD. However, many world-class teams often build designs that are ingenious yet ridiculously simple.

Some advantages to simplicity are that the robot has less points of failure, given that the robot has less moving parts. Additionally, it takes much less time to iterate through and perfect a simple mechanism as opposed to a complicated one. The reasoning is that a complicated system has many more variables that need to be adjusted/could cause problems.

Keeping things simple can be practically achieved through a couple of ways.

#. Limit the degrees of motion that the mechanism operates in. For example, a linear slide goes in and out in a straight line, as opposed to an arm, which rotates along an axis. Doing so will serve to eliminate forces that otherwise could adversely affect the mechanism.

#. Another way to simplify is to build for the shortest travel distance. Obviously, the shortest distance from A to B is in a straight line, so teams should strive to keep the game elements approximately within a reasonably straight line. This can help in solving possible problems if the game elements need to change direction too many times.

Score-first Designing |rarr| Designing for Consistency
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. important:: Teams should prioritize consistency over scoring ability.

The tortoise beats the rabbit. An overused parable, but it still holds a kernel of truth. Why? Because the tortoise, which plodded along consistently, beat the rabbit, which had hot and cold streaks.

A hallmark of any successful team is consistency and reliability throughout the competition season and even across seasons. Sports dynasties are dynasties for the reason that they compete at a high level not for a couple games, but for multiple seasons. Without the power of consistency, it will be nearly impossible to win games, let alone a tournament.

Too many teams fall into the pit of prioritizing scoring ability more than anything else, which is a grave error. In keeping with the first tip, to perfect one objective first, this practice will serve to increase consistency.

.. important:: While scoring ability should be a priority and objective when designing mechanisms, it is not everything in this game. We advise being consistent at low and medium scoring levels than inconsistently scoring at a high level.

Focus on being able to do that one thing every single time throughout your matches, and you will begin to see how important consistency is. **This tip is equally as important during alliance selections. Top teams will prioritize teams that are consistent far more than scoring ability.** They are not afraid to look at teams who can't score much, but can contribute every time to the alliance score, rather than selecting a boom-or-bust pick.

Building haphazardly |rarr| Building for reliability
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. important:: Build for the worst case scenario, not the best case scenario. When building, teams often overlook a key principle: build for reliability. All too often, teams skimp on the quality of construction as well as materials, which leads to one of the most common reasons for unsuccessful tournaments: part failure.

Teams also do not take into account the rigors of competition and build as if the robot will not encounter opposing robots. Sufficient driver practice will be able to better simulate in-game conditions and test the reliability of the robot. To remedy this problem, refer to the :doc:`Materials Guide </docs/custom-manufacturing/materials-guide>` to gain a better understanding of what materials are recommended for use.

If possible, teams should build with redundancy in mind. For example, if one set of linear slides fails due to a wire snapping, having a second set will still allow the robot to operate instead of sitting dead in the water. Practically, doubling mechanisms, motors, and servos is a common method to build for redundancy.

In addition, teams often forget to account for twisting or compression forces that may occur upon the mechanism.

While we cannot give any specific recommendations, do keep in mind what forces the support structure of your mechanism must bear along the full range of motion, and account for what occurs when it might hit another robot/field wall/field. Building more robustly is always worth the time spent. However, it is good to think about the extra weight that results.

Furthermore, a common cause of robot disconnect is wiring issues. Refer to the :doc:`Wiring section </docs/power-and-electronics/wiring>` for more information; in short, make sure to plan ahead and leave space for wires, and use strain relief whenever possible.

All these tips combined will help your robot become more reliable, a key characteristic of all world-level robots.

Fretting about Design |rarr| Focusing on Execution
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. tip:: A good execution of a bad design will beat a bad execution of good design.

.. important:: FTC\ |reg| is all about how well you execute in both the mechanical aspect and the driver aspect. If your goal is winning, then how mechanically beautiful your robot is doesn't matter. Your goal is less of impressing the judges but performing the best you possibly can on the field.

It is very possible to take a bad design, execute it well, and still be competitive at a high level. Even though not many teams are able to do so, it still goes to show that the method of implementation is very important. When brainstorming designs, try not to get hung up on small details if possible.

It is important to discuss different designs and debate the pros & cons, but after a design has been picked, stay with it unless there are major flaws that were originally overlooked. Changing designs will throw away the time spent on the original design, when teams could have kept improving it or practiced more. It is possible to rebuild your robot mid-season, and many top teams have done so to great success.

However, this is not recommended for rookie and new teams due to the general lack of experience. Realistically, expect to spend 50-100+ hours to rebuild a robot from the ground up. Focus on how you can iterate your current design to be as effective, efficient, and refined as possible.

Competition Tips and Mistakes
-----------------------------

Here are some good tips for teams to make decisions in the execution stage.

+---------------------------------+-------------------------------------+
|         **Problem**             |            **Solution**             |
+=================================+=====================================+
| **Neglect drive practice**      | **Constant driver training**        |
|                                 |                                     |
| - Drivers unfamiliar with robot | - Drivers comfortable with controls |
| - Robot reliability untested    | - Proven and tested robot           |
+---------------------------------+-------------------------------------+
| **No game strategy**            | **Strategical driving**             |
|                                 |                                     |
| - Lack of contingency plans     | - Only purposeful actions taken     |
| - Weakens alliance strength     | - Efficient and effective driving   |
+---------------------------------+-------------------------------------+
| **Fully driver-controlled**     | **Partially automated tasks**       |
|                                 |                                     |
| - Less efficient                | - Relieves stress on driver         |
| - Requires more practice        | - Removes human error               |
+---------------------------------+-------------------------------------+

Neglecting driver practice |rarr| Constant driver training
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. important:: A persistent problem with new teams is neglecting driver practice. Drive practice is to be done throughout the season, **not the week before competition.**

No matter how good your robot is, the robot is only 50% of the equation. The driver(s) are the other 50% which determine the success of the team as a whole. Even if your robot is the best in the world, an inferior robot with a competent drive team more than likely will beat your robot with a poor drive team. By April's world championships, most top teams have run hundreds of practice matches.

This gives some obvious advantages compared to a team with lesser practice.

#. The driver(s) are totally familiar with handling the robot in every
   situation.
#. The robot is proven to be reliable enough to survive hours of operation.
#. The immense data that teams gather from test runs are used to optimize every element of the robot.

Driver practice not only familiarizes the driver(s) with the robot and serves as a test of robot reliability, it also simulates in-game conditions. **Learning to push the limits of your robot should be done during practice, not at a competition.** This way, drivers will become more comfortable driving under stress and pressure. Teams with intensive driver practice will purposely make things more difficult (such as placing a disabled robot in the middle of the field or unplugging a drivetrain motor).

While this may seem extreme, it is really just a form of preparedness. If your driver doesn't know how to react, then you need more drive practice.

No game strategy |rarr| Strategic driving
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Similar to drive practice, this is something that many inexperienced teams ignore. A sports example is handy - even with the most talented players, a team won't go far without good game strategy.

.. important:: A less capable team with better strategy execution can often pull off an upset. Planning a strategy ensures that every second in the 2:30 game time is used to maximum efficiency, which yields maximum points.

For example, drivers should know exactly where the robot needs to be positioned after the autonomous to tele-op switch. Practicing this switch will save a couple of seconds when drivers have to think "what do I do now?" In very competitive matches, these few seconds may be able to gain your team an extra cycle. Knowing when to transition from a tele-op to endgame objective is equally important (hint: perfect one first) and will save valuable time. Strategy should **always be used to maximize points** - whether this is a positioning strategy to access the game elements, or a defensive strategy to hinder the other alliance from scoring.

.. tip:: In most seasons, denying the other alliance 10 points is the same value as scoring 10 points in every match.

**However, it is not advisable for rookie teams to play defense** due to the specific rules surrounding this strategy. If a team wishes to execute a defensive strategy, be sure to read all the rules as defense can easily incur penalties/cards if done improperly.

.. admonition:: Term

   .. glossary::

      Defense
         Defense is a strategy employed with the goal of preventing the opposing alliance from scoring points, or at least significantly slowing the opposition's scoring.

         This strategy can backfire if drivers illegally play defense and incur penalties and/or cards for their alliance. Defense is usually played by obstructing the opposing alliance, either by strategically positioning the robot to obstruct access or pushing another team's robot into a disadvantageous position.

Fully driver-controlled driving |rarr| Partially automated tasks
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. important:: Autonomous should not be limited to only the autonomous mode. Automating simple tasks can be a real time-saver and efficiency boost to teams.

#. Automating tasks can save time and reduce the need for driver multi-tasking. Drivers should always be controlling the robot with as few button presses as possible. For example, automatically stopping the intake mechanism when game elements have been collected saves a button press.
#. Autonomously operating some mechanisms has the advantage of eliminating driver error and relieves stress. For example, if a lift has to extend to exactly 30 inches, a motor with an :term:`encoder <Encoder>` can complete that with 100% accuracy at full speed, compared to a human driver's minor error.

.. note:: Autonomous functions should be able to be overrided by manual input in case something goes wrong (e.g. encoder is unplugged, a part breaks, etc.) to prevent damage to the robot and to be compliant with game rules.
