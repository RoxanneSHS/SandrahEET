BEGIN CVJenliJ

IF~Global("CleanInn","LOCALS",2)~THEN BEGIN CleanInn
SAY@0
IF~~THEN DO~SetGlobal("CleanInn","LOCALS",3) ClearAllActions() StartCutSceneMode() CreateVisualEffectObject("SPUNHOLY",Myself) Wait(2) CreateVisualEffectObject("SPUNHOLY","CVJenDe") Wait(2) ActionOverride("CVJenDe",DestroySelf()) EndCutSceneMode() RealSetGlobalTimer("JenligT","LOCALS",1300)~EXIT
END

IF~IsGabber(Player1)GlobalGT("SanGithSwJ","GLOBAL",0) GlobalLT("EndOfBG1","Global",2)~THEN BEGIN JenPid
SAY@1
IF~Global("JenOrigin","LOCALS",0)~THEN REPLY@2GOTO Jrace
IF~Global("SanRomPath","GLOBAL",1)~THEN REPLY@3GOTO JBeaum
IF~Global("SanRomPath","GLOBAL",2)~THEN REPLY@3GOTO JBeauf
IF~Global("JenOrigin","LOCALS",1)~THEN REPLY@4DO~SetGlobal("JenOrigin","LOCALS",2)~GOTO JRace2
IF~Global("Goodfight","LOCALS",11) Global("AfterFirst","LOCALS",0)~THEN REPLY@5DO~SetGlobal("AfterFirst","LOCALS",1)~GOTO GoodcapP1
IF~Global("Goodfight","LOCALS",13) Global("AfterFirst","LOCALS",1)~THEN REPLY@6GOTO GoodcapP7
END

IF~~THEN BEGIN JRace2
SAY@7
IF~~THEN REPLY@8GOTO JRace3
IF~~THEN REPLY@9GOTO JRace3
END

IF~~THEN BEGIN JRace3
SAY@10
IF~~THEN REPLY@11GOTO JRace4
END

IF~~THEN BEGIN JRace4
SAY@12
=@13
IF~~THEN REPLY@14GOTO JRace5
IF~~THEN REPLY@15GOTO JRace5
END

IF~~THEN BEGIN JRace5
SAY@16
IF~~THEN REPLY@17EXIT
END

IF~~THEN BEGIN JBeaum
SAY@18
IF~~THEN REPLY@19EXIT
IF~~THEN REPLY@20EXIT
IF~~THEN REPLY@21EXIT
END

IF~~THEN BEGIN JBeauf
SAY@18
IF~~THEN REPLY@21EXIT
IF~~THEN REPLY@19EXIT
END

IF~~THEN BEGIN Jrace
SAY@22
=@23
IF~~THEN DO~SetGlobal("JenOrigin","LOCALS",1)~EXIT
END

IF~Global("SanGithSwJ","GLOBAL",1)~THEN BEGIN Murd1
SAY@24
IF~~THEN REPLY@25GOTO Murd2
IF~~THEN REPLY@26GOTO Murd2
END

IF~~THEN BEGIN Murd2
SAY@27
=@28
IF~~THEN REPLY@29DO~SetGlobal("SanGithSwJ","GLOBAL",2) RealSetGlobalTimer("JenligT","LOCALS",1800)~GOTO Murd3
END

IF~~THEN BEGIN Murd3
SAY@30
=@31
IF~~THEN REPLY@32GOTO Murd4
IF~~THEN REPLY@33GOTO Murd4
END

IF~~THEN BEGIN Murd4
SAY@34
IF~~THEN REPLY@35GOTO Murd5
IF~~THEN REPLY@36GOTO Murd5
END

IF~~THEN BEGIN Murd5
SAY@37
IF~~THEN DO~AddJournalEntry(@923,QUEST)~EXIT
END

IF~Global("SanGithSwJ","GLOBAL",3) ~THEN BEGIN MulShe1
SAY@38
IF~~THEN REPLY@39DO~ActionOverride("CVJenlig",TakePartyItem("CVheath")) SetGlobal("SanGithSwJ","GLOBAL",4)~GOTO  MulShe2
IF~~THEN REPLY@40DO~ActionOverride("CVJenlig",TakePartyItem("CVheath")) SetGlobal("SanGithSwJ","GLOBAL",4)~GOTO  MulShe2
IF~~THEN REPLY@41DO~ActionOverride("CVJenlig",TakePartyItem("CVheath")) SetGlobal("SanGithSwJ","GLOBAL",4)~GOTO  MulShe2
IF~~THEN REPLY@42DO~ActionOverride("CVJenlig",TakePartyItem("CVheath")) SetGlobal("SanGithSwJ","GLOBAL",4)~GOTO  MulShe2
IF~~THEN REPLY@43DO~ActionOverride("CVJenlig",TakePartyItem("CVheath")) SetGlobal("SanGithSwJ","GLOBAL",4)~GOTO  MulShe2
END

IF~~THEN BEGIN MulShe2
SAY@44
IF~~THEN REPLY@45 GOTO  MulShe3
IF~~THEN REPLY@46GOTO  MulShe3
END

IF~~THEN BEGIN MulShe3
SAY@47
IF~~THEN REPLY@48DO~RealSetGlobalTimer("JenligT","LOCALS",1800)AddJournalEntry(@924,QUEST)~GOTO  MulShe4
END

IF~~THEN BEGIN MulShe4
SAY@49
IF~~THEN REPLY@50GOTO  MulShe5
IF~~THEN REPLY@51GOTO  MulShe5
END

IF~~THEN BEGIN MulShe5
SAY@52
=@53
IF~~THEN REPLY@54EXIT
IF~~THEN REPLY@55EXIT
IF~~THEN REPLY@56EXIT
END

IF~Global("SanGithSwJ","GLOBAL",5)~THEN BEGIN DeadGo1
SAY@57
IF~~THEN REPLY@58GOTO DeadGo2
IF~~THEN REPLY@59GOTO DeadGo2
IF~~THEN REPLY@60GOTO DeadGo2
END

IF~~THEN BEGIN DeadGo2
SAY@61
IF~~THEN REPLY@62DO~SetGlobal("SanGithSwJ","GLOBAL",6) ~EXIT
END

IF~Global("SuninMeetJen","GLOBAL",1)~THEN BEGIN Knowname1
SAY@63
IF~~THEN REPLY@64DO~SetGlobal("SuninMeetJen","GLOBAL",2)~GOTO Knowname2
END

IF~~THEN BEGIN Knowname2
SAY@65
IF~~THEN DO~AddXPObject("CVJenlig",3000) ~EXIT
END

IF~Global("Goodfight","LOCALS",1)~THEN BEGIN Goodcomm1
SAY@66
IF~~THEN REPLY@67GOTO Goodcomm2
IF~~THEN REPLY@68GOTO Goodcomm2
END

IF~~THEN BEGIN Goodcomm2
SAY@69
IF~~THEN DO~SetGlobal("Goodfight","LOCALS",2)~EXIT
END

IF~Global("Goodfight","LOCALS",3)~THEN BEGIN Goodcomm3
SAY@70
IF~Global("SanRomPath","Global",2)~THEN REPLY@71DO~SetGlobal("Goodfight","LOCALS",4)RealSetGlobalTimer("JenligT","LOCALS",2800)~GOTO Goodcomm4f
IF~Global("SanRomPath","Global",1)~THEN REPLY@71DO~SetGlobal("Goodfight","LOCALS",5)RealSetGlobalTimer("JenligT","LOCALS",2800)~GOTO Goodcomm4m
END

IF~~THEN BEGIN Goodcomm4f
SAY@72
IF~~THEN REPLY@73GOTO Goodcomm5f
IF~~THEN REPLY@74GOTO Goodcomm5f
IF~~THEN REPLY@75GOTO Goodcomm5f
END

IF~~THEN BEGIN Goodcomm5f
SAY@76
IF~~THEN EXIT
END

IF~~THEN BEGIN Goodcomm4m
SAY@72
IF~~THEN REPLY@73GOTO Goodcomm5m
IF~~THEN REPLY@74GOTO Goodcomm5m
IF~~THEN REPLY@77GOTO Goodcomm5m
END

IF~~THEN BEGIN Goodcomm5m
SAY@76
=@78
IF~~THEN REPLY@79GOTO Goodcomm6m
IF~~THEN REPLY@80GOTO Goodcomm6m
END

IF~~THEN BEGIN Goodcomm6m
SAY@81
=@82
IF~~THEN EXIT
END

IF~Global("Goodfight","LOCALS",6) ~THEN BEGIN JenCommLu1
SAY@83
IF~~THEN REPLY@84GOTO JenCommLu2
IF~~THEN REPLY@85GOTO JenCommLu2
END

IF~~THEN BEGIN JenCommLu2
SAY@86
=@87
=@88
IF~~THEN DO~SetGlobal("Goodfight","LOCALS",7) RestParty()~EXIT
END

IF~Global("Goodfight","LOCALS",8) ~THEN BEGIN JenCommLu3
SAY@83
IF~~THEN REPLY@84GOTO JenCommLu4
IF~~THEN REPLY@85GOTO JenCommLu4
END

IF~~THEN BEGIN JenCommLu4
SAY@86
=@87
=@89
IF~~THEN REPLY@90DO~SetGlobal("Goodfight","LOCALS",9)RealSetGlobalTimer("JenligT","LOCALS",3800)~GOTO JenCommLu5
END

IF~~THEN BEGIN JenCommLu5
SAY@91
=@92
IF~~THEN REPLY@93GOTO JenCommLu6
IF~~THEN REPLY@94GOTO JenCommLu6
END

IF~~THEN BEGIN JenCommLu6
SAY@95
IF~~THEN DO~RestParty()~EXIT
END

IF~Global("Goodfight","LOCALS",10)~THEN BEGIN JenCommLu7
SAY@96
=@97
IF~~THEN REPLY@98GOTO JenCommLu8
IF~~THEN REPLY@99GOTO JenCommLu8
END

IF~~THEN BEGIN JenCommLu8
SAY@100
=@101
IF~~THEN REPLY@102DO~SetGlobal("Goodfight","LOCALS",11)RealSetGlobalTimer("JenligT","LOCALS",9000)~GOTO JenCommLu9
END

IF~~THEN BEGIN JenCommLu9
SAY@103
IF~~THEN REPLY@104GOTO JenCommLu10
END

IF~~THEN BEGIN JenCommLu10
SAY@105
=@106
IF~~THEN DO~ClearAllActions() SmallWait(2) SetInterrupt(FALSE) TextScreen("JenliN1")SmallWait(2) RestParty()~EXIT
END

IF~~THEN BEGIN GoodcapP1
SAY@107
IF~~THEN REPLY@108GOTO GoodcapP2
IF~~THEN REPLY@109GOTO GoodcapP2
END

IF~~THEN BEGIN GoodcapP2
SAY@110
IF~~THEN REPLY@111GOTO GoodcapP3
IF~~THEN REPLY@112GOTO GoodcapP3
IF~~THEN REPLY@113GOTO GoodcapP3
END

IF~~THEN BEGIN GoodcapP3
SAY@114
IF~~THEN EXIT
END

IF~Global("Goodfight","LOCALS",12)~THEN BEGIN Jeneggs1
SAY@115
IF~~THEN REPLY@116GOTO Jeneggs2
IF~~THEN REPLY@117GOTO Jeneggs2
IF~~THEN REPLY@118GOTO Jeneggs2
END

IF~~THEN BEGIN Jeneggs2
SAY@119
IF~~THEN REPLY@120GOTO Jeneggs3
IF~~THEN REPLY@121GOTO Jeneggs3
END

IF~~THEN BEGIN Jeneggs3
SAY@122
=@123
IF~~THEN REPLY@124DO~SetGlobal("Goodfight","LOCALS",13)~GOTO Jeneggs4
END

IF~~THEN BEGIN Jeneggs4
SAY@122
=@125
IF~~THEN REPLY@126GOTO Jeneggs5
IF~~THEN REPLY@127GOTO Jeneggs5
END

IF~~THEN BEGIN Jeneggs5
SAY@128
=@129
IF~~THEN REPLY@130GOTO Jeneggs6
IF~~THEN REPLY@131GOTO Jeneggs6
IF~~THEN REPLY@132GOTO Jeneggs6
IF~~THEN REPLY@133GOTO Jeneggs6
END

IF~~THEN BEGIN Jeneggs6
SAY@134
IF~~THEN DO~ClearAllActions() StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~EXIT
END

IF~~THEN BEGIN GoodcapP7
SAY@135
IF~~THEN DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~EXIT
END

IF~Global("JenSilver","LOCALS",1)~THEN BEGIN Silver1
SAY@136
IF~~THEN REPLY@137DO~SetGlobal("JenSilver","LOCALS",2)RealSetGlobalTimer("JenligT","LOCALS",900)~GOTO Silver2
IF~~THEN REPLY@138DO~SetGlobal("JenSilver","LOCALS",2)~GOTO Silver2
END

IF~~THEN BEGIN Silver2
SAY@139
IF~~THEN REPLY@140EXIT
IF~~THEN REPLY@141EXIT
IF~~THEN REPLY@142EXIT
IF~~THEN REPLY@143EXIT
END

IF~Global("JenAmul","LOCALS",1)~THEN BEGIN Amulmake1
SAY@144
IF~~THEN REPLY@145GOTO Amulmake2
IF~~THEN REPLY@43GOTO Amulmake2
END

IF~~THEN BEGIN Amulmake2
SAY@146
IF~~THEN DO~SetGlobal("JenAmul","LOCALS",2) ClearAllActions() StartCutSceneMode() CreateVisualEffectObject("SPUNHOLY",Myself) Wait(2) TakePartyItem("Amul09") DestroyItem("Amul09") GiveItemCreate("CVJenam","CVJenlig",1,0,0) EndCutSceneMode()~EXIT
END

IF~Global("Jencow","CVROA3",1)~THEN BEGIN Jencow1
SAY@147
IF~~THEN REPLY@148GOTO Jencow2
IF~~THEN REPLY@149GOTO Jencow2
END

IF~~THEN BEGIN Jencow2
SAY@150
=@151
=@152
IF~~THEN REPLY@153DO~SetGlobal("Jencow","CVROA3",2) ~EXIT
END

IF~Global("JenMineF","BG1700",1)~THEN BEGIN MineFe
SAY@154
IF~~THEN REPLY@155DO~SetGlobal("JenMineF","BG1700",2)~EXIT
IF~~THEN REPLY@156DO~SetGlobal("JenMineF","BG1700",2)~GOTO MineFe2
END

IF~~THEN BEGIN MineFe2
SAY@157
IF~~THEN REPLY@158EXIT
IF~~THEN REPLY@159EXIT
IF~~THEN REPLY@160EXIT
END

IF~Global("SanTazPatrl","GLOBAL",6) ~THEN BEGIN Daelet1
SAY@161
=@162
IF~~THEN REPLY@163GOTO Daelet2
IF~~THEN REPLY@164GOTO Daelet2
END

IF~Global("JenStone","BG3500",1) ~THEN BEGIN StoneGods1
SAY@165
IF~~THEN REPLY@166
DO~SetGlobal("JenStone","BG3500",2)~GOTO StoneGods2
IF~~THEN REPLY@167DO~SetGlobal("JenStone","BG3500",2)~GOTO StoneGods2
END

IF~~THEN BEGIN StoneGods2
SAY@168
IF~~THEN EXIT
END

IF~Global("JenVamMF","LOCALS",1)~THEN BEGIN Vamcom1
SAY@169
IF~~THEN REPLY@170DO~SetGlobal("JenVamMF","LOCALS",2)~GOTO Vamcom2
END

IF~~THEN BEGIN Vamcom2
SAY@171
IF~~THEN REPLY@172GOTO Vamcom3
IF~~THEN REPLY@173GOTO Vamcom3
IF~~THEN REPLY@174GOTO Vamcom3
END

IF~~THEN BEGIN Vamcom3
SAY@175
IF~~THEN EXIT
END

IF~Global("JenDeadR","LOCALS",1)~THEN BEGIN FoundR1
SAY@176
=@177
IF~~THEN REPLY@178GOTO FoundR2
IF~~THEN REPLY@179GOTO FoundR2
END

IF~~THEN BEGIN  FoundR2
SAY@180
IF~~THEN DO~SetGlobal("JenDeadR","LOCALS",2)AddXPObject("CVJenlig",3500)~EXIT
END

IF~Global("JenSilvwr","GLOBAL",1)~THEN BEGIN Silvdsc1
SAY@181
IF~~THEN REPLY@182GOTO Silvdsc2
IF~~THEN REPLY@183GOTO Silvdsc2
END

IF~~THEN BEGIN Silvdsc2
SAY@184
=@185
IF~~THEN REPLY@186DO~SetGlobal("JenSilvwr","GLOBAL",2)~EXIT
IF~~THEN REPLY@187DO~SetGlobal("JenSilvwr","GLOBAL",2) ~EXIT
IF~~THEN REPLY@188DO~SetGlobal("JenSilvwr","GLOBAL",2) ~EXIT
END

IF~Global("JenZanHunt","LOCALS",1)~THEN BEGIN BookZen1
SAY@189
IF~~THEN REPLY@190GOTO BookZen2
IF~~THEN REPLY@191GOTO BookZen2
END

IF~~THEN  BEGIN BookZen2
SAY@192
IF~~THEN REPLY@193DO~SetGlobal("JenZanHunt","LOCALS",2)~EXIT
IF~~THEN REPLY@194DO~SetGlobal("JenZanHunt","LOCALS",2)~EXIT
END

IF~Global("JenBhaal","LOCALS",1)~THEN BEGIN Bhaal1
SAY@195
IF~~THEN REPLY@196DO~SetGlobal("JenBhaal","LOCALS",2)~GOTO Bhaal2
END

IF~~THEN BEGIN Bhaal2
SAY@197
=@198
IF~~THEN REPLY@199GOTO Bhaal3
IF~~THEN REPLY@200GOTO Bhaal3
END

IF~~THEN BEGIN Bhaal3
SAY@201
IF~~THEN EXIT
END

IF~Global("JenEBHide","BG0123",1)~THEN BEGIN LikeEB1
SAY@202
=@203
IF~~THEN REPLY@204DO~SetGlobal("JenEBHide","BG0123",2)~GOTO LikeEB2
END

IF~~THEN BEGIN LikeEB2
SAY@205
=@206
IF~~THEN EXIT
END

IF~Global("JenFouSem","BG0125",6)~THEN BEGIN FoundSwFin
SAY@207
=@208
IF~~THEN REPLY@209DO~SetGlobal("JenFouSem","BG0125",7) AddXPObject("CVJenlig",7000) AddXPObject(Player1,7000)ActionOverride("CVJenlig",TakePartyItem("CVyensw2"))~EXIT
END

IF~Global("JenGoHome","bd0130",1)~THEN BEGIN JenLeavePr1
SAY@210
IF~~THEN REPLY@211GOTO JenLeavePr2
IF~~THEN REPLY@212GOTO JenLeavePr2
IF~~THEN REPLY@213 GOTO JenLeavePr2
END

IF~~THEN BEGIN JenLeavePr2
SAY@214
IF~~THEN REPLY@215GOTO JenLeavePr2a
IF~~THEN REPLY@216GOTO JenLeavePr2a
END

IF~~THEN BEGIN JenLeavePr2a
SAY@217
IF~Global("SanRomPath","GLOBAL",1)~THEN REPLY@218GOTO JenLeavePr3
IF~Global("SanRomPath","GLOBAL",2)~THEN REPLY@219GOTO JenLeavePr4
END

IF~~THEN BEGIN JenLeavePr3
SAY@220
IF~~THEN REPLY@221GOTO JenLeavePr4
END

IF~~THEN BEGIN JenLeavePr4
SAY@222
IF~~THEN DO~SetGlobal("JenGoHome","bd0130",2) EraseJournalEntry(@927) SetGlobal("CVJenTOBRet","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("JenLePl")~EXIT
END

IF ~Global("SanPCIdiot","LOCALS",1)~THEN BEGIN HereCity
SAY@223
IF~~THEN DO~SetGlobal("SanPCIdiot","LOCALS",2) SetDialog("CVJenliP") LeaveParty() EscapeAreaMove("BG0125",339,800,10) ~EXIT
END

IF~~THEN BEGIN Redatt3
SAY@224
=@225
IF~GlobalLT("Goodfight","LOCALS",11)~THEN REPLY@226GOTO Redatt4
IF~GlobalGT("Goodfight","LOCALS",10)~THEN REPLY@226GOTO Redatt5
END

IF~~THEN BEGIN Redatt4
SAY@227
IF~~THEN EXIT
END

IF~~THEN BEGIN Redatt5
SAY@228
IF~~THEN REPLY@229EXIT
IF~~THEN REPLY@230EXIT
IF~~THEN REPLY@231EXIT
END

//======================================================================


CHAIN
IF~Global("SanHealJen","GLOBAL",4)~THEN CVJenliJ SanHealJen1
@232
DO~SetGlobal("SanHealJen","GLOBAL",5)~
==BSandr@233
==CVJenliJ@234
==BSandr@235
==CVJenliJ@236
==BSandr@237
==CVJenliJ@238EXIT

CHAIN
IF~Global("SanTazPatrl","GLOBAL",4)~THEN CVJenliJ After3
@239
DO~SetGlobal("SanTazPatrl","GLOBAL",5)~
==BSandr@240
==CVJenliJ@241DO~AddJournalEntry(@925,QUEST)~EXIT

CHAIN
IF~~THEN CVJenliJ Daelet2
@242
DO~SetGlobal("SanTazPatrl","GLOBAL",7)~
=@243
==CVSandrJ IF~InParty("CVSandr")~THEN@244
==CVJenliJ IF~InParty("CVSandr")~THEN@245DO~AddJournalEntry(@926,QUEST)~EXIT

CHAIN
IF WEIGHT #1~PartyHasItem("HELM07") InParty("CVJenlig")~THEN Degrod JenNec
@246
==CVJenliJ@247
==Degrod@248
==CVJenliJ@249
==Degrod@250
DO~GiveGoldForce(5000) CreateCreature("HELMHO",[371.427],0) CreateCreature("DOOMGU",[418.460],0) CreateCreature("DOOMGU",[326.489],0) CreateCreature("STALKE",[351.605],0) Enemy()~EXIT


//======================================================================
//Interjects

INTERJECT_COPY_TRANS Husam 0 JenHintJard
==CVJenliJ IF~InParty("CVJenlig")~THEN@251
==Husam IF~InParty("CVJenlig")~THEN@252
==CVJenliJ IF~InParty("CVJenlig")~THEN@253DO~TakePartyGold(150)~
==Husam IF~InParty("CVJenlig")~THEN@254
==CVJenliJ IF~InParty("CVJenlig")~THEN@255
==Husam IF~InParty("CVJenlig")~THEN@256
==CVJenliJ IF~InParty("CVJenlig")~THEN@257END

INTERJECT SUNIN 0 SuninMeetJen
==CVJenliJ IF~InParty("CVJenlig")~THEN@258
==Sunin IF~InParty("CVJenlig")~THEN@259
==CVJenliJ IF~InParty("CVJenlig")~THEN@260
==Sunin IF~InParty("CVJenlig")~THEN@261
END SUNIN 1

EXTEND_BOTTOM Jardak 0
IF ~InParty("CVJenlig")~THEN REPLY @262EXTERN CVJenlij AskJardak
END

CHAIN
IF~~THEN CVJenlij AskJardak
@263
DO~AddXPObject("CVJenlig",3000)~
==CVJenlij IF~Global("SuninMeetJen","GLOBAL",0)~THEN @258
==CVJenlij IF~Global("SuninMeetJen","GLOBAL",2)~THEN@264
==Jardak IF~Global("SuninMeetJen","GLOBAL",0)~THEN@265
==CVJenlij IF~Global("SuninMeetJen","GLOBAL",0)~THEN @266
==Jardak IF~Global("SuninMeetJen","GLOBAL",2)~THEN@267
==Jardak @268EXTERN Jardak 2

INTERJECT_COPY_TRANS IF_FILE_EXISTS AGGnom01 4 JenNoSlav1
==CVJenliJ IF~InParty("CVJenlig")~THEN@269
END

I_C_T Surgeo 4  CVSurgJenlig
==Surgeo IF~InParty("CVJenlig") InParty("CVSandr")~THEN@270
==CVJenliJ IF~InParty("CVJenlig") InParty("CVSandr")~THEN@271
==Surgeo IF~InParty("CVJenlig") InParty("CVSandr")~THEN@272
END


BEGIN CVMindd

CHAIN
IF~Global("MiFlExists","BG3802",2)~THEN CVJenliJ MFLCave
@273
DO~SetGlobal("MiFlExists","BG3802",3)~
==CVMindD@274DO~Polymorph(MINDFLAYER) Enemy()~
=@275
==CVJenliJ@276
DO~JumpToPoint([403.177]) Attack("CVJenMiH")~EXIT

CHAIN
IF~Global("MiFlExists","BG3802",4)~THEN CVJenliJ MFLCave2
@277
==CVSandrJ@278
==CVJenliJ@279
END
++@280+ MFLCave3
++@281+ MFLCave3

CHAIN
IF~~THEN CVJenliJ MFLCave3
@282
=@283
DO~SetGlobal("MiFlExists","BG3802",5)~
END
++@284DO~AddXPObject("CVJenlig",2400)~EXIT
++@285DO~AddXPObject("CVJenlig",2400)~EXIT

EXTEND_TOP Stepha 4 #0
IF ~InParty("CVJenlig")~THEN EXTERN CVJenliJ SteNoGo
END

EXTEND_TOP Stepha 6 #0
IF ~InParty("CVJenlig")~THEN EXTERN CVJenliJ SteNoGo
END

EXTEND_TOP Stepha 8 #0
IF ~InParty("CVJenlig")~THEN EXTERN CVJenliJ SteNoGo
END

EXTEND_TOP Stepha 9 #0
IF ~InParty("CVJenlig")~THEN EXTERN CVJenliJ SteNoGo
END

CHAIN
IF~~THEN CVJenliJ SteNoGo
@286DO~Attack("Stephan") ~
==Stepha@287DO~Enemy()~EXIT

BEGIN Semaj
CHAIN
IF~Global("JenFouSem","BG0125",1)~THEN CVJenliJ Semfound
@288
DO~SetGlobal("JenFouSem","BG0125",2)DialogInterrupt(FALSE)~
=@289
==Semaj@290
==CVJenliJ@291DO~MoveToObject("Semaj") Attack("Semaj")~
==Semaj@292EXIT

CHAIN
IF WEIGHT #-3 ~InParty("CVJenlig") Global("CVWarnjen","LOCALS",0)~THEN Bellam Jenwarn
@293
DO~SetGlobal("CVWarnjen","LOCALS",1) SetNumTimesTalkedTo(0)~
==CVJenliJ@294
==Bellam@295
==CVJenliJ@296
==Bellam@297
==CVJenliJ@298EXIT