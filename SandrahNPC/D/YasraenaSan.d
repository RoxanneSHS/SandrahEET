// Yasraena
APPEND BSANDR

IF ~Global("SanYasParty","LOCALS",1) ~THEN BEGIN SanYasPar1
SAY @0
IF~~THEN REPLY @1DO~SetGlobal("SanYasParty","LOCALS",2)~EXIT
IF~~THEN REPLY @2DO~SetGlobal("SanYasParty","LOCALS",2)~EXIT
END
END

// Yasraena Healing

CHAIN
IF~~THEN BSANDR YasHealed1
@3
DO~SetGlobal("SanHealYas","GLOBAL",6)~
==BYASRAEN@4
==BSANDR @5
==BYASRAEN@6
==BSANDR @7
EXIT


CHAIN
IF~~THEN BSANDR YasHealed2
@8
DO~SetGlobal("SanHealYas","GLOBAL",10)~
==BYASRAEN@9
==BSANDR @10
==BYASRAEN@11
==BSANDR @12
==BYASRAEN@13
==BSANDR @14
==BYASRAEN@15
==BSANDR @16
EXIT

// Yasraena Friendship

CHAIN
IF ~Global("SanYasfr","GLOBAL",2) ~THEN BSANDR SanYasUndw
@17
DO ~SetGlobal("SanYasfr","GLOBAL",3) ~
==BYASRAEN@18
==BSANDR @19
==BYASRAEN@20
==BSANDR @21
==BYASRAEN@22
==BSANDR @23
EXIT

  
CHAIN
IF ~Global("SanYasfr","GLOBAL",4) ~THEN BSANDR SanYasUndw
@24
DO ~SetGlobal("SanYasfr","GLOBAL",5) RealSetGlobalTimer("SanYasInterv","LOCALS",1000)~
==BYASRAEN@25
==BSANDR @26
==BYASRAEN@27
==BSANDR @28
==BYASRAEN@29
==BSANDR @30
==BYASRAEN@31
EXIT

CHAIN
IF ~Global("SanYasfr","GLOBAL",6) ~THEN BSANDR SanYasUndw
@32
DO ~SetGlobal("SanYasfr","GLOBAL",7) ~
==BYASRAEN @33
==BSANDR @34
==BYASRAEN@35
==BSANDR @36
==BYASRAEN@37
==BSANDR @38
==BYASRAEN@39
==BSANDR @40
==BYASRAEN@41
EXIT

CHAIN
IF ~Global("SanYasfr","GLOBAL",8) ~THEN BSANDR SanYasdres
@42
DO ~SetGlobal("SanYasfr","GLOBAL",9) ~
==BYASRAEN@43
==BSANDR @44
==BYASRAEN@45
==BSANDR @46
==BYASRAEN@47
==BSANDR @48
==BYASRAEN@49
==BSANDR @50
==BYASRAEN@51
==BSANDR @52
==BYASRAEN@53
DO ~RestParty() ~
EXIT

CHAIN
IF ~Global("SanYasfr","GLOBAL",10) ~THEN BSANDR SanYasfreed
@54
DO ~SetGlobal("SanYasfr","GLOBAL",11) RealSetGlobalTimer("SanYasInterv","LOCALS",1000)~
==BYASRAEN@55
==BSANDR @56
==BYASRAEN@57
==BSANDR @58
==BYASRAEN@59
==BSANDR @60
==BYASRAEN@61
==BSANDR @62
==BYASRAEN@63DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT

CHAIN
IF~~THEN  BSANDR YasKill10
@64
DO ~SetGlobal("SanYasKill","GLOBAL",2)~
==BYASRAEN@65
==BSANDR @66
==BYASRAEN@67
==BSANDR @68
==BYASRAEN@69
==BSANDR @70
==BYASRAEN@71
==BSANDR @72
==BYASRAEN@73
==BSANDR @74
==BYASRAEN@75
EXIT

CHAIN
IF ~Global("SanYasDams","LOCALS",1)~THEN BSANDR SanYasSleepDung
@76
DO~SetGlobal("SanYasDams","LOCALS",2)~
==BYASRAEN@77
==BSANDR @78
==BYASRAEN@79
==BSANDR @80
==BYASRAEN@81
==BSANDR @82
DO ~RestParty() ~
EXIT

CHAIN
IF~Global("SanYasHus","LOCALS",1)~THEN BSANDR SanYasHusb
@83
DO~SetGlobal("SanYasHus","LOCALS",2)RealSetGlobalTimer("SanYasInterv","LOCALS",1000)~
==BYASRAEN@84
==BSANDR @85
==BYASRAEN@86
==BSANDR @87
==BYASRAEN@88
==BSANDR @89
==BYASRAEN@90
= @91
==BSANDR @92
==BYASRAEN IF ~InParty("P#Kivan")~THEN@93
==BSANDR IF ~InParty("P#Kivan")~THEN@94
==BYASRAEN IF ~InParty("Xan") !InParty("P#Kivan") ~THEN@95
==BSANDR IF ~InParty("Xan") !InParty("P#Kivan") ~THEN@96
==BYASRAEN IF ~InParty("Minsc") !InParty("P#Kivan") !InParty("Xan")~THEN@97
==BSANDR IF ~InParty("Minsc")!InParty("P#Kivan") !InParty("Xan")~THEN@98
==BYASRAEN IF ~InParty("Ajantis") !InParty("P#Kivan")!InParty("Xan")!InParty("Minsc")~THEN@99
==BSANDR IF ~InParty("Ajantis")!InParty("P#Kivan") !InParty("Xan")!InParty("Minsc") ~THEN@100
==BYASRAEN IF ~InParty("Driz2") !InParty("P#Kivan") !InParty("Xan")!InParty("Minsc") !InParty("Ajantis")~THEN@101
==BSANDR IF ~InParty("Driz2") !InParty("P#Kivan") !InParty("Xan")!InParty("Minsc") !InParty("Ajantis")~THEN@102
==BYASRAEN IF ~InParty("Driz2") !InParty("P#Kivan") !InParty("Xan")!InParty("Minsc") !InParty("Ajantis")~THEN@103
==BSANDR IF ~InParty("Driz2") !InParty("P#Kivan") !InParty("Xan")!InParty("Minsc") !InParty("Ajantis")~THEN@104
==BYASRAEN IF ~InParty("B!Gavin") !InParty("P#Kivan") !InParty("Xan")!InParty("Minsc") !InParty("Ajantis")!InParty("Driz2") ~ THEN@105
==BSANDR IF ~InParty("B!Gavin") !InParty("P#Kivan") !InParty("Xan")!InParty("Minsc") !InParty("Ajantis")!InParty("Driz2") ~THEN@106
==BYASRAEN IF ~InParty("Tsujath")!InParty("B!Gavin") !InParty("P#Kivan") !InParty("Xan")!InParty("Minsc") !InParty("Ajantis")!InParty("Driz2") ~THEN@107
==BSANDR IF~InParty("Tsujath")!InParty("B!Gavin") !InParty("P#Kivan") !InParty("Xan")!InParty("Minsc") !InParty("Ajantis")!InParty("Driz2") ~THEN@108
==BYASRAEN IF ~InParty("FHFRN")!InParty("B!Gavin") !InParty("P#Kivan") !InParty("Xan")!InParty("Minsc") !InParty("Ajantis")!InParty("Driz2") !InParty("Tsujath") ~THEN@109
==BSANDR IF~InParty("FHFRN")!InParty("B!Gavin") !InParty("P#Kivan") !InParty("Xan")!InParty("Minsc") !InParty("Ajantis")!InParty("Driz2") !InParty("Tsujath") ~THEN@110
==BYASRAEN IF ~InParty("Anomen")!InParty("B!Gavin") !InParty("P#Kivan") !InParty("Xan")!InParty("Minsc") !InParty("Ajantis")!InParty("Driz2") !InParty("Tsujath") !InParty("FHFRN") ~THEN@111
==BSANDR IF ~InParty("Anomen")!InParty("B!Gavin") !InParty("P#Kivan") !InParty("Xan")!InParty("Minsc") !InParty("Ajantis")!InParty("Driz2") !InParty("Tsujath") !InParty("FHFRN") ~THEN@112
==BYASRAEN IF ~InParty("B!Haldamir")!InParty("B!Gavin") !InParty("P#Kivan") !InParty("Xan")!InParty("Minsc") !InParty("Ajantis")!InParty("Driz2") !InParty("Tsujath") !InParty("FHFRN") !InParty("Anomen") ~THEN@113
==BSANDR IF ~InParty("B!Haldamir") !InParty("B!Gavin") !InParty("P#Kivan") !InParty("Xan")!InParty("Minsc") !InParty("Ajantis")!InParty("Driz2") !InParty("Tsujath") !InParty("FHFRN") !InParty("Anomen") ~THEN@114
==BYASRAEN IF ~InParty("J#Kelsey")!InParty("B!Gavin") !InParty("P#Kivan") !InParty("Xan")!InParty("Minsc") !InParty("Ajantis")!InParty("Driz2") !InParty("Tsujath") !InParty("FHFRN") !InParty("Anomen") !InParty("B!Haldamir") ~THEN@115
==BSANDR IF ~InParty("J#Kelsey") !InParty("B!Gavin") !InParty("P#Kivan") !InParty("Xan")!InParty("Minsc") !InParty("Ajantis")!InParty("Driz2") !InParty("Tsujath") !InParty("FHFRN") !InParty("Anomen") !InParty("B!Haldamir")~THEN@116
==BYASRAEN IF ~GlobalGT("SanHaerRel1","GLOBAL",18) !Dead("Haerdalis")~THEN@117
==BSANDR IF ~GlobalGT("SanHaerRel1","GLOBAL",18)!Dead("Haerdalis")~THEN@118
==BYASRAEN IF ~Global("SanRomPath","GLOBAL",1)~THEN@119
==BSANDR IF ~Global("SanRomPath","GLOBAL",1)~THEN@120
EXIT

CHAIN
IF~Global("SanYasfr","GLOBAL",13)~THEN BSANDR SanYasMorntalk
@121
DO~SetGlobal("SanYasfr","GLOBAL",14)RealSetGlobalTimer("SanYasInterv","LOCALS",1000)~
==BYASRAEN @122
==BSANDR @123
==BYASRAEN @124
==BSANDR @125
==BYASRAEN @126DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT

CHAIN
IF~Global("SanYasfr","GLOBAL",15)~THEN BSANDR SanYasStartalk
@127
DO~SetGlobal("SanYasfr","GLOBAL",16)RealSetGlobalTimer("SanYasInterv","LOCALS",1000)~
==BYASRAEN @128
==BSANDR @129
==BYASRAEN @130
==BSANDR @131
==BYASRAEN @132
==BSANDR @133
==BYASRAEN @134
EXIT

CHAIN
IF~Global("SanYasUD","LOCALS",1)~THEN BSANDR SanYasUD1talk
@135
DO~SetGlobal("SanYasUD","LOCALS",2)~
==BYASRAEN @136
==BSANDR @137
==BYASRAEN @138
==BSANDR @139
==BYASRAEN @140
==BSANDR @141
==BYASRAEN @142
==BSANDR @143
==BYASRAEN @144
=@145EXIT

CHAIN
IF~Global("SanYasUD","LOCALS",3)~THEN BSANDR SanYasUD2talk
@146
DO~SetGlobal("SanYasUD","LOCALS",4)~
==BYASRAEN @147
==BSANDR @148
==BYASRAEN @149
==BSANDR @150
==BYASRAEN @151
==BSANDR @152
==BYASRAEN @153
==BSANDR @154
==BYASRAEN @155DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT

CHAIN
IF~Global("SanYasUD","LOCALS",5)~THEN BSANDR SanYasUD2talk
@156
DO~SetGlobal("SanYasUD","LOCALS",6)~
==BYASRAEN @157
==BSANDR @158
==BYASRAEN @159
==BSANDR IF~!InParty("Driz2")~THEN @160
==BSANDR IF~InParty("Driz2")~THEN @161
==BSANDR @162
==BYASRAEN @163
==BSANDR @164
==BYASRAEN @165
==BSANDR @166
==BYASRAEN @167
==BSANDR @168EXIT

CHAIN
IF~Global("YasraenaSvirfObjection","GLOBAL",3)~THEN BSANDR SanYasSnif
@169
DO~SetGlobal("YasraenaSvirfObjection","GLOBAL",4)~
==BYASRAEN @170
==BSANDR @171
==BYASRAEN @172EXIT

CHAIN
IF~Global("SanDrowHerY","GLOBAL",1)~THEN BSandr SanQilYas
@173
DO~SetGlobal("SanDrowHerD","GLOBAL",2) SetGlobal("SanDrowHerV","GLOBAL",2) SetGlobal("SanDrowHerY","GLOBAL",2)~
==BYASRAEN@174
==BSANDR @175
==BYASRAEN@176
==BSANDR @177
=@178
==BYASRAEN@179
==BSANDR @180
==BYASRAEN@181
==BSANDR @182DO~RestParty()~EXIT

CHAIN
IF~Global("SanYasStay","LOCALS",2)~THEN BSandr SanYasStay
@183
DO~SetGlobal("SanYasStay","LOCALS",3)~
==BYASRAEN@184
==BSANDR @185
==BYASRAEN@186
==BSANDR @187
==BYASRAEN@188
==BSANDR @189
==BYASRAEN@190EXIT


//==================================Yasraena Appends

APPEND BYASRAEN

IF WEIGHT #-9 ~Global("SanHealYas","GLOBAL",5)~THEN BEGIN SanHealYas1
SAY @191
IF~~THEN EXTERN BSANDR YasHealed1
END

IF WEIGHT #-8 ~Global("SanHealYas","GLOBAL",9)~THEN BEGIN SanHealYas2
SAY @192
IF~~THEN EXTERN BSANDR YasHealed2
END

IF WEIGHT #-7 ~Global("SanYasKill","GLOBAL",1)~THEN BEGIN SanYasKill1
SAY @193
IF~~THEN EXTERN BSANDR YasKill10
END
END

EXTEND_BOTTOM YasraenP 9
IF~InParty("CVSandr") GlobalLT("Chapter","GLOBAL",21)~THEN REPLY@194EXTERN CVSandrJ Yaspart
END

CHAIN
IF~~THEN CVSandrJ Yaspart
@195
==YasraenP@196DO~SetGlobal("YasraenaJoined","GLOBAL",3)ActionOverride("Yasraena",EscapeAreaMove("cvelm3",300,350,3)) ~EXIT

APPEND YasraenP
IF WEIGHT #-7~Global("YasraenaJoined","GLOBAL",3)~THEN BEGIN YasWD1
SAY@197
IF~~THEN REPLY@198GOTO YasWD2
IF~~THEN REPLY@199GOTO YasWD3
END

IF~~THEN BEGIN YasWD2
SAY@200
IF~~THEN DO~SetGlobal("YasraenaJoined","GLOBAL",1)JoinParty()~EXIT
END

IF~~THEN BEGIN YasWD3
SAY@201
IF~~THEN EXIT
END
END



