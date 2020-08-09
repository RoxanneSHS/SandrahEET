BEGIN CVHarbor

IF~AreaCheck("CVROA8") Global("Lanlub","LOCALS",0)~THEN NoBiz1
SAY@0
IF~~THEN REPLY@1DO~SetGlobal("Lanlub","LOCALS",1)~EXIT
END

IF~AreaCheck("CVROA8") Global("Lanlub","LOCALS",1)~THEN NoBiz2
SAY@2
IF~~THEN EXIT
END

IF~GlobalGT("SanVampWDQuest","GLOBAL",12)~THEN BEGIN GoRet
SAY@3
IF~~THEN REPLY@4DO~StartCutSceneMode()
StartCutScene("CVcut207")~EXIT                        
IF~GlobalGT("SanVampWDQuest","GLOBAL",22)~THEN REPLY@5EXIT
IF~GlobalLT("SanVampWDQuest","GLOBAL",22)~THEN REPLY@5GOTO  GoRetLie
END

IF~~THEN BEGIN GoRetLie
SAY@6
IF~~THEN DO~ReputationInc(-1)~EXIT
END

CHAIN
IF~Global("SanVampWDQuest","GLOBAL",10)~THEN CVHarbor Go1
@7
DO~SetGlobal("SanVampWDQuest","GLOBAL",11)~
==BSandr@8
==CVHarbor@9
==BSandr@10
==CVHarbor@11
==BSandr@12
==CVHarbor@13
==BSandr@14
==CVHarbor@15
END
++@16+ Go2
++@17EXIT

CHAIN
IF~~THEN CVHarbor Go2
@18
END
++@19DO~SetGlobal("SanVampWDQuest","GLOBAL",12)~EXIT

CHAIN
IF~Global("SanVampWDQuest","GLOBAL",11)~THEN CVHarbor Go3
@20
END
++@16+ Go2
++@21EXIT