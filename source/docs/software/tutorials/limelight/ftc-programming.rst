.. include:: <isonum.txt>

FTC Programming
===============

This page covers programming the Limelight 3A in FTC using Java.

.. note::
   **FTC Limelight Javadoc:** `Javadoc <https://javadoc.io/doc/org.firstinspires.ftc>`__
   
   **Complete Examples Repository:** `Limelight FTC Examples <https://github.com/LimelightVision/limelight-ftc-examples>`__

Tips for Success
-----------------

.. tip::
   **Do the simple thing first.**
   
   In FRC, the best software teams often use the simplest approaches. For example, FRC Team 2056 in 2024 used a standard 90FPS color pipeline instead of a neural network to track game pieces.
   
   Ask yourself: "Do I need full 3D localization, or can I just strafe until my crosshair is centered on a tag?" (``strafeSpeed = result.getTx() * 0.03``)

Key Concepts
------------

1. Initialization
^^^^^^^^^^^^^^^^^

Set up your Limelight in your OpMode:

.. code-block:: java

   import com.qualcomm.hardware.limelightvision.LLResult;
   import com.qualcomm.hardware.limelightvision.LLResultTypes;
   import com.qualcomm.hardware.limelightvision.LLStatus;
   import com.qualcomm.hardware.limelightvision.Limelight3A;

   public class MyOpMode extends LinearOpMode {
       
       private Limelight3A limelight;

       @Override
       public void runOpMode() {
           // Get the Limelight from the hardware map
           limelight = hardwareMap.get(Limelight3A.class, "limelight");
           
           // Set how often we ask Limelight for data (100 times per second)
           limelight.setPollRateHz(100);
           
           // Tell Limelight to start processing
           limelight.start();
           
           // ... rest of your code
       }
   }

2. Pipeline Management
^^^^^^^^^^^^^^^^^^^^^^^

Pipelines are instantly swappable "programs" that change how Limelight processes images. You can configure up to 10 pipelines in the web interface.

.. code-block:: java

   // Switch to pipeline 0 (fire-and-forget, takes ~10ms)
   limelight.pipelineSwitch(0);

   // Later, check which pipeline is active
   LLResult result = limelight.getLatestResult();
   if (result != null) {
       int currentPipeline = result.getPipelineIndex();
       telemetry.addData("Active Pipeline", currentPipeline);
   }

3. Getting and Using Results
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

``LLResult`` contains all the information about what Limelight sees:

.. code-block:: java

   LLResult result = limelight.getLatestResult();
   
   if (result != null && result.isValid()) {
       // Basic targeting data
       double tx = result.getTx(); // Horizontal offset (degrees, -29.8 to 29.8)
       double ty = result.getTy(); // Vertical offset (degrees, -24.85 to 24.85)
       double ta = result.getTa(); // Target area (0-100% of image)
       
       telemetry.addData("Target X", tx);
       telemetry.addData("Target Y", ty);
       telemetry.addData("Target Area", ta);
   } else {
       telemetry.addData("Limelight", "No Targets");
   }

**Simple Alignment Example:**

.. code-block:: java

   LLResult result = limelight.getLatestResult();
   
   if (result != null && result.isValid()) {
       double tx = result.getTx();
       
       // Proportional control: strafe to center the target
       double strafeSpeed = tx * 0.03; // Adjust multiplier as needed
       
       // Apply to your drivetrain
       drive.setStrafeSpeed(strafeSpeed);
   }

4. Python SnapScripts
^^^^^^^^^^^^^^^^^^^^^

You can write custom Python pipelines in the web interface and communicate with them from Java:

.. code-block:: java

   // Send 8 numbers to your Python script
   double[] inputs = {1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0};
   limelight.updatePythonInputs(inputs);

   // Get numbers back from Python
   LLResult result = limelight.getLatestResult();
   if (result != null) {
       double[] pythonOutputs = result.getPythonOutput();
       if (pythonOutputs != null && pythonOutputs.length > 0) {
           double firstOutput = pythonOutputs[0];
           telemetry.addData("Python Output", firstOutput);
       }
   }

.. tip::
   Use the **LLM-based SnapScript generator** in the web interface to help write your Python code.

5. Robot Localization (MegaTag 1)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Limelight can calculate your robot's position on the field using AprilTags.

**Prerequisites:**

*   Enable **Full 3D** in your AprilTag pipeline's **Advanced** tab
*   Configure your camera's position relative to your robot's center (see :doc:`software-configuration`)
*   Ensure the correct field map is loaded (e.g., "Into The Deep")

**Coordinate System:**

*   **(0, 0, 0)** is the center of the field floor
*   **X-axis:** Positive toward the red alliance wall
*   **Y-axis:** Positive toward the blue alliance wall (for standard orientation)
*   **Yaw = 0°:** Blue alliance on the left, red alliance on the right

.. code-block:: java

   LLResult result = limelight.getLatestResult();
   
   if (result != null && result.isValid()) {
       Pose3D botpose = result.getBotpose();
       
       if (botpose != null) {
           double x = botpose.getPosition().x;
           double y = botpose.getPosition().y;
           double yaw = botpose.getOrientation().getYaw();
           
           telemetry.addData("Robot Position", 
               String.format("(%.2f, %.2f) @ %.1f°", x, y, yaw));
       }
   }

6. Robot Localization (MegaTag 2)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

MegaTag 2 fuses your IMU data with AprilTag detections for **significantly improved accuracy**.

.. important::
   **Always use MegaTag 2 when possible.** It provides better accuracy, especially when:
   
   *   Viewing tags at extreme angles
   *   Viewing only one tag
   *   The robot is moving

.. code-block:: java

   // Update Limelight with your robot's current heading
   YawPitchRollAngles orientation = imu.getRobotYawPitchRollAngles();
   limelight.updateRobotOrientation(orientation.getYaw(AngleUnit.DEGREES));
   
   // Get the improved pose estimate
   LLResult result = limelight.getLatestResult();
   
   if (result != null && result.isValid()) {
       Pose3D botpose_mt2 = result.getBotpose_MT2();
       
       if (botpose_mt2 != null) {
           double x = botpose_mt2.getPosition().x;
           double y = botpose_mt2.getPosition().y;
           double yaw = botpose_mt2.getOrientation().getYaw();
           
           telemetry.addData("MT2 Position", 
               String.format("(%.2f, %.2f) @ %.1f°", x, y, yaw));
       }
   }

**AprilTag Relocalization:**

A common use case is to periodically update your odometry with Limelight data:

.. code-block:: java

   // In your main loop
   limelight.updateRobotOrientation(imu.getRobotYawPitchRollAngles().getYaw(AngleUnit.DEGREES));
   LLResult result = limelight.getLatestResult();
   
   if (result != null && result.isValid()) {
       Pose3D limelightPose = result.getBotpose_MT2();
       
       if (limelightPose != null) {
           // Update your odometry/localization system
           // Only update if the data is fresh and reliable
           long staleness = result.getStaleness();
           if (staleness < 50) { // Less than 50ms old
               myLocalizer.updateFromLimelight(limelightPose);
           }
       }
   }

7. Detailed Result Types
^^^^^^^^^^^^^^^^^^^^^^^^^

Depending on your pipeline type, you can access detailed information about individual detections.

.. note::
   **For most applications, use ``getTx()``, ``getTy()``, and ``getTa()``** from the main ``LLResult`` object. Only use detailed result types when you need specific information about multiple targets.

7.1 Color Results
"""""""""""""""""

.. code-block:: java

   List<LLResultTypes.ColorResult> colorTargets = result.getColorResults();
   
   for (LLResultTypes.ColorResult target : colorTargets) {
       double x = target.getTargetXDegrees();
       double y = target.getTargetYDegrees();
       double area = target.getTargetArea();
       
       telemetry.addData("Color Target", 
           String.format("X: %.1f°, Y: %.1f°, Area: %.1f%%", x, y, area));
   }

7.2 Fiducial/AprilTag Results
""""""""""""""""""""""""""""""

.. code-block:: java

   List<LLResultTypes.FiducialResult> fiducials = result.getFiducialResults();
   
   for (LLResultTypes.FiducialResult fiducial : fiducials) {
       int id = fiducial.getFiducialId();
       double x = fiducial.getTargetXDegrees();
       double y = fiducial.getTargetYDegrees();
       
       // 3D pose of the tag relative to the robot
       Pose3D tagPoseRobotSpace = fiducial.getRobotPoseTargetSpace();
       double distance = Math.sqrt(
           Math.pow(tagPoseRobotSpace.getPosition().x, 2) +
           Math.pow(tagPoseRobotSpace.getPosition().y, 2)
       );
       
       telemetry.addData("Tag " + id, 
           String.format("%.1f inches away", distance));
   }

**Available 3D Pose Methods:**

*   ``getRobotPoseTargetSpace()`` - Robot pose relative to the tag (most useful)
*   ``getCameraPoseTargetSpace()`` - Camera pose relative to the tag
*   ``getRobotPoseFieldSpace()`` - Robot pose in field coordinates (based on this tag alone)
*   ``getTargetPoseCameraSpace()`` - Tag pose in camera coordinates
*   ``getTargetPoseRobotSpace()`` - Tag pose in robot coordinates

7.3 Barcode Results
""""""""""""""""""""

.. code-block:: java

   List<LLResultTypes.BarcodeResult> barcodes = result.getBarcodeResults();
   
   for (LLResultTypes.BarcodeResult barcode : barcodes) {
       String data = barcode.getData();
       String family = barcode.getFamily();
       
       telemetry.addData("Barcode", data + " (" + family + ")");
   }

7.4 Classifier Results
"""""""""""""""""""""""

Neural classifiers identify what type of object the camera sees:

.. code-block:: java

   List<LLResultTypes.ClassifierResult> classifications = result.getClassifierResults();
   
   for (LLResultTypes.ClassifierResult classification : classifications) {
       String className = classification.getClassName();
       double confidence = classification.getConfidence();
       
       telemetry.addData("Classification", 
           String.format("%s (%.1f%% confident)", className, confidence * 100));
   }

7.5 Detector Results
"""""""""""""""""""""

Neural detectors find and locate specific objects:

.. code-block:: java

   List<LLResultTypes.DetectorResult> detections = result.getDetectorResults();
   
   for (LLResultTypes.DetectorResult detection : detections) {
       String className = detection.getClassName();
       double x = detection.getTargetXDegrees();
       double y = detection.getTargetYDegrees();
       double confidence = detection.getConfidence();
       
       telemetry.addData(className, 
           String.format("at (%.1f°, %.1f°), %.0f%% confident", x, y, confidence * 100));
   }

8. Data Freshness
^^^^^^^^^^^^^^^^^

Check how old your data is:

.. code-block:: java

   LLResult result = limelight.getLatestResult();
   
   if (result != null) {
       long staleness = result.getStaleness(); // Milliseconds since capture
       
       if (staleness < 100) {
           telemetry.addData("Data", "Fresh (" + staleness + "ms old)");
       } else {
           telemetry.addData("Data", "Stale (" + staleness + "ms old)");
       }
   }

.. tip::
   For critical applications (like autonomous alignment), only use data that's less than 50-100ms old.

9. Snapshots
^^^^^^^^^^^^

Capture images for offline pipeline tuning:

.. code-block:: java

   // Capture a snapshot with a descriptive name
   limelight.captureSnapshot("auto_start_position");

   // Later, delete old snapshots to free up space
   limelight.deleteSnapshots();

In the web interface's **Input** tab, you can select snapshots as the image source to tune pipelines without the robot.

10. Custom Field Maps
^^^^^^^^^^^^^^^^^^^^^^

Upload your own AprilTag layouts:

.. code-block:: java

   // Create a field map (see Limelight docs for full specification)
   LLFieldMap fieldMap = new LLFieldMap();
   // ... configure field map ...
   
   // Upload to the default slot
   boolean success = limelight.uploadFieldmap(fieldMap, null);
   
   if (success) {
       telemetry.addData("Field Map", "Uploaded!");
   } else {
       telemetry.addData("Field Map", "Upload failed");
   }

.. note::
   For standard FTC games, the pre-loaded field map is sufficient. Custom maps are useful for off-season events or custom practice fields.

Complete Example
----------------

Here's a complete TeleOp example using MegaTag 2:

.. code-block:: java

   package org.firstinspires.ftc.teamcode;

   import com.qualcomm.hardware.limelightvision.Limelight3A;
   import com.qualcomm.hardware.limelightvision.LLResult;
   import com.qualcomm.hardware.limelightvision.LLResultTypes.Pose3D;
   import com.qualcomm.robotcore.eventloop.opmode.LinearOpMode;
   import com.qualcomm.robotcore.eventloop.opmode.TeleOp;
   import com.qualcomm.robotcore.hardware.IMU;
   import org.firstinspires.ftc.robotcore.external.navigation.AngleUnit;
   import org.firstinspires.ftc.robotcore.external.navigation.YawPitchRollAngles;

   @TeleOp(name = "Limelight TeleOp Example", group = "Examples")
   public class LimelightTeleOpExample extends LinearOpMode {

       private Limelight3A limelight;
       private IMU imu;

       @Override
       public void runOpMode() {
           // Initialize hardware
           limelight = hardwareMap.get(Limelight3A.class, "limelight");
           imu = hardwareMap.get(IMU.class, "imu");

           // Configure Limelight
           limelight.setPollRateHz(100);
           limelight.pipelineSwitch(0); // Use pipeline 0 (AprilTag)
           limelight.start();

           telemetry.setMsTransmissionInterval(11);
           telemetry.addData("Status", "Initialized");
           telemetry.update();

           waitForStart();

           while (opModeIsActive()) {
               // Update Limelight with current robot heading
               YawPitchRollAngles orientation = imu.getRobotYawPitchRollAngles();
               limelight.updateRobotOrientation(orientation.getYaw(AngleUnit.DEGREES));

               // Get latest results
               LLResult result = limelight.getLatestResult();

               if (result != null && result.isValid()) {
                   // Basic targeting
                   telemetry.addData("Target X", "%.2f°", result.getTx());
                   telemetry.addData("Target Y", "%.2f°", result.getTy());

                   // Robot localization (MegaTag 2)
                   Pose3D botpose = result.getBotpose_MT2();
                   if (botpose != null) {
                       telemetry.addData("Robot X", "%.2f in", botpose.getPosition().x);
                       telemetry.addData("Robot Y", "%.2f in", botpose.getPosition().y);
                       telemetry.addData("Robot Yaw", "%.1f°", botpose.getOrientation().getYaw());
                   }

                   // Data freshness
                   telemetry.addData("Data Age", "%d ms", result.getStaleness());
               } else {
                   telemetry.addData("Limelight", "No valid targets");
               }

               telemetry.update();
           }
       }
   }
