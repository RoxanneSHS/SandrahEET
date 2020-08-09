EXTEND_BOTTOM Staffm12 0
IF~InParty("CVSandr") XPLT("CVSandr",1000000)~THEN REPLY@0GOTO SanArena1
END

EXTEND_BOTTOM Staffm12 16
IF~InParty("CVSandr") XPLT("CVSandr",2250000)XPGT("CVSandr",999999)~THEN REPLY @0GOTO SanArena3
END

EXTEND_BOTTOM Staffm12 17
IF~InParty("CVSandr") XPLT("CVSandr",3000000)XPGT("CVSandr",2259999)~THEN REPLY @0GOTO SanArena5
END

EXTEND_BOTTOM Staffm12 18
IF~InParty("CVSandr") XPLT("CVSandr",4000000)XPGT("CVSandr",2999999)~THEN REPLY @0GOTO SanArena7
END

EXTEND_BOTTOM Staffm12 19
IF~InParty("CVSandr") XPGT("CVSandr",3999999)~THEN REPLY @0GOTO SanArena9
END

EXTEND_BOTTOM Staffm2 1
IF ~InParty("CVSandr") LevelGT("CVSandr",14)~THEN REPLY @1GOTO SanMageDuel1
END

APPEND Staffm2
IF~~THEN BEGIN SanMageDuel1
SAY@2
IF~~THEN EXTERN CVSandrJ SanMageDuel2
END

IF~Global("FigSan","GLOBAL",16)~THEN BEGIN  SanMageDuelE
SAY@3
IF~~THEN REPLY@4DO~SetGlobal("FigSan","GLOBAL",17)~EXIT
END
END

APPEND Staffm12
IF~~THEN BEGIN SanArena1
SAY@5
IF ~~THEN REPLY@6GOTO SanArena2
IF ~~THEN REPLY@7GOTO 4
END

IF~~THEN BEGIN SanArena2
SAY@8
IF ~~THEN DO ~SetGlobal("Registr","GLOBAL",1)
SetGlobal("AbaSan","GLOBAL",1)
TakePartyGold(1000)
~EXIT
END

IF~~THEN BEGIN SanArena3
SAY@5
IF ~~THEN REPLY@6GOTO SanArena4
IF ~~THEN REPLY@7GOTO 43
END

IF~~THEN BEGIN SanArena4
SAY@8
IF ~~THEN DO ~SetGlobal("Registr","GLOBAL",1)
SetGlobal("AbaSan","GLOBAL",9)
TakePartyGold(1000)
~EXIT
END

IF~~THEN BEGIN SanArena5
SAY@5
IF ~~THEN REPLY@6GOTO SanArena6
IF ~~THEN REPLY@7GOTO 61
END

IF~~THEN BEGIN SanArena6
SAY@8
IF ~~THEN DO ~SetGlobal("Registr","GLOBAL",1)
SetGlobal("AbaSan","GLOBAL",17)
TakePartyGold(1000)
~EXIT
END

IF~~THEN BEGIN SanArena7
SAY@5
IF ~~THEN REPLY@6GOTO SanArena8
IF ~~THEN REPLY@7GOTO 79
END

IF~~THEN BEGIN SanArena8
SAY@8
IF ~~THEN DO ~SetGlobal("Registr","GLOBAL",1)
SetGlobal("AbaSan","GLOBAL",25)
TakePartyGold(1000)
~EXIT
END

IF~~THEN BEGIN SanArena9
SAY@5
IF ~~THEN REPLY@6GOTO SanArena10
IF ~~THEN REPLY@7GOTO 91
END

IF~~THEN BEGIN SanArena10
SAY@8
IF ~~THEN DO ~SetGlobal("Registr","GLOBAL",1)
SetGlobal("AbaSan","GLOBAL",33)
TakePartyGold(1000)
~EXIT
END
END

ADD_STATE_TRIGGER Staffm8 0
~!Global("AbaSan","GLOBAL",1) 
!Global("AbaSan","GLOBAL",9) 
!Global("AbaSan","GLOBAL",17) 
!Global("AbaSan","GLOBAL",25)~

APPEND Staffm8
IF WEIGHT #5~Global("AbaSan","GLOBAL",1)~THEN BEGIN SanArena21
SAY@9
=@10
=@11
=@12
IF~~THEN EXTERN CVSandrJ SanArenaready1
END

IF WEIGHT #4~Global("AbaSan","GLOBAL",9)~THEN BEGIN SanArena22
SAY@13
IF~~THEN EXTERN CVSandrJ SanArenaready1
END

IF WEIGHT #3~Global("AbaSan","GLOBAL",17)~THEN BEGIN SanArena23
SAY@13
IF~~THEN EXTERN CVSandrJ SanArenaready1
END

IF WEIGHT #2~Global("AbaSan","GLOBAL",25)~THEN BEGIN SanArena24
SAY@13
IF~~THEN EXTERN CVSandrJ SanArenaready1
END
END

ADD_STATE_TRIGGER Staffm9 0
~!Global("AbaSan","GLOBAL",33)~

APPEND Staffm9
IF WEIGHT #1~Global("AbaSan","GLOBAL",33)~THEN BEGIN SanArena31
SAY@14
=@15
IF~~THEN DO ~SetGlobal("AbaSan","GLOBAL",34)~EXIT
END
END

APPEND Staffm11
IF~Global("FigSan","GLOBAL",3) ~THEN BEGIN SanMageDuel3
SAY@16
=@17
=@18
IF~~THEN DO~SetGlobal("FigSan","GLOBAL",4) ~EXIT
END

IF~Global("FigSan","GLOBAL",5) ~THEN BEGIN SanMageDuel4
SAY@19
=@20
IF~~THEN DO~SetGlobal("FigSan","GLOBAL",6)~EXIT
END

IF~Global("FigSan","GLOBAL",13) ~THEN BEGIN SanMageDuel5
SAY@21
=@22
IF~~THEN DO~GiveItemCreate("ChampSc",LastTalkedToBy,0,0,0)~GOTO SanMageDuel6
END

IF~~THEN BEGIN SanMageDuel6
SAY@23
IF~~THEN DO~GiveItemCreate("SCRX34",LastTalkedToBy,0,0,0) GiveItemCreate("Ultima",LastTalkedToBy,0,0,0) GiveItemCreate("SCRL9P",LastTalkedToBy,0,0,0) GiveItemCreate("GoldenCl",LastTalkedToBy,0,0,0)~GOTO SanMageDuel7
END

IF~~THEN BEGIN SanMageDuel7
SAY@24
IF~~THEN DO~GiveItemCreate("Bracwc",LastTalkedToBy,0,0,0) GiveItemCreate("STAF12",LastTalkedToBy,0,0,0)~GOTO SanMageDuel8
END

IF~~THEN BEGIN SanMageDuel8
SAY@25
IF~~THEN DO~SetGlobal("FigSan","GLOBAL",14)~EXIT
END
END

APPEND CVSandrJ
IF~~THEN BEGIN SanArenaready1
SAY@26
IF~~THEN DO~IncrementGlobal("AbaSan","GLOBAL",1)~EXIT
END

IF~~THEN BEGIN SanMageDuel2
SAY@27
IF~~THEN DO~SetGlobal("Startmd","GLOBAL",1) SetGlobal("FigSan","GLOBAL",1)~EXIT
END
END

APPEND BSANDR

IF~Global("SanArenIde","RA4300",1)~THEN BEGIN ArenIdee1
SAY @28
IF~~THEN REPLY@29GOTO ArenIdee2
IF~~THEN REPLY@30GOTO ArenIdee2
IF~~THEN REPLY@31GOTO ArenIdee2
END
END

CHAIN
IF~~THEN BSANDR ArenIdee2
@32
DO~SetGlobal("SanArenIde","RA4300",2)~
==IF_FILE_EXISTS RCHLOEJ IF~InParty("RCHLOE")~THEN@33
==BSandr IF~InParty("RCHLOE")~THEN@34
==BJAHEIR IF~InParty("Jaheira")~THEN@35
==BSandr IF~InParty("Jaheira")~THEN@36
==BNalia IF~!InParty("Jaheira") InParty("Nalia")~THEN@35
==BSandr IF~!InParty("Jaheira")InParty("Nalia")~THEN@36
==BANOMEN IF~InParty("Anomen")~THEN@37
==BSandr IF~InParty("Anomen")~THEN@38
==BVICONI IF~InParty("Viconia")~THEN@39
==BSandr IF~InParty("Viconia")~THEN@40
==Bedwin IF~InParty("Edwin")~THEN@41
==BSandr IF~InParty("Edwin")~THEN@42
==BSandr@43
END
++@44EXIT
++@45EXIT
++@46EXIT
++@47EXIT


 
