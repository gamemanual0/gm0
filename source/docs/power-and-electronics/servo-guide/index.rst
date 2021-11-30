Servo Guide
===========

A :term:`servo <Servo>` combines a small electric motor and control circuit in a single compact package. This allows the :term:`servo <Servo>` to rotate to a specified position and hold that position. Typically :term:`servos <Servo>` have limited range of rotation (180° is common).

.. note::

   Servos are **NOT** replacements for DC motors, and should not be used as such. Servos are made for fine-tuned and accurate movement, not high-load or fast rotation applications.

:term:`Servos <Servo>` are commonly used in RC cars (steering) and RC planes (moving ailerons). In FTC, :term:`servos <Servo>` are typically used for claws, grabbers, and arms.

.. figure:: images/hs488.jpg
   :alt: HS488 Hitec servo

   A common :term:`servo <Servo>`, HS488-HB from Hitec

There are many :term:`servos <Servo>` from different manufacturers, which vary widely in price, performance and value. Fortunately, virtually all :term:`servos <Servo>` use the standard 3-wire connector, and accept the same kind of controlling signal (PWM signal at 50 hz). Each :term:`REV Expansion Hub <Expansion Hub>` provides 6 :term:`servo <Servo>` ports, so you can plug in a :term:`servo <Servo>` from any manufacturer. Also, there is a standard size for servos for FTC use, so mounts can be interchanged between manufacturers.

.. note:: FTC robots typically use standard size :term:`servos <Servo>`, not mini or extreme size.

Commonly used :term:`servos <Servo>` used in FTC are the REV Smart Servo and goBILDA Dual mode Servos (`25-2 <https://www.gobilda.com/2000-series-dual-mode-servo-25-2/>`_) and (`25-3 <https://www.gobilda.com/2000-series-dual-mode-servo-25-3-speed/>`_), but you should check out other :term:`servos <Servo>` as well. Picking the right :term:`servo <Servo>` for your application is a question that’s almost impossible to give a blanket answer for. To learn more, please read the :doc:`choosing-servo` section.

The most prevalent problem with :term:`servos <Servo>` is durability. Internal :term:`servo <Servo>` gears in cheaper :term:`servos <Servo>` strip easily when subjected to shock loads. :term:`Servos <Servo>` are also poor at handling lateral loads or bending of the shaft. To avoid having to frequently replace servos, choose ones with metal gears and use :term:`Servoblocks` or your kit's equivalent to prolong longevity.

.. toctree::
   :maxdepth: 1

   choosing-servo
   specialty-servos
   usage-tips
