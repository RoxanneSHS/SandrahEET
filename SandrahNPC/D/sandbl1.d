BEGIN sandbl1

IF ~NumTimesTalkedTo(0) ~THEN BEGIN NarDplTr
SAY @0
IF~AreaCheck("bg2300")~THEN REPLY @1 GOTO NarDplT2
IF~AreaCheck("bg3200")~THEN REPLY @2 GOTO NarDplT2b
IF~AreaCheck("bg2300")~THEN REPLY @3GOTO NarDplT2
IF~AreaCheck("bg3200")~THEN REPLY @3GOTO NarDplT2b
IF~AreaCheck("bg2300") ~THEN REPLY @4GOTO NarDplT2
IF~AreaCheck("bg3200") ~THEN REPLY @5GOTO NarDplT2b
END

IF ~~THEN BEGIN NarDplT2
SAY@6
IF~~THEN REPLY @7GOTO NarDplT3
IF~~THEN REPLY @8GOTO NarDplT3
END

IF ~~THEN BEGIN NarDplT2b
SAY@9
IF~~THEN REPLY @7GOTO NarDplT3
IF~~THEN REPLY @8GOTO NarDplT3
END

IF ~~THEN BEGIN NarDplT3
SAY@10
IF~~THEN REPLY @11DO ~SetGlobal("NarDplTr","LOCALS",1)~GOTO NarDplT4
END

IF ~~THEN BEGIN NarDplT4
SAY@12
IF~~THEN DO ~StartCutSceneMode()
SmallWait(7)
CreateVisualEffectObject("SPFLESHS",Myself)
Enemy()
Polymorph(DOPPLEGANGER)
SmallWait(7)
Polymorph(DEATH_KNIGHT)
ActionOverride("SanDbl2",Polymorph(DOPPLEGANGER))
ActionOverride("SanDbl2",Enemy())
EndCutSceneMode()~EXIT
END