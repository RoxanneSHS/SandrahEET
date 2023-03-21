BEGIN PelligT

IF~Global("SandrahSummoned","GLOBAL",1)~THEN BEGIN PellMess1
SAY@0
IF~~THEN REPLY@1GOTO PellMess2
END

IF~~THEN BEGIN PellMess2
SAY@2
IF~~THEN REPLY@3DO~SetGlobal("SandrahSummoned","GLOBAL",3)~GOTO PellMess3
END

IF~~THEN BEGIN PellMess3
SAY@4
IF~~THEN REPLY@5GOTO PellMess4
END

IF~~THEN BEGIN PellMess4
SAY@6
=@7
IF~~THEN DO~MoveToPoint([1926.792]) EscapeArea()~EXIT
END

CHAIN
IF WEIGHT #-1~Global("MinscSpawnPlane","GLOBAL",1)AreaCheck("ar4500")~THEN Sanboy1 SumMinsc
@8
DO~SetGlobal("MinscSpawnPlane","GLOBAL",5)~
== BSANDR25 @9
== Sanboy1 @10
== BSANDR25 @11
== Sanboy1 @12DO~MoveToPoint([1926.792]) EscapeArea()~
END
++@13EXIT
++@14EXIT