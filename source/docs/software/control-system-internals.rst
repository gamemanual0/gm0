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


Control System Glossary
=======================

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
