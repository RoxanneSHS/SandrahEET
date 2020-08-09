BEGIN Alzalig

IF ~NumTimesTalkedTo(0) !AreaCheck("CVDre3") InMyArea("CVSandr")~THEN BEGIN FoundAlz
SAY @0
= @1
= @2
IF ~~THEN REPLY @3GOTO FoundAlz1
END

IF ~~THEN BEGIN FoundAlz1
SAY @4
= @5
IF ~~THEN REPLY @6GOTO AlzCoinc
IF ~~THEN REPLY @7GOTO NarHeart1
IF ~~THEN REPLY @8GOTO NarArch
END

IF ~~THEN BEGIN AlzCoinc   
SAY @9
IF ~~THEN REPLY @10GOTO NarArch
END

IF ~~THEN BEGIN NarArch
SAY @11
= @12
IF ~~THEN REPLY @13GOTO 2ndDeal
IF ~~THEN REPLY @14GOTO 2ndDeal
IF ~~THEN REPLY @15GOTO 2ndDeal
END

IF ~~THEN BEGIN 2ndDeal
SAY @16
IF ~~THEN REPLY @17GOTO AlzEnd
IF ~~THEN REPLY @18GOTO AlzEnd
IF ~~THEN REPLY @19GOTO AlzEnd
END

IF ~~THEN BEGIN AlzEnd
SAY @20
= @21
= @22
= @23
IF ~~THEN REPLY @24DO ~IncrementGlobal("Sanpoints","GLOBAL",1) GiveItemCreate("AlzaHrt2",Player1,0,0,0) AddJournalEntry(@60058,QUEST) ~EXIT
IF ~~THEN REPLY @25GOTO Alzfight
IF ~~THEN REPLY @26DO ~GiveItemCreate("AlzaHrt2",Player1,0,0,0) AddJournalEntry(@60058,QUEST) ~EXIT
END

IF ~~THEN BEGIN Alzfight
SAY @27IF ~~THEN DO ~ChangeEnemyAlly("Alzalig",ENEMY) Attack(Player1)~EXIT
END

CHAIN
IF ~~THEN Alzalig NarHeart1
@28
==CVSandrJ @29
END
++@30+ NarArch