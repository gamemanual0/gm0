.. include:: <isogrk3.txt>

Lynx Module
===========

The Lynx Module is an object that represents the Control Hub and Expansion Hub. One Lynx Module object is created per connected hub.

General Explanation
-------------------

Obtaining Lynx Module Object
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

A list of connected Lynx Module objects can be obtained using ``hardwareMap.getAll(LynxModule.class);``. The Control Hub or the Expansion Hub connected to the phone via USB will have ``isMaster()`` set to true, and the hub connected over RS-485 will have it set to false.

LED
^^^

The REV hub's LED can be set using ``setConstant()`` or ``setPattern()``.  ``setConstant()`` sets a constant color to the LED, and ``setPattern()`` allows the user to define a pattern of colors for the REV hub to follow.

Power
^^^^^

The total amount of current that the REV hub is pulling can be measured using ``getCurrent()``. This is the current pull of the 12V input in the specified units, so it includes everything connected to the hub as well as the hub itself. In addition, the input voltage to the expansion hub can be measured using ``getInputVoltage()``, which returns the battery voltage in the specified units.

Bulk Reads
^^^^^^^^^^

Bulk reads can also be managed through the lynx module object. See :doc:`/docs/software/tutorials/bulk-reads` for more information on this.
