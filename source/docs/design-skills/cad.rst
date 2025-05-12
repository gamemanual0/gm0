.. include:: <isonum.txt>
.. include:: <isolat1.txt>

Computer-aided design (CAD)
===========================

Introduction
------------

.. admonition:: Term

   .. glossary::

      Computer-aided design (CAD)
         CAD is software most commonly used to aid the design and drafting of parts and assemblies in engineering. In FTC\ |reg|, CAD is used to make 3D models of robots as well as design custom parts.

**CAD is not necessary in FTC to build a successful robot.** Many successful teams didn't CAD their robot at all. Other successful teams only made parts of their robot in CAD. Still other teams fully designed their robot in CAD.

So, what's the point of CAD, then? It is encouraged that new teams try their hand at CAD, especially if you have a mentor or parent who is experienced in such an area. CAD is beneficial for multiple reasons.

#. CAD solves a lot of preventable headaches, such as spacing issues. Thus, it will save time when you discover problems in CAD that you can remediate before you build your robot.
#. CAD is a professional tool that is used in many STEM fields. Having CAD knowledge and skills will be beneficial in your future career, should you study and work in those fields.
#. If you desire to create 3D-printed or machined parts, CAD will be necessary to do so.
#. CAD can reduce the cost of building a robot by helping to determine which parts you need for a robot before actually spending the money to buy those parts.

**However, CAD is not the magic genie that will guarantee you success in FTC.** When used properly, it is a great tool to aid teams in building their robot. Keep in mind, though, that many teams have had success without CAD.

Starting off, choose a CAD program and learn it as well as possible. It may be a good idea to spend a few weeks just finding objects lying around, sit down with a ruler or calipers, and make a quick CAD model. A good way to test accuracy is to choose a solid object made up of one known material. Weigh the object and make the model in CAD, apply that material to it, and see what the weight difference is. This is a good way to test how accurate the CAD model is to the real part. It really doesn't matter what object it is - just find something and make it to the best of your abilities. There are also tons of videos on YouTube; a good one is TFI who makes detailed tutorials for Autodesk Inventor. // FIXME: give Onshape and/or Fusion 360 example instead?

Overview of CAD Programs
------------------------

There are many possible CAD programs that teams can learn, all of which can be downloaded for free under a student or FTC team license. You'll have to do a bit of research here, as the requirements for free copies vary based on the program. Here are a couple suggestions to consider:

`Onshape <https://www.onshape.com/en/education/>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

A fully-featured CAD package, but it runs entirely in the cloud/browser. It can run on any computer (even Chromebooks!) and has iOS, iPadOS, and Android apps as well. It is currently the most popular option among FTC teams, and also the most commonly recommended option.

It has all of the same core features as SolidWorks and Autodesk Inventor, as well as the best collaboration workflow in the industry - many people call it "the Google Docs of CAD." Onshape allows multiple people to work on the same document at the same time, and allows users to "follow" each other and see what's on another user's screen.

Onshape also has FeatureScript, a programming language where you can write custom features. The community has created a lot of very useful FeatureScripts already which you can use completely for free.

Onshape has a comprehensive tutorial system (https://learn.onshape.com) that will not only teach you how to use their software, but how to approach design problems.

Onshape users can also use the `FTC Onshape Parts Library <https://ftconshape.com/introduction-to-the-ftc-parts-library/>`_, which contains a majority of parts from most major vendors. This makes creating assemblies significantly easer, compared to downloading the STEP file for each part from the parts' product pages.

Due to the low system requirements, excellent collaboration features, and being the only CAD software that currently has an extensive FTC parts library, Onshape has become the go-to for both new and experienced teams, and is our recommendation for most teams.

.. hint::
   Onshape is also currently the easiest to get set up with; creating a free education account can be done in minutes without any additional hurdles or waiting periods.

`Autodesk Fusion 360 <https://www.autodesk.com/education/edu-software/overview?sorting=featured&page=1>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. warning::
   Autodesk education accounts are only available to students of "qualified educational institutions", and you will need to upload a form of documentation (School transcript, School-issued confirmation letter, or School ID) to verify your account.

A cloud-based all-in-one CAD/CAM package, made by Autodesk. Fusion 360 is available for both Windows and macOS, although it may not run very well on low-spec computers. It is currently the second-most commonly used CAD program in FTC.

It has a powerful CAM environment for machining your parts, and it has intuitive and easy cloud rendering that gives the heavy lifting to Autodesk's servers. To maintain a simpler UI, Fusion skips out on a lot of the more advanced features found in SolidWorks and Inventor, although this usually isn't much of a problem.

However, a more noteworthy difference is that Fusion ignores every single industry standard, creating its own structure and organizational system. Beyond simple sketches and extrude features, Fusion's modeling and assembly system is unique and not compatible with any other CAD software, making it hard to switch away from Fusion.

Because of this, if you aren't careful, Fusion's file hierarchy can actively encourage bad design habits and discourages reusability by allowing users to create new parts without designing them individually first.

If one is careful to follow good design practices, Fusion is a solid option.

`SolidWorks <https://app.smartsheet.com/b/form/6762f6652a04487ca9786fcb06b84cb5>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

An industry standard CAD package made by Dassault Syst\ |egrave|\ mes. It's as fully featured as CAD software gets, including great simulation features and a very robust assembly environment. It's used widely in industry and is also the program of choice for most college-level engineering classes. However, it sees little use in FTC compared to Onshape and Fusion 360, though it is more normal to see it used by FRC\ |reg| teams.

**SolidWorks isn't available for macOS or Linux users**, and you'll need a pretty beefy computer to run it (16GB RAM and a discrete GPU are standard). SolidWorks also comes with a solid simulation program if you wish to test the structural properties of your robot or a custom-designed part.

If you have mentors or team members with previous experience in SolidWorks or an engineering class at your school that teaches SolidWorks, and a powerful enough system to run it well, it can be a solid option; but if you want to receive support from other FTC teams, you will probably be better off with software more commonly used in FTC, such as Onshape or Fusion 360.

`Autodesk Inventor <https://www.autodesk.com/education/edu-software/overview?sorting=featured&page=1>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. warning::
   Autodesk education accounts are only available to students of "qualified educational institutions", and you will need to upload a form of documentation (School transcript, School-issued confirmation letter, or School ID) to verify your account.

Autodesk's industrial CAD offering. It offers many similar features to SolidWorks, but has a different UI and three distinct assembly modes.

While it's used by many companies in the industry, it doesn't appear in very many college curriculums. Inventor is generally the second choice for companies who don't use SolidWorks but instead are based around the Autodesk universe.

**Inventor is also not available for macOS or Linux**, but it may run better on lower-spec PCs than SolidWorks.

If you have mentors or team members with previous experience in Inventor or an engineering class at your school that teaches Inventor, it can be a solid option; but if you want to receive support from other FTC teams, you will probably be better off with software more commonly used in FTC, such as Onshape or Fusion 360.

`Creo <https://www.ptc.com/en/products/education/free-software/standalone-educator>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

A family of CAD/CAM applications developed by PTC (Parametric Technology Corporation). Creo parametric is the main CAD package that includes robust assembly and part modeling similar to Solidworks.

The main advantage of Creo compared to other CAD software is the complex part relations and constraints, however, most new users find this aspect difficult to grasp completely. The Creo package includes an integrated local rendering engine and thorough simulation system. The rendering engine can be used to create photo-realistic renders of anything between single-part simple to multi-component complex designs. Design enhancements can be directly integrated into parts from materials/geometry simulations in Creo Simulate.

Creo has many features, but the general 80-20 rule applies - 20% of the features will create 80% of the designs. The Creo package also includes a version based file sharing system called Windchill which most professional companies use, but for FTC purposes Grabcad will suffice.

Learning Creo can be more of a challenge than other CAD software, because of the limited available tutorials online in addition to the complex relations and constraints structure. Our recommendation is to learn Creo from someone who already has experience with the software.

College-level engineering classes as well as numerous companies in the automotive, aerospace and consumer industry use Creo. Creo is made for Windows and will not run natively on macOS; however, virtual machine software (e.g. Parallels) can be used to run Creo on macOS or Linux.

If you have mentors or team members with previous experience in Creo or an engineering class at your school that teaches Creo, it can be a solid option; but if you want to receive support from other FTC teams, you will probably be better off with software more commonly used in FTC, such as Onshape or Fusion 360.

Getting Parts
-------------

Most vendors (goBILDA, REV, AndyMark, Tetrix, and more) provide 3D models of the parts they sell in STEP format (usually linked on the product page of each part), which can be imported by any of the CAD programs above. Onshape users are recommended to use the `FTC Onshape Parts Library <https://ftconshape.com/introduction-to-the-ftc-parts-library/>`_, which contains a majority of parts from most major vendors.

File sharing
------------

Teams often have multiple members working on CAD models, and thus require a file sharing system for ensuring that each person has up-to-date files. Some recommendations include GrabCAD, Box, Google Drive, or Dropbox.

It is also a good idea that one team member work on the model at a time to prevent confusion.

Useful Resources
----------------

More CAD resources can be found in the :ref:`CAD section of the Useful Resources page <useful-resources-cad>`.
