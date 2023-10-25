TETRIX
======

.. attention::
   TETRIX is generally not recommended due to its restricted flexibility and low long-term reliability. This page serves as historical reference for teams that have and use TETRIX parts, but there is little reason to purchase them.

The TETRIX build system is a fixed pitch, channel-based building system that uses both imperial and metric units.

Special Considerations
----------------------

- The TETRIX build system revolves around 32 mm aluminum :term:`c-channels <Channel>` and a 16mm bolt circle, on 16mm spacing (centers of the circles are 16mm apart). TETRIX is patterned along these :term:`channels <Channel>` to create many mounting options for building structures.
- These channels have a tendency to flex and bend under load, often requiring reinforcement using multiple :term:`channels <Channel>` to maintain their shape.
- While TETRIX :term:`channel <Channel>` is measured in metric units, the system employs Imperial (SAE) bolts and Imperial :term:`chain <Chain>`. This mix of units means that things often don't quite line up how they're supposed to, causing unforeseen problems.
- Additional tensioners are often required when using :term:`chain <Chain>` on TETRIX.
- TETRIX :term:`gears <Gear>` and :term:`sprockets <Sprocket>` offer very limited options for creating ratios. The aluminum :term:`gears <Gear>` tend to grind away very quickly, especially if they are not supported correctly on both sides.
- Tetrix parts generally do not have the best track record for reliability and longevity due to subpar material choices.
- Tetrix parts are slightly overpriced and lack bang-for-your-buck value found in kits such as REV and goBILDA.

Verdict
-------

While you may be considering TETRIX as a starter kit, we encourage you to explore your options before selecting a kit. While Tetrix does pick up quite a lot of flak from the community, it isn't a bad choice in terms of physical qualities such as strength, but the mounting options and hole patterns leave more to be desired and restrict teams in terms of flexibility.

Kit of Parts
------------

- `Kit of Parts <https://www.pitsco.com/Competitions-Clubs-and-Programs/FIRST-Tech-Challenge/TETRIX-FTC-Competition-Set>`_
- `2020-2021 Kit of Parts BoM <https://asset.pitsco.com/sharedimages/resources/ftcset_productlist-0719.pdf>`_

Advantages
----------

- The TETRIX kit, being the most basic of all kit options, is easy to learn and provides a variety of options in building. The kit itself comes with :term:`c-channel <Channel>`, which is aluminum shaped in a C. It has pre-cut holes so motors, :term:`gears <Gear>`, or :term:`drive shafts <Shaft>` can be seamlessly integrated into the channel. For a beginner team with little to no experience, a TETRIX kit allows you to assemble a working drivetrain in a couple of hours (Note: Most other kits allow you to do the same thing, but with more customization options).
- Furthermore, TETRIX is decent in terms of structural integrity, as long as the channels are loaded in the correct orientation. Typically, the orientation should be like an "n", with the top face upward. Connecting the channels with :term:`locknut <Locknut>` instead of regular nuts aids in longevity. However, TETRIX is the weakest of the build systems and is very prone to bending, especially with long pieces of channel that have multiple axes of load.
- It is simple to build basic mechanisms such as an arm using the gears and d-shaft. However, there are potential drawbacks to doing so.

Disadvantages
-------------

- The TorqueNADO motors are comparable with :term:`NeveRest <NeveRest Motor>` 60:1. They are usable, however have more limited uses due to their slow :term:`gear ratio <Gear Reduction>`, which means high torque but relatively slow output speed. The TorqueNADO uses spur gearboxes, and will not handle as much shock load as other planetary options, namely :term:`AndyMark 20 Orbitals <NeveRest Motor>`, :term:`REV HD Planetary <HD Hex Motor>`, or the :term:`goBILDA Yellow Jacket Planetaries <Yellow Jacket Motor>`.
- The aluminum gears seem to grind against each other often, even with correct spacing, and do not last very long, especially under high torque situations.
- TETRIX hubs are :term:`6mm or 4.7mm round <Shaft>` and are based on :term:`set screws <Set Screw>` which are torque transferring. These :term:`set screws <Set Screw>` are notorious for coming loose under load, so special care must be taken to continuously tighten these screws. Additionally, it is highly recommended that teams use some sort of threadlocker on set screws, whether it be :term:`Loctite Blue (removable) or Loctite Red (nonremovable) <Loctite>`. A possible workaround is purchasing 6mm D :term:`clamping hubs <Clamping Hub>` from goBILDA to use on TETRIX :term:`shafts <Shaft>`, however, this also necessitates the use of a pattern adapter from the goBILDA pattern to TETRIX.
- Due to using a metric based pattern but using imperial based holes and :term:`chain <Chain>` standards, :term:`chain <Chain>` will not have perfect tension when running from one hole in :term:`channel <Channel>` to another. An external :term:`tensioner <Idler>` will be required to implement chain systems.
- TETRIX is also the most expensive kit on average while providing the most limited build options. Finally, the tight spacing and mix of units limits teams if they would want to integrate custom parts with TETRIX.
- Set screws on TETRIX hubs can mar motor :term:`shafts <Shaft>`, and the :term:`bore <Bore>` of the hub itself can enlarge, leading to a wobbly or misaligned hub.

Tips for use
------------

In any build system, it is important to properly support the structure of your robot. This includes supporting axles at two or more points of contact, or having multiple points of support for a piece of :term:`channel <Channel>`. Due to TETRIX's relatively fragile nature, this advice goes double with TETRIX. Instead of just supporting a :term:`shaft <Shaft>` at two points, it is recommended to support the :term:`shaft <Shaft>` at 4 or more (if you are using a 4.7mm standard). When mounting motors, it is recommended that :term:`two clamping motor mounts <Clamp Mounting>` are used to mount one motor. Using :term:`standoffs <Standoff>` inside :term:`channel <Channel>` to prevent the :term:`channel <Channel>` from bending inward or outward is also highly recommended.

.. figure:: images/tetrix/6022-vv.jpg
   :alt: 6022 To Be Determined's Velocity Vortex Robot

   6022 To Be Determined: Worlds Semifinalist (St. Louis), Velocity Vortex

   TETRIX based robots have succeeded in competition, albeit it has become
   rarer in recent years.
