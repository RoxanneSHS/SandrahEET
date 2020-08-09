BEGIN BSHAUHA

// First Goodnight
IF ~Global("ShauGN","GLOBAL",1) Global("ShauGN1","GLOBAL",0)~THEN BEGIN ShauGn
SAY@0
IF~~THEN REPLY @1
DO ~SetGlobal("ShauGN","GLOBAL",2) SetGlobal("ShauGN1","GLOBAL",1) RestParty()~EXIT
END

// Shauhana Story Begin

IF ~Global("SanShauMeet","GLOBAL",8)~THEN BEGIN ShauStor1
SAY @2
IF ~~THEN REPLY @3GOTO ShauHer1
IF ~~THEN REPLY @4GOTO Shausca1
IF~~THEN REPLY @5GOTO Shauslav1
END

IF~~THEN BEGIN ShauHer1
SAY @6
= @7
IF~~THEN REPLY @8GOTO ShauStor2
END

IF~~THEN BEGIN Shausca1
SAY @9
= @7
IF~~THEN REPLY @10GOTO ShauStor2
END

IF~~THEN BEGIN Shauslav1
SAY @6
= @11
IF ~~THEN REPLY @12GOTO ShauStor2
END

IF~~THEN BEGIN ShauStor2
SAY @13
= @14
IF~~THEN REPLY @15GOTO ShauStor3
END

IF~~THEN BEGIN ShauStor3
SAY @16
IF~~THEN REPLY @17GOTO ShauStor4
IF~~THEN REPLY@18GOTO ShauStor4
END

IF~~THEN BEGIN ShauStor4
SAY @19
= @20
IF~~THEN REPLY @21GOTO ShauStor5
END

IF~~THEN BEGIN ShauStor5
SAY @22
= @23
IF~~THEN REPLY @24GOTO ShauStor6
END

IF ~~THEN BEGIN ShauStor6
SAY @25
= @26
IF ~~THEN REPLY @27DO ~SetGlobal("SanShauMeet","GLOBAL",9)~EXIT
END

IF ~Global("SanSharkta","GLOBAL",8) ~THEN BEGIN Shautemp1
SAY @28
IF ~~THEN REPLY @29GOTO K3
IF ~~THEN REPLY @30GOTO K2
IF ~~THEN REPLY @31GOTO K1
END

IF ~~THEN BEGIN K1
SAY @32
IF~~THEN REPLY @33DO ~SetGlobal("SanSharkta","GLOBAL",9)~EXIT
END

IF ~~THEN BEGIN K2
SAY @34
IF~~THEN REPLY @35DO ~SetGlobal("SanSharkta","GLOBAL",9)~EXIT
END

IF ~~THEN BEGIN K3
SAY @36
IF~~THEN REPLY @37DO ~SetGlobal("SanSharkta","GLOBAL",9)~EXIT
END

// Find Myrkul's Amulet
IF ~Global("Shamyrkfound","GLOBAL",1)~THEN BEGIN GetAmul
SAY @38
IF~~THEN REPLY @39DO ~SetGlobal("Shamyrkfound","GLOBAL",2)~EXIT
IF~~THEN REPLY @40DO ~SetGlobal("Shamyrkfound","GLOBAL",2)~GOTO GetAmul2
END

IF~~THEN BEGIN GetAmul2
SAY @41
IF~~THEN REPLY @42EXIT
END

CHAIN
IF ~Global("SanShauOrcStaff","GLOBAL",6) ~THEN BSHAUHA GodChi1
@43
DO ~SetGlobal("SanShauOrcStaff","GLOBAL",7) ~
== BSandr @44
== BSHAUHA @45
== BSandr @46
== BSHAUHA @47
== BSandr @48
== BSHAUHA @49
== BSandr @50
== BSHAUHA @51
EXIT

// Sharkta Fai 1

CHAIN
IF ~Global("SanSharkta","GLOBAL",2) ~THEN BSHAUHA Sharkta1
@52
DO ~ SetGlobal("SanSharkta","GLOBAL",3) ~
== BSandr @53
== BSHAUHA @54
== BSandr @55
== BSHAUHA @56
== BSandr @57
== BSHAUHA @58
== BSandr @59
== BSHAUHA @60
== BSandr @61
== BSHAUHA @62
== BSandr @63
== BSHAUHA @64
== BSandr @65
== BSHAUHA @66
== BSandr @67
== BSHAUHA @68EXIT

CHAIN
IF ~Global("SanSharkta","GLOBAL",4) ~THEN BSHAUHA Sharkta2
@69
DO ~ SetGlobal("SanSharkta","GLOBAL",5) ~
== BSandr @70
== BSHAUHA @71
== BSandr @72
== BSHAUHA @73
== BSandr @74
== BSHAUHA @75
== BSandr @76
== BSHAUHA @77
== BSandr @78
== BSHAUHA @79
== BSandr @80
== BSHAUHA @81
== BSandr @82
== BSHAUHA @83
== BSandr @84
== BSHAUHA @85
EXIT

CHAIN
IF ~Global("SanSharkta","GLOBAL",6) ~THEN BSHAUHA Sharkta3
@86
DO ~SetGlobal("SanSharkta","GLOBAL",7) ~
== BSandr @87
== BSHAUHA @88
== BSandr @89
== BSHAUHA @90
END
++ @91+ Sharkta4
++ @92+ Sharkta4

CHAIN
IF~~THEN BSHAUHA Sharkta4
@93
== BSandr @94
== BSHAUHA @95
== BSandr @96
== BSHAUHA @97
END
++ @98+ Sharkta5
++ @99+ Sharkta5

CHAIN
IF~~THEN BSHAUHA Sharkta5
@100
== BSandr @101
= @102
== BSHAUHA @103
== BSandr @104
== BSHAUHA @105
== BSandr @106
== BSHAUHA @107
== BSandr @108
END
++ @109EXIT
++ @110EXIT
++ @111DO~IncrementGlobal("Sanpoints","Global",-2)~EXIT

CHAIN
IF ~Global("SanSharkta","GLOBAL",12)~THEN BSHAUHA Sharkta10
@112
DO~SetGlobal("SanSharkta","GLOBAL",13)~
== BSandr @113
== BSHAUHA @114
END
++@115
EXIT

// Shauhana's Roots

CHAIN
IF~Global("Shamyrkfound","GLOBAL",3)~THEN BSHAUHA MyrkamSt
@116
DO ~SetGlobal("Shamyrkfound","GLOBAL",4)RealSetGlobalTimer("ShaktTime","GLOBAL",2000)~
== BSandr @117
== BSHAUHA @118
== BSandr @119
== BSHAUHA @120
== BSandr @121
== BSHAUHA @122
END
++@123+ MyrkamSt1
++@124+ MyrkamSt1
++@125+ MyrkamSt1

CHAIN
IF ~~THEN BSHAUHA MyrkamSt1
@126
== BSandr @127
== BSHAUHA @128
== BSandr @129
== BSHAUHA @130
== BSandr @131
== BSHAUHA @132
== BSandr @133
== BSHAUHA @134
EXIT

CHAIN
IF~Global("Shamyrkfound","GLOBAL",5)~THEN BSHAUHA MyrkamSt2
@135
DO~SetGlobal("Shamyrkfound","GLOBAL",6)RealSetGlobalTimer("ShaktTime","GLOBAL",2000)~
== BSandr @136
== BSHAUHA @137
== BSandr @138
== BSHAUHA @139
== BSandr @140
== BSHAUHA @141
END
++@142+ MyrkamSt3
++@143+ MyrkamSt3

CHAIN
IF ~~THEN BSHAUHA MyrkamSt3
@144
== BSandr @145
== BSHAUHA @146
== BSandr @147
== BSHAUHA @148
== BSandr @149
== BSHAUHA @150
END
++ @151EXIT
++ @152EXIT

// Entering Amn

CHAIN
IF ~Global("Shaucity","GLOBAL",1)~THEN BSHAUHA CityG1
@153
DO ~SetGlobal("Shaucity","GLOBAL",2)~
== BSandr @154
== BSHAUHA @155
END
++ @156+ CityG2
++ @157+ CityG2

CHAIN
IF ~~THEN BSHAUHA CityG2
@158
== BSandr @159
== BSHAUHA @160
== BSandr @161
== BSHAUHA @162
END
++ @163+ CityG3
++ @164+ CityG3

CHAIN
IF ~~THEN BSHAUHA CityG3
@165
== BSandr @166
== BSHAUHA @167
== BSandr @168
== BSHAUHA @169
== BSandr @170
== BSHAUHA @171
END
++ @172+ CityG4
++ @173+ CityG4

CHAIN
IF ~~THEN BSHAUHA CityG4
@174
== BSandr @175
== BSHAUHA @176
END
++ @177EXIT
++ @178
EXIT

CHAIN 
IF ~~THEN BSHAUHA ShauWallCall1
@179
== BSandr @180
END
++ @181+ ShauWallCall2
IF~!InParty("Minsc")~THEN REPLY@182+ ShauWallCall3
IF~InParty("Minsc")~THEN REPLY@182+ ShauWallCall4
++ @183+ ShauWallCall2

CHAIN
IF ~~THEN BSHAUHA ShauWallCall2
@184
EXIT

CHAIN
IF~~THEN BSHAUHA ShauWallCall3
@185DO ~SetGlobal("ShauhanaJoined","GLOBAL",0) SetGlobal("ShauMeetAmn","GLOBAL",1) EscapeAreaMove("AR0406",1215,1459,11)~EXIT

CHAIN
IF~~THEN BSHAUHA ShauWallCall4
@186
END
IF ~~THEN REPLY  @187DO ~JoinParty()~EXIT
IF ~~THEN REPLY  @188DO~
SetGlobal("ShauhanaJoined","GLOBAL",4)
ActionOverride("Minsc",LeaveParty())
ActionOverride("Minsc",SetDialog("MINSCP"))
ActionOverride("Minsc",EscapeAreaMove("CVSHA8",578,721,13))
EscapeAreaMove("CVSHA8",478,748,13)~EXIT
 

// Shauhana and Minsc

CHAIN
IF ~Global("SanShauMinsc","GLOBAL",2)~THEN BSHAUHA ShauMinsSeek
@189
DO ~SetGlobal("SanShauMinsc","GLOBAL",3)~
== BSandr @190
== BSHAUHA @191
= @192
== BSandr @193
== BSHAUHA @194
== BSandr @195
== BSHAUHA @196
== BSandr @197
== BSHAUHA @198
== BSandr @199
== BSHAUHA @200DO ~ StartCutSceneMode()  SmallWait(4) FadeToColor([20.0],0) Wait(4) FadeFromColor([20.0],0)  EndCutSceneMode() ~EXIT

CHAIN
IF ~Global("SanShauMinsc","GLOBAL",4)~THEN BSHAUHA ShauMinsHint
@201
DO ~SetGlobal("SanShauMinsc","GLOBAL",5)~
== BSandr @202
== BSHAUHA @203
== BSandr @204
== BSHAUHA @205
== BSandr @206
== BSHAUHA @207
== BSandr @208
EXIT

CHAIN
IF ~Global("SanShauMinsc","GLOBAL",6)~THEN BSHAUHA ShauMinsSeek1
@189
DO ~SetGlobal("SanShauMinsc","GLOBAL",7) RealSetGlobalTimer("SanShauMinTi","GLOBAL",800)~
== BSandr @190
== BSHAUHA @191
= @209
== BSandr @193
== BSHAUHA @210
== BSandr @211
== BSHAUHA @212
== BSandr @213
== BSHAUHA @203
== BSandr @204
== BSHAUHA @205
== BSandr @206
== BSHAUHA @200DO ~ StartCutSceneMode()  SmallWait(4) FadeToColor([20.0],0) Wait(4) FadeFromColor([20.0],0)  EndCutSceneMode() ~EXIT

CHAIN
IF ~Global("SanShauMinsc","GLOBAL",12)~THEN BSHAUHA ShauMinscLT1
@214
DO~SetGlobal("SanShauMinsc","GLOBAL",13)~
== BMINSC@215
== BSHAUHA @216
== BMINSC@217
== BSHAUHA @218
== BMINSC@219
== BSHAUHA @220
== BMINSC@221
== BSHAUHA @222
== BMINSC@223
EXIT

CHAIN
IF~Global("SanShauMinsc","GLOBAL",14)~THEN BSHAUHA SanShauMysAniMessg
@224
DO~SetGlobal("SanShauMinsc","GLOBAL",15) RealSetGlobalTimer("SanShauMinTi","GLOBAL",600)~
==Pellig @225
== Boo @226
== Pellig@227
== Boo @228
== Pellig@229
== Boo @230
== Pellig@231
== Boo @232
== Pellig@233
== Boo @234
== Pellig@235
== Boo @236DO~DestroySelf()~
== Pellig@237DO ~ RestParty()~EXIT

CHAIN
IF ~Global("SanShauMinsc","GLOBAL",16)~THEN BSHAUHA ShauMinscLT2
@238
DO~SetGlobal("SanShauMinsc","GLOBAL",17) RealSetGlobalTimer("SanShauMinTi","GLOBAL",600)~
== BMINSC@239
== BSHAUHA @240
== BMINSC@241
== BSHAUHA @242
== BMINSC@243
== BSHAUHA @244
== BMINSC@245
=@246
EXIT

CHAIN
IF ~Global("SanShauMinsc","GLOBAL",20)~THEN BSHAUHA ShauMinscLT3
@247
DO~SetGlobal("SanShauMinsc","GLOBAL",21) RealSetGlobalTimer("SanShauMinTi","GLOBAL",600)~
==x#setta@248
== BMINSC@249
=@250
== BSHAUHA @251
== BMINSC@252
== BSHAUHA @253
== BMINSC@254
==x#setta@255
== BSHAUHA @256
== BMINSC@257
== BSHAUHA @258
==x#setta@259DO~TakePartyGold(15)~
== BMINSC@260
== BSHAUHA @261
== BSandr @262
EXIT

CHAIN
IF~Global("SanShaubogon","LOCALS",2)~THEN BSHAUHA BooKidnap1
@263
DO~SetGlobal("SanShaubogon","LOCALS",3)~
== BMINSC@264
== BSHAUHA @265
== BMINSC@266
== BSHAUHA @267
== BMINSC@268
==Pellig@269
==Boo @270DO~DestroySelf()~
EXIT

CHAIN
IF~Global("SanShauMinsc","GLOBAL",22)~THEN BSHAUHA MinscHurt
@271
DO~SetGlobal("SanShauMinsc","GLOBAL",23)RealSetGlobalTimer("SanShauMinTi","GLOBAL",1200)~
== BMINSC@272
== BSHAUHA @273
== BMINSC@274
== BSHAUHA @275
== BMINSC@276
== BSHAUHA @277
== BMINSC@278
== BSHAUHA @279
== BMINSC@280
== BSHAUHA @281
== BMINSC@282
== BSHAUHA @283
== BMINSC@284DO ~ StartCutSceneMode()  SmallWait(4) FadeToColor([20.0],0) Wait(4) FadeFromColor([20.0],0) EndCutSceneMode() ~EXIT

CHAIN
IF~Global("SanShauMinsc","GLOBAL",26)~THEN BSHAUHA MinscHurt
@285
DO~SetGlobal("SanShauMinsc","GLOBAL",27)RealSetGlobalTimer("SanShauMinTi","GLOBAL",1200)~
== BMINSC@286
== BSHAUHA @287
== BMINSC@288
== BSHAUHA @289
END
++@290DO ~ StartCutSceneMode()  SmallWait(4) FadeToColor([20.0],0) Wait(4) FadeFromColor([20.0],0) EndCutSceneMode() ~EXIT

CHAIN
IF~Global("SanShauMinsc","GLOBAL",28)~THEN PELLIG PellBooShau
@291
DO~SetGlobal("SanShauMinsc","GLOBAL",29)~
==Boo@292
==Pellig@293
==Boo@294
==Pellig@295
==Boo@296
==Sanmyst@297
==Boo@298
==Pellig@299
==Sanmyst@300
==Boo@301
==Sanmyst@302
=@303DO~EscapeArea()~
==Boo@304DO~DestroySelf() ~EXIT

CHAIN
IF~Global("SanShauMinsc","GLOBAL",31)~THEN BSHAUHA Minscgod
@305
DO~SetGlobal("SanShauMinsc","GLOBAL",32)~
== BMINSC@306
==BSHAUHA@307
=@308
== BMINSC@309
==BSHAUHA@310
== BMINSC@311
==BSHAUHA@312
== BMINSC@313
==BSHAUHA@314DO ~ StartCutSceneMode()  SmallWait(4) FadeToColor([20.0],0) Wait(4) FadeFromColor([20.0],0) EndCutSceneMode() ~EXIT

CHAIN
IF~Global("Orcbandits","LOCALS",1)~THEN BSHAUHA MinscRolfB
@315
DO~SetGlobal("Orcbandits","LOCALS",2)~
== BMINSC@316
==BSHAUHA@317
== BMINSC@318
==BSHAUHA@319
== BMINSC@320
==BSHAUHA@321
== BMINSC@322
==BSHAUHA@323
== BMINSC@324EXIT

CHAIN
IF ~Global("SanArenIde","RA4300",3)~THEN BSHAUHA atharena
@325
DO~SetGlobal("SanArenIde","RA4300",4)~
==BSandr @326
==BSHAUHA@327
==BSandr@328
==BSHAUHA@329EXIT