BEGIN SAMYSTP2

IF~True()~THEN BEGIN Mystprg
SAY ~We swear allegiance to the Lady, Mistress of the Mysteries, Mystra.~
IF~InParty("CVSandr") Global("SanWDTempleRha","GLOBAL",0)~THEN GOTO Mystprg2
IF~!InParty("CVSandr")~THEN EXIT
IF~InParty("CVSandr") GlobalGT("SanWDTempleRha","GLOBAL",0)~THEN GOTO Mystprg3
END

IF~~THEN BEGIN Mystprg2
SAY ~Greetings, Milady Sandrah, Grandchild of Midnight, Guardian of the Cloak. It is a pleasure to greet you at your temple. You should talk to the Chosen Priestess Rhathona during your stay.~
IF~~THEN DO ~SetGlobal("SanWDTempleRha","GLOBAL",1)~EXIT
END

IF~~THEN BEGIN Mystprg3
SAY ~Enjoy your stay, Milady Sandrah, Grandchild of Midnight, Guardian of the Cloak. Everything is to your service.~
IF~~THEN EXIT
END