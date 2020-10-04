========================
Control System Internals
========================

When using any method in the FTC SDK that accesses hardware, be that setting
motor power, reading an encoder, a sensor, etc a :term:`LynxMessage` is sent.
These are blocking, which means that only one can be sent over an interface at
a time, and if more than one is sent they are run sequentially.

.. warning::
   :term:`LynxMessages <LynxMessage>` being blocking means that multithreading
   hardware calls is at best not helpful and typically harmful.

If an Android phone and Expansion Hub is used, :term:`LynxMessages
<LynxMessage>` are sent over USB; however if a Control Hub is used,
:term:`LynxMessages <LynxMessage>` are sent over UART. This is very important,
not just because of the increased reliability with UART instead of USB, but
also because :term:`LynxMessages <LynxMessage>` take approximately 3
milliseconds over USB and approximately 2 milliseconds over UART. (The only
exception is :term:`LynxMessages <LynxMessage>` that interact with I2C; these
take upward of 7 milliseconds over USB, and **???** over UART.)

Bulk Reads
==========
.. sidebar::
   SDK Version 5.3 or Below

   If you are on an SDK version 5.3 or below, there still is as a way to do
   bulk reads. **However, the minimum legal SDK version is 6.0 for Ultimate
   Goal, and there is no advantage to this method if you are running a more
   modern SDK.**

   That being said, if you are using an SDK version 5.3 or below, to use bulk
   reads `RevExtensions2 <https://github.com/OpenFTC/RevExtensions2/>`_ is
   recommended; to see how to do this, see the `example
   <https://github.com/OpenFTC/RevExtensions2/blob/master/examples/src/main/java/org/openftc/revextensions2/examples/BulkDataExample.java>`_.

Bulk reads are a :term:`LynxMessage` that reads all sensor values (except I2C)
on a hub at once. This takes the same amount of time to execute as any other
:term:`LynxMessage`, and can therefore save a lot of time in the execution
loop; with a bulk read, reading ten sensors takes as much time as reading one
sensor (if they are not I2C and are on the same hub).

This became much simpler to do with SDK versions 5.4 and above, with a built-in
way to easily access it. There are 3 modes available: ``OFF`` mode, ``AUTO``
mode, and ``MANUAL`` mode. Here is `the official example
<https://github.com/FIRST-Tech-Challenge/FtcRobotController/blob/master/FtcRobotController/src/main/java/org/firstinspires/ftc/robotcontroller/external/samples/ConceptMotorBulkRead.java>`_
on how to use bulk reads.

Off Mode
--------
This is the default, and the most boring; it means bulk reads are disabled.
However, to manually set it you need to run
::

   List<LynxModule> allHubs = hardwareMap.getAll(LynxModule.class);

   for (LynxModule hub : allHubs) {
       hub.setBulkCachingMode(LynxModule.BulkCaching.OFF);
   }

Auto Mode
---------
This is the simplest mode to use that utilizes bulk reads; a new bulk read is
done when a hardware read is repeated. As an example of this
::

   List<LynxModule> allHubs = hardwareMap.getAll(LynxModule.class);

   for (LynxModule hub : allHubs) {
       hub.setBulkCachingMode(LynxModule.BulkCaching.AUTO);
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

However, this can be problematic, if the same hardware read is called more than
once in a given loop; an example of this
::

   List<LynxModule> allHubs = hardwareMap.getAll(LynxModule.class);

   for (LynxModule hub : allHubs) {
       hub.setBulkCachingMode(LynxModule.BulkCaching.AUTO);
   }

   while (opModeIsActive()) {
       // Will run two bulk read per cycles,
       // as frontLeftMotor.getPosition() is called twice
       int frontLeftEncoderPos = frontLeftMotor.getPosition();
       int frontLeftEncoderPos2 = frontLeftMotor.getPosition();
   }

Overall, this is recommended, as it is very unlikely to mess
anything up and can give significant performance improvements for little
effort. On the user side, one does not need to manually flush the bulk read
cache; however, this means you lose some control.

Manual Mode
-----------
In manual mode the cache for bulk reads is only reset once manually reset.
This can be useful, as it is the way to absolutely minimize extraneous reads,
however if the cache is not reset, stale values will be returned. That being
said, here's a proper implementation of ``MANUAL`` mode
::

   List<LynxModule> allHubs = hardwareMap.getAll(LynxModule.class);

   for (LynxModule hub : allHubs) {
       hub.setBulkCachingMode(LynxModule.BulkCaching.MANUAL);
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

.. warning::
   When in ``MANUAL`` mode, if the cache is not cleared appropriately, stale
   values will be returned. For that reason, if you are not quite sure what you
   are doing, we recommend ``AUTO`` mode; while ``MANUAL`` mode can have some
   performance improvements if ``AUTO`` mode is not used optimally, it has less
   room for catastrophic error.

Control System Internals Glossary
=================================

.. glossary::
    Lynx
        "Lynx" is the codename used within the FTC SDK for the Expansion Hub.
        Since the Control Hub is basically a System on a Chip running Android
        attached to an Expansion Hub, it is used for the Control Hub too.

    LynxMessage
        A `LynxMessage
        <https://github.com/OpenFTC/OpenRC-Turbo/blob/master/Hardware/src/main/java/com/qualcomm/hardware/lynx/commands/LynxMessage.java>`_
        represents a message that can be sent to a :term:`Lynx` module; it can
        send and receive information.
