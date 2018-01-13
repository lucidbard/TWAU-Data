// Version 0.2
// Date: 6/30/2017
// Game: The Wolf Among Us, by Telltale Games
// Adapted to INK by John Murray

VAR DEBUG=false
VAR HAS_MATCHBOOK=false
VAR HAS_CASH=true
{DEBUG:
* Lawrence
-> LAWRENCES_APARTMENT
* Trip Trap bar
-> TRIP_TRAP_BAR
 - else:
 -> INTRO
}
=== INTRO ===
	Once upon a time in New York City there lived a community of fairy tale characters known as Fabletown.The Fables who live there arrived hundreds of years ago, after they were exiled from their Homelands. #Test #Tag
        Through the use of a magic spell called Glamour, they have protected their secret community from the mundane world.
Sheriff Bigby Wolf protects them from each other.
	-> NEW_YORK_CITY_MONTAGE
= NEW_YORK_CITY_MONTAGE
	105 today if you missed it, a record for the day, hottest ever in June, #dlg #actorRadioAnnouncer #voiceOver
	A: EXT: NEW YORK CITY CENTRAL PARK BRIDGE - NIGHT #scene
	103 now, and that humidity looks low, but remember the hotter the air is, the more moisture it can hold, so 103 with 31% humidity is a lot more humid than, say, 73 with 31% humidity and it is muggy out there. #dlg #actorRadioAnnouncer #voiceOver
	EXT: NEW YORK CITYSCAPE - NIGHT #scene
	EXT: NEW YORK CITY SCREET - NIGHT - Taxi Cab moves through city
	INT: TAXICAB
	BIGBY is holding his head in a grimace.
	-> OUTSIDE_APARTMENT
=== OUTSIDE_APARTMENT ===
	Bigby exits a cab and takes out a lighter and lights his cigarette.
	He verifies the address of Mr. Toad's apartment on a slip of paper. 
	-> APARTMENT
=== APARTMENT ===
	Bigby opens the door to the building #actorBigby
	Mr. Toad? #actorBigby #dlg
	Toad, appearing as a humanoid frog, looks up the stairway. #actorToad
	Oh shit #actorToad #dlg
	Toad turns to Bigby
	Bigby! Listen, mate, I know I don't look human. It's a problem, I get it, I just stepped out of the apartment for a second to see what kind of damage this drunk shit is doing. Just cut me a break, yeah? I'll get me glamour first thing in the morning. Cross my heart. No need to kick up a fuss. #dlg #actorToad
	* [I'm looking at a 3 foot toad. %X1]
        I'm looking at a 3 foot toad. That's a problem. If you can't afford to look human, you're going to The Farm. #actorBigby #dlg
	* [Enough excuses, Toad. %X2]
        	I've heard enough of your excuses Toad, this is unacceptable. #actorBigby #dlg
	* (no_harm_done) [No harm done. %Y3]
	* [... %A4] #A #4
	- You can't send me up to live with those animals... #actorToad #dlg
	Bigby looks at Toad knowingly. #action #actorBigby
	TOAD: You know what I mean.
	BIGBY: Go see a witch. Get a glamour.
	TOAD: Bigby, they're bleedin' me dry, mate. The quality of the spell goes down, but the rates keep climbing up. Do you have any idea how much it costs to have an entire family in glamour?
	* I don't make the rules #X #5
		BIGBY: I don't make the rules, sorry. I can't give you a free pass on this, my hands are tied. There's too much at stake.
		TOAD looks downcast.
		TOAD: Right, right.
		BIGBY: There's too much at stake. 
right.
	* [Get it fixed.] #B #6
	* Not my problem #Y #7
	* ... #A #8
	- BIGBY: Whatever it costs, it's worth it. You don't want me catching you out of glamour again. 
	A loud crash from upstairs.
	TOAD: Fuckin hell.
	TOAD: See? This is what I called you about, Sheriff.
	TOAD: You gonna stand there? Do something, Bigby. Before he completely tears up the place.
        * [So what have I walked into?] #X #9
        * [Head Upstairs] #Y #10
	BIGBY: I should probably go handle this.
	TOAD: Yes, please. Thank you.
	    -> head_upstairs
	* [What do you want me to do?] #B #11
	* [...] #A #12
		BIGBY: [Taps cigarette dust onto floor]
		TOAD: Oh, thanks for that Bigby, you're a real gentleman.
		There's a grunt from upstairs and an impact as dust falls to the floor.
	- TOAD: This is the last straw, Bigsby, he has to go.
	* [Do it yourself.]
	* [Why's he so pissed?]
		BIGBY: So, what set him off?
		TOAD: Who knows what it was this time. Man's got a hair trigger. I avoid him as much as possible.
		BIGBY: When did he start drinking?
		TOAD: Not sure he ever stopped.
	* [I'm heading up.] 
	* [...]
	- [There is a loud CRASH from upstairs]
	FEMALE VOICE: Fuck you.
	TOAD: I didn't know anyone else was up there.
	-> head_upstairs
	- (head_upstairs)
		BIGBY HEADS Upstairs
		On the upstairs landing is a door on the right, a matchbook and a phone off the hook.
		[TOAD waves at BIGBY as he reaches the top of the stairs]
	TOAD: Furry pricked gobshite... tell me how to spend my money... [Spits]
	TOAD'S CHILD: Dad? The lights are shaking again.
	TOAD: What'd I say? You want the Big Bad Wold to take you away?
	TOAD'S CHILD: No.
	TOAD: Then get the fuck back inside.
		-> UPSTAIRS_LANDING
=== UPSTAIRS_LANDING ===
	Upon arriving at the upstairs landing, you hear a female and male voice.
        There are the following options:
        a phone {not PHONE: emitting a beeping noise},
        {not HAS_MATCHBOOK: a matchbook}
        and a door.
	WOODSMAN: ... you're gonna know who I fuckin' am. You hear me? Hey! Look at me!
	FEMALE VOICE: Just stop, okay? You're drunk! Let go!
	WOODSMAN: Take a look! Take a good look! Know who I am now? Hey! Look at me!
	FEMALE VOICE: Get off of me!
	WOODSMAN: Aaaargh!
	-> LANDING
= LANDING
	* [Pick up Matchbook] #13
	        ~ HAS_MATCHBOOK=true
		BIGBY picks up and pockets the matchbook.
                -> LANDING
	* (PHONE) [Use Phone]
		BIGBY picks the phone up and stops it from making a noise.
		-> LANDING
	* [Kick Open Door]
		 BIGBY kicks open the door to reveal <>
	* [Use Door]
		BIGBY knocks on the door, waits, then opens it to reveal <>
	- The WOODSMAN slapping a WOMAN. 
	WOODSMAN: Goddamn you! 
	Woodsman slaps WOMAN.
	WOOSMAN: You know who I am now, don't you?
	BIGBY: Whoa, whoa, whoa! Hey! HEY!
	Bigby Grabs Woodsman and slams him against wall.
	WOMAN: You got something on your face.
	WOODSMAN: Fuck are you talking about you stupid cu--
	WOMAN spits blood on WOODSMAN's face.
	WOODSMAN: I'll fuckin' kill you!
	WOODSMAN: You fucker!
	* [What's going on here?]
	BIGBY: Alright, what's going on here?
	* [Everyone calm down!]
	* Alright, why'd you hit her?
	* [...]
	- 		WOODSMAN drives his forehead into BIGBY's face.
WOODSMAN: What're you gonna fuckin' do? Huh?
	WOODSMAN: Get the fuck out of the way before you get the axe again.
	* This is your last warning.
        BIGBY: Woody, this is your last warning.
	* [\[threaten him\]]
	* [You're drunk...]
	BIGBY: You're drunk, alright? Think this through.
	* ...
	- BIGBY: If you keep on like this, I won't have any choice but to put you down.
	WOODSMAN: Put ME down?
	WOODSMAN: You've got a shit fuckin' memory, Wolf. That's not how it went last time.
	BIGBY: This isn't last time.
	WOODSMAN winds up a large overhead punch.
	BIGBY: You gonna calm down?
	BIGBY dodges and holds him for a moment before getting pushed into the sofa, toppling it over.
	WOODSMAN: At least make this a fuckin' challenge.
	WOODSMAN grabs and holds BIGBY up by the neck. BIGBY grabs his head and pushes it back to expose his neck, which he punches.
	BIGBY grabs his arm and then pushes WOODSMAN into the shelf near FAITH, who is touching up her makeup.
	WOMAN: Back off, asshole.
	WOODSMAN grabs a lamp and swings it at BIGBY, who dodges. WOODSMAN exposes his knee, which BIGBY stomps. BIGBY then grabs WOODSMAN's head and slams it into the wall.
	BIGBY dodges WOODSMAN who bangs his head into the broken sink. WOODSMAN grabs a shaving knife from the sink. BIGBY avoids several swipes of the knife and slams the WOODSMAN into the sink again. 
	BIGBY: You're a fuckin' glutton for punishment, Woody.
	WOODSMAN: Fuck you.
	BIGSBY punches WOODSMAN several times before he gets up.
	WOODSMAN grabs his axe, swiping at him. BIGBY takes the axe from him then hits him aside the head with the flat of the blade.
	BIGBY: You should probably get out of here.
	WOMAN: Look, I'm not leaving until I get what's mine. 
	WOODSMAN: You're not geddig shidt, bidtch. Aisle fuhged puhd yew in de gounnd.
	WOODSMAN: You hear me?
	* [Say that word again.]
	* [Be nice, or I'll make you wait outside.]
	BIGBY: Hey! If you can't be nice, I'll make you wait outside.
	* [SHUT UP!]
	BIGBY: SHUT UP!
	* [...]
	- 
WOODSMAN: Fuhged... shid...
WOODSMAN: Yew bogue buy jaw, yew badturd.
BIGBY: And still you talk.
WOODSMAN: Fug gyoo.
WOMAN: Shit.
 * [You need to leave.]
 * [What happened?]
   BIGBY: What the hell is going on? What happened?
   -> WHAT_HAPPENED
 * [What are you doing here?]
BIGBY:  What are you doing here?
WOMAN: These lips are sealed.
 * [...]
= WHAT_HAPPENED
WOMAN: A little misunderstanding that turned into a real shit show. Don't worry. You saw all the best bits.
 WOODSMAN: Ders moar where dad cameb frumb, gurlie.
 WOODSMAN is touching his jaw, still on the floor.
 BIGBY: Knock it off.
WOMAN: Look, this is the start of a shitty night for me. I just need the money he owes me, then I can go.
 * Are you alright?
 I'm hunky dory. Thanks for asking.
 * 
 * [...]
 - 
 * [Why was he hitting you?]
 BIGBY: Why was he hitting you?
 WOMAN: Maybe you should ask him that.
 BIGBY: I will, but I asked you first.
 * [What's your name?]
 * [Are you hurt?]
 * ...
 - WOMAN: He asked me if I recognized him... knew who he was... I said I didn't. He started beating on me. Then you showed up, started beating on him. That about cover it, Hon?
WOODSMAN: I'b Duh Woodsman, yooo hoaar...
WOODSMAN: ... aye saveed liddle reeed raiding hood frum this... monster... I cut dis fugger oben... and filled hids belly full of...uh... stones. AND THREW HIM IN THE FUCKING RIVER. That's who the fuck I am, you stupid bitch!
* [Will you excuse me a moment?]
* [HEY!]
* [\[Throw him out\]]
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
 Can I get you anytihng, pillow perhaps?
BIGBY: Toad... you need to get off the street. You don't have your glamour.
TOAD: "Apologies for smashing your car, Toad. .I'm gutted for you, mate. It's a real shame." But that's not you is it. Got to play the hard man role.
BIGBY: Some things are more important than your car.
 * ...
-
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
WOMAN turns and searches the WOODSMAN.
 * [Thanks...]
BIGBY: Thanks.
WOMAN: Don't mention it.
 * [What are you doing?]
 * [Leave him alone.]
 * ...
WOMAN continues to search while BIGBY looks on.
- FAITH: I'm just getting what he owes me.
WOMAN: You alright back there? I mean... Your eyes. and the teeth... you're not really supposed to do that, are you?
BIGBY: Not if I can avoid it.
WOMAN finds a few coins and throws them down in frustration. She begins to kick him.
FAITH: Great.
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
FAITH: I guess it's a good thing Fables are hard to kill.
BIGBY: Suppose it is.
FAITH walks away while BIGBY takes axe out. BIGBY tosses axe down.
FAITH tries to light cigarrette with a lighter.
FAITH: Shit... just... come on...
 * [\[Give her the matchbook\]]
  * [\[Light her cigarette...\]]
  BIGBY: Here.
  Lights her cigarrete.
FAITH: Thanks.
 * [Make a joke...]
 * [...]
 - BIGBY: Who do you work for, really?
FAITH: These lips are sealed... sorry...
FAITH: Hey, you like my ribbon?
 * [I'm trying to help you.]
 BIGBY: If you don't answer my questions, I can't help you.
 WOMAN: I'm answering them, the best that I can.
 * [Beautiful]
 * [Stop changing the subject.]
 * [...]
- BIGBY: I feel like we've met before...
FAITH: We probably have. We all sort of knew each other at one point or another. But things change I guess.
BIGBY: I guess.
BIGBY goes over to see that WOODSMAN is gone.
WOMAN grabs BIGBY
WOMAN: Stop. We don't have to make any more of a thing out of it than it already is.
 * [Are you sure?]
BIGBY: Are you sure?
 * [This is about Fabletown.]
 * [He hit you.]
BIGBY: He hit you. He needs to pay for that.
WOMAN: He's got nothin' to give, Sheriff. I checked. Besides, I just swung an axe into the guy's head. I'd say we're even.
 BIGBY: Maybe I should be arresting you.
 WOMAN: I'm not going to be doing this for much longer. So now's your chance.
 * [...]
- WOMAN removes her hand consciously from BIGBY's
BIGBY: How much was it he owed you?
FAITH: A hundred...
BIGBY: ...and I'm guessing it'd be bad for you to show up empty handed!
FAITH turns toward him and provides a smile.
FAITH: I'll be fine.
 * \[give her some money\]
FAITH takes the money and puts it down her shirt.
 * [Wish I could help]
BIGBY:  I really wish I could help.
WOMAN: It's okay. I'll be fine. Youv'e done enough, really. 
CHOICE TEXT: You chose not to give her any money.
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
BIGBY: That's a little on the harsh side.
WOMAN: I tell it like it is, when I can.
 * [I clean up okay.]
 * [...]
- FAITH: Hey... I need to tell you something.
BIGBY: What is it?
FAITH leans close and says the following into his ear with her hand on his shoulder:
FAITH: You're not as bad as everyone says you are.
FAITH gives him a small kiss on the cheek.
FAITH: I'll see you around... Wolf.
BIGBY turns and look sat the street before taking out a cigarette and lighting it.
-> OUTSIDE_WOODLANDS
=== OUTSIDE_WOODLANDS ===
BIGBY is outside of a walled community. There is a single door and a sign.
* [DOOR: ENTER] -> WOODLANDS_COURTYARD
* SIGN: Read
-> OUTSIDE_WOODLANDS
= WOODLANDS_COURTYARD
BIGBY walks into the Woodlands courtyard. Ahead is the entrance, to the right a sign.
* (SIGN) [SIGN: Look At]
    BIGBY Stares at the sign in stone on the ground. "STAY OFF THE GRASS"   
    BIGBY: Snow can sometimes be a disciplinarian.
    -> WOODLANDS_COURTYARD
* Door: ENTER
- Bigby heads to the door but is interrupted by someone makes a sound behind a tree..
* [Don't make me come over there.]
BIGBY: Don't make me come over there.
BIGBY: Look, I've got an hour of paperwork ahead of me and I've already had to deal with one asshole tonight so just--
BEAUTY: Sorry, Bigby. Didn't mean to be an asshole.
* [Come on out.]
* [Stay off the grass.]
* [...]
- BIGBY: Beauty
    BEAUTY: Hello Bigby. I... wasn't expecting anyone. I know this looks odd.
* [Out pretty late.]
* [Why did you hide?]
BIGBY: Why did you hide when I walked up?
BEAUTY: Well I didn't know who it was. You can't be too careful these days.
BIGBY: No, you can't.
* [Where are you going?]
* [...]
- BEAUTY: Damnit, I'm late.
BEAUTY walks to the door.
BEAUTY: Please, Bigby... Promise me you won't tell Beast you saw me. He worries too much as it is. And it would just make my life a lot easier. 
* [I promise]
BIGBY: Sure.
BEAUTY: You promise?
BIGBY: I promise.
BEATUY: Thank you Bigby. I'll explain it all to you later, I will, but I have to go.
BEAUTY: Thank you... for trusting me. Really, I appreciate it, Bigby.
* No. I can't do that.
* I'm staying out of it.
* ...
- BIGBY enters the woodlands. -> WOODLANDS_DOWNSTAIRS
=== WOODLANDS_DOWNSTAIRS ===
A guard is sleeping on the counter. A suit of armor is standing there, a set of nameplates and an elevator are also here. The elevator is 
{ 
- ELEVATOR_OPEN: 
    <> open 
- not ELEVATOR_OPEN:
    <> closed
}
* Look at Armor
BIGBY: Flycatcher needs to dust this guy. -> WOODLANDS_DOWNSTAIRS
* Touch armor
BIGBY bangs on armor, but doesn't wake up guard.
-> WOODLANDS_DOWNSTAIRS
* Talk to guard
BIGBY: Hey...you awake?
Grimble doesn't look awake and doesn't wake up.
-> WOODLANDS_DOWNSTAIRS
* Look at guard
-> WOODLANDS_DOWNSTAIRS
* MAIL: Look at
BIGBY: Been a while since I've got any mail.
-> WOODLANDS_DOWNSTAIRS
* MAILBOX: Open
BIGBY: Seventh day in a row.
-> WOODLANDS_DOWNSTAIRS
* Nametag: Look at
BIGBY: Damn thing fell off again
-> WOODLANDS_DOWNSTAIRS
* Woodlands Directory: Look at -> WOODLANDS_DOWNSTAIRS
* Woodlands Directory: Replace nametag
BIGBY: How much longer is this thing going to go on?
-> WOODLANDS_DOWNSTAIRS
* (ELEVATOR_OPEN) Elevator Button: Push
A few seconds later, the Elevator opens.
-> WOODLANDS_DOWNSTAIRS
* {ELEVATOR_OPEN} Walk in elevator
-> ELEVATOR_SCENE

= ELEVATOR_SCENE
BEAST walks by as the elevator door closes. 
BEAST: Bigby! Hey! Wait up.
BEAST: Have you seen my wife? Have you seen beauty?
* [I did.]
* [Haven't seen her.]
* [Staying out of this.]
* [...]
BIGBY stares at BEAST, until the door closes in his face.
BEAST: Mother fucker.
CHOICE_TEXT: Beast will remember that.
-> WOODLANDS_2ND_FLOOR_HALLWAY
= WOODLANDS_2ND_FLOOR_HALLWAY
Bigby exits the elevator and uses the key to enter his apartment, 204.
Bigby's apartment. Fabletown
Bigby takes the phone off the hook.
BIGBY: Damn... Should've cracked a window.
BIGBY looks out the window as he cracks it. He goes into the kitchen and turns on the faucet. He splashes some water on his face, then shuts off the tap.
BIGBY: What a night...
-> INSIDE_BIGBYS_APARTMENT
=== INSIDE_BIGBYS_APARTMENT ===
VAR FAN_ON = false
-> KITCHEN
= KITCHEN
BIGBY is in the kitchen, with a fridge and a freezer.
* REFRIGERATOR: Open
Bigby opens the fridge to reveal a ketchup and a lot of boxes of hugg & puff cigarettes.
BIGBY: Why do I even own this. Shoulda bought a smaller one.
-> KITCHEN
* FREEZER: Open
BIGBY takes out the ice tray to find it empty.
BIGBY: Damnit.
-> KITCHEN
* [Walk out of kitchen]
-> LIVING_ROOM
= LIVING_ROOM
Bigby is in the living room. There is a file folder, some chinese food, and a fan that isn't turned on. A pig is in a chair.
{
- FAN_ON:
<> The fan blows air.
- not FAN_ON:
<> The fan is off.
}
    * {not FAN_ON} [Fan: Turn On]
    ~ FAN_ON = true
    BIGBY switches on the fan.
    -> LIVING_ROOM
* [Bluebeard Folder]
    BIGBY: Bluebeard's file.
    BIGBY: Never trusted this guy.
    -> LIVING_ROOM
    * [Chinese Food: Look at]
    BIGBY: I don't even remember ordering it. Probably a bad sign.
    -> LIVING_ROOM
    * [Colin: Look at]
    There's a pig in the only chair in the room.
    -> LIVING_ROOM
* [Colin: Talk to]
    BIGBY: Hey... Collin... Get up
    -> LIVING_ROOM
* [Colin: Use] 
    BIGBY pokes Collin
    -> COLIN_CONVERSATION

= COLIN_CONVERSATION
COLIN: Hey Bigby.
COLIN: I'm in your chair, huh?
* [Yeah. Get Out.]
* [There's only the one.]
BIGBY: I've only got the one. So yeah.
* [C'mon, I'm tired.]
* [...]

- Collin slowly gets out of the chair and lies by the TV as Bigby sits down.
Bigby takes out a cigarrete.
COLIN: Got a smoke?
Bigby gets up, gives him a cigarette and lights it.
COLIN: Thanks. A couple thousand more of these, and we'll be even on that house you owe me.
BIGBY: This has to stop. You can't keep sneaking off The Farm like this.
COLIN: The fresh air and sunshine pitch they sell you on is bullshitp. I didn't escape out of the Homelands to end up in some prison, okay. Don't send me back there, Bigby.
COLIN: You don't know what it's like, okay? You haven't been there.
* [Don't be dramatic.]
BIGBY: C'mon. That's a little dramatic.
CHOICE_TEXT: Collin will remember that.
* [I won't.]
* [Tell you what I told Toad...]
* [...]
- COLIN: That for me?
BIGBY: No.
COLIN: The house didn't blow itself down, Bigby. That's all I'm sayin'. Do whit that, what you will. Now I'm not saying it's reason enough for me to have definitely been offered a drink, but uh... it would have eased some of the pain you once caused me, yes. It also would have shown everyone how different you are now.
* [I just want some rest.]
* [\[Take a sip\]]
BIGBY takes a sip.
COLIN: Nice. 
- COLIN: I take it all back... this is why everyone hates you.

* [Everyone hates me?]
* [Better to be feared...]
BIGBY: It is better to be feared, than loved. You know who said that?
COLIN: Yeah... some sad asshole...
BIGBY gives him a look
COLIN: ...eating alone.
* [I was just hungry.]
* [...]
- COLIN: But no, hate's the wrong word. They fear you more than anything. You ate a lot of people back in your day.
BIGBY: I thought we were all supposed to have a fresh start here. I can't change the past.
COLIN: Well, you can't change people's memories either.
COLIN: Look, I'm not saying it's fair.... but it's real. People are scared of you.
COLIN: I mean, look at your hands.
COLIN: Who'd you get in a fight with? A Fable, right? I'm sure you're not going around punching Mundy's.

* [My job]
    BIGBY: I was doing by job, believe it or not.
    COLIN: Your job is to beat the shit out of fables?
    BIGBY: Sometimes I take them to The Farm.
    COLIN: Fuck you.
* [Not my fault]
* [Don't need advice]
* [...]
- 
BIGBY: You think my job is easy? You try to keep a bunch of Fables from killing each other. How do you think this all works?
COLIN: I don't know, how?
BIGBY: By being big, and being bad.
COLIN: "By being big. and being baaaad." Don't say that shit in front of people, it's embarrassing.
BIGBY takes a sip of the bourbon.
COLIN: That's the attitude that gets you in trouble. I'm sure you were shitty to everyone you came across tonight.
BIGBY: Not everyone.
COLIN: Name one.
* [There was a girl...]
BIGBY: I don't actually know her name.
COLIN: Awesome, great example.
* [Beauty.]
* [Toad]
* [...]
- COLIN: Life is easier with friends, Bigby, and we live a long fuckin' time. I know you like this whole Lone Wolf thing you have going for yourself. but I've seen the way you look at Snow, okay? You're not foolin' me.
BIGBY: Will you shut up?
COLIN: Well, maybe if my throat wasn't so parched, I wouldn't have to keep talking.
BIGBY: Wait that doesn't make se
COLIN: Just give me a drink, please?
BIGBY: Colin, ENOUGH already. I haven't slept in two days. I went out a 2nd story window. And I want to get in two seconds of shut eye before I...
COLIN gives BIGBY a look.
BIGBY: Look, if I give you this, will you let me sleep?
COLIN: Yeah, yeah, alright. Probably.
* [Give Colin a Drink]
BIGBY gets up and gives Colin a drink.
CHOICE_TEXT: You chose to give him your drink.
COLIN: Thanks, Bigby.
COLIN slurps the drink, and BIGBY lays his head back to get some sleep.
* [Take Drink]
- A knock is heard on the door.
* [Apartment Door: Open]
- BIGBY straightens his tie. SNOW is there.
SNOW: Bigby!
BIGBY: Snow?
SNOW: Come with me.
They walk down the hallway to elevator
BIGBY: Snow. Snow!
SNOW: What? Sorry... I'm...
* [What happened?]
SNOW: I just can't get into it this second. We need to hurry to--
They encounter a resident with red hair, who SNOW greets.
SNOW: Hello. Good morning. Or... evening.
MAN: Heh, yeah.
* [Where are we going?]
* [Slow down.]
* [...]
 - SNOW: These walls are paper thin. We need to be careful. We'll talk outside.
 They exit the elevator and see a jacket outside the door. SNOW looks at BIGBY. BIGBY exits. The guard is still asleep. SNOW stands next to the door while BIGBY kneels next to the jacket.
 * [Jacket: Grab]
- BIGBY: No...
 SNOW: You know this girl?
SNOW: Is... she's not a Mundy... right?
SNOW: Who was she?
SNOW: I thought I knew everyone in Fabletown.
SNOW: She looks familiar. I can't place her though.
* [A working girl.]
* [Just a girl.]
* [Prostitute.]
* [...]
SNOW: I feel like there's something you aren't telling me.
BIGBY: The Woodsman. He attacked her, I stepped in. Then he threatened to kill us both.
SNOW: No... You don't think he...
BIGBY: I don't think anything yet. Just give me a second.
- SNOW: It's just... terrible. It took me a second to realize what I was even looking at.
* [Who found her?]
BIGBY: So... Who found her?
SNOW: I did. She was just like this. I didn't touch her. I grabbed Grimble's jacket to gover her with... then... I came to get you right away.
BIGBY: No one else was with you?
SNOW: No. Bigby
* [What happened?]
* [Did you see anyone?]
* [...]
- SNOW: did one of us ... do this?
BIGBY: There hasn't been a murder in Fabletown... in a long time.
SNOW: All the more reason we shouldn't start a panic before we know what is going on.
SNOW: Have a look around. We don't have much time before people will be coming through here.
-> EXAMINE_FAITH_HEAD
= EXAMINE_FAITH_HEAD
* (MOUTH_EXAMINED) [MOUTH: Examine]
  BIGBY: What is...
{MOUTH_EXAMINED:
* [MOUTH: Remove Item]
  Bigby removes a ribbon with a ring tied to it.
  BIGBY: It's her ribbon. There's some kind of symbol here. MM.
  SNOW: I don't recognize it.
   -> EXAMINE_FAITH_HEAD
}
* [NECK: Examine]
    BIGBY: Strange cut... what did this to her?
    SNOW: What could do this to her?
    BIGBY: Either something very sharp, or something with magic attached to it.
    -> EXAMINE_FAITH_HEAD
* [HEAD: Examine]
  BIGBY: She was placed here with some care.
  SNOW: What do you mean?
  BIGBY: You can see that someone didn't just toss her here. She was deliberately placed.. for us to find.
  SNOW: What kind of monster would do this?
   -> EXAMINE_FAITH_HEAD
* -> OUTSIDE_WOODLANDS_HEAD
= OUTSIDE_WOODLANDS_HEAD
BIGBY and SNOW look around, with some blood clearly shown on the path.
SNOW: Ugh, I... I'm sorry, this is just so surreal.
SNOW: Uh, what, uh, what do you want to do next?
* [Investigate More.]
We should look around some more. -> OUTSIDE_WOODLANDS_HEAD
* [Leave.] -> LEAVE_CRIMESCENE

= LEAVE_CRIMESCENE
BIGBY: Nothing much else to do.
SNOW: We should... move her... before anyone shows up.
SNOW We'll find out more at the business office. She'll be in the books, I'm sure of it.
SNOW: Bigby... Do you have any idea what's going on?
SNOW: How did this happen? Why her?
* [Someone brought her here...]
* [This is a message.]
    BIGBY: This is a message.
    SNOW: A message? I don't know, Bigby. I get complaints at the Office all the time, but...
    SNOW: Just what about this makes you think that?
    ** [The placement of the head.]
    BIGBY: Whoever did this isn't exactly hiding it. The placement of the head... it's exact. Purposeful. She was placed here precisely for us to find. All of us.
    SNOW: Well, yes... I guess you're right. The killer wanted us to know what they had done.
    CHOICE_TEXT: Snow agrees with your theory.
    ** [The victim herself.]
    ** [The Woodsman's threat.]
    ** [...]
* [I don't want to say yet.]
* [...]
- SNOW: I'm going to have to tell Crane about this.
SNOW: As long as King Cole is gone, he's acting Mayor... he needs to know.
SNOW: And he's going to find out anyway, so we may as well get out in front of it.
* (TOLD_TO_WAIT) [Don't tell him.]
* [Do what you need to.]
* (TOLD_TO_WAIT) [Just wait a little...]
BIGBY: We should wait until we have more to tell him. Right now, all we know is a girl is dead. Telling Crane doesn't change that.
BIGBY: I've got all the motivation I need to find who did this.
SNOW: That sounds... reasonable... but... I don't know. I'll think about it.
* [...]
- BIGBY: I just don't want him interefering.
SNOW walks up the steps 
SNOW: Crane's not what's important right now. We need to figure out who this girl was, so we can find whoever did this.
SNOW: Take this back to Doctor Swineheart. He can take a look at it. I'll meet you at the business office.
while BIGBY wraps the head again.
-> WOODLANDS_OUTSIDE_BUSINESS_OFFICE
= WOODLANDS_OUTSIDE_BUSINESS_OFFICE
There are three men standing in a line outside the office. The last one steps out as BIGBY walks to the office.
GRENDEL: What're you-- blind?
GRENDEL: What? You don't see there's a line? I been standing here a half hour already. You get to just walk in?
GRENDEL approaches BIGBY
GRENDEL: Must be nice being the Sheriff... Do whatever the fuck you like.
* [I don't have time for this.]
* [I'm cutting the line.]
* [I work here.]
BIGBY: I work here.
GRENDEL: And what great work you do, Sheriff.
BIGBY: Hmm... that didn't feel very genuine.
BIGBY goes inside the office while GRENDEL looks on as the door shuts behind him.
GRENDEL: Fucker... -> OFFICE_INTRO
* ...
= OFFICE_INTRO
The giant cavern doesn't look like it could fit inside the building and is obviously magic. There are bookshelves everywhere.
BIGBY walks toward the center and overhears CRANE and SNOW having a discussion with snippets audibile. 
CRANE: -- and now you tell me there's a killer on the loose?
CRANE: ...you two tittering behind my back.
CRANE: --because you are the one brining this to me, Miss Snow. The one who so simply "stumbled" upon this catastrophe on our very doorstep! The last thing I need with Mayor Cole away is a hysteria. Do you understand me?
SNOW: Yes, of course I do. But...
CRANE: Don't interrupt me Miss Snow!
SNOW: You asked me a question!
CRANE: Don't change the subject! You are to blame for this unpleasantness, Miss Snow!
SNOW: I brought you this news as soon as I could!
CRANE: You are trusted to keep things running smoothly around here! This is a disaster!
* [It's my fault.]
CHOICE_TEXT: You took the blame.
BIGBY: If anyone's to blame, it's me. You don't need to be yelling at her.
Oh, your role in this is duly noted. Yes, let's talk about that. 
* [Back off!]
* [No one to blame.]
* [\[stay out of it\]]
- CRANE: Sheriff, you are the one charged with protecting the citizens of Fabletown. Your failure to do so cost someone their life, and the safety of the entire community!
CRANE sits down at the desk, whereas SNOW sits down opposite.
CRANE: Tell me you've been doing something. Are there any leads? Suspects?
CRANE: Because right now I have half a mind to fire the both of you.
* Her pimp
* The Woodsman
* Could be Bluebeard.
* ...
CHOICE_TEXT: Snow offered her own theory
SNOW: Bluebeard came to mind. It's his M.O. It's shaky, but--
CRANE: Don't be absurd!
CRANE: Bluebeard is out of the country as we speak, so don't even think about accusing him of such a treacherous affair!
CRANE: If all you're operating off of is ancient history, we're all in much more trouble than I imagined.
- CRANE: You two need to get a handle on this situation quickly, and quietly.
CRANE: The last thing we need is all of Fabletown knowing there's a killer amongst us.
CRANE: Snow!
SNOW: Yes... sir?
CRANE: Call Vivian right this minute and let her know I'm coming in early for my massage.
SNOW: I will.
CRANE: Where is the bottle of wine you were to purchase?
SNOW stands up.
CRANE: Oh, bother. Forget it. Can't do anything right.
CRANE walks towards the exit.
CRANE: Do your job, Sheriff.
CRANE: ...or we'll find someone who can.
* [Fuck you.]
BIGBY: You know what?
SNOW: Stop.
CRANE turns around to look at them both.
* [You're an asshole.]
* [Do it yourself.]
* [...]
- SNOW: We'll get on it right away, sir.
SNOW: You would've just pissed him off more.
BIGBY looks downcast.
BIGBY: [begrudgingly] Alright.
SNOW: Well, that could've gone better.
{TOLD_TO_WAIT:
SNOW: Well... I guess I should've listened to you and waited.
BIGBY: Wasn't going to say I told you so.
SNOW: You don't have to say it. It would've been better to have more to offer. Get our ducks in a row.
}
BIGBY pulls out a cigarrette and starts to light it.
SNOW: Oh-- Crane doesn't like people smoking in--
BIGBY pauses, expectantly.
SNOW: Nevermind.
SNOW: Smoke away.
* [Crane is an asshole.]
* [He gets a morning massage?]
* [What's the wine about?]
BIGBY: Wine to a massage?
SNOW: Probably a gift. The weird part of that is he's actually being nice to someone.
SNOW waves away the smoke.
* [...]
- SNOW: I know I bought that damn bottle.
A flutter of wings is shown over SNOW's left shoulder
BUFKIN: Is he gone?
SNOW: Yes, thankfully.
A winged monkey, BUFKIN, flies down, holding a bottle of WINE. He begins to open it with his mouth.
SNOW: Bufkin!
BUFKIN: Hello, Miss Snow.
Bufkin smiles guiltily.
SNOW approaches him.
SNOW: Drinking? This early? Where did you get that?
BUFKIN: It was by Mr. Ichabod's desk.
SNOW: Then don't you think it probably belongs to him?
BUFKIN: Maybe.
SNOW takes the bottle and walks away.
BUFKIN: How are you today, Mr. Bigby?
* [I'm fine.]
BIGBY: Fine, Bufkin., Thanks for asking.
CHOICE_TEXT: Bufkin will remember that.
* [I'm not great.]
* [Fuck off.]
* [...]
- SNOW: Bufkin... get the books.
BUFKIN: Which books?
SNOW: The ones with all the Fables in them.
BIGBY: I'm not sure that was any more specific.
SNOW: Bring the first three.
BUFKIN: Be back in a few minutes.
SNOW: He knows the ones I'm talking about.
SNOW: There's bound to be information on her here... somewhere.
SNOW: We'll at least be able to get her real name from the books whenever Bufkin finds them.
SNOW: In the meantime, poke around. Maybe the mirror can help.
SNOW: I really have to get this appointment squared away, but... let me know if you need anything.
SNOW: Hello, Vivian? Hi, this is Snow White, Mr. Crane's assistant? Hi, yes, I'm just calling to let you know that Mr. Crane's schedule seems to have filled up for the day.
-> OFFICE.OFFICE_FREE


=== OFFICE ===
VAR page = 2
VAR found_lawrence = false
VAR found_faith_symbol = false
-> OFFICE_FREE
= BUFKIN_ARRIVES
    - Bufkin flies in with books and drops them as Snow gets off the phone.
SNOW: Well, I'm sure we'll get it all cleared up. Okay. Thank you.
Bufkin and Snow white look at the books.
-> OFFICE_FREE
= TOAD_CALL
SNOW: Hello? Woodlands Business Off- Yes. I- He is. Hold on.
SNOW: Bigby... it's for you
TOAD: Bigby! it's me Toad. You there?

* Glamour
* The car.
* What do you want?
BIGBY: What do you want?

* ...
- TOAD: Bigby! Shit. Listen, right? There's a bloke upstairs, going through all the Woodsman's things. Get over here, Bigby! Before he-- wait. Hang on.
TOAD: Oy! Shit. Hey!
SNOW: What was that all about?
BIGBY: Hard to say. Something going on over at Toad's place.
SNOW: What about Faith's husband?
BIGBY: I don't know. I couldn't really tell, but... he could be in trouble. And we should go there anyway to search her apartment.
BIGBY and SNOW begin walking toward the ext.
BIGBY: Toad might have to wait.
SNOW: Whenever you're ready.
SNOW stands by the door.
-> OFFICE_FREE

= OFFICE_FREE
There's a lamp, a magic mirror, some tarrot cards. 
{MAGIC_MIRROR_QUERY.unknown_name && not BUFKIN_ARRIVES:
    -> BUFKIN_ARRIVES 
}
{not BUFKIN_ARRIVES: Snow begins talking on the phone in the background.}
{BUFKIN_ARRIVES: There's also a book of fables that Snow White and Bufkin are looking at.}
{TOAD_CALL:
Snow stands by the door.
+ [Office Door: Use]
  BIGBY opens the door and lets Snow through the door.
  SNOW gives him a look of appreciation before exiting.
  -> OUTSIDE_WOODLANDS_AFTER
}
{not TOAD_CALL && found_lawrence:
SNOW: Anything we can use?
BIGBY: Yeah. That'll have to do for now.
SNOW: Come on. We're going over there.
The phone rings.
SNOW: Sorry, I have to get that.
SNOW picks up the phone.
-> TOAD_CALL
}

+ [Lamp: Look at]
BIGBY: "Magic lamps" are pretty much just lamps after the genie's been freed...
-> OFFICE_FREE
+ [Lamp: Touch]
+ [Magic Mirror: Talk To]
    -> MAGIC_MIRROR
+ [Magic Mirror: Look at]
    BIGBY stares into his reflection in the mirror.
    -> OFFICE_FREE
+ [Tarrot Deck: Look at]
You see a set of Tarrot Cards on the table.
{TARROT_DECK_USE > 0: One is revealed, showing a woman holding a wolf by the head. }
    -> OFFICE_FREE
+ (TARROT_DECK_USE) [Tarrot Deck: Use]
BIGBY picks up a card. It is a picture of a woman holding the head of a Wolf in her arms.
BIGBY: Strength... I guess it comes in all forms.
-> OFFICE_FREE
+ {BUFKIN_ARRIVES} [Book of Fables: Examine]
-> BOOK_OF_FABLES
+ {BOOK_OF_FABLES.DONKEYSKIN_FATHER} [Book of Symbols: Examine]
-> BOOK_OF_SYMBOLS

= MAGIC_MIRROR
{not MAGIC_MIRROR:
    BIGBY: Hey, Magic Mirror... I got a question.
    MAGIC MIRROR: You know the rule.
    BIGBY: I don't have time for this shit.
    MAGIC MIRROR: Your impatience is callow, you're needlessly cruel, but have some respect for our historied rules.
    BIGBY: Mirror, mirror, if you're... able... tell me all about this Fable...
    MAGIC MIRROR: See? Was that so hard?
    BIGBY: Yeah, I'm about two seconds away from kicking a hole in ya.
    MAGIC MIRROR: There's no need for that... fine.
    -> MAGIC_MIRROR_QUERY
- else:
    BIGBY: Magic mirror blah blah able... blah blah blah about this Fable:
    -> MAGIC_MIRROR_QUERY
}

= MAGIC_MIRROR_QUERY
MAGIC MIRROR: Of which Fable do you wish to know?
+ (faiths_father) {found_faith_symbol}  [Faith's Father]
BIGBY: Show me Faith's father, the old king.
An image of a skeletal hand near some arrows appears.
BIGBY: Mph. Guess that crosses him off the suspect list.
-> MAGIC_MIRROR_QUERY
+ {found_faith_symbol} [Prince Lawrence]
{not found_lawrence:
~ found_lawrence=true
}
BIGBY: He's a Prince I think. Show me Prince Lawrence.
The Mirror shows a figure in a seat. There's blood on a knife on the ground.
BIGBY: ... what's he been doing?
BIGBY: Where is this?
SNOW: Where is what?
BIGBY: Do you know where Prince Lawrence lives?
SNOW: If he's a prince, probably relocated in the South Bronx. Yellow building, red window shutters?
BIGBY: Red frames.
SNOW: Yeah, that's the one. I can take us there.
-> MAGIC_MIRROR_QUERY
+ {found_faith_symbol} [Faith]
BIGBY: Show me... Show me Faith.
MAGIC MIRROR's voice changes substantially into a monotone.
MAGIC MIRROR: Through powerful magic her whereabouts concealed. Unfortunately for you, "These lips are sealed."
BIGBY: What?
MAGIC MIRROR: "These lips are sealed.
MAGIC MIRROR: It's not my choice of phrasing, Bigby. It's simply how this has to be.
-> MAGIC_MIRROR_QUERY
+ {not found_faith_symbol} [Woodsman]
BIGBY: Show me the woodsman.
BIGBY: Where is he?
MAGIC MIRROR: What you see is complete, The Woodsman stumbles down a street.
BIGBY: No shit, which street?
MAGIC MIRROR: I'm sorry Bigby, I can only show you what can be seen.
-> MAGIC_MIRROR_QUERY
+ (unknown_name) {not unknown_name} {not found_faith_symbol} [I don't know her name.]
BIGBY: I don't know her name. Not yet anyway.
MAGIC MIRROR: Well... until you do, I can't help you.
-> MAGIC_MIRROR_QUERY
+ {not found_faith_symbol} [Snow]
BIGBY: Show me Snow White.
Not much of a request. She's in this very room.
-> MAGIC_MIRROR_QUERY
+ {not found_faith_symbol} [Bufkin]
BIGBY: Show me Bufkin.
BUFKIN is shown drinking the bottle.
BIGBY: Ey! Put down the bottle and get to work!
BUFKIN: Still looking!
-> MAGIC_MIRROR_QUERY
+ {unknown_name} [Exit] 
BIGBY: Nobody, right now.
MAGIC MIRROR: Very well. Please return should you wish to ask about someone else ... or someone new.
-> OFFICE_FREE

= BOOK_OF_FABLES
- (intro) {intro==1:
SNOW: We'll start with these.
SNOW: Any information on Fables in our community will be somewhere in these books.
}
- The book of fables shows a number of characters.
* [Back Out]
-> OFFICE_FREE
* [Snow White]
SNOW: I'm pretty sure that's supposde to be me.
-> BOOK_OF_FABLES
* [Woodsman]
BIGBY: Red Riding Hood's knight in shabby armor.
SNOW: The Woodsman?
BIGBY: Yep. And his axe.
-> BOOK_OF_FABLES
* [Wolf]
BIGBY: And there's me... Not a good day.
-> BOOK_OF_FABLES
* [Red Riding Hood]
BIGBY: Hmm. I think her name was Red. She didn't make it out.
-> BOOK_OF_FABLES
* (DONKEYSKIN_FATHER) [Donkeyskin's father]
BIGBY: ...I've seen this before.
BIGBY: This symbol on the man's clothes. It's the same as the ring's.
SNOW: Could be her father or husband?
SNOW: This has most of the emblems of the old days and usually what family they come from. If it's in here, we'll have her name.
-> BOOK_OF_FABLES
* [Mr. Toad]
-> BOOK_OF_FABLES
* [Mr. Badger]
-> BOOK_OF_FABLES
* [Dwarves]
BIGBY: Dwarves. Less said about that, the better.
-> BOOK_OF_FABLES
* [Beauty]
BIGBY: Beauty. In happier days.
-> BOOK_OF_FABLES
* [Beast]
BIGBY: And her.. man... beast.
SNOW: Funny.
-> BOOK_OF_FABLES
* [Three pigs]
BIGBY: Colin and his brothers.
-> BOOK_OF_FABLES

= BOOK_OF_SYMBOLS
The current page is page {page}.
* { page == 2 } [Symbol: Examine]
{not ASK_BUFKIN: 
~ ASK_BUFKIN()
}
BIGBY: Bufkin. Translate.
BUFKIN: An equisite design from the good china... of Toad Hall.
BIGBY: Mr. Toad?
BUFKIN: He probably wrote this in himself.
-> BOOK_OF_SYMBOLS
+ {page>0} [Turn page left.]
~ page--
You turn the page left to page {page}.
-> BOOK_OF_SYMBOLS
+ {page<3} [Turn page right.]
~ page++
You turn the page right to page {page}
-> BOOK_OF_SYMBOLS
* {page==1} Symbol on left page.
-> BOOK_OF_SYMBOLS
* {page==1} Symbol on right page.
-> BOOK_OF_SYMBOLS
* {page==3} [Ring Symbol: Examine]
    ~ found_faith_symbol=true
    BIGBY: This is the one.
    BIGBY: Where is this symbol from? Which family or story?
    BUFKIN: That's an odd one. A family name? All-lair-lie-rau. I'll go look it up.
    SNOW: Allerleirauh... means "every-kind-of-fur" in German.
    BUFKIN looks at a listing of Fables and their pictures and descriptions in a third book.
    BUFKIN: Donkeyskin.
    SNOW: Yes! What does it say?
    BUFKIN: Donkeyskin girl, A.K.A. Donkeyskin, A.K.A. Ass' skin, prefers to go by the name Faith. Poetic!
    SNOW: Bufkin, we don't need the commentary.
    The story of Donkeyskin. There once was a great king with a beautiful queen. The queen grew ill and had her husband promise to only marry the most beautiful girl in the kingdom. After a long search, it became clear that the only woman in the land that could match her beauty was...
    BUFKIN pauses.
    BUFKIN: His daughter, Faith.
    BUFKIN: She had a magic cloak made from the skin of her father's prized donkey... that would hide her beauty, so she could escape his kingdom. Eventually she married a prince, who could see past the magic cloak and knew her true beauty... and they lived happily ever after.
    SNOW and BIGBY look at each other as BUFKIN somberly finishes the story.
    BUFKIN: Should I mark it, Miss Snow?
    SNOW: Yes, please.
    BUFKIN stamps the page with the story with a red DECEASED mark.
    SNOW: What's her husband's name?
    BUFKIN: Lawrence. Prince Lawrence.
    SNOW: We got what we came for.
    BIGBY: Yeah.
    SNOW: Her name's Faith. She's married to Prince Lawrence. That's more than...
    BIGBY: You mean her name was Faith.
    SNOW: Yeah.
    BIGBY: We should talk to the husband.
    ** [He's our first suspect.]
    ** [We have to notify him.]
    ** [Can't rule him out.]
    BIGBY: Nothing would surprise me, at this point. We can't rule him out.
    ** [...]
    -- -> OFFICE_FREE
+ Back out
-> OFFICE_FREE

- -> DONE
-> END

=== function ASK_BUFKIN ===
BIGBY: Great.
BUFKIN: What?
BIGBY: I can't read any of this shit.
BUFKIN: I can help.
BIGBY: Yeah. Thanks.
BUFKIN: We look out for each other.
BIGBY: Don't overdo it.
~ return

=== OUTSIDE_WOODLANDS_AFTER ===
OUTSIDE SNOW and BIGBY walk out of the apartments to the gate.

SNOW: Did Toad say who was there? Was it the Woodsman?
BIGBY: I don't know. It's possible. Whoveer it was, it didn't seem like Toad was happy to see 'em.
SNOW: Well, maybe Prince Lawrence can wait.
BIGBY: You didn't see him.. he.. could use some help too.
SNOW: Well... where to first?
BIGBY must decide between the two options. Voices play in the background:
Bigby, Shit. There's somebody going through the Woodsman's things.
Lawrence. Prince Lawrence.


* TOAD'S APARTMENT
-> TOADS_APARTMENT
* LAWRENCE'S APARTMENT
-> DONE

=== TOADS_APARTMENT ===
OUTSIDE TOAD's APARTMENT, daytime.
Walking down the street, BIGBY and SNOW talk while walking.
BIGBY: And we ended up going out the window and I landed on Toad's car.
SNOW: You guys made a real mess.
BIGBY: Yeah. Looks worse in the day.
SNOW: Is somebody up there?
A figure can be seen inside the hole in the wall.

* [Hey!]
* [Hey, Toad! is that you?]
* [Hey, Woody? What are you doing?]
* [...]
BIGBY looks up and then says to SNOW
BIGBY: Wait here.
BIGBY enters the house and moves upstairs quickly to WOODY's APARTMENT.
BIGBY looks around an empty apartment, then scratches his head.
BIGBY: Shit.
BIGBY goes to the hole and looks out to SNOW, who shrungs. BIGBY shakes his head.
TJ : I'm sorry.
TOAD: That's enough already, just shut it!
TJ sobbing
BIGBY walks downstairs to meet SNOW in the lobby.
After getting close
SNOW: Is that his son?
BIGBY: I think.
SNOW: Be nice in there, OK?

* [Toad's Apartment: Enter]
BIGBY pressed the door open.

* [Toad's Apartment: Talk To]

- TOAD: Bigby! And Miss White. Surely you didn't come all this way for my bother.
TOAD looks up at them with a scared look in his eye. BIGBY has his arms crossed while SNOW stands beside him.
TOAD: Sorry, Bigby. It's embarrassing to have to admit, but, eh, I thought there was someone else in Woody's place.
TOAD: There wasn't though, not when I checked - nothing' but a leaky drain pipe. Imagination must have got the best of me.
TOAD: So, ya know, false alarm.

* [I saw someone.]
BIGBY: There was someone... but they took off when we got here.
TOAD: Is that right? I guess your Dad's ears have a year or two left. Haven't gone totally to the dogs, eh?

* [What's going on?]
* [Who was crying?]
* [...]
- SNOW looks suspicious while TJ wipes his eyes
SNOW crouches down in front of TJ.
SNOW: Are you alright?
TOAD: He's fine, Miss White, just stung his little toe.
TOAD: Better swimmer than walker, just like his dad.
SNOW turns to BIGBY.
SNOW: Wanna...
TOAD: So I guess you'll be taking off now. No need to hang around here anymore.
TOAD: I mean, I'm sorry you came all the way here for nothin'...
* [Somebody was in your building.]
BIGBY's voice is accusatory.
BIGBY: Somebody was in your building.

* [I'll leave when I'm ready.]
* [I'm gonna look around.]
* [...]
- BIGBY: This is for your own safety, Toad. You called us, remember?
TOAD: Yeah, yeah, I know, and I appreciate it, mate, but--
BIGBY: It's fine, relax. We'll be out of here in a minute. I just want to check things out first.
TOAD: Alright, alright, I just don't want to waste your time is all.
TOAD: Have a seat, have a cup of tea, whatever you like!

TOAD walks away while SNOW crouches down in front of TJ.
SNOW: Phew! Grown-ups, am I right?
TJ: Uh...
SNOW: Hey, you know what, Flycatcher said you had a "pretty awesome" insect colleciton... I'd really love to see it. Is it in your room?
TJ looks sullen and quiet for a moment.
TJ: It has a weevil.
SNOW smiles.
SNOW: Cool.
SNOW gets up and follows TJ into his room.

TOAD looks nervous.
TOAD: Just mind the upholstery while you're lookin' for nothin'.
TOAD glares at BIGBY.
BIGBY: Yeah, sure thing.
-> TOADS_APARTMENT_FREE

=== TOADS_APARTMENT_FREE ===
= Entryway
There's a broken lamp on the floor and Toad is standing there.

* (lamp) [Smashed Lamp: Examine]
    BIGBY: how'd this happen?
    CHOICE_TEXT: You found something.
    TOAD: Fucking hell. Damn thing must have fell off the table.
    BIGBY: Uh-huh. The lamp just fell off the table.
    TOAD: Or the boy was faffin' about, playin' sods and swordfish. Who knows with the lad.
    TOAD's voice is stressed and his expression is uncomfortable.
    BIGBY notices that there are two appliances plugged into the outlets next to where the lamp fell off.
-> Entryway
+ [Snow: Talk To]
    BIGBY knocks on the door.
    TJ: Though most people think they are.
    BIGBY: Toad's hiding something. I don't know what yet. Did the kid say anything...?
    SNOW: No, nothing really. He was really upset, though, earlier... he won't say why.
    BIGBY: Mm.
    SNOW: Something's going on.
    BIGBY: Stay with the kid until I figure out what.
    -> Entryway
+ [Mr. Toad: Talk To]
    TOAD: Never been good with the feminine duties... homebody stuff with my clumsy hands...
    ** Come clean, Toad.
            -> Entryway
    ** I know you're lying, Toad.
            -> Entryway
    ** [\[Get tough\]]
        BIGBY: I know something's off here, Toad. And I know you know that I can't leave here until I find out why. So can we please just skip to the end of the page before I have to get mean?
        TOAD: I don't know what you want, Bigby... There's nothing' going on.
            -> Entryway
        *** [\[Intimidate Toad\]]
            -> Entryway
        *** [\[Look around more\]]
            -> Entryway
    ** [\[Look around more\]]
        -> Entryway
+ [\[Walk downstairs\]]
    -> Downstairs
* [Busted Latch: Examine] 
    BIGBY: And why's the lock busted.
    BIGBY: The lock. It looks like somebody kicked in the door.
    BIGBY: ANd this doesn't have anything to do with the blood?
    TOAD: For Christ's sake, the fuckin' lock's been busted for weeks, mate. Rotted just like everything else in this bloody building.
    TOAD: Bloody Hell, Bigby, what sinister bit have you uncovered this time?
    TOAD: I left the tap water running? Didn't sort the recycling? What is the point of all this, mate, really?!

    ** "Busted", huh.
    ** (latch) Then why climb in the window?
        BIGBY: Why'd you climb in through the window, then?
        TOAD: Huh?
        BIGBY: Why'd you climb in through? You said it yourself, the lock's been rotten for weeks. 
        CHOICE_TEXT: You caught Toad in a lie.
        TOAD: Fuckin' hell, just what are you on about, mate? After the state I was in, I didn't have me head, that's all it was, I forgot the fuckin' handle was fuckin' busted.
        TOAD: And I'll tell you what else, it's embarrassing, you brining all this shit up, alright? So quit it with the third degree and all that.
        -> Entryway
    ** Why haven't you fixed it?
        -> Entryway
    ** ...
        -> Entryway

= Downstairs
    There's a poker on the floor and a stain on the wall. Theer's also a blood spatter on the floor.
* [Dust Ring: Examine]
    A ring of dust on the table is a strange shape.
    BIGBY: Move something?
    TOAD: What'd you mean?
    BIGBY: There's a clean space in the dust over here.
    TOAD: Uh, maybe one of Junior's toys or something. I mean, who knows?
    TOAD: It's a paure's apartment, wit hthe door and all. What do ya want?
    BIGBY sees the base of the lamp matches the octogonal shape of the dust ring.
    ** [What toy could have made the mark?]
    ** [The broken lamp was here.]
        BIGBY: That broken lamp used to be here. Right? Just tell me what happened.
        TOAD: Nothing happened, mate. Nothing.
        TOAD: And why did the lamp have to be there, of all the blooming pointless inquiries?
        TOAD: --don't you think I know what happens in it?
        TOAD: It's my own place--
        TOAD: Don't you think I know what happens in it?
        *** I just don't buy it.
        *** The mark in the dust.
        *** (lamp) The power outlet.
            BIGBY: Because it wasn't on that table, Toad. There isn't any room in the electric outlets.
            TOAD: Huh? what are you--
            BIGBY: It was plugged in over here...
            BIGBY: ...and now its there.
            TOAD: I-I did some refiguring-- who fuckin' cares?
            CHOICE_TEXT: You caught Toad in a lie.
            BIGBY: And not plug it in? C'mon, Toad.
            TOAD: I just hadn't gotten arund to it, yet! You see how many damned plugs there are.
            TOAD: Bigby, c'mon, I'm begging for mercy over here, old boy.
            TOAD: I was looking forward to a nice afternoon, just me and me son, and you've taken up enough of the day with all this-- this sniffing around at me private belongings!
            TOAD: I'm sorry I called, really, I am, but... will you pelase-- please just bugger off?
            BIGBY: Not yet.
            TOAD: "Not yet"?
            TOAD: No one fought anyone, Bigby, there wasn't any scrap.
            TOAD: So when? When are you going to leave?
            TOAD: I mean, I feel like I'm on trial here, in my own bloody home.
            TOAD: It's not seemly!
            **** When I say so.
            **** When you tell me the truth.
                BIGBY: When? When you start telling me the truth, Toad.
                TOAD: But I've told you the truth, mate. Jesus Christ, what more do you want?
                -> FINAL_TOAD_APARTMENT
            **** When I figure out what's going on.
                -> END
            **** ...
                -> END
        *** ...
            -> END
    ** [He left the toy for that long?]
        -> END
    ** [...]
        -> END

* [Stain: Examine]
    BIGBY sniffs at the blood on the wall and looks closely before turning to TOAD.
    BIGBY: You bleeding?
    TOAD: Why? Is that--
    BIGBY: It's blood. Still fresh.
    TOAD: Oh, well, I cut me hand. Ran around like a tit trying to pick out a wrap...
    TOAD: Must have got some on the furnishments.
    TOAD: Lamp in pieces, blood on the wall... it's awful, I know.
    BIGBY: Sounds painful.
    TOAD: Oy, don't you go Mother Henning now!
    TOAD: The wound didn't sit very long, you know. Perks of being a Fable, I s'ppose. And a frog.
    -> Downstairs
* {not window} [Window: Look at]
    -> Downstairs
* (window) {not window} [Window: Open]
    BIGBY opens the window to reveal a set of two nail marks as if someone climbed in.
** (window_examine) {window}  [Window: Examine]
    Bigby looks closely at the marks.
    TOAD: What is it now? If it's blood, you know what happened, I-
    BIGBY: No, there's marks here on the windowsill.
    BIGBY: What's that about?
    TOAD reaches his hand to his head and says, slowly,
    TOAD: No real reason.
    TOAD: Just last night, when I'd come out, I was in a -- downright tizzy, mate-- as you would be-- and I plum forgot the keys to this place.
    TOAD: And I had to climb in through the bloody window.
    BIGBY: Really.
    TOAD: Scared junior half to death.
    BIGBY: Mm.
    -> Downstairs

* (poker) {window_examine}[Fireplace Poker: Pick Up]
    BIGBY picks it up. There's blood on the poker.
    BIGBY: And what happened here?
    TOAD: The poker? What of it?
    BIGBY: There's more blood on the tip.
    BIGBY: Did this happen before or after you came in the window?
    TOAD: After, After. I-- I was poking the coals. and it slipped a bit-- sliced open my foot like a seashell. Hurt like a shit, the ugly thing.
    TOAD has no injuries on his feet.
    TOAD: If you're gonna say something, out with it.
    ** (cut_hand) I thought you cut your hand
        BIGBY: Wait... you dropped it on your foot? You told me before that you cut your hand.
        CHOICE_TEXT: You caught Toad in a lie.
        TOAD: Yoah, no, I-I did cut my hand. I cut my hand first, and that made me drop the damned thing on me foot.
        TOAD laughs nervously.
        TOAD: Ruinous flip of events, really.
        BIGBY: Mm.
        BIGBY looks from the poker to the wall
        As BIGBY pretends to swing the fireplace poker, TOAD pleads again.
        TOAD: Oh my God, will you not make a big faff outta this! There's nothing to solve here, Sheriff, I'm telling you everything that happened!
        TOAD: Why don't you believe me?
        TOAD: I mean, things happen, ya know...
        *** I'm not sure.
        *** (attacked) I think someone was attacked.
            BIGBY: This apartment is a goddamned mess, Toad. It looks like after a struggle, or a fight.
            BIGBY: And I don't konw why you'd cover for it...
            BIGBY: But I know you're lying about something.
            TOAD: But I'm not--
            BIGBY: And you're just gonna make it worse for yourself the longer you keep up the act.
            TOAD: I'm not bullshitting you. Honest
            BIGBY: We'll see.
            -> Downstairs
        *** I think you're hiding something.
            -> Downstairs
        *** ...
            -> Downstairs
    ** Made a fire in a heat wave?
        -> Downstairs
    ** Why's the poker still out?
        -> Downstairs
    ** ...
        -> Downstairs
+ [Go to entryway.]
    -> Entryway

= FINAL_TOAD_APARTMENT
* [You lied, Toad.]
BIGBY: Toad...
BIGBY: These stories have made no sense.
BIGBY: You didn't poke yourself on the poker
BIGBY: You didn't forget your keys.
BIGBY: You didn't bump the lamp off the table.
BIGBY: You wanna tell me what's going on?
TJ and SNOW emerge from TJ's room.
TJ: She does'nt think much of me, I don't think.
SNOW: Oh, I wouldn't necessarily say that. Progress?
SNOW looks optimistically at BIGBY.
TOAD embraces his son, TJ, revealing a wound on the back of his head.
SNOW: Mr. Toad... you're bleeding.
TOAD reaches his hand behind his head.
BIGBY: Take off the hat.
TOAD takes off the hat.
TOAD: It was that... butcher, a Tweedle. Dum or Dee. You've got to strip them down to their johnnies before you can tell which is which.
TOAD: He came bargin' in, screaming about something the Woodsman had, or thought he had... I don't know.
TOAD: He tore up the place, beat me up when I said I didn't have it.
TOAD: I tried to go out the window...
TOAD: ...but he pulled me back in.
** [What was he looking for?]
BIGBY: What was he looking for?
TOAD: I have no idea.
TOAD: I would've told you-- I wanted to, really I did...

** [Where did he go?]
** [What did you tell him?]
** [...]
* [\[Threaten Toad\]]
- TOAD: But he said if word o' this ever got back to him, if he ever thought you knew, or Miss White... he'd come back and kill my boy.
TOAD: I even tried to give the bastard her coat. He wouldn't take it.
SNOW: Whose coat?
TOAD: The girl.
TJ: Dad borrows things from peolpe who live here.
TOAD: I don't steal nothin'. The turnaround would astonish you. I merely... repossess what's been left behind.
SNOW: Well, we'll be taking the coat now. If she has next of kin, family, anyone...
TOAD:  Alright. Fetch 'em the fur.
TOAD: Fine bit of dress it is.
TJ is looking under the fireplace for the coat. SNOW goes over to retrieve it. A donkeyskin coat is pulled out. SNOW takes it with her.
TOAD: Though I wouldn't wear it outside.
SNOW places it on the couch where BIGBY sees something.
BIGBY: Wait.
* [Mysterious Object: Pick Up]
BIGBY: It's an envelope.
- TOAD: Fuckin' hell, of course there is. With my luck it's a map to some loody doubloons.
SNOW: It's addressed to Prince Lawrence.
SNOW: Do you want to try and give it to him, or...
TOAD: Don't make it a dilemma!
* Keep it.
* It belongs to Lawrence.
BIGBY: Doesn't seem right opening another man's mail.
BIGBY: let's try and give it to him.
SNOW: Ok.
* [Open it]
* ...
- TOAD: Well, it's been quite a surprising day for all of us, hasn't it? I'd see you out, but I'm afraid of drippin' any more blood in the place.
SNOW kneels next to TJ.
SNOW: It was very nice talking to you TJ.
TJ: Thanks. Uh, see ya.
TOAD ruffles his son's head.
OUTSIDE SNOW and BIGBY stop for BIGBY to take a smoke.
SNOW: does it always go that smoothly?
BIGBY: Not often.
SNOW: So... the Prince's, now?
BIGBY: Lawrence's, yeah. It's our best lead.
SNOW: Our only lead, really.
BIGBY: When you put it that way...
-> LAWRENCES_APARTMENT
=== LAWRENCES_APARTMENT ===
VAR HAS_GUN=false
-> Outside_Intro
= Outside_Intro
SNOW: I don't want to stay here any longer than we have to, so let's just pick an approach and stick to it, okay?
SNOW: Just humor me.
* [Let's focus on what we saw in the mirror.]
BIGBY: When the magic mirror showed me this apartment... I think I saw a knife inside, covered in what looked like blood.
SNOW: I wasn't expecting that.
BIGBY: Yeah.
SNOW: Well, like I said, let's not overcomplicate things. You can question him while I look around for it.
CHOICE_TEXT: You chose to look around a bit more.
BIGBY: And if he objects?
* [It's not that simple.]
* [We need to question Lawrence.]
* [...]
- SNOW: We're here on official Fabletown business. And we can be persuasive if necessary. Or... you can.
SNOW lifts one eyebrow sardonically.
* [Door: Use]
-> DOORWAY
= DOORWAY
BIGBY and SNOW walk up to the door.
* [Door: Yell in] 
* [Door: Open] 
    BIGBY and SNOW open the door and walk in. 
* [Door: Look At]

- PRINCE LAWRENCE'S APARTMENT: INT

SNOW holds her nose. There's a man on the floor facedown with a bloody knife next to him and a fan running.
-> INSIDE
= INSIDE
{not LAWRENCE_DEATH: Snow is crouched over the body.}
* {not lawrence_dying} {not LAWRENCE_DEATH}[Lawrence: Use]
	BIGBY rolls Lawrence over and Lawrence's expression moves, indicating he is still alive.
	** Snow, go get help.
	** (lawrence_dying) Stay with me, man!
		BIGBY: Hey! Hey! Stay with me, Lawrence.
	** You're gonna be okay.
	** ...
	-- BIGBY: You're gonna be alright.
	LAWRENCE: No! No. Let me go.
	LAWRENCE: Et..ss.. she...
	LAWRENCE: Waaaah... waauu... tur...
	SNOW: Bigby. Water. Kitchen.
	-> INSIDE
+ [Walk to Kitchen]
	BIGBY walks into the kitchen
	-> LAWRENCE_KITCHEN
* {lawrence_dying} {Has_Water}[Lawrence: Use]
	-> LAWRENCE_DEATH
* {LAWRENCE_DEATH}[Knife: Look At]
	BIGBY: It's sharp... and there's blood on the blade.
	SNOW: Is that the same knife you saw in the mirror?
	BIGBY: Yeah.
	BIGBY: And I don't know why it's over here.
	SNOW: I just don't understand... Why would someone want to kill him?
	-> INSIDE
* {LAWRENCE_DEATH}[Bullet Hole: Examine]
	BIGBY: Bullet passed through the chair.
	BIGBY: Yeah. The angle works if he shot himself.
	-> INSIDE
* {LAWRENCE_DEATH}[Blood: Look At]
	BIGBY: Strange. Hard edge to this pool. Like something was here, and got moved.
	-> INSIDE
* {LAWRENCE_DEATH}[Panel: Look At]
	A close up of the front Panel
	-> INSIDE
* (PANEL){LAWRENCE_DEATH}[Panel: Pull]
	BIGBY Pulls down the fold down bed to reveal a note.
	BIGBY: Son of a...
	-> INSIDE
+ {PANEL}{not NOTE_TAKEN}{LAWRENCE_DEATH} [Note: Look At]
	A Note is revealed, saying: "My dearest Faith, I never meant to hurt you, and I cannot endure knowing that I have. This was for the best. I'll see you again. Love, Your devoted Lawrence."
	-> INSIDE
* (NOTE_TAKEN){PANEL}{LAWRENCE_DEATH} [Note: Pick Up]
	BIGBY: It's stuck to the bed a little.
	BIGBY: My dearest Faith, I never meant to hurt you, and I cannot endure knowing that I have. This was for the best. I'll see you gaain. Love, Your devoted Lawrence.
	SNOW: Hopefully they're together now.
	BIGBY: About all we can hope for at this point.
	-> INSIDE
+ {LAWRENCE_DEATH}[Picture: Look At]
	SNOW: When do you think that was taken?
	BIGBY: Before all this.
	-> INSIDE
* (BULLET) {LAWRENCE_DEATH}[Bullet Hole: Use]
	BIGBY pulls the bullet out and pockets it.
	-> INSIDE
* (LAWRENCE_EXAMINATION){LAWRENCE_DEATH}[Lawrence: Examine]
	SNOW and BIGBY crouch next to Lawrence's body.
	** [Gun: Examine]	
		BIGBY sniffs the air.
		SNOW: What is it?
		BIGBY: This gun wasn't fired recently. Maybe a week ago. Or more.
		-> LAWRENCE_EXAMINATION
	** (shell_casing) [Shell Casing: Look At]
		BIGBY sniffs then takes the shell casing.
		-> LAWRENCE_EXAMINATION
	** [Gun: Pick Up]
		~ HAS_GUN=true
		BIGBY picks up the gun by the barrel.
		SNOW: Fingerprints?
		BIGBY: They'll be on the grip and the trigger.
		-> LAWRENCE_EXAMINATION
	** [Pills: Examine]
		SNOW: What are they?
		BIGBY: Perscription Sleeping Pills
		-> LAWRENCE_EXAMINATION
	** [Fan: Use]
		BIGBY turns off the fan.
		SNOW: That doesn't really help.
		-> LAWRENCE_EXAMINATION
 	++ [Back Out] 
		-> INSIDE
* {LAWRENCE_DEATH}[Book Case: Touch]
	SNOW is moving a book.
	BIGBY: Dusty. No one's read these in awhile.
	-> INSIDE
* {LAWRENCE_DEATH}[Closet: Open]
	A man jumps out and flees.
	BIGBY: Stay here!
	SNOW: No!
	BIGBY takes off after him.
	-> DEE_CHASE

* {LAWRENCE_DEATH}[Blood: Use]
* {LAWRENCE_DEATH}{not BULLET}[Bullet Hole: Look At]
* {LAWRENCE_DEATH}[Book Case: Look At]

= LAWRENCE_KITCHEN
* (Has_Water) {lawrence_dying} {not LAWRENCE_DEATH} [Sink: Use]
    BIGBY fills a glass with water.
    -> LAWRENCE_KITCHEN
* [Freezer: Use]
* Exit back to apartment
    -> INSIDE

= LAWRENCE_DEATH
	BIGBY gives Lawrence some water.
	SNOW: If you have something to ask him, you should do it now.
* Did you hurt Faith?
* [Who did this to you?]
* [What happened?]
* ...
- BIGBY: Who did this to you?
LAWRENCE coughs. 
LAWRENCE: Faith.
LAWRENCE looks increasingly out of it.
LAWRENCE: Faith.
SNOW closes his eyes after he passes away.
BIGBY stands up.
SNOW shakes her head slightly and looks up at BIGBY.
SNOW: Do you still have that letter?
SNOW and BIGBY look at the letter. 
SNOW: I'm not sure if it's right.
* [Yes]
	BIGBY: You should. There might be something that helps us. A clue. A lead.
	CHOICE_TEXT: You choose to open the letter.
* [No.]
* [It's your decision.]
* [...]
-SNOW: I need to know.
BIGBY: What does it say?
The words are large and signed Faith.
SNOW: I'm sorry. Faith.
SNOW: It's only two words... but he died without seeing them...
SNOW places the letter in Lawrence's hand.
SNOW: I'm sorry too.
SNOW: We need to figure out what happened here... and find whoever did this.
SNOW walks past BIGBY who nods, looking at LAWRENCE.
-> INSIDE

= DEE_CHASE
BIGBY: Hey! Stop!
DEE: Leave me alone!
BIGBY charges into the door of an apartment complex.
An endtable comes down.
He throws down a couch which crushes a man. BIGBY lifts it. 
BIGBY encounters two doors: 3B and 3C. 3B's nametag is swinging, but 3C is open.
* 3B
* 3C
BIGBY turns to the right to the open door and enters. Inside are several possible hiding places: A cabinet, a closet, a bin and a partially open window.
** [Cabinet: Examine]
** [Closet: Examine]
- A man runs by outside. 
CHOICE_TEXT: He almost gave you the slip.

Quickly run and jump and falls to lower floor. Run down hallway.
You hear noises from upstairs.
Charge out window.
BIGBY: Hey!
DEE turns to look back. Bigby jumps on him and takes him down.
DEE is on the ground looking up.
DEE: Ease up, Bigby. We're on the same side. 
BIGBY: You sonuvabitch...Make me... run after you...
* Why did you run?
BIGBY: Why... did you run?
DEE: What?
BIGBY: Why did you run?
DEE: Fuck man, because you chased after me. The fuck was I supposed to do?

* What were you doing back there?
* Who are you?
* ...
- BIGBY: A man's dead.
DEE: I know how it looks, but I had nothing to do with that.

* [Then who did?]
	BIGBY: Then who did?
* [You're covered in blood!]
* [You're coming with me.]
* [...]
- DEE: Look, I was just asking him about the girl. That's all.
DEE: When I mentioned her being dead, he freaked out. I figured someone'd told him. How was I supposed to know?
BIGBY: Shit.
DEE: Fucker shot himself right in front of me. I couldn't stop him man.
- DEE backs up agaainst a wall and stands up.
DEE: You're lookin' for the Woodsman, right?
DEE: I know where he is. My guy says he's holed up at the Trip Trap. We can go over there right now. The both of us. My employer is looking to ask him a few questions, too.
* [Who's your boss?]
* [What were you doing back there?]
BIGBY: What were you doing back there?
DEE: Checking out the guy who was married to the girl. Seemed a good place to start. Tracking down...leads.
* [Who are you?]
* [\[hit him\]]
- BIGBY: What kind of leads?
DEE: I can't tell you that. It's confidential. Sorry. I'm sure you understand.
BIGBY: Nope. Can't say that I do. Come on. You're coming with me.
DEE: This could've been easy.
BIGBY: Oh, don't worry. It still is. Come on.
DEE: Dum.
BIGBY: Dumb? Yeah, it is. Look, it'd be much easier for you to--
DEE: No. I'm dee...
DEE: He's Dum.
DUM hits Bigby in the back of the head, knocking him out.
SNOW: You almost looked peaceful.
BIGBY: Yup.
SNOW: Except you're lying in a dirty alley.
BIGBY: Yup.
SNOW: With an open wound on the back of your head.
BIGBY: Yup.

* [What happened?]
* [Where did they go?]
BIGBY: Where'd they go?
SNOW: Well, after the one guy hit you. And the other guy finished kicking you.
BIGBY: that explains the ribs...
SNOW: Then they jumped in a car and drove off.
* [Just leave me here.]
* [...]
- SNOW: Come on. Get up.
BIGBY: Guess we're out of options.
BIGBY: Dee mentioned the Trip Trap.
SNOW: Then that's where we'll go. I'll call a cab.

EXT: New York City at night. 
BIGBY and SNOW are in the back of a cab at night.

SNOW: Every time I think I'm getting a handle on what's going on... things just get more complicated.
SNOW: It feels like we're always a step behind.
BIGBY: The Woodsman is the only lead we've got and he was one of the last people to see Faith alive.
BIGBY: Getting some answers out of him will start to clear things up.
SNOW: I hope you're right.
SNOW: Bigby... Be honest with me... Who do you think did this? 
SNOW: I know it's still early. I just feel a step behind.
SNOW: It's an uncomfortable feeling.
* [Her Husband]
* [The Woodsman]
* [Dee]
* [Bluebeard]
	BIGBY: We haven't talked to him yet, but...
	SNOW: Tell me. I don't think anything would surprise me at this point.
	BIGBY: I feel like Bluebeard has something to do with this.
	SNOW: I had the same suspicion.
	BIGBY: I don't know how or why just yet, but if you're asking...
	BIGBY: This is his M.O.
* [The Pimp]
* [...]

- BIGBY: There's still a lot of questions...
BIGBY: We find the Woodsman, figure out what he knows, then go from there.
SNOW: Makes sense. That's probably the best approach.

* [Thanks for your help.]
* [Good job.]
SNOW and BIGBY start talking at the same time.
SNOW: I wish there was...
BIGBY: You were really..
SNOW: Sorry.
* [Not as bad as I thought.]
* [...]

- They look aside for a second.
* [Go ahead.]
BIGBY: Go ahead. I didn't mean to cut you off.
SNOW: No, it's...
SNOW: It's nothing. Just. Seeing all this today. There are Fables that are struggling worse than I'd imagined. We pay so much attention to the residents of The Woodlands... you forget there's a whole community out there to serve.
SNOW: to have to turn to... prostitution. I wish there was more we could do.
SNOW: This isn't how I thought it would be. But Crane runs things his own way.
* [I was going to say...]
* [It wasn't important.]
* [...]
 - 
* [You're doing your best.]
BIGBY: You're doing your best. It's all anyone can do.
SNOW: Obviously you don't know what I do all day. Right now, I'm the gatekeeper, making sure none of these disenfranchised folk are, as he puts it, wasting his time.
* [Crane is the problem.]
* [Do something about it.]
* [...]
- BIGBY: You'll fix it.
CHOICE_TEXT: Snow will remember that.
SNOW: I don't know... it's just a broken system. The Fables who walk in through the back door, like Bluebeard... we have all the time in the world for them. You try and come in through the front door, through the proper channels asking for anything-- needing help, well... I turn you away.
SNOW: Now things are worse off than they've ever been.
BIGBY: Well... that's not true.
SNOW: Right, we've had it worse, but... not by much.
SNOW: Maybe this isn't for me.
SNOW: I thought public service was... pure.
* Stick with it.
* Maybe you could leave...
* You'll figure it out.
BIGBY: You'll figure it out. You're better than I am with this political stuff.
SNOW: Well that's not saying much.
BIGBY: I trust you to make the right decision.
SNOW: I hope you're right.
* ...
-They arrive at the TRIP TRAP bar.
SNOW: Yeah, maybe you should handle this one.
BIGBY: Yeah, maybe I should.
BIGBY gets out of the cab.
SNOW: Bigby. I... um... just... be careful, please.
* You too.
* Don't worry.
* Always.
BIGBY: Always.
Snow smiles up at him.
* ...

- -> TRIP_TRAP_BAR

=== TRIP_TRAP_BAR ===
INT. TRIP TRAP BAR
The Bronx
The bar has a pool table and a patron, GREN. HOLLY, the bartender, walks away from the back door which is swinging closed. Everyone looks nervous.

BIGBY opens the door and adjusts his tie.
GREN looks up from his drink.
HOLLY: What do ya want, Sheriff?
* [Woodsman]
BIGBY: I'm looking for the Woodsman.
HOLLY: Well, he's not here. So, I guess you can go now.
* [Sheriff business.]
* [In the neighborhood.]
* [...]
- BIGBY: Look, I'm not even gonna ask where he is now, okay? I just wanna know the last time he was here. That's all.
HOLLY: Who?
BIGBY: I'm being nice. So try again.
HOLLY: he hasn't been here for a few weeks.
GREN looks up.
HOLLY: No... maybe. I don't know. But yeah, he hasn't been here in a while if he's been here at all... which... I... I don't know.
* Does he tell you when to close, too?
* You're your own woman.
    BIGBY: Don't let him tell you what to do. You're your own woman.
    HOLLY: Well this's me talkin', Bigby...
    HOLLY: Fuck off.
-> BAR_INTERIOR
* [I'd just like some help.]

* [...]

- -> BAR_INTERIOR

= BAR_INTERIOR
BIGBY has free run around the bar.

* Gren: Talk To
    BIGBY: Come on. Have you seen the Woodsman around?
    GRENDEL: I don't know who that is.
    BIGBY: Big guy. Board. Flannel. Kind of a shitbag. Hard to miss. You sure you don't know him?
    ** Don't lie to me.
    ** Would a drink help you remember?
        BIGBY: How about I buy you a drink?
        GRENDEL: How about you keep your drink and piss off?
        -> BAR_INTERIOR
    ** Tell me what you know.
    ** ...
* [Pickled Eggs: Examine]
    HOLLY: Let me solve the mystery for you.
    HOLLY: They're pickled eggs.
    BIGBY: Oh, I know what they are... I'm just trying to figure out why anyone would eat this.
    -> BAR_INTERIOR
* [Cigarette Machine: Examine]
    The Cigarette machine's label reads "HUFF & PUFF".
    -> BAR_INTERIOR
* [Cigarette Machine: Buy]
	BIGBY pulls out his cash and begins flipping through bills.
    BIGBY: You got any change for this thing?
    HOLLY: No.
    -> BAR_INTERIOR
* [Bar Stool: Sit Down and Talk]
    GRENDEL: Lotta stools in this place.
    ** Only one next to you...
    BIGBY: Only one next to you...
    ** I don't want to have to yell.
    ** You got a problem?
    ** ...
    -- HOLLY: You gonna order something, or you just here to bother my customers.
        BIGBY looks around at empty bar.
        HOLLY: You know what I mean.
        BIGBY: Gimme a Midas' Gold.
        HOLLY glares at him.
        HOLLY: You want a lime.
    ** [Sure.]
    
    ** No.
        BIGBY: No.
        HOLLY: Well I don't got any anyway.
	- GREN laughs.
BIGBY: Think that's funny?
GRENDEL: Yep. Think it's fuckin' hilarious.
BIGBY: It was alright.
* Help me help you.
* I'm losing patience.
* Harboring a fugitive could cost you.
	BIGBY: This is serious, Holly. Harboring a fugitive is going to get you in as much trouble as he's in. You could lose everything.
* ...
- A flush comes from the other room.
HOLLY looks to GREN.
GREN shakes his head.
WOODSMAN: Holly, you're out of paper towers in the..
BIGBY glares, then smiles.
WOODSMAN sits down on other side of GREN.
* Saved your beer.
    BIGBY: Saved your beer for you. Holly wanted to clear it, but I said, no, he'll be back. Now here you are.
    HOLLY glares at BIGBY, arms crossed.
* Just gonna sit down...
* Number 1 or Number 2?
* ...
- WOODSMAN: You and me've been goin' at it for hundreds of years... I'm through fightin'.
* I'm not sure I believe you.
* That makes two of us.
BIGBY: Well, Woody, that makes two of us.
* Come quietly.
* ...
- BIGBY: You're in luck. I've decided to switch seats.
GREN holds BIGBY from going over to WOODY. BIGBY's expression turns dark.
* It's been a long day...
* I just want to talk.
* Don't fuck with me...
BIGBY: Last fella that put his hand on me...
BIGBY: ended up with an axe in his head.
GRENDEL: Last fella I put my hand on, ended up in the ground.
* ...
- WOODSMAN: It's okay, Gren.
GREN takes his hand off, returns to looking down at his drink.
BIGBY: It's funny... just a minute ago, no one seemed to know who you were.
WOODSMAN: Yeah... well...
WOODSMAN: Everyone knows you. Big Bad Wolf. Now I'm the bad guy and you're Sheriff. What kinda fuckin' world is that, huh?

* You know why I'm here.
* Why did you do it?
* You play the hand you're dealt.
* ...
- WOODSMAN: There's not much to explain... it's no big secret... I needed money.
WOODSMAN: I'd walked past her place for weeks...
WOODSMAN: She didn't look like it, but she had money. I was sure of it.
WOODSMAN: And she wouldn't put up any kinda fight.
WOODSMAN: I was gonna rob her.
WOODSMAN: And the night I finally get up the nerve to do it... there you are...
WOODSMAN: Fuckin' things up for me.
WOODSMAN: You were just in the wrong place at the wrong time.
* What are you talking about?
* So this was a robbery?
BIGBY: So, you were planning on robbing her?
WOODSMAN: Yeah... her and her grandma.
BIGBY: Grandma? Wait, what are you talking about?
WOODSMAN: Red Riding Hood... her Grandmother. I was there to rob them... when I showed up you were already there... lying in the bed.

* I'm taking you in.
* ...
-WOODSMAN: I only saved her 'cause I thought she might give me a reward... but she didn't give me shit.
WOODSMAN: 'Cept a buncha people thingin' I'm somethin' I ain't.
WOODSMAN: Only thing I managed to get from it was a free drink every now and again... huh, lotta good that did.
* I already know this story.
BIGBY: I already know this story, Woody.
WOODSMAN: You should. You were there.

* Did you kill Faith?
* [Glass Him]
* ...
- BIGBY: I'm not talking about Red Riding Hood, I'm here about Faith. She was murdered.
WOODSMAN: What? Faith? Who's that?
BIGBY: The girl you were beatin' on this morning.
WOODSMAN: No. No. No. No. I was hear. I swear.
- BIGBY: It dosen't look good when a girl you were jsut smackin' around shows up dead hours later.
WOODSMAN: She's dead? Bigby listen... I'm a piece of shit, okay... I know that, I hit that girl. I did. I shouldn't've but... I didn't kill her. You believe me, right?
WOODSMAN: They're gonna string me up, Bigby. Like you said, it looks fuckin' bad. It looks really bad. But I didn't do it.
GRENDEL: He was here.
GRENDEL: That's the fuckin' truth, Sheriff.
WOODSMAN: You see? Bigby please. You can't. They'll throw me down the Witching Well. That's what they'll do and I didn't do it. You know that.
GREN drains his drink and gets up.
WOODSMAN: Hey! Stop. This isn't what I want.
GRENDEL: Shut the fuck up, Woody. Shit ain't just about you. It's about this fuckin' lap dog. Only comes sniffing around this part of town when the rich fucks in the Woodlands need a shakedown. Ain't that right, Bigby.

* Lap dog? Really?
BIGBY: Lap dog? Really?
* It's not like that.
* You're backing the wrong guy.
* ...
- GRENDEL: Holly's sister goes missing and no one gives two shits about her. Paperwork, waiting rooms, and that bitch Snow White looking right past me, then ushering me out the fuckin' door.
* Don't call her that.
* Big mouth.
* [\[Hit him\]]
BIGBY hits him.
GREN looks up from the floor.
GRENDEL: That all you got?
BIGBY: Seemed to be enough.
GRENDEL: Don't be so sure.
* ...

- A green light and GREN reveals himself as a giant hulking monster.
BIGBY: Oh. Good.
GRENDEL: Should've walked out of here when you had the chance.
BIGBY: Come on. You're scaring the lady.
HOLLY: Don't worry about me.
A green light comes from HOLLY's direction.
HOLLY reveals herself as a troll.
GREN smashes BIGBY against the ceiling next to a fan.
BIGBY grabs a fan blade.
GREN throws BIGBY against a far wall.
GREN pushes a pool table at BIGBY but BIGBY jumps on top of it and punches him.
GREN smacks BIGBY against the exit door.
BIGBY gets up, as GREN prepares to throw a chair at him.
Then GREN throws a second chair at him.
As GREN picks up a third chair, BIGBY grabs the coat rack and impales GREN with it.
GREN pulls it out of his face then picks BIGBY up by the feet and smacks him against the floor, then the bar, then the wall.
GREN drags BIGBY across the floor, but stops when it appears that BIGBY's grabbed onto the floor with nails. BIGBY appears as a werewolf.
GREN throws BIGBY against the wall.
BIGBY jumps over GREN after he charges him.
GREN charges and BIGBY punches his arm.
BIGBY goes for GREN's head where the wound was, then claws his neck.
BIGBY takes a broken pool cue and shoves it into the shoulder joint.
BIGBY then stomps the knee.
BIGBY kicks him.
WOODSMAN: He's had enough.

* [\[Tear off his arm\]]
BIGBY: I'm the lap dog, huh? Here. Fetch.
WOODSMAN: YOU FUCKING MONSTER!
CHOICE_TEXT: They will remember what you did.
They look on in horror.
* [\[Walk away\]]
BIGBY walks away.
- BIGBY goes to the counter.
BIGBY: Whiskey
HOLLY places a shot glass down and BIGBY throws and breaks it.
BIGBY: Double.
HOLLY looks at him, scared, and places and fills a large glass.
BIGBY drinks it and reappears as normal.
* You didn't see any of this.
* \[Pay for the drink\]
BIGBY slaps down the cash on the counter.
CHOICE_TEXT: You paid for the drink.

* \[Send the bill to Crane\]
* ...

- BIGBY: Don't even think about it.
GREN is in pain on the floor, missing an arm.
WOODSMAN: Is this the type of treatment I can expect if I let you take me in?
* Run and it'll be worse.
* He started it.
BIGBY: Hey, he started it.
* No.
* ...
-DEE walks in
DEE: Alright, I've got a hundred bucks for the first bloke that can tell me something about a girl named
DEE sees GREN on the floor.
DEE: Fuck.
DEE makes a break for it in one direction.
WOODSMAN goes in another direction.

* DEE
DEE: Fuck man! That's not necessary.
BIGBY: Shit.
DEE: He's the one you want, not me!
BIGBY: Your brother won't be saving you this time.
BIGBY: Come on, you're under arrest.
DEE: I told you. I didn't do it.
BIGBY: Then you got nothing to worry about.

OUTSIDE the TRIP TRAP.
BIGBY chains DEE to a pole.
BIGBY: Do anything stupid and I'll throw you in the Witching Well myself.
There's a lot of flashing lights outside the Woodlands and police.
BEAST runs to the line and is stopped.
BIGBY goes underneath the line and to the front where Snow's head is revealed.
* WOODSMAN
BIGBY chases the WOODSMAN.
- -> END

-> DONE
