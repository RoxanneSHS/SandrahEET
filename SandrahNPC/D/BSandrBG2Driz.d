APPEND BSANDR

// Drizzt

IF ~Global("SanDrizzt2","GLOBAL",1)~THEN BEGIN SanAwaitsDr201
SAY @0
IF~~THEN REPLY @1GOTO SanAwaitsDr202
IF~~THEN REPLY @2GOTO SanAwaitsDr202
END

IF~~THEN BEGIN  SanAwaitsDr202
SAY @3
IF~~THEN REPLY @4GOTO SanAwaitsDr203
IF~~THEN REPLY @5GOTO SanAwaitsDr203
END

IF~~THEN BEGIN  SanAwaitsDr203
SAY @6
IF ~~THEN REPLY @7DO ~SetGlobal("SanDrizzt2","GLOBAL",2) RealSetGlobalTimer("SanDrizztInterv","GLOBAL",1200) ~GOTO SanAwaitsDr204
END

IF~~THEN BEGIN  SanAwaitsDr204
SAY @8
IF ~~THEN REPLY @9GOTO SanAwaitsDr205
END

IF~~THEN BEGIN  SanAwaitsDr205
SAY @10
IF ~Global("SanRomPath","GLOBAL",1)~THEN REPLY @11GOTO SanAwaitsDr206
IF ~Global("SanRomPath","GLOBAL",2)~THEN REPLY @12GOTO SanAwaitsDr207
IF~Global("SanRomPath","GLOBAL",1)~THEN REPLY @12GOTO SanAwaitsDr206
IF ~Global("SanRomPath","GLOBAL",2)~THEN REPLY @13GOTO SanAwaitsDr209
END

IF~~THEN BEGIN  SanAwaitsDr206
SAY @14
IF~~THEN REPLY @15DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~EXIT
END

IF~~THEN BEGIN  SanAwaitsDr207
SAY @16
IF~~THEN REPLY @15DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~EXIT
END

IF~~THEN BEGIN  SanAwaitsDr209
SAY @17
IF~~THEN REPLY @18DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~EXIT
END
END

CHAIN
IF~Global("SanHealDriz2","GLOBAL",5) ~THEN BSANDR DrizhealBG2
@19
DO~SetGlobal("SanHealDriz2","GLOBAL",6) RealSetGlobalTimer("SanDrizztInterv","GLOBAL",900) ~
== Driz2J@20
== BSANDR@21
== Driz2J@22
== BSANDR @23
== Driz2J@24
== BSANDR @25
== Driz2J@26
== BSANDR @27
== Driz2J@28
== BSANDR @29
EXIT


CHAIN
IF ~Global("SanDrizzt2","GLOBAL",3)~THEN BSANDR SanDriBG2In
@30
DO ~SetGlobal("SanDrizzt2","GLOBAL",4) RealSetGlobalTimer("SanDrizztInterv","GLOBAL",1200)~
== Driz2J@31
== BSANDR@32
== Driz2J@33
EXIT

CHAIN
IF ~Global("SanDrizzt2","GLOBAL",5)~THEN BSANDR SanDriBG2Olddays
@34
DO ~SetGlobal("SanDrizzt2","GLOBAL",6) RealSetGlobalTimer("SanDrizztInterv","GLOBAL",1200)~
== Driz2J@35
== BSANDR@36
== Driz2J@37
== BSANDR@38
== Driz2J@39
== BSANDR@40
== Driz2J@41
== BSANDR@42
== Driz2J@43
== BSANDR@44
EXIT

CHAIN
IF ~Global("SanDrizzt2","GLOBAL",7)~THEN BSANDR SanDriz2JMat
@45
DO ~SetGlobal("SanDrizzt2","GLOBAL",8) RealSetGlobalTimer("SanDrizztInterv","GLOBAL",1200)~
== Driz2J@46
== BSANDR@47
== Driz2J@48
== BSANDR@49
== Driz2J@50
== BSANDR@51
== Driz2J@52
== BSANDR@53
== Driz2J@54
== BSANDR@55
== Driz2J@56
== BSANDR@57
== Driz2J@58DO ~ RestParty() ~EXIT

CHAIN
IF ~Global("SanDrizzt2","GLOBAL",10)~THEN BSANDR SanDriz2JMid
@59
DO~SetGlobal("SanDrizzt2","GLOBAL",11) RealSetGlobalTimer("SanDrizztInterv","GLOBAL",1200) ~
== Driz2J@60
== BSANDR@61
== Driz2J@62
=@63
== BSANDR@64
== Driz2J@65
== BSANDR@66
== Driz2J@67
== BSANDR@68
== Driz2J@69DO ~ StartCutSceneMode()  SmallWait(4) FadeToColor([20.0],0) Wait(4) FadeFromColor([20.0],0)  EndCutSceneMode() ~EXIT

CHAIN
IF ~Global("SanDrizzt2","GLOBAL",12)~THEN BSANDR SanDriz2JCyr
@70
DO~SetGlobal("SanDrizzt2","GLOBAL",13) RealSetGlobalTimer("SanDrizztInterv","GLOBAL",1200) ~
== Driz2J@71
== BSANDR@72
== Driz2J@73
= @74
== BSANDR@75
== Driz2J@76
= @77
== Driz2J@78
== Driz2J@79
== BSANDR@80
== Driz2J@81
== BSANDR@82EXIT

CHAIN
IF~Global("SanDrizBG2","LOCALS",1)~THEN BSANDR SanDriBG2Plot1
@83
DO~SetGlobal("SanDrizBG2","LOCALS",2)~
== Driz2J @84
== BSANDR@85
== Driz2J @86
== BSANDR@87
== Driz2J @88
== BSANDR@89
== Driz2J @90
== BSANDR@91DO ~ StartCutSceneMode()  SmallWait(4) FadeToColor([20.0],0) Wait(4) FadeFromColor([20.0],0)  EndCutSceneMode() ~EXIT

CHAIN
IF~Global("SanDrizBG2","LOCALS",3)~THEN BSANDR SanDriBG2Plot2
@92
DO~SetGlobal("SanDrizBG2","LOCALS",4)~
== Driz2J @93
== BSANDR@94
== Driz2J @95
== BSANDR@96
=@97
== Driz2J @98
== BSANDR@99
EXIT

CHAIN
IF~Global("SanDrowHerD","GLOBAL",1)~THEN BSandr SanQilDri
@100
DO~SetGlobal("SanDrowHerD","GLOBAL",2) SetGlobal("SanDrowHerV","GLOBAL",2) SetGlobal("SanDrowHerY","GLOBAL",2)~
==Driz2J @101
==BSANDR @102
==Driz2J @103
==BSANDR @104
=@105
==Driz2J @106
==BSANDR @107
==Driz2J @108
==BSANDR @109DO~RestParty()~EXIT

CHAIN
IF~Global("SanDrizBG2","LOCALS",5)~THEN BSANDR SanDriBG2Plot3
@110
DO~SetGlobal("SanDrizBG2","LOCALS",6)~
== Driz2J @111
== BSANDR@112
== Driz2J @113
== BSANDR@114
== Driz2J @115
== BSANDR@116
== Driz2J @117
EXIT

CHAIN
IF~Global("SanDrizBG2","LOCALS",7)~THEN BSANDR SanDriBG2Plot4
@118
DO~SetGlobal("SanDrizBG2","LOCALS",8)~
== Driz2J @119
== BSANDR@120
== Driz2J @121
== BSANDR@122
== Driz2J @123
== BSANDR@124
== Driz2J @125
== BSANDR@126
== Driz2J @127
= @128DO ~ StartCutSceneMode()  SmallWait(4) FadeToColor([20.0],0) Wait(4) FadeFromColor([20.0],0)  EndCutSceneMode() ~EXIT

CHAIN
IF~Global("SanDrizBG2","LOCALS",10)~THEN BSANDR SanDriBG2Plot5
@129
DO~SetGlobal("SanDrizBG2","LOCALS",11)~
== Driz2J @130
== BSANDR@131
== Driz2J @132
== BSANDR@133
END
++ @134EXIT
++ @135+ SanDriBG2Plot6

CHAIN
IF~~THEN BSANDR SanDriBG2Plot6
@136
== Driz2J @137
== BSANDR@138
== Driz2J @139
EXIT

CHAIN
IF~Global("SanDrBremen","LOCALS",1) ~THEN BSANDR SanDriBrem
@140
DO~SetGlobal("SanDrBremen","LOCALS",2)~
== Driz2J @141
== BSANDR@142
== Driz2J @143
== BSANDR@144
== Driz2J @145
= @146
== BSANDR@147
EXIT

CHAIN
IF~Global("SanDrBryn","LOCALS",2)~THEN BSANDR SanDriBry1
@148
DO~SetGlobal("SanDrBryn","LOCALS",3)~
== Driz2J @149
== BSANDR@150
== Driz2J @151
END
++ @152DO~IncrementGlobal("Sanpoints","GLOBAL",2)~EXIT
++@153DO~IncrementGlobal("Sanpoints","GLOBAL",-2)~EXIT


CHAIN
IF~Global("SanDrClob","LOCALS",1)~THEN BSANDR SanDriSlv1
@154
DO~SetGlobal("SanDrClob","LOCALS",2)~
== Driz2J @155
== BSANDR@156
== Driz2J @157
END
++@158EXIT
++@159+ SanDriSlv2

CHAIN
IF~~THEN BSANDR SanDriSlv2
@160
DO~SetGlobal("SanDrClob","LOCALS",3) StartCutScene("SanDrSl")~EXIT

CHAIN
IF~Global("SanDrClob","LOCALS",4)~THEN BSANDR SanDriSlv3
@161
DO~SetGlobal("SanDrClob","LOCALS",5)~
== Driz2J @162
== BSANDR@163
END
++@164DO~IncrementGlobal("Sanpoints","GLOBAL",2)~EXIT
++@165DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~EXIT
++@166DO~IncrementGlobal("Sanpoints","GLOBAL",2)~EXIT


CHAIN
IF~Global("SanDriLeaveWD","GLOBAL",1)~THEN BSANDR SanEndPlot1
@167
DO~SetGlobal("SanDriLeaveWD","GLOBAL",2)~
== Driz2J @168
END
++@169+ SanEndPlot2

CHAIN
IF~~THEN BSANDR SanEndPlot2
@170
== Driz2J @171
== BSANDR@172
== Driz2J @173
== BSANDR@174
== Driz2J @175
== BSANDR@176
END
++@177DO~ActionOverride("Driz2",LeaveParty())
ActionOverride("Driz2",MoveBetweenAreas("CVelm3",[352.380],12))~
EXIT
++@178DO~ActionOverride("Driz2",LeaveParty())
ActionOverride("Driz2",MoveBetweenAreas("CVelm3",[352.380],12))~
EXIT

APPEND DRIZ2P

IF WEIGHT #-5~Global("SanDriLeaveWD","GLOBAL",2)!InParty(Myself) ~THEN BEGIN WDMeetAgain
SAY@179
IF~~THEN REPLY@180EXIT
IF~~THEN REPLY@181DO~ActionOverride("Driz2",JoinParty())~EXIT
END
END

APPEND EntDjin
IF WEIGHT #-1 ~Global("EntDjin11","LOCALS",0) InParty("CVSandr") !InParty("Driz2") ~THEN BEGIN SanDo
SAY @182
IF~~THEN GOTO 10
END

IF~~THEN BEGIN 10
SAY @183
IF~~THEN GOTO 11
END

IF~~THEN BEGIN 11
SAY @184
IF~~THEN DO~SetGlobal("SanRotRepl","GLOBAL",3)	~EXIT
END
END

APPEND BRUE2

IF WEIGHT #-6 ~Dead("Shadar")Dead("MalVamp2")Dead("MalVamp3")Dead("FemVamp2")Dead("FemVamp3")Global("FTlkBr","LOCALS",0) !InParty("Driz2") InParty("CVSandr")~THEN BEGIN SanNoDrizB
SAY@185
IF~~THEN REPLY@186
GOTO SanBrueNoDriz
END

IF~~THEN BEGIN SanBrueNoDriz
SAY @187
IF~~THEN REPLY@188GOTO SanBrueNoDriz1
END

IF~~THEN BEGIN SanBrueNoDriz1
SAY@189
IF~~THEN DO~SetGlobal("FTlkBr","LOCALS",1)
SetGlobal("BruKickedOut","LOCALS",1)
SetGlobal("BruenorOut","GLOBAL",1)
SetGlobal("FDlGu","GLOBAL",2)
AddXPObject(Player1,15000)
AddXPObject(Player2,15000)
AddXPObject(Player3,15000)
AddXPObject(Player4,15000)
AddXPObject(Player5,15000)
AddXPObject(Player6,15000)
EscapeAreaMove("AR0406",1400,1735,0)~EXIT
END
END

APPEND CADDERLY
IF WEIGHT #-2~Global("DlCadd","GLOBAL",0) !InParty("DRIZ2") InParty("CVSandr") ~THEN BEGIN SanRepl1
SAY@190
IF~~THEN REPLY@191GOTO SanRepl2
END

IF~~THEN BEGIN SanRepl2
SAY@192
IF~~THEN REPLY@193GOTO SanRepl3
END

IF~~THEN BEGIN SanRepl3
SAY@194
IF~~THEN EXTERN CVSANDRJ SanCadder1
END

IF WEIGHT #-3~Global("DlCadd","GLOBAL",3) !InParty("DRIZ2") InParty("CVSandr") ~THEN BEGIN SanRepl4
SAY@195
IF ~~THEN GOTO 18
END

IF WEIGHT #-6 ~ Global("DlCadd","GLOBAL",4)!InParty("DRIZ2") InParty("CVSandr") ~THEN BEGIN SanRepl5
SAY  @196
IF ~~THEN REPLY @197GOTO 29
IF ~~THEN REPLY @198EXIT
END
END

APPEND IF_FILE_EXISTS DRMESS
IF~~THEN BEGIN 100
SAY@199
IF ~~THEN REPLY @200GOTO 101
IF ~~THEN REPLY @201GOTO 101
END

IF~~THEN BEGIN 101
SAY@202
IF ~~THEN REPLY @203GOTO 102
IF ~~THEN REPLY @204GOTO 102
END

IF~~THEN BEGIN 102
SAY@205
IF ~~THEN DO ~RevealAreaOnMap("RR3200") SetGlobal("MesDriz","LOCALS",1)~EXIT
END
END

APPEND ERRTU
IF WEIGHT #-6 ~!IfValidForPartyDialogue("Driz2") NumberOfTimesTalkedTo(0) Global("FirstEr","GLOBAL",0) InParty("CVSandr")~THEN BEGIN 100
SAY@206
IF~~THEN EXTERN CVSANDRJ SanErrtu
END
END

APPEND HENMAN
IF WEIGHT #-6~ NumberOfTimesTalkedTo(0)!InParty("Brue2")!InParty("Wulfg2") !InParty("Driz2") InParty("CVSandr") ~THEN BEGIN 100
SAY @207
IF ~~THEN EXTERN CVSANDRJ Sanhenman
END
END

APPEND MARTTIN2

IF WEIGHT #-6~ !InParty("Driz2") InParty("CVSandr") Global("DlgWmar","GLOBAL",0) ~THEN BEGIN 100
SAY@208
IF ~~THEN REPLY @209GOTO 2
END
END

APPEND REG2
IF WEIGHT #-6~NumberOfTimesTalkedTo(0) Global("RegTalk","GLOBAL",0) Dead("Tannar2") Dead("Tannar3") Dead("Errtu") !InParty("Driz2") InParty("CVSandr")~THEN BEGIN 100
SAY@210
IF~~THEN REPLY@211EXTERN CVSandrJ Regis1
END
END

CHAIN
IF~~THEN CVSandrJ Regis1
@212
==REG2@213
== CVSandrJ@214
==REG2@215
== CVSandrJ@216
==REG2@217
=@218
== CVSandrJ@219
==REG2@220
== CVSandrJ@221
==REG2@222
== CVSandrJ@223EXTERN REG2 12


CHAIN
IF~~THEN CVSANDRJ SanCadder1
@224
DO~SetGlobal("DlCadd","GLOBAL",1)~
== CADDERLY@225
== CVSANDRJ@226
== CADDERLY@227
== CVSANDRJ@228
== CADDERLY@229
== CVSANDRJ@230
== CADDERLY@231
=@232
== CVSANDRJ@233
== CADDERLY@234EXIT

CHAIN
IF ~~THEN CVSANDRJ Sanhenman
@235
DO~SetGlobal("Driknicd","GLOBAL",1)~
==HENMAN@236
== CVSANDRJ@237
==HENMAN@238DO ~EscapeArea()~EXIT

CHAIN
IF~~THEN CVSANDRJ SanErrtu
@239
==ERRTU@240
== CVSANDRJ@241
END
++@242EXTERN ERRTU 3

CHAIN
IF~~THEN CHAUNTI 21
@243
== CVSANDRJ@244
==CHAUNTI@245
== CVSANDRJ@246
END
++@247+3
++@248+3
++ @249+22

CHAIN
IF~~THEN CHAUNTI 22
@250
== CVSANDRJ@251
END
++@252+3
++@253DO~SetGlobal("CQuestActive","GLOBAL",4)~EXIT

CHAIN
IF~~THEN CADDER3 101
@254
== CVSANDRJ@255
== CADDER3@256
=@257
=@258
=@259
== CVSANDRJ@260
== CADDER3@261
=@262
== CVSANDRJ@263
== CADDER3@264
END
++@265
DO ~SetGlobal("CQuestActive","GLOBAL",7)~EXIT

EXTEND_TOP DRIZ2 25 #1
IF~InParty("CVSandr") GlobalGT("SanDrizzt","GLOBAL",7)~THEN REPLY@266GOTO 27
END

EXTEND_TOP DRIZ2 27 #1
IF~InParty("CVSandr") GlobalGT("SanDrizzt","GLOBAL",7)~THEN REPLY@267DO ~SetGlobal("Drizztiwdornot","GLOBAL",1) SetGlobal("DrizztKickedOut","GLOBAL",1) SetGlobal("SanRotRepl","GLOBAL",1) SetLeavePartyDialogueFile() EscapeAreaMove("RR4002",1027,1088,8) ~EXIT
END

EXTEND_TOP DRMESS 1 #0
IF~InParty("CVSandr")!InParty("Driz2")~THEN REPLY @268GOTO 100
END

EXTEND_TOP DRMESS 3 #0
IF~InParty("CVSandr")!InParty("Driz2")~THEN REPLY @268GOTO 100
END

APPEND IF_FILE_EXISTS C6DRIZZ1

IF WEIGHT #-6~InParty("CVSandr") GlobalGT("SanDrizzt","GLOBAL",7)~THEN BEGIN Sanc6RU1
SAY@269
IF~~THEN REPLY@270GOTO Sanc6RU2
END

IF~~THEN BEGIN Sanc6RU2
SAY@271
IF~~THEN REPLY@272GOTO 33
IF~~THEN REPLY @273GOTO 42
END
END

APPEND CHAUNTI
IF WEIGHT #-6~ Global("CQuestActive","GLOBAL",2) !InParty("Driz2")InParty("CVSandr")~THEN BEGIN 20
SAY @274
IF ~~THEN REPLY @275EXTERN CHAUNTI 21
END
END

APPEND CADDER3
IF WEIGHT #-6~ Global("CQuestActive","GLOBAL",6) !InParty("Driz2")InParty("CVSandr")~THEN BEGIN 100
SAY @276
IF~~THEN EXTERN CADDER3 101
END

IF WEIGHT #-5~ Global("CQuestActive","GLOBAL",8) !InParty("Driz2")InParty("CVSandr")~THEN BEGIN 102
SAY @277
IF~~THEN REPLY@278GOTO 17
END
END

APPEND CADDER5
IF WEIGHT #-1~Global("CQuestActive","GLOBAL",17)!InParty("Driz2")InParty("CVSandr")~THEN BEGIN 10
SAY@279
=@280
=@281
IF~~THEN DO~SetGlobal("CQuestActive","GLOBAL",18)
ActionOverride("CVSandr",AddSpecialAbility("CVVeto"))
AddXPObject(Player1,50000)
AddXPObject(Player2,50000)
AddXPObject(Player3,50000)
AddXPObject(Player4,50000)
AddXPObject(Player5,50000)
AddXPObject(Player6,50000)~EXIT
END
END

// Drizzt
INTERJECT DRIZ2 0 SanDriMA
==  CVSandrJ IF ~InParty("CVSandr") GlobalGT("SanDrizzt","GLOBAL",7)~THEN @282
==  DRIZ2 IF ~InParty("CVSandr") GlobalGT("SanDrizzt","GLOBAL",7)~THEN @283
= @284
==  CVSandrJ IF ~InParty("CVSandr") GlobalGT("SanDrizzt","GLOBAL",7)~THEN @285
END DRIZ2 7

//Cult of the Beast
CHAIN
IF ~Global("SanDestBeastCult","GLOBAL",1) ~THEN CVSANDRJ DestBeastCult
@286
DO~SetGlobal("SanDestBeastCult","GLOBAL",2) ~
==CultBeH @287
== CVSandrJ @288
==CultBeH @289
== CVSandrJ @290
==CultBeH @291
=@292
== CVSandrJ @293
==CultBeH @294
END
++@295EXTERN CULTBEH 53
++@296 EXTERN CULTBEH 53

CHAIN
IF WEIGHT #-2~Global("CattiBrieOut","GLOBAL",3) ~THEN Driz2J JoinTempl
@297
END
++@298EXIT
++@299DO~SetGlobal("CattiBrieOut","GLOBAL",4) JoinParty()~EXIT
