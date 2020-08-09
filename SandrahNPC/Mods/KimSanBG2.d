CHAIN
IF~Global("SanKimTalks","GLOBAL",1)~THEN KIMJ SanFirst
@0
DO~SetGlobal("SanKimTalks","GLOBAL",2) RealSetGlobalTimer("KimSanInt","LOCALS",3000)~
==BSandr@1
== KIMJ@2
==BSandr@3
== KIMJ@4
==BSandr@5EXIT

CHAIN
IF~Global("SanKimTalks","GLOBAL",3)~THEN KIMJ SanSecond
@6
DO~SetGlobal("SanKimTalks","GLOBAL",4) RealSetGlobalTimer("KimSanInt","LOCALS",3000)~
==BSandr@7
== KIMJ@8
==BSandr IF~GlobalGT("Homesail","GLOBAL",6) ~THEN@9
== KIMJ IF~GlobalGT("Homesail","GLOBAL",6) ~THEN@10
==BSandr IF~GlobalGT("Homesail","GLOBAL",6) ~THEN@11
== KIMJ IF~GlobalGT("Homesail","GLOBAL",6) ~THEN@12
==BSandr IF~GlobalGT("SanSafaBan","GLOBAL",10)~THEN@13
== KIMJ IF~GlobalGT("SanSafaBan","GLOBAL",10)~THEN@14
==BSandr IF~GlobalGT("SanSafaBan","GLOBAL",10)~THEN@15
== KIMJ IF~GlobalGT("SanSafaBan","GLOBAL",10)~THEN@16
==BSandr IF~GlobalLT("Homesail","GLOBAL",6) GlobalLT("SanSafaBan","GLOBAL",10)~THEN@17EXIT

CHAIN
IF~Global("SanHealKim","GLOBAL",4)~THEN KIMJ SanHealKim
@18
DO~SetGlobal("SanHealKim","GLOBAL",5)RealSetGlobalTimer("KimSanInt","LOCALS",3000)~
==BSandr@19
== KIMJ@20
==BSandr@21
== KIMJ@22
==BSandr@23
== KIMJ@24
==BSandr@25EXIT

CHAIN
IF~Global("SanKimTalks","GLOBAL",5)~THEN KIMJ Sanremin
@26
DO~SetGlobal("SanKimTalks","GLOBAL",6) RealSetGlobalTimer("KimSanInt","LOCALS",3000)~
==BSandr@27
== KIMJ@28
==BSandr@29
== KIMJ@30
==BSandr@31
== KIMJ@32
==BSandr@33
== KIMJ@34
==BSandr IF~GlobalGT("SanSharInt","GLOBAL",10)~THEN@35
== KIMJ IF~GlobalGT("SanSharInt","GLOBAL",10)~THEN@36
==BSandr IF~GlobalGT("SanSharInt","GLOBAL",10)~THEN@37
== KIMJ IF~GlobalGT("SanSharInt","GLOBAL",10)~THEN@38
==BSandr IF~GlobalGT("SanSharInt","GLOBAL",10)~THEN@39
== KIMJ @40EXIT

CHAIN
IF~Global("SanKimTalks","GLOBAL",7) ~THEN KIMJ SanWeirdLove
@41
DO~SetGlobal("SanKimTalks","GLOBAL",8) RealSetGlobalTimer("KimSanInt","LOCALS",3000)~
==BSandr@42
== KIMJ@43
==BSandr@44
== KIMJ@45
==BSandr@46
== KIMJ@47
==BSandr@48
== KIMJ@49
==BSandr IF~Global("SanRomPath","GLOBAL",1)~THEN @50
==BSandr IF~Global("SanRomPath","GLOBAL",2)~THEN @51
== KIMJ@52
==BSandr@53
== KIMJ@54EXIT

CHAIN
IF~Global("SanKimTalks","GLOBAL",9)~THEN KIMJ SanWeirdLove2
@55
DO~SetGlobal("SanKimTalks","GLOBAL",10) RealSetGlobalTimer("KimSanInt","LOCALS",3000)~
==BSandr@56
== KIMJ @57
==BSandr IF~Global("SanRomPath","GLOBAL",1)~THEN @58
== KIMJ IF~Global("SanRomPath","GLOBAL",1)~THEN @59
==BSandr IF~Global("SanRomPath","GLOBAL",1)~THEN @60
== KIMJ IF~Global("SanRomPath","GLOBAL",1)~THEN @61
==BSandr IF~Global("SanRomPath","GLOBAL",1)~THEN @62
== KIMJ IF~Global("SanRomPath","GLOBAL",1)~THEN @63
==BSandr IF~Global("SanRomPath","GLOBAL",1)~THEN @64
== KIMJ IF~Global("SanRomPath","GLOBAL",1)~THEN @65
==BSandr IF~Global("SanRomPath","GLOBAL",1)~THEN @66
==BSandr IF~Global("SanRomPath","GLOBAL",2)~THEN @67
== KIMJ IF~Global("SanRomPath","GLOBAL",2)~THEN @68
==BSandr IF~Global("SanRomPath","GLOBAL",2)~THEN @69
== KIMJ IF~Global("SanRomPath","GLOBAL",2)~THEN @70
==BSandr IF~Global("SanRomPath","GLOBAL",2)~THEN @71
== KIMJ IF~Global("SanRomPath","GLOBAL",2)~THEN @72
==BSandr IF~Global("SanRomPath","GLOBAL",2)~THEN @73
== KIMJ IF~Global("SanRomPath","GLOBAL",2)~THEN @74
==BSandr IF~Global("SanRomPath","GLOBAL",2)~THEN @75
== KIMJ @76
=@77DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~EXIT
