// Ascalon
CHAIN
IF ~~THEN BSANDR AscSan2
@0
== ACASC @1
END
++ @2EXTERN ACASC 3

CHAIN
IF~~THEN  ACASC Ascjen1
@3
==CVJenliJ@4
END
++@5EXTERN ACASC 3

EXTEND_TOP ACASC 3 #1
IF ~InParty("CVSandr") ~THEN REPLY @6GOTO AscSan1
IF ~InParty("CVJenlig") ~THEN REPLY @7GOTO Ascjen1
END

APPEND ACASC
IF ~~THEN BEGIN AscSan1
SAY @8
= @9
IF ~~THEN EXTERN BSANDR AscSan2
END
END