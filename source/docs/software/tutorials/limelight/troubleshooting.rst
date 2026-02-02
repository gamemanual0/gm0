.. include:: <isonum.txt>

Troubleshooting
===============

This page covers common issues and their solutions.

Status Light Indicators
-----------------------

The Limelight's green status light provides basic diagnostic information:

**Slow Blink (1 Hz)**
   No targets detected. The pipeline is running, but nothing matches your detection criteria.

**Fast Blink (10 Hz)**
   Target(s) detected! The pipeline has found what it's looking for.

**Solid/Off**
   The Limelight may not be powered or initialized. Check your USB connection and ensure ``limelight.start()`` was called in your code.

Common Issues
-------------

Limelight Not Appearing in Hardware Configuration
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Symptoms:**
   The Limelight doesn't show up when you scan for hardware in the Driver Hub.

**Solutions:**

1.  **Check the cable:**
   
   *   Ensure the USB-C end is fully seated in the Limelight
   *   Ensure the USB-A end is fully seated in a **USB 3.0 (blue)** port on the Control Hub
   *   Try the official Limelight cable if using a third-party cable

2.  **Restart the Control Hub:**
   
   *   Power off the Control Hub completely
   *   Wait 10 seconds
   *   Power it back on and try scanning again

3.  **Check for damage:**
   
   *   Inspect the USB-C port on the Limelight for bent pins or debris
   *   Inspect the cable for cuts or kinks

4.  **Try a different port:**
   
   *   If the Control Hub has multiple USB 3.0 ports, try a different one

Random Disconnects During Matches
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Symptoms:**
   The Limelight works fine in testing but randomly disconnects during matches.

**Solutions:**

1.  **Use the official cable:**
   
   .. warning::
      This is the **#1 cause** of random disconnects. Third-party USB-C cables, especially cheap ones, often have poor shielding and can't handle the data rate.
   
   Always use the high-quality cable that ships with the Limelight.

2.  **Add strain relief:**
   
   *   Secure the cable near both the Limelight and Control Hub
   *   Prevent the cable from being pulled, twisted, or bent sharply during robot movement
   *   Use zip ties or cable clips to route the cable along the robot's frame

3.  **Check for electromagnetic interference:**
   
   *   Route the Limelight cable away from motor wires and high-current power cables
   *   Avoid running the cable parallel to motor wires for long distances
   *   Consider using a shielded USB cable if interference is severe

4.  **Verify power:**
   
   *   Ensure your battery is fully charged
   *   Check that the Control Hub isn't browning out under load
   *   Monitor battery voltage during matches

No Targets Detected (Slow Blink)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Symptoms:**
   The Limelight is connected and running, but the green light blinks slowly and no targets are detected.

**Solutions:**

1.  **Check the pipeline:**
   
   *   Verify you're on the correct pipeline (``limelight.pipelineSwitch(0)``)
   *   Open the web interface and check the camera feed
   *   Ensure the target is visible in the camera's field of view

2.  **Adjust exposure and gain:**
   
   *   If the image is too dark, increase gain (15-25)
   *   If the image is too bright or washed out, decrease gain
   *   If you see motion blur, decrease exposure (2-5ms)

3.  **Check distance and angle:**
   
   *   AprilTags are harder to detect beyond 10-12 feet
   *   Extreme angles (> 60°) reduce detection reliability
   *   Move closer or adjust the robot's position

4.  **Verify lighting conditions:**
   
   *   If you tuned in a dark environment, the pipeline may not work under bright competition lights
   *   Re-tune under competition-like lighting

5.  **Check thresholding (color pipelines):**
   
   *   Open the web interface and view the thresholding visualizer
   *   Adjust HSV ranges until only your target is highlighted

Inaccurate Robot Localization
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Symptoms:**
   The Limelight reports a robot position, but it's clearly wrong or jumps around.

**Solutions:**

1.  **Verify camera calibration:**
   
   *   In the web interface, go to your AprilTag pipeline's **Robot** tab
   *   Ensure the X, Y, Z offsets match your actual camera position
   *   Measure carefully from the center of your robot's footprint

2.  **Enable Full 3D:**
   
   *   In the AprilTag pipeline's **Advanced** tab, ensure **Full 3D** is enabled
   *   This is required for accurate localization

3.  **Use MegaTag 2:**
   
   *   Always call ``limelight.updateRobotOrientation()`` with your IMU heading
   *   Use ``result.getBotpose_MT2()`` instead of ``result.getBotpose()``

4.  **Check the field map:**
   
   *   In the **Settings** tab, verify the correct field map is loaded
   *   For the current season, it should be "Into The Deep 2024-2025"

5.  **Look for multiple tags:**
   
   *   Single-tag poses are less accurate than multi-tag poses
   *   Position your robot to see 2+ tags when possible

6.  **Check for reflections:**
   
   *   Shiny surfaces can cause false detections
   *   Ensure the camera isn't seeing reflections of AprilTags in mirrors or glossy floors

Grainy or Poor Quality Image
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Symptoms:**
   The camera feed looks grainy, noisy, or low quality.

**This is normal!**

.. note::
   **Grainy Image:** This is normal! The stream is compressed to reduce latency. The Limelight prioritizes speed over image quality.
   
   As long as targets are being detected reliably, the image quality is sufficient.

**If targets are NOT being detected:**

*   Lower the gain to reduce noise (but the image will be darker)
*   Improve lighting conditions
*   Clean the camera lens

Limelight Feels Hot
^^^^^^^^^^^^^^^^^^^

**Symptoms:**
   The Limelight's case is hot to the touch.

**This is normal!**

.. note::
   **Hot to Touch:** The case acts as a heatsink. It is designed to run hot to keep the internal CPU at a safe temperature.
   
   If the Limelight is too hot to touch comfortably, it's working as intended. The aluminum case dissipates heat efficiently.

**If the Limelight is shutting down or malfunctioning:**

*   Ensure it has adequate airflow (don't enclose it in a sealed box)
*   Check that it's not in direct sunlight or near heat sources
*   Verify the ambient temperature isn't excessively high

High Latency / Stale Data
^^^^^^^^^^^^^^^^^^^^^^^^^^

**Symptoms:**
   ``result.getStaleness()`` consistently returns values > 100ms.

**Solutions:**

1.  **Check network connection:**
   
   *   Ensure your laptop/Driver Hub has a strong Wi-Fi connection to the Control Hub
   *   Move closer to the Control Hub if the signal is weak

2.  **Reduce poll rate:**
   
   *   If you set ``setPollRateHz()`` very high (> 200), try lowering it to 100

3.  **Restart the Limelight:**
   
   *   Power cycle the robot to reset the USB connection
   *   This often fixes transient network issues

4.  **Check for network congestion:**
   
   *   Disable camera streaming during matches
   *   Reduce telemetry update frequency
   *   Ensure no other devices are connected to the Control Hub's network

Pipeline Not Switching
^^^^^^^^^^^^^^^^^^^^^^^

**Symptoms:**
   You call ``limelight.pipelineSwitch(1)`` but the pipeline doesn't change.

**Solutions:**

1.  **Check the pipeline index:**
   
   *   Pipelines are 0-indexed (0-9, not 1-10)
   *   Verify the pipeline you're switching to is configured in the web interface

2.  **Wait for the switch:**
   
   *   Pipeline switching takes ~10ms
   *   Don't immediately query results after switching; wait at least one loop iteration

3.  **Verify in telemetry:**
   
   .. code-block:: java
   
      LLResult result = limelight.getLatestResult();
      if (result != null) {
          telemetry.addData("Active Pipeline", result.getPipelineIndex());
      }

Can't Access Web Interface
^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Symptoms:**
   ``http://limelight.local:5801`` doesn't load in your browser.

**Solutions:**

1.  **Check connection:**
   
   *   If connected via USB to your laptop, ensure the Limelight is powered on (green light active)
   *   If connected via Control Hub, ensure your laptop is on the Control Hub's Wi-Fi network

2.  **Try the IP address:**
   
   *   Instead of ``limelight.local:5801``, try ``172.29.0.1:5801`` (when connected via Control Hub)

3.  **Use Limelight Hardware Manager:**
   
   *   Download and run the Limelight Hardware Manager application
   *   It will scan for and connect to your Limelight automatically

4.  **Check firewall:**
   
   *   Some laptop firewalls block local network connections
   *   Temporarily disable your firewall to test

5.  **Restart the Limelight:**
   
   *   Unplug and replug the USB cable
   *   Wait 20 seconds for it to boot up

Getting Help
------------

If you've tried the solutions above and are still experiencing issues:

1.  **FTC Discord:**
   
   *   Join the `FTC Discord <https://discord.com/invite/ftc>`__
   *   Ask in the **#programming** or **#vision** channels
   *   Include:
      
      *   What you're trying to do
      *   What's happening vs. what you expect
      *   Relevant code snippets
      *   Screenshots from the web interface

2.  **Limelight Documentation:**
   
   *   Visit `Limelight Docs <https://docs.limelightvision.io>`__
   *   Check the FTC-specific sections

3.  **ChiefDelphi:**
   
   *   Post in the `FTC section <https://www.chiefdelphi.com/c/first-programs/first-tech-challenge/51>`__
   *   Many experienced teams monitor this forum

4.  **Your Vendor:**
   
   *   Contact the vendor you purchased the Limelight from
   *   They may offer technical support or replacement if hardware is defective
