.. include:: <isogrk3.txt>

Bulk Reads
==========

Bulk reads are a LynxCommand that reads all sensor values (except I2C) on a hub at once. This takes the same amount of time to execute as any other LynxCommand, and can therefore save a lot of time in the execution loop; with a bulk read, reading ten sensors takes as much time as reading one sensor (if they are not I2C and are on the same hub).

This became much simpler to do with SDK versions 5.4 and above, with a built-in way to easily access it. Here is `the official example <https://github.com/first-tech-challenge/FtcRobotController/blob/master/FtcRobotController/src/main/java/org/firstinspires/ftc/robotcontroller/external/samples/ConceptMotorBulkRead.java>`_ on how to use bulk reads.

Off Mode
^^^^^^^^

This is the default, and the most boring; it means bulk reads are not used by the SDK when calling normal hardware-access methods.

.. note:: Bulk reads can still be accessed by calling the ``LynxModule.getBulkInputData()`` method, however if one wishes to use bulk reads (which we highly recommend) using ``AUTO`` or ``MANUAL`` modes is simpler.

To manually set ``OFF`` mode, you need to run ::

   List<LynxModule> allHubs = hardwareMap.getAll(LynxModule.class);

   for (LynxModule hub : allHubs) {
      hub.setBulkCachingMode(LynxModule.BulkCachingMode.OFF);
   }

Auto Mode
^^^^^^^^^

This is the simplest mode to use that utilizes bulk reads; a new bulk read is done when a hardware read is repeated. As an example of this ::

   List<LynxModule> allHubs = hardwareMap.getAll(LynxModule.class);

   for (LynxModule hub : allHubs) {
      hub.setBulkCachingMode(LynxModule.BulkCachingMode.AUTO);
   }

   while (opModeIsActive()) {
      // Will run one bulk read per cycle; however, if e.g.
      // frontLeftMotor.getCurrentPosition() was called again,
      // a new bulk read would be issued
      int frontLeftEncoderPos = frontLeftMotor.getCurrentPosition();
      int frontRightEncoderPos = frontRightMotor.getCurrentPosition();
      int backLeftEncoderPos = backLeftMotor.getCurrentPosition();
      int backRightEncoderPos = backRightMotor.getCurrentPosition();
   }

However, this can be problematic, if the same hardware read is called more than once in a given loop; an example of this ::

   List<LynxModule> allHubs = hardwareMap.getAll(LynxModule.class);

   for (LynxModule hub : allHubs) {
      hub.setBulkCachingMode(LynxModule.BulkCachingMode.AUTO);
   }

   while (opModeIsActive()) {
      // Will run two bulk read per cycles,
      // as frontLeftMotor.getCurrentPosition() is called twice
      int frontLeftEncoderPos = frontLeftMotor.getCurrentPosition();
      int frontLeftEncoderPos2 = frontLeftMotor.getCurrentPosition();
   }

Overall, this is recommended, as it is very unlikely to mess anything up and can give significant performance improvements for little effort. On the user side, one does not need to manually flush the bulk read cache; however, this means you lose some control.

Manual Mode
^^^^^^^^^^^

In manual mode the cache for bulk reads is only reset once manually reset. This can be useful, as it is the way to absolutely minimize extraneous reads, however if the cache is not reset, stale values will be returned. That being said, here's a proper implementation of ``MANUAL`` mode ::

   List<LynxModule> allHubs = hardwareMap.getAll(LynxModule.class);

   for (LynxModule hub : allHubs) {
      hub.setBulkCachingMode(LynxModule.BulkCachingMode.MANUAL);
   }

   while (opModeIsActive()) {
      // Will run one bulk read per cycle,
      // even as frontLeftMotor.getCurrentPosition() is called twice
      // because the caches are being handled manually and cleared
      // once a loop
      for (LynxModule hub : allHubs) {
         hub.clearBulkCache();
      }

      int frontLeftEncoderPos = frontLeftMotor.getCurrentPosition();
      int frontLeftEncoderPos2 = frontLeftMotor.getCurrentPosition();
   }

.. warning:: When in ``MANUAL`` mode, if the cache is not cleared appropriately, stale values will be returned. For that reason, if you are not quite sure what you are doing, we recommend ``AUTO`` mode; while ``MANUAL`` mode can have some performance improvements if ``AUTO`` mode is not used optimally, it has less room for catastrophic error.

.. tip:: Bulk reads are issued per hub, so you don't necessarily need to bulk read both hubs at the same time or every loop.
