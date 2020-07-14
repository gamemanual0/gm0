Finite State Machines
============================

It’s a buzzword you hear a lot.
Somebody will mention, “How did you make that complex autonomous?”
And somebody might say “Oh, we used a Finite State Machine!!!!!,
and You Should So”.

What is a Finite State Machine?
----------------------------------

It’s actually largely in the name. It’s a state machine, with a finite number
of states. It can be in one state at a time, and can transition to a different
state once something happens. For example, see the one that’s on `Wikipedia
<https://en.wikipedia.org/wiki/Finite-state_machine#Example:_coin-operated_turnstile>`__
because a turnstile is actually a great example. Read that example, because it
is explained really well.

Ok, so now what?
----------------

Often times, what happens is students will get a vague idea of what it is from
Wikipedia or whatever, and then run off to try and implement it on their
bots. Inexperienced programmers at this point often try to apply an FSM to
their autonomous programs by segmenting their autonomous into a giant
``switch`` statement, and it often looks something like this:

.. code:: java

   while (opModeIsActive()) {
       switch (state) {
       case DETECT_SKYSTONE:
           // skystone detection code here
           int position = detectSkystone();

           if (position == 0) {
               state = SKYSTONE_POS_0;
           } else if (position == 1) {
               state = SKYSTONE_POS_1;
           } else {
               state = SKYSTONE_POS_2;
           }
           break;
       case SKYSTONE_POS_0:
           // skystone position 0 here
           doSkystone(0);
           state = MOVE_FOUNDATION;
           break;
       case SKYSTONE_POS_1:
       case SKYSTONE_POS_2:
           // etc etc
           break;
       case MOVE_FOUNDATION:
           // foundation move code
           state = PARK;
           break;
       case PARK:
           // park the bot
           break;
       }
   }

This however, doesn’t actually have any benefits versus if the programmer had
simply put each of the code’s segments into functions, and executed them in
order. In fact, often times, programmers will structure their code like this
instead of splitting their code up into functions. The result is an autonomous
that’s more difficult to debug, and ultimately harder to fix on the fly in
competition or in a time crunch (aka a bad decision competitively).

If you drew out the state transition diagram for each of the states, you’d
basically notice for the autonomous above it’s very linear, and the state
transitions are always because the section of the code finished:

.. graphviz::

    digraph {
        detect[label="Detect Skystone"];
        posZero[label="Skystone Position 0"];
        posOne[label="Skystone Position 1"];
        posTwo[label="Skystone Position 2"];
        move[label="Foundation Move"];
        park[label="Park"];

        detect->posZero;
        detect->posOne;
        detect->posTwo;

        posZero->move;
        posOne->move;
        posTwo->move;

        move->park;
    }

In fact, in many implementations, making state transitions for any other reason
is often difficult because the code executes linearly and is only in a loop to
rerun the switch statements. (Often times, this means the code has a hard time
reacting to a stop request in the middle of autonomous.)

.. warning::
    Basically, **don’t do this.** I’ve seen it way too many times. It’s not great.

So what are FSMs useful for then?
---------------------------------

TL;DR: when you want to have automation in teleop while still being able to
control the drivetrain.

Often times, teams struggle with this one because teleop executes in a loop and
their servo logic has sleeps in it. But, we can avoid this if we write code in
an **asynchronous** fashion - where instead of waiting around directly, we tell
our bot to do something and check in on how it’s doing while still being able
to do other things.

Again, let’s start with a working example. Say we’re, I dunno, `Gluten Free
<https://www.youtube.com/watch?v=NQvhvYJXVMA>`__, and we want to automate our
scoring lift so we don’t have to think while our bot deposits the minerals for
us.

There are two parts of the bot that are relevant to us in this exercise: the
angled scoring lift, and the servo that tips the dumper so the minerals fall
out. We want to be able to push a button, and then the bot will:

-  extend the lift,
-  at full lift extension, angle the mineral bucket servo to deposit the
   minerals,
-  wait for the minerals to fall out,
-  reset the servo to the original position
-  retract the lift

If we press a specific other button, we will stop executing the actions above
as a failsafe - in case we’re breaking our bot somehow and need to take manual
control. All the while, we still aim to be able to control our drivetrain so we
can make adjustments. Now, of course, this is a bit simplified (and probably
not entirely what GF did), but it will do for now.

(There’s actually a button in GF’s `FTC Simulator <https://xrcsimulator.org>`_ that
basically does the actions I listed above for the Angled Slides Bot, and is
cancellable)

Before we do anything, let’s draw out the state diagram for this to get a
better understanding of what we’re actually trying to accomplish here. In
addition to potentially winning :term:`Control Award` in the process.

.. graphviz::

    digraph {
        start[label="Start"];
        extend[label="Extend Lift"];
        dump[label="Set Servo Dump"];
        reset[label="Reset Servo, Retract Lift"];

        start->extend[label="X Pressed"];
        extend->dump[label="Lift Fully Extended"];
        extend->start[label="Y Pressed"];
        dump->start[label="Y Pressed"];
        dump->reset[label="Minerals be Dumped"];
        reset->start[label="Lift Fully Retracted/Y Pressed"];
    }

Notice how resetting the dump servo and retracting the lift share a
state. That’s because we don’t need to wait for the servo to reset before the
lift is going down - we can have them both happen at once.

Now, let’s get into writing this thing up. In teleop, our code runs repeatedly
in a ``loop()`` function, so instead of waiting for a state transition to
happen directly, our code will repeatedly check on each ``loop()`` call if we
should perform a state transition. This kind of “update our state” pattern
keeps our code from blocking the rest of the ``loop()`` code from running, such
as the drivetrain.

.. code:: java

   /**
    * Obviously, we'll skip over some declarations that's boilerplate. Please don't copypaste this code. It won't work.
    * Also, I don't have real values to use. So we're gonna use named constants instead like good programmers.
    */

   @TeleOp(name="FSM Example")
   public class FSMExample extends OpMode {
       // We use an Enum to represent our lift states. (It's kinda what they're made)
       public enum LiftState {
            LIFT_START,
            LIFT_EXTEND,
            LIFT_DUMP,
            LIFT_RETRACT
      };

       // we declare the liftState variable out here so its value persists between loop() calls
       LiftState liftState = LiftState.LIFT_START;

       // some basic boilerplate definitions, let's just imagine that they're initialized in init()
       // this is to simplify this example

       // the lift motor, it's in RUN_TO_POSITION mode
       public DcMotor liftMotor;

       // the dump servo
       public Servo liftDump;

       // used with the dump servo, we'll discuss in a bit
       ElapsedTime liftTimer = new ElapsedTime();

       final double DUMP_IDLE; // the idle position for the dump servo
       final double DUMP_DEPOSIT; // the dumping position for the dump servo
       final double DUMP_TIME; // the amount of time the dump servo takes to activate

       final int LIFT_LOW; // the low encoder position for the lift
       final int LIFT_HIGH; // the high encoder position for the lift

       public void init() {
           liftTimer.reset();

           // whatever else
       }

       public void loop() {
           switch (liftState) {
               case LiftState.LIFT_START:
                   // we're not doing anything atm
                   if (gamepad1.x) {
                       // x is pressed, start extending
                       liftMotor.setPosition(LIFT_HIGH);
                       liftState = LiftState.LIFT_EXTEND;
                   }
                   break;
               case LiftState.LIFT_EXTEND:
                   // check if we've finished extending, else do nothing.
                   if (Math.abs(liftMotor.getPosition() - LIFT_HIGH) < 10) {
                       // our threshold is being within 10 encoder ticks of our target.
                       // this is pretty arbitrary.

                       // we set the lift dump to dump
                       liftDump.setPosition(DUMP_DEPOSIT);

                       liftTimer.reset();
                       liftState = LiftState.LIFT_DUMP;
                   }
                   break;
               case LiftState.LIFT_DUMP:
                   if (liftTimer.seconds() >= DUMP_TIME) {
                       // we've waited long enough, time to start retract
                       liftDump.setPosition(DUMP_IDLE);
                       liftMotor.setPosition(LIFT_LOW);
                       liftState = LiftState.LIFT_RETRACT;
                   }
                   break;
               case LiftState.LIFT_RETRACT:
                   if (Math.abs(liftMotor.getPosition() - LIFT_LOW) < 10) {
                       liftState = LiftState.LIFT_START;
                   }
                   break;
               default:
                   // should never be reached
                   liftState = LiftState.LIFT_START;
               }
            }


           // small optimization, instead of repeating ourselves in each
           // lift state case besides LIFT_START for the cancel action,
           // let's just handle it right here more generally
           if (gamepad1.y && liftState != LiftState.LIFT_START) {
               liftState = LiftState.LIFT_START;
           }

           // mecanum code goes here
           // But since none of the stuff in the switch case stops
           // the robot, this will always run!
           updateDrive(gamepad1, gamepad2);
       }
   }
