===================================
Fundamental Concepts of Programming
===================================

For almost any programming language, whether it’s Java, Python, or Blocks, 
there are concepts in coding that transfer across languages. 
These ideas are foundational when learning to program and should be applicable 
in FTC and beyond.

This section is primarily for people with limited Java experience. 
However, even if you are more experienced, 
it may still be helpful to skim through the section, 
as you might find concepts that have not yet been introduced to you.

Examples will mostly be in Java, where ``//`` indicates a comment which the 
program ignores and is used for people to read.::    

    int number; // Declaring that number will contain an integer.
    number = 5; // Setting a value so that the variable holds something.
    int secondNumber = 6; // Doing both above.
    int total = number + secondNumber; // Math.
    System.out.println(total); // Printing, it will show up as 11.

Java-Specific Exploratory Questions
-----------------------------------

* If I didn’t set a value for number and then I printed it, what would it print?
* What other operations can I do with number and secondNumber?
* Can I set a decimal to number? If not, what happens?
* What is System.out.println(); ?
* Delete one character in the code. Remember the error (if any), and then undo it. Delete another part. How many different errors can you get?

There are different types of variables
======================================

* Numbers (Integers, Floats, Doubles)
* Strings (Text) or characters
* And a lot more depending on the language (Ex: Arrays)
* They help tell the program know the basis of what it should do with a variable.

::
    
    String coolName = "Gluten Free";
    String restOfSentence = " is epic.";

    // Prints out the sentence by combining the strings, unlike adding if they // were integers
    System.out.println(coolName + restOfSentence);

    // Fun fact: Using + to add strings is called String Concatenation

Java-Specific Exploratory Questions
-----------------------------------

* Replace the text in coolName to something else. Your name, a phone number, your favorite anime. What about emotes and copypastas? What about characters in other languages?
* Try adding a number and a string, what happens?
* Is it possible to add multiple strings and numbers together?

Important Control Structures
============================

Be sure to familiarize yourself with basic control structures 
(if/else statements, for loops, while loops, and for-each loops). 
These control structures are by far the most commonly encountered, and thus, 
familiarizing yourself with these principles is extremely important 
(not just for FTC, but programming in general). 
However, there are a few control structures that are far less common that are 
extremely useful in FTC.

Finite State Machines and Enums
-------------------------------

A Finite State Machine (FSM) is a control structure that executes one of several 
code segments depending on its state. The logic can be thought of using 
if-statements:
::
    
    if (state == 0) {
        doThing1();
    }
    else if (state == 1) {
        doThing2();
    }
    else if (state == 2) {
        doThing3();
    }

In this example, the state variable can have 1 of 3 values: 0, 1, and 2. 
Depending on what value state has, different code segments are executed. 
However, instead of using primitive types or strings to store this information, 
the data type known as an Enum can be used instead.

Enums are a user-defined data structure that allow you to easily create and keep 
track of states in a state machine. 
**Each state should represent one unique, independent action of the robot**. 
Here’s one simple example when a state machine is applied to a scoring lift:

This is how the state machine is defined:
::

    public enum LiftState {
        IDLE,
        EXTEND,
        RETRACT
    }

Then, you can initialize the a LiftState enum like this:
::

    LiftState liftState = LiftState.IDLE;

And here is how to use the enum LiftState to create a state machine:
::

    //anything inside the brackets after switch(autoState) defines the robot's action at each state
    switch (liftState) {
        //case IDLE is equivalent to if(liftState == LiftState.IDLE)
        case IDLE:
            if(gamepad1.b) {
                liftState = LiftState.EXTEND;
            }
            if(gamepad1.a) {
            liftState = LiftState.RETRACT;
            }
            //break tells the program it should no longer execute the code within the IDLE state and can move on to check the next state
            break;
        case EXTEND:
            if(topTouchSensor.isPressed()){
                liftMotor.setPower(0);
                liftState = LiftState = LiftState.IDLE;
            }
            else {
                liftMotor.setPower(1);
            }
            break;
        case RETRACT:
            if(bottomTouchSensor.isPressed()) {
                liftMotor.setPower(0);
                liftState = LiftState = LiftState.IDLE;
            }
            else {
                liftMotor.setPower(-1);
            }
            break;
    }

Data Structures (Arrays)
========================

Data structures are a method of organizing and storing large amounts of data. 
There are a lot of different types of data structures that mostly differ in the 
relationships between data points, 
and we would recommend that you read into them. 
We will only go over a few here.

`Arrays <https://www.geeksforgeeks.org/arrays-in-java/>`_
    Arrays are the most basic and simple data structure.
    When an array is initialized, its size must be set, 
    and it cannot be changed.
    If you wish to expand an array, 
    a new one must be created and all of the old data copied over.
    Elements of an array are stored adjacent to each other in memory, 
    so when they are accessed the number you want to access times the amount of 
    bits in the object in the array is added to the starting address, 
    and data is accessed from there.
    This means that arrays are incredibly efficient at reading data in a 
    nonlinear order.

`ArrayList <https://www.geeksforgeeks.org/arraylist-in-java/>`_

`Object Oriented Programming in Java <https://www.geeksforgeeks.org/classes-objects-java/>`_
