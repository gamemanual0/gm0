#lang scribble/sigplan

@title{Principles of FIRST Tech Challenge}
@abstract{In this section, we have compiled some important and valuable lessons that we have learned
          over the years. We encourage you to read through this section in order to avoid some of the
          mistakes we made in the past as young teams. The principles are generally in order of
          importance from top down.}

@section{TL;DR}
 Here is a TL;DR of this section; followed by the full version:
 @itemlist[@item{@bold{FIRST Tech Challenge is all about reliability and efficiency.}}
           @item{Execution is the key to success. A bad design implemented well nearly always beats a
            good design with bad implementation.}
           @item{Simpler = Less points of potential failure = Less likely to break = More reliable.}
           @item{No team exists in a vacuum, take inspiration from other team’s efforts.}
           @item{Doing one task consistently trumps doing every task poorly.}
           @item{Driver practice, after reliability and efficiency, is the third most important
            element of your robot.}
           @item{@bold{Always assume your mechanisms will break during competition!} Always build with
            redundancy and easy repair in mind.}
           @item{The hardware of a successful team nearly always includes a simple and reliable
            drivetrain, an active passthrough intake, and quick linear extension(s).}
           @item{Set a realistic schedule and follow it to the best of your ability.}
           @item{CAD does not replace actual prototyping.}
           @item{Overbuild, rather than underbuild.}
           @item{Linear extensions > arms.}
           @item{Attach mechanisms with redundancy.}
           @item{Servos ≠ motors.}
           @item{A poor center of gravity can cause your robot to tip or turn off-center.}
           @item{Always aim for at least 90° of chain and belt wrap.}
           @item{Use the JVN for FTC calculator to determine feasibility and optimization.}]

@linebreak

@section{Full Principles}
 @subsection{Reliability and Efficiency}
  @bold{FIRST Tech Challenge is all about reliability and efficiency.} This cannot be
  stressed enough! Your robot will win only if it is both reliable and efficient. Reliability
  should be your top priority when building - focus on building repeatable mechanisms that
  always act how you want them to. Leave plenty of time to test, diagnose, and improve your
  mechanisms before competition. Reliable means that the robot can complete a task well over
  90% of the time. A reliable mechanism is only half of the equation, though. If it cannot
  score quickly, then the robot will not win matches. Efficiency is key to maximizing a
  robot's scoring potential. Short cycle times will lead to greater efficiency. When
  designing, always keep in mind that the shortest distance between A and B is a straight
  line. This may seem silly, but it is worth knowing that many top teams have optimized the
  pathway from collection to deposit to nearly a straight line, as it is simple and efficient
  to do so. The best way to do this is generally by using a passthrough intake. What this
  means is that the game elements should pass through the robot, allowing the robot to
  collect and deposit the elements without having to turn 180 degrees, minimizing cycle time.
  However, not every team can build a successful intake, and the simplicity of a
  well-executed claw trumps a poorly-designed intake.

 @subsection{Simplicity}
  @bold{Simple but effective should be the top priority for all teams. Execution is the
  key to success. A bad design implemented well NEARLY ALWAYS beats a good design with bad
  implementation.}  This is probably the second-most important principle in FTC. Many teams
  at kickoff think of great designs that they have no way or no time to properly execute.
  There are designs that require machining and precision tools, and there are ones that
  don't - but that doesn't mean the simple design is necessarily inferior. In Relic
  Recovery, teams with a simple claw design could compete at a high level - for example, a
  clawbot could complete a cipher + relic + balance, slightly under or on par with many of
  the top teams who used intakes. This is because it takes a lot more time to test and
  perfect an intake and a deposit mechanism, as opposed to the vastly simpler claw, which
  achieves both collection and deposit in one. A good claw driver with a serviceable claw
  could consistently win matches against mediocre intake drivers with average intakes. This
  goes to show that a simple claw can be much more effective than an intake, which a lot of
  teams struggled with reliability and consistency issues.

 @subsection{Reliability}
  @bold{Simpler = Less points of potential failure = Less likely to break = More reliable}
  (usually). The simpler the mechanism, the less likely it will be to break. This
  doesn’t mean that well-designed complex mechanisms don’t work - it just means there needs
  to be more thought put into them as there are many more things that could go wrong. If
  you’re designing a complex mechanism, @bold{make sure you have a justification for why it
   needs to be so complicated.}
  Simple mechanisms can be very effective. In Rover Ruckus, a robotwon a state championship
  using a plastic cup as its primary scoring mechanism. In short: @bold{Don’t underestimate
   the power of simplicity, and don't reinvent the wheel!}

 @subsection{Getting Inspired}
  @bold{No team exists in a vacuum, take inspiration from other team’s efforts.} A
  simple andeasy way to jump ahead in efficiency is observing other teams. Their iteration
  also becomes your iteration. FTC has thousands of teams, and robotics challenges all have
  similar challenges. Chances are, another team has had the same idea that you have and
  already executed it. For example, both the RES-Q (2015-2016) and Rover Ruckus (2018-2019)
  seasons necessitated the pickup of a mix of both cubes and balls (in fact,the exact same
  cubes and balls). Therefore, teams playing Rover Ruckus were able to take inspiration from
  robots from RES-Q. Additionally, many teams will share their ideas/efforts online
  throughout the season, whether it be informally through platforms like Discord, or more
  formally through robot reveals, blog posts, or other videos. An important early season
  event is the Ri3D (Robot in 3 Days) videos, where mentors or experienced teams attempt to
  build a competition robot in a very short timespan. These Ri3D efforts serve as a great
  inspiration early season, and some even predict the most competitive designs

  Disclaimer: We’re not trying to encourage copying designs, but there’s a lot to be learned
  from more experienced teams.
 
 @subsection{Do One Thing Well}
  @bold{Doing one task consistently trumps doing every task poorly.} Jack-of-all-trades
  robots exist, but it is very difficult in general to accomplish, much more so as an
  inexperienced team. This is not only a robotics principle, but can be applied to many areas
  of life as well. Obviously, top teams seek to complete every task, but inexperienced teams
  are better off choosing one objective and sticking to it. Generally, there are two tasks
  in driver-controlled mode - one during the initial 1 minute 30 seconds, and one that can
  only be completed in the last 30 seconds; endgame.
  @itemlist[@item{Velocity Vortex - shoot balls; raise and place exercise ball (cap ball)}
            @item{Relic Recovery - pick up and deposit glyphs; pick up and place the two relics}
            @item{Rover Ruckus - pick up and deposit minerals; hang onto lander}]
  Our suggestion is to devote time to autonomous, but select one objective in tele-op and
  @bold{focus on that for the whole season.} Don’t overextend yourself and your resources
  trying to complete every objective, because what will happen is that you do everything very
  poorly, if at all. A robot in Rover Ruckus that does minerals well or can consistently hang
  will beat a robot which can do a couple of minerals and hang 50% of the time. Strive for
  consistency - do one thing 90% of the time and you will win more matches than robots that
  do everything 50% of the time.
 
 @subsection{Practice Makes Perfect(er)}
  @bold{Driver practice, after reliability and efficiency, is the third most important
    element of your robot.} Just like a sports team, a robotics team requires practice. Even
  if individual players have great talent, only practice and communication can guarantee
  success as ateam. This principle also applies to the robot. Even if your robot is the best
  in the world, and inferior robot with a competent drive team more than likely will beat
  your robot. Driveteams need to communicate with one another and practice for the
  unexpected. A highschool sports team practices about 15-20 hours weekly. To be successful,
  that is the same amount of time that you need to devote to your robotics team. By April's
  world championships, many top teams had 150+ hours of practice, not including building or
  coding meetings. This means the tops teams:
  @itemlist[#:style 'ordered
            @item{Were dedicated to weekly (and sometimes even daily) drive practice sessions.}
            @item{had robots that were reliable enough to survive 150+ hours of operation.}]

 @subsection{Reduncancy and Repair}
  @bold{Always assume your mechanisms will break during competition. Always build with
    redundancy and easy repair in mind.}
  When building mechanisms, take into account that motors or servos may fail during
  operation. Will the mechanism continue to work if a motor blows? This is a key reason
  behind 4 motor drivetrains - often, it is possible to keep moving if a motor dies during a
  match. It is important to take into account points of failure and address them.
  Furthermore, build with easy repair in mind. For example, do not seclude your drivetrain
  motors in the deepest corners of your robot. You don’t want to take apart your entire drive
  base to replace a motor in between matches. For newteams, modular design is not
  recommended, but teams should consider how easy it is to change motors or swap out a broken
  mechanism.

 @subsection{Ideal Robot Hardware}
  @bold{The hardware of a successful team nearly always includes a simple and reliable
    drivetrain, an active passthrough intake, and a quick linear extension.} Not many of the
  top teams are lacking in any of these mechanisms. Teams should focus on these three
  mechanisms in the off-season, and Game Manual 0 has guides specifically devoted to each of
  these essential components. @; add link to guides

 @subsection{Scheduling}
  @bold{Set a realistic schedule and follow it to the best of your ability.} Ideally,
  your robot will be mostly functioning one full week before competition  at the
  @italic{latest} - planning for two full weeks before competition gives you plenty of time
  and creates flexibility that you’ll thank yourself for later. Make sure you know how your
  progress compares to the schedule you set, and adjust your work accordingly to meet your
  deadlines. If you think that can’t finish a key mechanism in time, simplify it until you
  can. Ensure that the team is optimized for efficiency and that you’re utilizing your team
  to its maximum ability - everyone should havea goal at each meeting, even if it’s something
  really simple. Not only will this make your robot come together faster, it’ll make everyone
  feel more engaged in the process. To reiterate: @bold{do not try to build or code something
   the night before a competition. It won’t work.}
  @itemlist[@item{How to set a realistic schedule - keep in mind that a simple design takes
             much less time to build, test, and perfect than a complicated design.
             Complex designs often take 3-5x the time it would take to produce a
             final product of a simple mechanism. Teams also forget that
             prototyping takes time. A mechanism rarely works the first or second
             time you build it, and it takes time in order to improve it. This is
             generally a great stumbling block for new teams - @bold{they vastly
              underestimate the difficulty and time needed to construct a reliable
              and repeatable mechanism.}}]
 @subsection{Shaft Support}
  @bold{Try not to cantilever shafts, especially on drivetrains.} Axles and shafts
   should @bold{always} be supported on both sides, with the exception of motor shafts
   (because they are too short to be supported). It is far too common that shafts bend or
   gears come out of alignment due to the fact that there is only one support for an axle.
   This is fundamentally unsound and should be remediated as soon as possible. Gears, chain,
   and belt especially require good support and alignment to reduce efficiency loss and
   prolong their lifetimes.

 @subsection{The Value of Prototypign}
  @bold{CAD does not replace actual prototyping.} While CAD can be a great tool to plan
   out the robot, no team can jump from CAD → final design. Prototyping is important to
   understand how your robot will actually work. It is a quick way to determine feasibility
   and to determine how in general the mechanism will work. It is possible to prototype with
   many different materials - cardboard, for example, makes an easy box or funnel to direct
   objects along a certain path. Wood is more sturdy and should be used for mechanisms that
   might be under some load. Finally, scrap extrusion or channel can also be a good option,
   if you have extra.

 @subsection{Overbuilding}
  @bold{Overbuild, rather than underbuild.} Too often, teams seem to have underbuilt
  mechanisms. By that, we mean their mechanisms either aren’t strong enough to withstand
  competition usage, or have not been attached properly.

 @subsection{Why to use Linear Extension}
  Linear extensions should be prioritized over arms. Many newer teams rush into a
  challenge by trying to build multi-axis arms. @bold{Arms are @italic{hard to build} and
  almost never worth it for new teams}
  This is because arms firstly require high torque. None of the motors provided in any of the
  base kits will be able to withstand the load of multi-axis arms. In order to get the torque
  you need, you’ll need to buy a planetary gearbox with a very high ratio, install that
  gearbox, and beef up every moving part of your robot. In the end, it’s almost always easier
  to build a linear extension. In the latter part of the guide,we have provided documentation
  and many pictures of linear slides to help you get started with them.
  
  @; add links to linear slide section
 @subsection{Mounting Redundancy}
  @bold{Redundancy in supporting and attaching objects} is a very important topic that
   many teams will struggle with in their first season. You want to @bold{attach objects with
    4+ bolts, especially if they are structurally important.} There isn’t a reason to use less
   than 4 bolts. Many times, we have seen mechanisms bend, break, or wheels plain fall off
   because they weren’t properly attached. It isn’t rocket science, and it could cost you a
   match because you saved 30 seconds and two bolts. Using nyloc nuts (locknuts) is highly
   recommended. Use loctite in places like tapped holes.
     
 @subsection{Servos ≠ Motors}
  @bold{Servos and motors are not the same.} Do not treat them like the same! Motors are
  used for medium-high load applications, and are the primary method to power drivetrains and
  intakes. Servos are made for low-load precision applications, @bold{not for intakes.} Far
  too many times, we have seen teams try to actuate hooks or load-bearing parts using servos,
  and unless you know how to properly support it, this ends up being a very bad idea.

 @subsection{Center of Gravity}
  @bold{Keep in mind your robot's center of gravity (CoG)} when designing and building
  it. For mecanum wheels especially, center of gravity makes a big difference in terms of
  strafing ability. CoG is affected by two factors: the weight of the robot, and where the
  weight is distributed. For example, mounting an arm high above the ground causes the CoG to
  rise up and potentially allowing the robot to tip over when the arm is actuated. Keep in
  mind that mechanisms (especially arms) have momentum and don't stop instantly. CoG affects
  skid-steer drivetrains less, but can increase wheel scrub and decrease turning ability.

 @; link to chain and belt section
 @subsection{Chain/Belt Wrap}
  @bold{Chain and belt should, at the very least, have 90° of contact with the sprocket
  or pulley.The best practice is to have 180° or more of contact,} as it is very unlikely to
  fall off with proper tensioning. Chain skipping, especially on drivetrains or arms, is
  very possible without proper chain wrap or tensioning.
  @centered{Best practices for wrap
   @image[#:scale 0.2]{images/principles-of-first-tech-challenge/best-practice-wrap.png}
   @image[#:scale 0.4]{images/principles-of-first-tech-challenge/best-practice-wrap-2.png}
   
   Acceptable chain wrap, not recommended
   @image[#:scale 0.4]{images/principles-of-first-tech-challenge/acceptable-chain-wrap.png}}

@subsection{JVN Calculator}
 @; link to JVN section
 @bold{Use the JVN for FTC calculator to determine feasibility.} Refer to the JVN
 section for more information on how to use the calculator itself. JVN is a useful tool so
 that teams can plan ahead and know what they’re getting into, and see if their planned
 design is realistic or not. For example, if a team is limited to 40:1 gearboxes for an arm,
 JVN could assist in finding a suitable ratio - such as 80:1 - that would be achievable.
 JVN also can optimize spool size in linear mechanisms and maximum speed in drivetrains.
 Teams can plug different spool sizes in to see which would attain the optimized speed.
