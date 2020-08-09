BEGIN SAMYSTP1

IF~AreaCheck("CVElm2")~THEN BEGIN Mystpr1
SAY @0
IF~InParty("CVSandr") Global("SanWDTempleHint","GLOBAL",0)~THEN GOTO Mystpr2
IF~!InParty("CVSandr")~THEN EXIT
IF~InParty("CVSandr") GlobalGT("SanWDTempleHint","GLOBAL",1)~THEN GOTO Mystpr3
END

IF~~THEN BEGIN Mystpr2
SAY @1
IF~~THEN EXTERN CVSANDRJ SanWDTemple1
END

IF~~THEN BEGIN Mystpr3
SAY @2
IF~~THEN REPLY @3EXIT
IF~~THEN REPLY @4DO ~StartStore("CVMystem",LastTalkedToBy(Myself))~EXIT
END



