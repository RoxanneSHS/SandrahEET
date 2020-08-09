BEGIN Hilath


IF ~NumTimesTalkedToGT(0) Global("Katcut","GLOBAL",4) PartyHasItem("HIBABA") ~THEN BEGIN HilBabRes
SAY@0
IF ~!Dead("Kattah") ~THEN REPLY@1DO ~ReputationInc(1)~GOTO HilHint
IF ~Dead("Kattah") ~THEN REPLY @2GOTO HilHint2
END

IF ~NumTimesTalkedToGT(0) !AreaCheck("CVROA1") GlobalGT("Katcut","GLOBAL",4) GlobalLT("KatDef","GLOBAL",2)~THEN BEGIN HilResB
SAY @3
IF~~THEN EXIT
END

IF ~NumTimesTalkedToGT(0) Global("KatDef","GLOBAL",2)~THEN BEGIN KatDef1
SAY @4
IF~~THEN DO ~ReputationInc(1) SetGlobal("KatDef","GLOBAL",3) ~ EXIT
END

CHAIN
IF~NumTimesTalkedTo(0)
Global("Katcut","GLOBAL",2) ~THEN Hilath HilathQ1
@5
= @6
== CVSandrJ @7
= @8
== HILATH @9
= @10
== CVSandrJ @11
END
++ @12+ Hilqtaken
++ @13DO ~ReputationInc(-10) ~+ Hilqrej
++ @14 DO ~ReputationInc(-1) ~+ Hilqtaken

CHAIN
IF ~~THEN Hilath Hilqtaken
@15
END
++ @16DO ~SetGlobal("Katcut","GLOBAL",3)~
EXIT

CHAIN
IF ~~THEN Hilath Hilqrej
@17
== CVSandrJ @18
END
++ @19DO ~
SetGlobal("Katcut","GLOBAL",11) ~
EXIT

CHAIN
IF ~NumTimesTalkedToGT(0) Global("Katcut","GLOBAL",3)~THEN Hilath NotTried
@20
EXIT

CHAIN
IF~~THEN Hilath HilHint
@21DO ~AddJournalEntry(@60104,QUEST) TakePartyItem("HIBABA")EscapeAreaMove("CVWDRE",583,540,3) ActionOverride("Hilhus",DestroySelf())~
EXIT

CHAIN
IF~~THEN Hilath HilHint2
@22 DO ~AddJournalEntry(@60105,QUEST) TakePartyItem("HIBABA")EscapeAreaMove("CVWDRE",583,540,3) ActionOverride("Hilhus",DestroySelf())~EXIT

CHAIN
IF ~NumTimesTalkedToGT(0) Global("Katcut","GLOBAL",4) PartyHasItem("HIBABD") ~THEN Hilath HilBabDe
@23DO ~TakePartyItem("HIBABD") EscapeAreaMove("CVWDRE",583,540,3) ReputationInc(-2)SetGlobal("Katcut","GLOBAL",10)SetGlobal("KatDef","GLOBAL",1)~
EXIT

