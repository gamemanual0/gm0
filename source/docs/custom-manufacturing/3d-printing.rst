.. include:: <isonum.txt>

3D Printing
===========

Kinds of 3D Printing
--------------------

There are a few different kinds of 3D printing. FDM (Fused Deposition Modeling) (also known as Fused Filament Fabrication) extrudes a melted filament to create a part and is the most common type and the one we'll focus on in this guide. SLA (stereolithography) and SLS (Selective Laser Sintering) are both options for 3D printing plastics, but they are generally more complex, expensive, or hold other disadvantages in FTC\ |reg| applications. For those reasons, they are not recommended.

Metal 3D printing (SLS and others) is also becoming more and more available, but is not in the scope of this guide.

.. tip:: Consider checking out `the FTC docs 3D printing section <https://ftc-docs.firstinspires.org/en/latest/manufacturing/3d_printing/index.html>`_, a guide for FDM 3D printing within the scope of FTC. It covers topics such as: bed adhesion, tolerances, designing for 3D printing, tuning, and hardware choices.

Advantages of 3D Printing
-------------------------

- 3D printing allows for customizable sizing and perfect optimization; for example, teams can print a spool of the exact diameter needed for optimal speed, or a belt pulley with a certain number of teeth.
- 3D printing allows teams to adapt between kits and individual parts easily, as not all kits have adaptable mounts or brackets. A good example of this are the Nexus :term:`mecanum <Mecanum Wheel>` bore adapters that teams 3D print.
- 3D printing allows teams to fabricate parts that would otherwise be impossible with materials such as aluminum due to machining restrictions.
- 3D printing allows teams to have customizable strain relief on wires and connections. This is a great project and well worth your time.

Disadvantages of 3D Printing
----------------------------

- **If you are out of 3D printed spares at a competition, you're probably out of luck. Teams are advised to print at least one set of every single 3D printed part as spares for competition**.
- 3D printed components are generally weaker than other materials such as aluminum. However, printing in the proper orientation can be very strong - teams have 3D printed hooks and other parts to support their FRC\ |reg| robot (120 pounds) and FTC robots (40 pounds).
- 3D printed parts should only be loaded in one orientation. That is, if the robot is hanging from a hook, the only load should be on the bottom face of the curved part of the hook. Try to eliminate side loads as much as possible to avoid part failure.
- The size of 3D printed parts is limited by the size of your print bed.
- Large and thick prints can take a long time (overnight) to print and can run the risk of failure.
- 3D printing can end up quite expensive, though filament can be found for a reasonable price on online vendors such as Amazon.

Common Filaments
----------------

For almost every part that needs to be 3D printed for FTC, **PLA (or PLA+, Pro, etc) and/or PETG will meet all the needs for strength, durability, and aesthetics.** These two filament types are by far the easiest to print, and are sold by many manufacturers for reasonable prices. Most of the other filaments here offer very specific advantages (like TPU) that come at the cost of effort, time, and money.

.. danger:: If your printer's hotend (the part that melts the filament) has a PTFE (Teflon) lining where the PTFE tube goes all the way down to the heat block (common in lower price printers like the Ender 3 and its variants), then you **should not be printing at or above 250 degrees Celsius**. Doing so will cause the PTFE tube to degrade and melt, releasing toxic fumes. If you need to print at these temperatures and you have a PTFE lined hotend, you can look at upgrading to an all-metal hotend.

PLA (Polylactic Acid)
^^^^^^^^^^^^^^^^^^^^^

The most common 3D Printing filament is polylactic acid, or PLA. It is a plastic made from biological sources like corn starch and sugar cane. PLA is stiff but more brittle than other filament options and tends to have little to no warp when printing. PLA is well suited to the majority of robot parts, but it may not hold up well to shock loads (impacts to parts), and as such parts should be designed accordingly.

- PLA hotend temperatures range from 190\ |deg|-230\ |deg| C
- PLA bed temperatures range from 20\ |deg|-60\ |deg| C, but a heated bed isn't strictly required for PLA

.. tip:: Due to the relatively low melting point of PLA, it is not advisable to leave PLA parts in locations such as a hot car, as this can produce severe warping in those parts.

There are many variations of PLA sold by different manufacturers, like PLA+ or PLA Pro. These filaments have various additives in them to improve strength, printability, and other properties. While more expensive, these products can greatly improve the performance of PLA and cover its weaknesses.

PETG (Polyethylene Terephthalate Glycol)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

PETG can be described as a strength upgrade to PLA. It is not difficult to print, but often has noticeably more stringing and other minor artifacts. While it technically has a lower tensile strength than PLA, it is far less brittle and withstands impacts better, through slight flexing. It is a great option for FTC parts which need to be impact resistant where PLA will not suffice. Its higher temperature resistance also means it won't warp in a high ambient temperature such as a hot car.

.. warning:: PETG is known for bonding very well to print beds, **especially glass and PEI**, and is known to rip chunks out of the bed. It is a good idea to add some glue stick or hairspray before printing it.

- PETG hotend temperatures range from 230\ |deg|-260\ |deg| C
- PETG bed temperatures range from 60\ |deg|-80\ |deg| C

Less Common Filaments
---------------------

These filaments are less used than those listed above, but can still find plenty of use cases on an FTC robot. These usually are used due to specific material properties such as flexibility or durability. These often come however, with substantial obstacles for printing that prevent some printers from printing them out of the box, along with sometimes being significantly more expensive.

ABS (Acrylonitrile Butadiene Styrene)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ABS used to be the standard filament for printing before PLA became commercially available. You've probably used ABS before in LEGO\ |reg| pieces. It can withstand high loads and is quite ductile. This comes at the cost of printing difficulty, where an enclosure is often necessary to raise the ambient temperature and prevent severe part warping. The strength improvements over PLA can be more easily found in PETG, so ABS parts are not as common in FTC. ABS is quite affordable though, sold at the same prices as PLA.

- ABS hotend temperatures range from 230\ |deg|-250\ |deg| C
- ABS bed temperatures range from 100\ |deg|-120\ |deg| C
- Enclosure highly recommended to prevent warping

Due to the difficulty of printing ABS and its limitations, one might look at alternatives such as ASA which offer similar properties with much better printability.

TPU/TPE (Themoplastic polyurethane/Thermoplastic elastomer)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

TPU and TPE are both common printing filaments that are widely used for their flexible material properties. This allows one to create printed parts that can easily flex and bend. Sold under many different durometers (a measure on the Shore Hardness Scale of the hardness/flexibility of a material), TPU/TPE's high impact resistance and layer adhesion make it not only a versatile filament, but an extremely durable one. In FTC, teams use TPU/TPE in roles such as printed intake flaps in place of a tube, as well as custom belts for low-load applications.

.. tip:: Due to its flexible nature, printers that use a Bowden tube extrusion system, where the extruder motor is not placed on the hotend, will find it extremely difficult to print TPU/TPE.

- TPU/TPE hotend temperatures range from 210\ |deg|-250\ |deg| C
- TPU/TPE does not usually need a heated bed, but if one is used it should not go over 60 |deg|\ C as this will fuse TPU with print bed.
- TPU/TPE has the tendency to absorb a lot of moisture from the air, and thus will likely need to be dried before and perhaps during a print.
- Direct drive extruder is highly recommended


Exotic Filaments
----------------

There is rarely ever any need for these filaments in FTC. They offer extremely good material properties for parts that need to be subjected to high forces and adverse environments. They are all much more expensive than any of the filaments listed above, and offer a multitude of challenges for printing.

Nylon
^^^^^

Nylon filaments can be glass-filled, carbon fiber-filled, or pure. Nylon is the king of impact resistance in many situations where the part can flex out of the way, instead of completely breaking. Occasionally nylon is used for parts like wheel covers on drivetrains and in places where it will be repeatedly hit and battered. Nylon requires very high temperatures, generally requires an enclosure, and absolutely must be dried before (and while) printing.

- Nylon hotend temperatures range from 240\ |deg|-260\ |deg| C
- Nylon bed temperatures range from 55\ |deg|-80\ |deg| C
- Nylon is infamous for absorbing moisture from the air and should be thoroughly dried before and during printing. Failure to do this will probably result in a nearly unusable part.
- Enclosure recommended

Carbon Fiber-filled
^^^^^^^^^^^^^^^^^^^

Many filaments are also sold with the addition of small chunks of carbon fiber mixed into the filament itself. While often though of as an extreme strength improvement, these filaments are instead meant to be stiffer and help to improve the printability of filaments like nylon. Carbon fiber-filled filaments generally require higher temperatures, and a hardened steel nozzle, but if you can print the pure variants of those filaments, you should be able to print their carbon fiber-filled counterparts.


Polycarbonate (PC)
^^^^^^^^^^^^^^^^^^

Polycarbonate and its variants are very very strong, technical materials. PC shines in its ability to be very rigid, and handle shock loads exceedingly well. PC also requires being dry, having a printer capable of **very** high temperatures, and an enclosure. It is a very challenging material to print, and is often very expensive. There is little reason to ever need printed polycarbonate parts in FTC, with no use cases requiring its strength.

There are several PC blends that can be much easier to print, a standout example is PolyMaker PolyMax PC. It is an easier-to-print, lower temp PC that retains many of the advantages of pure PC. PolyLite is not quite as impact-resistant, but a lot cheaper. Both are much easier to print than pure PC.

- PC hotend temperatures range from 250\ |deg|-320\ |deg| C
- PC bed temperatures range from 80\ |deg|-140\ |deg| C
- Enclosure required
- Filament must be kept dry

High-end exotic filaments
^^^^^^^^^^^^^^^^^^^^^^^^^

There are a few other materials that can have very high-end benefits, and push the envelope on what 3D printing can accomplish, but should not be printed if you are not *very* confident in your printing skills, and have basically no use in FTC. These materials include, but are not limited to, Delrin (Polyoxymethylene Homopolymer Acetal), PEI (Polyether Imide, brand name ULTEM), PEEK (Polyether Ether Ketone), and PEKK (Polyetherketoneketone). These materials are extremely hard to print, require ludicrous temperatures (some to the point where a hardened steel nozzle begins to melt), and are extremely expensive.

3D Printing Design Guide
------------------------

Here is a quick guide on designing 3D printed parts that we hope is helpful for teams who may be unfamiliar with 3D parts.

The first consideration when designing 3D printed parts is print orientation. This refers to the side that contacts the print bed. Preferably, the part should have a flat bottom to maximize contact with the print bed.

.. tip:: Maximizing contact with the print bed will make sure the part doesn't delaminate or warp from the bed and increase print quality.

If it is impossible for the part to have a flat side to print on, a simple solution is to split the part into multiple parts along a plane. For instance, the gearbox plate below didn't have a flat side to print on, so it was split in half. The part was later sandwiched with numerous screws and plastic glue. If this plate was printed as one part instead of split in half, support would have to be used to create all of the necessary holes. Parts that use no support material make sure that the least amount of plastic is wasted.

.. image:: images/3d-printing/2-piece-gearbox.jpg
   :alt: A 3D printed gearbox, printed in 2 parts, cut along a plane
   :scale: 25%

.. tip:: Don't chamfer or round anything on the perimeter of the first layer on the bottom face of the part. Chamfering or rounding will increase the chances of the part warping, especially on unheated print plates.

Draft Angle
^^^^^^^^^^^

Draft angle refers to the overhang angle between the part side and normal vector from the print plate. The maximum draft angle refers to the maximum angle the printer can print without support material and is based on the printer, print settings (notably speed, temperature and cooling) and filament type. When trying to decrease support material, consider every overhang angle and make sure it is within the maximum draft angle. Staying within the maximum draft angle will also decrease the chances of part warping.

Stress Vectors
^^^^^^^^^^^^^^

Perhaps the most important consideration is stress vectors. 3D printed parts are inherently stronger on two axes and weaker on one axis. The weaker axis comes from the layering action that defines FDM 3D printing. A common fix to this is to simply increase the print temperature up to a certain limit until it starts decreasing print quality, but the weaker axis can be resolved by again splitting up into multiple parts. The point to get across is to try to increase strength by optimizing sections of the part on the plane they are being printed on. For instance, this assembly below was responsible for hanging the entire robot, so it had to be the maximum strength possible for a 3D printed part.

.. tip:: It might seem counterintuitive to split up a part into multiple parts to increase strength, but there is a logic behind it.

The part could have been easily printed as a single part, but it would be fairly weak when stresses are exerted in the upward direction. Splitting the part and creating new flat surfaces to print on will strengthen each axis. *If one small part failed, the robot might still be able to somewhat function.* This would be preferable to the entire piece failing at once. In this example, the side pieces were printed as separate parts on a complementary axis to strengthen the assembly.

.. image:: images/3d-printing/printing-multipart.jpg
   :alt: A multipart assembly 3D printing
   :scale: 25%

.. image:: images/3d-printing/assembled-multipart.jpg
   :alt: An assembled version of what was printing in the previous image
   :scale: 25%

This assembly is a good example of considering part orientation, draft angles, and stress vectors in each part of the design. Complex parts can be made strong and without any support by simply splitting it up in the right way.
