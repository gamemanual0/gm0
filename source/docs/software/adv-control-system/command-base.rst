.. include:: <isonum.txt>

Command-Based Programming in FTC
================================

Command-based programming is a structural design pattern that breaks robot code into modular, reusable components. Popularized in FRC and increasingly adopted in FTC, this approach simplifies building complex autonomous and teleop behaviors by separating what the robot should do from how it does it.

Why Use Command-Based?
^^^^^^^^^^^^^^^^^^^^^^

In traditional FTC code (especially in LinearOpMode), actions are often chained sequentially in a single method. While straightforward, this can quickly become unmanageable in larger programs or when simultaneous actions are needed.

Command-based programming offers:
---------------------------------

Modularity: Each action (like moving an arm or driving forward) is a self-contained command.

.. tip:: Group related commands into separate packages or folders (e.g. commands/, subsystems/) to keep your project organized.

Reusability: Commands can be reused across OpModes or combined into more complex sequences.

Separation of concerns: Subsystems manage hardware; commands describe behavior.

Concept Overview
^^^^^^^^^^^^^^^^

In a Command-based structure, your robot is made of the following:

Subsystems
----------

Subsystems represent hardware components. For example, a Drivetrain, Arm, or Intake. They contain methods that interact with the hardware and typically maintain state.

.. code-block:: java

    public class Drivetrain extends SubsystemBase {
        private final DcMotor leftMotor, rightMotor;

        public Drivetrain(HardwareMap hardwareMap) {
            leftMotor = hardwareMap.get(DcMotor.class, "leftMotor");
            rightMotor = hardwareMap.get(DcMotor.class, "rightMotor");
        }

        public void tankDrive(double leftPower, double rightPower) {
            leftMotor.setPower(leftPower);
            rightMotor.setPower(rightPower);
        }
    }

Commands
--------

Commands declare behavior and use one or more subsystems. They contain logic for what should happen when the command is initialized, executed, and ended.

.. code-block:: java

    public class DriveForwardCommand extends CommandBase {
        private final Drivetrain drivetrain;
        private final double power;
        private final long duration;
        private ElapsedTime timer;

        public DriveForwardCommand(Drivetrain drivetrain, double power, long duration) {
            this.drivetrain = drivetrain;
            this.power = power;
            this.duration = duration;
            addRequirements(drivetrain);
        }

        @Override
        public void initialize() {
            timer = new ElapsedTime();
            drivetrain.tankDrive(power, power);
        }

        @Override
        public boolean isFinished() {
            return timer.milliseconds() >= duration;
        }

        @Override
        public void end(boolean interrupted) {
            drivetrain.tankDrive(0, 0);
        }
    }

.. warning:: Avoid putting long delays or blocking calls (like Thread.sleep()) inside commands. Use timers and state transitions instead.

Command Scheduler
-----------------

This is the engine that runs commands. In OpMode loop methods (typically runOpMode()), you should regularly call:

.. code-block:: java

    CommandScheduler.getInstance().run();

This updates active commands and handles transitions.

Usage in OpModes
^^^^^^^^^^^^^^^^

Here's a simplified example of how to use command-based logic in a LinearOpMode.

.. code-block:: java

    @TeleOp
    public class MyTeleOp extends LinearOpMode {
        private Drivetrain drivetrain;

        @Override
        public void runOpMode() {
            drivetrain = new Drivetrain(hardwareMap);
            CommandScheduler.getInstance().registerSubsystem(drivetrain);

            waitForStart();

            CommandScheduler.getInstance().schedule(new DriveForwardCommand(drivetrain, 0.5, 2000));

            while (opModeIsActive()) {
                CommandScheduler.getInstance().run();
            }
        }
    }

Advanced Features
^^^^^^^^^^^^^^^^^

Command-based programming supports several powerful features:

ParallelCommandGroup: Run commands simultaneously.

SequentialCommandGroup: Chain commands in order.

DeadlineCommandGroup: Run a group until one finishes.

Button bindings: Trigger commands using gamepad input (more common in FRC/FTCLib setups).

Use CommandScheduler.getInstance().cancelAll() in stop() methods to cleanly shut down all active commands when your OpMode ends.

Best Practices
^^^^^^^^^^^^^^

Create one subsystem per mechanism.

Make commands single-purpose and testable.

Use addRequirements() to ensure only one command controls a subsystem at a time.

.. warning:: If you forget to call addRequirements() in your command, multiple commands might try to control the same subsystem, causing unpredictable behavior.

Prefer SequentialCommandGroup over writing complex logic inside a single command.

Resources
^^^^^^^^^

.. tip:: FTCLib provides many helpers and predefined commands that reduce boilerplate. Consider using it if you're building a complex command structure.

FTCLib <https://github.com/FTCLib/FTCLib>_: Provides a full command-based framework for FTC.

State Factory <https://state-factory.gitbook.io/state-factory>_: A library for building autonomous sequences via FSMs.

Game Manual 0 on FSMs <https://gm0.org/en/latest/docs/software/concepts/finite-state-machines.html>_

Command-based FRC Docs <https://docs.wpilib.org/en/stable/docs/software/commandbased/index.html>_: Most principles apply to FTC as well.

Command-based programming isn't for every team, but it can greatly improve code structure, readability, and reuse as robot logic becomes more complex.
