BEGIN CVTiamal
BEGIN CVSharg

CHAIN
IF~Global("Talos25R","GLOBAL",2)~THEN CVTalos reveil1
~It's good to meet old friends from time to time and see how they progress.~
DO~SetGlobal("Talos25R","GLOBAL",3) IncrementGlobal("SanGodInvolve","GLOBAL",1)~
==CVSan25J~We had the feeling that the gods were forbidden by the Overlord AO to mingle in the Bhaalspawn issue - but I anticipated already that some of them would find a loophole to sneak in anyway.~
==CVTalos~Hohoho, I have become to like you in some way, clever little Mystra...It's good to study closely the ones who are maybe aiming to be among us celestials one day...but I am diverting.~
==CVSan25J~All of this chaos around Saradush is much to your liking, Talos. What is your role in it?~
==CVTalos~Your own presence in this place, little Mystra! You gave the answer yourself already a minute ago, the *loophole*.~
==CVSan25J~My presence at <CHARNAME>'s side is not by the command of my goddess. I came into this plot purely through my human progress.~
==CVTalos~Yes, yes, and by that same coincidence you are Elminster's child and from Midnight's bloodline, not to mention Cyric. You may be honest, child, but at least your presence has given others of the Pantheon the chance to support their champion in the race in a limited way.~
==CVSan25J~AO wants to keep the balance, I understand. Even if I am myself not representing Mystra he allows others to have some agent here as well?~
==CVTalos~Well, as you just kicked my player off the field today, I may admit such a, mh, *silent permission*. The proceedings down here in the end will shape our own future in a way, so the celestial interest should be understandable.~
==CVSan25J~So you favoured that chaotic Fire Giant - who else would try to support their *champion* as you phrase it?~
==CVTalos~Be sure I won't tell you that. I told you enough to occupy your little brain cells for a bit, my clever friend. I am sure the challenge is not too high for you.~
END
++~Are we nothing but pawns in a game here, Lord of the Chaos?~+ reveil2

CHAIN
IF~~THEN CVTalos reveil2
~Bhaalspawn, you are much more than that and you know it! You will shape the outcome of the plot.~
=~Your little Mystra by your side is the odd element - she and the unknown secret that lurks behind her...~
==CVSan25J~*A traitor in your midst* - Do not try to seed mistrust between companions, Talos. My loyalty to <CHARNAME> will not break. It is with <PRO_HIMHER> that we will end this *game* and achieve the solution that serves the Prime. Our plane is not a playground for the gods and we are not their pawns!!~
==CVTalos~Maybe such is true for you, little Mystra, seeing the proof you have given us today...I wonder who else will get the story right...interesting.~
==CVSan25J~You still think it is a game? You just lost a round, is it that for you?~
==CVTalos IF~DifficultyGT(NORMAL)~THEN~ENOUGH! My anger is growing - the Storm is approaching.~DO~StartCutSceneMode() Wait(2) ScreenShake([905.1965],20) ApplyDamagePercent(Player1,49,CRUSHING) Wait(2) ApplyDamagePercent(Player2,49,CRUSHING) Wait(2) ApplyDamagePercent(Player3,49,CRUSHING) Wait(2) ApplyDamagePercent(Player4,49,CRUSHING) Wait(2) ApplyDamagePercent(Player5,49,CRUSHING) Wait(2) ApplyDamagePercent(Player6,49,CRUSHING) Wait(2) EndCutSceneMode() ReallyForceSpell(Myself,DRYAD_TELEPORT)~
==CVTalos IF~DifficultyLT(HARD)~THEN~ENOUGH! My anger is growing - the Storm is approaching.~DO~StartCutSceneMode() Wait(2) ScreenShake([905.1965],20) ApplyDamagePercent(Player1,70,CRUSHING) Wait(2) ApplyDamagePercent(Player2,70,CRUSHING) Wait(2) ApplyDamagePercent(Player3,70,CRUSHING) Wait(2) ApplyDamagePercent(Player4,70,CRUSHING) Wait(2) ApplyDamagePercent(Player5,70,CRUSHING) Wait(2) ApplyDamagePercent(Player6,70,CRUSHING) Wait(2) EndCutSceneMode() ReallyForceSpell(Myself,DRYAD_TELEPORT)~EXIT



CHAIN
IF~Global("CVTiamal","AR6000",1)~THEN CVTiamal reveil3
~Bhaalspawn! Mystra's child, greetings!~
DO~SetGlobal("CVTiamal","AR6000",2) IncrementGlobal("SanGodInvolve","GLOBAL",1)~
==CVSan25J~Greetings, *Dragon*, or may I anticipate that you are not - maybe another player who lost her pawn?~
==CVTiamal~Wit and courage, little priestess. Such was expected from you. You are right and wrong at the same time. I am Tiamat.~
==CVSan25J~The queen and goddess of the dragons herself! Saying that I erred may indicate that Abazigal was not your *champion*.~
==CVTiamal~Perfectly right. The abomination of Bhaal tried to impose as our kin but the blood of the murder god is not of our interest.~
==CVSan25J~Still you were deeply interested in him just in case he would be the winner and a figure to be dealt with in the future.~
==CVTiamal~Your wisdom and your insight are a weapon matching that hammer you carry for a good reason. It was not up to Mystra to nominate a champion for this challenge but know that your intrusion is not criticized by all. There are some who see the chance of a positive outcome from the Bhaalwar with you and <CHARNAME> involved.~
END
++~What a change! The first encouraging words I heard for a long time in this struggle...delivered by a dragon of some *nasty* reputation.~+ reveil4

CHAIN
IF~~THEN CVTiamal reveil4
~Trust only your own judgement of the creatures you meet, Godchild.~
DO~GiveItemCreate("chan20",Player1,1,0,0)~
==CVTiamal~Yes, and the judgement of the loyal counsellor at your side.~
DO~ActionOverride("CVSandr",AddSpecialAbility("cvdra11"))  ActionOverride("CVSandr",AddSpecialAbility("cvdra12"))~
==CVTiamal~Live long and prosperous.~
DO~SetGlobal("Leave","LOCALS",2)~EXIT



CHAIN
IF~Global("CVShar","AR6108",1)~THEN CVSharg reveil5
~Give me any good reason why I shall not destroy you here and now!~
DO~IncrementGlobal("SanGodInvolve","GLOBAL",1)~
==CVSan25J~Let me guess, dark lady, we have just taken your *champion* out of the race.~
==CVSharg~AAARGH...~
==CVSan25J~My goddess and yourself should not try to affect each other, for all our sake. You and Mystra complement each other, Shar.~
==CVSharg~You see clear and sharp, daughter of the long bloodline. Ever since the Weave was split in the time of Mystril's fall, she and me needed to find a way to exist side by side.~
==CVSan25J~We did what we had to do with Sendai - it was not done for Mystra nor was it done against Shar. None of you should be involved in this at all.~
==CVSharg~I am glad you are one who can be reasoned with. I would agree if it were not for your own involvement and thus Mystra's involvement here.~
==CVSan25J~It was never in my goddess' interest nor her command that I am at <CHARNAME>'s side. As your involvement has ended today as well we should separate peacefully.~
==VICON25J IF~InParty("Viconia")~THEN~My goddess, she speaks the truth. She always has and she has been true to your servant at all times.~
==CVSharg IF~InParty("Viconia")~THEN~Viconia, my priestess, I trust your judgement. Is she the one with Khalindra's blood you were to search?~
==VICON25J IF~InParty("Viconia")~THEN~She is and she judges no one by race or faith but only by a person's deeds and alignment.~
==CVSharg IF~InParty("Viconia")~THEN~Viconia, you will be rewarded for your service as you deserve. You have my permission to continue with them.~
==CVSharg~Let me hear the Bhaalspawn's opinion on what his companions' wish.~
END
++~I seek no conflict with you, Shar. Let us part peacefully.~DO~SetGlobal("CVShar","AR6108",2)~EXIT
++~You were the one to seek for this conflict, you will pay for it.~DO~SetGlobal("CVShar","AR6108",3)~EXIT