BEGIN CVDEKN1

IF ~NumTimesTalkedTo(0) See("CVSandr")~ THEN BEGIN DefNar
SAY ~AARGH, must protect master demon.~
IF ~~ THEN REPLY ~Oh, what a hellish stench!~ GOTO DefNark
END

IF~~ DefNark
SAY ~DIE! ~
IF ~~ THEN DO ~ Attack(Player1) SetGlobal("CVDEKN1Hostile","GLOBAL",1) Enemy() ~ EXIT
END


 
