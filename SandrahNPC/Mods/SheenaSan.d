APPEND BSHEENA
IF WEIGHT #-11~Global("SanHealShena","GLOBAL",3)~THEN BEGIN SanHeal
SAY@0
IF~~THEN EXTERN BSandr SanHealShena
END
END

CHAIN
IF~~THEN BSandr SanHealShena
@1
DO~SetGlobal("SanHealShena","GLOBAL",4) RealSetGlobalTimer("SanSheenaInt","LOCALS",1000)~
==BSheena@2
==BSandr@3
==BSheena@4
==BSandr@5
==BSheena@6
==BSandr@7
==BSheena@8
==BSandr@9
==BSheena@10
==BSandr@11DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF~Global("SanSheena","GLOBAL",1)~THEN BSandr sanSheena1
@12
DO~SetGlobal("SanSheena","GLOBAL",2)RealSetGlobalTimer("SanSheenaInt","LOCALS",1000)~
==BSheena@13
==BSandr@14
==BSheena@15
==BSandr@16
==BSheena@17
==BIMOEN2 IF~InParty("Imoen2")~THEN@18
==BSandr@19
=@20
==BSheena@21
==BSandr@22
==BSheena@23
==BSandr@24
==BSheena@25
==BSandr@26
==BSheena@27EXIT

CHAIN
IF~Global("SanSheena","GLOBAL",3)~THEN BSandr sanSheena2m
@28
DO~SetGlobal("SanSheena","GLOBAL",6)~
==BSheena@29
==BSandr@30
==BSheena@31
==BSandr@32
==BSheena@33
==BSandr@34
==BSheena@35
==BSandr@36
==BSheena@37EXIT

CHAIN
IF~Global("SanSheena","GLOBAL",4)~THEN BSandr sanSheena2f
@38
DO~SetGlobal("SanSheena","GLOBAL",6)~
==BSheena@39
==BSandr@30
==BSheena@40
==BSandr@41
==BSheena@42
==BSandr@43
==BSheena@35
==BSandr@36
==BSheena@37EXIT

CHAIN
IF~Global("SanSheena","GLOBAL",7)~THEN BSandr sanSheena2
@44
DO~SetGlobal("SanSheena","GLOBAL",8)~
==BSheena@45
==BSandr@46
==BSheena@47
==BSandr@48
==BSheena@49
==BSandr@50
==BSheena@51
==BSandr@52
==BSheena@53
==BSandr@54EXIT

CHAIN
IF~Global("SanSheena","GLOBAL",11) ~THEN BSandr sanSheena3
@55
DO~SetGlobal("SanSheena","GLOBAL",12)~
==BSheena@56
==BSandr@57
==BSheena@58
==BSandr@59
==BSheena@60
==BSandr@61
==BSheena@62
==BSandr@63
EXIT

CHAIN
IF~Global("SanSheenaLTTrigger","LOCALS",1)~THEN BSandr SanSheenRomTrig
@64
DO~SetGlobal("SanSheenaLTTrigger","LOCALS",2)~
==BSheena@65
==BSandr@66
==BSheena@67
==BSandr@68
==BSheena@69
==BSandr@70
==BSheena@71
==BSandr@72
==BSheena@73
==BSandr@74
==BSheena@75EXIT

EXTEND_BOTTOM Sheena 21
IF ~InParty("CVSandr")AreaCheck("ar1202")~THEN REPLY @76GOTO SanIn
END

EXTEND_BOTTOM Sheena 22
IF ~InParty("CVSandr")AreaCheck("ar1202")~THEN REPLY @76GOTO SanIn
END

EXTEND_BOTTOM Sheena 23
IF ~InParty("CVSandr")AreaCheck("ar1202")~THEN REPLY @76GOTO SanIn
END

APPEND  Sheena
IF~~THEN BEGIN SanIn
SAY@77
IF~~THEN DO~EscapeAreaMove("AR1204",360,350,14)~EXIT
END

IF WEIGHT #-3~AreaCheck("ar1204") Global("SheenaJoined","GLOBAL",0)~THEN BEGIN SanIn2
SAY@78
IF~~THEN REPLY@79GOTO 21
IF~~THEN REPLY@80EXIT
END
END

