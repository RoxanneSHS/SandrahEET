APPEND BSandr

IF~Global("SanKido","GLOBAL",1)~THEN BEGIN KidoJoin1
SAY~(Sandrah's normally sweet face that can enlighten even a dungeon is stony as she approaches you this time.)~
=~Are you willing to share your motivation to add a follower of Cyric to our company, *my love*?~
IF~~THEN REPLY~ It was a counsellor I know well who advised me often that it may be of advantage to keep such individuals under close observations rather than to let them run around causing uncontrollable havoc.~ GOTO KidoJoin2
IF~~THEN REPLY~ He makes the impression of a rather harmless jester to me. Cyric or no Cyric - this group certainly needs a good bard to cheer us up.~GOTO KidoJoin2
END

IF~~THEN BEGIN KidoJoin2
SAY~I see. You can be sure that I will keep my eyes open on that guy. Cyric will have no chance to infiltrate us through him or have any chance to do harm while I am around.~
IF~~THEN REPLY~ I was counting on your support, Sandrah.~ DO~SetGlobal("SanKido","GLOBAL",2)RealSetGlobalTimer("SanKidoTa","LOCALS",1600)~EXIT
END

IF~Global("SanKidoPlot","LOCALS",1)~ THEN BEGIN KidoPlot1
SAY~ (Sandrah takes you aside when she notices that Kido is occupied with an attempt to impress a young woman with his terrible sing song.)~
=~You were right to take Kido with us, only this way we were able to learn about this plot of the Prince of Lies and are in a position to prevent major damage.~
IF~~THEN REPLY~ Are you asking me to kill one of my comrades, counsellor?~ GOTO KidoPlot2
IF~~THEN REPLY~ You taught me to keep such individuals under close observations rather than to let them run around. Are we using our usual strategy here, pretending to play their game until we find the right moment to step in?~ GOTO KidoPlot2
IF~~THEN REPLY~ Ha, this horrible town will get the temple it deserves!~DO~IncrementGlobal("Sanpoints","GLOBAL",-4) SetGlobal("SanKidoPlot","LOCALS",2)~EXIT
END

IF~~THEN BEGIN KidoPlot2
SAY~To kill Kido will solve nothing, as this town is full of candidates who will take this mad task instead of him. It is best for us to have control over the situation and act when the moment comes.~
IF~~THEN REPLY~I am glad we agree on that strategy, my counsellor.~ DO~ SetGlobal("SanKidoPlot","LOCALS",2)~EXIT
END
END

APPEND CVSandrJ
IF WEIGHT #-6~IsGabber(Player1) Global("Kidopersonalquest","GLOBAL",4)Global("SanKidoPlot","LOCALS",2)~THEN BEGIN Kidoplot3
SAY~You look concerned, my Bhaalspawn.~
IF~~THEN REPLY~Don't call me that, please. Can you help me with this Cyric dilemma? We will not sacrifice an innocent child, I'd rather kill Dolf and Kido right away.~ DO~SetGlobal("SanKidoPlot","LOCALS",3)~GOTO Kidoplot4
IF~~THEN REPLY~ You call me by that name now. Well, I will act accordingly.~DO~SetGlobal("SanKidoPlot","LOCALS",66)~EXIT
END

IF~~ THEN BEGIN Kidoplot4
SAY~ The Prince of Lies and his followers, well versed in illusions, deceptions and intrigue...let us see if not righteous people can use it to their advantage.~
IF~~THEN REPLY~You want to defeat them with their own weapons, ha, after all you are his granddaughter in some way.~GOTO Kidoplot5
END

IF~~ THEN BEGIN Kidoplot5
SAY~ I will not comment on that family aspect, <CHARNAME>, you know my opinion on it well enough.~
=~The part of using their own weapons, however is absolutely correct. Let us prepare a little illusion for them. Am I not an innocent little girl still, my love?~
IF~~THEN REPLY~Well, I know how *innocent* you really are - you do not plan to sacrifice yourself?~
GOTO Kidoplot6
END

IF~~ THEN BEGIN Kidoplot6
SAY~ No one will be sacrificed for Cyric's plot. Illusions, my dear. For a follower of Cyric I am just innocent enough and with a bit of my magic I can play the role of the victim quite well. There will be no danger for anyone and we can infiltrate the new temple further.~
=~Whenever you are ready, let us go to the slums and play our little comedy for them.~
IF~~THEN EXIT
END
END

APPEND MWDOLF
IF WEIGHT #-7~Global("Kidopersonalquest","GLOBAL",4) PartyHasItem("CVChSacr") ~THEN BEGIN FakeSan
SAY~Ah, she will do just fine. Quick, give her to me, so I can start.~
IF~~THEN DO~ SetGlobal("Kidopersonalquest","GLOBAL",5)
TakePartyItem("CVChSacr")
AddXPObject(Player1,12500)
AddXPObject(Player2,12500)
AddXPObject(Player3,12500)
AddXPObject(Player4,12500)
AddXPObject(Player5,12500)
AddXPObject(Player6,12500)
MoveToPointNoInterrupt([426.285])
ClearAllActions()
StartCutSceneMode()
StartCutScene("CVCySacr") ~ EXIT
END
END

CHAIN
IF WEIGHT #-2~ Global("Kidopersonalquest","GLOBAL",21)~ THEN SLILMAT Return
~ I thank you, priestess of Mystra, not in the name of my god who means nothing to you but in the name of the people in this quarter. It is good to return to continue my work.~
DO~SetGlobal("Kidopersonalquest","GLOBAL",22)~
==BSANDR~Your work will suit them better than Cyric's any day. Maybe you will also help a bit of correcting the views in this city towards my goddess who has allowed me to use the Weave's power for my deed.~
==SLILMAT~ You will always be welcomed to the restored temple, my friends.~
DO~EscapeAreaMove("ar0408",426,285,2) ~EXIT

CHAIN
IF ~ Global("SanKido","GLOBAL",3)~ THEN BSANDR SanKido1
~ (Sandrah watches Kido suspiciously as the jester approaches her.) ~
DO ~ SetGlobal("SanKido","GLOBAL",4) RealSetGlobalTimer("SanKidoTa","LOCALS",1600) ~
== MWBKid ~Even you will bow to the greatness of Cyric - proud, over-proud priestess.~
== BSANDR ~ I do not even bow to my own goddess and she surely never bowed to Cyric.~
== MWBKid ~Hey, hey, she was his wife, his mate...fine, maybe she did not bow to him, but she followed him for sure...~
== BSANDR ~ Actually it was her that was leading their common operations, even if in love they were equals.~
== MWBKid ~Hurray, take this as an omen of Cyric...or maybe as one of Mystra, it should not matter, as long as you support me like your Goddess supported Cyric.~
== BSANDR ~ (Mumbles.) For the benefit of <CHARNAME> - I must find a way to cure this man's madness...~
EXIT

CHAIN
IF ~ Global("SanKido","GLOBAL",5)~ THEN BSANDR SanKido2
~ ...is utterly absurd, Kido!~
DO ~ SetGlobal("SanKido","GLOBAL",6) RealSetGlobalTimer("SanKidoTa","LOCALS",1600) ~
== MWBKid ~Why? You are his granddaughter, his heiress...~
== BSANDR ~ I am the granddaughter of the adventurer Cyric. My heritage goes back to the man, when he was still in his human form and before he was elevated by Ao to godhood. I am not the granddaughter of your mad god, Kido.~
== MWBKid ~Blablabla...what is the use of that detail, Sandrah. You are of HIS blood, and that means that fate has sent me to your side as your natural companion so we both can rise in Cyric's name to his heritage...~
== BSANDR ~ God's have no heirs, Kido. Sometimes an usurper claims their power and domain, but that is a different story.~
== MWBKid ~Idiotic! The scheme is so clear, even a female must be able to see it - you and me, Cyric and Mystra. We are made for each other.~
== BSANDR ~ (Sigh) Am I this mad jester's lover by now already...? ~
== MWBKid ~You should pray sometimes, priestess, then your goddess will surely tell you she wants you to follow her.~
== BSANDR ~ I am already following her, Kido, as well as the way set out by the woman Midnight she had been before.~
== MWBKid ~Then how can you be so blind, Sandrah. If you follow Midnight - see what became of her, hehe, Cyric's lover and a goddess. The logic is infallible, you have to admit it.~
== BSANDR ~I have no intention to follow Midnight all the way, jester, not to the Pantheon and not to your greasy bedroll.~
EXIT 

CHAIN
IF ~ Global("SanKido","GLOBAL",7)~ THEN BSANDR SanKido2
~ (It has been long since Sandrah last found a chance to play some music but today she has swept the cobwebs from an old pianola sitting in a forgotten corner of the inn and starts to play the notes of a slow and haunting tune.)~
DO ~ SetGlobal("SanKido","GLOBAL",8) RealSetGlobalTimer("SanKidoTa","LOCALS",1600) ~
== MWBKid ~HEY! That's great...you're a musical girl just to the delight of a bard. Now I can sing along one of my compositions to your playing.~
== BSANDR ~ (Stops playing and closes the keyboard lid with a bang.)~
== MWBKid ~What's wrong?~
== BSANDR ~Your tune and mine will never add up to a duet, jester, be assured.~
== MWBKid ~We haven't even tried, Sandrah. Music is my life, it is the gift that the great Cyric has given me to win your heart.~
== BSANDR ~You cannot honestly believe that you can win my heart with a gift provided by the foul Lord of Strife.~
== MWBKid ~Music is a pure essence, knowing neither good nor evil.~
== BSANDR ~Music yes, but when you open your mouth to sing I only hear the squeaking of tortured souls.~EXIT

CHAIN
IF~Global("Kidopersonalquest","GLOBAL",19)~ THEN BSANDR SanKidoDolfEnd
~ Kido, you surely agree with me that this demented priest has served his purpose and has become utterly useless for us.~
DO ~ SetGlobal("Kidopersonalquest","GLOBAL",20)~ 
== MWBKid ~He will spread the word of the Black Sun in these slums...~
== BSANDR ~Bah, those who are worth hearing them have heard them already. I have the feeling today is a good day for another sacrifice to the Kingdom of Lies and Betrayal. Even Cyric would be delighted by this solution.~
=~With Mystra's aid!~
DO~ StartCutSceneMode() Wait(2) CreateVisualEffectObject("SPHLYBLS","CVSandr") Wait(2) Kill("MWDolf") AddXPObject("CVSandr",22500) EndCutSceneMode()~ EXIT

CHAIN
IF ~ Global("SanKido","GLOBAL",9)~ THEN BSANDR SanKidoHelp
~ (Sandrah pretends to read her ever present toom when Kido slyly approaches her.)~
DO ~ SetGlobal("SanKido","GLOBAL",10) RealSetGlobalTimer("SanKidoTa","LOCALS",1600) ~
== MWBKid ~ So far you have rebuked all my efforts to find a common ground for our relationship, priestess.~
== BSANDR ~There is no such thing as *our relationship*.~
== MWBKid ~ More of it than your stubborn mind guesses - listen closely, you will not regret it.~
=~That toom and all your lore surely make it obvious to you that Cyric has taken Bhaal's portfolio as God of Murder. Damned Alaundo, but I do not wish for Bhaal to return. He might become again a threat to my muse. It was you and <CHARNAME> I searched for, because you might just have the power to defeat Bhaal.~
== BSANDR ~A common goal, even if I dislike your selfish motif.~
== MWBKid ~ Ha, who would suffer more from Bhaal's return than you and your goddess?~
== BSANDR ~All of Faerun will suffer like it did in the old days.~
== MWBKid ~Words, words...let's not discuss reasons but just goals. We want to stop Bhaal's return so we are logical allys. If you are to fight him, we can work together. With Cyric on our side we will defeat Bhaal!~
== BSANDR ~Why should <CHARNAME> and me need Cyric when we have much stronger help on our side?~
== MWBKid ~Forget your petty Mystra, she needed Cyric once before to succeed, have you forgotten that?~
== BSANDR ~History rarely repeats itself in exactly the same way, Kido.~
== MWBKid ~Stubborn like her granny but the jester has the last laugh...dum-di-dum-di-dum...~EXIT



