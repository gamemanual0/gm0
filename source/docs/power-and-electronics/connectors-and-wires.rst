.. include:: <isonum.txt>

Connectors and Wires
====================

There are many types of connectors for use in FTC\ |reg|. Here are the most common connectors you will find on an FTC robot.

.. glossary::

   Anderson PowerPole
      Anderson PowerPole is a connector used by AndyMark on their :term:`NeveRest motors <NeveRest Motor>`. PowerPole connectors are extremely reliable, and are an excellent choice for high-usage connectors, such as batteries. There are adapters available to/from other systems. PowerPole connectors are crimped onto wires.

      .. warning::
         While OEM Anderson brand PowerPole connectors are extremely reliable, off-brand PowerPole connectors, commonly available on sites like Amazon, often have major reliability issues. When purchasing PowerPole connectors, only purchase ones specifically listed as Anderson brand.

         Additionally, it is important to use crimpers specifically designed for PowerPole connectors. The `IWISS iCrimp AP-11 <https://www.amazon.com/dp/B01MSQPTDS>`_ crimpers are a solid choice at a reasonable price point on Amazon, though any quality crimpers specifically designed for PowerPole should work fine.

      .. image:: images/wiring/powerpole-connector.png
         :alt: A PowerPole connector
         :width: 300px

   3.5mm Bullet
      A power connector used on the goBILDA Yellow Jacket motors. Bullet connectors are soldered onto wires.

      .. warning::
         Due to the relatively strong holding force and the small size, it is common for teams to unplug these connectors by pulling on the wires instead of pulling on the connectors. This will cause fatigue and eventually failure. If you find yourself often operating these connectors, it is recommended to replace them with a connector that can be easily unplugged without damaging the connector, such as the :term:`JST VH` or :term:`Anderson PowerPole` connectors.

      .. image:: images/wiring/bullet-connector.jpg
         :alt: A 3.5mm Bullet connector
         :width: 300px

   Dupont 0.1" (TJC8)
      A small pinheader connector commonly used on servos and occasionally on some sensors. Dupont connectors are crimped onto wires.

      .. tip::
         Some vendors sell versions of the 3-pin female connector that are locking, which significantly improve the reliability of using servo extension wires. BackBayRC on Amazon sells `servo extension wires with locking connectors <https://www.amazon.com/BackBayRC-Extension-Strands-Vehicles-bikes/dp/B0CXR2YBS4/>`_; and Ferra Components sells both `pre-made servo extension wires with locking connectors <https://ferracomponents.com/products/20awg-locking-servo-wire>`_, and `packs of locking connectors you can crimp yourself <https://ferracomponents.com/products/servo-locking-connector>`_.
            .. image:: images/wiring/dupont-connector-locking.png
               :alt: Locking female 3-pin Dupont connectors
               :width: 300px

      .. image:: images/wiring/dupont-connector.jpg
         :alt: A servo extension wire with 3-pin Dupont connectors
         :width: 300px

   XT30
      The XT30 connector is commonly used by batteries (such as the goBILDA Nested Battery and the REV Slim Battery), the robot power switch, the REV Control Hub and Expansion Hub, the :term:`REV Grounding Strap <Grounding Strap>`, and others. XT30 connectors are soldered onto wires.

      .. warning::
         The pins in the XT30 connectors on the Control Hub and Expansion Hub often compress over time, causing loose power connectivity. See `XT30 Pins are Compressed - Expansion Hub Troubleshooting <https://docs.revrobotics.com/duo-control/troubleshooting-the-control-system/expansion-hub-troubleshooting#xt30-pins-are-compressed>`_ for details on the issue and how to fix it.

      .. image:: images/wiring/xt30-connector.png
         :alt: A XT30 connector
         :width: 300px

   JST VH
      JST VH is a type of connector used by FTC motors to interface with the REV Control Hub and Expansion Hub. It is keyed and locks into place for excellent reliability. JST VH connectors are crimped onto wires.

      .. image:: images/wiring/jst-vh-connector.png
         :alt: A JST VH connector
         :width: 300px

   JST PH
      JST PH is a type of connector used by the REV Control/Expansion Hubs and various electronics, such as sensors. On the REV Control/Expansion Hubs, the 4-pin connector is used for encoder, I2C, analog, and digital connections. The 3-pin connector is used for the RS-485 connection between the Control Hub and Expansion Hub. JST PH connectors are crimped onto wires.

      .. image:: images/wiring/jst-sensor-connectors.png
         :alt: JST PH and JST XH connectors
         :width: 300px

   JST XH
      JST XH connectors are used for the encoder connections on goBILDA (MATRIX) and AndyMark NeveRest motors. Both vendors sell adapters from JST XH to the :term:`JST PH` encoder ports on the REV Control/Expansion Hubs. These connectors are also occasionally found on some third party sensors. JST XH connectors are crimped onto wires.

   Tamiya
      Used on some batteries, such as the Modern Robotics battery that was sold by goBILDA prior to goBILDA's own battery design being allowed by the competition manual.

      .. attention::
         Do not use these connectors! The metal connectors are fragile and will lead to random disconnects. It is highly recommended to replace any of thse connectors with a reliable type of connector, such as the :term:`Anderson PowerPole` connectors.

      .. image:: images/wiring/tamiya-connector.png
         :alt: A Tamiya connector
         :width: 300px
