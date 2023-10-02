BEGIN BJenli

IF~Global("JenEdwinR","LOCALS",9)~THEN BEGIN JeneggsE1
SAY@0
IF~~THEN REPLY@1GOTO JeneggsE2
IF~~THEN REPLY@2GOTO JeneggsE2
END

IF~~THEN BEGIN JeneggsE2
SAY@3
IF~~THEN REPLY@4GOTO JeneggsE3
IF~~THEN REPLY@5GOTO JeneggsE3
END

IF~~THEN BEGIN JeneggsE3
SAY@6
=@7
IF~~THEN REPLY@8DO~SetGlobal("JenEdwinR","LOCALS",10)~GOTO JeneggsE4
END

IF~~THEN BEGIN JeneggsE4
SAY@6
=@9
IF~~THEN REPLY@10GOTO JeneggsE5
IF~~THEN REPLY@11GOTO JeneggsE5
END

IF~~THEN BEGIN JeneggsE5
SAY@12
=@13
IF~~THEN REPLY@14GOTO JeneggsE6
IF~~THEN REPLY@15GOTO JeneggsE6
IF~~THEN REPLY@16GOTO JeneggsE6
IF~~THEN REPLY@17GOTO JeneggsE6
END

IF~~THEN BEGIN JeneggsE6
SAY@18
IF~~THEN DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~EXIT
END

//NPC Banters
CHAIN
IF~Global("Jenimo2","LOCALS",1)~THEN BJenli PinkImo
@19
DO~SetGlobal("Jenimo2","LOCALS",2)RealSetGlobalTimer("JenligT","LOCALS",1000)~
==BImoen@20
==BJenli@21
==BImoen@22
==BJenli@23
==BImoen@24
==BJenli@25EXIT

CHAIN
IF~Global("Jenimo2","LOCALS",3)~THEN BJenli CookImo
@26
DO~SetGlobal("Jenimo2","LOCALS",4)RealSetGlobalTimer("JenligT","LOCALS",1000)~
==BImoen@27
==BJenli@28
==BImoen@29
==BJenli@30
==BImoen@31
==BJenli@32
==BImoen@33
==BJenli@34
==BImoen@35
==BJenli@36
EXIT

CHAIN
IF~Global("SanHealJen","GLOBAL",6)~THEN BJenli SanthiefJen1
@37
==BSandr@38
==BJenli@39
=@40
==BSandr@41
==BJenli@42
==BSandr@43
==BJenli@44DO~SetGlobal("SanHealJen","GLOBAL",7)~EXIT

CHAIN
IF~Global("SanHealJen","GLOBAL",8)~THEN BJenli SanGodJen1
@45
DO~SetGlobal("SanHealJen","GLOBAL",9)ActionOverride("CVSandr",AddSpecialAbility("SPIN547"))~
==BSandr@46
==BJenli@47
==BSandr@48
==BJenli@49
==BSandr@50
==BJenli@51
==BSandr@52
==BJenli@53EXIT

CHAIN
IF~Global("NorbySpawn","bg3300",2) ~THEN BJenli Dragpact1
@54
DO~SetGlobal("NorbySpawn","bg3300",3)~
==BSandr@55
==BJenli@56
==BSandr@57
==BJenli@58
==BSandr@59
==BJenli@60EXIT

CHAIN
IF~Global("JenLinear","LOCALS",1)~THEN BJenli Linetime1
@61
DO~SetGlobal("JenLinear","LOCALS",2)~
==BSandr@62
==BJenli@63
==BSandr@64
==BJenli@65
END
++@66+ Linetime2
++@67+ Linetime2

CHAIN
IF~~THEN  BJenli Linetime2
@68
==BSandr@69
END
++@70EXIT
++@71EXIT

CHAIN
IF~Global("JenHallw","BG0130",1)~THEN BJenli Invent
@72
DO~SetGlobal("JenHallw","BG0130",2)~
==BSandr@73
==BJenli@74
=@75
==BSandr@76
==BJenli@77
==BSandr@78
==BJenli@79
==BSandr@80
==BJenli@81
=@82EXIT

CHAIN
IF~Global("JenSeatalk","BG3100",2)~THEN BJenli Seaside
@83
DO~SetGlobal("JenSeatalk","BG3100",3)~
==BIMOEN IF ~InParty("Imoen2")~THEN @84
==BSandr@85
==BJenli@86
==BSandr@87
==IF_FILE_EXISTS ACBreB IF~InParty("ACBre") ~THEN  @88
==BJenli@89
==BSandr@90
==BJenli@91
==BIMOEN IF ~InParty("Imoen2")~THEN @92EXIT

CHAIN
IF~Global("JenDurl","LOCALS",1)~THEN BJenli Bastion
@93
DO~SetGlobal("JenDurl","LOCALS",2)~
==BSandr@94
==BJenli@95
==BSandr@96
==BJenli@97
==BSandr@98
==BJenli@99
==BSandr@100
==BJenli@101
==BSandr@102
==BJenli@103
==BSandr@104EXIT

CHAIN
IF~Global("SuninMeetJen","GLOBAL",3)~THEN  BJenli KayWas
@105
DO~SetGlobal("SuninMeetJen","GLOBAL",4) RealSetGlobalTimer("JenligT","LOCALS",1500)~
==BSandr@106
==BJenli@107
=@108
==BSandr@109
==BJenli@110
==BSandr@111
==BJenli@112
==BSandr@113
==BJenli@114
==BSandr@115
==BJenli@116
==BSandr@117DO~RestParty()~ EXIT

CHAIN
IF~Global("SanJenDriz","LOCALS",1)~THEN BJenli KayWas3
@118
DO~SetGlobal("SanJenDriz","LOCALS",2)~
==BSandr@119
==BJenli@120
==BSandr @121
==BJenli@122
==BSandr @123
==BJenli@124EXIT

CHAIN
IF~Global("SuninMeetJen","GLOBAL",5)~THEN  BJenli KayWas2
@125
DO~SetGlobal("SuninMeetJen","GLOBAL",6) RealSetGlobalTimer("JenligT","LOCALS",700)~
==BSandr@126
==BJenli@127
==BSandr@128
==BJenli@129
==BSandr@130
==BJenli@131
==BSandr@132DO~AddSpecialAbility("spin476")~
==BJenli@133EXIT

CHAIN
IF~Global("JenWyEat","LOCALS",1)~THEN BJenli Wyvernmeal
@134
DO~SetGlobal("JenWyEat","LOCALS",2) ~
==BIMOEN IF~InParty("Imoen2")~THEN@135
==BSandr IF~InParty("CVSandr") ~THEN  @136
== BCORAN  IF~InParty("Coran") ~THEN  @137
== BVICON  IF~InParty("Viconia") ~THEN @138
== BKIVAN  IF~InParty("Kivan") ~THEN @139
==IF_FILE_EXISTS BSUFINCH  IF~InParty("Sufinch") ~THEN @140
== BAJANT  IF~InParty("Ajantis") ~THEN @141
== IF_FILE_EXISTS k-roseB  IF~InParty("k-rose") ~THEN @142
==IF_FILE_EXISTS ~B!GAVINJ~IF ~InParty("B!GAVIN")~THEN @143
==IF_FILE_EXISTS ACBreB IF~InParty("ACBre") ~THEN  @144
== BBRANW  IF~InParty("Branwen") ~THEN @145
== BXANNN  IF~InParty("Xan") ~THEN @146
== BJAHEI  IF~InParty("Jaheira") ~THEN @147
==IF_FILE_EXISTS BT2Val IF~InParty("T2Val") ~THEN @148
== IF_FILE_EXISTS BRH#ISRA  IF~InParty("RH#ISRA") ~THEN @149
END
++@150EXIT
++@151EXIT

CHAIN
IF~Global("BansheeMap3","GLOBAL",2)~THEN BJenli DSCMinf
@152
DO~SetGlobal("BansheeMap3","GLOBAL",3)~
==BSandr@153
==BJenli@154
=@155
==BSandr@156
==BJenli@157
END
++@158EXIT
++@159EXIT
++@160EXIT

CHAIN
IF~Global("BansheeMap3","GLOBAL",4)~THEN BJenli DSCMinfcav
@161
DO~SetGlobal("BansheeMap3","GLOBAL",5)~
==BSandr@162
=@163
END
++@164DO~AddexperienceParty(1200)~EXIT
++@165DO~ReputationInc(-1)~+ DSCMinfcav2
++@166DO~AddexperienceParty(1200)~EXIT

CHAIN
IF~~THEN BJenli DSCMinfcav2
@167
==BSandr@168
DO~ActionOverride("CVJenlig",RunAwayFrom(Player1,25))  ActionOverride("CVSandr",RunAwayFrom(Player1,25))~EXIT

CHAIN
IF~Global("JenThHonor","LOCALS",1)~THEN BJenli Thiefhon
@169
DO~SetGlobal("JenThHonor","LOCALS",2)~
==Balora IF~InParty("alora")~THEN@170
==Bajant IF~InParty("Ajantis")~THEN@171
==IF_FILE_EXISTS BT2val IF~InParty("T2val")!InParty("Ajantis")~THEN@171
==IF_FILE_EXISTS CONCHOJ IF~InParty("CONCHOBHAIR")!InParty("T2val")!InParty("Ajantis")~THEN@171
==BJenli IF~OR(3) InParty("Ajantis") InParty("T2val")InParty("CONCHOBHAIR")~THEN@172
==BSandr IF~InParty("CVSandr")~THEN@173
==BJenli IF~InParty("CVSandr")~THEN@174EXIT

//Jen'lig and Edwin
CHAIN
IF~Global("JenEdwinR","LOCALS",1)~THEN BJenli EdwinR1
@175
DO~SetGlobal("JenEdwinR","LOCALS",2) RealSetGlobalTimer("JenEdwinRT","LOCALS",2400)~
==Bedwin@176
==BJenli@177
=@178
==Bedwin@179
==BJenli@180
=@181
==Bedwin@182
==BJenli@183EXIT

CHAIN
IF~Global("JenEdwinR","LOCALS",3)~THEN BJenli EdwinR2
@184
DO~SetGlobal("JenEdwinR","LOCALS",4) RealSetGlobalTimer("JenEdwinRT","LOCALS",2400)~
==Bedwin@185
==BJenli@186
==Bedwin@187
==BJenli@188EXIT

CHAIN
IF~Global("JenEdwinR","LOCALS",5)~THEN BJenli EdwinR3
@189
DO~SetGlobal("JenEdwinR","LOCALS",6) RealSetGlobalTimer("JenEdwinRT","LOCALS",3000)~
==Bedwin@190
==BJenli@191
==Bedwin@192
==BJenli@193
==Bedwin@194 DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~EXIT

CHAIN
IF~Global("JenEdwinR","LOCALS",7)~THEN BJenli EdwinR4
@195
DO~SetGlobal("JenEdwinR","LOCALS",8) RealSetGlobalTimer("JenEdwinRT","LOCALS",3600)~
==Bedwin@196
=@197
==BJenli@198
==Bedwin@199EXIT

CHAIN
IF~Global("JenPalad","LOCALS",1)~THEN BJenli Falsepal
@200
DO~SetGlobal("JenPalad","LOCALS",2)~
==Bajant IF~InParty("Ajantis")~THEN@201
==IF_FILE_EXISTS CONCHOJ IF~InParty("CONCHOBHAIR")~THEN@201
==IF_FILE_EXISTS BT2val IF~InParty("T2val")~THEN@201
==BJenli @202
==Bajant IF~InParty("Ajantis")~THEN@203
==IF_FILE_EXISTS CONCHOJ IF~InParty("CONCHOBHAIR")~THEN@203
==IF_FILE_EXISTS BT2val IF~InParty("T2val")~THEN@203
==BJenli IF~InParty("Ajantis")~THEN@204
==BJenli IF~InParty("CONCHOBHAIR")~THEN@205
==BJenli IF~InParty("T2val")~THEN@206
==BJenli @207
==Bajant IF~InParty("Ajantis")~THEN@208
==IF_FILE_EXISTS CONCHOJ IF~InParty("CONCHOBHAIR")~THEN@208
==IF_FILE_EXISTS BT2val IF~InParty("T2val")~THEN@208
==BJenli @209EXIT

CHAIN
IF~Global("JenIsraB","LOCALS",0) InParty("CVJenlig") InParty("rh#isra") !See([ENEMY])!AreaType(DUNGEON)~THEN BJenli Israbant
@210
DO~SetGlobal("JenIsraB","LOCALS",1)RealSetGlobalTimer("JenligT","LOCALS",300)~
==IF_FILE_EXISTS BRH#ISRA@211
==BJenli @212
==IF_FILE_EXISTS BRH#ISRA@213
==BJenli @214
==IF_FILE_EXISTS BRH#ISRA@215EXIT

CHAIN
IF~Global("JenBranB","LOCALS",0) InParty("CVJenlig") InParty("Branwen") !See([ENEMY])!AreaType(DUNGEON)~THEN BJenli Branbant
@216
DO~SetGlobal("JenBranB","LOCALS",1)RealSetGlobalTimer("JenligT","LOCALS",300)~
==BBRANW@217
==BJenli@218
==BBRANW@219
==BJenli@220
==BBRANW@221
==BJenli@222EXIT

CHAIN
IF~Global("JenKivB","LOCALS",0) InParty("CVJenlig") InParty("Kivan") !See([ENEMY])!AreaType(DUNGEON)~THEN BJenli Kivanbant
@223
DO~SetGlobal("JenKivB","LOCALS",1)RealSetGlobalTimer("JenligT","LOCALS",1300)~
== BKIVAN@224
==BJenli@225
==BKIVAN@226
==BJenli@227
==BKIVAN@228
==BJenli@229
==BKIVAN@230EXIT

CHAIN
IF~Global("JenVicB","LOCALS",0) InParty("CVJenlig") InParty("Viconia") !See([ENEMY])!AreaType(DUNGEON)~THEN BJenli Vicbant
@231
DO~SetGlobal("JenVicB","LOCALS",1)RealSetGlobalTimer("JenligT","LOCALS",1300)~
== BVICON @232
==BJenli@233
== BVICON @234
==BJenli@235EXIT

CHAIN
IF~Global("JenXanB","LOCALS",0) InParty("CVJenlig") InParty("Xan")GlobalGT("SanXanA","GLOBAL",4) !See([ENEMY])!AreaType(DUNGEON)~THEN BJenli Xanbant
@236
DO~SetGlobal("JenXanB","LOCALS",1)RealSetGlobalTimer("JenligT","LOCALS",1300)~
==BXANNN@237
==BJenli@238
==BXANNN@239
==BJenli@240
==BXANNN IF~InParty("CVSandr")~THEN@241
==BJenli IF~InParty("CVSandr")~THEN@242EXIT

CHAIN
IF~Global("JenGarrB","LOCALS",0) InParty("CVJenlig") InParty("Garrick") !See([ENEMY])!AreaType(DUNGEON)~THEN BJenli Garrbant
@243
DO~SetGlobal("JenGarrB","LOCALS",1) RealSetGlobalTimer("JenligT","LOCALS",1300)~
==BGARRI@244
==BJenli@245
==BGARRI@246
==BJenli@247
=@248
==BGARRI@249DO~RunAwayFrom("CVJenlig",20)~
==BJenli@250EXIT

CHAIN
IF~Global("JenShartB","LOCALS",0) InParty("CVJenlig") InParty("Sharteel") !See([ENEMY])!AreaType(DUNGEON)~THEN BJenli Sharbant
@251
DO~SetGlobal("JenShartB","LOCALS",1) RealSetGlobalTimer("JenligT","LOCALS",1300)~
==BShart @252
==BJenli@253
==BShart @254
==BJenli@255
==BShart @256
==BJenli@257
==BShart @258
==BJenli@259
==BShart @260EXIT

CHAIN
IF~Global("JenYeslB","LOCALS",0) InParty("CVJenlig") InParty("Yeslick") !See([ENEMY])!AreaType(DUNGEON)~THEN BJenli Yeslbant
@261
DO~SetGlobal("JenYeslB","LOCALS",1) RealSetGlobalTimer("JenligT","LOCALS",1300)~
==BYesli@262
=@263
==BJenli@264EXIT

CHAIN
IF~Global("JenGavB","LOCALS",0) InParty("CVJenlig") InParty("B!Gavin") !See([ENEMY])!AreaType(DUNGEON)~THEN BJenli Gavinbant
@265
DO~SetGlobal("JenGavB","LOCALS",1) RealSetGlobalTimer("JenligT","LOCALS",1300)~
==IF_FILE_EXISTS~BB!GAVIN~@266
==BJenli@267
==IF_FILE_EXISTS~BB!GAVIN~@268
==BJenli@269
=@270
==IF_FILE_EXISTS~BB!GAVIN~@271
==BJenli@272
EXIT

CHAIN
IF~Global("JenMinsB","LOCALS",0) InParty("CVJenlig") InParty("Minsc") !See([ENEMY])!AreaType(DUNGEON)~THEN BJenli Minscbant
@273
DO~SetGlobal("JenMinsB","LOCALS",1) RealSetGlobalTimer("JenligT","LOCALS",1300)~
== BMINSC_ @274
==BJenli@275
=@276
== BMINSC_ @277
=@278
==BJenli@279EXIT

CHAIN
IF~Global("JenSafaB","LOCALS",0) InParty("CVJenlig") InParty("Safana") !See([ENEMY])!AreaType(DUNGEON) !AreaCheck("BG3600")~THEN BJenli Safabant
@280
DO~SetGlobal("JenSafaB","LOCALS",1) RealSetGlobalTimer("JenligT","LOCALS",1300)~
== BSAFAN@281
==BJenli@282
== BSAFAN@283
==BJenli@284
== BSAFAN@285EXIT

CHAIN
IF~Global("JenFaldoB","LOCALS",0) InParty("CVJenlig") InParty("Faldorn") !See([ENEMY])!AreaType(DUNGEON) GlobalGT("SanFalB","GLOBAL",2)~THEN BJenli Faldobant
@286
DO~SetGlobal("JenFaldoB","LOCALS",1) RealSetGlobalTimer("JenligT","LOCALS",1300)~
== BFALDO@287
==BJenli@288
== BFALDO@289
==BJenli@290
== BFALDO@291EXIT

CHAIN
IF~Global("JenDynaB","LOCALS",0)InParty("CVJenlig") InParty("Dynaheir") !See([ENEMY])!AreaType(DUNGEON)~THEN BJenli Dynabant
@292
DO~SetGlobal("JenDynaB","LOCALS",1) RealSetGlobalTimer("JenligT","LOCALS",1300)~
==IF_FILE_EXISTS  BDYNA @293
==IF_FILE_EXISTS  BDYNAH @293
==BJenli@294
==IF_FILE_EXISTS  BDYNA@295
==IF_FILE_EXISTS  BDYNAH@295
==BJenli@296
==IF_FILE_EXISTS  BDYNA@297
==IF_FILE_EXISTS  BDYNAH@297
==BJenli@298EXIT

CHAIN
IF~Global("JenCoranB","LOCALS",0)InParty("CVJenlig") InParty("Coran") !See([ENEMY])!AreaType(DUNGEON)~THEN BJenli Coranbant
@299
DO~SetGlobal("JenCoranB","LOCALS",1) RealSetGlobalTimer("JenligT","LOCALS",1300)~
== BCoran @300
==BJenli@301
== BCoran @302
==BJenli IF~InParty("Imoen2")~THEN@303
==BJenli IF~!InParty("Imoen2")~THEN@304
== BCoran IF~InParty("CVSandr")~THEN@305
== BCoran IF~!InParty("CVSandr")~THEN@306
== BJenli IF~!InParty("CVSandr")~THEN@307
== BJenli IF~InParty("CVSandr")~THEN@308
== BCoran @309
== BJenli @310EXIT

CHAIN
IF~Global("JenDrizB","LOCALS",0) InParty("CVJenlig") InParty("F_Drizzt")GlobalGT("SanDrizzt","GLOBAL",5) !See([ENEMY])~THEN BJenli Drizbant
@311
DO~SetGlobal("JenDrizB","LOCALS",1) ~
== F_DRIZTJ@312
==BJenli@313
== F_DRIZTJ@314
==BJenli@315
== F_DRIZTJ@316
==BJenli@317
== F_DRIZTJ@318EXIT

CHAIN
IF~Global("JenKagaB","LOCALS",0) InParty("CVJenlig") InParty("Kagain") AreaType(OUTDOOR) !See([ENEMY])~THEN BJenli Kagainbant
@319
DO~SetGlobal("JenKagaB","LOCALS",1)RealSetGlobalTimer("JenligT","LOCALS",1300)~
==BKagai@320
==BJenli@321
==BKagai@322
==BJenli@323
==BKagai@324
==BJenli@325DO~ReallyForceSpell("Kagain",PSIONIC_PROJECT_FORCE)~EXIT

CHAIN
IF~Global("JenJaheB","LOCALS",0) InParty("CVJenlig") InParty("Jaheira") InParty("Khalid") AreaType(OUTDOOR) !See([ENEMY])~THEN BJenli Jaheirabant
@326
DO~SetGlobal("JenJaheB","LOCALS",1)RealSetGlobalTimer("JenligT","LOCALS",1300)~
==BJAHEI@327
==BKHALI@328
==BJAHEI@329
==BKHALI@330
==BJenli@331
==BJAHEI@332DO~RunAwayFrom("CVJenlig",30)~
==BKHALI@333EXIT

CHAIN
IF~Global("JenFabiB","LOCALS",0) InParty("CVJenlig") InParty("Fabio") AreaType(OUTDOOR) !See([ENEMY])~THEN BJenli Fabiobant
@334
DO~SetGlobal("JenFabiB","LOCALS",1)~
==IF_FILE_EXISTS BFabio@335
==BJenli@336
==IF_FILE_EXISTS BFabio@337
==BJenli@338EXIT

CHAIN
IF~Global("JenVyndB","LOCALS",0) InParty("CVJenlig") InParty("GV#Vynd") AreaType(DUNGEON) !See([ENEMY])~THEN BJenli Vyndbant
@339
DO~SetGlobal("JenVyndB","LOCALS",1)~
==IF_FILE_EXISTS BGV#Vynd@340
==BJenli@341
==IF_FILE_EXISTS BGV#Vynd@342
==IF_FILE_EXISTS BGV#Vynd@343
==BJenli@344EXIT

CHAIN
IF~Global("JenWhiteB","LOCALS",0) GlobalGT("WhiteFriendshiTalk","GLOBAL",7) InParty("CVJenlig") InParty("V#1whi")~THEN BJenli WhiteB
@345
DO~SetGlobal("JenWhiteB","LOCALS",1)RealSetGlobalTimer("JenligT","LOCALS",1300)~
==IF_FILE_EXISTS V#1whib@346
==BJenli@347
==IF_FILE_EXISTS V#1whib@348
==BJenli@349
==IF_FILE_EXISTS V#1whib@350EXIT

CHAIN
IF~Global("JenBaeloB","LOCALS",0) InParty("Baeloth")InParty("CVJenlig")~THEN BJenli WhiteB
@351
DO~SetGlobal("JenBaeloB","LOCALS",1)RealSetGlobalTimer("JenligT","LOCALS",1300)~
==BaelothJ@352
==BJenli@353
==BaelothJ@354
==BJenli@355DO~ReallyForceSpell("Baeloth",PSIONIC_PROJECT_FORCE) ~EXIT

CHAIN
IF~RandomNum(6,1)~THEN  BJenli Random1
@356EXIT

CHAIN
IF~RandomNum(6,2)~THEN  BJenli Random2
@357EXIT

CHAIN
IF~RandomNum(6,3)~THEN  BJenli Random3
@358EXIT

CHAIN
IF~RandomNum(6,4)AreaType(CITY)~THEN  BJenli Random4
@359EXIT

CHAIN
IF~RandomNum(6,5)AreaType(DUNGEON)~THEN  BJenli Random5
@360
END
++@361EXIT

CHAIN
IF~RandomNum(6,6)AreaType(OUTDOOR)~THEN  BJenli Random6
@362
END
++@363EXIT

