BEGIN SCRLALZ

IF ~
Global("ScrlalzT","GLOBAL",1)
OR(3)
Global("SanNarQ","GLOBAL",0)
Global("SanNarQ","GLOBAL",1)
Global("SanNarQ","GLOBAL",2)
~THEN BEGIN Scrltlk1
SAY @0
IF ~~THEN REPLY @1GOTO Scrltlk2
END

IF~~THEN BEGIN  Scrltlk2
SAY @2
IF ~!Global("UsedScrlPort","GLOBAL",1)~THEN REPLY @3GOTO Port
IF ~!Global("UsedScrlLoc","GLOBAL",1)~THEN REPLY @4GOTO Locate
IF ~!Global("UsedScrlRock","GLOBAL",1)~THEN REPLY @5GOTO Stone
IF ~Global("UsedScrlRock","GLOBAL",1)~THEN REPLY @6GOTO Stone3
IF ~Global("UsedScrlRock","GLOBAL",2)~THEN REPLY @6GOTO Stone3
IF ~~THEN REPLY @7GOTO Retire
END

IF~~THEN BEGIN  Stone
SAY @8
IF ~~THEN REPLY @9DO ~GiveItemCreate("MISC42",Player1,0,0,0)~GOTO Stone2
END

IF~~THEN BEGIN  Retire
SAY @10
IF ~~THEN REPLY @11EXIT
END

IF~~THEN BEGIN  Port
SAY @12
IF ~~THEN DO ~AddJournalEntry(@60017,QUEST) SetGlobal("UsedScrlPort","GLOBAL",1) ~EXIT
END

IF~~THEN BEGIN  Locate
SAY @13
IF ~~THEN REPLY @14GOTO Locate2
END

IF ~~THEN BEGIN Stone2
SAY @15
IF ~~THEN REPLY @16DO ~GiveItemCreate("SanRock",Player1,0,0,0) SetGlobal("UsedScrlRock","GLOBAL",1)~EXIT
END

IF~~THEN BEGIN  Locate2
SAY @17
= @18
IF ~~THEN REPLY @19DO ~AddJournalEntry(@60021,QUEST) SetGlobal("UsedScrlLoc","GLOBAL",1) ~EXIT
END

IF ~~THEN BEGIN Stone3
SAY @20
IF ~~THEN DO ~GiveItemCreate("SanRock",Player1,10,0,0) SetGlobal("UsedScrlRock","GLOBAL",2)~EXIT
IF ~~THEN REPLY @11EXIT
END

IF ~
Global("ScrlalzT","GLOBAL",2)
OR(3)
Global("SanNarQ","GLOBAL",0)
Global("SanNarQ","GLOBAL",1)
Global("SanNarQ","GLOBAL",2) ~THEN BEGIN NoPortal
SAY @21
IF ~~THEN REPLY @22GOTO Port2
IF ~~THEN REPLY @9DO ~GiveItemCreate("SanRock",Player1,10,0,0) ~EXIT
IF ~~THEN REPLY @11EXIT
END

IF~~THEN BEGIN  Port2
SAY @12
IF ~~THEN EXIT
END

IF ~
Global("ScrlalzT","GLOBAL",3)
OR(3)
Global("SanNarQ","GLOBAL",0)
Global("SanNarQ","GLOBAL",1)
Global("SanNarQ","GLOBAL",2) ~THEN BEGIN NearPortal
SAY @21
IF ~~THEN REPLY @22GOTO Port3
IF ~~THEN REPLY @9DO ~GiveItemCreate("SanRock",Player1,0,0,0) ~EXIT
IF ~~THEN REPLY @11EXIT
END

IF~~THEN BEGIN  Port3
SAY @23
IF ~~THEN EXIT
END

IF ~
Global("ScrlalzT","GLOBAL",3)
Global("SanNarQ","GLOBAL",3)
 ~THEN BEGIN Portal
SAY @24
IF ~~THEN REPLY @11EXIT
IF ~~THEN REPLY @25DO ~SetGlobal("ScrlalzT","GLOBAL",4) SetGlobal("AlzLairOpen","GLOBAL",1) ~EXIT
END

IF ~
Global("ScrlalzT","GLOBAL",4)
OR(5)
Global("SanNarQ","GLOBAL",3)
Global("SanNarQ","GLOBAL",4)
Global("SanNarQ","GLOBAL",5)
Global("SanNarQ","GLOBAL",6)
Global("SanNarQ","GLOBAL",7)~THEN BEGIN SclBye
SAY @26
IF ~~THEN DO ~SetGlobal("ScrlalzT","GLOBAL",5)~EXIT
END

IF ~
Global("ScrlalzT","GLOBAL",5)
OR(5)
Global("SanNarQ","GLOBAL",3)
Global("SanNarQ","GLOBAL",4)
Global("SanNarQ","GLOBAL",5)
Global("SanNarQ","GLOBAL",6) 
Global("SanNarQ","GLOBAL",7)~THEN BEGIN NoFunction
SAY @27
IF ~~THEN EXIT
END