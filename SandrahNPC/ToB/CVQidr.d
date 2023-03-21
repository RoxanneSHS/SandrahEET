BEGIN CVQidr

IF~Global("CVSummQi","GLOBAL",3)~THEN BEGIN CVQidrShowdown1
SAY@0
IF~~THEN DO~SetGlobal("CVSummQi","GLOBAL",4)~EXIT
END

IF~Global("SanQuidPC","LOCALS",2)~THEN BEGIN CVQidrPC1
SAY@1
IF~~THEN REPLY@2GOTO CVQidrPC2
IF~~THEN REPLY@3GOTO CVQidrPC2
IF~~THEN REPLY@4GOTO CVQidrPC2
END

IF~~THEN BEGIN CVQidrPC2
SAY@5
=@6
IF~~THEN REPLY@7DO~SetGlobal("SanQuidPC","LOCALS",3)~GOTO CVQidrPC3
END

IF~~THEN BEGIN CVQidrPC3
SAY@8
=@9
IF~~THEN REPLY@10GOTO CVQidrPC4
IF~~THEN REPLY@11EXTERN CVSan25J SanPartSist
IF~~THEN REPLY@12DO~ActionOverride(Player1,Attack("CVQidr")) SetGlobal("CVUMHostile","GLOBAL",1) ActionOverride("CVSandr",ChangeAIScript("CVSanUM",OVERRIDE)) SetGlobal("SandrahJoined","GLOBAL",26) ActionOverride("CVSandr",LeaveParty()) ~EXIT
END

IF~~THEN BEGIN CVQidrPC4
SAY@13
=@14
IF~~THEN DO~GiveItemCreate("CVQCall",Player1,0,0,0) EscapeArea()~EXIT
END

APPEND CVSan25J
IF~~THEN BEGIN SanPartSist
SAY@15
IF~~THEN DO~ActionOverride("CVSandr",LeaveParty()) ActionOverride("CVSandr",EscapeArea()) ActionOverride("CVQidr",EscapeArea()) SetGlobal("SandrahSummoned","GLOBAL",3) SetGlobal("SandrahJoined","GLOBAL",25) ClearAllActions()
FadeToColor([30.0],0)
CutSceneId(Player1)
RestorePartyLocations()
EndCutSceneMode()
FadeFromColor([30.0],0)~EXIT
END
END


CHAIN
IF~Global("SanQuidPC","LOCALS",0) AreaCheck("CVUmo5") InParty("CVSandr")~THEN CVQidr 1
@16
==BSandr25@17
==CVQidr@18
==BSandr25@19
==CVQidr@20
==BSandr25@21
==CVQidr@22
==BSandr25@23
=@24
==CVQidr@25
END
++@26+ 2
++@27+ 2

CHAIN
IF~~THEN CVQidr 2
@28
== CVQidr IF~InParty("Viconia")~THEN @29
== CVQidr IF~InParty("Yasraena")~THEN @30
== CVQidr IF~InParty("Sola")~THEN @31
== CVQidr IF~InParty("Iylos")~THEN @32
== CVQidr IF~InParty("Driz2")~THEN @33
== CVQidr@34
=@35
END
++@36DO~SetGlobal("CVUMHostile","GLOBAL",1) ActionOverride("CVSandr",ChangeAIScript("CVSanUM",OVERRIDE)) SetGlobal("SandrahJoined","GLOBAL",26) ActionOverride("CVSandr",LeaveParty()) ~EXIT
++@37DO~SetGlobal("SanQuidPC","LOCALS",1)~EXIT
++@38DO~SetGlobal("SanQuidPC","LOCALS",1)~EXIT

