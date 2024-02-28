.. include:: <isonum.txt>

Kinematics
==========

Kinematics is the application of geometry to the control of various robot mechanisms. Kinematics equations are used to control mechanisms by providing specific inputs to achieve a desired output.

Many of the kinematics equations here were taken from `Controls Engineering in the FIRST Robotics Competition (book) <https://file.tavsys.net/control/controls-engineering-in-frc.pdf>`_ and `Mobile Robot Kinematics for FTC (paper) <https://github.com/acmerobotics/road-runner/blob/master/doc/pdf/Mobile_Robot_Kinematics_for_FTC.pdf>`_, which contain the relevant derivations. While only tank (differential drive) and mecanum kinematics equations are shown here, these sources also contain derivations for other mechanisms such as swerve and dead wheel odometry.

Forward vs Inverse Kinematics
-----------------------------

Mechanisms may have different sets of equations for their forward and inverse kinematics. Forward kinematics are the equations used to determine the state of a system given the state of its outputs, whereas inverse kinematics determines the output of a system given the desired state. For example, in a drivetrain, forward kinematics would determine body velocity of the robot based on the individual velocities of the wheels, whereas inverse kinematics would determine the required wheel velocities for a desired body velocity.


Tank (Differential Drive)
-------------------------

A tank, or differential drive, is a drivetrain consisting of two sets of wheels on either side of the robot that are independently driven. These are described under further detail in the :doc:`/docs/common-mechanisms/drivetrains/tank` section.

Variables
^^^^^^^^^

The following variables are used in this section.

- :math:`v_r` denotes the linear velocity of the right wheel(s)
- :math:`v_l` denotes the linear velocity of the left wheel(s)
- :math:`v_f` denotes the forward velocity of the robot, relative to itself
- :math:`\omega` denotes the rotational velocity of the robot in radians/second
- :math:`r_b` denotes the base track radius, or the distance between the wheel and center of the robot (half of the distance between wheels)

.. warning::

   These variables, with the exception of :math:`\omega`, represent **linear** velocities NOT **rotational** velocities. Wheel rotational velocity in radians/second can be converted to linear velocity by multiplying by the wheel's radius.

   Positive rotational velocity (:math:`\omega`) will spin the robot COUNTERCLOCKWISE when viewed from above.

Forward Kinematics
^^^^^^^^^^^^^^^^^^

The forward kinematics of a tank drive relate the velocity of the wheels to the forward and rotational velocities of the robot, relative to itself. The forward velocity :math:`v_f` and the rotational velocity :math:`v_{\theta}` is:

.. math::

   v_f = \frac{v_r + v_l}{2}

   \omega = \frac{v_r - v_l}{2 r_b}

Inverse Kinematics
^^^^^^^^^^^^^^^^^^

The inverse kinematics of a tank drive relate the desired velocity of the robot to the velocity required of the wheels. These velocities are as follows:

.. math::

   v_r = v_f + r_d \cdot \omega

   v_l = v_f - r_d \cdot \omega

Mecanum Drive
-------------

Variables
^^^^^^^^^

Mecanum kinematics uses the same variables as differential drive, except with four wheel velocity variables and an additional robot velocity vector for the left to right velocity.

- :math:`v_\mathrm{fr}` denotes the linear velocity of the front (leading) right wheel
- :math:`v_\mathrm{br}` denotes the linear velocity of the back (trailing) right wheel
- :math:`v_\mathrm{fl}` denotes the linear velocity of the front (leading) left wheel(s)
- :math:`v_\mathrm{bl}` denotes the linear velocity of the back (trailing) left wheel(s)
- :math:`v_f` denotes the forward velocity of the robot, relative to itself.
- :math:`v_s` denotes the strafe (sideways) velocity of the robot, relative to itself.
- :math:`\omega` denotes the rotational velocity of the robot in radians/second
- :math:`r_b` represents the base track radius, or the distance between the wheel and center of the robot (half of the distance between wheels)

.. warning::

   These variables, with the exception of :math:`\omega`, represent **linear** velocities NOT **rotational** velocities. Wheel rotational velocity in radians/second can be converted to linear velocity by multiplying by the wheel's radius.

   Positive rotational velocity (:math:`\omega`) will spin the robot COUNTERCLOCKWISE when viewed from above.

Forward Kinematics
^^^^^^^^^^^^^^^^^^

The forward kinematics of a mecanum drive relate the velocity of the wheels to the forward, strafe, and rotational velocities of the robot, relative to itself. These are as follows:

.. math::

   v_f = \frac{v_\mathrm{fr} + v_\mathrm{fl} + v_\mathrm{br} + v_\mathrm{bl}}{4}

   v_s = \frac{v_\mathrm{bl} + v_\mathrm{fr} - v_\mathrm{fl} - v_\mathrm{br}}{4}

   \omega = \frac{v_\mathrm{br} + v_\mathrm{fr} - v_\mathrm{fl} - v_\mathrm{bl}}{4*2r_b}

Inverse Kinematics
^^^^^^^^^^^^^^^^^^

The inverse kinematics of a mecanum drive relate the desired velocity of the robot to the velocity required on the wheels. These are as follows:

.. math::

   v_{fl} = v_f - v_s - (2r_b \cdot \omega)

   v_{bl} = v_f + v_s - (2r_b \cdot \omega)

   v_{br} = v_f - v_s + (2r_b \cdot \omega)

   v_{fr} = v_f + v_s + (2r_b \cdot \omega)
