ADD_TRANS_ACTION ACQ17003 BEGIN 14 END BEGIN 0 END ~ActionOverride("CVSandr",SetGlobal("SanRetKarli","LOCALS",1))~

APPEND CVSandrJ
IF~Global("SanRetKarli","LOCALS",1)~THEN BEGIN SanKarlini1
SAY@0
IF ~~THEN REPLY@1GOTO SanKarlini2
IF ~~THEN REPLY@2DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanKarlini2
IF ~~THEN REPLY@3DO~IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SanKarlini2
IF ~~THEN REPLY@4DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~GOTO SanKarlini2
END

IF~~THEN BEGIN SanKarlini2
SAY@5
=@6
IF~~THEN REPLY@7DO~SetGlobal("SanRetKarli","LOCALS",2)~GOTO SanKarlini3
IF~~THEN REPLY@8DO~SetGlobal("SanRetKarli","LOCALS",2)~GOTO SanKarlini4
IF~~THEN REPLY@9DO~SetGlobal("SanRetKarli","LOCALS",2)~GOTO SanKarlini5
END

IF~~THEN BEGIN SanKarlini3
SAY@10
= @11
IF~~THEN REPLY @12DO~SetGlobal("ACQ5","GLOBAL",10) CreateVisualEffect("spdimndr",[2475.1547])
Wait(1)
CreateCreature("ACQ17001",[2475.1547],0)
CreateVisualEffect("spdimndr",[2470.1527])
Wait(1)
CreateCreature("ACQ17002",[2470.1527],0)~EXIT
END

IF~~THEN BEGIN SanKarlini4
SAY@13
IF~~THEN REPLY @12DO~SetGlobal("ACQ5","GLOBAL",10) CreateVisualEffect("spdimndr",[2475.1547])
Wait(1)
CreateCreature("ACQ17001",[2475.1547],0)
CreateVisualEffect("spdimndr",[2470.1527])
Wait(1)
CreateCreature("ACQ17002",[2470.1527],0)~EXIT
END

IF~~THEN BEGIN SanKarlini5
SAY@14
= @11
IF~~THEN REPLY @12DO~SetGlobal("ACQ5","GLOBAL",10) CreateVisualEffect("spdimndr",[2475.1547])
Wait(1)
CreateCreature("ACQ17001",[2475.1547],0)
CreateVisualEffect("spdimndr",[2470.1527])
Wait(1)
CreateCreature("ACQ17002",[2470.1527],0)
~EXIT
END
END