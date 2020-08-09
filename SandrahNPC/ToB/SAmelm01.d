//Elminster ToB Appearance

APPEND Amelm01

IF WEIGHT #-9~NumTimesTalkedTo(0) InParty("CVSandr")~THEN BEGIN SanElmTob1
SAY@0
IF~Global("VxVarElm1","GLOBAL",0) InParty("VxVar") ~THEN REPLY@1DO~SetGlobal("VxVarElm1","GLOBAL",1) ~EXTERN Amelm01 SanElmTob2
IF~!InParty("VxVar") ~THEN REPLY@1EXTERN Amelm01 SanElmTob2
END
END

CHAIN
IF~~THEN Amelm01 SanElmTob2
@2
=@3
==BSandr25@4
== Amelm01@5
==BSandr25@6
== Amelm01@7
END
++@8EXTERN Amelm01 3