.. include:: <isonum.txt>

Software Configuration
======================

This page covers configuring your Limelight through the web interface.

Accessing the Web Interface
----------------------------

Initial Connection
^^^^^^^^^^^^^^^^^^

1.  Connect the Limelight to your laptop via USB-C
2.  Wait 15-20 seconds for the green status light to become active
3.  Open a web browser and navigate to ``http://limelight.local:5801``

.. tip::
   Alternatively, use the **Limelight Hardware Manager** application to scan for and connect to your Limelight. This is especially helpful if you have multiple Limelights or network issues.

Wireless Access (Robot Network)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

When the Limelight is connected to your Control Hub:

1.  Connect your laptop to the Control Hub's Wi-Fi network
2.  Navigate to ``http://limelight.local:5801`` in your browser
3.  You can now tune pipelines wirelessly while the robot is powered on

.. note::
   See :doc:`advanced-usage` for information on using Panels for easier wireless access.

Field Map Configuration
-----------------------

The Limelight 3A ships with a built-in AprilTag field map for the current FTC season.

Verifying the Field Map
^^^^^^^^^^^^^^^^^^^^^^^^

1.  In the web interface, navigate to the **Settings** tab
2.  Look for **AprilTag Field Map**
3.  Ensure it's set to the current season (e.g., "Into The Deep 2024-2025")
4.  If not, select the correct map from the dropdown

This field map allows the Limelight to calculate your robot's field-centric pose automatically when it sees AprilTags.

Pipeline Setup
--------------

Pipelines are like different "modes" for your Limelight. You can configure up to 10 pipelines, each optimized for a different task.

Creating an AprilTag Pipeline
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

1.  Select an empty pipeline slot (0-9)
2.  Click **Type** and choose **AprilTag**
3.  Enable **Full 3D** in the **Advanced** tab (required for robot localization)
4.  Configure the camera position relative to your robot's center (see Camera Calibration below)

Camera Calibration
^^^^^^^^^^^^^^^^^^

For accurate 3D localization, you must tell the Limelight where it's mounted on your robot:

1.  In the **AprilTag pipeline**, go to the **Robot** tab
2.  Enter the camera's position relative to the **center of your robot's footprint**:
   
   *   **Forward (X):** Positive = toward the front of the robot (inches)
   *   **Right (Y):** Positive = toward the right side (inches)
   *   **Up (Z):** Positive = upward from the ground (inches)

3.  Enter the camera's orientation (pitch, yaw, roll in degrees)

.. attention::
   Accurate camera calibration is **critical** for reliable localization. Measure carefully!

Camera Settings (Input Tab)
----------------------------

The **Input** tab controls how the camera captures images. These settings dramatically affect detection performance.

Exposure
^^^^^^^^

*   **What it does:** Controls how long the camera sensor is exposed to light
*   **Lower values:** Reduce motion blur (critical for moving robots), but require more light
*   **Higher values:** Capture more light, but cause blur when the robot or targets are moving
*   **Recommended for AprilTags:** Start with **2-5ms** and adjust based on your lighting

Gain
^^^^

*   **What it does:** Amplifies the sensor's signal (like ISO in photography)
*   **Lower values:** Cleaner image, less noise
*   **Higher values:** Brighter image in low light, but more grainy
*   **Recommended for AprilTags:** Start with **15-25** and increase if tags aren't detected in low light

Black Level
^^^^^^^^^^^

*   **What it does:** Sets the threshold for what the camera considers "black"
*   **Adjust until:** The black portions of AprilTags appear distinctly black in the preview
*   **Recommended:** **0-5** for most lighting conditions

Resolution and Frame Rate
^^^^^^^^^^^^^^^^^^^^^^^^^^

*   **640x480 @ 90 FPS:** Best for color tracking (fast, low latency)
*   **1280x960 @ 20 FPS:** Best for AprilTags (higher resolution = better detection at distance)

Pipeline Tuning Best Practices
-------------------------------

Lighting Conditions
^^^^^^^^^^^^^^^^^^^

.. important::
   **Always tune your pipelines under competition-like lighting conditions.**
   
   Competition fields typically have:
   
   *   Bright overhead lights
   *   Reflective floor surfaces
   *   Varying ambient light from venue windows
   
   If you tune in a dark garage, your pipeline may fail under bright competition lights.

Testing Procedure
^^^^^^^^^^^^^^^^^

1.  **Static Testing:** Place the robot at various distances from AprilTags (1-10 feet) and verify detection
2.  **Motion Testing:** Drive the robot around while monitoring the camera feed. Ensure tags remain detected during movement
3.  **Angle Testing:** Approach tags from different angles (straight-on, 45°, extreme angles)
4.  **Lighting Variation:** Test under different lighting conditions if possible

.. tip::
   Use the **Snapshots** feature (see :doc:`ftc-programming`) to capture images during testing. You can then tune your pipeline offline using these snapshots as input.

Exposure and Gain Tuning
^^^^^^^^^^^^^^^^^^^^^^^^^

For AprilTag detection:

1.  **Start with low exposure** (2-3ms) and moderate gain (15-20)
2.  Drive the robot around and observe the camera feed
3.  If tags are **not detected** or appear **too dark**, increase gain first, then exposure
4.  If the image is **too bright** or **washed out**, decrease gain first, then exposure
5.  If you see **motion blur** (tags appear streaky when moving), decrease exposure

The goal is the **lowest exposure** that still reliably detects tags, as this minimizes motion blur.

Thresholding (Color Pipelines)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

For color-based detection:

1.  Use the **Thresholding** tab to adjust HSV ranges
2.  The **visualizer** shows what the camera sees after thresholding
3.  Adjust sliders until only your target object is highlighted
4.  Test under various lighting conditions

Crosshair Calibration
---------------------

The crosshair represents the "center" of your camera's view. For some applications (like aligning to a target), you may want to offset the crosshair:

1.  Navigate to the **Crosshair** tab
2.  Adjust the X and Y offsets
3.  This is useful if your camera is mounted off-center or at an angle

Saving and Switching Pipelines
-------------------------------

*   **Pipelines auto-save** as you make changes
*   **Switch pipelines** using the dropdown at the top of the interface
*   **In code**, switch pipelines with ``limelight.pipelineSwitch(index)``

.. note::
   Pipeline switching is nearly instantaneous (< 10ms), so you can switch mid-match as needed.
