===========
Servo Guide
===========
A servo combines a small electric motor and control circuit in a single compact
package. This allows the servo to rotate to a specified position and hold that
position. Typically servos have limited range of rotation
(180° is common).

.. note::   Servos are **NOT** replacements for DC motors, and should not be used
    as such. Servos are made for fine-tuned and accurate movement, not high-load
    or fast rotation applications.

Servos are commonly used in RC cars (steering) and RC planes (moving ailerons).
In FTC, servos are typically used for claws, grabbers, and arms.


.. figure:: images/hs488.jpg
    :alt: HS488 Hitec servo

    A common servo, HS488-HB from Hitec

There are many servos from different manufacturers, which vary
widely in price, performance and value. Fortunately, virtually all servos use
the standard 3-wire connector, and accept the same kind of controlling signal
(PWM signal at 50 hz). Each REV Expansion hub provides 6 servo ports, so you
can plug in a servo from any manufacturer. Also, virtually all servos use one
of common servo sizes, so you can use the same mounts for them.

.. note::   FTC robots use standard size servos, not mini or extreme size.

Commonnly used servos used in FTC are the REV Smart Servo and goBILDA Dual mode
Servo (25-2), but you should check out other servos as well.
Picking the right servo for your application is a question that’s almost
impossible to give a blanket answer for.
To learn more, please read the :doc:`Choosing a servo<choosing-servo>`
section below.

The most prevalent problem with servos is durability: internal servo gears in
cheaper servos strip easily when subjected to shock loads.
Servos are also very bad at handling lateral loads or bending of the shaft.
To avoid having to frequently replace servos,
choose ones with metal gears and use a ServoBlock or your kit's equivalent to
prolong longevity.

.. toctree::
    :maxdepth: 1

    choosing-servo
    specialty-servos
    usage-tips
