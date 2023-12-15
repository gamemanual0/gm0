.. include:: <isonum.txt>

Timing Belt
===========

When you think of a belt, you're probably thinking of a very important men's fashion accessory. However, there's another type of belt, and it's way more relevant to robotics - the timing belt. If you've ever tinkered with the insides of a car before, you probably recognize timing belts as an important component designed to keep everything under the hood in sync.

.. admonition:: Term

   .. glossary::

      Timing Belt
         Timing belts use a series of small, wide teeth to engage a pulley with a number of matching grooves. They earn their name because they can be very precise, transmitting power with virtually no slop and ensuring a snug connection between shafts.

         .. figure:: images/belt/belt-and-pulley.png
            :alt: A picture of timing belts on a pulley

            Timing belts and a pulley

While a timing belt may complete a similar objective to :term:`chain <Sprocket>`, its characteristics and strengths are very different. Timing belts are lighter and more compact than chains, but they lack the customizability of their bulkier brother - belts come in a closed loop of predetermined length, and there's no changing that length on the fly.

Like chain, belt is identified by its :term:`pitch <Pitch>` - common pitches found on FTC\ |reg| robots include HTD 5mm, HTD 3mm, and GT2 3mm.

When using timing belts, correct tension is very important. There are two main ways to get your tension right. The first is easy - goBILDA and Actobotics already have belts integrated into their hole patterns. You can buy correctly sized belt directly from each vendor, and your tension will be perfect as soon as the belt is installed. As your designs gain complexity, so will your belt runs - maybe there are more than 2 pulleys, and maybe your pulleys are all different sizes. To compensate for this, the second way to ensure tension is to use a dynamic tensioner, similar to those found in complex chain runs. To design for these tensioners, we recommend planning more complex belt runs in CAD before building them in real life.


Belt Calculator
---------------

The actual calculations to determine which belt to use to get close to a given center-to-center (:term:`C2C`) distance are complicated. Below is a calculator to help out:

.. card::

   Belt Calculator
   ^^^

   .. only:: latex

      The web version of gm0 has a belt calculator available here.

   .. raw:: html
      :file: belt-calculator.html

.. warning:: This calculator will suggest belt lengths even if they are difficult to get from vendors. Make sure the C2C distance you design around is for a belt length that you can purchase.

SDP-SI has a `more advanced calculator <https://sdp-si.com/tools/center-distance-designer.php>`_, as does `ReCalc <https://www.reca.lc/belts>`_. The equations for calculating these values by hand can be found in `SDP-SI's Designing a Miniature Belt and Pulley Drive System Design Guide <https://www.sdp-si.com/Belt-Drive/Designing-a-miniature-belt-drive.pdf>`_.

Belt Wrap
---------

**Belt should, at the very least, have 90 degrees of contact with the pulley. The best practice is to have 180 degrees or more of contact**, as it is very unlikely to fall off with proper tensioning. Belt skipping, especially on drivetrains or arms, is very possible without proper belt wrap or tensioning. When tensioning belt, be sure to not undertension or overtension it. Undertensioning belt can result in the belt falling off the pulley or belt skipping, where the belt can skip along the pulley. Overtensioning belt often results in the motor burning out, or less seriously, a loss of efficiency. Push along the belt, and if it moves slightly without significant resistance, chances are you've done it correctly. If it's too tight, then the belt will barely move under a gentle press.

Best practices for wrap
^^^^^^^^^^^^^^^^^^^^^^^

.. figure:: images/belt/belt-wrap-1.png
   :alt: Properly done belt wrap without tensioners

   Ethan Doak, goBILDA

.. figure:: images/belt/8103-dt.png
   :alt: A drivetrain by 8103 using belt

   8103 Null Robotics, offseason prototype, properly done belt wrap with tensioners

Advantages:
-----------

- **Pulleys can be made at home**. Pulleys can be 3D printed for most situations, allowing you to cut costs and create unique tooth counts easily.
- **Belts are very strong**. They're reinforced with fiberglass cords that are incredibly hard to break, giving belts immense strength. (*If you break a belt, it's most likely because it was out of alignment or tensioned far too tightly*.)
- **When tensioned correctly, there is absolutely no slop**. Engines use timing belt for a reason - because it's the best possible solution for them to perfectly synchronize their shafts. There's nothing that matches the rotational accuracy of a properly tensioned belt.
- **Belts are efficient and quiet**. Compared to the loud shredding sound of a chain run, belt runs are dead silent, and they're more efficient than chains (although this makes zero practical impact in the robotics use case).

Disadvantages:
--------------

- **Belts aren't customizable**. You buy a belt of a specific length and you're stuck with that length until you buy another one. This isn't too bad if you're planning out your robot properly, but chain will work better for prototypes where the chain length will be changing often.
- **Belts can be wider than alternatives (especially chain)**. This probably won't have much of an impact, but belt can often be wider than other power transmission methods, so it may not always fit.
- **Belts can be expensive (but you'll save money with pulleys)**. While you can buy chain 10 feet at a time, you'll most likely be buying each belt brand new. While this can get expensive, you'll be saving money on pulleys.

.. figure:: images/belt/belt-wrap-2.png
   :alt: Properly done belt wrap with tensioners

   7236 Recharged Green, Rover Ruckus

.. figure:: images/belt/8417-dt.png
   :alt: A drivetrain by 8417 using belt

   8417 Lectric Legends, Rover Ruckus

Purchasing Belts
----------------

Once you know what pitch and length belt you want, purchasing a belt requires navigating the vendor's website. Almost every COTS belt vendor will identify belts by 3 values: pitch, pitch length, and width. Pitch is the pitch of the belt, pitch length is the length of the belt (belt teeth times pitch), and width is the width of the belt. From there, its a matter of searching the vendor's page for the right belt.

SDP-SI
^^^^^^

SDP-SI is an established mechanical parts vendor that sells a large assortment of COTS belts. To navigate the site, go to the `main belts page <https://www.sdp-si.com/products/details/timing-belt-detail.php>`_, navigate to the correct belt type, then select the option for the correct pitch.

.. important::
    Make sure to select the Single Sided belt type, and not the Timing Belt Stock type. Timing Belt Stock is a long stretch of belt that is not in a loop, whereas Single Sided belts are a loop.

For example, to purchase an HTD-5 belt, first navigate to GATES HTD Timing Belts, navigate to 5mm pitch, and select buy now under the single sided belt option.

V-Belt Guys
^^^^^^^^^^^

V-Belt Guys stocks a large number of options for belts. They are known for stocking almost every width of belt, since they cut belts to size for the order. Searching the site uses belt codes with the format "Pitch Length-Pitch Code-Width". For example, a 200 pitch length HTD5 belt with a 5mm side to side width would be the code 200-5m-5. A list of common pitch codes is below.

=======    ==========
Name       Pitch Code
=======    ==========
HTD-5      5m
HTD-3      3m
GT3-2mm    2mgt
GT3-3mm    3mgt
GT3-5mm    5mgt
=======    ==========
