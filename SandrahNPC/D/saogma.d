BEGIN saogma

IF ~NumTimesTalkedTo(0) ~THEN BEGIN saogma1
SAY @0
IF~~THEN REPLY @1 GOTO saogma12
IF~~THEN REPLY @2GOTO saogma12
IF~~THEN REPLY @3GOTO saogma13
END

IF ~~THEN BEGIN saogma12
SAY@4
IF~~THEN REPLY @5GOTO saogma15
IF~~THEN REPLY @6GOTO saogma14
END

IF ~~THEN BEGIN saogma15
SAY@7
IF~~THEN REPLY @8GOTO saogma14
END

IF ~~THEN BEGIN saogma13
SAY@9
IF~~THEN DO ~StartCutSceneMode()
SmallWait(7)
CreateVisualEffectObject("SPFLESHS",Myself)
Enemy()
Polymorph(OGRE_MAGE)
SmallWait(7)
EndCutSceneMode()~EXIT
END

IF ~~THEN BEGIN saogma14
SAY@10
IF~~THEN DO ~EscapeAreaMove("BG4400",2736,2771,9)~EXIT
END

IF ~NumTimesTalkedToGT(0) !Global("SaOgmaIn","GLOBAL",2) ~THEN BEGIN saogma20
SAY @11
IF ~~THEN EXIT
END


