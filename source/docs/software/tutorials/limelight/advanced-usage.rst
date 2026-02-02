.. include:: <isonum.txt>

Advanced Usage
==============

This page covers advanced topics for getting the most out of your Limelight.

Wireless Tuning with Panels
----------------------------

`Panels <https://panels.bylazar.com>`__ is an all-in-one dashboard that makes it easy to tune your Limelight wirelessly while connected to your robot.

What is Panels?
^^^^^^^^^^^^^^^

Panels is a web-based dashboard that runs on your laptop and connects to your Control Hub. It provides:

*   **Live camera feed** from your Limelight
*   **Pipeline tuning** without opening multiple browser tabs
*   **Telemetry visualization** with graphs and field overlays
*   **OpMode control** (start/stop)
*   **Configuration variable tuning** in real-time

Setting Up the Limelight Proxy
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

When your Limelight is connected to the Control Hub, you can't directly access its web interface at ``limelight.local:5801`` because it's on the robot's network. Panels solves this with a proxy.

**Setup Steps:**

1.  **Install Panels:** Visit `panels.bylazar.com <https://panels.bylazar.com>`__ and follow the installation instructions
2.  **Connect to Robot:** Connect your laptop to the Control Hub's Wi-Fi
3.  **Open Panels:** Launch the Panels application
4.  **Access Limelight:** In Panels, navigate to the Limelight section
5.  **Proxy Connection:** Panels automatically creates a proxy to ``limelight.local:5801``

Now you can tune pipelines, adjust camera settings, and view the live feed—all while the robot is running.

.. tip::
   **Use Panels during practice matches** to tune your pipelines under realistic conditions. You can adjust exposure, gain, and thresholds in real-time while driving the robot around.

Benefits of Wireless Tuning
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

*   **No cable swapping:** Keep the Limelight connected to the Control Hub
*   **Real-time feedback:** See how pipeline changes affect performance immediately
*   **Match-like conditions:** Tune while the robot is moving and operating
*   **Faster iteration:** No need to stop, unplug, tune, replug, and restart

Performance Optimization
------------------------

Loop Time Impact
^^^^^^^^^^^^^^^^

Since the Limelight processes vision on its own hardware, querying it from your code is very fast:

.. code-block:: java

   LLResult result = limelight.getLatestResult(); // ~0.1ms

This is essentially reading a variable from memory. Even running complex neural network pipelines won't slow down your robot's main loop.

**Comparison:**

*   **Limelight:** Vision processing happens on the Limelight's CPU. Your robot code just reads the results (~0.1ms)
*   **Control Hub Vision:** Vision processing happens on the Control Hub's CPU, competing with your robot code for resources (10-50ms per frame)

Poll Rate Tuning
^^^^^^^^^^^^^^^^

The poll rate controls how often your code asks the Limelight for new data:

.. code-block:: java

   limelight.setPollRateHz(100); // 100 times per second

**Recommendations:**

*   **TeleOp:** 100 Hz (every 10ms) is usually sufficient
*   **Autonomous (critical):** 100-200 Hz for fast-moving robots
*   **Autonomous (non-critical):** 50 Hz to reduce network traffic

.. note::
   The poll rate doesn't affect the Limelight's processing speed (it always runs at full speed). It only affects how often your code receives updates.

Network Bandwidth
^^^^^^^^^^^^^^^^^

The Limelight sends small JSON packets over the network. Even at 100 Hz, this uses minimal bandwidth (~10 KB/s).

**To minimize network load:**

*   Don't stream the camera feed during matches (only use it for tuning)
*   Use lower poll rates when high-frequency updates aren't needed
*   Disable unused pipelines

Best Practices
--------------

Pipeline Organization
^^^^^^^^^^^^^^^^^^^^^

Organize your 10 pipelines strategically:

*   **Pipeline 0:** AprilTag detection (Full 3D enabled)
*   **Pipeline 1:** Color tracking for game pieces
*   **Pipeline 2:** Neural detector (if used)
*   **Pipeline 3-9:** Backups or alternative configurations

.. code-block:: java

   // In autonomous
   limelight.pipelineSwitch(0); // AprilTag for localization

   // In teleop
   limelight.pipelineSwitch(1); // Color tracking for game pieces

Snapshot Workflow
^^^^^^^^^^^^^^^^^

Use snapshots to build a library of test images:

1.  **During practice:** Capture snapshots at various positions and lighting conditions
   
   .. code-block:: java
   
      limelight.captureSnapshot("blue_alliance_corner");
      limelight.captureSnapshot("red_alliance_wall");

2.  **At home:** Use these snapshots as input in the web interface to tune pipelines offline
3.  **Before competition:** Verify your pipelines work on all captured scenarios

Reliability Tips
^^^^^^^^^^^^^^^^

.. important::
   **Cable Quality is Critical**
   
   We cannot stress this enough: use the official Limelight cable. Third-party cables are the #1 cause of random disconnects and brownouts.

**Other reliability tips:**

*   **Secure mounting:** Use at least 2 mounting points with thread locker
*   **Cable strain relief:** Prevent stress on the USB connectors
*   **Firmware updates:** Keep LimelightOS up to date
*   **Test before matches:** Power cycle the robot and verify the Limelight reconnects

AprilTag Relocalization Strategies
-----------------------------------

When to Update Odometry
^^^^^^^^^^^^^^^^^^^^^^^^

Don't blindly trust every Limelight pose. Use these criteria:

.. code-block:: java

   LLResult result = limelight.getLatestResult();
   
   if (result != null && result.isValid()) {
       Pose3D limelightPose = result.getBotpose_MT2();
       long staleness = result.getStaleness();
       
       // Only update if data is fresh and we see multiple tags
       List<LLResultTypes.FiducialResult> tags = result.getFiducialResults();
       
       if (limelightPose != null && staleness < 50 && tags.size() >= 2) {
           // High confidence - update odometry
           myLocalizer.updateFromLimelight(limelightPose);
       } else if (limelightPose != null && staleness < 50 && tags.size() == 1) {
           // Medium confidence - use with caution
           // Maybe only update if odometry drift is large
           myLocalizer.softUpdateFromLimelight(limelightPose);
       }
   }

Sensor Fusion
^^^^^^^^^^^^^

For best results, fuse Limelight data with your wheel odometry:

*   **Wheel odometry:** High frequency (200+ Hz), accurate for short distances, drifts over time
*   **Limelight:** Lower frequency (20-50 Hz), absolute position, can have outliers

**Kalman Filter Approach:**

Use a Kalman filter or similar sensor fusion algorithm to combine both sources. Libraries like `Road Runner <https://github.com/acmerobotics/road-runner>`__ can help with this.

**Simple Approach:**

Periodically reset your odometry to the Limelight pose when you're stationary and see multiple tags:

.. code-block:: java

   if (robot.isStationary() && tags.size() >= 2) {
       odometry.setPose(limelightPose);
   }

Field-Relative Driving
^^^^^^^^^^^^^^^^^^^^^^

Use Limelight's field-relative pose for field-centric driving:

.. code-block:: java

   Pose3D botpose = result.getBotpose_MT2();
   
   if (botpose != null) {
       double fieldYaw = botpose.getOrientation().getYaw();
       
       // Use this for field-centric driving
       drivetrain.setFieldCentricHeading(fieldYaw);
   }

Troubleshooting Performance Issues
-----------------------------------

Limelight Not Detecting Tags
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

1.  **Check exposure:** Too high = motion blur. Lower it to 2-5ms
2.  **Check gain:** Too low = dark image. Increase to 15-25
3.  **Check distance:** Tags are harder to detect beyond 10-12 feet
4.  **Check angle:** Extreme angles (> 60°) reduce detection reliability
5.  **Check lighting:** Tune under competition-like lighting

Inaccurate Localization
^^^^^^^^^^^^^^^^^^^^^^^^

1.  **Verify camera calibration:** Ensure X, Y, Z offsets are accurate
2.  **Use MegaTag 2:** Always update robot orientation with IMU data
3.  **Check for multiple tags:** Single-tag poses are less accurate
4.  **Verify field map:** Ensure the correct season's map is loaded

High Latency
^^^^^^^^^^^^

1.  **Check poll rate:** Don't set it higher than needed
2.  **Check network:** Ensure strong Wi-Fi connection to Control Hub
3.  **Check staleness:** If data is consistently > 100ms old, there's a network issue
4.  **Restart Limelight:** Power cycle the robot to reset the connection

Integration with Other Systems
-------------------------------

Road Runner
^^^^^^^^^^^

Integrate Limelight with Road Runner for autonomous path following:

.. code-block:: java

   // In your localizer
   @Override
   public Pose2d getPoseEstimate() {
       // Get wheel odometry pose
       Pose2d wheelPose = super.getPoseEstimate();
       
       // Get Limelight pose
       LLResult result = limelight.getLatestResult();
       if (result != null && result.isValid()) {
           Pose3D limelightPose = result.getBotpose_MT2();
           
           if (limelightPose != null && result.getStaleness() < 50) {
               // Fuse the two estimates
               return fusePoses(wheelPose, limelightPose);
           }
       }
       
       return wheelPose;
   }

FTCLib
^^^^^^

Use FTCLib's command-based framework with Limelight:

.. code-block:: java

   public class AlignToTagCommand extends CommandBase {
       private final Limelight3A limelight;
       private final DriveSubsystem drive;
       
       @Override
       public void execute() {
           LLResult result = limelight.getLatestResult();
           
           if (result != null && result.isValid()) {
               double tx = result.getTx();
               double strafeSpeed = tx * 0.03;
               drive.strafe(strafeSpeed);
           }
       }
       
       @Override
       public boolean isFinished() {
           LLResult result = limelight.getLatestResult();
           return result != null && Math.abs(result.getTx()) < 2.0; // Within 2 degrees
       }
   }
