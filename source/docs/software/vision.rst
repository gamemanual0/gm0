Computer Vision
===============

Computer vision is the process of using computers to understand digital images, such as photographs and videos. Computer vision offers object detection that is commonly needed in FTC.

Currently, there are 3 commonly used forms of computer vision: Tensorflow(lite), Vuforia, and EasyOpenCv.

Officially Supported Solutions
------------------------------

Tensorflow
^^^^^^^^^^

Tensorflow is Google’s machine learning technology, which can be trained to detect objects. The FTC SDK uses TensorFlow lite, which is a lightweight version of Google’s TensorFlow designed to run on mobile devices. Along with Android Studio and OnBot support, TensorFlow has block support which makes it a good choice for most teams.

Sample Op Modes for TensorFlow being used for mineral detection (Rover Ruckus) can be found `here <https://github.com/ftctechnh/ftc_app/wiki/Blocks-Sample-TensorFlow-Object-Detection-Op-Mode>`__ (Blocks), and a Java example can be found `here <https://github.com/ftctechnh/ftc_app/wiki/Java-Sample-TensorFlow-Object-Detection-Op-Mode>`_.

Vuforia
^^^^^^^

Vuforia is an augmented reality software built for mobile devices and can track 3d objects in real-time. Vuforia is known for its great image detection, as FTC vision targets are designed with Vuforia in mind. Vuforia also offers localization. Vuforia is supported in OnBot Java, Android Studio, and Blocks.

You can find Vuforia Java samples in the FTC `here <https://github.com/FIRST-Tech-Challenge/FtcRobotController/blob/master/FtcRobotController/src/main/java/org/firstinspires/ftc/robotcontroller/external/samples/ConceptVuMarkIdentification.java>`__, and find a blocks guide `Link text <https://github.com/FIRST-Tech-Challenge/SKYSTONE/wiki/Identifying-Vuforia-VuMarks>`_

EasyOpenCV
----------

EasyOpenCV is an easy way to use OpenCV with the FTC SDK. EasyOpenCV is the most powerful form of computer vision, but it is also the hardest to use. It is also the only vision software here that is NOT built into the SDK and only supports Android Studio. Therefore, we can only recommend EasyOpenCV to more advanced teams.

You can learn more about EasyOpenCV `here <https://github.com/OpenFTC/EasyOpenCV>`__. Examples can be found `here <https://github.com/OpenFTC/EasyOpenCV/tree/master/examples/src/main/java/org/openftc/easyopencv/examples>`__, and we especially recommend checking out `SkystoneDeterminationExample.java <https://github.com/OpenFTC/EasyOpenCV/blob/master/examples/src/main/java/org/openftc/easyopencv/examples/SkystoneDeterminationExample.java>`_.

Scrcpy
------

Scrcpy is an easy way to display and control Android devices connected over USB. It supports Linux, Windows, and macOS, offers low latency, requires low resources, has great performance, and has little to no startup time.

You can read more about Scrcpy `here <https://github.com/Genymobile/scrcpy>`__.
