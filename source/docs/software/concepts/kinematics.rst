Kinematics
==========

Kinematics is the application of geometry to the control of various robot mechanisms. In control systems, kinematics equations are used to control mechanisms by providing specific inputs to achieve a desired output. Many of the kinematics derivations were taken from the book `Controls Engineering in the FIRST Robotics Competition <https://file.tavsys.net/control/controls-engineering-in-frc.pdf>`_ and the `Mobile Robot Kinematics for FTC Paper <https://github.com/acmerobotics/road-runner/blob/master/doc/pdf/Mobile_Robot_Kinematics_for_FTC.pdf>`_. While only tank (differential drive) and mecanum are explained here, these papers contain derivations for other esoteric drivetrains like swerve, as well as localization systems like dead wheel odometry.

Forward vs Inverse Kinematics
-----------------------------

Mechanisms may have different sets of equations for their forward and inverse kinematics. Forward kinematics is the equations used to determine the state of a system given the state of its outputs, whereas inverse kinematics determines the output of a system given the desired state. For example, in a mecanum drivetrain, forward kinematics would determine body velocity of the robot based on the individual velocities of the wheels, whereas inverse kinematics would determine the required wheel velocities for a desired body velocity.


Tank (Differential Drive)
-------------------------
A tank, or differential drive, is a drivetrain consisting of two sets of wheels on either side of the robot that are independently drive. Common tank drives include 2 Wheel Drives, 4 Wheel Drives, 6 Wheel Drives, and 8 Wheel drives.

Variables
^^^^^^^^^

The following variables are used in this section.

:math:`v_r` denotes the linear velocity of the right wheel(s)

:math:`v_l` denotes the linear velocity of the left wheel(s)

:math:`v_f` represents the forward velocity of the robot, relative to itself.

:math:`v_{\theta}` represents the rotational velocity of the robot

:math:`r_b` represents the base track radius, or the distance between the wheel and center of the robot (half of the distance between wheels)

.. warning:: These variables, with the exception of :math:`v_{\theta}` represent **linear** velocities, NOT **rotational** velocities. One can convert between rotational and linear by multiplying the wheel's rotational speed in radians per second by its radius. In addition, positive rotational velocity will spin the robot COUNTERCLOCKWISE when viewed from above.

.. tip:: While the math for kinematics is fairly unitless, we assume radians per second for rotational speed to simplify the math. However, make sure that consistent units are used when implementing these equations.

Forward Kinematics
^^^^^^^^^^^^^^^^^^
The forward kinematics of a tank drive relates the velocity of the wheels to the forward and rotational velocities of the robot, relative to itself. The forward velocity :math:`v_f` and the rotational velocity :math:`v_{\theta}` is simply:

.. math::

   v_f = \frac{v_r + v_l}{2}

   v_{\theta} = \frac{v_r - v_l}{2 r_b}

Inverse Kinematics
^^^^^^^^^^^^^^^^^^
The inverse kinematics of a tank drive relates the desired velocity of the robot to the velocity required of the wheels. These velocities are as follows:

.. math::

   v_r = \frac{v_f + r_d}{2 v_{\theta}}

   v_l = \frac{v_f + r_d}{2 v_{\theta}}

Mecanum Drive
-------------

Variables
^^^^^^^^^
Mecanum kinematics uses the same variables as differential drive, except with four wheel velocity variables and an additional robot velocity vector for the left to right velocity.

:math:`v_{fr}` denotes the linear velocity of the front (leading) right wheel

:math:`v_{br}` denotes the linear velocity of the back (trailing) right wheel

:math:`v_{fl}` denotes the linear velocity of the front (leading) left wheel(s)

:math:`v_{bl}` denotes the linear velocity of the back (trailing) left wheel(s)

:math:`v_f` represents the forward velocity of the robot, relative to itself.

:math:`v_s` represents the strafe (sideways) velocity of the robot, relative to itself.

:math:`v_{\theta}` represents the rotational velocity of the robot

:math:`r_b` represents the base track radius, or the distance between the wheel and center of the robot (half of the distance between wheels)

.. warning:: These variables, with the exception of :math:`v_{\theta}` represent **linear** velocities, NOT **rotational** velocities. One can convert between rotational and linear by multiplying the wheel's rotational speed in radians per second by its radius. In addition, positive rotational velocity will spin the robot COUNTERCLOCKWISE when viewed from above.

.. tip:: While the math for kinematics is fairly unitless, we assume radians per second for rotational speed to simplify the math. However, make sure that consistent units are used when implementing these equations.

Forward Kinematics
^^^^^^^^^^^^^^^^^^
The forward kinematics of a mecanum drive relates the velocity of the wheels to the forward, strafe, and rotational velocities of the robot, relative to itself. These are as follows:

.. math::

   v_f = \frac{v_{fr} + v_{fl} + v_{br} + v_{bl}}{4}

   v_s = \frac{v_{bl} + v_{fr} - v_{fl} - v_{br}}{4}

   v_{\theta} = \frac{v_{br} + v_{fr} - v_{fl} - v_{bl}}{8r_b}

Inverse Kinematics
^^^^^^^^^^^^^^^^^^
The inverse kinematics of a mecanum drive relates the desired velocity of the robot to the velocity required on the wheels. These are as follows:

.. math::

   v_{fl} = v_f - v_s - (2r_b \cdot v_{\theta})

   v_{rl} = v_f + v_s - (2r_b \cdot v_{\theta})

   v_{br} = v_f - v_s + (2r_b \cdot v_{\theta})

   v_{fr} = v_f + v_s + (2r_b \cdot v_{\theta})
