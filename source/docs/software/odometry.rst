=============
Odometry
=============
Odometry is a form of localization that uses data from sensors
like encoders to derive an estimated position relative to a
starting point. Localization is a means for being able to locate
the position of the bot at some point in time. Odometry is especially
useful in autonomous programs because it allows for easier implementation
of different tasks on the field due to understanding one's position

Pose
=============
We refer to pose, which is the position of some body (like a bot),
normally in the context two-dimensional space,
as the movement of the robot is generally constrained to a
single plane. We notate the robot's pose as :math:`\vec{x}`.
A pose contains two entries: the robot's position and heading;
position is generally in Cartesian coordinates, so the pose
can be represented with :math:`x`, :math:`y`, and :math:`\theta`.
A "heading" is a term for the direction towards which
the front of the robot is facing. Because of this, the robot's
coordinate frame is set up such that the global x-axis is lined up
with the 0 heading.

.. figure:: images/odometry/coordinate-frame.png
    :alt: The directional axes of the robot with respect to its body

    `Road Runner Coordinate Frame Documentation <https://acme-robotics.gitbook.io/road-runner/tour/coordinate-frame>`_

We can refer to the current pose (:math:`\vec{x}_0`) of the robot as
:math:`\begin{pmatrix} x_0 \\ y_0 \\ \theta_0 \end{pmatrix}`.
This is just fancy notation for a point on the field :math:`(x_0, y_0)`
with a specified orientation of the robot--the heading :math:`\theta_0`.

Updating the Pose
---------------------
The change in pose over some very small amount of time is
:math:`\Delta \vec{x}`. The difference in time between the current
pose and the last pose should be as small as possible to improve
the approximations for the math. Teams should update their robot
pose every cycle of their control loop.

Updating the pose is as simple as adding the change to the previous
pose:

.. math::
    \begin{pmatrix}x\\y\\\theta\end{pmatrix}=\begin{pmatrix}x_0\\y_0\\\theta_0\end{pmatrix}
    +\begin{pmatrix}\Delta x\\\Delta y\\\varphi\end{pmatrix}

The idea of odometry is to use sensor data and math to form
an approximation for the robot's pose over time.
