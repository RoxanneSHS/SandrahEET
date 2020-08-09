BEGIN CVPOTNGI

IF~!Global("SanDoPotn","GLOBAL",0) ~THEN BEGIN Longpro
SAY@0
IF~~THEN DO~EscapeArea()~EXIT
END

IF~Global("SanDoPotn","GLOBAL",0) !InParty("CVSandr")~THEN BEGIN GoAway
SAY@1
IF~~THEN REPLY@2EXIT
IF~~THEN REPLY@3GOTO GoAway2
END

IF~~THEN BEGIN GoAway2
SAY@4
IF~~THEN REPLY@5DO~GiveItemCreate("potn55",Player1,1,0,0) TakePartyGold(50)~GOTO GoAway3
IF~~THEN REPLY@6GOTO GoAway4
END

IF~~THEN BEGIN GoAway3
SAY@7
IF~~THEN DO~EscapeArea()~EXIT
END

IF~~THEN BEGIN GoAway4
SAY@8
IF~~THEN DO~EscapeArea()~EXIT
END

CHAIN
IF~Global("SanDoPotn","GLOBAL",0) InParty("CVSandr")~THEN CVPOTNGI NewHeal1
@1
DO~SetGlobal("SanDoPotn","GLOBAL",1) ~
==CVSandrJ@9
==CVPOTNGI@10
==CVSandrJ@11
==CVPOTNGI@12
==CVSandrJ IF~HasItem("Sanparc","CVSandr")~THEN@13
==CVPOTNGI IF~HasItem("Sanparc","CVSandr")~THEN@14DO~GiveItemCreate("cvheherb","CVSandr",5,5,0) EscapeArea()~
==CVSandrJ IF~!HasItem("Sanparc","CVSandr")~THEN@15
==CVPOTNGI IF~!HasItem("Sanparc","CVSandr")~THEN@16DO~GiveItemCreate("cvheherb","CVSandr",5,5,0) EscapeArea()~EXIT

