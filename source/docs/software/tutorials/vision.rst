.. include:: <isonum.txt>

Computer Vision
===============

Computer vision is the process of using computers to understand digital images, such as photographs and videos. Computer vision offers object detection which is commonly needed in FTC\ |reg|.

Currently, there are 3 commonly used forms of computer vision: TensorFlow Lite, AprilTags, and OpenCV (via VisionPortal/EasyOpenCV).

Officially Supported Solutions
------------------------------

TensorFlow
^^^^^^^^^^

TensorFlow is Google's machine learning technology, which can be trained to detect objects. The FTC SDK uses TensorFlow Lite, which is a lightweight version of Google's TensorFlow designed to run on mobile devices. Along with Android Studio and OnBot support, TensorFlow has block support which makes it a good choice for most teams.

Sample OpModes for TensorFlow being used for pixel detection (CENTERSTAGE) can be found `here <https://github.com/FIRST-Tech-Challenge/FtcRobotController/wiki/Blocks-Sample-OpMode-for-TFOD>`__ (Blocks), and a Java example can be found `here <https://github.com/FIRST-Tech-Challenge/FtcRobotController/wiki/Java-Sample-OpMode-for-TFOD>`__.

*FIRST*\ |reg| has released a tool called FTC-ML to train your own TensorFlow Lite model for detecting custom objects. Details about FTC-ML can be found `on FTC Docs <https://ftc-docs.firstinspires.org/ftc_ml/index.html>`_.

AprilTags
^^^^^^^^^

AprilTags detect specific low-resolution, black-and-white images that are placed on various parts of the field. AprilTags are a great way to detect specific parts of the fields at wide angles, distances, and in a variety of lighting conditions. AprilTags are supported in OnBot Java, Android Studio, and Blocks.

You can learn more about implementing AprilTags `on FTC Docs <https://ftc-docs.firstinspires.org/en/latest/apriltag/vision_portal/apriltag_intro/apriltag-intro.html>`__. Supported AprilTag images are available on this `pdf <https://www.dotproduct3d.com/uploads/8/5/1/1/85115558/apriltags1-20.pdf>`__.

VisionPortal
^^^^^^^^^^^^

Introduced with FTC SDK v8.2, the VisionPortal API integrates the `EasyOpenCV <https://github.com/OpenFTC/EasyOpenCV>`__ project into the FTC SDK. With VisionPortal, you can attach multiple VisionProcessors to a single camera. VisionProcessors are an easy way to create OpenCV pipelines, which allows for custom manipulation and processing to be applied to each incoming frame. VisionPortal is the most powerful form of computer vision, but it is also the hardest to use. Therefore, we can only recommend it to more advanced teams.

Additional Vision Resources
---------------------------

EasyOpenCV Simulator
^^^^^^^^^^^^^^^^^^^^

EasyOpenCV Simulator is a straightforward way to test your pipelines directly on your computer. It supports Windows, macOS, and Linux, and simulates a portion of the FTC SDK structure including the VisionPortal API, allowing you to copy and paste pipelines.

You can find EasyOpenCV Simulator `here <https://github.com/deltacv/EOCV-Sim>`__.

FTC\ |reg| Dashboard
^^^^^^^^^^^^^^^^^^^^

FTC Dashboard runs a dashboard webpage on the Control Hub that, among other things, streams a live preview of a connected camera. This is a very useful tool for testing and debugging vision applications.

.. warning:: FTC Dashboard is not legal to run during matches, make sure it is disabled during a competition. More information can be found `here <https://acmerobotics.github.io/ftc-dashboard/competition>`__.

You can find FTC Dashboard `here <https://github.com/acmerobotics/ftc-dashboard>`__.

Scrcpy
^^^^^^

Scrcpy is an easy way to display and control Android devices connected over USB. It supports Linux, Windows, and macOS, offers low latency, requires low resources, and has great performance. It is extremely useful for debugging vision code on a Control Hub, as it will enable you to see the camera output in near real time. It can also be used with a robot controller phone, however the camera output can be seen on the phone's screen.

You can find scrcpy `here <https://github.com/Genymobile/scrcpy>`__.
