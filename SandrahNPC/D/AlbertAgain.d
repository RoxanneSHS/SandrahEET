APPEND Albert

IF WEIGHT #-4 ~AreaCheck("BG1800") Global("Altalk","BG1800",0)~THEN BEGIN Notifycara1
SAY@0
IF~~THEN REPLY@1GOTO Notifycara2
IF~~THEN REPLY@2GOTO Notifycara2
END

IF~~THEN BEGIN Notifycara2
SAY@3
IF~~THEN DO~SetGlobal("Altalk","BG1800",1) EscapeArea() ClearAllActions() StartCutSceneMode() StartCutScene("ClkMiCar")~EXIT
END
END