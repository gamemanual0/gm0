=============
Odometry
=============
Odometry is a form of localization that uses data from sensors like encoders
to derive an estimated position relative to a starting point. We can measure position
using what is known as a Pose2d, or a two-dimensional position that includes the x-coordinate,
y-coordinate, and robot heading.

Pose
=============
We refer to pose, which is shorthand for position, normally in the context two-dimensional space,
as the movement of the robot is generally constrained to a single plane. We notate the robot's pose
as :math:`\vec{x}`