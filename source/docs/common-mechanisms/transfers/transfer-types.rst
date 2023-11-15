.. include:: <isonum.txt>

Types of Transfers
==================

There are a lot of different styles and types of transfers, but most are a form of Direct Transfer, Flip Up Transfer, Grate Transfer, or Conveyor Transfer.

Direct Transfer
---------------

The simplest form of transfer is a direct transfer. This is the term for when the mechanism that an item is being moved to is simply placed directly behind whatever is gathering the item. The most common form of this is putting an arm or bucket directly behind the intake to collect the item as soon as it enters the intake. Since there is no mechanism between the intake and the outtake system, this is also referred to as a "transferless" system.

Advantages
^^^^^^^^^^

- Least mechanical complexity of any transfer system
- Doesn't take up much space
- Fastest transfer system

Disadvantages
^^^^^^^^^^^^^

- Doesn't actually move the item internally
- Requires the scoring mechanism to be able to go both behind the intake as well as into whatever position is needed for scoring

.. figure:: images/16461-transferless.png
   :alt: A picture of a direct transfer intake from FTC\ |reg| 16461, where the collection bucket is behind the intake

   16461 Infinite Turtles, Freight Frenzy, Direct transfer intake, where the collection bucket is right behind the intake

Flip Up Transfer
----------------

Flip up transfers are a form of transfer where the mechanism holding the item is rotated around a pivot point to align with a second mechanism that then collects the item. This mechanism is very commonly used on intakes to gain vertical height as well as some horizontal distance. In this use case, the intake can simply be mounted onto the transfer system, then spun in reverse to eject the item from the transfer mechanism into the scoring mechanism.

Advantages
^^^^^^^^^^

- Doesn't take up much space
- Intake can be run co-axially to the flip up system so the motor doesn't have to be moved with the mechanism
- Allows intake to stick outside of the robot and start rotated up to fit inside the 18 inch sizing cube, enabling more flexibility

Disadvantages
^^^^^^^^^^^^^

- Limited in horizontal and vertical movement
- Care must be taken that mechanisms align properly to each other
- Slower form of transfer then grate or direct
- Mechanism can be hit by other robots when outside the robot frame

.. only:: latex

   .. figure:: images/6165-flip.png
      :alt: 6165 extending and flip up intake
      :width: 800

.. raw:: html

   <video width="600" autoplay muted loop>
      <source src="../../../_static/videos/common-mechanisms/transfers/6165-flip.mp4" type="video/mp4">
   </video>

6165 MSET Cuttlefish, Freight Frenzy, Flip up intake, mounted on linear slides for increased horizontal reach

|

.. only:: latex

   .. figure:: images/7236-flip.png
      :alt: 7236 flip up intake

.. raw:: html

   <video width="600" autoplay muted loop>
      <source src="../../../_static/videos/common-mechanisms/transfers/7236-flip.mp4" type="video/mp4">
   </video>

7236 Recharged Green, Rover Ruckus, Flip up intake

Grate Transfer
--------------

Grate transfer is a form of transfer where two sets of "forks" are used on both the transfer mechanism and the scoring mechanism, offset from each other. This means the forks can pass by each other without intersecting, allowing an item to seamlessly go from being supported by one set of forks to the other. This provides really fast transfer times, but also limits how the transfer can operate. Generally, this type of transfer is used with two sets of linear slides at an angle to each other, most commonly with one at a horizontal and one more vertical.

Advantages
^^^^^^^^^^

- Low mechanical complexity
- Second fastest transfer system (instantaneous)
- Integrates well with linear mechanism (such as extending intakes and outtakes)

Disadvantages
^^^^^^^^^^^^^

- More complex design, careful alignment needed to prevent the "forks" from colliding
- Doesn't integrate easily with rotational mechanisms
- Limiting in range of motion, mechanisms have to move in specific orders for the transfer to work correctly

.. dropdown:: Animated Grate Transfer Example (Click To Expand)

   .. raw:: html

      <script type="module" src="https://unpkg.com/@google/model-viewer/dist/model-viewer.min.js"></script>
      <model-viewer alt="Grate Transfer" src="https://cdn.statically.io/gh/gamemanual0/3d-models/main/transfers/gratetransfer.glb" ar ar-modes="webxr scene-viewer quick-look" autoplay seamless-poster shadow-intensity="1" camera-controls enable-pan style="width:100%; height:500px;overflow:auto; --poster-color: transparent"></model-viewer>

.. figure:: images/6929-grate.png
   :alt: 6929 grate transfer deposit, where the forks are visible

   6929 Data Force, Rover Ruckus, Grate transfer deposit. Forks are visible on the bottom, which go between forks on the intake bucket.

Conveyor Transfers
------------------

Conveyor transfer is a catch all term for transfer system that uses components to linearly move objects internally. Conveyors can use rollers, belts, surgical tubing, rubber bands, and other materials to move the items. These materials then form conveyors that seamlessly move the object linearly from one mechanism to another. Conveyors are generally either roller conveyors, where a series of rollers move parts, or continuous conveyors, where a continuous object moves the items. In addition, a hybrid conveyor can be used which is made up of both rollers and continuous objects in between.

Advantages
^^^^^^^^^^

- Can create "buffers" where multiple items can be stored
- Items can be moved across complex paths internally
- Items can be continuously transferred instead of having discrete back and forth motions

Disadvantages
^^^^^^^^^^^^^

- Items can jam on the entrance and exit of the conveyor, especially when multiple elements are entering at once.
- Significant mechanical complexity

There are different types of conveyors that can be used.

Roller Conveyor
^^^^^^^^^^^^^^^

Roller conveyors use a series of rollers or wheels to move objects from the beginning of the conveyor to the end. These transfers allow for the use of compliant wheel for different or odd shaped items, but care must be taken that objects don't get stuck in between rollers. In addition, wheels tend to have better grip then many forms of continuous conveyors. Surgical tubing can also be used instead of rollers.

.. figure:: images/7244-roller.jpg
   :alt: 7244 Roller Conveyor intake, where a series of omni wheels moves a game element verticall

   7244 OUT of the BOX Robotics, Ultimate Goal, Roller conveyor transfer intake, where a series of omni wheels moves the game element rings at a high vertical angle

Continuous Conveyor
^^^^^^^^^^^^^^^^^^^

A continuous conveyor uses a continuous object, such as belts, surgical tubing, or rubber bands to move objects. These transfers generally have less compliance than roller intakes, but also continuously contact the object being moved. This can lead to fewer jamming problems. However, the common objects used, such as belts and rubber bands, don't have much grip, so they may slip when transferring objects.

.. figure:: images/8644-conveyor.png
   :alt: 8644 Conveyor that uses o-ring belts to move rings internally

   8644 Brainstormers, Ultimate Goal, Conveyors which moves rings using o-ring belts internally

.. figure:: images/11115-conveyor.png
   :alt: 11115 Ball transfer using rubber bands

   11115 Gluten Free, Ball transfer using rubber bands

Hybrid Conveyor
^^^^^^^^^^^^^^^

Hybrid conveyors use rollers with continuous objects such as belts and rubber bands between them. This solves the contact issues of roller conveyors while also having more grip then purely continuous conveyors. However, these conveyors have to be designed to allow both the roller and continuous materials to make contact with the item.
