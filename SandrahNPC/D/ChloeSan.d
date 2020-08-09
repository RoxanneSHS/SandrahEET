APPEND BSANDR

IF ~Global("SanCloInGr","LOCALS",1)~THEN BEGIN SanCloInGr1
SAY@0
IF~~THEN REPLY@1DO~SetGlobal("SanCloInGr","LOCALS",2)~EXIT
IF~~THEN REPLY@2DO~SetGlobal("SanCloInGr","LOCALS",2)~EXIT
END
END

// Chloe Healing
CHAIN
IF~~THEN BSANDR ChloHealed
@3
DO~SetGlobal("SanHealChlo","GLOBAL",4)RealSetGlobalTimer("SanCloeInterv","LOCALS",800)~
== RCHLOEJ @4
== BSANDR@5
== RCHLOEJ @6
== BSANDR@7
EXIT

CHAIN
IF~~THEN BSANDR ChloHealed2
@8
DO~SetGlobal("SanHealChlo","GLOBAL",8) RealSetGlobalTimer("SanCloeInterv","LOCALS",800)~
== RCHLOEJ @9
== BSANDR@10
== RCHLOEJ @11
== BSANDR@12
EXIT

//Chloe Romance

CHAIN
IF ~Global("SanCloeRom","GLOBAL",2)~THEN BSANDR SanChloRPell
@13
DO ~SetGlobal("SanCloeRom","GLOBAL",3) RealSetGlobalTimer("SanCloeInterv","LOCALS",1800) ~
== RCHLOEJ @14
== BSANDR@15
== RCHLOEJ @16
== PELLIG @17
== RCHLOEJ @18
== PELLIG @19
== BSANDR@20
EXIT

CHAIN
IF ~Global("SanCloeRom","GLOBAL",4)~THEN BSANDR SanChloR1
@21
DO ~SetGlobal("SanCloeRom","GLOBAL",5) RealSetGlobalTimer("SanCloeInterv","LOCALS",1800) ~
== RCHLOEJ @22
== BSANDR@23
== RCHLOEJ@24
== BSANDR@25
== RCHLOEJ@26
== BSANDR@27
== RCHLOEJ@28
== BSANDR@29
== RCHLOEJ@30
== BSANDR@31
== RCHLOEJ@32
== BSANDR@33
== RCHLOEJ@34
== BSANDR@35
EXIT

CHAIN
IF ~Global("SanCloeRom","GLOBAL",6)~THEN BSANDR SanChloR2
@36
DO ~SetGlobal("SanCloeRom","GLOBAL",7) RealSetGlobalTimer("SanCloeInterv","LOCALS",500) ~
== RCHLOEJ @37
== BSANDR@38
== RCHLOEJ @39
== BSANDR@40
== RCHLOEJ @41
== BSANDR@42
== RCHLOEJ @43
== BSANDR@44
== RCHLOEJ @45
== BSANDR@46
== RCHLOEJ @47
== BSANDR@48
== RCHLOEJ @49
== BSANDR@50
== RCHLOEJ @51
== BSANDR@52
== RCHLOEJ @53
== BSANDR@54
== RCHLOEJ @55
== BSANDR@56
== RCHLOEJ @57
== BSANDR@58
== RCHLOEJ @59
== BSANDR@60
== RCHLOEJ @61DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT

CHAIN
IF ~Global("SanCloeRom","GLOBAL",8)~THEN BSANDR SanChloR3
@62
DO ~SetGlobal("SanCloeRom","GLOBAL",9) RealSetGlobalTimer("SanCloeInterv","LOCALS",1800) ~
== RCHLOEJ @63
== BSANDR@64
== RCHLOEJ @65
== BSANDR@66
== RCHLOEJ @67
== BSANDR@68
== RCHLOEJ @69
== BSANDR@70
== RCHLOEJ @71
== BSANDR@72
== RCHLOEJ@73DO~RestParty()~
EXIT

CHAIN
IF ~Global("SanCloeRom","GLOBAL",10)~THEN BSANDR SanChloR4
@42
DO ~SetGlobal("SanCloeRom","GLOBAL",11) RealSetGlobalTimer("SanCloeInterv","LOCALS",1800) ~
== RCHLOEJ @74
== BSANDR@75
== RCHLOEJ @76
== BSANDR@77
== RCHLOEJ @78
== BSANDR@79DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT

CHAIN
IF ~Global("SanCloeRom","GLOBAL",12)~THEN BSANDR SanChloR5
@80
DO ~SetGlobal("SanCloeRom","GLOBAL",13) RealSetGlobalTimer("SanCloeInterv","LOCALS",1800) ~
== RCHLOEJ @81
== BSANDR@82
== RCHLOEJ @83
== BSANDR@84
== RCHLOEJ @85
== BSANDR@86
== RCHLOEJ @87
= @88
= @89
== BSANDR@90
== RCHLOEJ @91
== BSANDR@92
=@93
== RCHLOEJ @94
EXIT

CHAIN
IF ~Global("SanCloeRom","GLOBAL",15)~THEN BSANDR SanChloR6
@95
DO ~SetGlobal("SanCloeRom","GLOBAL",16) RealSetGlobalTimer("SanCloeInterv","LOCALS",1800) ~
== RCHLOEJ @96
= @97
== BSANDR@98
== RCHLOEJ @99
== BSANDR@100
= @101
== RCHLOEJ @102
== BSANDR@103
== RCHLOEJ @104
== BSANDR@105
== RCHLOEJ @106
== BSANDR@107
== RCHLOEJ @108
EXIT

CHAIN
IF ~Global("SanCloeRom","GLOBAL",17)~THEN BSANDR SanChloRMo
@109
DO ~SetGlobal("SanCloeRom","GLOBAL",18) RealSetGlobalTimer("SanCloeInterv","LOCALS",1800) ~
== RCHLOEJ @110
== BSANDR@111
== RCHLOEJ @112
== BSANDR@113
== RCHLOEJ @114 DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT

CHAIN
IF~Global("SanCloeBryn","LOCALS",1) ~THEN BSANDR SanChloBryn1
@115
DO~SetGlobal("SanCloeBryn","LOCALS",2) ~
== RCHLOEJ @116
== BSANDR@117
== RCHLOEJ @118
== BSANDR@119
== RCHLOEJ @120
== BSANDR@121
== RCHLOEJ @122
EXIT

CHAIN
IF~Global("SanChlEd","LOCALS",1) ~THEN BSANDR SanChloEddi1
@123
DO~SetGlobal("SanChlEd","LOCALS",2) ~
== RCHLOEJ @124
== BSANDR@125
== RCHLOEJ @126
== BSANDR@127
== RCHLOEJ @128
== BSANDR@129
== BEDWIN @130EXIT

CHAIN
IF~Global("SanCloeBryn","LOCALS",3)~THEN BSANDR SanChloBryn2
@131
DO~SetGlobal("SanCloeBryn","LOCALS",4)~
== RCHLOEJ @132
== BSANDR@133
== RCHLOEJ @134
== BSANDR@135
== RCHLOEJ @136
== BSANDR@137
== RCHLOEJ @138
== BSANDR@139
== RCHLOEJ @140 DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT

CHAIN
IF~Global("SanHealChlo","GLOBAL",10)~THEN SanSuWL CelBook
@141
=@142
DO~SetGlobal("SanHealChlo","GLOBAL",11)~
== RCHLOEJ @143
==CVSandrJ@144
==SanSuWL@145
==CVSandrJ@146
==SanSuWL@147
== RCHLOEJ @148
==CVSandrJ@149
==SanSuWL@150
==CVSandrJ@151
== RCHLOEJ @152
==SanSuWL@153EXIT

CHAIN
IF WEIGHT #-9 ~Global("SanHealChlo","GLOBAL",13) ~THEN RCHLOEJ BHAssault
@154
DO~SetGlobal("SanHealChlo","GLOBAL",14) ~
== BSANDR@155
== RCHLOEJ @156
== BSANDR@157
== RCHLOEJ @158
== BSANDR@159
== RCHLOEJ @160 DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT

// Chloe
INTERJECT_COPY_TRANS RCHLOE 4 ChloDun
== RCHLOE IF ~InParty("CVSandr") ~THEN @161
== CVSandrJ IF ~InParty("CVSandr") ~THEN @162
== RCHLOE IF ~InParty("CVSandr") ~THEN @163
END

//=====================APPENDS
APPEND RCHLOEJ
IF WEIGHT #-9 ~Global("SanHealChlo","GLOBAL",3)~THEN BEGIN SanHealChloe
SAY @164
IF~~THEN EXTERN BSANDR ChloHealed
END

IF WEIGHT #-8 ~Global("SanHealChlo","GLOBAL",7)~THEN BEGIN SanHealChloe2
SAY @165
IF~~THEN EXTERN BSANDR ChloHealed2
END
END

