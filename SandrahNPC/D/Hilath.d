BEGIN Hilath


IF ~NumTimesTalkedToGT(0) Global("Katcut","GLOBAL",4) PartyHasItem("HIBABA") ~THEN BEGIN HilBabRes
SAY~ Oh, my little baby, the only thing still left for me in my life, now that his poor father is gone. Thank you Sandrah, thank you <CHARNAME>, thank you all. I will tell all in Waterdeep about your great deed.~
IF ~!Dead("Kattah") ~THEN REPLY~But the villain is still on the run. Waterdeep still has a problem.~DO ~ReputationInc(1)~GOTO HilHint
IF ~Dead("Kattah") ~THEN REPLY ~Waterdeep will be save from this villain now.~GOTO HilHint2
END

IF ~NumTimesTalkedToGT(0) !AreaCheck("CVROA1") GlobalGT("Katcut","GLOBAL",4) GlobalLT("KatDef","GLOBAL",2)~THEN BEGIN HilResB
SAY ~I thank you so much for what you have done.~
IF~~THEN EXIT
END

IF ~NumTimesTalkedToGT(0) Global("KatDef","GLOBAL",2)~THEN BEGIN KatDef1
SAY ~<CHARNAME>, Sandrah, friends, the mighty Khattark has finally been defeated. What a bright day for us all in Waterdeep. Thank you once again. Your heroic deed will not be forgotten here.~
IF~~THEN DO ~ReputationInc(1) SetGlobal("KatDef","GLOBAL",3) ~ EXIT
END

CHAIN
IF~NumTimesTalkedTo(0)
Global("Katcut","GLOBAL",2) ~THEN Hilath HilathQ1
~Oh, dear <PRO_SIRMAAM>, have you seen that bandit Khattark!~
= ~I think my husband is dead and the thug took my dear baby boy with him...~
== CVSandrJ ~Dear lady Hilath, calm down. I see what I can do. (Kneels down and inspects the husband's body.) ~
= ~Lady, you must be strong, your husband is beyond any healer's skills.~
== HILATH ~Lady Sandrah, I recognise you. But what a bad day to return to Waterdeep. The mighty Khattark terrorises the area and all who have the need to travel.~
= ~And now he has killed poor Jonathan and grabbed my baby from my arms...~
== CVSandrJ ~Do not worry, Hilath, our group with <CHARNAME> will not stand idle when harm is done. The bandit ran off to that hut over there. We will get him, right, <CHARNAME>?~
END
++ ~Of course, lady. Your baby will be safely back in your arms in a short while.~+ Hilqtaken
++ ~This mighty Khattark looked a bit too dangerous for us. We better get you to Waterdeep and let the militia there do the job.~DO ~ReputationInc(-10) ~+ Hilqrej
++ ~As lady from the City of Splendour you will know that everything can be done - for the right price, my lady...~ DO ~ReputationInc(-1) ~+ Hilqtaken

CHAIN
IF ~~THEN Hilath Hilqtaken
~I will wait here beside my dead husband for your return. Please hurry, and be all blessings with you, <CHARNAME>.~
END
++ ~It will not take long.~DO ~SetGlobal("Katcut","GLOBAL",3)~
EXIT

CHAIN
IF ~~THEN Hilath Hilqrej
~Sandrah, that cannot be true! I do not believe you will leave me alone at this moment of need. When the militia returns, my son will surely be dead already.~
== CVSandrJ ~Do not worry, my lady. I will go after Khattark, your son will be with you again shortly. These cowards will return to the Sword Coast without me.~
END
++ ~But, Sandrah...(Sandrah turns away without taking any further notice of you).~DO ~
SetGlobal("Katcut","GLOBAL",11) ~
EXIT

CHAIN
IF ~NumTimesTalkedToGT(0) Global("Katcut","GLOBAL",3)~THEN Hilath NotTried
~Please hurry to the hut, rescue my baby.~
EXIT

CHAIN
IF~~THEN Hilath HilHint
~I saw him leave the hut in a hurry and run towards the town. He may try to hide somewhere in this great busy city rather than to hide out alone in the woods.~DO ~AddJournalEntry(@104,QUEST) TakePartyItem("HIBABA")EscapeAreaMove("CVWDRE",583,540,3) ActionOverride("Hilhus",DestroySelf())~
EXIT

CHAIN
IF~~THEN Hilath HilHint2
~He is dead but the rest of his evil company may still be hiding in Waterdeep somewhere.~ DO ~AddJournalEntry(@105,QUEST) TakePartyItem("HIBABA")EscapeAreaMove("CVWDRE",583,540,3) ActionOverride("Hilhus",DestroySelf())~EXIT

CHAIN
IF ~NumTimesTalkedToGT(0) Global("Katcut","GLOBAL",4) PartyHasItem("HIBABD") ~THEN Hilath HilBabDe
~First my husband is killed and now you bring me my dead baby. Over-confident fools, he could still be alive if you had not acted so violent. I cannot bear to see you any longer. ~DO ~TakePartyItem("HIBABD") EscapeAreaMove("CVWDRE",583,540,3) ReputationInc(-2)SetGlobal("Katcut","GLOBAL",10)SetGlobal("KatDef","GLOBAL",1)~
EXIT

