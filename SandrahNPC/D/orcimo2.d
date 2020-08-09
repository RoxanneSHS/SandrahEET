BEGIN orcimo2

IF ~ NumTimesTalkedTo(0) AreaCheck("BG1804") ~ THEN BEGIN warn1
SAY @0
IF~~ THEN DO ~  SetGlobal("OrcPrison","GLOBAL",3) MoveToPointNoInterrupt([133.735]) EscapeArea()~ EXIT
END

IF ~ AreaCheck("CVORC2")~ THEN BEGIN warn2
SAY @1
IF~~THEN EXIT
END
