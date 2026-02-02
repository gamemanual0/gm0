.. include:: <isonum.txt>

Hardware Setup
==============

This page covers the physical installation of your Limelight 3A.

Mounting
--------

Placement Considerations
^^^^^^^^^^^^^^^^^^^^^^^^

*   **Height:** Mount the camera as high as practical while keeping it within the 18" sizing cube. Higher mounting provides better visibility of distant AprilTags.
*   **Angle:** A slight upward tilt (5-15°) is recommended for AprilTag tracking, as tags are typically mounted on walls above the robot.
*   **Protection:** Ensure the lens is protected from potential collisions. Consider a 3D-printed lens guard or strategic placement behind structural elements.
*   **Field of View:** The Limelight 3A has a 54.5° horizontal and 42° vertical FOV. Position it to maximize coverage of your target area.

Mounting Methods
^^^^^^^^^^^^^^^^

The Limelight 3A provides multiple mounting options:

*   **M3 Threaded Holes:** Use M3 screws to mount directly to REV or goBILDA channel
*   **M4 Threaded Holes:** Alternative mounting for different build systems
*   **#10 Through Holes:** For bolt-through mounting with nuts

.. attention::
   Use at least **2 mounting points** to prevent the camera from rotating or vibrating loose during matches.

Wiring
------

Connection to Control Hub
^^^^^^^^^^^^^^^^^^^^^^^^^^

1.  Connect the Limelight to one of the **USB 3.0 (blue)** ports on the Control Hub using a USB-C to USB-A cable.
2.  The Limelight draws power from the USB port and creates a network connection automatically.
3.  No additional power wiring is required.

.. warning::
   **Critical: Use the Official Cable!**
   
   Teams have reported random disconnects, brownouts, and unstable connections when using third-party USB-C cables. The cable that ships with the Limelight is a high-quality, high-data-rate cable specifically chosen for reliability.
   
   **Always use the official Limelight cable or a verified equivalent** (USB 3.1 Gen 2, 10Gbps rated, with proper shielding). Do not use cheap cables from Amazon or standard phone charging cables.

Cable Management
^^^^^^^^^^^^^^^^

*   **Strain Relief:** Secure the cable near both the Limelight and Control Hub to prevent stress on the connectors during robot movement.
*   **Cable Routing:** Route the cable away from motors and high-current wires to minimize electromagnetic interference.
*   **Length:** Keep the cable as short as practical. Excess cable length can lead to signal degradation and increased susceptibility to noise.

Hardware Configuration in Driver Hub
-------------------------------------

After physically connecting the Limelight:

1.  Open the **Driver Hub** or **Driver Station** app
2.  Navigate to **Configure Robot**
3.  Click **Scan** to detect hardware
4.  The Limelight should appear as a device (may show as "Webcam" or "Limelight3A")
5.  Name it ``limelight`` (or your preferred identifier)
6.  Save the configuration

.. note::
   If the Limelight doesn't appear after scanning, try:
   
   *   Unplugging and replugging the USB cable
   *   Restarting the Control Hub
   *   Verifying the cable is fully seated in both ports
   *   Testing with the official cable if using a third-party cable
