.. include:: <isonum.txt>

Control System Internals
========================

When using any method in the FTC SDK that accesses hardware, be that setting motor power, reading an encoder, a sensor, etc., a :term:`LynxCommand` is sent.

.. note::
   :term:`LynxCommands <LynxCommand>` are not sent directly from the Robot Controller to an :term:`Expansion Hub` through USB; they are sent through USB to an FTDI, which bridges to UART.

.. warning::
   :term:`LynxCommands <LynxCommand>` being blocking (and more specifically a per-bus master lock being present) means that multithreading hardware calls is at best not helpful and typically harmful to performance.

If an Android phone and :term:`Expansion Hub` is used, :term:`LynxCommands <LynxCommand>` are sent over USB; however if a Control Hub is used, :term:`LynxCommands <LynxCommand>` are sent over UART. This is very important, not just because of the increased reliability with UART instead of USB, but also because :term:`LynxCommands <LynxCommand>` take approximately 3 milliseconds over USB and approximately 2 milliseconds over UART.

.. note::

   Interacting with I2C devices takes significantly longer; upwards of 7 milliseconds over USB. However, this is not because each :term:`LynxCommand` takes longer, but because multiple :term:`LynxCommands <LynxCommand>` must be sent to interact with I2C.

   Please note that since version 5.5 of the SDK, I2C calls on the Control Hub are much faster than those on the Expansion Hub.

Bulk Reads
----------

Bulk reads are a :term:`LynxCommand` that reads all sensor values (except I2C) on a hub at once. This takes the same amount of time to execute as any other :term:`LynxCommand`, and can therefore save a lot of time in the execution loop; with a bulk read, reading ten sensors takes as much time as reading one sensor (if they are not I2C and are on the same hub).

This became much simpler to do with SDK versions 5.4 and above, with a built-in way to easily access it. There are 3 modes available: ``OFF`` mode, ``AUTO`` mode, and ``MANUAL`` mode. Here is `the official example <https://github.com/first-tech-challenge/FtcRobotController/blob/master/FtcRobotController/src/main/java/org/firstinspires/ftc/robotcontroller/external/samples/ConceptMotorBulkRead.java>`_ on how to use bulk reads.

Off Mode
^^^^^^^^

This is the default, and the most boring; it means bulk reads are not used by the sdk when calling normal hardware-access methods.

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
      // frontLeftMotor.getPosition() was called again,
      // a new bulk read would be issued
      int frontLeftEncoderPos = frontLeftMotor.getPosition();
      int frontRightEncoderPos = frontRightMotor.getPosition();
      int backLeftEncoderPos = backLeftMotor.getPosition();
      int backRightEncoderPos = backRightMotor.getPosition();
   }

However, this can be problematic, if the same hardware read is called more than once in a given loop; an example of this ::

   List<LynxModule> allHubs = hardwareMap.getAll(LynxModule.class);

   for (LynxModule hub : allHubs) {
      hub.setBulkCachingMode(LynxModule.BulkCachingMode.AUTO);
   }

   while (opModeIsActive()) {
      // Will run two bulk read per cycles,
      // as frontLeftMotor.getPosition() is called twice
      int frontLeftEncoderPos = frontLeftMotor.getPosition();
      int frontLeftEncoderPos2 = frontLeftMotor.getPosition();
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
      // even as frontLeftMotor.getPosition() is called twice
      // because the caches are being handled manually and cleared
      // once a loop
      for (LynxModule hub : allHubs) {
         hub.clearBulkCache();
      }

      int frontLeftEncoderPos = frontLeftMotor.getPosition();
      int frontLeftEncoderPos2 = frontLeftMotor.getPosition();
   }

.. warning:: When in ``MANUAL`` mode, if the cache is not cleared appropriately, stale values will be returned. For that reason, if you are not quite sure what you are doing, we recommend ``AUTO`` mode; while ``MANUAL`` mode can have some performance improvements if ``AUTO`` mode is not used optimally, it has less room for catastrophic error.

Control System Internals Glossary
---------------------------------

.. glossary::

   Control Hub
      The :term:`Control Hub` is an :term:`Expansion Hub` with an embedded Android single-board computer daughterboard connected to it. This enables it to not need a separate Robot Controller phone, as the daughterboard functions as the Robot Controller. Internally, :term:`LynxCommands <LynxCommand>` are sent over from the daughterboard to the :term:`Lynx board <Lynx>` over an internal UART connection.

      For more information, see the `official REV Control Hub documentation <https://docs.revrobotics.com/rev-control-system/control-system-overview/control-hub-basics>`_.

      .. warning:: Don't take apart a Control Hub unless you really know what you are doing. They can be damaged in the process, especially if one does not know how to properly reassemble it.

      .. image:: images/control-system-internals/control-hub-internals.jpg
         :alt: The single board computer and :term:`Lynx` board from a Control Hub

   Expansion Hub
      The Expansion Hub contains a :term:`Lynx board <Lynx>`. It can be controlled by an Android device running the FTC SDK. This will send it :term:`LynxCommands <LynxCommand>`, which will cause the Expansion Hub to respond accordingly.

      For more information, see the `official REV Expansion Hub documentation <https://docs.revrobotics.com/rev-control-system/control-system-overview/expansion-hub-basics>`_.

   Lynx
      "Lynx" is the codename of the board within the :term:`Expansion Hub` and :term:`Control Hub` that interacts with hardware. References to "Lynx" are made in the FTC SDK refer to this board.

      .. warning:: Don't take apart a Control or Expansion Hub unless you really know what you are doing. They can be damaged in the process, especially if one does not know how to properly reassemble it.

      .. figure:: images/control-system-internals/lynx-board.jpg
         :alt: A Lynx board that was removed from its case

         A Lynx board that was removed from its case

   LynxCommand
      A `LynxCommand <https://github.com/OpenFTC/Extracted-RC/blob/master/Hardware/src/main/java/com/qualcomm/hardware/lynx/commands/LynxCommand.java>`_ represents a command that can be sent to a :term:`Lynx` module; it can send and receive information.
