BEGIN SAMYSTP2

IF~True()~THEN BEGIN Mystprg
SAY @0
IF~InParty("CVSandr") Global("SanWDTempleRha","GLOBAL",0)~THEN GOTO Mystprg2
IF~!InParty("CVSandr")~THEN EXIT
IF~InParty("CVSandr") GlobalGT("SanWDTempleRha","GLOBAL",0)~THEN GOTO Mystprg3
END

IF~~THEN BEGIN Mystprg2
SAY @1
IF~~THEN DO ~SetGlobal("SanWDTempleRha","GLOBAL",1)~EXIT
END

IF~~THEN BEGIN Mystprg3
SAY @2
IF~~THEN EXIT
END