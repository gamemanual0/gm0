Debugging
=========

A wise person once side that programming is 20% coding and 80% debugging. What this means is, most of your time, programming is spent fixing issues or "bugs" in your code. Because most of your time is spent debugging, you need to know how to quickly and reliably debug your code. Fortunately there are several tips that can make it easier.

FTC Dashboard
-----------------
This tip only applies to Android Studio users. `FTC Dashboard <https://github.com/acmerobotics/ftc-dashboard>`_ is incompatible with OnBot Java or Blocks. FTC  Setup instructions can be found `here <https://acmerobotics.github.io/ftc-dashboard/>`_. FTC Dashboard was graciously created by FTC team #8367 ACME Robotics. For debugging three features are helpful. It allows editing variable values without recompiling, speeding up tuning. It allows graphing of variables over time, which provides useful information, and it allows you to draw on an image of the field, which can help with testing navigation code.

Telemetry
---------
stub

StackTraces
-----------
stub

Gather information
------------------
All of the above mentioned tools are used for one primary purpose, gathering information. Gathering information is a useful tool because of what causes bugs. Most bugs are made because our minds aren't capable of fully planning out complex systems. We either fail to miss how something logically or mathematically works, or we can't predict how objects will physically work.

This can be solved by gathering information. For math and logic errors, use telemetry read-outs. Knowing the "state" that everything is in can help you identify what part of the code went wrong. For issues with the physical world, you have two options, graphing and videos. Graphing is often used in instances where the issue isn't apparent to the eye like a lift being half an inch low. Videos are good for things that can be easily seen. Being able to watch what happened again helps identify what exactly happened. Using different angles and slow motion can also help. Videos are exceptionally helpful in any season where you have to intake the game elements in autonomous.

Isolate Issues
--------------
Before you fix a big, you need to know what is actually broken. This might sound trivial, but, when working on a complex system, it can be hard to identify the source of the bug. In addition to gathering information, you also want to isolate systems. For example, if your robot navigation is inconsistent, you have three primary systems: generating the path, following the path and knowing where you are. You can test these systems separately. For example, looking at a read-out of your position tells you if your robot actually knows where it is.

FTC is more than just code. It also includes a physical robot. This may sound obvious, but it's often overlooked. Not all issues with software systems are caused by code. Some of them are mechanical or electrical. Some of the most common cases are electrical. Even some of the best teams have spent a long time trying to debug changes that were caused by something broken. Always use a program to check readouts of sensors.

Write Simple Code
-----------------
stub