.. include:: <isonum.txt>

Limelight Vision
================

The Limelight is a smart camera that handles vision processing onboard, offloading the computational load from the Control Hub. It is designed to be "plug-and-play" with vision pipelines that are easy to tune via a web interface.

.. note::
   This guide focuses on the **Limelight 3A**, which is currently the only Limelight model legal for FTC competition use.

Why Use a Limelight?
--------------------

**Offloaded Processing**
   Unlike a standard webcam where the Control Hub processes every frame, the Limelight does the heavy lifting on its own dedicated hardware, sending only the result data (coordinates, IDs, poses) to your code. This maintains high loop times on your robot controller.

**High Frame Rate**
   Capable of running vision pipelines at 90+ FPS for color tracking and 20+ FPS for AprilTag detection, much faster than typical Control Hub-based vision.

**Ease of Use**
   "Zero-code" pipeline configuration via a web browser. No need to write complex OpenCV code—just tune sliders and see results in real-time.

**Built-in Field Localization**
   The Limelight 3A ships with a pre-loaded field map for the current FTC season, enabling instant robot localization using AprilTags.

Getting Started
---------------

.. toctree::
   :maxdepth: 1

   hardware-setup
   software-configuration
   ftc-programming
   advanced-usage
   troubleshooting

Quick Links
-----------

*   :doc:`hardware-setup` - Mounting, wiring, and cable recommendations
*   :doc:`software-configuration` - Web interface, pipelines, and camera tuning
*   :doc:`ftc-programming` - Complete Java programming guide with examples
*   :doc:`advanced-usage` - Panels integration, wireless tuning, and optimization
*   :doc:`troubleshooting` - Common issues and solutions
