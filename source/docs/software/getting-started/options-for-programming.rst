.. include:: <isonum.txt>

Options for Programming
=======================

There are three recommended options for teams to use when programming a robot to do various tasks: Blocks, OnBot Java, and Android Studio.

Blocks
------

The Blocks Programming Tool is a simple way to code simple actions for the robot. It has a colorful and lego-like design and includes sounds of block pieces of snapping together.

Using a device and a robot controller phone, connect your device to the phone's Wi-Fi by clicking the three dots in the top right of the :term:`RC <Robot Controller>` and select "Program & Manage". This will display the WiFi SSID and password for you to connect to. Go onto your browser (preferably Chrome, though other modern browser will likely work) and enter the address shown on the :term:`RC <Robot Controller>`.

Advantages
^^^^^^^^^^

- Good for beginners: one of the easiest and simplest options to use.
- Easy to set up: requires a device (laptop, chromebook, tablet) and a phone in the Program & Manage screen
- Programs can be saved directly to the phone

  - Changes can be made quickly
- Doesn't require an external Wi-Fi connection

Disadvantages
^^^^^^^^^^^^^

- Not recommended if you're already familiar with some type of programming

  - Primarily a teaching tool for people with no programming experience
- This will change your primary Wi-Fi network to the :term:`Robot Controller's <Robot Controller>` Direct Wi-Fi network, and as such, you will be unable to access the internet while connected to this particular network.

  - Teams can get around this by purchasing an external Wi-Fi module that allows computers to run 2 Wi-Fi networks at once.

- Sacrifices flexibility and application for simplicity
- Don't ever use it on a phone, unless you're out of options. (Not phone-friendly)

  - You may make a bigger mess if you try to.

OnBot Java
----------

OnBot Java uses a similar method of using a browser to code and save directly to the phone. The difference being that a programming language called Java is used instead.

Advantages
^^^^^^^^^^

- Recommended if you're learning or have learned some programming, even better if you know a little Java.
- Greater flexibility than Blocks
- There are a lot more resources available in case you need help
- More applicable to the real-world than Blocks
- Maintains most of the advantages of Blocks

Disadvantages
^^^^^^^^^^^^^

- Connecting to the robot controller's Wi-Fi network will prevent you from using anything on the internet including video tutorials and online communication
- Using external libraries is difficult and borderline impossible
- Steeper learning curve than Blocks

Android Studio
--------------

Android Studio is a comprehensive Integrated Development Environment (IDE) that uses Java to program the phones. Instead of using a browser to upload code, Android Studio will compile your Robot Controller code into a .apk file (an app installer), and install that on the phone.

Advantages
^^^^^^^^^^

- Recommended if you're learning or have learned some programming, even better if you know a little Java.
- Much greater flexibility than Blocks.
- Much easier to integrate libraries like `EasyOpenCV`_, `FTC Dashboard`_, `FTCLib`_, and `Road Runner`_.
- Can use plugins like `Road Runner`_.
- Can use either a USB connection to the :term:`RC <Robot Controller>` phone, or a wireless connection to upload code.

  .. note:: Deploy times can be sped up by using `OpenRC Turbo`_.

- Can debug in real-time
- Many resources for Java, Android Studio, and IDEA
- Can use other programming languages

.. _EasyOpenCV: https://github.com/openftc/easyopencv
.. _FTC Dashboard: https://github.com/acmerobotics/ftc-dashboard
.. _FTCLib: https://github.com/ftclib/ftclib
.. _Road Runner: https://github.com/acmerobotics/road-runner
.. _OpenRC Turbo: https://github.com/OpenFTC/OpenRC-Turbo

Disadvantages
^^^^^^^^^^^^^

- Connecting to the robot controller's Wi-Fi network will prevent you from using anything on the internet including video tutorials and online communication, unless you have a second Wifi adapter (cheap and easy)
- Relatively easy setup process, but time consuming and is a hefty install (3GB of files between Android Studio, ftc_app, and other libraries)
- Issues can be difficult to diagnose and solve

Other Programming Languages
---------------------------

Kotlin
^^^^^^

Kotlin is a relatively new and rapidly growing programming language from Jetbrains, the creator of the IntelliJ IDE, which Android Studio is based off. Kotlin was made to be completely compatible with Java but be easier to work with. Google recently announced it as an official Android language, then announced they are going "Kotlin first" but still keeping Java support.

Advantages
~~~~~~~~~~

- Concise, readable, easy to edit code

  - Easy to write as it takes much less code to do the same thing
- Both optional type inference and a stronger type system than Java
- Null safety
- Thread safety
- Functional programming
- Seamless integration with Java code and libraries
- Very easy to transition from Java

Disadvantages
~~~~~~~~~~~~~

- Not widely used in FTC\ |reg| yet
- New and has fewer community resources for training
- Not recommended for programmers who need large amounts of help from other teams

C and C++
^^^^^^^^^

C and C++ are native programming languages compatible with Android. Very few teams have used C++. This is typically used for only part of the code, with the majority being Java or Kotlin.

Advantages
~~~~~~~~~~

- Fast execution for extremely resource-intensive applications.
- Supports more libraries

Disadvantages
~~~~~~~~~~~~~

- Rarely needed
- Very difficult to set up
- Difficult to debug code
- Very few teams can help you
- Very few online resources
