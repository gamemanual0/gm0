.. include:: <isonum.txt>

Servo Guide
===========

.. admonition:: Term

   .. glossary::

      Servo
         a small DC motor attached to servo gears that is very finely controllable and interfaces via a 3 wire PWM connector. Servos are used in FTC\ |reg| for high-precision applications that are low-load - for example, opening a trapdoor for balls to fall through. Typically servos have limited range of rotation (180\ |deg| is common). The output has splines, which are the rigid teeth that are on top of the servo.

Servos are commonly used in RC cars (steering) and RC planes (moving ailerons). In FTC, servos are typically used for claws, grabbers, and arms.

.. figure:: images/hs488.jpg
   :alt: HS488 Hitec servo

   A common servo, HS488-HB from Hitec

.. note:: Servos are **NOT** replacements for DC motors, and should not be used as such. Servos are made for fine-tuned and accurate movement, not high-load or fast rotation applications.

There are many servos from different manufacturers, which vary widely in price, performance and value. Fortunately, virtually all servos use the standard 3-wire connector, and accept the same kind of controlling signal (PWM signal at 50 hz). Each REV Expansion Hub provides 6 servo ports, so you can plug in a servo from any manufacturer. Also, there is a standard size for servos for FTC use, so mounts can be interchanged between manufacturers.

Commonly used servos used in FTC are the REV Smart Servo and goBILDA Dual mode Servos (`25-2 <https://www.gobilda.com/2000-series-dual-mode-servo-25-2/>`_) and (`25-3 <https://www.gobilda.com/2000-series-dual-mode-servo-25-3-speed/>`_), but you should check out other servos as well. Picking the right servo for your application is a question that's almost impossible to give a blanket answer for. To learn more, please read the :doc:`choosing-servo` section.

The most prevalent problem with servos is durability. Internal servo gears in cheaper servos strip easily when subjected to shock loads. Servos are also poor at handling lateral loads or bending of the shaft. To avoid having to frequently replace servos, choose ones with metal gears and use :term:`Servoblocks` or your kit's equivalent to prolong longevity.

.. toctree::
   :maxdepth: 1

   choosing-servo
   usage-tips
