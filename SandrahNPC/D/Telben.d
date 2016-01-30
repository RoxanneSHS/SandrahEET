BEGIN TELBEN

IF ~Global("Telhelpcry","GLOBAL",1)~ THEN BEGIN 0
SAY ~My head... (moan)... those orcs... Please... heal me... so many of them...oh.. ~
IF ~~ THEN REPLY ~ Hold still , little halfling, my healer will restore you in a moment. ~ DO ~SetGlobal("Telhelpcry","GLOBAL",2)~ EXIT
END

IF ~NumTimesTalkedToGT(0) HPGT(Myself,9) HPLT(Myself,20) ~ THEN BEGIN 1
SAY ~ Oh, help me please.~
IF ~~ THEN EXIT
END

IF~ Global("Telbenlie","GLOBAL",1)~ THEN BEGIN 2
SAY ~Ah, good. I still feel a little sore, but I should be able to make it back to our little village now. I am Telben Beeswaxler, by the way.~
IF ~~ THEN REPLY ~ My name is <CHARNAME>. You said orcs have done that, please tell us what happened.~ DO ~ SetGlobal("Telbenlie","GLOBAL",2)~GOTO 3
END

CHAIN
IF~~THEN TELBEN 3
~ I was out here to look for my beehives among the trees when this enormous hord of orcs was suddenly all around. At first they were not seeing me as they were too much occupied with their quarrel among themselves and with their prisoner...~
==BIMOEN2 ~ Prisoner...orcs...HENNING!~
==TELBEN ~ The RED-HAIRED HEROINE!! That is you...~
==BIMOEN2 ~ Oh, sweet little man, Telben darling, quickest tell me all. You saw my Henning! <CHARNAME>, he is alive! He is here. Quickest where is he now, where have the orcs gone?~
END
++ ~ Imoen, Imoen, calm down, let Telben tell us his tale. We will find Henning soon, pssst.~+ 4

CHAIN
IF~~THEN TELBEN 4
~ Yes, lady, he is alive and he is well. His life was hanging on a thread but the ones among the orcs that wanted to keep the hostage alive succeeded.~
==BIMOEN2 ~ OH, beware you orcs, anyone touch my Henning I will boil you in your own cooking blood, bah!~
==CVSandrJ ~ Imoen, my friend, everything will come to a good end. Now calm down, otherwise we will never hear the good halfling's tale and find out where to search for your boy.~
==TELBEN ~ These orcs where splitting into two parties when they came to stop near the tree I had climbed in hiding. One part wanted to kill your Henning and get the loot they knew of in a nearby cave. The other ones said they were afraid of someone named Devern or so, the man behind their operation, and that they would rather deliver the hostage to this man, as it was their task. ~
==BIMOEN2 ~ Good they won. Good for them, too. BLOODY ORCS!~
==CVSandrJ ~ Devern? That is another new name in this widespread conspiracy. I cannot remember to have heard of him before.~
==TELBEN ~ It was then, that a few of those orcs were leaning heavy on my small tree and I fell before their feet like a ripe apple.~
==CVSandrJ ~ Please continue - Imoen, psst, let him talk - the more we know the sooner we will find Henning.~
==TELBEN~ From their roaring and shouting I soon deducted that the fight between the groups had started because they simply lost their way. It seems that their destination was the Cloakwood Forest, but somehow they ended up here. Since they seem to have a secret quarter in one of the caves nearby, some wanted to go there, take their booty and run away, forgetting their boss and his task. They were also very much scared from a group led by a <PRO_RACE> and <PRO_HISHER> followers, which I think must be you.~
=~So they started to question me about the road to Cloakwood, that is how I got wounded so..,~
==BIMOEN2 ~ These beasts...They will pay for it, such swears Imoen the Orc Wrath!~
==TELBEN~ This is exactly how your boyfriend has described you. So listen. ~
=~ When they found that I did not know the road even when tortured, they bound me up and threw me on the ground next to Henning. Their shouting and quarreling continued, of which we understood nothing. So Henning took the oportunity to quickly tell me about his kidnapping and his knowledge that you would be hot on his trail for the rescue.~
==BIMOEN2 ~ His trust is not in vain. Henning, we are so near...~
==TELBEN~ He slipped something off his finger for me to give it to you, to show you he is well and is setting his hopes on you. ~ DO ~ GiveItemCreate("sanhenri","Imoen2",0,0,0) ~
==CVSandrJ ~ So what did the orcs finally decide? Are they here in the cave or gone to the Cloakwood?~
==TELBEN~ Orcs and decide, haha. No, the two worst of them, the leaders, split up the hord. The larger group, taking your man with them, went off to the North, to meet someone named Tazok for information about the way to the Cloakwood. The smaller group made off to the East, to some caves nearby to desert from their master.~
END
++ ~ We should then persue the larger group, but we do not know the way to the Cloakwood and this Devern guy any better than the orcs.~ +5
++ ~ As we do not know the way to the Cloakwood and this Devern guy any better than the orcs, we should pay the nearby group a visit in their cave to *question* them a bit about their master. There may be some hints of where to continue our search.~+6

CHAIN
IF~~THEN TELBEN 5
~ I will mark those caves in the East on your map. Maybe you want to *question* those guys a bit about their master first. There may be some hints of where to continue your search. Give my best regards to them - with your swords.~
DO ~ SetGlobal("GullCave","GLOBAL",1) EscapeArea()~ EXIT

CHAIN
IF~~THEN TELBEN 6
~ I will mark those caves in the East on your map. Give my best regards to those misfits when you *question* them.~
DO ~ SetGlobal("GullCave","GLOBAL",1) EscapeArea()~ EXIT
  
EXTEND_TOP Gandol 0 #1
IF~ Global("Gullcave","GLOBAL",0) Global("SANIMONASHINT","GLOBAL",17)InParty("Imoen2") ~ THEN REPLY ~ Have you encoutered a large group of orcs here recently?~ GOTO San22
END

CHAIN
IF ~~ THEN Gandol San22
~ Orcs?~
==Bimoen2~Don't be dumb-playin', little man, you know what orcs are, dontcha?~
==Gandol~Well, yes, but their kin don't come here at all.~
==Bimoen2~Oh, forget those halflings, <CHARNAME>, we're only wastin' time while Henning awaits us...~
==Gandol~I have not seen orcs, but...~
==Bimoen2~What? Quickest keep talkin', little man!~
==Gandol~There have been some strange noises in the fruit orchards south of the village some time ago - and our friend Telben is overdue from inspecting his beehives down there...~
==Bimoen2~<CHARNAME>, watcha still standing there open-mouthed, come, get moving!!~
EXIT
  



                          

