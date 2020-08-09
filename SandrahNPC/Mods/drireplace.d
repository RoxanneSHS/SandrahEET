APPEND CVSandrJ
IF~Global("EntDjin55","AR0400",3)~THEN BEGIN SanReplDr55
SAY@0
IF~~THEN REPLY@1GOTO SanReplDr56
END

IF~~THEN BEGIN SanReplDr56
SAY@2
IF~~THEN DO~SetGlobal("JarDjin65","AR0400",4)  SetGlobal("EntDjin55","AR0400",4) SetGlobal("Ttcmal","GLOBAL",1) RevealAreaOnMap("RR3100")~EXIT
END

IF~Global("AloDriz","GLOBAL",1)~THEN BEGIN SanReplDr60
SAY@3
IF~~THEN REPLY@4GOTO SanReplDr61
IF~~THEN REPLY@5GOTO SanReplDr61
END

IF~~THEN BEGIN SanReplDr61
SAY@6
IF~~THEN REPLY@7DO~SetGlobal("AloDriz","GLOBAL",2)~EXIT
END

IF~Global("AloDriz","GLOBAL",3)~THEN BEGIN SanReplDr62
SAY@8
IF~~THEN REPLY@9GOTO SanReplDr63
IF~~THEN REPLY@10GOTO SanReplDr63
END

IF~~THEN BEGIN SanReplDr63
SAY@11
IF~~THEN REPLY@12GOTO SanReplDr64
END

IF~~THEN BEGIN SanReplDr64
SAY@13
IF~~THEN REPLY@14DO~SetGlobal("CreMar2","GLOBAL",1) SetGlobal("Timetolfiwd","GLOBAL",1)SetGlobal("AloDriz","GLOBAL",4)~EXIT
END

IF~Global("NCaDri","GLOBAL",1)~THEN BEGIN SanReplDr70
SAY@15
IF~~THEN REPLY@16GOTO SanReplDr71
IF~~THEN REPLY@17GOTO SanReplDr71
END

IF~~THEN BEGIN SanReplDr71
SAY@18
IF~~THEN DO~SetGlobal("NCaDri","GLOBAL",2)
SetGlobal("CreeDji3","GLOBAL",1)~EXIT
END

IF~Global("Driknicd","GLOBAL",1)~THEN BEGIN SanReplDr80
SAY@19
IF~~THEN REPLY@20GOTO SanReplDr81
END

IF~~THEN BEGIN SanReplDr81
SAY@21
IF~~THEN DO ~SetGlobal("Driknicd","GLOBAL",2)~EXIT
END

IF~Global("SanDrBryn","ar1600",2)~THEN BEGIN SanNDriBry1
SAY@22
IF~~THEN REPLY@23DO~SetGlobal("SanDrBryn","ar1600",3)~GOTO SanNDriBry2
END

IF~~THEN BEGIN SanNDriBry2
SAY@24
IF~~THEN REPLY@25DO ~IncrementGlobal("Sanpoints","GLOBAL",2)~EXIT
IF~~THEN REPLY@26DO~IncrementGlobal("Sanpoints","GLOBAL",-2)~EXIT
END

IF~Global("SanRecDriz","RA4000",1)~THEN BEGIN DriNear1
SAY@27
IF~~THEN REPLY@28GOTO DriNear2
IF~~THEN REPLY@29GOTO DriNear2
END

IF~~THEN BEGIN DriNear2
SAY@30
=@31
=@32
IF~~THEN REPLY@33DO~SetGlobal("SanRecDriz","RA4000",2)~EXIT
END
END

CHAIN
IF WEIGHT #-2~GlobalGT("SanROTRepl","GLOBAL",0)Global("EntandDri","GLOBAL",0)~THEN JARLAX_R SanVar1
@34
DO~SetGlobal("EntandDri","GLOBAL",1)~
==Enteri@35
==Driz2P@36
==Enteri@37
==Driz2P@38DO~ActionOverride("Driz2",MoveToPoint([1450.710]))ActionOverride("Driz2",EscapeAreaMove("RR4005",409,362,12))~
==Enteri@39DO~ActionOverride("Enteri",MoveToPoint([1450.710]))ActionOverride("Enteri",EscapeAreaMove("RR4005",409,362,12))~EXIT

CHAIN
IF WEIGHT #-2~GlobalGT("SanROTRepl","GLOBAL",0) Global("Secndcutfiof","GLOBAL",1)~THEN Driz2P SanVar2
@40
DO~SetGlobal("Secndcutfiof","GLOBAL",2)~
==Enteri@41
=@42
==Driz2P@43DO~ActionOverride("Driz2",Attack("Enteri"))~
==Enteri@44DO~ActionOverride("Enteri",Enemy())~EXIT

CHAIN
IF WEIGHT #-2~GlobalGT("SanROTRepl","GLOBAL",0) Global("Catelldrg","RR4005",0)~THEN Catt2 SanIn
@45
DO~SetGlobal("asdfadfa","GLOBAL",2) SetGlobal("Catelldrg","RR4005",2)~
==Driz2P@46DO~ActionOverride("Driz2",EscapeAreaMove("RR3950",740,640,12))~EXIT

CHAIN
IF WEIGHT #-3~GlobalGT("SanROTRepl","GLOBAL",0) AreaCheck("RR3950") Global("Theendisnear","GLOBAL",3)~THEN Catt2 SanDepart
@47
DO~SetGlobal("Theendisnear","GLOBAL",4)
SetGlobal("Villagesaved","GLOBAL",1)
SetGlobal("TrigCQCip","GLOBAL",1)
AddXPObject(Player1,100000)
AddXPObject(Player2,100000)
AddXPObject(Player3,100000)
AddXPObject(Player4,100000)
AddXPObject(Player5,100000)
AddXPObject(Player6,100000)
SetGlobal("CattiKickedOut","LOCALS",1)
SetGlobal("CattiBrieOut","GLOBAL",1)
ActionOverride("Catt2",EscapeAreaMove("AR0406",1400,1735,0))~
==Driz2P@48
==Catt2@49
END
++@50EXTERN BSandr SanEndPlot1b

CHAIN
IF~~THEN BSANDR SanEndPlot1b
@51
DO~SetGlobal("SanDriLeaveWD","GLOBAL",2)~
==Driz2P @52
END
++@53+ SanEndPlot2b

CHAIN
IF~~THEN BSANDR SanEndPlot2b
@54
==Driz2P @55
== BSANDR@56
==Driz2P @57
== BSANDR@58
==Driz2P @59
== BSANDR@60
END
++@61DO~ChangeEnemyAlly("Driz2",NEUTRAL) ActionOverride("Driz2",MoveBetweenAreas("CVelm3",[352.380],12))~
EXIT
++@62DO~ChangeEnemyAlly("Driz2",NEUTRAL) ActionOverride("Driz2",MoveBetweenAreas("CVelm3",[352.380],12))~
EXIT

