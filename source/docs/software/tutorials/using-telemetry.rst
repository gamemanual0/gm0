Using Telemetry
===============

The SDK has "telemetry" that can be sent from the robot controller to the drivers station to display basic text. This telemetry is accessible through the ``Telemetry`` class, and the ``telemetry`` variable accessible in both OpMode and LinearOpMode.

Building Telemetry
------------------

There are two main methods used to add things to telemetry. ``addData()`` takes two parameters, a string for the caption, and then a value that can be any object. This is then printed on the phone screen in the format ``caption : value``. These lines are keyed, so adding a secondary ``addData()`` with the same caption will override the value set.

.. code::

   telemetry.addData("Caption 1", 2.5);
   telemetry.addData("Caption 2", "value");

The second method used to add things to telemetry is ``addLine()``. Add line can be used to add a line with no parameters, or can take a single string to add as a line.

.. code::

   telemetry.addLine("This is a line!");

Updating Telemetry
------------------

Once all telemetry items have been added (typically at the end of an opmode loop), ``telemetry.update()`` must be called. Calling this method is what pushes the values to the phone, so without it telemetry will not appear on the phone screen. Note that ``OpMode`` will call ``telemetry.update()`` automatically once per call of its ``loop``.

.. tip:: By default, telemetry is only refreshed on the phone every 250 ms. Any calls to ``telemetry.update()`` during this window will be saved and overwritten if update() is called again before 250 ms have elapsed. ``setMsTransmissionInterval()`` may be used to change the amount of time the SDK will wait between sending updates to the driver station.
