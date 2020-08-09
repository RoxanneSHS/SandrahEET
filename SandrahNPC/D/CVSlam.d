BEGIN CVSlam

IF~NumTimesTalkedTo(0)~THEN BEGIN Threat1
SAY@0
IF~~THEN REPLY@1GOTO Threat2
END

CHAIN
IF~~THEN CVSlam Threat2
@2
==CVSANDRJ@3
==IF_FILE_EXISTS BP#KIV IF~InParty("P#Kivan") ~THEN@4
==BKeldor IF~ InParty("Keldorn")~THEN@5
==Banomen IF~ InParty("Anomen")~THEN@6
== CVSlam@7DO~ CreateVisualEffectObject("SPDIMNDR",Myself) JumpToPoint([1052.591])~EXIT