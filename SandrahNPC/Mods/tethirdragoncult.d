APPEND BSandr
IF~Global("SanNecro","ar3531",1)~THEN BEGIN SanDragoNec
SAY@0
IF~~THEN REPLY@1DO~SetGlobal("SanNecro","ar3531",2)IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SanDragoNec2
IF~~THEN REPLY@2DO~SetGlobal("SanNecro","ar3531",2)IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanDragoNec2
IF~~THEN REPLY@3DO~SetGlobal("SanNecro","ar3531",2)IncrementGlobal("Sanpoints","GLOBAL",-2)~GOTO SanDragoNec2
END

IF~~THEN BEGIN SanDragoNec2
SAY@4
IF~~THEN REPLY@5EXIT
END
END


INTERJECT_COPY_TRANS CBTardth 37 Dragolich
== CVSANDRJ IF ~InParty("CVSandr")~THEN@6
==CBTardth IF ~InParty("CVSandr")~THEN@7
== CVSANDRJ IF ~InParty("CVSandr")~THEN@8
==CBTardth IF ~InParty("CVSandr")~THEN@9
== CVSANDRJ IF ~InParty("CVSandr")~THEN@10
==CBTardth IF ~InParty("CVSandr")~THEN@11
END