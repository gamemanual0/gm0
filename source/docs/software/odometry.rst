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
    :width: 25em

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
pose where :math:`\varphi = \Delta\theta`

.. math::
    \begin{pmatrix}x\\y\\\theta\end{pmatrix}=\begin{pmatrix}x_0\\y_0\\\theta_0\end{pmatrix}
    +\begin{pmatrix}\Delta x\\\Delta y\\\varphi\end{pmatrix}

The idea of odometry is to use sensor data and math to form
an approximation for the robot's pose over time.

Finding the Change in Position
================================
In order to determine the current location of the robot and
update its pose, the change must be calculated using data
read from the sensors. For a robot, there will be three possible
sensors that you can use: two that are parallel with the robot's
body in the :math:`x`-direction and one that is aligned with
the :math:`y`-direction of movement (perpendicular to the
drive wheels).

Angle and Displacement
-----------------------
The displacement (or change in position) of the left sensor
is :math:`\Delta x_l` and the displacement of the right sensor
is :math:`\Delta x_r`. The lateral distance between these two sensors
is called the trackwidth, notated as :math:`L`. This is very important
for determining angle for turning approximations. This value will
need to be tuned, which means tested repeatedly and then brought
to some converging value that is close to the actual measurement.

.. figure:: images/odometry/offsets-and-trackwidth.png
    :alt: The lateral distance, forward offset, and location of the sensors

    `17508 Rising Tau's 2019/20 Skystone Bot <https://www.learnroadrunner.com/dead-wheels.html#three-wheel-odometry>`_

Deriving the value of :math:`\varphi` then becomes simple:

.. math::
    \varphi = \frac{\Delta x_l - \Delta x_r}{L}

To perform later calculations, we need to know the displacement
of the robot in the x-direction relative to its center rather than
the two parallel sensors. To do this, we take the average to derive
:math:`\Delta x_c`, or the center displacement:

.. math::
    \Delta x_c = \frac{\Delta x_l + \Delta x_r}{2}

The final displacement we need before we can determine
the change in pose is the horizontal displacement :math:`\Delta x_\perp`.
This is the displacement of the perpendicular sensor :math:`\Delta x_h`
with a correction for forward offset :math:`F`. In order to
get accurate approximations, the forward offset needs to be considered.
When the sensor is closer to the back, the offset is negative,
but when it is closer to the front, it is positive. This is to account
for the change in its position based on point-turns.

As a result of this, we can define our horizontal displacement as:

.. math::
    \Delta x_\perp = \Delta x_h - (F * \varphi)

.. note::
    :math:`\Delta x_\perp` is not necessary if you do not have
    perpendicular sensors, which are not required if the
    robot cannot move in the lateral direction.

    For this value, use 0 if you do not have a horizontal
    sensor.

Robot-Relative Deltas
----------------------

Finally, we need to derive the values of :math:`\Delta x` and
:math:`\Delta y`. This requires rotating our displacements
by the half-angle change.

.. math::
    \begin{pmatrix}
    \Delta x \\ \Delta y \\ \varphi
    \end{pmatrix} =
    \begin{pmatrix}
    \cos(\theta_0 + \frac{1}{2}\varphi)&-\sin(\theta_0 + \frac{1}{2}\varphi)&0\\
    \sin(\theta_0 + \frac{1}{2}\varphi)&\cos(\theta_0 + \frac{1}{2}\varphi)&0\\
    0&0&1\end{pmatrix}
    \begin{pmatrix}
    \Delta x_c\\ \Delta x_\perp\\ \varphi
    \end{pmatrix}

From this, we can calculate our our robot-relative change in
pose:

.. math::
    \begin{pmatrix}
    \Delta x \\ \Delta y \\ \varphi
    \end{pmatrix} =
    \begin{pmatrix}
    \Delta x_c \cos(\theta_0 + \frac{1}{2}\varphi) - \Delta x_\perp \sin(\theta_0 + \frac{1}{2}\varphi)\\
    \Delta x_c \sin(\theta_0 + \frac{1}{2}\varphi) + \Delta x_\perp \cos(\theta_0 + \frac{1}{2}\varphi)\\
    \varphi
    \end{pmatrix}

.. warning::
    The following section is for advanced programmers and software teams!
    It is not necessary to utilize this algorithm, but it will benefit
    your odometry approximations.

Odometry Pseudocode
-----------------------
.. code-block:: python

    while robot_is_active():
        delta_left_encoder_pos = left_encoder_pos - prev_left_encoder_pos
        delta_right_encoder_pos = right_encoder_pos - prev_right_encoder_pos
        delta_center_encoder_pos = center_encoder_pos - prev_center_encoder_pos

        phi = (delta_left_encoder_pos - delta_right_encoder_pos) / trackwidth
        delta_middle_pos = (delta_left_encoder_pos + delta_right_encoder_pos) / 2
        delta_perp_pos = delta_center_encoder_pos - forward_offset * phi

        delta_x = delta_middle_pos * cos(heading + 0.5 * phi) - delta_perp_pos * sin(heading + 0.5 * phi)
        delta_y = delta_middle_pos * sin(heading + 0.5 * phi) + delta_perp_pos * cos(heading + 0.5 * phi)
        
        x_pos += delta_x
        y_pos += delta_y
        heading += phi

        prev_left_encoder_pos = left_encoder_pos
        prev_right_encoder_pos = right_encoder_pos
        prev_center_encoder_pos = center_encoder_pos

Using Pose Exponentials
-------------------------
