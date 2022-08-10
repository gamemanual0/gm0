Motor Wiring And Mounting
=========================

Power Connections
-----------------

Depending on the vendor, the motors can come with one of the following connectors:

- :term:`JST-VH` connector (REV motors)
- :term:`Anderson PowerPole` (AndyMark's NeveRest)
- 3.5mm Bullet connector (goBILDA)

:term:`JST-VH` is probably easiest to use, as it is the same connector used by REV Expansion Hub. The :term:`JST-VH` connection has a locking mechanism for peace of mind. :term:`PowerPoles <Anderson PowerPole>` are very reliable and sturdy but somewhat bulky. Bullet connectors are very compact, making it easy to route the cable through openings, but can disconnect if someone pulls on the wire, so you need to be careful with them.

Since REV Hubs use :term:`JST-VH` connectors, to connect a motor with :term:`Anderson PowerPole` or bullet connectors you need adapters which you can purchase from REV Robotics and goBILDA.

You can extend or shorten motor power cables by soldering additional length of cable. This is legal as long as you use 18 gauge or thicker cables. Teams can also purchase extender cables to chain multiple pieces of cable together.

For more tips on wiring the robot, see :doc:`/docs/power-and-electronics/wiring`.

.. _encoders:

Encoders
--------

.. note:: Encoder cables are very fragile. Take care to protect them from snagging and sharp impacts! It may be prudent to inspect encoder wires once in a while.

If using encoders, you need to connect them to the REV hub by a 4-wire cable. REV Hub uses 4-pin :term:`JST-PH` connector for encoder ports. REV motors also use :term:`JST-PH` encoder ports, so you can connect them to the hub by :term:`JST-PH` 4-wire cable, available from REV Robotics.

goBILDA motors use JST-XH 4-pin encoder port (**note the difference: XH vs PH**), so to connect them, you need a JST-PH to JST-XH cable, available from AndyMark or goBILDA.

AndyMark also use JST-XH encoder port; however, an additional problem is that encoders of these motors require 5v power, whereas the encoder port of REV hub only provides 3.3v. Thus, it is recommended that you connect them using level shifters, available from REV Robotics. For details please check the `REV's documentation <https://docs.revrobotics.com/duo-control/sensors/5v-sensors#connecting-5v-encoder>`_.

Mounting Motors
---------------

There are two ways to mount a motor: using a :term:`clamping mount <Clamp Mounting>` (such as `32mm goBILDA clamping mount <https://www.gobilda.com/1400-series-1-side-2-post-clamping-mount-32mm-bore/>`_) or :term:`face mounting <Face Mounting>`, using threaded holes in the front face of the gearbox.

Clamping Mount
^^^^^^^^^^^^^^

- Easiest way to mount a motor, as only one screw is required.
- Not as secure as face mounting, as clamp friction is looser than face mounting using screws.
- Some gearboxes (particularly spur gear) do not place the output shaft in the center of the gearbox.

  Thus, motors with offset shafts are particularly sensitive to clamp mounts, as any rotation of the motor will alter the shaft position. This may have the consequence of losing :term:`chain <Chain>` or :term:`belt <HTD Belt>` tension.
- It is possible to double clamp a motor - one in front, and one in the back.
- To increase friction and reduce the chance of loosening, one can wrap electrical tape around the area of the motor that will be clamped down. Use a couple wraps of tape.

Face Mount
^^^^^^^^^^

- Slightly more tedious and uses more screws.
- Repairing a broken gearbox or swapping a motor is slower than if using clamp mounting.
- Face mounting is much more reliable than clamp mounting, as the screws hold the motor in place very tightly.
- Teams can use **BLUE** :term:`Loctite` on high-vibration motors to ensure the motor does not jar loose.

.. tip:: :term:`Face mounting <Face Mounting>` is recommended for high-load and/or high vibration use cases such as drivetrain. This is as :term:`clamp mounted <Clamp Mounting>` motors can shift and come loose easier than :term:`face mounted <Face Mounting>` motors. It is also recommended to use **BLUE** :term:`Loctite` when :term:`face mounting <Face Mounting>`, if possible.

Note that the pattern of :term:`face mounting <Face Mounting>` holes is different for different vendors. For example, goBILDA uses 4 M4 holes in a square with side 16 mm, whereas AndyMark classic motors use 6 M3 holes on a 31 mm diameter circle. Thus, face mounting NeveRest motors to goBILDA parts requires use of special adapters, and vice versa. Similarly, gearbox diameter also varies between motors, so when choosing a :term:`clamping hub <Clamping Hub>`, make sure to use the right diameter.
