BEGIN CVBandF3

IF~NumTimesTalkedTo(0)~THEN BEGIN Stop1
SAY@0
IF~~THEN REPLY@1GOTO Stop2
IF~~THEN REPLY@2GOTO Stop3
IF~~THEN REPLY@3GOTO Stop4
END

IF~~THEN BEGIN Stop2
SAY@4
IF~~THEN DO ~IncrementGlobal("Sanpoints","GLOBAL",2) ActionOverride("CVBandf3",Enemy())~EXIT
END

IF~~THEN BEGIN Stop3
SAY@5
IF~~THEN DO ~IncrementGlobal("Sanpoints","GLOBAL",1)ActionOverride("CVBandf3",Enemy())~EXIT
END

IF~~THEN BEGIN Stop4
SAY@6
IF~~THEN DO ~IncrementGlobal("Sanpoints","GLOBAL",-4)ActionOverride("CVBandf3",Enemy())~EXIT
END
