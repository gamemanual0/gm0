===========
Servo Guide
===========
First, a disclaimer.
**Servos are NOT replacements for DC motors, and should not be used as such.
Servos are made for fine-tuned and accurate movement,
not high-load or quick rotation applications**.

Servos are an interesting beast in FTC.
They are their own animal and vary widely in price, performance and value.
Picking the right servo for your application is a question that’s almost
impossible to give a blanket answer for.
There are two subcategories of servo specifications that you should use to
decide what servo you want to use: **output power**
(measured in speed and torque) and **durability**
(normally best represented by the gear material inside the servo).

Let’s start with durability, as this is probably the easiest to summarize.
The two things that threaten a servo’s longevity are the motor inside burning
out and more commonly, the gears stripping inside the servo.
A motor burning out is pretty uncommon, but it can happen under large loads for
a prolonged amount of time.
This means **you should never stall a servo against an immovable object**.
When selecting a servo, pay attention to the material the gears are made from.
This ranges from plastic to titanium,
so let’s go down the list, starting from the weakest.

* **Plastic**: with low power servos, these are normally okay.
  Generally used for applications in model airplanes such as ailerons.
* **Karbonite**: Hitec’s gear plastic is a very durable and long lasting
  plastic and is very good under long use and low load.
  Be aware that it can strip easily under the shock loads found in FTC.
* **Brass**: Brass gears are stronger than plastics but also suffer greatly
  when faced with shock loads in FTC, like intake wrists and deposit buckets.
  It’s found on slightly higher end servos in the $25-30 range,
  such as the REV smart servo.
* **Steel**: This is where we start getting big.
  Steel gears are very durable and you’ll have a tough time stripping these.
  Expect to pay $40+.
* **Titanium**: Titanium is where you get into really high end,
  virtually unbreakable servos.
  Starting from $75, they can reach over $150.

The next variable is output power, measured in both **speed** and **torque**.
Speed (normally in seconds per 60°), refers to how fast the servo turns 60
degrees in Standard Rotation mode.
Torque (usually measured in oz-in),
refers to the amount of force the servo can apply to a lever.
For reference, if you put a 1” bar on a servo,
then put a force gauge on the end, the torque rating of the servo (in oz/in)
will be measured.
As you may know, speed and torque have an inverse relationship.
Generally you can find some insanely powerful servos that are pretty slow
(slower than 0.20 s/60°) or some less powerful ones with faster ratios
(anything faster than 0.12 s/60° is considered very fast).
Finding the right servo for your application can be tough,
but a good way is trying to decide if you need more speed or torque,
and if your servo will experience shock loads or not.

The last proposition is cost.
Servos range from cheap $7 servos for light applications,
all the way up to some Hitec or Savox servos for close to $200.
By far the best bang for your buck servos out there are the Feetech dual mode
servos, which is a programmable type of servo.
This includes both the **REV SRS** (Smart Robot Servo) and
**both goBILDA Dual Mode servos**.
The biggest downside to the REV SRS and the old goBILDA servos are their brass
gears.
Coupled with high output power, this meant that stripping gears with any shock
load was commonplace.
The new goBILDA Dual Mode servos have steel gears now, but are new and aren’t
as competition tested as other servos.
The next big name in FTC Servos is Hitec,
who are a huge name in hobby servos for decades and are very well trusted.
Their low end servos are inexpensive but easily broken.

A mid-priced Hitec servo is the HS 485-HB servo, with Karbonite gears.
While it shouldn’t be used in high load applications,
it is fine for general use such as claws or trapdoors.
Where Hitec really shines is the high end market. If your budget is over $100,
you can get into some very powerful Hitec servos.
Most have titanium gears and are programmable,
so you can dial in the performance and range to exactly what you need.
The last big player in the servo market in FTC is Savox, which produces
great mid-high range servos (think $60-$100+).
They are made with titanium gears (close to bulletproof) and are **fast**.
Savox servos are mostly brushless and coreless,
so they do tend to scream a little under load,
but they’re definitely worth it if your budget allows for it.

Another question that often comes up is “what is the extended and continuous
rotation options on the Servocity website/other sites?”
You don’t have to worry about those -
as FTC ruled those modifications were illegal,
just save a buck and buy stock servos.
The only legal continuous rotation servos are servos that are continuous
rotation from the factory. This includes the REV SRS servo and
both goBILDA Dual Mode servos, programmed to continuous rotation mode.
In other words, if you have a seller like ServoCity modify a servo for
continuous rotation, that servo is not legal.

Best Value
==========

* Low Priced (~$18)
    * HiTec 485HB
    * Futaba servos
* Medium Priced (~$30)
    * goBILDA Dual Mode Servo
    * REV Smart Servo
* Best Performance ($75+)
    * Savox titanium servos
    * Hitec titanium servos
