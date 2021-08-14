Debugging
=========

A wise person once side that programming is 20% coding and 80% debugging. What this means is, most of your time, programming is spent fixing issues or "bugs" in your code. Because most of your time is spent debugging, you need to know how to quickly and reliably debug your code. Fortunately there are several tips that can make it easier.

FTC Dashboard
-----------------
This tip only applies to Android Studio users. `FTC Dashboard <https://github.com/acmerobotics/ftc-dashboard>`_ is incompatible with OnBot Java or Blocks. FTC  Setup instructions can be found `here <https://acmerobotics.github.io/ftc-dashboard/>`_. FTC Dashboard was graciously created by FTC team #8367 ACME Robotics. For debugging three features are helpful. It allows editing variable values without recompiling, speeding up tuning. It allows graphing of variables over time, which provides useful information, and it allows you to draw on an image of the field, which can help with testing navigation code.

Telemetry
---------
The FTC SDK has telemetry. Telemetry is a way of sending some text from the robot to the driver station. This text can be anything, a line saying you're in a certain part of the program, a sensor readout, or something else.

The most common usage of telemetry is showing sensor values. It is highly recommended to create a diagnostics or testing program. Inside this program you have telemetry of every single encoder and sensor on your robot. When you aren't sure if a sensor is working, just check this program.

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
When writing code, it can be easy to fall into the` trap of targeting complicating code. This is a tactic that takes practice and research to learn, but it starts with a mindset change. Complicated code often looks cool and can be satisfying to program, but simple code is self-documenting. That is, the code communicates what it does. This self-documentation helps maintain code. In a season, you might change code that was written several months ago, and a team might have multiple programmers working on the same codebase.

Find ways to practice, learn and refine. Practice by actually writing code that does things. Learning can be done though research by using blog posts and conference recordings on YouTube. Refining is done in two ways. First critic yourself, reflect on projects asking yourself both what you did well and what you want to do differently. Also get others to review code, find out how clear it is to them.
