.. include:: <isonum.txt>

Connectors and Wires
====================

There are many types of connectors for use in FTC\ |reg|. Here are the most common connectors you will find on an FTC robot. // FIXME: Talk about the new connectors on the 2027 SystemCore and MotionCore.  Also talk about bullet connectors (used by goBILDA motors) and the Wago-style connectors used by the Servo Hub.

.. glossary::

   Anderson PowerPole
      Anderson PowerPole is a connector used by AndyMark on their :term:`NeveRest motors <NeveRest Motor>`. PowerPole connectors are extremely reliable, and are an excellent choice for high-usage connectors, such as batteries. In addition, there are adapters available to other systems.

      .. warning::
         While OEM Anderson brand PowerPole connectors are extremely reliable, off-brand PowerPole connectors commonly available on site like Amazon often have major reliability issues. When purchasing PowerPole connectors, only purchase ones specifically listed as Anderson brand.

         Additionally, it is important to use crimpers specifically designed for PowerPole connectors. The `IWISS iCrimp AP-11 <https://www.amazon.com/dp/B01MSQPTDS>`_ crimpers are a solid choice at a reasonable price point on Amazon, though any crimpers specifically designed for PowerPole should work just fine.

      .. image:: images/wiring/powerpole-connector.png
         :alt: A PowerPole connector
         :width: 200px

   XT30
      The XT30 connector is used in the REV ecosystem through the Expansion or Control Hub. The XT30 through the REV Slim Battery provides power to the Expansion Hub, and teams will need an XT30 cable to transfer power from the main hub to a secondary hub. This is also the connector used on the :term:`REV Grounding Strap <Grounding Strap>`.

      .. image:: images/wiring/xt30-connector.png
         :alt: A XT30 connector
         :width: 200px

   JST-VH
      JST-VH is a type of connector used by FTC motors to interface with the REV Expansion Hub. It is keyed and locks into place for excellent reliability.

      .. image:: images/wiring/jst-vh-connector.png
         :alt: A JST-VH connector
         :width: 200px

   Dupont 0.1"
      A small pinheader connector commonly used on servos and on some sensors. // FIXME: Talk more about servo connectors specifically.

      .. image:: images/wiring/dupont-connector.png
         :alt: A Dupont 0.1" connector
         :width: 200px

   JST-PH
      JST-PH is a type of connector used by the REV Control/Expansion Hubs and various electronics, such as sensors. For FTC, the 3-pin and 4-pin options will be used most often. On the REV Control/Expansion Hubs, the 4-pin connector is used for encoder, I2C, analog, and digital connections. The 3-pin connector is used for the RS-485 connection between the Control Hub and Expansion Hub.

      .. image:: images/wiring/jst-sensor-connectors.png
         :alt: JST-PH and JST-XH connectors
         :width: 200px

   JST-XH
      JST-XH connectors are used for the encoder connections on goBILDA (MATRIX) and Andymark NeveRest motors. Both vendors sell adapters from JST-XH to the :term:`JST-PH` encoder ports on the REV Control/Expansion Hubs. These connectors are also occasionally found on some third party sensors.

   Tamiya
      Used on some batteries, such as the Tetrix and Matrix/Modern Robotics batteries.

      .. attention::
         Do not use these connectors! The metal connectors are fragile and will lead to random disconnects. It is highly recommended to replace any of thse connectors with a reliable type of connector, such as the :term:`Anderson PowerPole` connectors.

      .. image:: images/wiring/tamiya-connector.png
         :alt: A Tamiya connector
         :width: 200px
