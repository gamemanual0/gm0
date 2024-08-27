Motion Mounting
===============

When mounting a mechanism, it is important to know how to transfer power to it. There are many ways of accomplishing this using an axle.

Live Axle
---------

.. admonition:: Term

   .. glossary::

      Live Axle
         The simplest method of power transmission is called "Live Axle". In this case, the mechanism is physically mounted on a powered axle: **when the axle turns, the mechanism turns with it**. The mechanism on the axle generally is mounted to a hub or pattern adaptor which transmits power from the axle. For this reason, live axle is generally recommended when powering multiple things together on one axle.

This method of power transmission is most commonly used on mechanisms that are mounted directly on a motor, as well as some mechanisms like intakes.

Advantages
^^^^^^^^^^

- Simplest power transmission to build
- Buildable with any COTS system
- Can power several mechanisms on the same axle together easily
- Can be used directly off of a motor shaft

Disadvantages
^^^^^^^^^^^^^

- Can physically take up more space (bearings needed on either side of a shaft)
- Usually requires some form of :doc:`/docs/common-mechanisms/power-transmission/shaft-retention` to prevent the shaft from moving

Dead Axle
---------

.. admonition:: Term

   .. glossary::

      Dead Axle
         Another form of power transmission is called "Dead Axle". In a dead axle setup, the mechanism is mounted on a fixed axle via bearings: **it is free to spin around the axle**. This method requires the power transmission to be physically bolted to the mechanism, because the axle itself will not rotate. For this reason, dead axle is generally recommended when powering one thing that is between two plates, as the axle itself can serve as a standoff to provide support between the plates.

Advantages
^^^^^^^^^^

- Simple power transmission with custom building
- Axle can be used as a standoff support between different plates
- Can require less parts then a live axle setup

Disadvantages
^^^^^^^^^^^^^

- Harder to transmit power over a long shaft
- Usually limited to powering mechanisms between two parallel plates

Zombie Axle (Coaxial)
---------------------

.. admonition:: Term

   .. glossary::

      Zombie Axle
         Zombie axle is when one shaft serves as a dead axle for one mechanism and a live axle for another mechanism. This means **one mechanism is mounted on the shaft via bearings, but the shaft is free to rotate independently to power a second mechanism**. This setup can be used to transmit power to two things using the same revolution point, making it easy to power mechanisms like arms with intakes, or suspension drivetrain pods. Zombie Axle is only recommended when two mechanisms must be powered coaxially to each other.

Advantages
^^^^^^^^^^

- Only power transmission method that can power two mechanisms on the same revolution point

Disadvantages
^^^^^^^^^^^^^

- Has the disadvantages of both live and dead axle
- More mechanically complex
