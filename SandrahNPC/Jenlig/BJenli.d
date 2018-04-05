BEGIN BJenli

IF~Global("JenEdwinR","LOCALS",9)~THEN BEGIN JeneggsE1
SAY~*When you awake you find that Jen'lig has already left the camp before you and your companions awoke. In the wet grass it is easy to see her footsteps leading to the south.*~
IF~~THEN REPLY~She may have gone hunting for her own meal, why not assist her?~ GOTO JeneggsE2
IF~~THEN REPLY~You want to break up the camp soon and need her to move on.~ GOTO JeneggsE2
END

IF~~THEN BEGIN JeneggsE2
SAY~*You find her in a hidden grove not too far away. She kneels in front of two large eggs, one of which she has already broken with her silver sword, its contents flowing over leaves and grass.*~
IF~~THEN REPLY~Is that your morning meal, Jen'lig?~GOTO JeneggsE3
IF~~THEN REPLY~What are you doing with those strange eggs?~ GOTO JeneggsE3
END

IF~~THEN BEGIN JeneggsE3
SAY~HISS!!~
=~*As she turns you see that those eggs are of a kind you have never seen before on Toril. They are as large as a human skull and encrusted with yellow streaks in the same colour as Jen'lig's scales.*~
IF~~THEN REPLY~What sort of eggs are those anyway...you do not consume them but just destroy?~DO~SetGlobal("JenEdwinR","LOCALS",10)~ GOTO JeneggsE4
END

IF~~THEN BEGIN JeneggsE4
SAY~HISS!!~
=~These Jen'lig's eggs. Not good for hatchery. Must be destroyed, not use fertilized by Thayling.~
IF~~THEN REPLY~You mean...this is the product of your intercourse?~ GOTO JeneggsE5
IF~~THEN REPLY~You are destroying your...eh...children...eh...your eggs...?~GOTO JeneggsE5
END

IF~~THEN BEGIN JeneggsE5
SAY~(Hiss) Githyanki breed to maintain race. Varsh at hatchery will destroy monstrosity if find and blame Jen'lig for deed. No place on Astral Plane and no place on Prime for what is in egg. Jen'lig and Thayling not do for breeding.~
=~*With an experienced hit of the silver sword she splits the second egg's sturdy shell.*~
IF~~THEN REPLY~It would have been interesting to see what result you may have produced. Anyway, it probably is better not to know. ~GOTO JeneggsE6
IF~~THEN REPLY~That is probably the best. ~GOTO JeneggsE6
IF~~THEN REPLY~Cruel but necessary, githyanki-like. ~GOTO JeneggsE6
IF~~THEN REPLY~You are nothing but an evil beast after all, how could I forget. ~GOTO JeneggsE6
END

IF~~THEN BEGIN JeneggsE6
SAY~Jen'lig knew commander <CHARNAME> would understand.~
IF~~THEN DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~ EXIT
END

//NPC Banters
CHAIN
IF~Global("Jenimo2","LOCALS",1)~THEN BJenli PinkImo
~This nice embroidery, pink girl. Jen'lig likes good style.~
DO~SetGlobal("Jenimo2","LOCALS",2)RealSetGlobalTimer("JenligT","LOCALS",1000)~
==BImoen~You hide most of yourself under that veil and gloves and stuff, maybe you're quite remarkable underneath.~
==BJenli~Jen'lig must disguise for cannot show true style too open on Prime. Thief not need attention of eyes, Githyanki need not be known by all.~
==BImoen~Your style is excessive with lotsa ornaments and such, I like it. Of course you can't not very well wear any pink with that yellow hide of yours.~
==BJenli~(Sigh) Not good having to hide so much of self.~
==BImoen~Sounds like you're a bit homesick.~
==BJenli~First Jen'lig fighter with duty, Jen'lig is sentinel - last Jen'lig is female breed with homesickness and want for nice clothes.~EXIT

CHAIN
IF~Global("Jenimo2","LOCALS",3)~THEN BJenli CookImo
~Why give this pan to Jen'lig, pink girl?~
DO~SetGlobal("Jenimo2","LOCALS",4)RealSetGlobalTimer("JenligT","LOCALS",1000)~
==BImoen~According to our schedule it's your turn to cook for us tonight. Heya, I'd be most and more interested what you folks eat for dinner. ~
==BJenli~Cooking is infant work not for soldier.~
==BImoen~Hey, We're all hungry and tired and each of us has to do it in turn. No exceptions, right?~
==BJenli~(Hiss) Is manling habit, so Jen'lig travels with manlings, fights with manlings - now cooks with manlings.~
==BImoen~That's the spirit, gal. So tell me quickest, what's on the menu?~
==BJenli~(Looks around the vicinity of the camp) Fungus grows there on tree, squirrels hop there or maybe is rat? What else...all put in pan and cook some hours. Will not know what was before when cooked. ~
==BImoen~Eeeh...very efficient and maybe very healthy for Githyanki but maybe not very much my taste...~
==BJenli~Put lot spice with it if you want taste, no problem.~
==BImoen~Oye, I just see - I made a mistake with the schedule, see...it's really MY turn tonight for cooking. Thanks for the talk anyway, quite interesting (gulp).~
==BJenli~Cooking is infant work, pink girl good with it.~
EXIT

CHAIN
IF~Global("SanHealJen","GLOBAL",6)~THEN BJenli SanthiefJen1
~You interest to talk with Jen'lig, Sandrah? ~
==BSandr~Sure. Last time you told me that Githyanki have no thieves, it is a new concept as you called it?~
==BJenli~None of my race steals from other or from society. But outsiders steal from Githyanki. Like sword Jen'lig is sent to find.~
=~Jen'lig thought of best way to find thieves. Best way is to think like thief. To think like thief must learn to act and behave like thief. (Hiss) steal from outsiders also good for Githyanki - they steal - Jen'lig steal back.~
==BSandr~It was your own invention then? Impressive. After all I had read about your kin I was not expecting one to take so much initiative.~
==BJenli~A Githyanki Planewalker-Captain must decide often on mission. Must have capability for own thinking. (Hiss) Even...too much thinking great danger.~
==BSandr~So you really are a high ranking officer.~
==BJenli~(Hiss) Gish or captain not be sent alone for mission. Must be special to travel Prime alone.~ DO~SetGlobal("SanHealJen","GLOBAL",7)~EXIT

CHAIN
IF~Global("SanHealJen","GLOBAL",8)~THEN BJenli SanGodJen1
~Jen'lig observes that Sandrah follows manling goddess much different than your kin normally relate to their useless gods. ~
DO~SetGlobal("SanHealJen","GLOBAL",9)ActionOverride("CVSandr",AddSpecialAbility("SPIN547"))~
==BSandr~Mystra is not so useless for me in the way that she originally was a human herself. She teaches me how to deal with the powers of the Weave. The deeds she performed as a human priestess, fighter and adventurer are also inspiring me when I need guidance for my own behaviour.~
==BJenli~(Hiss) Midnight was great fighter, not afraid to fight even other manling gods. Follow her by adopting her human ways makes Sandrah strong. Is different from saying prayers and hoping for help from (hiss) gods. Is not different from Jen'lig follow example of mighty Gith to fight for freedom of our race.~
==BSandr~Your mistrust in gods includes your own god-queen Vlaakith...~
==BJenli~(Hiss) Vlaakith not Gith even when try to be. Queen too much alone to take counselling for what is best for githyanki race.~
==BSandr~You risk to make your own decisions in that respect, even if those may not be equivalent to those of Vlaakith?~
==BJenli~Jen'lig always true to spirit of Gith, always loyal to githyanki...loyal to Queen if possible without breaking first rules.~
==BSandr~A dangerous path - but that of true heroine. I only doubt that your own kin would understand all of that well.~
==BJenli~(Hiss) Jen'lig had to come to prime and distance from Astral Plane to understand. Must teach others by example. Githyanki ignorance is maybe more dangerous enemy for own minds than even mind flayer tentacles.~ EXIT

CHAIN
IF~Global("NorbySpawn","bg3300",2) ~ THEN BJenli Dragpact1
~(Hiss) Now hunt with manlings for dragon. Few manlings face old creatures - commander one who does without hesitation. See if wise.~
DO~ SetGlobal("NorbySpawn","bg3300",3)~
==BSandr~I see you are concerned - and the reason is not the power of the beast we are after.~
==BJenli~Always Sandrah see more than other creatures of Prime. Jen'lig sure Sandrah also know reason for concern.~
==BSandr~I assume it is the legendary old pact of the githyanki with Tiamat, queen and goddess of dragons.~
==BJenli~Gith herself sealed the pact with Tiamat by staying in Dis and placing Vlaakith in power over our race and pact will be intact as long as Vlaakith's blood rule githyanki.~
==BSandr~Does our mission put you in a dilemma then?~
==BJenli~If is red dragon in Nashkel wilderness then Jen'lig can send away - if is not red dragon we can fight (hiss) for only red children of Tiamat are under our pact.~ EXIT

CHAIN
IF~Global("JenLinear","LOCALS",1)~ THEN BJenli Linetime1
~Strange for Jen'Lig to experience movement of time in straight line. Comes day, comes night, comes day again. Events come in ordered rows to your life.~
DO~SetGlobal("JenLinear","LOCALS",2)~
==BSandr~The Astral Plane is said to have no time - still you have a past and a future, you were once an egg and now are a grown female.~
==BJenli~Githyanki hatcheries are on the Prime. Githyanki come to Underdark to hunt and fight Illithids. Every moment on Prime age comes to Jen'lig.~
==BSandr~I read that your home are the god-isles each being the immense petrified remains of a dead god that floats on the Astral Plane. Such isles have matter and time to some extend.~
==BJenli~You know much, Sandrah. My city Tu'narath, the capital city of the githyanki, is the petrified corpse of a dead god known as "The One in the Void". Dead god of the prime.~
END
++~A tome at Candlekeep mentioned that your queen Vlaakith never leaves home - it is said she has no age.~ + Linetime2
++~I heard Vlaakith CLVII has no age as she is a lich, she feeds on her own kin.~+ Linetime2

CHAIN
IF~~THEN  BJenli Linetime2
~(Hiss) Not good talk of queen. No one knows if assimilates those that get too much power to make their essence her own. Not good asking about queen. (Hiss).~
==BSandr~(Sandrah whispers to you) Be careful, <CHARNAME>, Jen'lig is a powerful officer already, returning the lost sword will even increase her reputation among her kin.~
END
++~Success for her means great danger as well - I am sure she knows that.~EXIT
++~I have no idea how we can help her with that dilemma. Maybe you can think about it sometimes.~EXIT

CHAIN
IF~Global("JenHallw","BG0130",1)~ THEN BJenli Invent
~Much reminds Jen'lig of Tu'narath. Good inventions made by githyanki but only can make use on Astral Plane.~
DO~SetGlobal("JenHallw","BG0130",2)~
==BSandr~Your kin builds things like these around here?~
==BJenli~Take many years of your time count to create Githyanki astral ship, (hiss).~
=~When Jen'lig still lieutenant sail with carrack to protect trade. Dull experience with not much fight. Better to travel with commander <CHARNAME>. ~
==BSandr~Your subordinate days are in the past, right?~
==BJenli~(Hiss) Easy days receiving command, Jen'lig not needed much to make decision. Time moves one direction and cannot return.~
==BSandr~Your success and career has brought you closer to your queen - retrieving the sword will require another decision.~
==BJenli~(Hiss) No decision. Sword must return to citadel city. ~
==BSandr~At any price?~
==BJenli~Sword must return.~
=~Jen'lig must decide if want to become part of queen power or stay Jen'lig. What better for githyanki race?~EXIT

CHAIN
IF~Global("JenSeatalk","BG3100",2)~ THEN BJenli Seaside
~(Hiss) Much different sea on Prime from sea on Astral Plane.~
DO~SetGlobal("JenSeatalk","BG3100",3)~ 
==BIMOEN IF ~ InParty("Imoen2")~ THEN ~You have oceans over there? Guess they must be as strange as anything else in that world.~
==BSandr~I read there is even travel and trade between the God Isles of your plane.~
==BJenli~Impenetrable fog lies between God isles. Needs much knowledge to venture out and find way.~
==BSandr~This is common to the Sea of Swords you see before you, Jen'lig. To sail out there beyond the sight of the shore is not for the faint hearted.~
==IF_FILE_EXISTS ACBreB IF~ InParty("ACBre") ~ THEN  ~ By Clangeddin's Axe, only the faint minded would entrust their life to the sea.~
==BJenli~Counselor did?~
==BSandr~(Laughs) No, not yet. Even if my mother came on a long journey from a far away land to the Sword Coast, I have not yet been beyond the calm waters near the shoreline. However, everything is possible in the journey we have embarked to.~
==BJenli~Young Jen'lig did duty on Githyanki carrack for a time. (Hiss) Maybe story for other day.~
==BIMOEN IF ~ InParty("Imoen2")~ THEN ~(Thoughtful) Young Jen'lig? Wonder how old she really is - and maybe she was even captain of that ship, I wouldn't be astonished...~ EXIT

CHAIN
IF~Global("JenDurl","LOCALS",1)~ THEN BJenli Bastion
~(HISS!) Dwarfling as stupid as Queen in her palace...~
DO~SetGlobal("JenDurl","LOCALS",2)~
==BSandr~You mean, they both try to hide in a fortification defending all intruders in the vain hope to endure eternally.~
==BJenli~Sandrah has keen eye that good advisor needs. <CHARNAME> lucky to have such one. Queen not listen to advisers, assimilates them to gain their power but thus loses their eyes.~
==BSandr~Hm, you would like to counsel her at times - for the sake of your race, but it is not possible. When you appear too strong she will try to make use of your power by assimilation.~
==BJenli~(Hiss) Jen'lig see and learn much which is good for githyanki. Will be lost if come too close to Queen...will be lost if not shared with Queen and fortress cadre.~
==BSandr~Your plane-walking will allow you to serve your kin and gain knowledge - and you stay out of Queen Vlaakith's reach at the same time.~
==BJenli~Works for time only. Jen'lig must return when mission fulfilled.~
==BSandr~Durlag fell due to his own paranoia and the fortification became his trap.~
==BJenli~Queen already in own trap...trap of mind like schizoid dwarfling.~
==BSandr~Will you try to free her from that trap?~
==BJenli~For githyanki fate must do, is duty of those who see to show to those blind. Is not what Sandrah do all time?~
==BSandr~(Sigh) We share that responsibility, Jen'lig, even if I am not sure who it is I have to face in the end. I am determined to do what must be done and I see you are of the same spirit.~EXIT

CHAIN
IF~Global("SuninMeetJen","GLOBAL",3)~THEN  BJenli KayWas
~Come closer to murderer of Kastya - (Hiss) Closer to sword of Tu'narath.~
DO~SetGlobal("SuninMeetJen","GLOBAL",4) RealSetGlobalTimer("JenligT","LOCALS",1500)~
==BSandr~Mh, Kastya - he was more to you than just a sword bearer, you mentioned the task to find his murderer prior to your sword search.~
==BJenli~See much, priestess Sandrah, good advisor for commander.~
=~Kastya was Supreme Planewalker before Jen'lig. Kastya discover Jen'lig talents and took her from normal ranks, trained and taught her well.~
==BSandr~Your mentor and teacher - I hear something else as well...~
==BJenli~Sandrah see into heart of manlings, see into heart of githyanki. Jen'lig was thinking Kastya may become mate - (Hiss!!) but was killed before Jen'lig could qualify for such consideration by marshal.~
==BSandr~(Sigh) Young female githyanki are not much different from young human females...~
==BJenli~(Hiss) Sandrah had this human *love* feeling for her teacher?~
==BSandr~Drizzt, yes, I had sleepless nights because of him - he was a drow.~
==BJenli~Strange choice for mighty fighter like Sandrah priestess - Jen'lig killed many drow as a hatchling for training her skills.~
==BSandr~You were lucky not to confront one like Drizzt, even you would not have survived the encounter.~
==BJenli~(Hiss) Jen'lig must believe, Sandrah always talks truth.~
==BSandr~I would try to revenge Drizzt by all means would he have been murdered, just like <CHARNAME> will avenge Gorion and you will avenge Kastya.~DO~RestParty()~  EXIT

CHAIN
IF~Global("SanJenDriz","LOCALS",1)~THEN BJenli KayWas3
~Meeting Darkling has very impacted Sandrah.~
DO~SetGlobal("SanJenDriz","LOCALS",2)~
==BSandr~Yes...(sigh), in a positive manner. You have developed quite a good eye for our *manling* feelings.~
==BJenli~(Hiss) Feeling not too strange for Jen'lig. Maybe Darkling was to Sandrah what Kastya was to Jen'lig.~
==BSandr ~Young female githyanki are not much different from young human females in the presence of a male who has all they wish for, I guess.~
==BJenli~Manling girls mix your love feeling concept into it - githyanki search for best to make continue race...and best to have satisfaction in bed, true.~
==BSandr ~Should someone ever do to Drizzt what those men have done to Kastya I would attempt to walk the planes to capture and punish them.~
==BJenli~And Sandrah has persistence and skill to succeed - like Jen'lig will succeed and make Kastya honourable in death.~EXIT

CHAIN
IF~Global("SuninMeetJen","GLOBAL",5)~THEN  BJenli KayWas2
~Cadre advance closer to sword of Tu'narath.~
DO~SetGlobal("SuninMeetJen","GLOBAL",6) RealSetGlobalTimer("JenligT","LOCALS",700)~
==BSandr~ It is your goal to retrieve it for your people but I understand you may also seal your fate when you return to the Astral Plane with it.~
==BJenli~You talk of queen again (Hiss). Jen'lig learn to trust Sandrah, no longer will hide from her.~
==BSandr~ So the rumours are true that she may decide to assimilate you and your power for her own prolonged existence?~
==BJenli~Jen'lig learn much on Prime, learn much from commander and cadre, learn much from Sandrah. Jen'lig gain much power and experience on mission.~
==BSandr~ Probably not enough to withstand Vlaakith and your people?~
==BJenli~Jen'lig not try that. But Jen'lig now of high value for Githyanki, even for queen is higher value the race than the own purpose. Jen'lig will convince her that best for race is when both Jen'lig and Vlaakith exist separately to serve our kin.~
==BSandr~ It is a high risk but if one may succeed with it, it will be you.~ DO~AddSpecialAbility("spin476")~
==BJenli~Good cadre was much value for this learning, (Hiss), Sandrah.~EXIT

CHAIN
IF~Global("JenWyEat","LOCALS",1)~ THEN BJenli Wyvernmeal
~(Hiss) Good hunting, good prey, many food for commander's company.~
DO~SetGlobal("JenWyEat","LOCALS",2) ~
==BIMOEN IF~InParty("Imoen2")~THEN~Iiigh, you wanna have us eat those beasts?~
==BSandr IF~ InParty("CVSandr") ~ THEN  ~There is never a dull moment with the company you choose, <CHARNAME>.~
== BCORAN  IF~ InParty("Coran") ~ THEN  ~If more people could develop this taste, Wyvern hunting will become a great business opportunity.~
== BVICON  IF~ InParty("Viconia") ~ THEN ~ I can't imagine any of our surfacers is interested in the delicious liver of the beast, so I claim it for myself, githyanki. ~
== BKIVAN  IF~ InParty("Kivan") ~ THEN ~ Back to the roots, our ancestors would have taken any opportunity for meat.~
==IF_FILE_EXISTS BSUFINCH  IF~ InParty("Sufinch") ~ THEN ~ (Scribble) I'll file this under *cuisine of the astral plane*, I guess. ~
== BAJANT  IF~ InParty("Ajantis") ~ THEN ~ She is a beast, however she tries to disguise it. ~
== IF_FILE_EXISTS k-roseB  IF~ InParty("k-rose") ~ THEN ~ The very thought of it is...disgusting. ~
==IF_FILE_EXISTS ~B!GAVINJ~ IF ~InParty("B!GAVIN")~ THEN ~ I'm glad I have an iron ration of dried biscuits for days like these.~
==IF_FILE_EXISTS ACBreB IF~ InParty("ACBre") ~ THEN  ~ By Clangeddin's Axe, we surely must slay them but leave the rubbish to the wolves, buzzurk!~
== BBRANW  IF~ InParty("Branwen") ~ THEN ~ Not in the worst time of hunger in Norheim we'd go to fill our bellies with such stuff.~
== BXANNN  IF~ InParty("Xan") ~ THEN ~ Whether we poison ourselves with its meat or fall under the beast's claws - where is the difference? ~
== BJAHEI  IF~ InParty("Jaheira") ~ THEN ~It's nature's gift, no doubt, but at the same time there are other gifts around for us as well.~
==IF_FILE_EXISTS BT2Val IF~ InParty("T2Val") ~ THEN ~Ooops, I have the feeling I've eaten them before, at least some of the food we received as apprentices could have been of such origin.~
== IF_FILE_EXISTS BRH#ISRA  IF~ InParty("RH#ISRA") ~ THEN ~ Aye, the meat isn't poisonous - and in Crimmor it is considered such a highly priced delicacy that I never had the chance to taste it.~
END
++~I just checked our schedule and it is NOT Jen'lig's turn to cook for us tonight.~EXIT
++~I just checked our schedule and it is REALLY Jen'lig's turn to cook for us tonight.~EXIT

CHAIN
IF~Global("BansheeMap3","GLOBAL",2)~THEN BJenli DSCMinf
~ (Hiss) Trail is fresh, scent cannot be mistaken...(HISS!!)~
DO~SetGlobal("BansheeMap3","GLOBAL",3)~
==BSandr~A trace of the sword you seek? Here?~
==BJenli~Not sword, Jen'lig sense Illithids. Must be close.~
=~Commander <CHARNAME> be careful. Look for cave or hole to underground, mind flayers not be on surface.~
==BSandr~What would they do up here?~
==BJenli~Seek food maybe. Seek manling brains to feed on...(Hiss) Maybe seek githyanki eggs - but wrong place, no hatchery near. Great pleasure for Jen'lig if commander help find and destroy illithid. Also good for manlings in area - illithid may want go to towns nearby to feed.~
END
++~I'm not interested in your motives, githyanki, but those mind flayers are too close to the Friendly Arm and Beregost for my liking.~EXIT
++~Your foe are my foe, Jen'lig, just as you fight for my quest in return. We will find and destroy them.~EXIT
++~They better hide well, those beasts, unless they are crazy enough to provoke our joint powers.~EXIT

CHAIN
IF~Global("BansheeMap3","GLOBAL",4)~THEN BJenli DSCMinfcav
~ (HISS!!) *They here. Not speak, commander, they not know we here.*~
DO~SetGlobal("BansheeMap3","GLOBAL",5)~
==BSandr~*Sandrah looks questioningly at you - it seems she has heard Jen'lig's psionic message as well.*~
=~*Looking at your comrades you are aware that they have experienced the same.*~
END
++~*You put your finger to your lips and give a sign to cautiously move forward.*~DO~AddexperienceParty(1200)~EXIT
++~*You put your finger to your lips and signal towards the exit of the cave.*~DO~ ReputationInc(-1)~+ DSCMinfcav2
++~*You point at Jen'lig and signal her to lead the party forward.*~DO~AddexperienceParty(1200)~EXIT

CHAIN
IF~~THEN BJenli DSCMinfcav2
~(HISS!!)~
==BSandr~*You see that both Sandrah and Jen'lig ignore you, Sandrah shaking her head in disbelief. They have started already to move ahead.*~
DO~ActionOverride("CVJenlig",RunAwayFrom(Player1,25))  ActionOverride("CVSandr",RunAwayFrom(Player1,25))~EXIT

CHAIN
IF~Global("JenThHonor","LOCALS",1)~THEN BJenli Thiefhon
~(Hiss) Manling thief without honour. Jen'lig may adopt practice and skills but not become bandit without honour like this (HISS!)~
DO~SetGlobal("JenThHonor","LOCALS",2)~
==Balora IF~InParty("alora")~THEN~These are politics...look for an honest thief and you'll find - me.~
==Bajant IF~InParty("Ajantis")~THEN~An evil creature and a thief...still honour and loyalty to your kin seem to be your utmost virtues.~
==IF_FILE_EXISTS BT2val IF~InParty("T2val")!InParty("Ajantis")~THEN~ An evil creature and a thief...still honour and loyalty to your kin seem to be your utmost virtues.~
==IF_FILE_EXISTS CONCHOJ IF~InParty("CONCHOBHAIR")!InParty("T2val")!InParty("Ajantis")~THEN~ An evil creature and a thief...still honour and loyalty to your kin seem to be your utmost virtues.~
==BJenli IF~OR(3) InParty("Ajantis") InParty("T2val")InParty("CONCHOBHAIR")~THEN~Manling paladin has own view of honour and loyalty. Not can think virtue exist outside his limits as is slave to manling god only. (Hiss)~
==BSandr IF~InParty("CVSandr")~THEN~Your clear insights into the nature of us creatures of the prime is refreshing. I wish more of my kin would be able to have open eyes and an open mind like that.~
==BJenli IF~InParty("CVSandr")~THEN~Jen'lig know that Sandrah has - learns that party she is in is different in many ways from average on prime. Is due to commander maybe to select with good choice.~EXIT

//Jen'lig and Edwin
CHAIN
IF~Global("JenEdwinR","LOCALS",1)~THEN BJenli EdwinR1
~*After your rest you see Jen'lig restore her richly ornamented earrings and other jewellery to her body before covering her body with the veil and scarf that conceils her identity from the prying eyes of your fellow beings.* ~
DO~ SetGlobal("JenEdwinR","LOCALS",2) RealSetGlobalTimer("JenEdwinRT","LOCALS",2400)~
==Bedwin~*Edwin, who just finished his own toilet nearby, has obviously recognized Jen'lig's razor sharp talons on each of her bony fingers that are normally hidden.* He stops and stares in fascination.~
==BJenli~The githyanki has recognized his stare indistinctly.~
=~(Hiss) Good to kill without weapon, good to eat without cutlery. (Hiss) Heritage from illithid breeding of useful slaves.~
==Bedwin~Rarely a female of the prime decorates her body with such taste and finesse. (A beast from a shadow plane knows more about jewelry than any of those peasant cows of the damned Sword Coast.)~
==BJenli~*She moves closer to the Thayan to display the talon of her forefinger. You can see Edwin admiringly study the rich insets of gold pieces and unknown small jewels.*~
=~Also is good for showing affection to her mate. Jen'lig misses much.~
==Bedwin~Men of these regions have no refinement and knowledge about fashion of any kind. (Does she notice the subtlety of my robe's ornaments?)~
==BJenli~Jen'lig has observed Thayling taste for good stuff.~EXIT

CHAIN
IF~Global("JenEdwinR","LOCALS",3)~THEN BJenli EdwinR2
~Thayling come long way from his home to be here. For what?~
DO~ SetGlobal("JenEdwinR","LOCALS",4) RealSetGlobalTimer("JenEdwinRT","LOCALS",2400)~
==Bedwin~(Beware, beast, don't dig too deep.) You are observant, Jen'lig, ha, and it seems that curiosity is as much a habit of females in your race as it is with humans.~
==BJenli~(Hiss) Not curiosity but acknowledgement. Githyanki female not estimate high those who hide behind spellcasting in battle. Use weapon to dig in heart of foe. But Edwin cannot be coward if come long journey to foreign wild land.~
==Bedwin~Odesseirons are rulers and conquerors. We bring battle, not hide from it.~
==BJenli~(Hiss) Jen'lig like answer. Not answer of weakling.~EXIT

CHAIN
IF~Global("JenEdwinR","LOCALS",5)~THEN BJenli EdwinR3
~Thayling has new decoration nose ring. Look ancient and valuable.~
DO~ SetGlobal("JenEdwinR","LOCALS",6) RealSetGlobalTimer("JenEdwinRT","LOCALS",3000)~
==Bedwin~(Is the only connoisseur of real beauty here really an outer plane creature?) It is a family heritage, indeed quite a rare item.~
==BJenli~*Her hissing has become more tender to your ears. She slowly moves her talon along Edwin's forehead and down his cheek.*~
==Bedwin~(This feeling is strange but yet compelling. The beast knows more about erotic subtlety than the Sword Coast wenches, so much is for sure) Eh, take your time to study its refinements, Jen'lig.~
==BJenli~*She continues along the line of his upper lip and then explores the jawbones under his skin, all the time taking great care not to hurt him.*~
==Bedwin~(Seductive bitch.) He closes his eyes to fully enjoy the strange sensation of her touch. Finally he takes a finger and kisses the sensitive talon shortly.~  DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~ EXIT

CHAIN
IF~Global("JenEdwinR","LOCALS",7)~THEN BJenli EdwinR4
~Thayling not exaggerated. Know much about making lust - for manling kin.~
DO~ SetGlobal("JenEdwinR","LOCALS",8) RealSetGlobalTimer("JenEdwinRT","LOCALS",3600)~
==Bedwin~(Wow, this reptile is burning hot beneath her cold scales.) When two experts meet on the highest level, it can move the planes...or move between planes, I guess.~
=~(The good thing in that beast is the absence of all this romance and love crap the women of the Prime expect. She concentrates on the carnal aspect and is really focussed.)~
==BJenli~Jen'lig may decide to use Thayling again some other night (Hiss).~
==Bedwin~You will find me ready and willing.~EXIT

CHAIN
IF~Global("JenPalad","LOCALS",1)~THEN BJenli Falsepal
~(Hiss!!)~
DO~SetGlobal("JenPalad","LOCALS",2)~
==Bajant IF~InParty("Ajantis")~THEN~ Stay away from me, evil creature.~
==IF_FILE_EXISTS CONCHOJ IF~InParty("CONCHOBHAIR")~THEN~ Stay away from me, evil creature.~
==IF_FILE_EXISTS BT2val IF~InParty("T2val")~THEN~ Stay away from me, evil creature.~
==BJenli ~Evil is what opposes Githyanki, not evil is what for Githyanki.~
==Bajant IF~InParty("Ajantis")~THEN~ A perverted definition by a godless race!~
==IF_FILE_EXISTS CONCHOJ IF~InParty("CONCHOBHAIR")~THEN~A perverted definition by a godless race!~
==IF_FILE_EXISTS BT2val IF~InParty("T2val")~THEN~A perverted definition by a godless race!~
==BJenli IF~InParty("Ajantis")~THEN~ Is not Helm same? Be with Helm or be evil.~
==BJenli IF~InParty("CONCHOBHAIR")~THEN~ Is not your god same? Be with your god or be evil.~
==BJenli IF~InParty("T2val")~THEN~Is not Torm same? Be with Torm or be evil.~
==BJenli ~Jen'lig not care for any god, so Jen'lig evil for you.~
==Bajant IF~InParty("Ajantis")~THEN~You're as single-minded as any evil-doer I ever encountered. Your logic is blasphemous.~
==IF_FILE_EXISTS CONCHOJ IF~InParty("CONCHOBHAIR")~THEN~You're as single-minded as any evil-doer I ever encountered. Your logic is blasphemous.~
==IF_FILE_EXISTS BT2val IF~InParty("T2val")~THEN~You're as single-minded as any evil-doer I ever encountered. Your logic is blasphemous.~
==BJenli ~Clarity of concept means clarity of actions and duties. Jen'lig knows well what is honour and duty without be slave to useless god.~EXIT

CHAIN
IF~Global("JenIsraB","LOCALS",0) InParty("rh#isra") !See([ENEMY])!AreaType(DUNGEON)~THEN BJenli Israbant
~You like to show beauty and style for attracting male (hiss).~
DO~SetGlobal("JenIsraB","LOCALS",1)RealSetGlobalTimer("JenligT","LOCALS",300)~
==IF_FILE_EXISTS BRH#ISRA~We Sunites show beauty and style to worship our goddess - attracting male...(grins) it is a side effect but not the main purpose. Your ornaments and stylish clothes only serve for that purpose?~
==BJenli ~Jen'lig style is for identification on Astral Plane. (Hiss) Maybe attracts suitable male if Jen'lig wants one. Dress for useless manling god is absurd concept.~
==IF_FILE_EXISTS BRH#ISRA~There is obviously some difference between our races...anyway, this mission makes us comrades in some sense and respect for each other will be a key to our success, right?~
==BJenli ~(Hiss) Concept of strong united cadre is Githyanki concept. Concept of beauty and style is Githyanki concept. Serving useless gods is not Githyanki concept. ~
==IF_FILE_EXISTS BRH#ISRA~Well, two out of three is not too bad for a starting point (grin).~EXIT

CHAIN
IF~Global("JenBranB","LOCALS",0) InParty("Branwen") !See([ENEMY])!AreaType(DUNGEON)~THEN BJenli Branbant
~You come far from Sword Coast, manling?~
DO~SetGlobal("JenBranB","LOCALS",1)RealSetGlobalTimer("JenligT","LOCALS",300)~
==BBRANW~Thou come from even farther away it seems to me. You resemble none of the monsters I encountered in Norheim.~
==BJenli~Jen'lig monster? You fear just because githyanki?~
==BBRANW~I don't fear thee as you made a pact with <CHARNAME>. Githyanki. What I heard about your kin is that you are heartless killing beasts to be avoided.~
==BJenli~Manlings know little, are weak, and not have honour often. Is what githyanki are told of you by Varsh.~
==BBRANW~Ha, good point. If you are a creature to know honour and know how to fight for it, Tempus and me may give you a chance. ~
==BJenli~Evil is relative. Always is evil what is foe or unknown. Always must look deeper for truth.~EXIT

CHAIN
IF~Global("JenKivB","LOCALS",0) InParty("Kivan") !See([ENEMY])!AreaType(DUNGEON)~THEN BJenli Kivanbant
~You full hate, elfling?~
DO~SetGlobal("JenKivB","LOCALS",1)RealSetGlobalTimer("JenligT","LOCALS",1300)~
== BKIVAN~Yes.~
==BJenli~You suffer from strong bond with mate who is no more.~
==BKIVAN~Does your breed know anything about love or loyalty or partnership? I doubt you have any idea about such things. Leave me be, evil creature.~
==BJenli~True that love is not githyanki concept. Would prevent strong male from breeding with right female. Loyalty is highest value of githyanki, loyal to cadre, loyal to queen, loyal to race.~
==BKIVAN~It excludes loyalty to your lover, right? It is this ability to love that distinguishes elves from animals and beasts.~
==BJenli~Jen'lig neither animal nor beast.~
==BKIVAN~Maybe - but still you are a creature unable to love.~EXIT

CHAIN
IF~Global("JenVicB","LOCALS",0) InParty("Viconia") !See([ENEMY])!AreaType(DUNGEON)~THEN BJenli Vicbant
~As hatchlings in Underdark the Varsh let us fight and kill dark elves for combat training. Jen'lig kill many drow.~
DO~SetGlobal("JenVicB","LOCALS",1)RealSetGlobalTimer("JenligT","LOCALS",1300)~
== BVICON ~As young drow in the Underdark I was trained on raids against githyanki hatcheries. I killed many of them.~
==BJenli~Killed young fledgling ones, no great deed.~
== BVICON ~Well, they were not that easy prey, I have to admit. Your kin knows how to fight - and you have a cruelty in killing that equals the drow.~
==BJenli~This time fight side by side for mission and commander. Our foe will learn to fear combined forces soon.~EXIT

CHAIN
IF~Global("JenXanB","LOCALS",0) InParty("Xan")GlobalGT("SanXanA","GLOBAL",4) !See([ENEMY])!AreaType(DUNGEON)~THEN BJenli Xanbant
~Know that githyanki for long ages were enslaved by illithids, elfling.~
DO~SetGlobal("JenXanB","LOCALS",1)RealSetGlobalTimer("JenligT","LOCALS",1300)~
==BXANNN~A whole people held in slavery? Not a single man, excuse me, a single what-ever-you-are should suffer such fate.~
==BJenli~Maybe a single GITHYANKI was too weak to free herself, but union made by Gith was strong.~
==BXANNN~(Sigh) And yet you meet your next doom by having to fight your oppressors forever and becoming cruel heartless creatures knowing only war and death. At least your perspective is simple as you are not fed with morsels of hope every new day.~
==BJenli~Elfling talks weird. Jen'lig not relies on hope, Jen'lig takes action to make things how things should be.~
==BXANNN IF~InParty("CVSandr")~THEN~Now you sound just like our hopelessly enthusiastic friend Sandrah.~
==BJenli IF~InParty("CVSandr")~THEN~Sandrah often right with words. Often right with deeds and always acts when sees slavery.~EXIT

CHAIN
IF~Global("JenGarrB","LOCALS",0) InParty("Garrick") !See([ENEMY])!AreaType(DUNGEON)~THEN BJenli Garrbant
~Is like male shadow dog howling for a bitch.~
DO~ SetGlobal("JenGarrB","LOCALS",1) RealSetGlobalTimer("JenligT","LOCALS",1300)~
==BGARRI~Eh...your kin has not an ear for music, I suppose?~
==BJenli~Varsh at hatcheries do when you small. Not sing when enough old to hold sword.~
==BGARRI~What do you...eh...do for recreations then?~
==BJenli~(Hiss) Jen'lig will search out suitable male for pass time with...Long time on prime alone.~
=~Now Jen'lig hears male shadow dog howling for a bitch.~
==BGARRI~Eh...yes...I c-can imagine they cannot resist you...eh...those male of your kin, eh, excuse me I will continue my song a bit farther away not to disturb you...~ DO~RunAwayFrom("CVJenlig",20)~
==BJenli~(Hiss!)~EXIT

CHAIN
IF~Global("JenShartB","LOCALS",0) InParty("Sharteel") !See([ENEMY])!AreaType(DUNGEON)~THEN BJenli Sharbant
~Fight good and kill bloody, manling, but must channel anger more.~
DO~ SetGlobal("JenShartB","LOCALS",1) RealSetGlobalTimer("JenligT","LOCALS",1300)~
==BShart ~Ha, your style is much to my liking, *githling*. Especially the way you make that eye contact with your foe when you have him defeated and cut his heart out with that incredible sword. You make sure he knows well he's gonna die now and it's YOU who has the power to take his forsaken life. A great gesture.~
==BJenli~Githyanki race long would perish from Astral Plane and Limbo if not can fight better than any, especially better than the illithid and Githzerai.~
==BShart ~Ha, you surely make any Flaming Fist look like a street rat with a wooden toy sword, including one Angelo Dorsan.~
==BJenli~Know Flaming Fist? Know sergeant Horvok?~
==BShart ~A bloody corrupted bastard, would sell his long deceased mother's corpse for a handful of coins.~
==BJenli~Know who friends of Horvok?~
==BShart ~I can assure you, THAT man has no friends. As to whom he may join for some illegal deed or other, I can tell you - just anybody who pays him more than 10 GP.~
==BJenli~(Hiss) Explains why alone when did last look, looking in Jen'lig's eyes.~
==BShart ~Good. An end he well deserved. I'm sure you made it really painful for him.~EXIT

CHAIN
IF~Global("JenYeslB","LOCALS",0) InParty("Yeslick") !See([ENEMY])!AreaType(DUNGEON)~THEN BJenli Yeslbant
~Be slave to Davaeorn, small manling?~
DO~ SetGlobal("JenYeslB","LOCALS",1) RealSetGlobalTimer("JenligT","LOCALS",1300)~
==BYesli~I's nobody's slave ever, evil reptile, spare ya stinkin' breath elsewhere.~
=~Toril's fulla evil already, ain't no need to import more from the Planes.~
==BJenli~(Hiss) Small manling with small horizon and small insight. Stay alone in small world of own.~EXIT

CHAIN
IF~Global("JenGavB","LOCALS",0) InParty("B!Gavin") !See([ENEMY])!AreaType(DUNGEON)~THEN BJenli Gavinbant
~Calm manling walks steadily onward and does what think must do. Jen'lig likes attitude of Gavin.~
DO~ SetGlobal("JenGavB","LOCALS",1) RealSetGlobalTimer("JenligT","LOCALS",1300)~
==IF_FILE_EXISTS~BB!GAVIN~ ~Eh...thanks, I think. I don't receive compliments from ladies that often, and never from one...eh, exotic...like you.~
==BJenli~No need be afraid, companion of commander <CHARNAME> always protected by Jen'lig.~
==IF_FILE_EXISTS~BB!GAVIN~ ~Eh, yes...good to know...it's just something to acquaint myself to - I mean travelling with companions of different races and such.~
==BJenli~Same for all. Jen'lig never spent so much time with manlings. Learn lot. (Hiss.)~
=~Interesting how male and female interact on Prime.~
==IF_FILE_EXISTS~BB!GAVIN~ ~ Oh, my, I'm not really the expert for that issue (reddens).~
==BJenli~ Do what think is good and interesting for you. Not listen too much for others.~
EXIT

CHAIN
IF~Global("JenMinsB","LOCALS",0) InParty("Minsc") !See([ENEMY])!AreaType(DUNGEON)~THEN BJenli Minscbant
~More in head of rat than in head of mighty manling. Fight good but not with brain.~
DO~ SetGlobal("JenMinsB","LOCALS",1) RealSetGlobalTimer("JenligT","LOCALS",1300)~
== BMINSC_ ~Boo is NO rat, lizard girl, he's a giant space hamster!~
==BJenli~(Hiss) Jen'lig is NO lizard, is githyanki. Githyanki Planewalker travel many planes but nowhere lives *giant space hamster*. ~
=~When say fight with your head, not mean use skull to hit enemy, mean use what inside of head - if something there.~
== BMINSC_ ~We kick evil butts our way, right Boo?~
=~Boo says, we don't yet know if Jen'lig is evil or not. We will not kick her githyanki ass...no, Boo, I will not say that, she is a githyanki GIRL after all, whatever that means.~
==BJenli~(Hiss) Best talk to hamster, not to man. Put hamster brain to man body and maybe good for breeding.~EXIT

CHAIN
IF~Global("JenSafaB","LOCALS",0) InParty("Safana") !See([ENEMY])!AreaType(DUNGEON) !AreaCheck("BG3600")~THEN BJenli Safabant
~Rich girl learned thieving to protect rich manlings from thefts?~
DO~ SetGlobal("JenSafaB","LOCALS",1) RealSetGlobalTimer("JenligT","LOCALS",1300)~
== BSAFAN~He? That's a really strange question - is that your motivation to become the first githyanki thief I've ever heard of, I mean, protection of your kin against theft?~
==BJenli~(Hiss) Jen'lig invented concept that best way to find thieves of silver weapons would be to learn thief's method and concept of mind.~
== BSAFAN~That may make sense on your strange Astral Plane. On the Prime it makes more sense to learn to steal from the rich - they are the only ones to possess enough to justify the risk, isn't that so?~
==BJenli~Rich manlings seldom seem to be people of honour and values.~
== BSAFAN~Honour and values? I never heard that any of the two pays for a new pair of stylish shoes, bah.~EXIT

CHAIN
IF~Global("JenFaldoB","LOCALS",0) InParty("Faldorn") !See([ENEMY])!AreaType(DUNGEON) GlobalGT("SanFalB","GLOBAL",2)~THEN BJenli Faldobant
~Concept of nature is new for Jen'lig. Plants not exist on Asral Plane.~
DO~ SetGlobal("JenFaldoB","LOCALS",1) RealSetGlobalTimer("JenligT","LOCALS",1300)~
== BFALDO~ How can therrr be no nature in a place unless you brainless creatures have destroyed your Great Mother in selfishness.~
==BJenli~(Hiss) View of manling druids not go farther than can see in their woods full of green trees. Githyanki never destroyed what was never there. From plane travel imported many things to Tu'narath - fungus is only thing that can grow on bodies of dead gods that are our soil.~
== BFALDO~Even in a desert the Grreat Motherrr is present.~
==BJenli~(Hiss) All gods on Astral Plane are dead gods. A dead great mother to grow fungus on is a weak concept, too weak to make a race strong to survive against Illithids and Githzerai.~
== BFALDO~You are a race rotting away in yourrr cities without even the option to reverrt to nature again. You pity me as you cannot even lose what our city folks never deserved to know.~EXIT

CHAIN
IF~Global("JenDynaB","LOCALS",0) InParty("Dynaheir") !See([ENEMY])!AreaType(DUNGEON)~THEN BJenli Dynabant
~Githyanki value comrades by how they act in fight. Witch fights good but only with brain.~
DO~ SetGlobal("JenDynaB","LOCALS",1) RealSetGlobalTimer("JenligT","LOCALS",1300)~
==IF_FILE_EXISTS  BDYNA ~Rashemen witches protect our country alongside our fighters for ages in our struggle with Thay. Our lands would long be occupied without such skills.~
==IF_FILE_EXISTS  BDYNAH ~Rashemen witches protect our country alongside our fighters for ages in our struggle with Thay. Our lands would long be occupied without such skills.~
==BJenli~(Hiss) Not always sword is best weapon, many githyanki tend to forget. Jen'lig became thief to catch thieves that run away from sword battle.~
==IF_FILE_EXISTS  BDYNA~Thou are special in thine race I observe. 'tis new to find analytic skills behind an evil beast's facade.~
==IF_FILE_EXISTS  BDYNAH~Thou are special in thine race I observe. 'tis new to find analytic skills behind an evil beast's facade.~
==BJenli~(Hiss) Call Jen'lig beast, call Jen'lig evil when both of us fight for race against those who want to extinguish our breed? Your red wizards are equivalent to githyanki's mind flayers.~
==IF_FILE_EXISTS  BDYNA~Mayhap one has to dig deep beneath the surface to see how much we have in common. I apologise for naming thee a beast, 'tis a bad custom to refer to those we don't know in such way.~
==IF_FILE_EXISTS  BDYNAH~Mayhap one has to dig deep beneath the surface to see how much we have in common. I apologise for naming thee a beast, 'tis a bad custom to refer to those we don't know in such way.~
==BJenli~(Hiss) Wit is sharp weapon, Dynaheir knows as well as Jen'lig knows.~EXIT

CHAIN
IF~Global("JenCoranB","LOCALS",0) InParty("Coran") !See([ENEMY])!AreaType(DUNGEON)~THEN BJenli Coranbant
~Manling girls are quite attracted by elfling.~
DO~ SetGlobal("JenCoranB","LOCALS",1) RealSetGlobalTimer("JenligT","LOCALS",1300)~
== BCoran ~Eh, I do my best, my strange beauty. They feel my fondness of them and return it.~
==BJenli~(Hiss) Elfling follow strange instinct, play same game on every female.~
== BCoran ~My golden reptile, it's not instinct, it's compassion for beauty and sweetness.~
==BJenli IF~InParty("Imoen2")~THEN~(Hiss) Elfling concepts are weird as manlings. Jen'lig thinks that elfling best breed with pink girl. Such union will help extinct prime creatures soon.~
==BJenli IF~!InParty("Imoen2")~THEN~(Hiss) Elfling concepts are weird as manlings. Jen'lig thinks that elfling choice for breeding will help extinct prime creatures soon.~
== BCoran IF~InParty("CVSandr")~THEN~ My choice among the females in this party would always be for the best...(He quickly gazes in Sandrah's direction.)~
== BCoran IF~!InParty("CVSandr")~THEN~My choice among the females in this party would always be for the best...(He gracefully bows to the githyanki.)~
== BJenli IF~!InParty("CVSandr")~THEN~Jen'lig sometimes breed with little toy for fun - not to maintain race.~
== BJenli IF~InParty("CVSandr")~THEN~Sandrah choice of partner sometimes quite doubtful. Choses to have fun not to breed really. Good chance for elfling to be used as toy by strong girl.~
== BCoran ~ Used as a toy? This is not really my *concept*, my extraterrestrial love counsellor.~
== BJenli ~On close inspection, elfling too weak to be even toy for Jen'lig. (Hiss)~EXIT

CHAIN
IF~Global("JenDrizB","LOCALS",0) InParty("F_Drizzt")GlobalGT("SanDrizzt","GLOBAL",5) !See([ENEMY])~THEN BJenli Drizbant
~Githyanki value comrades by how they act in fight. Much admire how darkling taught Sandrah.~
DO~ SetGlobal("JenDrizB","LOCALS",1) ~
== F_DRIZTJ~ Well...as you're part of this party and even friendly with Sandrah, I anticipate that you may be different from the githyanki I knew in the same way I may differ from the drow you met before.~
==BJenli~(Hiss) Drow sparring partners for hatchlings. Drizzt and Jen'lig seen many things and learned much, make their own mind to replace prejudice.~
== F_DRIZTJ~Sandrah told me, you have recently lost the teacher and friend you had and are now searching his silver sword to restore his honor.~
==BJenli~Kastya was supreme Planewalker to teach Jen'lig. Githyanki know not your friendship concept - but Jen'lig was hoping that Kastya would choose her to mate if found valuable enough...hiss...like Sandrah has hoped from Drizzt.~
== F_DRIZTJ~Ehem...(Drizzt shuffles his feet nervously)...eh, she told you such...~
==BJenli~Drizzt would be fool if not take her, Jen'lig not know better girl fighter among manlings.~
== F_DRIZTJ~(Sigh) Well, yes, that may not be the criteria we apply on the prime - even if drow in the Underdark might follow such reasoning.~EXIT

CHAIN
IF~Global("JenKagaB","LOCALS",0) InParty("Kagain") AreaType(OUTDOOR) !See([ENEMY])~THEN BJenli Kagainbant
~Dwarfling only half size of manling but stink like mountain of manure used to cultivate our hydroponic gardens in the depths of a city's mass.~
DO~SetGlobal("JenKagaB","LOCALS",1)RealSetGlobalTimer("JenligT","LOCALS",1300)~
==BKagai~Aye, so? What of it, lassie? I know how to deal with all manner of beasties... but I don't know how to deal with the likes of ye.~
==BJenli~Jen'lig wonders why commander keep dwarfling with not much use, not even good for breeding. ~
==BKagai~Why, I be strong as an ox and as healthy as a horse! Hey, aren't you some girlie of ya race?~
==BJenli~Is githyanki female who make choice of male and kill any that try what not permitted.~
==BKagai~The problem's yer own, then, reptile gal. This is nar another lecture in any bleedin' morality and ethics, I hope? ~
==BJenli~Only one lecture - dwarfling stay away from Jen'lig...and walk on leeward side of wind.~ DO~ReallyForceSpell("Kagain",PSIONIC_PROJECT_FORCE)~EXIT

CHAIN
IF~Global("JenJaheB","LOCALS",0) InParty("Jaheira") InParty("Khalid") AreaType(OUTDOOR) !See([ENEMY])~THEN BJenli Jaheirabant
~Jen'lig puzzled by concept of marriage on prime. Is ownership of female to enslave best male for breeding?~
DO~SetGlobal("JenJaheB","LOCALS",1)RealSetGlobalTimer("JenligT","LOCALS",1300)~
==BJAHEI~I give you credit that you come from a formerly enslaved race, Jen'lig, but I definitely do not enslave Khalid.~
==BKHALI~I hear your w-words, beloved. ~
==BJAHEI~We are bound by more than just the need to maintain the race by breeding.~
==BKHALI~The act itself m-may be performed with an experienced druid w-w-without needing to fear the consequences. N-now and then, I mean.~
==BJenli~Jen'lig maybe understand. Khalid-male not even best choice for breeding anyway.~
==BJAHEI~Beast...maybe an intelligent beast, but still a beast!~ DO~RunAwayFrom("CVJenlig",30)~
==BKHALI~M-maybe it's just difference in *concepts*...~EXIT

CHAIN
IF~Global("JenFabiB","LOCALS",0) InParty("Fabio") AreaType(OUTDOOR) !See([ENEMY])~THEN BJenli Fabiobant
~Bards of manlings are infants for lifetime say Githyanki Varsh at hatchery.~
DO~SetGlobal("JenFabiB","LOCALS",1)~
==IF_FILE_EXISTS BFabio~Never trust second handed reports, my girl...you are a girl of a kind, aren't you?~
==BJenli~*Girls* are infants of manlings just like bards. Jen'lig long outgrown from those days. Mature female Githyanki not fall for singsong, choose male for breeding by deeds done in battle.~
==IF_FILE_EXISTS BFabio~Eh, we are not yet at a stage where I would consider *breeding* - if that means the same to you as for me anyway...~
==BJenli~Jen'lig doubts that bardling will show skills to reach such stage at all.~EXIT

CHAIN
IF~Global("JenVyndB","LOCALS",0) InParty("GV#Vynd") AreaType(DUNGEON) !See([ENEMY])~THEN BJenli Vyndbant
~Drowling full fear when Jen'lig come near. (Hiss) We same cadre.~
DO~SetGlobal("JenVyndB","LOCALS",1)~
==IF_FILE_EXISTS BGV#Vynd~You know why I choose to leave Underdark? Because in the Underdark, there are mind flayers, beholders and aboleths - and githyanki. I thought I'd trade it for a little sunburn.~
==BJenli~Find any mind flayer, beholder or aboleth on surface and Jen'lig protect weak drowling in cadre (Hiss).~
==IF_FILE_EXISTS BGV#Vynd~A strange feeling to have a githyanki promising me protection, really.~
==IF_FILE_EXISTS BGV#Vynd~Anyway, I prefer to have you on the same side than against me.~
==BJenli~(Hiss) Stay loyal on <CHARNAME> side and have Jen'lig on side as well.~EXIT

CHAIN
IF~Global("JenWhiteB","LOCALS",0) GlobalGT("WhiteFriendshiTalk","GLOBAL",7)  InParty("V#1whi")~THEN BJenli WhiteB
~Why you give Jen'lig those glances, bone-white manling?~
DO~SetGlobal("JenWhiteB","LOCALS",1)RealSetGlobalTimer("JenligT","LOCALS",1300)~
==IF_FILE_EXISTS V#1whib~Do I? Maybe I do. Honestly you are the only reptile of some intelligence and able to talk since I left...my mother.~
==BJenli~Concept of mother not exist for githyanki (Hiss). Cadre be raised together in hatchery, never know who lay egg in beginning.~
==IF_FILE_EXISTS V#1whib~Not so different from my situation, reptile, I do not well remember my first mother who *lay egg in beginning*. Anyway, you gave me something to think about...why did my mother adopt and raise me if reptiles do not have such an instinct?~
==BJenli~(Hiss) Concepts of Prime creatures often differ from Astral Plane, Jen'lig learn difference every day.~
==IF_FILE_EXISTS V#1whib~Naga want to guard and protect - whatever may be their subject. Githyanki seem to be a little more manlike, they protect their own and fight the alien. Anyway, time to move on.~EXIT

CHAIN
IF~Global("JenBaeloB","LOCALS",0) InParty("Baeloth")~THEN BJenli WhiteB
~(Hiss), not look like this, darkling. ~
DO~SetGlobal("JenBaeloB","LOCALS",1)RealSetGlobalTimer("JenligT","LOCALS",1300)~
==BaelothJ~You would have made an interesting addition to the Black Pits, githyanki.~
==BJenli~Children of Gith long have freed themselves from slavery - darkling not even has power of mindflayer.~
==BaelothJ~Fine, fine, thus is the spirit that makes fights sooo interesting. Who needs inspirited slaves, we need true fighters...~
==BJenli~You want true fighter (Hiss). May get what you want faster than desire.~DO~ReallyForceSpell("Baeloth",PSIONIC_PROJECT_FORCE) ~EXIT

CHAIN
IF~RandomNum(6,1)~THEN  BJenli Random1
~(Hiss) All day marching not for githyanki feet.~EXIT

CHAIN
IF~RandomNum(6,2)~THEN  BJenli Random2
~(Hiss) Is day, is night, is day again. Time feel strange to Jen'lig.~EXIT

CHAIN
IF~RandomNum(6,3)~THEN  BJenli Random3
~(Hiss) Maybe teach commander use psychic bonds to give orders in battle. Too much words on prime.~EXIT

CHAIN
IF~RandomNum(6,4)AreaType(CITY)~THEN  BJenli Random4
~(Hiss) Manling city weak compared to Tu'narath.~EXIT

CHAIN
IF~RandomNum(6,5)AreaType(DUNGEON)~THEN  BJenli Random5
~(Hiss) Manling cellars are strangely decorated.~
END
++~This is a dungeon, Jen'lig. I wouldn't really call this a decoration.~EXIT

CHAIN
IF~RandomNum(6,6)AreaType(OUTDOOR)~THEN  BJenli Random6
~Concept of weather is new. Jen'lig likes cooling rain on own scales, so clean.~
END
++~Restrain yourself, hihi, it would cause quite some commotion if people saw a naked githyanki beauty dancing in the rain.~EXIT

