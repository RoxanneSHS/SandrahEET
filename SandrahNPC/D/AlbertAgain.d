APPEND Albert

IF WEIGHT #-4 ~AreaCheck("BG1800") Global("Altalk","BG1800",0)~THEN BEGIN Notifycara1
SAY~Your kin is most cruel to your own young. The new mine workers will perish quickly.~
IF~~THEN REPLY~We are here to destroy the mines. There will be no further work.~GOTO Notifycara2
IF~~THEN REPLY~I fear the worst - speak quickly, creature!~GOTO Notifycara2
END

IF~~THEN BEGIN Notifycara2
SAY~You are among those who differ and take care. Go east from here to help where help is needed.~
IF~~THEN DO~SetGlobal("Altalk","BG1800",1) EscapeArea() ClearAllActions() StartCutSceneMode() StartCutScene("ClkMiCar")~EXIT
END
END