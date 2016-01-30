BEGIN SAMYSTP1

IF~ AreaCheck("CVElm2")~ THEN BEGIN Mystpr1
SAY ~ We swear allegiance to the Lady, Mistress of the Mysteries, Mystra.~
IF~InParty("CVSandr") Global("SanWDTempleHint","GLOBAL",0)~THEN GOTO Mystpr2
IF~!InParty("CVSandr")~THEN EXIT
IF~InParty("CVSandr") GlobalGT("SanWDTempleHint","GLOBAL",1)~THEN GOTO Mystpr3
END

IF~~THEN BEGIN Mystpr2
SAY ~ Greetings, Mylady Sandrah, Grandchild of Midnight, Guardian of the Cloak. It is a pleasure to greet you at your temple.~
IF~~THEN EXTERN CVSANDRJ SanWDTemple1
END

IF~~THEN BEGIN Mystpr3
SAY ~ Enjoy your stay, Mylady Sandrah, Grandchild of Midnight, Guardian of the Cloak. Everything is to your service. You may leave a small donation for the Temple if you require any service.~
IF~~THEN REPLY ~ Chosen Priestess Rhathona, we greet you but we have no need for the Temple's services today.~EXIT
IF~~THEN REPLY ~ Thank you for the warm welcome, Chosen Priestess Rhathona, what does your house offer to us?~ DO ~ StartStore("CVMystem",LastTalkedToBy(Myself))~ EXIT
END



