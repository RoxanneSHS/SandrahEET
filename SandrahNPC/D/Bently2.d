BEGIN BENTLY2

IF~NumTimesTalkedTo(0) ~THEN BEGIN SanWDHi
SAY @0
IF ~~THEN REPLY @1GOTO SanWDHi2
IF ~~THEN REPLY @2GOTO SanWDHi2
END

IF ~~THEN BEGIN  SanWDHi2
SAY @3
IF ~~THEN DO ~MoveToPoint([913.760]) Face(13)~EXIT
END

IF ~Global("SanNarQ","GLOBAL",7) InParty("CVSandr")Global("SanWDHi","GLOBAL",1) ~THEN BEGIN SanWDMap
SAY @4
IF ~Global("SanMapFAI","GLOBAL",1)~THEN REPLY @5DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanWDMap2
IF ~Global("SanMapFAI","GLOBAL",0)~THEN REPLY @6DO ~SetGlobal("SanWDHi","GLOBAL",2)~EXIT
END

IF ~Global("SanWDHi","GLOBAL",2) Global("SanMapFAI","GLOBAL",1)~THEN BEGIN SanWDMap
SAY @7
IF ~~THEN REPLY @5GOTO SanWDMap2
END

IF ~~THEN BEGIN SanWDMap2
SAY @8
IF ~~THEN REPLY @9DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~GOTO SanWDMapBuy
IF ~~THEN REPLY @10DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanWDMapFree
END
                       
IF ~~THEN BEGIN SanWDMapBuy
SAY @11
IF ~~THEN REPLY @12DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~EXIT
IF ~~THEN REPLY @13DO ~SetGlobal("SanWDHi","GLOBAL",3) SetGlobal("SanMapFAI","GLOBAL",2) TakePartyGold(2000) EraseJournalEntry(@60132) GiveItemCreate("Sanmap","CVSandr",0,0,0)~EXIT
END

IF ~~THEN BEGIN SanWDMapFree
SAY @14
IF ~~THEN REPLY @15DO ~SetGlobal("SanWDHi","GLOBAL",3) SetGlobal("SanMapFAI","GLOBAL",2) EraseJournalEntry(@60132) GiveItemCreate("Sanmap","CVSandr",0,0,0) ~EXIT
END

EXTEND_BOTTOM Gellan 0
IF ~Global("SanMapFAI","GLOBAL",1)~THEN REPLY @16GOTO JopHi
END

APPEND Gellan
IF~~THEN BEGIN JopHi
SAY@17
IF~~THEN REPLY @18DO~StartStore("tem2304",LastTalkedToBy(Myself)) ~EXIT
IF~~THEN REPLY @19EXIT
END
END