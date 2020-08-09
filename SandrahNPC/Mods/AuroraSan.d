BEGIN CVCedri

IF ~Global("KarMovedIn","LOCALS",0)~THEN BEGIN KarMovedIn1
SAY @0
IF~~THEN REPLY @1GOTO KarMovedInRude
IF~~THEN REPLY @2GOTO KarMovedInFr
END

IF ~~THEN BEGIN KarMovedInRude
SAY @3
IF~~THEN REPLY @4DO ~SetGlobal("KarMovedIn","LOCALS",1)~GOTO KarShop
END

IF ~~THEN BEGIN KarMovedInFr
SAY @5
IF~GlobalLT("OrcPrison","GLOBAL",12)~THEN REPLY @6DO ~SetGlobal("KarMovedIn","LOCALS",1)~GOTO KarShop
IF~GlobalGT("OrcPrison","GLOBAL",11)~THEN REPLY @7DO ~SetGlobal("KarMovedIn","LOCALS",1)~GOTO KarShop
END

IF~Global("KarMovedIn","LOCALS",1)~THEN BEGIN KarShop
SAY@8
IF~~THEN REPLY @9DO ~StartStore("sto4803",LastTalkedToBy(Myself))~EXIT
IF~~THEN REPLY @10EXIT
END