====
Arms
====
Arms are another way to achieve extension past the 18” x 18” dimension of the
robot.
Unlike linear extensions, arms require lots of torque -
a standard 40:1 or even 60:1 gearbox will not be suitable in most applications.
For example, many teams will run a 256:1 gearbox for their rotation motor.
Do note that such motors must be very well supported, or else the motor may
torque itself free from its mount.
Rarely should an arm be directly mounted to the driving motor.
Instead, torque should be transferred via gear, chain, or belt.
Large arms can also be hard to control
(with the addition of momentum adding load to the gearbox,
it is hard to stop a three-foot arm that weighs five pounds quickly without
breaking a gearbox).
In many cases, this issue can be mitigated with software
(see the :doc:`../../software/control-loops` section).

Depending on the application and implementation,
arms can be either faster or slower than extension options.

The different types of arms in FTC include single arm, chain bar and
multi-axis arms.

Advantages
==========

* Single bar arms can be relatively simple to build.
* Arms can be useful in low-load applications;
  however, most mechanisms in FTC are not very light.

Disadvantages
=============
* Arms require an insane amount of torque, and in order to do so,
  teams must purchase more expensive gearboxes not found in kits,
  such as the Andymark NeveRest Sport or VersaPlanetary.
* While single arm arms may be more simple,
  they cannot provide enough extension for most games.

Types of Arms
=============
.. toctree::
    :maxdepth: 1

    single-arm
    chain-bar-arm
    multi-axis-arm
