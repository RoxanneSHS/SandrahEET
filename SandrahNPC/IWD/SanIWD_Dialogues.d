CHAIN
IF WEIGHT #-3~Global("SanIDW1","Global",1)~THEN CVSandrJ IWD1Start1
~Time to search my backpack for some warmer undergarnments, I would say.~
DO~SetGlobal("SanIDW1","Global",2)~
END
++~Waterdeep style? I cannot wait to see you in it.~ + IWD1Start2
++~I hope they will not hide too much of what I like.~ + IWD1Start2

CHAIN
IF~~THEN CVSandrJ IWD1Start2
~(Winks) From that look you give me, I assume you would rather see me out of them than in them.~EXIT

CHAIN
IF WEIGHT #-3~Global("SanIDW1","Global",3)~THEN CVSandrJ IWD1Myrku1
~ Myrkul, one of those dead three, the old Lord of Bones...~
DO~SetGlobal("SanIDW1","Global",4)~
=~This may indeed be some ancient evil we need to face here.~
END
++~Anything helpful in your tome about this guy, my conselor?~DO~IncrementGlobal("Sanpoints","Global",1)~ + IWD1Myrku2
++~One of those evil gods slain during the Times of Trouble if my lore is correct - how can he harm us still?~ + IWD1Myrku2

CHAIN
IF ~~THEN CVSandrJ IWD1Myrku2
~Remember who killed Myrkul. Someone named Midnight, later elevated to become a goddess, Mystra.~
=~Bane, Bhaal and Myrkul may be dead but it does not mean that all their malice has already left Toril. Apart from surviving followers, those gods have left all types of traps, spawns and other secrets during the time they walked as mortals through these regions. I am afraid we may face one or other of those remains during our adventures.~
END
++~Good that have Mystra's support at my side then.~EXIT
++~Dead gods are, well, dead gods - and if they try to stir we put them to rest again.~EXIT

CHAIN
IF WEIGHT #-3~Global("SanIDW1","Global",5)~THEN CVSandrJ IWD1Gem1
~ Somebody else has been here already - we may not be alone in our persuit of the gem.~
DO~SetGlobal("SanIDW1","Global",6)~
END
++~The priest at the entrance sounded like there was an attack recently.~ + IWD1Gem2
++~Spares us to do all the dirty job ourselves.~ + IWD1Gem2
++~Sometimes I'm puzzled by your talent to state the obvious.~ + IWD1Gem2

CHAIN
IF ~~THEN CVSandrJ IWD1Gem2
~This temple was at peace for a long time, now visitors respectively intruders hand each other the door. Hard to believe this is coincidence.~
=~Someone knows about the ability of the Heartstone as well.~
END
++~ A possible ally?~ + IWD1Gem3
++~ Brage?~ + IWD1Gem3
++~ Our enemy trying to prevent we find him?~ + IWD1Gem3

CHAIN
IF ~~THEN CVSandrJ IWD1Gem3
~The previous attack just happened recently. I assume whoever did it must know about what we found in the Vale of Shadows. He, she or they must know that we know that the shadows were not the source of the events in Kuldahar.~
=~...and - (she points at one victim's wounds) - they use snake poison or poisonous snakes as part of the weaponry. ~
END
++~They cannot be too far gone. Let's go on.~EXIT

CHAIN
IF WEIGHT #-3~Global("SanIDW1","Global",7)~THEN CVSandrJ IWD1yxu1
~ Yxunomei, what does that name imply? The lizard man mentioned the name as if that would be the ruler of this Dragon's Eye.~
DO~SetGlobal("SanIDW1","Global",8)~
=~When I think of intelligent snakes, I think of Yuan-ti...but the name does not fit.~
END
++~A powerful being that is able to unite lizard folks, maybe Yuan-ti and other unusual creatures.~ + IWD1yxu2
++~All these creatures have in common that they like it warm, the old vulcano serves them well.~ + IWD1yxu2

CHAIN
IF~~ THEN CVSandrJ IWD1yxu2
~A valid remark. Are these weather experiments the result of an attempt to return Icewind Dale to its ancient jungle-like state wherin Yxunomei's serpentine followers could prosper?~
END
++~What kind of creature has such power?~ + IWD1yxu3
++~Are we facing some minor deity in the end?~ + IWD1yxu3

CHAIN
IF~~ THEN CVSandrJ IWD1yxu3
~Maybe someone from a plane which is always hot...like the Nine Hells.~EXIT

CHAIN
IF WEIGHT #-3~Global("SanIDW1","Global",9)~THEN CVSandrJ IWD1yxu4
~ Yxunomei and the *Old Enemy*...~
DO~SetGlobal("SanIDW1","Global",10)~
END
++~Does that ring anything from your lore?~ + IWD1yxu5
++~Have you heard about them before?~ + IWD1yxu5
++~I have ears, I heard the words - does it mean anything that may help us?~ + IWD1yxu5

CHAIN
IF~~ THEN CVSandrJ IWD1yxu5
~Did you hear or read in Candlekeep about the Blood War by any chance?~
END
++~The Blood War has raged on since the Age Before Ages between the tanar'ri and the baatezu. What does it have to do with our quest?~ + IWD1yxu6

CHAIN
IF~~ THEN CVSandrJ IWD1yxu6
~The name I was puzzled about earlier starts to make sense, it is the name of a demon. Snakes, poison, the wish for a heated climate...~
=~Among the tanar'ri there is a type that is very intelligent and serves as talented generals and tacticians...the mariliths.~
END
++~If you were right - mmh, we need to prepare for such a foe but we cannot turn back.~ EXIT
++~I will not endanger all our lives senselessly against such a foe, we can never win that.~EXIT
++~Sounds great, a beast still missing in my collection of defeated enemies.~ EXIT

CHAIN
IF WEIGHT #-3~Global("SanIDW1","Global",11)~THEN CVSandrJ IWD1yxu7
~ Hm, just like I was expecting...~
DO~SetGlobal("SanIDW1","Global",12)~
END
++~Sorry, but were you not talking of demons, tanar'ri, mariliths?~ + IWD1yxu8
++~This was a marilith? Looks like another kidnapped little girl to me.~ + IWD1yxu8

CHAIN
IF~~ THEN CVSandrJ IWD1yxu8
~(Laughs) How many little girls did you ever hear talking about *sidereal translations* before transporting away before your eyes. If there was doubt about a demonic source of the trouble before, now we have the evidence.~
END
++~Fine, we are warned. We are not turning back now.~EXIT

CHAIN
IF WEIGHT #-3~Global("SanIDW1","Global",13)~THEN CVSandrJ IWD1yxu9
~ News seems to travel faster through these mountains than we can.~
DO~SetGlobal("SanIDW1","Global",14)~
END
++~You mean these creatures are here because of us?~ + IWD1yxu10
++~You mean these creatures are here because of the Heartstone?~ + IWD1yxu10

CHAIN
IF~~ THEN CVSandrJ IWD1yxu10
~Because of us and the Heartstone. This is not over yet. If it is not the *Old Enemy* taking his chance now, something else is still going on which we have not discovered yet.~
END
++~We need to consult with Arundel anyway. Let's do that.~ EXIT
++~What a mess, let's tell Arundel we're out of here.~ + IWD1yxu11

CHAIN
IF~~ THEN CVSandrJ IWD1yxu11
~ I am afraid we have not that choice. The pass is blocked until we find a solution up here.~EXIT

CHAIN
IF WEIGHT #-3~Global("SanIDW1","Global",15)~THEN CVSandrJ IWD1hand1
~There is not that much left of the famous Hand of the Seldarine. War remorselessly takes its toll each time.~
DO~SetGlobal("SanIDW1","Global",16)~
END
++~What has happened here?~ + IWD1hand2
++~What is this place?~ + IWD1hand2
++~Enlighten me with your lore, Sandrah.~ + IWD1hand2

CHAIN
IF~~ THEN CVSandrJ IWD1hand2
~The fortress once ruled the surrounding lands and kept the orcs of the region at bay. The elves here forged a close alliance with the dwarves of Dorn's Deep and together crafted some of the greatest magical arms, armour and other items of that age. For centuries, elves lived in peace in the fortress.~
=~After a while, it was discovered by the elves that several orc tribes were armed with those magical weapons forged by the elves and the dwarves. Larrel, the archmage and ruler of the Hand - the ghost we were sent to find - immediately blamed the dwarves for supplying the orcs and broke off all ties.~
=~Here we stand at the remains of that old conflict. There was some treachery involved that was never revealed and therefore the Hand is said to be full of the restless ghosts of old.~
END
++~Maybe we will find out what really happened long ago.~ EXIT
++~The solution we seek today thus has its roots in the past.~EXIT


CHAIN
IF WEIGHT #-3~Global("SanIDW1","Global",17)~THEN CVSandrJ IWD1drw1
~Drow? This is a bit disturbing. We expected dwarves and they are never in league with the dark elves. That would be what the duergar may do.~
DO~SetGlobal("SanIDW1","Global",18)~
END
++~This place has been long overrun by all types of beasts.~ + IWD1drw2
++~The dwarves may be as dead as their elven counterparts but still, I agree that drow are an unexpected find.~ + IWD1drw2

CHAIN
IF~~THEN CVSandrJ IWD1drw2
~We saw the large statue of elven and dwarven alliance at old times in the previous cave. The later war was caused by some external machinations, so much is sure. Drow are specialists in intrigue and insidiousness. There may well be some connection.~
END
++~Larrel's daughter tried in vain to intervene. The plot was much more than just some misunderstanding. Let's see what else we find.~EXIT

CHAIN
IF WEIGHT #-3~Global("SanIWDRWiz","Global",2)~THEN CVSandrJ IWD1popeq1
~We should be looking for that priest we now found mentioned several times already, that brother Poquelin.~
DO~SetGlobal("SanIWDRWiz","Global",3)~
END
++~Wasn't it you who just recently said that a baatezu was Yxunomei's *Old Enemy*?~ + IWD1popeq2
++~What is just going on below those adorable curls at the moment?~ + IWD1popeq2
++~Did you not demask that false Arundel to confess his involvement and role as our foe in this plot?~ + IWD1popeq2

CHAIN
IF~~THEN CVSandrJ IWD1popeq2
~Just like the tanar'ri appeared as a little girl, the baatezu will not walk the Primary Plane openly. *RBP* he signs here - Revered Brother Poquelin. And we heard that a priest of Ilmater of that name was seen in various places in the north since the trouble began.~
END
++~Hold on, would that god really allow a demon to walk the prime in the robe of his priest? Would Mystra allow it if evil were imposing as her priestess?~ + IWD1popeq3

CHAIN
IF~~THEN CVSandrJ IWD1popeq3
~The god of endurance, suffering, and martyrdom may not act directly against the sacrilege - and while you mentioned my goddess, do I need to remind you that her priestess is here and willing to end this quest. Mystra helps those who decided to act and help themselves, she is on your side in this demon hunt.~ 
=~Besides, there is another thing to consider, Ever since the Times of Trouble, gods become vulnerable when they visit the Prime Material Plane. If they chose to walk among us mortals they need to do it in mortal avatars. Even if still very powerful beings, it means they can die - or be killed by one of the other celestials greedy for their portefolio.~ EXIT

CHAIN
IF WEIGHT #-3~Global("SanIDW1","Global",19)~THEN CVSandrJ IWD1Mines1
~Enough suffering down here to make even the Weeping God cry. This is not something done in the name of Ilmater, not that we believed in it at all.~
DO~SetGlobal("SanIDW1","Global",20)~
END
++~That broken paladin outside removed all my doubts. You are right.~ + IWD1Mines2
++~The tortured svirfneblin are the work of a monster, they may be martyrs but not in Ilmater's name.~ + IWD1Mines2

 CHAIN
IF~~THEN CVSandrJ IWD1Mines2
~We must be very careful of deceit in these caves. We know we are dealing with at least one demon and his tricks. There are also some of his so-called Lieutenants left, we just need to count the number of badges we collected - we need six of them in the end. ~ EXIT

CHAIN
IF WEIGHT #-3~Global("SanIDW1","Global",21)~THEN CVSandrJ IWD1EahRet1
~So we made the full circle to find the resolution is here where we started. Or - like so often, in the history of this place.~
DO~SetGlobal("SanIDW1","Global",22)~
END
++~I saw you studying your tome recently. The answer is there?~ + IWD1EahRet2
++~Our demonic opponent wants this town as a new base of operation, isn't that clear?~ + IWD1EahRet2

CHAIN
IF ~~THEN CVSandrJ IWD1EahRet2
~The Not-Poquelin has chosen Easthaven, or to be precise, the local temple for a reason I found here in my history book.~
=~With his opponents now out of the way, his intention is to open a gate to the Lower Planes for his reinforcements to come up to invade Toril.~
END
++~Why here?~ + IWD1EahRet3

CHAIN
IF ~~THEN CVSandrJ IWD1EahRet3
~There is an existing one here in the temple, a portal to Baator. It was sealed generations ago by the barbarian shaman Jerrod when he sacrificed himself in a battle against the archmage Arakon, who had created the gate to summon a demon horde to serve him in conquering the North. ~
END
++~I see. We must prevent the demon to re-open that portal. Who else is left to do the job... ~  EXIT
++~One demon is a challenge, but a horde entering through a portal from Baator will be total destruction, we cannot let that happen.~ EXIT

//Heart of Winter
//_____________________________________________________________________

CHAIN
IF WEIGHT #-3~Global("IwdHWPlot","LOCALS",1)~THEN CVSandrJ IWDassa1
~This Baldemar let us run into the open trap - he knew of the assassin when we talked to him.~
DO~SetGlobal("IwdHWPlot","LOCALS",2)~
=~The only explanation is that he wanted us out of the way and be able to blame it on the *savages*.~
END
++~The tip of my sword will let him talk to us about his motifs, be sure.~+ IWDassa2
++~What is worse, a protector like that or the so-called enemy outside?~+ IWDassa2

CHAIN
IF ~~THEN CVSandrJ IWDassa2
~I am still trying to comprehend how many different parties are acting in this plot and what their goals are.~
=~The tribes are at odds internally because of Wylfdene's abnormal nature. The ten towns are at odds internally as well, some seeking peace, some sending assassins. On top of that we have the Iron Throne trying to put fuel to the several fires for some reason.~
END
++~A talk with Baldemar may enlighten us.~EXIT
++~We need to find a way to visit Burial Island.~EXIT
++~The Iron Throne's presence here is strange, all hints we have seem to imply there is not even ore to be found around this area.~EXIT

CHAIN
IF WEIGHT #-3~Global("SanHOWScar","Global",1) ~THEN Scar IWDIron1
~On a word please, mylady Sandrah.~
DO~SetGlobal("SanHOWScar","Global",2) ~
==CVSandrJ~Scar, we did not expect to see you so soon again.~
==Scar~You will understand in a minute, I am sure.~
=~First, I recognised you at first glance earlier at Wyrm's Crossing, the resemblance to your mother is unmistakeable. I chose not to address it in public, as you will soon understand.~
==CVSandrJ~Let us settle over here, this table cannot be overheard by those ears you obviously want to avoid.~
==Scar~You understand well, just like I had hoped. So, there is a little issue aside from the obvious trouble we have in town in which I require some outside help.~
==CVSandrJ~Go on, Scar, be assured we will try to help if we can - if we cannot, you have at least out words that nobody will get to know about this conversation.~
==Scar~Good. The iron crisis has forced my superior, Duke Eltan Silvershield to explore all possible alternatives to gain ore for the town - all in good faith to serve the city. One of those possibilities seems to lie in some resources further up north, wild territories around the Spine of the World.~
==CVSandrJ~Hm, those *wild territories* are not unoccupied. The tribes and folks living up there call it their home.~
==Scar~This is a valid concern and one I share with an old friend of mine, a shaman named Hjollder, who lives there. Even worse however is the fact that Eltan trusted the operation into the hand of a merchant organisation which may use methods neither he nor me nor you may tolerate.~
==CVSandrJ~Are we talking about the Iron Throne here, we had our bit of experience with them already?~
==Scar~Exactly. The fact is that they sent out a expedition to Lonelywood, one of the Ten Towns up there. It has not yet returned and seems to be overdue - in addition I have received a rather cryptic call for help from Hjollder.~
=~I cannot leave town and I cannot send any own men behind Eltar's back without compromising him and creating tension with the Iron Throne. In short, I need some secret agents to look into the matter. I need you and <CHARNAME>.~
=~What I told you right now is all I know myself, which is little. Go to Lonelywood and find out what goes on up there.~ DO~RevealAreaOnMap("id9100")~
END
++ ~I always dreamed of seeing those wild lands. You have me interested.~ + IWDIron2
++ ~If it goes against the Iron Throne, I am all for it. Count on me, Scar.~ + IWDIron2
++ ~Not now, I have enough of my own business to care about.~ + IWDIron2

CHAIN
IF ~~THEN Scar IWDIron2
~I gave you the facts and I will mark Lonelywood on your map. I can offer you no richess but the experience you may gain on that mission. Think about it and make your decision well. This is all I ask of you this time. ~DO~ EscapeArea()~EXIT

CHAIN
IF WEIGHT #-3~Global("SanHOWScar","Global",4) InParty("CVSandr") ~THEN Scar IWDRetu1
~Yes, <CHARNAME>. mylady Sandrah?~
DO~SetGlobal("SanHOWScar","Global",5) ~
==CVSandrJ~Scar, we have been to Lonelywood and beyond. (Sandrah gives a detailed report about your mission to Icewind Dale - except...she does not mention your discovery of the ore on Burial Island at all.)~
==Scar~Another example of those criminal Iron Throne activities. Duke Eltan will not be delighted to hear that. Had there really been iron up there in the region, they would have prevented its digging, even on the price of a bloody local conflict, just to keep up the crisis.~
END
++~But there is o...ooooh. (The pain of Sandrah's heel on your toe is unbearable.~ + IWDRetu1
++~Now they have only what they grabbed before our action on the Cloakwood mine cut their supplies.~ + IWDRetu1

CHAIN
IF~~THEN Scar IWDRetu2
~I can only thank you for your support, even if in the end the situation remains as it was before.~
=~I will eagerly await your report on our other issues, my friends.~DO~AddexperienceParty(7000)~EXIT

CHAIN
IF WEIGHT #-3~Global("SanHowPlot","Global",1)~THEN CVSandrJ IWDIronM1
~It appears there is more going on in this lonely town than just visitors of the Iron Throne and their intrigues.~
DO~SetGlobal("SanHowPlot","Global",2)~
END
++~If not one has to do with the other. What now?~ + IWDIronM2
++~Good we have come, sounds like an interesting time here about. Where do we begin our research?~ + IWDIronM2

CHAIN
IF~~ THEN CVSandrJ IWDIronM2
~(Laughs) Experienced adventurers? We are in a new town - find an inn for gossip, inquire the major, check for supplies - once done, we need to find the babarian camp that Hjollder mentioned.~
END
++~(Grin) I'm lucky to have such a competent counselor.~EXIT
++~The daily adventurer routine, hope it was worth the journey.~EXIT

CHAIN
IF WEIGHT #-3~Global("SanIWDIronSearch","Global",3) ~ THEN CVSandrJ IWDIronC1
~A small surprise, I confess, I was not expecting to find this.~
DO~SetGlobal("SanIWDIronSearch","Global",4) ~
=~(When she strikes her hammer against the gleaming wall near Wylfdene's Tomb, a metallic sound echoes through the caves.)~
END
++~So there really is iron ore to be found in this area.~ + IWDIronC2
++~So Wylfdene lied to us about the iron resources of his clan.~+ IWDIronC2
++~This ore will be hard to gain in a place like this.~+ IWDIronC2

CHAIN
IF~~THEN CVSandrJ IWDIronC2
~The interesting question is, who knows about the ore's existence in this place except for those dwarves who cannot talk anymore.~
=~I believe what Wylfdene told us, his tribes are no diggers and the shaman's and the dead are the only ones who enter here. None of them values this material other than because of its magnetic attributes that probably were the reason to chose this place for the holy burial grounds.~
=~The people of Lonelywood have no idea as well, the ghosts and watchers keep them away.~
END
++~Somehow the Iron Throne must have got the message?~ + IWDIronC3
++~Most likely the dwarves who found it want to sell it - to the Iron Throne.~ + IWDIronC3

CHAIN
IF~~THEN CVSandrJ IWDIronC3
~I agree, those Iron Throne bastards somehow got knowledge about it. But it seems, they neither know where exactly to find it nor do they have an interest to dig for it.~
END
++~I understand the first of your assumptions - but the second?~+ IWDIronC4

CHAIN
IF~~THEN CVSandrJ IWDIronC4
~Remenber our first meeting with them at the inn. One of them said, they were there to prevent iron to leave Lonelywood or something in that sense. Those assassins left Baldur's Gate already some time ago. They have no idea about what has happened to the Cloakwood mines.~
END
++~I see. Their mission is to keep up the iron shortage so that their organisation keeps the monopoly for supply to the parties on the Sword Coast. That's why they send assassins but no workers to dig the ore.~ DO~AddexperienceParty(2000)~EXIT
++~Fuelling the conflict between the Ten Towns and the babarians makes sure that no mining will take place and no ore goes south. The assassination attempt now makes sense to me.~ DO~AddexperienceParty(2000)~EXIT

CHAIN
IF WEIGHT #-4~Global("SanIWDIronSearch","Global",5)~THEN Bruno RetIsl
~Making little trips into the landscape, spying around - for whom?~
DO~SetGlobal("SanIWDIronSearch","Global",6)~
==CVSandrJ~Are you afraid that we might find something that you want to hide?~
==Slythe~Maybe it's a good idea to search 'em for iron this time, hey Brunos, wouldn't that be fun.~
==Krysti~Slythie-baby, just imagine they try to resist...~
==CVSandrJ~Why do you talk about iron all the time? This is no mining town and there was no ore ever found in those mountains up here.~
==Slythe~That bloody dwarf lied? Rieltar should've allowed me to interrogate the guy in my own special way.~DO~EscapeArea()~
==Krysti~No one can resist your methods for long...~ DO~EscapeArea()~
==BRUNO~SHUT UP, YOU DUMB BLOODHOUNDS, you blabber out top secrets just for fun or what? Now we must kill 'em for know too much. GET OUTTA MY SIGHT!!!~DO~EscapeArea()~EXIT

CHAIN 
IF WEIGHT #-4~Global("SanIwdThrone","ar9101",1)~THEN Slythe IWDIron3
~Hey Krystin. What have we here... blade fodder? Greenhorns from the south.~
DO~SetGlobal("SanIwdThrone","ar9101",2) SetGlobal("SanHowPlot","Global",3)~
==Krysti~Slythie-baby, we're not here for those, forgot?~
==Slythe~Ooh, she's got a tongue of steel and a heart of gold, my Krystin does...yeah, we don't wanna do too much disturbance, even my blade lusts for them.~
==Krysti~They don't look like they wanna dig for ore. The only iron they care to carry are their weapons.~
==CVSandrJ~So it looks your purpose here is to prevent that iron from here finds its way to the Sword Coast.~
==Slythe~Ouch, don't say nothin' wrong now to them wisecracks.~
==Krysti~Psst, otherwise we needa kill'em after all for knowin' toooo much.~ DO~
EscapeArea()~
==Slythe~Brunos wouldn't like it, no not at all. ~ DO~
EscapeArea()~
==CVSandrJ~And this Brunos would by any chance be the Iron Throne representative in Lonelywood? ~
==Bruno~Brunos is by any chance the guy to end this palaver now and here. Slythe! Krystin! Get outta here or I'll get me boys to rib-roast ya! ~
=~An' you chimps, better stick ya noses elsewhere unless you want'em bruised badly.~DO~
EscapeArea()~EXIT


//___________________________________________________

CHAIN
IF WEIGHT #-5~Global("SanIWDBrage","Global",1)~THEN Laryss IWDBrag1
~Kind strangers, so we meet again far away from the Sword Coast.~
DO~SetGlobal("SanIWDBrage","Global",2)~
==CVSandrJ~Laryssa, I remember you, Brage's cousin. We heard a rumour in Easthaven already that Brage went up north in search of his sanity.~
==Laryss~That idea he found when he hunted that pirate, it seems to possess him still. He thinks there is a cure for him...he left Nashkel because he thinks his destiny is in the far Stormhorns. ~
==CVSandrJ~You are following him? Do you try to bring him back to the temple?~
==Laryss~Not anymore. The situation up here prevents my further venture. I need to return to the south. But you - I heard you investigate the proceedings in Icewind Dale, you may find Brage by chance.~
==CVSandrJ~If we do, we will help him - either to return south or in his mission to the Stormhorns, it will depend on the circumstances.~
==Laryss~More I cannot ask for. Farewell, adventurers.~DO~AddJournalEntry(@972,QUEST) EscapeArea()~EXIT

CHAIN
IF WEIGHT #-5~Global("Koveras","id7003",2) ~THEN CVSandrJ IWDKoveras
~A sudden and unexpected visitor? ~
DO~SetGlobal("Koveras","id7003",3) ~
==Kovera~A simple scholar, a seeker for wisdom in this library?~
==CVSandrJ~News travels very fast in these remote mountains, we found that before. You must have invisible messengers to tell you this place became accessible again just hours ago.~
==Kovera~Did it? I'm not aware of such worldly events, I just seek knowledge.~
==CVSandrJ~Any particular topic that this library holds over others? You must know that I am a seeker myself.~
==Kovera~Dead gods are a topic that may not interest a young lady of obviously noble heritage.~
==CVSandrJ~Dead gods? You mean those like the dead three, Bane...Myrkul...~
==Kovera~Hush, girl...do not venture further! There is nothing about the topic right here anyway. I must leave urgently.~DO~EscapeArea()~
==CVSandrJ~Hm - he did not even wait for me to pronounce the third name.~
END
++~Bhaal?~EXIT
++~A strange guy. Those yellow eyes...~EXIT

I_C_T DHroth 10 SanIWDBrage
==DHroth IF~InParty("CVSandr")~THEN~My last candidate, Brage, was just to eager to move further and would not waste time with this adventure.~
==CVSandrJ IF~InParty("CVSandr")~THEN~Brage? Brage from Nashkel?~
==DHroth IF~InParty("CVSandr")~THEN~A friend of yours, mylady?~
==CVSandrJ IF~InParty("CVSandr")~THEN~Someone we met and helped during our journeys. What may have led him so far to the north?~
==DHroth IF~InParty("CVSandr")~THEN~A search, as far as I could tell from the little he spoke, someone or something called Sharkta Fai.~
==CVSandrJ IF~InParty("CVSandr")~THEN~Maybe we will see him again if we follow your invitation.~END

INTERJECT DArundel 89  SanIWDOldEnemy
==CVSandrJ IF~InParty("CVsandr")~THEN~So Yxunomei's *Old Enemy* has been observing us all the time. With her being tanar'ri, you then must be the baatezu in this vendetta. But with her out of the way, why are you still here?~
==Darundel IF~InParty("CVsandr")~THEN~Mortal girl, you nearly outsmarted me - but I will not tell you what you want to know. No.~
END DArundel 90

I_C_T DSaablic 2 SanIWDRWiz
==CVSandrJ IF~InParty("CVsandr")~THEN~A red wizard not even trying to hide his evil face, how refreshing. Or is that the true appearance of your order and you just disguise as humans on other occasions.~
==DSaablic IF~InParty("CVsandr")~THEN~My situation here...it is so desperate that I'd even ask a priestess of (spit) Mystra (cough) for assistance.~
==CVSandrJ IF~InParty("CVsandr")~THEN~I am afraid, our good-hearted <CHARNAME> may even continue to listen to you.~END

EXTEND_BOTTOM DKieran2 1
IF~InParty("CVSandr") Global("SanHowPlot","Global",3) Global("SanAsked","LOCALS",0)~THEN REPLY~ What can you tell about those three southerners who just left.~DO~SetGlobal("SanAsked","LOCALS",1) ~GOTO IronT
END

CHAIN
IF~~THEN DKieran2 IronT
~Scum, they hang around here since days, glad the one-eyed guy left some days ago.~
==CVSandrJ~Any idea where he went to?~
==DKieran2~After he talked to Baldemar, he left town it seems.~ DO~SetGlobal("Know_Assassin","GLOBAL",1)~
==CVSandrJ~Hm - and those others, are they waiting for him to return?~
==DKieran2~As innkeeper you get an eye for some types, I can tell you. No, I think they observe...the talkative guy, the one who's with the girl, he mentioned that no ore's supposed to leave town for the south. ~
==CVSandrJ~Where would that ore come from, Lonelywood is no mining town?~
==DKieran2~A valid observation, mylady. No idea what ore they talk about.~
END
IF~~THEN REPLY~I see. Let me ask you something else.~GOTO 1

EXTEND_BOTTOM DBaldemr 8
IF~InParty("CVSandr") Global("SanHowPlot","Global",3) Global("SanAsked","LOCALS",0)~THEN REPLY~ Alone? What about his companions over at the Whistling Gallows?~DO~SetGlobal("SanAsked","LOCALS",1) ~GOTO IronTB
END

CHAIN
IF~~THEN DBaldemr IronTB
~Eeh...companions? He told me he came alone, I had no reason to doubt that. I do not frequent the inn, I have no idea who may stay there.~
END
IF~~THEN REPLY~Is it true that you sit on the council of the Ten Towns?~GOTO 2
IF~~THEN REPLY~What connection does Lonelywood have with the Iron Throne?~GOTO  IronTB2

CHAIN
IF~~THEN DBaldemr IronTB2
~We have no dealings with those merchants.~
==CVSandrJ~But you know that the Iron Throne is a merchant organisation?~
==DBaldemr~Eeh...the name seems to imply that.~
==CVSandrJ~Does it really?~
=~The people over in the Whistling Gallows belong to that organisation, did you know that?~
==DBaldemr~Listen...I told you I never met them, I did not even know of them before. Your questions start to get impertinent. Now, would you please leave.~EXIT

EXTEND_BOTTOM DTybald 30
IF~InParty("CVSandr") Global("SanHowPlot","Global",3) Global("SanAsked","LOCALS",0)~THEN REPLY~ He stayed with Baldemar while his companions lodge over at the Whistling Gallows?~DO~SetGlobal("SanAsked","LOCALS",1) ~GOTO IronTT
END

CHAIN
IF~~THEN DTybald IronTT
~Strange or maybe not? He may be the boss and stay with the mayor while his servants are at the inn. Maybe that's how those fine people handle it.~
==CVSandrJ~But you are sure they belong together?~
==DTybald~A lonely man, a noble man, coming all alone at this time of year through inpenetrable hostile land from the south and a bunch of bodyguards or whatever they are coming same day on same route? I may not be a genius, but whom do they try to fool with pretending they are different groups.~
END
++~Makes sense to me. If he spoke to none of you, then how do you know he was from the Ten Towns?~+ 31

I_C_T DWylf 6 SanIWDIronSearch
==CVSandrJ IF~InParty("CVSandr") Global("SanHOWScar","Global",3)~THEN~There may be some who search the iron ore but we are not in league with them.~
==DWylf IF~InParty("CVSandr") Global("SanHOWScar","Global",3)~THEN~Iron? That is foolish, the ore is underground where the dwarves dwell. We trade it for weapons but no tribesman will dig the dirt.~
==CVSandrJ IF~InParty("CVSandr") Global("SanHOWScar","Global",3)~THEN~(mumbles) Interesting.~END

INTERJECT DBaldemr 14 SanIWDIronSearchB
==CVSandrJ IF~InParty("CVSandr") Global("SanHOWScar","Global",3)~THEN~ *They* are in this case the Iron Throne roughnecks?~
==DBaldemr IF~InParty("CVSandr") Global("SanHOWScar","Global",3)~THEN~(Sigh) Decide for yourself when you heard my story.~
==DBaldemr IF~InParty("CVSandr") Global("SanHOWScar","Global",3)~THEN~Last month, the council met to discuss reports of a new barbarian king who was rallying the tribes to make war on the Ten Towns. As usual, none of the towns could agree on a course of action.~
==DBaldemr IF~InParty("CVSandr") Global("SanHOWScar","Global",3)~THEN~As a matter of fact, the meeting had to be adjourned prematurely to prevent arguments from escalating into fisticuffs.~
==DBaldemr IF~InParty("CVSandr") Global("SanHOWScar","Global",3)~THEN~That same night, several of the council members, myself included, met in secret to discuss the matter further. It was during this meeting that the assassination plot was proposed. Of course, I was naturally opposed to such a dishonorable solution, but the others told me I had no choice. They threatened to use their influence to remove me from the council if I didn't go along with the plan.~
==CVSandrJ IF~InParty("CVSandr") Global("SanHOWScar","Global",3)~THEN~Was an Iron Throne member part of that discussion?~
==DBaldemr IF~InParty("CVSandr") Global("SanHOWScar","Global",3)~THEN~Hm, not in person - it is difficult to put the finger on it, but I had the feeling that some members of the meeting actually acted under some influence, like someone had been giving them some specific ideas and solutions prior to our meeting.~
==CVSandrJ IF~InParty("CVSandr") Global("SanHOWScar","Global",3)~THEN~This impression may be very close to the truth, <CHARNAME>.~
END  DBaldemr 20

CHAIN
IF WEIGHT #-7~PartyHasItem("Mirror") GlobalGT("Found_Seer","GLOBAL",0) InParty("CVSandr") Global("SanHOWScar","Global",3) Global("SanIWDIronSearch","Global",7)~THEN Dangaar SanIWDIronSearchF
~Why have you come yet again, outlanders? I cannot allow you entry here. I know you were away but others were not.~
DO~SetGlobal("SanIWDIronSearch","Global",8)~
==CVSandrJ~What has happened?~
==Dangaar~More assassins sneaked into our camp at night. They killed a shaman and fighters of my own tribe.~
==CVSandrJ~Did you catch them? Are they dead?~
==Dangaar~They escaped, a man and a woman, but they will pay. We are ready to march for the settlement and get them.~
==CVSandrJ~A man and a woman, Slythe and Krystin.~
==Dangaar~You are in league with them, you die first, then we march for them.~
==CVSandrJ~Listen, listen very carefully before blood flows like some want it to flow. This man and this woman are not of the Ten Towns, they are criminals trying to force tension between the tribes and Lonelywood. They will pay pretty soon.~
=~We have discovered far more important things on the Gloomfrost and from your old seer. We now must act together and we must act wisely.~
==Dangaar~Little woman, you know much and maybe what you know is truth.~
END
++~It is very important that we see Wylfdene. ~ EXTERN Dangaar 31

I_C_T DPurvis 17 SanIWDIronSearchP
==CVSandrJ IF~InParty("CVSandr") Global("SanHOWScar","Global",3)~THEN~What is your connection to the Iron Throne?~
==DPurvis IF ~InParty("CVSandr") Global("SanHOWScar","Global",3)~THEN~None of your concern lady...even, why not tell you, there is nothing lost, now that the project has been cancelled.~
==CVSandrJ IF~InParty("CVSandr") Global("SanHOWScar","Global",3)~THEN~You mean, now after it is clear there is no iron ever to be shipped from Lonelywood?~
==DPurvis IF ~InParty("CVSandr") Global("SanHOWScar","Global",3)~THEN~You got it right, it was all about ore not leaving here while they still though there was ore here. Those bloody amateurs...bah, and then they even tried to do MY job as well. Good they're gone.~
==CVSandrJ IF~InParty("CVSandr") Global("SanHOWScar","Global",3)~THEN~They left Lonelywood?~
==DPurvis IF ~InParty("CVSandr") Global("SanHOWScar","Global",3)~THEN~Yeah, something must have changed over at Balder's Town, they were much in a hurry to go home.~
==CVSandrJ IF~InParty("CVSandr") Global("SanHOWScar","Global",3)~THEN~(Smiles) There is not only no ore around here - even some other source has been lost for them.~
==CVSandrJ IF~InParty("CVSandr") Global("SanHOWScar","Global",3)~THEN~If you were as clever as you think, you best not go there and try to collect a fee for a job you did not do.~
==DPurvis IF ~InParty("CVSandr") Global("SanHOWScar","Global",3)~THEN~Lady, you have a problem - YOU are too clever. Knowing too much can be really deadly.~END

CHAIN
IF WEIGHT #-8 ~Global("End_Portal","GLOBAL",1)~ THEN Deverard Orlex
~[Slightly in awe, almost ignoring Orlex and the party] Jerrod's Stone. I have never seen it.~
END
++~Everard? How did you get here?~EXTERN Deverard 37

I_C_T Dkressel 6 SanKressGhot
==DKressel IF~InParty("CVSandr")~THEN~And then the armies started to march against mighty Ghotal, the unvanquished leader.~
==CVSandrJ IF~InParty("CVSandr")~THEN~General Ghotal you mean, who united the orc clans against the southern invaders?~
==DKressel IF~InParty("CVSandr")~THEN~It is strange to hear one of your origin talk about General Ghotal with such words, for you he was the monster, the aggressor, the wraith of Myrkul.~
==CVSandrJ IF~InParty("CVSandr")~THEN~History is written by the winners. The truth often is another thing.~
==DKressel IF~InParty("CVSandr")~THEN~Ghotal tried to unify and protect his people but he was defeated. Orcs did not trust Orcs and Orcs were Orcs' greatest enemies. His downfall made me see the probability of my own end.~END
