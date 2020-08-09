BEGIN TELBEN

IF ~Global("Telhelpcry","GLOBAL",1)~THEN BEGIN 0
SAY @0
IF ~~THEN REPLY @1DO ~SetGlobal("Telhelpcry","GLOBAL",2)~EXIT
END

IF ~NumTimesTalkedToGT(0) HPGT(Myself,9) HPLT(Myself,20) ~THEN BEGIN 1
SAY @2
IF ~~THEN EXIT
END

IF~Global("Telbenlie","GLOBAL",1)~THEN BEGIN 2
SAY @3
IF ~~THEN REPLY @4DO ~SetGlobal("Telbenlie","GLOBAL",2)~GOTO 3
END

CHAIN
IF~~THEN TELBEN 3
@5
==BIMOEN @6
==TELBEN @7
==BIMOEN @8
END
++ @9+ 4

CHAIN
IF~~THEN TELBEN 4
@10
==BIMOEN @11
==CVSandrJ @12
==TELBEN @13
==BIMOEN @14
==CVSandrJ @15
==TELBEN @16
==CVSandrJ @17
==TELBEN@18
=@19
==BIMOEN @20
==TELBEN@21
=@22
==BIMOEN @23
==TELBEN@24DO ~GiveItemCreate("sanhenri","Imoen2",0,0,0) ~
==CVSandrJ @25
==TELBEN@26
END
++ @27+5
++ @28+6

CHAIN
IF~~THEN TELBEN 5
@29
DO ~SetGlobal("GullCave","GLOBAL",1) EscapeArea()~EXIT

CHAIN
IF~~THEN TELBEN 6
@30
DO ~SetGlobal("GullCave","GLOBAL",1) EscapeArea()~EXIT
  
EXTEND_TOP Gandol 0 #1
IF~Global("Gullcave","GLOBAL",0) Global("SANIMONASHINT","GLOBAL",17)InParty("Imoen2") ~THEN REPLY @31GOTO San22
END

CHAIN
IF ~~THEN Gandol San22
@32
==Bimoen@33
==Gandol@34
==Bimoen@35
==Gandol@36
==Bimoen@37
==Gandol@38
==Bimoen@39
EXIT
  



                          

