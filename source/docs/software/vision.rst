Computer Vision
===============

Computer vision is the process of using computers to understand digital images, such as photographs and videos. Computer vision offers object detection which is commonly needed in FTC.

Currently, there are 3 commonly used forms of computer vision: TensorFlow Lite, Vuforia, and EasyOpenCV.

Officially Supported Solutions
------------------------------

TensorFlow
^^^^^^^^^^

TensorFlow is Google’s machine learning technology, which can be trained to detect objects. The FTC SDK uses TensorFlow Lite, which is a lightweight version of Google’s TensorFlow designed to run on mobile devices. Along with Android Studio and OnBot support, TensorFlow has block support which makes it a good choice for most teams.

Sample OpModes for TensorFlow being used for mineral detection (Rover Ruckus) can be found `here <https://github.com/FIRST-Tech-Challenge/FtcRobotController/wiki/Blocks-Sample-TensorFlow-Object-Detection-Op-Mode>`__ (Blocks), and a Java example can be found `here <https://github.com/FIRST-Tech-Challenge/FtcRobotController/wiki/Java-Sample-TensorFlow-Object-Detection-Op-Mode>`_.

Vuforia
^^^^^^^

Vuforia is an augmented reality software built for mobile devices and can track 3d objects in real-time. Vuforia is known for its great image detection, as FTC vision targets are designed with Vuforia in mind. Vuforia also offers localization. Vuforia is supported in OnBot Java, Android Studio, and Blocks.

You can find Vuforia Java samples in the FTC `here <https://github.com/FIRST-Tech-Challenge/FtcRobotController/blob/master/FtcRobotController/src/main/java/org/firstinspires/ftc/robotcontroller/external/samples/ConceptVuMarkIdentification.java>`__, and find a blocks guide `here <https://github.com/FIRST-Tech-Challenge/FtcRobotController/wiki/Identifying-Vuforia-VuMarks>`__.

EasyOpenCV
----------

EasyOpenCV is an easy way to use openCV with the FTC SDK. EasyOpenCV is the most powerful form of computer vision, but it is also the hardest to use. It is also the only vision software here that is NOT built into the SDK and only supports Android Studio. Therefore, we can only recommend EasyOpenCV to more advanced teams.

You can learn more about EasyOpenCV `here <https://github.com/OpenFTC/EasyOpenCV>`__. Examples can be found `here <https://github.com/OpenFTC/EasyOpenCV/tree/master/examples/src/main/java/org/firstinspires/ftc/teamcode>`__.

EasyOpenCV Simulator
^^^^^^^^^^^^^^^^^^^^

EasyOpenCV Simulator is a straightforward way to test your pipelines directly on your computer. It supports Windows, macOS, and Linux, and simulates a portion of the FTC SDK structure, allowing you to copy and paste pipelines.

You can find EasyOpenCV Simulator `here <https://github.com/deltacv/EOCV-Sim>`__.

Scrcpy
------

Scrcpy is an easy way to display and control Android devices connected over USB. It supports Linux, Windows, and macOS, offers low latency, requires low resources, and has great performance. It is extremely useful for debugging vision code on a Control Hub, as it will enable you to see the camera output in near real time. It can also be used with a robot controller phone, however the camera output can be seen on the phone's screen.

You can find scrcpy `here <https://github.com/Genymobile/scrcpy>`__.
