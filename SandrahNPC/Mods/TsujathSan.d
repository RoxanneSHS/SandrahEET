APPEND BTSUJAT
IF WEIGHT #-19~Global("SanHealTsuja","GLOBAL",3)~THEN BEGIN SanHealTsu1
SAY@0
IF~~THEN DO~SetGlobal("SanHealTsuja","GLOBAL",4) RealSetGlobalTimer("SantsuInt","GLOBAL",3000)~EXTERN BSandr HealTsu
END
END

CHAIN
IF~~THEN BSandr HealTsu
@1
==BTSUJAT@2
==BSandr@3
==BTSUJAT@4
==BSandr@5EXIT

CHAIN
IF WEIGHT #-20~Global("SanHealTsuja","GLOBAL",5)~THEN BTSUJAT HealTsu2
@6
DO~SetGlobal("SanHealTsuja","GLOBAL",6)RealSetGlobalTimer("SantsuInt","GLOBAL",3000)~
==BSandr@7
==BTSUJAT@8
==BSandr@9
==BTSUJAT@10
==BSandr@11
==BTSUJAT@12
==BSandr@13
==BTSUJAT@14
==BSandr@15
==BTSUJAT@16
==BSandr@17
==BTSUJAT@18
==BSandr@19EXIT

CHAIN
IF ~Global("SanHealTsuja","GLOBAL",7)~THEN BSandr HealTsu3
@20
DO~SetGlobal("SanHealTsuja","GLOBAL",8)RealSetGlobalTimer("SantsuInt","GLOBAL",3000)~
==BTSUJAT@21
==BSandr@22
==BTSUJAT@23
==BSandr@24
==BTSUJAT@25
==BSandr@26
==BTSUJAT@27
==BSandr@28EXIT

CHAIN
IF ~Global("SanHealTsuja","GLOBAL",9)~THEN BSandr HealTsu3
@29
DO~SetGlobal("SanHealTsuja","GLOBAL",10)RealSetGlobalTimer("SantsuInt","GLOBAL",3000)~
==BTSUJAT@30
==BSandr@31
==BTSUJAT@32
==BSandr@33
==BTSUJAT@34EXIT

CHAIN
IF ~Global("SanHealTsuja","GLOBAL",11)~THEN BSandr RomTsuSan1
@35
DO~SetGlobal("SanHealTsuja","GLOBAL",12)RealSetGlobalTimer("SantsuInt","GLOBAL",3000)~
==BTSUJAT@36
=@37
==BSandr@38
==BTSUJAT@39
==BSandr@40
==BTSUJAT@41
==BSandr@42
==BTSUJAT@43
==BSandr@44
==BTSUJAT@45EXIT

CHAIN
IF ~Global("SanHealTsuja","GLOBAL",13)~THEN BSandr RomTsuSan2
@46
DO~SetGlobal("SanHealTsuja","GLOBAL",14)RealSetGlobalTimer("SantsuInt","GLOBAL",3000)~
==BTSUJAT@47
==BSandr@48
==BTSUJAT@49
==BSandr@50
==BTSUJAT@51
==BSandr@52
==BTSUJAT@53
==BSandr@54
==BTSUJAT@55
==BSandr@56
==BTSUJAT@57EXIT

CHAIN
IF ~Global("SanHealTsuja","GLOBAL",15)~THEN BSandr RomTsuSan3
@58
DO~SetGlobal("SanHealTsuja","GLOBAL",16)RealSetGlobalTimer("SantsuInt","GLOBAL",3000)~
==BTSUJAT@59
==BSandr@60
==BTSUJAT@61
==BSandr@62
==BTSUJAT@63
==BSandr@64
==BTSUJAT@65
==BSandr@66
==BTSUJAT@67
==BSandr@68
==BTSUJAT@69DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~EXIT

CHAIN
IF ~Global("SanHealTsuja","GLOBAL",17)~THEN BSandr RomTsuSan4
@70
DO~SetGlobal("SanHealTsuja","GLOBAL",18)RealSetGlobalTimer("SantsuInt","GLOBAL",3000)~
==BTSUJAT@71
==BSandr@72
==BTSUJAT@73
==BSandr@74
==BTSUJAT@75
==BSandr@76
==BTSUJAT@77
==BSandr@78
==BTSUJAT@79
=@80
==BSandr@81
==BTSUJAT@82DO~RestParty()~EXIT

CHAIN
IF~Global("SanFlirtTalk","LOCALS",1)~THEN TSJFlirt Wanthim
@83
DO~SetGlobal("SanFlirtTalk","LOCALS",2) ~
==CVSandrJ@84
==TSJFlirt@85
==CVSandrJ@86
==TSJFlirt@87
=@88
==BTSUJAT@89
==CVSandrJ@90
==TSJFlirt@91
==BTSUJAT@92
==CVSandrJ@93
==TSJFlirt@94
==BTSUJAT@95
==TSJFlirt@96DO~EscapeArea()~EXIT

CHAIN
IF~Global("Tsuguild","GLOBAL",2)~THEN BSandr SanTsuWhyTh1
@97
DO~SetGlobal("Tsuguild","GLOBAL",3)~
==BTSUJAT@98
== BSandr @99
==BTSUJAT@100
== BSandr @101
==BTSUJAT@102
== BSandr @103
==BTSUJAT@104
EXIT
