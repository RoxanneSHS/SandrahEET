BEGIN orcimo2

IF ~ NumTimesTalkedTo(0) AreaCheck("BG1804") ~ THEN BEGIN warn1
SAY ~ AAH, Red Head!! Razzok must give alert to Knowlod!!~
IF~~ THEN DO ~  SetGlobal("OrcPrison","GLOBAL",3) MoveToPointNoInterrupt([133.735]) EscapeArea()~ EXIT
END

IF ~ AreaCheck("CVORC2")~ THEN BEGIN warn2
SAY ~ Red Head is here!!~
IF~~THEN EXIT
END
