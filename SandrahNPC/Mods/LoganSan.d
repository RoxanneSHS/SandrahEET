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
==CELOGAN~Greetings, Mylady Sandrah. I had...mh...hoped you would find a way to come to Trademeet again. Might I impose a moment... in private?~
==BSANDR~Greetings, Lord Logan. Why should I refuse the request of a respectable gentleman?~
==CELOGAN~Let me lead on, mylady.~ DO~ StartCutSceneMode() StartCutScene("SanLogan")~EXIT

CHAIN
IF WEIGHT #-9~Global("SanLogLT","GLOBAL",1)~THEN CELOGAN SanLog2
~ Very well, I am glad you are here even as we are little more than passing strangers. Ah no, I scarcely know where to begin but I feel I must take my chance. Should I say you are lovely? Surely, many have said the same.~
DO~SetGlobal("SanLogLT","GLOBAL",2)~
==BSANDR~You can be charming when you try. And words heard before may get a different meaning any time they are spoken depending on who says them and for what intend.~
=~ But are we just passing strangers, Lord Logan, or are we able to break out of the harness of daily responsibilities for a moment that may be a very precious one? ~
==CELOGAN~I am but a humble soldier, madam, doing only that which is my duty and nothing more.~
==BSANDR~Nothing more? (Her smile seems to encourage him.) I very much doubt that. ~
==CELOGAN~What more could I say? Words could not contain my meaning nor the fairness of your face surely. ~
==BSANDR~You are of noble family and handsome, you must be used to such attention yourself. ~
==CELOGAN~I feign nothing and, if you are sincere in your implication, then yes, I am used to the attention.~
==BSANDR~You mentioned you are a man of deeds rather than a wielder of words... Logan? ~
==CELOGAN~Sandrah? ~
==BSANDR~Less words and a finer meaning. ~
==CELOGAN~I have a decent red that I've been saving against the day I met a woman who saved my hearth and home. I would be happy to share it with you and lift a glass in your honor.~
==BSANDR~Or maybe a walk? If it does not rain, it might be nice to get out and see the stars and take in the night air. ~
==CELOGAN~Yes, milady, I mean..Sandrah - this evening. I shall look forward to it. ~DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT