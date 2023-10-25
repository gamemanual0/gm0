Direct Drive
============

.. admonition:: Term

   .. glossary::

      Direct Drive
         Powering a mechanical part (most commonly a drive wheel) directly from the motor axis. Many new and inexperienced teams will use this method to power their drivetrain as it is the simplest way to do so. However, there are significant drawbacks to this method.

Direct drive puts unnecessary load on the drive motor. This is because shock loads can destroy gearboxes, even :term:`planetary gearboxes <Planetary Gear>`. Gearboxes are able to withstand load along the axis of rotation, such as what occurs when the wheel changes direction. This is a normal situation of load. However, in direct drive, the gearbox shaft can be exposed to other shock loads outside of the normal axis. This happens when the wheel comes into contact with another robot or the field wall, which honestly happens more than you'd think. This can bend the motor shaft or permanently damage the gearbox.

It also limits the :term:`gear ratio <Gear Reduction>` to whatever ratio the motor gearbox is at. One advantage of all the other three transmission systems is the ability to gear up or down, based on a team's needs. Direct drive cannot do so, and if your drivetrain uses 40:1 gearboxes, there is no way to reduce this ratio to a faster 20:1 gearbox, for example.

Motor shafts are not built to carry large amounts of downward load. This can lead to bending of the motor shaft, since in direct drive the shaft is only supported by one side, the gearbox. Generally, a principle among all engineers is to support the shaft on both sides, which isn't possible in this case. This leads to :term:`cantilevering <Cantilever>` the shaft, something that should be avoided in general. Thus, with a heavy robot the motor shafts can easily be bent due to a lack of support. (While typically it is impossible to support a motor shaft on both ends, it is a common rule of thumb to have dual support on wheels or other non-motor shafts.)

.. admonition:: Term

   .. glossary::

      Cantilever
         A cantilever refers to when an object (usually a :term:`shaft <Shaft>`) is only supported on one side. While this provides theoretically less support, as long as the shaft is still supported at two points by :term:`bearings <Ball Bearing>` or :term:`bushings <Bushing>`, cantilever is still a sound building technique. Many drivetrains are cantilevered, which provides for easy access to wheels.

         Supporting a shaft on both sides is theoretically more structurally sound, although in most cases you won't notice a difference.

         .. figure:: images/sanford-cantilever.png
            :alt: Sanford's cantilever 6WD prototype

            Sanford's Prototype

Advantages
----------

- Saves space
- Easy to build; most simple form of transmission

Disadvantages
-------------

- Prone to shock loads which destroy the gearbox
- Limited gear ratio to the motor itself
- Wears the gearbox of the motor faster
- Can bend the motor shaft

.. figure:: images/direct-drive/outside-supported-direct-drive.jpg
   :alt: A drivetrain with the wheel directly driven, but with an externally supported shaft

   11316, Weapons of Mass Construction

   *Outside* Supported Direct Drive (**Preferred Version of Direct Drive**)

.. figure:: images/direct-drive/inside-supported-direct-drive.png
   :alt: A drivetrain with the wheel directly driven, but with an internally supported shaft

   Ethan Doak

   *Inside* Supported Direct Drive (**Preferred Version of Direct Drive**)

.. figure:: images/direct-drive/unsupported-direct-drive.jpg
   :alt: A drivetrain with the wheel direct mounted, but with an unsupported shaft

   11316, Weapons of Mass Construction

   Unsupported Direct Drive (**not recommended**)
