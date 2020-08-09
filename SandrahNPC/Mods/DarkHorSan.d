APPEND CVSandrJ

IF ~Global("CMOversightEndGame","GLOBAL",3)~THEN BEGIN SandrahOSBG21
SAY@0
IF~~THEN REPLY@1GOTO  SandrahOSBG22
IF~~THEN REPLY@2GOTO  SandrahOSBG22
END

IF~~THEN BEGIN SandrahOSBG22
SAY@3
=@4
IF~~THEN DO~SetGlobal("CMOversightEndGame","GLOBAL",4)~EXIT
END
END

CHAIN
IF WEIGHT #-3~Global("CMOversightEndGame","GLOBAL",2)~THEN CMMadel SandrahSoa1
@5
DO~SetGlobal("CMOversightEndGame","GLOBAL",3) SetGlobal("LockedDoor1001b","AR1000",1)~
==Bsandr@6
==CMMadel@7
==Bsandr@8
==CMMadel@9DO~MoveToPoint([3560.1640]) Wait(2) DestroySelf()~EXIT

CHAIN
IF WEIGHT #-3~Global("CMOversightEndGame","GLOBAL",4)~THEN CMMadel SandrahT2
@10
DO~SetGlobal("CMOversightEndGame","GLOBAL",5) AddexperienceParty(8700)~
==Bsandr@11
==CMMadel@12
==CMGeorge@13
==CMMadel@14DO~Enemy()~
==CMGeorge@15
==Bsandr@16
==CMGeorge@17DO~Enemy()~EXIT


// Oversight and Section1
INTERJECT_COPY_TRANS CMGEORG1 2 KoverasHire
== CVSandrJ IF ~InParty("CVSandr")~THEN @18
== CMGEORG1 IF ~InParty("CVSandr")~THEN @19
== CVSandrJ IF ~InParty("CVSandr")~THEN @20
== CMGEORG1 IF ~InParty("CVSandr")~THEN @21
END