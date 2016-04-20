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

//___________________________________________________

CHAIN
IF WEIGHT #-5~Global("SanIWDBrage","Global",1)~THEN Laryss IWDBrag1
~Kind strangers, so we meet again far away from the Sword Coast.~
DO~SetGlobal("SanIWDBrage","Global",2)~
==CVSandrJ~Laryssa, I remember you, Brage's sister. We heard a rumour in Easthaven already that Brage went up north in search of his sanity.~
==Laryss~That idea he found when he hunted that pirate, it seems to possess him still. He thinks there is a cure for him...he left Nashkel because he thinks his destiny is in the far Stormhorns. ~
==CVSandrJ~You are following him? Do you try to bring him back to the temple?~
==Laryss~Not anymore. The situation up here prevents my further venture. I need to return to the south. But you - I heard you investigate the proceedings up here, you may find Brage by chance.~
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
==CVSandrJ IF~InParty("CVsandr")~THEN~So Yxunomei's *Old Enemy* has been observing us all the time. With her being tanar'ri you then must be the baatezu in this vendetta. But with her out of the way, why are you still here?~
==Darundel IF~InParty("CVsandr")~THEN~Mortal girl, you nearly outsmarted me - but I will not tell you what you want to know. No.~
END DArundel 90

I_C_T DSaablic 2 SanIWDRWiz
==CVSandrJ IF~InParty("CVsandr")~THEN~A red wizard not even trying to hide his evil face, how refreshing. Or is that the true appearance of your order and you just disguise as humans on other occasions.~
==DSaablic IF~InParty("CVsandr")~THEN~My situation here...it is so desperate that I'd even ask a priestess of (spit) Mystra (cough) for assistance.~
==CVSandrJ IF~InParty("CVsandr")~THEN~I am afraid, our good-hearted <CHARNAME> may even continue to listen to you.~END