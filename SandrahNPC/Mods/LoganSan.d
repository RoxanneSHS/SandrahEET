APPEND BSandr
IF~Global("SanFemTeosHad","ar0411",1) ~ THEN BEGIN SanHowWasTeo1
SAY~ And? - How was that cowled one - uncowled?~
IF~~THEN REPLY~ Teos?~ DO~SetGlobal("SanFemTeosHad","ar0411",2) ~ GOTO SanHowWasTeo2
END

IF~Global("SanFemTeosHad","LOCALS",2) ~ THEN BEGIN SanHowWasTeo2
SAY~ Are there more of them hidden in the secret chambers of this sphere?~
IF~~THEN REPLY~ Studying spells is an interesting pastime...I know why YOU never miss a chance, darling.~ EXIT
IF~~THEN REPLY~ There is a kind of magic that requires no licence...but I surely do not need to convince YOU of that fact.~ EXIT
IF~~THEN REPLY~ Interested in him yourself? Sorry, but I have the exclusive licence to use THIS magic...~EXIT
END
END


EXTEND_BOTTOM CELOGAN 80

IF ~
OR(2)
!Global("FHFMeetFaren","GLOBAL",1)
GlobalGT("FHFarenFree","GLOBAL",0)
OR(2)
!Global("M#AmberKidnap","GLOBAL",4)
Global("M#LoganKidnapResponse","Locals",1)
InParty("CVSandr")
Global("SanLogLT","GLOBAL",0)
~ THEN EXTERN CELOGAN SanLog1
END


CHAIN
IF~~THEN CELOGAN SanLog1
~(Logan Coprith's face visibly brightens as he sees Sandrah in your company)~
DO~SetGlobal("SanLogLT","GLOBAL",1)~
==CELOGAN~Greetings, My lady Sandrah. I had...mh...hoped you would find a way to come to Trademeet again. Might I ask for a moment of your time... in private?~
==BSANDR~Greetings, Lord Logan. Why should I refuse the request of a respectable gentleman?~
==CELOGAN~Let me lead on, my lady.~ DO~ StartCutSceneMode() StartCutScene("SanLogan")~EXIT

CHAIN
IF WEIGHT #-9~Global("SanLogLT","GLOBAL",1)~THEN CELOGAN SanLog2
~ It is not my way to open easily to a passing stranger. With you however I feel I must take my chance or regret it. You are lovely and strong at the same time. I am sure you hear compliments like this every day.~
DO~SetGlobal("SanLogLT","GLOBAL",2)~
==BSANDR~You can be charming when you try. And words heard before may get a different meaning any time they are spoken depending on who says them and for what intend.~
=~ Be assured I grab a moment that may be a very precious one rather than regret my hesitation when it is passed. ~
==CELOGAN~Since I came to Trademeet I became a man of routine doing only what is my duty day in day out...~
==BSANDR~Nothing more? (Her smile seems to encourage him.) I very much doubt that. ~
==CELOGAN~I feel that drowning you in compliments will waste both our time. You are well aware of your impact on men. ~
==BSANDR~You are of noble family and handsome, you must be used to such attention yourself. ~
==CELOGAN~(Smiles) Why hide from one like you, yes, I am used to the attention.~
==BSANDR~You are more a soldier than a merchant and as such a man of deeds rather than a wielder of words, right? ~
==CELOGAN~Sandrah? ~
==BSANDR~Time for a frontal attack. ~
==CELOGAN~(Nods) You will have no problem to explain the next hour to your companions outside..?~
==BSANDR~Or may I propose a less rushed rendezvous tonight? ~
==CELOGAN~Yes, milady, I mean..Sandrah - this evening. I shall look forward to it. ~DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT