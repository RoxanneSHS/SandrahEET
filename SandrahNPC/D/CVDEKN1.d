BEGIN CVDEKN1

IF ~NumTimesTalkedTo(0) See("CVSandr")~ THEN BEGIN DefNar
SAY @0
IF ~~ THEN REPLY @1 GOTO DefNark
END

IF~~ DefNark
SAY @2
IF ~~ THEN DO ~ Attack(Player1) SetGlobal("CVDEKN1Hostile","GLOBAL",1) Enemy() ~ EXIT
END


 
