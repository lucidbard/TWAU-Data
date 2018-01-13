VAR HAS_MATCHBOOK = false

Once upon a time in New York City there lived a community of fairy tale characters known as Fabletown.The Fables who live there arrived hundreds of years ago, after they were exiled from their Homelands
Through the use of a magic spell called Glamour, they have protected their secret community from the mundane world.
Sheriff Bigby Wolf protects them from each other.
RADIO ANNOUNCER: 105 today if you missed it, a record for the day, hottest ever in June, 103 now, and that humidity looks low, but remember the hotter the air is, the more moisture it can hold, so 103 with 31% humidity is a lot more humid than, say, 73 with 31% humidity and it is muggy out there.
-> APARTMENT
=== APARTMENT ===
    [Bigby enters the building]
    BIGBY: Mr. Toad?
    [Toad, appearing as a humanoid frog, looks up the stairway] 
    TOAD: Oh shit
    [Toad turns to Bigby]
    TOAD: Bigby! Listen, mate, I know I don't look human. It's a problem, I get it, I just stepped out of the apartment for a second to see what kind of damage this drunk shit is doing.
    TOAD: Just cut me a break, yeah? I'll get me glamour first thing in the morning. Cross my heart. No need to kick up a fuss.
    * [I'm looking at a 3 foot toad.]
        BIGBY: I'm looking at a 3 foot toad in a sweater. That's a problem.
    * [Enough excuses, Toad.]
        BIGBY: I've heard enough of your excuses Toad, this is unacceptable. 
    * (no_harm_done) [No harm done.]
        BIGBY: Look, no harm done, I'll give you a pass, but listen, <>
    * [...] 
        [BIGBY is silent, staring at Toad]
        TOAD: Come on Bigby, say something. You're starting to scare me.
- BIGBY: If you can't afford to look human, you're going to The Farm. It's as simple as that. {no_harm_done:
    ? "True!"}
    TOAD: You can't send me up to live with those animals..."
    [Bigby gives Mr. Toad a look]
    TOAD: You know what I mean.
    BIGBY: Go see a witch. Get a glamour."
    TOAD: Bigby, they're bleedin' me dry, mate. The quality of the spell goes down, but the rates keep climbing up. Do you have any idea how much it costs to have an entire family in glamour?

    * I don't make the rules
    BIGBY: I don't make the rules, sorry. I can't give you a free pass on this, my hands are tied. There's too much at stake.
    [Toad looks downcast]
    TOAD: Right, right.
    BIGBY: There's too much at stake. 
    * [Get it fixed.]
        BIGBY: Then get it fixed. It's not complicated, Toad. 
    * Not my problem
        BIGBY: It's not my problem. You're the one risking your entire family getting shipped off. It's completely irresponsible, Toad.
        TOAD: Bigby, please, that's a low blow. All of this will be taken care of as soon as the witches are available to cast the spell. 
    * ...
        TOAD: It's not even really worth dwelling on at this point, you're telling me to get it together.
- BIGBY: Whatever it costs, it's worth it. You don't want me catching you out of glamour again. 
[You hear a loud crash from upstairs]
    TOAD: Fuckin hell.
    TOAD: See? This is what I called you about, Sheriff.
    TOAD: You gonna stand there? Do something, Bigby. Before he completely tears up the place.

    * [So what have I walked into?]
    BIGBY: So... what am I walking into exactly?
    TOAD: Woodsman is on another bender, he's been going on like that for hours, turn this place into dust if you let him. He's in a fucking rage.
    [WOODSMAN GRUNTS AND ANOTHER CRASH]
    * [What do you want me to do?]
        BIGBY: And what exactly do you want me to do?"
        TOAD: I want you to throw the fuckin' Woodsman out of here. Drunk shit… He's been going on like that for hours. Turn this place to dust if you let him. He's in a fuckin' rage.
        [WOODSMAN GRUNTS UPSTAIRS]
        TOAD: This is the last straw, Bigby. He has to go!
        
        -> head_upstairs
    * [Head Upstairs] 
        BIGBY: [Throwing cigarette away]. I should probably go handle this.
        TOAD: Yes, please. Thank you. 
        [BIGBY heads upstairs] -> head_upstairs
    * [...]
        BIGBY: [Taps cigarette dust onto floor]
        TOAD: Oh, thanks for that Bigby, you're a real gentleman.
- TOAD: This is the last straw, Bigsby, he has to go.
    * [Do it yourself.]
        BIGBY: You're the landlord, this is something you should be doing.
        TOAD: Oh, yeah, that'd be a fair fight. You're the sheriff, Bigby, and the man is clearly disturbing the peace, or whatever a mundy cop would call it. Wait, you're not worried about his axe, are you? I know you two have history, but.
        BIGBY: I'm not worried.
        TOAD: Right, of course.
    * [Why's he so pissed?]
        BIGBY: So, what set him off?
        TOAD: Who knows what it was this time. Man's got a hair trigger. I avoid him as much as possible.
        BIGBY: When did he start drinking?
        TOAD: Not sure he ever stopped.
    * [I'm heading up.] 
    BIGBY: Fine, I'm heading up. Get. Your. Glamour.
    * [...]
- 
    [CRASH from upstairs]
    FEMALE VOICE: Fuck you.
    TOAD: I didn't know anyone else was up there.
    -> head_upstairs
- (head_upstairs)
    BIGBY HEADS Upstairs
    [TOAD waves at BIGBY as he reaches the top of the stairs]
    TOAD: Furry pricked gobshite... tell me how to spend my money... [Spits]
    TOAD'S CHILD: Dad? The lights are shaking again.
    TOAD: What'd I say? You want the Big Bad Wold to take you away?
    TOAD'S CHILD: No.
    TOAD: Then get the fuck back inside.
-> UPSTAIRS_LANDING
=== UPSTAIRS_LANDING ===
Upon arriving at the upstairs landing, you hear a female and male voice. There is a phone, a matchbook and a door.
WOODSMAN: ... you're gonna know who I fuckin' am. You hear me? Hey! Look at me!
FEMALE VOICE: Just stop, okay? You're drunk! Let go!
WOODSMAN: Take a look! Take a good look! Know who I am now? Hey! Look at me!
FEMALE VOICE: Get off of me!
WOODSMAN: Aaaargh!

 * [Use Phone]
 * [Pick up Matchbook]
 ~ HAS_MATCHBOOK = true
 
 * [Kick Open Door]
 * [Use Door]
 
- WOODSMAN: Goddamn you! 
Woodsman slaps Faith.
WOOSMAN: You know who I am now, don't you?
BIGBY: Whoa, whoa, whoa! Hey! HEY!
Bigby Grabs Woodsman and slams him against wall.
FAITH: You got something on your face.
WOODSMAN: Fuck are you talking about you stupid cu--
FAITH spits blood on WOODSMAN's face.
WOODSMAN: I'll fuckin' kill you!
WOODSMAN: You fucker!

 * [What's going on here?]
 * [Everyone calm down!]
 * [Alright, why'd you hit her?]
 WOODSMAN drives his forehead into BIGBY's face.
 * [...]
 - WOODSMAN: What're you gonna fuckin' do? Huh?
WOODSMAN: Get the fuck out of the way before you get the axe again.
 * [This is your last warning.]
 * [\[threaten him\]]
 * [You're drunk...]
 BIGBY: You're drunk, alright? Think this through.
 * ...
 - BIGBY: If you keep on like this, I won't have any choice but to put you down.
 WOODSMAN: Put ME down?
 WOODSMAN: You've got a shit fuckin' memory, Wolf. That's not how it went last time.
 BIGBY: This isn't last time.
 WOODSMAN winds up a large overhead punch.
 BIGBY dodges and holds him for a moment before getting pushed into the sink, breaking it. BIGBY dodges WOODSMAN who bangs his head into the broken sink. WOODSMAN grabs a shaving knife from the sink. BIGBY avoids several swipes of the knife and slams the WOODSMAN into the sink again. 
 BIGBY: You're a fuckin' glutton for punishment, Woody.
 WOODSMAN: Fuck you.
 BIGBY throws him into the couch, then punches him several times before pulling him up and throwing him into the couch. WOODSMAN kicks couch into BIGSBY, follewed by stalking toward him.
 WOODSMAN: At least make this a fuckin' challenge.
 BIGBY dodges again and punches him in the throat before throwing him at the bookshelf. WOODSMAN grabs the lamp and then swings at BIGBY. BIGBY kicks in his knee. WOODSMAN grabs his axe, swiping at him. BIGBY takes the axe from him then hits him with its butt.
 
BIGBY: You should probably get out of here.
FAITH: Look, I'm not leaving until I get what's mine. 
WOODSMAN: You're not geddig shidt, bidtch. Aisle fuhged puhd yew in de gounnd.
WOODSMAN: You hear me?
 * [Say that word again.]
 BIGBY: Say that word, one more time. 
 WOODSMAN: Whad? bidtch?
BIGBY: WHAT did I say?
 * [Be nice, or I'll make you wait outside.]
 * [SHUT UP!]
 * [...]
 - WOODSMAN: Yew fuuuuhggger
WOODSMAN: Fuhged... shid...
WOODSMAN: Yew bogue buy jaw, yew badturd.
BIGBY: And still you talk.
WOODSMAN: Fug gyoo.
FAITH: Shit.
 * [You need to leave.]
 * [What happened?]
BIGBY: What the hell is going on? What happened?
FAITH: A little misunderstanding that turned into a real shit show. Don't worry. You saw all the best bits.
WOODSMAN: Ders moar where dad cameb frumb, gurlie.
BIGBY: Knock it off.
 * [What are you doing here?]
 * [Are you all right?]
 * [...]
 - 

 * [Are you alright?]
BIGBY: Are you alright?
FAITH: I'm... hunky dory... thanks for asking.
 * [What are you doing here?]
 * [You need to leave]
 * [...]
 - 
 * [Why was he hitting you?]
 * [What's your name?]
 * [Are you hurt?]
BIGBY: Seriously. I need to know if you're okay.
FAITH is quiet for a moment, with arms crossed.
 * ...
 - FAITH: He asked me if I recognized him... knew who he was... I said I didn't. He started beating on me. Then you showed up, started beating on him. That about cover it, Hon?
WOODSMAN: I'b Duh Woodsman, yooo hoaar...
WOODSMAN: - ... aye saveed liddle reeed raiding hood frum this... monster... I cut dis fugger oben... and filled hids belly full of...uh... stones. AND THREW HIM IN THE FUCKING RIVER. That's who the fuck I am, you stupid bitch!

* [Will you excuse me a moment?]
* [HEY!]
* \[[Throw him out]\]
BIGBY: HEY! What'd I say?!?!
BIGBY: I said be nice, or you wait.. out... side!

* ...

 - BIGBY charges the WOODSMAN, pushing him out the window. BIGBY ends up on the bottom and falls onto TOAD's cab parked outside.
BIGBY: Oh, shit.

BIGBY lays back. TOAD is shown with hands on his head. 

BIGBY: Hey, Toad.
TOAD: My... car...

BIGBY: Yeah. Gimme a sec.
TOAD: Oh, no. By all means. Take your time. Make yourself comfortable.
 * [How's your insurance?]
BIGBY: So... how good is your insurance?
 * [Sorry about the car.]
 * [Get off the street.]
 * ...

- TOAD: I can't be mad at you... I called you... and you come to help... I can't be mad...
TOAD: But even when you help... things end up more fucked than they started.
TOAD looks to his left at an approaching figure.
TOAD: Well, at least you're not fucking dead.
WOODSMAN grabs BIGBY off the car and then pushes him against the wall with a choke hold. Bigby chokes back, and then goes for his eyes. 
WOODSMAN: Quit fucking around.
WOODSMAN: I know you're fucking in there.
WOODSMAN: Come on out you fucking dog.
WOODSMAN: I'll put you out of your misery.
WOODSMAN: You fucking mongrel... you ignorant fuck...
WOODSMAN: Come on out Wolf.
BIGBY starts to wolf out when an axe appears on WOODSMAN's head.
FAITH turns and searches the WOODSMAN.

 * [Thanks...]
BIGBY: Thanks.
FAITH: Don't mention it.

 * [What are you doing?]
 * [Leave him alone.]
 * ...
FAITH continues to search while BIGBY looks on.
- FAITH: I'm just getting what he owes me.
FAITH: You alright back there? I mean... Your eyes. and the teeth... you're not really supposde to do that are you?
BIGBY: Not if I can avoid it.
FAITH: Great.
Faith finds a few coins and throws them down in frustration. She begins to kick him.
BIGBY: The guy's got an axe in his brain. He's not feeling that.
FAITH: It's more for me. He'll be fine.
WOODSMAN: Aisllle killl yew. Yew fuckin' bidch
FAITH steps on the axe.
FAITH: Let me help you with that.

 * [Let her]
BIGBY: Guy's having a bad day.
 * [Stop her]
- FAITH: That makes two of us.
FAITH continues to push down.
FAITH: I guess it's a good thing Fabels are hard to kill.
BIGBY: Suppose it is.
FAITH walks away while BIGBY takes axe out. BIGBY tosses axe down.
FAITH tries to light cigarrette.
FAITH: Shit... just... come on...

 * \[[Give her the matchbook]\]
 * [Light her cigarette...]
FAITH: Thanks.
 * [Make a joke...]
 * [...]

 - BIGBY: Who do you work for, really?
FAITH: These lips are sealed... sorry...
FAITH: Hey, you like my ribbon?

 * [I'm trying to help you.]
 * [Beautiful]
BIGBY: Beautiful.
FAITH: Thank you.
 * [Stop changing the subject.]
 * [...]
- BIGBY: I feel like we've met before...
FAITH: We probably have. We all sort of knew each other at one point or another. But things change I guess.
BIGBY: I guess.
FAITH walks away.
FAITH grabs BIGBY
FAITH: Stop. We don't have to make any more of a thing out of it than it already is.

 * [Are you sure?]
BIGBY: Are you sure?
 * [This is about Fabletown.]
 * [He hit you.]
 * [...]

- FAITH: Eh, he's had enough. For tonight at least. Wouldn't be surprised if he has an axe to grind though.
BIGBY gives her a look.
FAITH: That wasn't intentional... sorry.
FAITH looks waay while smoking, with her back turned to BIGBY. Her eyes look scared.
BIGBY: How much was it he owed you?
FAITH: A hundred...
BIGBY: ...and I'm guessing it'd be bad for you to show up empty handed!
FAITH turns toward him and provides a smile.
FAITH: I'll be fine.

 * \[give her some money\]
BIGBY: Let's see. I've got, uh... It's twenty, forty... seven-- eight. Fifty eight. It's all I got -- it'll help, right? 
BIGBY holds out the money.
BIGBY: Take it.
FAITH: It's okay. I'll be fine. You've done enough. Really.
BIGBY's expression is hard.
BIGBY: Just... take the money, okay?
CHOICE TEXT: You chose to give her the money.
FAITH takes the money and puts it down her shirt.
 * [Wish I could help]

- FAITH: You got me out of a bad situation back there. Thanks.
BIGBY: I'm still gonna need a statement.
FAITH: I have to go drop off... what I have.
BIGBY: Meet me back at my office then.
FAITH: It's a little late for an office visit, Sheriff. I'll swing by your apartment.
BIGBY: How do you know where I...
FAITH: You live in the smallest apartment in The Woodlands. Everyone knows that.
BIGBY: Good to know.
FAITH: You should get cleaned up. You look like shit. And I don't use that term lightly.
FAITH: Some of these look pretty bad.

 * [Tell me what you really think.]
 * [That's harsh.]
 * [I clean up okay.]
BIGBY: I clean up okay.
FAITH: I'll believe it when I see it.
 * [...]

- FAITH: Hey... I need to tell you something.
BIGBY: What is it?
FAITH leans close and says the following into his ear with her hand on his shoulder:
FAITH: You're not as bad as everyone says you are.
FAITH gives him a small kiss on the cheek.
FAITH: I'll see you around... Wolf.
BIGBY turns and look sat the street before taking out a cigarette and lighting it.

-> END
