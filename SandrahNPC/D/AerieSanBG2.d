APPEND BAERIE

IF WEIGHT #-32~Global("SanHealaeri","GLOBAL",5)~THEN BEGIN Aerieheal1
SAY@0
IF~~THEN EXTERN BSandr Aerieheal2
END
END

CHAIN
IF~~THEN BSandr Aerieheal2
@1
DO~SetGlobal("SanHealaeri","GLOBAL",6)RealSetGlobalTimer("SanAeriInt","GLOBAL",1800)~
==BAERIE@2
==BSandr@3
==BAERIE@4
==BSandr IF~Global("SanRomPath","GLOBAL",1) ~THEN@5
==BAERIE IF~Global("SanRomPath","GLOBAL",1) ~THEN@6
==BSandr IF~Global("SanRomPath","GLOBAL",2) Global("Aeriematch","GLOBAL",1) ~THEN@5
==BAERIE IF~Global("SanRomPath","GLOBAL",2)Global("Aeriematch","GLOBAL",1) ~THEN@6
==BSandr IF~Global("SanRomPath","GLOBAL",2) !Global("Aeriematch","GLOBAL",1) ~THEN@7
==BAERIE IF~Global("SanRomPath","GLOBAL",2)!Global("Aeriematch","GLOBAL",1) ~THEN@8EXIT

CHAIN
IF~Global("SanHealaeri","GLOBAL",7)~THEN BSandr  SanAeriT1
@9
DO~SetGlobal("SanHealaeri","GLOBAL",8) RealSetGlobalTimer("SanAeriInt","GLOBAL",3800)~
==BAERIE@10
==BSandr @11
==BAERIE@12
==BSandr @13
==BAERIE@14
==BSandr @15
==BAERIE@16
==BSandr @17
==BAERIE@18
==BSandr @19
EXIT

CHAIN
IF~Global("SanHealaeri","GLOBAL",9)~THEN BSandr  SanAeriT2
@20
DO~SetGlobal("SanHealaeri","GLOBAL",10) RealSetGlobalTimer("SanAeriInt","GLOBAL",3800)~
==BAERIE@21
==BSandr @22
==BAERIE@23
==BSandr @24
==BAERIE@25
==BSandr @26EXIT

CHAIN
IF~Global("SanHealaeri","GLOBAL",11)~THEN BSandr  SanAeriT3
@27
DO~SetGlobal("SanHealaeri","GLOBAL",12) RealSetGlobalTimer("SanAeriInt","GLOBAL",3800)~
==BAERIE@28
==BSandr @29
==BAERIE@30
==BSandr @31
=@32
==BAERIE@33
==BSandr @34
==BAERIE@35
==BSandr @36
==BAERIE@37
==BSandr @38DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF~Global("SanHealaeri","GLOBAL",13)~THEN BSandr  SanAeriT4
@39
DO~SetGlobal("SanHealaeri","GLOBAL",14) RealSetGlobalTimer("SanAeriInt","GLOBAL",3800)~
==BAERIE@40
=@41
==BSandr @42
==BAERIE@43
==BSandr @44
==BSandr IF~InParty("ACBRE")~THEN@45
==BSandr IF~InParty("P#Kivan")~THEN@46
==BSandr IF~InParty("Minsc")~THEN@47
==BSandr IF~InParty("Anomen") !InParty("Keldorn")~THEN@48
==BSandr IF~!InParty("Anomen") InParty("Keldorn")~THEN@48
==BSandr@49
==BAERIE@50
==BSandr@51
==BAERIE@52DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF~Global("SanHealaeri","GLOBAL",15)~THEN BSandr  SanAeriT5
@53
DO~SetGlobal("SanHealaeri","GLOBAL",16) RealSetGlobalTimer("SanAeriInt","GLOBAL",3800)~
==BAERIE@54
==BSandr@55
=@56
==BAERIE@57
==BSandr@58
==BAERIE@59
=@60EXIT

CHAIN
IF WEIGHT #-1~Global("SanAerSharkt","LOCALS",1)~THEN BSandr SanAerShakt
@61
DO~SetGlobal("SanAerSharkt","LOCALS",2) RealSetGlobalTimer("SanAeriInt","GLOBAL",3800)~
==BAERIE@62
==BSandr@63
==BAERIE@64
==BSandr@65
=@66
==BAERIE@67
==BSandr@68
==BAERIE@69
==BSandr@70
==BAERIE@71
==BSandr@72DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF ~Global("SanAerSharkt","LOCALS",3)~THEN BSandr SanAerShakt2
@73
DO~SetGlobal("SanAerSharkt","LOCALS",4) ~
==BAERIE@74
==BSandr@75
=@76
==BAERIE@77
==BSandr@78DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() Wait(2) ActionOverride("CVSandr",Interact("CVSandr"))~
EXIT

CHAIN
IF ~Global("SanAerSharkt","LOCALS",4)~THEN BSandr SanAerShakt2
@79
DO~SetGlobal("SanAerSharkt","LOCALS",5) RealSetGlobalTimer("SanAeriInt","GLOBAL",3800)~
==BAERIE@80
==BSandr@81
==BAERIE@82
==BSandr@83
==BAERIE@84
==BSandr@85
==BAERIE@86
==BSandr@87DO~RestParty()~EXIT

CHAIN
IF~Global("SanHealaeri","GLOBAL",17)~THEN BSandr  SanAeriT6
@88
DO~SetGlobal("SanHealaeri","GLOBAL",18) RealSetGlobalTimer("SanAeriInt","GLOBAL",3800)~
==BAERIE@89
==BSandr@90
==BAERIE@91
==BSandr@92
==BAERIE@93
==BSandr@94
==BAERIE@95
==BSandr@96
==BAERIE@97EXIT