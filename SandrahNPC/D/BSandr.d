BEGIN BSANDR

// Mystra Saves PC 1 Time

IF ~Global("SanPCGoodMys","GLOBAL",1)~THEN BEGIN SanPCGoodMys1

SAY @0
IF~~THEN DO ~SetGlobal("SanPCGoodMys","GLOBAL",2) ~EXIT
END

/*Imoen Still not in Party Reminder*/

IF ~Global("Imoreminder","GLOBAL",1)~THEN BEGIN ReturnToImo
SAY @1
= @2
IF ~~THEN DO ~SetGlobal("Imoreminder","GLOBAL",2)~EXIT
END

//Stolen Book for Candlekeep
IF ~Global("SanCldKBo","LOCALS",2)~THEN BEGIN SanCldKBoMin1
SAY@3
IF~~THEN REPLY@4GOTO SanCldKBoMin2
IF~~THEN REPLY@5GOTO SanCldKBoMin2
END

IF ~~THEN BEGIN SanCldKBoMin2
SAY @6
IF~~THEN REPLY@7GOTO SanCldKBoMin3
END

IF ~~THEN BEGIN SanCldKBoMin3
SAY @8
IF ~~THEN REPLY@9GOTO SanCldKBoMin4
END

IF ~~THEN BEGIN SanCldKBoMin4
SAY @10
IF~~THEN DO ~SetGlobal("SanCldKBo","LOCALS",3)~EXIT
END

//Golem Manual
IF~Global("SanGolman","LOCALS",2)~THEN BEGIN SanGolem1
SAY@11
IF~~THEN REPLY @12GOTO SanGolem2
IF~~THEN REPLY @13GOTO SanGolem2
IF~~THEN REPLY @14GOTO SanGolem2
END

IF~~THEN BEGIN SanGolem2
SAY@15
IF~~THEN REPLY @16GOTO SanGolem3
IF~~THEN REPLY @17GOTO SanGolem3
END

IF~~THEN BEGIN SanGolem3
SAY@18
IF~~THEN REPLY @19DO~SetGlobal("SanGolman","LOCALS",3)~EXIT
END

//Took Eldoth
IF~Global("SanEldoDisl","LOCALS",2)~THEN BEGIN EldothDisl1
SAY@20
IF~~THEN REPLY @21 DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~GOTO EldothDisl2
IF~~THEN REPLY @22 GOTO EldothDisl3
END

IF~~THEN BEGIN EldothDisl2
SAY @23
IF~~THEN REPLY@24DO~SetGlobal("SanEldoDisl","LOCALS",3)~EXIT
IF~~THEN REPLY@25DO~SetGlobal("SanEldoDisl","LOCALS",3)~EXIT
END

IF~~THEN BEGIN EldothDisl3
SAY @26
IF~~THEN REPLY@24DO~SetGlobal("SanEldoDisl","LOCALS",3)~EXIT
IF~~THEN REPLY@27DO~SetGlobal("SanEldoDisl","LOCALS",3)~EXIT
END

IF~Global("SanEldoDisl","LOCALS",4)~THEN BEGIN EldotFABent1
SAY @28
IF~~THEN REPLY @29GOTO EldotFABent2
IF~~THEN REPLY @30GOTO EldotFABent2
IF~~THEN REPLY @31GOTO EldotFABent2
END

IF~~THEN BEGIN  EldotFABent2
SAY @32
IF~~THEN DO~SetGlobal("SanEldoDisl","LOCALS",5)~EXIT
END

// Coran's Flowers

IF~Global("SanCorFlow","LOCALS",1)~THEN BEGIN SanCoraFl1
SAY@33
IF~~THEN REPLY @34GOTO SanCoraFl2
IF~~THEN REPLY @35DO~SetGlobal("SanCorFlow","LOCALS",2)~GOTO SanCoraFl2
END

IF~~THEN BEGIN SanCoraFl2
SAY @36
IF~~THEN REPLY @37EXIT
IF~~THEN REPLY @38EXIT
END

// Waterdeep Temple Visits

IF~Global("SanWDTemplWi","GLOBAL",1)~THEN BEGIN SanWDTempl1
SAY @39
IF~~THEN REPLY @40GOTO SanWDTempl2
IF~~THEN REPLY @41GOTO SanWDTempl2
END

IF ~~THEN BEGIN SanWDTempl2
SAY @42
= @43
IF~~THEN REPLY @44GOTO SanWDTempl3
END

IF ~~THEN BEGIN SanWDTempl3
SAY @45
IF~~THEN DO~SetGlobal("SanWDTemplWi","GLOBAL",2)~EXIT
END

// In Baldur's Gate

IF ~Global("SanSpiWeb1","LOCALS",1) ~THEN BEGIN SanSpidWeb1
SAY @46
IF~~THEN REPLY@47DO ~SetGlobal("SanSpiWeb1","LOCALS",2) ~GOTO SanSpidWeb2
END

IF ~~THEN BEGIN SanSpidWeb2
SAY @48
IF~~THEN REPLY@49GOTO SanSpidWeb3
IF~~THEN REPLY@50GOTO SanSpidWeb4
END

IF ~~THEN BEGIN SanSpidWeb3
SAY@51
IF~~THEN REPLY@52EXIT
IF~~THEN REPLY@53EXIT
IF~~THEN REPLY@54EXIT
END

IF ~~THEN BEGIN SanSpidWeb4
SAY @55
IF~~THEN REPLY@52EXIT
IF~~THEN REPLY@53EXIT
IF~~THEN REPLY@54EXIT
END

// Bookhunters

IF ~Global("SanSuBH","GLOBAL",9)~THEN BEGIN BookH30
SAY @56
IF~~THEN REPLY @57GOTO BookH31
END

IF~~THEN BEGIN BookH31
SAY @58
IF~~THEN REPLY @59GOTO BookH32
IF~~THEN REPLY @60GOTO BookH32
END

IF~~THEN BEGIN BookH32
SAY @61
IF~~THEN REPLY @62GOTO BookH33
END

IF~~THEN BEGIN BookH33
SAY @63
=@64
IF~~THEN DO~SetGlobal("SanSuBH","GLOBAL",10) AddexperienceParty(900) RealSetGlobalTimer("BloomwT","GLOBAL",1000)~EXIT
END

IF ~Global("SanSuBH","GLOBAL",11)~THEN BEGIN BookH40
SAY@65
IF~~THEN REPLY @66GOTO BookH42
END

IF~~THEN BEGIN BookH42
SAY @67
=@68
IF~~THEN REPLY @69 GOTO BookH43
END

IF~~THEN BEGIN BookH43
SAY @70
IF~~THEN REPLY @71GOTO BookH44
END

IF~~THEN BEGIN BookH44
SAY @72
IF~~THEN REPLY @73GOTO BookH45
END

IF~~THEN BEGIN BookH45
SAY @74
IF~~THEN REPLY @75GOTO BookH46
END

IF~~THEN BEGIN BookH46
SAY @76
IF~~THEN REPLY @77GOTO BookH47
END

IF~~THEN BEGIN BookH47
SAY @78
IF~~THEN REPLY @79GOTO BookH48
END

IF~~THEN BEGIN BookH48
SAY @80
IF~~THEN REPLY @81GOTO BookH49
END

IF~~THEN BEGIN BookH49
SAY @82
IF~~THEN REPLY @83GOTO BookH50
END

IF~~THEN BEGIN BookH50
SAY @84
IF~~THEN DO~SetGlobal("SanSuBH","GLOBAL",12)AddexperienceParty(1400) RealSetGlobalTimer("BloomwT","GLOBAL",300)~EXIT
END


IF ~Global("SanSuBH","GLOBAL",13)!InParty("Sufinch") ~THEN BEGIN FiBookQ60
SAY@85
IF ~~THEN REPLY @86DO ~SetGlobal("SanSuBH","GLOBAL",14) RealSetGlobalTimer("BloomwT","GLOBAL",1200)~GOTO FiBookQ61
IF ~~THEN REPLY @87DO ~SetGlobal("SanSuBH","GLOBAL",14) RealSetGlobalTimer("BloomwT","GLOBAL",1200)~GOTO FiBookQ61
END

IF~~THEN BEGIN FiBookQ61
SAY@88
IF ~~THEN REPLY @89GOTO FiBookQ62
END

IF~~THEN BEGIN FiBookQ62
SAY @90
=@91
IF ~~THEN EXIT
END

IF ~Global("SanSuBH","GLOBAL",15)~THEN BEGIN BookH60
SAY@92
IF~~THEN REPLY @93GOTO BookH61
IF ~~THEN REPLY @87GOTO BookH61
END

IF~~THEN BEGIN BookH61
SAY @94
IF~~THEN REPLY @95DO ~SetGlobal("SanSuBH","GLOBAL",16)~EXIT
IF~~THEN REPLY @96DO ~SetGlobal("SanSuBH","GLOBAL",16)~EXIT
END


IF ~Global("SanSuBH","GLOBAL",18) ~THEN BEGIN BookH70
SAY @97
IF~~THEN REPLY @98GOTO BookH71
END

IF~~THEN BEGIN BookH71
SAY @99
IF~~THEN REPLY @100GOTO BookH72
END

IF~~THEN BEGIN BookH72
SAY @101
= @102
= @103
IF~~THEN REPLY @104GOTO BookH73
IF~~THEN REPLY @105GOTO BookH73
END

IF~~THEN BEGIN BookH73
SAY @106
IF~~THEN REPLY @107GOTO BookH74
IF~~THEN REPLY @108GOTO BookH74
END

IF~~THEN BEGIN BookH74
SAY @109
IF~~THEN REPLY @110DO ~SetGlobal("SanSuBH","GLOBAL",19)~EXIT
END

// Bookhunt Pirates

IF ~Global("SanLHpir","GLOBAL",1)~THEN BEGIN  SanLHpir1
SAY @111
IF~~THEN REPLY @112GOTO SanLHpir2
END

IF~~THEN BEGIN  SanLHpir2
SAY @113
IF~~THEN REPLY @114DO ~AddexperienceParty(650) SetGlobal("SanLHpir","GLOBAL",2) ~EXIT
IF~~THEN REPLY @115DO ~AddexperienceParty(650) SetGlobal("SanLHpir","GLOBAL",2) ~EXIT
END


IF ~Global("CVPirFight","LOCALS",2)~THEN BEGIN MontCofPir1
SAY @116
IF~~THEN REPLY @117GOTO MontCofPir2
IF~~THEN REPLY @118GOTO MontCofPir2
END

IF~~THEN BEGIN MontCofPir2
SAY @119
IF~GlobalGT("SanSuBH","GLOBAL",11)~THEN REPLY @120DO ~SetGlobal("J#PirateFight","GLOBAL",4) SetGlobal("CVPirFight","LOCALS",3)~EXIT
IF~~THEN REPLY @121DO ~SetGlobal("J#PirateFight","GLOBAL",4) SetGlobal("CVPirFight","LOCALS",3)~EXIT
END

IF ~Global("SanSuBH","GLOBAL",26)~THEN BEGIN ZombieDusk
SAY@122
IF~~THEN REPLY @123DO ~SetGlobal("SanSuBH","GLOBAL",27)~EXIT
END

IF ~Global("SanSuBH","GLOBAL",28)~THEN BEGIN ZombieDawn
SAY @124
= @125
IF~~THEN REPLY @126DO ~SetGlobal("SanSuBH","GLOBAL",29)~EXIT
END

IF~Global("SanSuBH","GLOBAL",34)~THEN BEGIN ZombRet1
SAY @127
IF~~THEN REPLY@128DO ~SetGlobal("SanSuBH","GLOBAL",35) ~GOTO ZombRet2
END

IF~~THEN BEGIN ZombRet2
SAY@129
= @130
IF~~THEN REPLY@131GOTO ZombRet3
IF~~THEN REPLY @132GOTO ZombRet3
END

IF~~THEN BEGIN ZombRet3
SAY@133
IF~~THEN REPLY @134EXIT
END

IF ~Global("SanSuBH","GLOBAL",36)~ZombRetSt
SAY @135
=@136
IF~~THEN REPLY @137GOTO zomb1c
IF~~THEN REPLY @138GOTO zomb1f
END

IF ~~THEN BEGIN zomb1c
SAY@139
IF~~THEN REPLY @140GOTO zomb2f
IF~~THEN REPLY @141GOTO zomb2c
END

IF ~~THEN BEGIN zomb1f
SAY@139
IF~~THEN REPLY @140GOTO zomb2f
IF~~THEN REPLY @141GOTO zomb2f
END

IF~~THEN BEGIN zomb2f
SAY @142
IF ~~THEN REPLY @143DO ~SetGlobal("SanSuBH","GLOBAL",37) SetGlobal("Homesail","GLOBAL",1)~EXIT
IF ~~THEN REPLY @144DO ~SetGlobal("SanSuBH","GLOBAL",37) SetGlobal("Homesail","GLOBAL",1)~EXIT
END


IF~~THEN BEGIN zomb2c
SAY @145
IF ~~THEN REPLY @143DO ~SetGlobal("SanSuBH","GLOBAL",37) SetGlobal("Homesail","GLOBAL",3)~EXIT
IF ~~THEN REPLY @144DO ~SetGlobal("SanSuBH","GLOBAL",37) SetGlobal("Homesail","GLOBAL",1)~EXIT
END

IF~Global("Homesail","GLOBAL",2)~THEN BEGIN ZombRetrep
SAY@146
IF~~THEN REPLY @137GOTO zomb1c
IF~~THEN REPLY @138GOTO zomb1f
END

IF ~Global("Homesail","GLOBAL",6)~THEN BEGIN ZomHom11
SAY @147
IF~~THEN REPLY @148GOTO ZomHom12
IF~~THEN REPLY @149GOTO ZomHom12
IF~~THEN REPLY @150GOTO ZomHom12
END

IF~~THEN BEGIN ZomHom12
SAY @151
IF ~~THEN REPLY @152DO ~SetGlobal("Homesail","GLOBAL",7)~EXIT
IF ~~THEN REPLY @153EXTERN CVSANDRJ ZomHom13
END

IF ~Global("Homesail","GLOBAL",11)~THEN BEGIN ZomHom20
SAY @154
IF ~~THEN REPLY @155GOTO ZomHom21
END

IF~~THEN BEGIN ZomHom21
SAY @156
IF ~~THEN REPLY @157GOTO ZomHom22
END

IF~~THEN BEGIN ZomHom22
SAY @158
IF ~~THEN REPLY @159DO ~SetGlobal("Homesail","GLOBAL",12)~EXIT
END

// DSOTSC Vampire Castle
IF ~Global("SanWoodSt","LOCALS",1)~THEN BEGIN SanMkStake1
SAY @160
IF ~~THEN REPLY@161GOTO SanMkStake2
END

IF ~~THEN BEGIN SanMkStake2
SAY@162
IF ~~THEN REPLY @163GOTO SanMkStake3
END

IF ~~THEN BEGIN SanMkStake3
SAY@164
IF~~THEN REPLY @165DO~SetGlobal("SanWoodSt","LOCALS",2)~EXIT
IF~~THEN REPLY @166GOTO SanMkStake4
END

IF ~~THEN BEGIN SanMkStake4
SAY@167
IF~~THEN DO~
StartCutSceneMode()
MoveToPoint([719.317])
Face(9)
MoveViewPoint([719.317],STANDARD)
DisplayStringWait("CVSandr",@60379)
SmallWait(8)
ForceSpell(Myself,CLERIC_SPIRITUAL_HAMMER)
GiveItemCreate("misc6w",Player1,2,0,0)
EndCutSceneMode()
SetGlobal("SanWoodSt","LOCALS",2)~EXIT
END

IF ~Global("SanWoodSt","LOCALS",5)~THEN BEGIN SanMkStake11
SAY @160
IF ~~THEN REPLY@161GOTO SanMkStake12
END

IF ~~THEN BEGIN SanMkStake12
SAY@162
IF ~~THEN REPLY @163GOTO SanMkStake13
END

IF ~~THEN BEGIN SanMkStake13
SAY@164
IF~~THEN REPLY @165DO~SetGlobal("SanWoodSt","LOCALS",2)~EXIT
IF~~THEN REPLY @166GOTO SanMkStake14
END

IF ~~THEN BEGIN SanMkStake14
SAY@167
IF~~THEN DO~
StartCutSceneMode()
MoveToPoint([3639.1398])
Face(9)
MoveViewPoint([3639.1398],STANDARD)
DisplayStringWait("CVSandr",@60379)
SmallWait(8)
ForceSpell(Myself,CLERIC_SPIRITUAL_HAMMER)
GiveItemCreate("misc6w",Player1,2,0,0)
EndCutSceneMode()
SetGlobal("SanWoodSt","LOCALS",2)~EXIT
END

IF ~Global("SanKiLordVa","LOCALS",1) ~THEN BEGIN Lordvamp1
SAY @168
IF ~~THEN REPLY@169DO~SetGlobal("SanKiLordVa","LOCALS",2) ~EXIT
IF ~~THEN REPLY@170DO~SetGlobal("SanKiLordVa","LOCALS",2) ~EXIT
END

// Balduran's Island
IF ~Global("SanPackW","LOCALS",1)~THEN BEGIN SanPackW10
SAY @171
IF ~~THEN REPLY @172GOTO SanPackW11
IF ~~THEN REPLY @173GOTO SanPackW11
END

IF~~THEN BEGIN SanPackW11
SAY@174
IF ~~THEN REPLY @175GOTO SanPackW12
IF ~~THEN REPLY @176GOTO SanPackW12
IF~~THEN REPLY @177GOTO SanPackW12
END

IF~~THEN BEGIN SanPackW12
SAY @178
IF ~~THEN REPLY @179 GOTO SanPackW13
IF ~~THEN REPLY @180GOTO SanPackW13
END

IF~~THEN BEGIN SanPackW13
SAY @181
IF ~~THEN REPLY @182
DO~SetGlobal("SanPackW","LOCALS",2)~EXIT
END

IF ~Global("SanPackW","LOCALS",3)~THEN BEGIN SanPackW20
SAY @183
IF ~~THEN REPLY @184GOTO SanPackW21
IF ~~THEN REPLY @185GOTO SanPackW21
END

IF~~THEN BEGIN SanPackW21
SAY @186
IF ~~THEN REPLY @187DO ~SetGlobal("SanPackW","LOCALS",4)~EXIT
IF ~~THEN REPLY @188DO ~SetGlobal("SanPackW","LOCALS",4)~EXIT
END

IF ~Global("SanPackW","LOCALS",5)~THEN BEGIN SanPackW30
SAY @189
IF~~THEN REPLY @190 DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanPackW31
IF~~THEN REPLY @191GOTO SanPackW31
IF~~THEN REPLY @192GOTO SanPackW31
END

IF~~THEN BEGIN SanPackW31
SAY@193
IF~~THEN DO ~SetGlobal("SanPackW","LOCALS",6) AddexperienceParty(1800)~EXIT
END

//Red Wizards in East Wood

IF ~Global("sanredatt","GLOBAL",1)~THEN BEGIN redatt1
SAY @194
IF~~THEN REPLY @195 GOTO redatt2
IF~~THEN REPLY @196GOTO redatt2
END

IF~~THEN BEGIN redatt2
SAY @197
IF~!InParty("CVJenlig")~THEN REPLY @198DO ~SetGlobal("sanredatt","GLOBAL",2)~EXIT
IF~!InParty("CVJenlig")~THEN REPLY @199DO ~SetGlobal("sanredatt","GLOBAL",2)~EXIT
IF~InParty("CVJenlig")~THEN REPLY @198DO ~SetGlobal("sanredatt","GLOBAL",2)~EXTERN CVJenliJ Redatt3
IF~InParty("CVJenlig")~THEN REPLY @199DO ~SetGlobal("sanredatt","GLOBAL",2)~EXTERN CVJenliJ Redatt3
END

// Abbathor Quest
IF ~Global("SanAbbat","LOCALS",1)~THEN BEGIN SanFindWost1
SAY @200
IF ~~THEN REPLY @201GOTO SanFindWost2
IF ~~THEN REPLY @202GOTO SanFindWost2
END

IF ~~THEN BEGIN SanFindWost2
SAY @203
= @204
IF ~~THEN REPLY @205GOTO SanFindWost3
END

IF ~~THEN BEGIN SanFindWost3
SAY @206
IF ~~THEN REPLY @207DO~SetGlobal("SanAbbat","LOCALS",2)~EXIT
END

IF~Global("SanDrgln","LOCALS",2)~THEN BEGIN DrglWoDw
SAY@208
IF ~~THEN DO ~SetGlobal("SanDrgln","LOCALS",3)~EXIT
END

IF~Global("SanDrgln","LOCALS",4)~THEN BEGIN DrglWiDw
SAY@209
IF ~InParty("ACBre")~THEN REPLY@210DO~SetGlobal("SanDrgln","LOCALS",5)~EXIT
IF~InParty("Kagain")~THEN REPLY@211
DO~SetGlobal("SanDrgln","LOCALS",5)~EXIT
IF~InParty("Yeslick")~THEN REPLY@212
DO~SetGlobal("SanDrgln","LOCALS",5)~EXIT
IF~~THEN REPLY @213DO~SetGlobal("SanDrgln","LOCALS",5)~EXIT
END

// Candlekeep Return
IF~Global("SanDGHere","BG2627",1)~THEN BEGIN SanCKDpl1
SAY@214
IF~~THEN REPLY@215DO~SetGlobal("SanDGHere","BG2627",2)~EXIT
IF~~THEN REPLY@216DO~SetGlobal("SanDGHere","BG2627",2)~EXIT
END

IF ~Global("SanLibCommt1","LOCALS",1)~THEN BEGIN Libscrl3d
SAY @217
IF~~THEN REPLY @218DO
~SetGlobal("SanLibCommt1","LOCALS",2)~GOTO Libscrl3d1
IF~~THEN REPLY @219DO
~SetGlobal("SanLibCommt1","LOCALS",2)~GOTO Libscrl3d2
END       

IF~~THEN BEGIN Libscrl3d1
SAY@220
IF~~THEN EXIT
END

IF~~THEN BEGIN Libscrl3d2
SAY@221
IF~~THEN EXIT
END

IF ~Global("SanLibCommt2","LOCALS",1)~THEN BEGIN MetKoveras
SAY @222
IF~~THEN REPLY @223GOTO MetKoveras2
IF~~THEN REPLY @224GOTO MetKoveras3
END

IF~~THEN BEGIN MetKoveras2
SAY @225
IF~~THEN REPLY @226DO~SetGlobal("SanLibCommt2","LOCALS",2)~EXIT
END

IF~~THEN BEGIN MetKoveras3
SAY @227
IF~~THEN REPLY @228DO~SetGlobal("SanLibCommt2","LOCALS",2)~EXIT
END

IF ~Global("SanLibCommt3","LOCALS",1)~THEN BEGIN SanPrat1
SAY @229
IF~~THEN REPLY @230GOTO SanPrat2
IF~~THEN REPLY @231GOTO SanPrat2
END

IF~~THEN BEGIN  SanPrat2
SAY @232
IF~~THEN REPLY @233GOTO SanPrat3
IF~~THEN REPLY @234GOTO SanPrat3
END

IF~~THEN BEGIN  SanPrat3
SAY @235
IF~~THEN REPLY @236GOTO SanPrat4
END

IF~~THEN BEGIN  SanPrat4
SAY @237
IF ~~THEN REPLY @238GOTO SanPrat5
IF ~~THEN REPLY @239GOTO SanPrat5
END

IF~~THEN BEGIN  SanPrat5
SAY @240
IF~~THEN REPLY@241DO ~SetGlobal("SanLibCommt3","LOCALS",2)~EXIT
END

// Undercity
IF ~Global("SanTamoko","LOCALS",5)~THEN BEGIN SanHadKil1
SAY @242
IF ~~THEN REPLY @243DO ~SetGlobal("SanTamoko","LOCALS",6)~GOTO SanHadKil2
END

IF~~THEN BEGIN SanHadKil2
SAY @244
IF ~~THEN REPLY @245GOTO SanHadKil3
IF ~~THEN REPLY @246GOTO SanHadKil3
IF ~~THEN REPLY @247GOTO SanHadKil3
END

IF~~THEN BEGIN SanHadKil3
SAY @248
IF ~~THEN REPLY @249GOTO SanHadKil4
END

IF~~THEN BEGIN SanHadKil4
SAY @250
IF ~~THEN REPLY @251GOTO SanHadKil5
END

IF~~THEN BEGIN SanHadKil5
SAY @252
IF ~~THEN EXIT
END

// Durlag's Riddles
IF~Global("SanDurlAnsw","BG0515",1)~THEN BEGIN DurlAnsw
SAY @253
IF~~THEN REPLY @254GOTO DurlAnsw2
IF~~THEN REPLY @255GOTO DurlAnsw2
IF~~THEN REPLY @256DO~SetGlobal("SanDurlAnsw","BG0515",3)~EXIT
END

IF~~THEN BEGIN DurlAnsw2
SAY @257
IF~~THEN DO ~SetGlobal("SanDurlAnsw","BG0515",2)~EXIT
END

// Drizzt in BG1
IF ~Global("SanDrizzt","GLOBAL",1)~THEN BEGIN SanAwaitsDr1
SAY @258
IF~~THEN REPLY @259GOTO SanAwaitsDr2
IF~~THEN REPLY @260GOTO SanAwaitsDr2
END

IF~~THEN BEGIN  SanAwaitsDr2
SAY @261
IF~~THEN REPLY @262GOTO SanAwaitsDr3
IF~~THEN REPLY @263GOTO SanAwaitsDr3
END

IF~~THEN BEGIN  SanAwaitsDr3
SAY @264
IF ~~THEN REPLY @265GOTO SanAwaitsDr4
END

IF~~THEN BEGIN  SanAwaitsDr4
SAY @266
IF ~~THEN REPLY @267GOTO SanAwaitsDr5
END

IF~~THEN BEGIN  SanAwaitsDr5
SAY @268
IF ~Global("SanRomPath","GLOBAL",1)~THEN REPLY @269GOTO SanAwaitsDr6
IF ~Global("SanRomPath","GLOBAL",2)~THEN REPLY @270GOTO SanAwaitsDr7
IF~Global("SanRomPath","GLOBAL",1)~THEN REPLY @270GOTO SanAwaitsDr6
IF ~Global("SanRomPath","GLOBAL",2)~THEN REPLY @271GOTO SanAwaitsDr9
IF ~Global("SanRomPath","GLOBAL",2)~THEN REPLY @272 DO ~SetGlobal("SanDrizzt","GLOBAL",2) SetGlobal("SanDrizzt2","GLOBAL",2)~EXIT
END

IF~~THEN BEGIN  SanAwaitsDr6
SAY @273
IF~~THEN REPLY @274DO ~SetGlobal("SanDrizzt","GLOBAL",2) SetGlobal("SanDrizzt2","GLOBAL",2) StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~EXIT
IF~~THEN REPLY @275GOTO SanAwaitsDr6a
END

IF~~THEN BEGIN SanAwaitsDr6a
SAY@276
IF~~THEN DO ~SetGlobal("SanDrizzt","GLOBAL",2) SetGlobal("SanDrizzt2","GLOBAL",2)~ EXIT
END

IF~~THEN BEGIN  SanAwaitsDr7
SAY @277
IF~~THEN REPLY @274DO ~SetGlobal("SanDrizzt","GLOBAL",2) SetGlobal("SanDrizzt2","GLOBAL",2) StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~EXIT
IF~~THEN REPLY @275GOTO SanAwaitsDr6a
END

IF~~THEN BEGIN  SanAwaitsDr9
SAY @278
IF~~THEN REPLY @274DO ~SetGlobal("SanDrizzt","GLOBAL",2) SetGlobal("SanDrizzt2","GLOBAL",2) StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~EXIT
IF~~THEN REPLY @275GOTO SanAwaitsDr6a
END

IF~Global("SanIreHint","LOCALS",1)~THEN BEGIN IreHint1
SAY @279
IF~~THEN REPLY @280DO ~SetGlobal("SanIreHint","LOCALS",2)~GOTO IreHint2
END

IF~~THEN BEGIN  IreHint2
SAY @281
IF~~THEN REPLY @282 EXIT
END

//The legendary shield of Gwalhaudh the Pure

IF ~Global("KNSHLDF","GLOBAL",1) ~THEN BEGIN Gwalh1
SAY @283
IF~~THEN REPLY @284GOTO Gwalh2
IF~~THEN REPLY @285GOTO Gwalh2
END

IF~~THEN BEGIN Gwalh2
SAY @286
IF~~THEN REPLY @287GOTO Gwalh3
END

IF~~THEN BEGIN Gwalh3
SAY @288
IF~~THEN REPLY @289DO ~SetGlobal("KNSHLDF","GLOBAL",2) AddexperienceParty(400)~EXIT
IF~~THEN REPLY @290DO ~SetGlobal("KNSHLDF","GLOBAL",2) AddexperienceParty(200)~EXIT
END 

// Dream of Castle Owner

IF~Global("SanCasOwn","GLOBAL",1)~THEN BEGIN CasOwn1
SAY@291
IF~~THEN REPLY @292GOTO CasOwn2
IF~~THEN REPLY @293GOTO CasOwn3
IF~~THEN REPLY @294GOTO CasOwn3
END

IF~~THEN BEGIN CasOwn2
SAY @295
IF~~THEN REPLY @296 GOTO CasOwn3
END

IF~~THEN BEGIN CasOwn3
SAY @297
= @298
IF~~THEN REPLY @299DO ~SetGlobal("SanCasOwn","GLOBAL",2)RealSetGlobalTimer("SanCasOwnT","LOCALS",ONE_DAY) ~EXIT
IF~~THEN REPLY @275DO ~SetGlobal("SanCasOwn","GLOBAL",2)RealSetGlobalTimer("SanCasOwnT","LOCALS",ONE_DAY) ~EXIT
END

IF~Global("SanCasOwn","GLOBAL",3)~THEN BEGIN CasOwn4
SAY@300
IF~~THEN REPLY @301GOTO CasOwn5
IF~~THEN REPLY @302GOTO CasOwn5
IF ~~THEN REPLY @303GOTO CasOwn6
END

IF~~THEN BEGIN CasOwn5
SAY @304
IF~~THEN REPLY @305DO ~SetGlobal("SanCasOwn","GLOBAL",4)RealSetGlobalTimer("SanCasOwnT","LOCALS",ONE_DAY) ~EXIT
IF~~THEN REPLY @306DO ~SetGlobal("SanCasOwn","GLOBAL",4)RealSetGlobalTimer("SanCasOwnT","LOCALS",ONE_DAY) ~EXIT
END

IF~~THEN BEGIN CasOwn6
SAY @307
IF~~THEN REPLY @308DO ~SetGlobal("SanCasOwn","GLOBAL",4) RealSetGlobalTimer("SanCasOwnT","LOCALS",ONE_DAY) ~EXIT
IF~~THEN REPLY @309DO ~SetGlobal("SanCasOwn","GLOBAL",4) RealSetGlobalTimer("SanCasOwnT","LOCALS",ONE_DAY) ~EXIT
IF~~THEN REPLY @310DO ~SetGlobal("SanCasOwn","GLOBAL",4) RealSetGlobalTimer("SanCasOwnT","LOCALS",ONE_DAY) ~EXIT
END

IF~Global("SanCasOwn","GLOBAL",5)~THEN BEGIN CasOwn7
SAY @311
IF~~THEN REPLY @312GOTO CasOwn8
IF~GlobalGT("SanVisitedWD","GLOBAL",0)~THEN REPLY @313GOTO CasOwn9
END

IF~~THEN BEGIN CasOwn8
SAY @314
IF~~THEN REPLY @315DO ~SetGlobal("SanCasOwn","GLOBAL",6)~EXIT
IF~~THEN REPLY @316DO ~SetGlobal("SanCasOwn","GLOBAL",6)~EXIT
END

IF~~THEN BEGIN CasOwn9
SAY @317
IF~~THEN REPLY @318DO ~SetGlobal("SanCasOwn","GLOBAL",6)~EXIT
IF~~THEN REPLY @319DO ~SetGlobal("SanCasOwn","GLOBAL",6)~EXIT
END


// Sword Valiant

IF ~Global("ValiantKN","GLOBAL",1)~THEN BEGIN ValiantKN1
SAY @320
IF~~THEN REPLY @321 GOTO ValiantKN2
IF~~THEN REPLY @322GOTO ValiantKN2
END

IF~~THEN BEGIN ValiantKN2
SAY @323
IF~~THEN REPLY @324DO ~IncrementGlobal("Sanpoints","GLOBAL",-1)~GOTO ValiantKN3
IF~~THEN REPLY @325DO~IncrementGlobal("Sanpoints","GLOBAL",1)~ GOTO ValiantKN4
END

IF~~THEN BEGIN ValiantKN3 
SAY @326
= @327
IF~~THEN REPLY @328GOTO ValiantKN5
END

IF~~THEN BEGIN ValiantKN4
SAY@329
= @327
IF~~THEN REPLY @328GOTO ValiantKN5
END

IF ~~THEN BEGIN ValiantKN5
SAY @330
IF ~~THEN DO ~SetGlobal("ValiantKN","GLOBAL",2) AddexperienceParty(400) RealSetGlobalTimer("ValiantTime","GLOBAL",850)~EXIT
END

IF ~Global("ValiantKN","GLOBAL",7)~THEN BEGIN ValiantKN7
SAY @331
IF~~THEN REPLY @332GOTO ValiantKN8
END

IF ~~THEN BEGIN ValiantKN8
SAY @333
IF~~THEN REPLY @334GOTO ValiantKN9
END

IF ~~THEN BEGIN ValiantKN9
SAY @335
IF ~~THEN DO ~SetGlobal("ValiantKN","GLOBAL",8) RealSetGlobalTimer("ValiantTime","GLOBAL",1200)~EXIT
END

IF ~Global("ValiantKN","GLOBAL",15) ~THEN BEGIN KhaDead
SAY @336
IF~~THEN REPLY @337GOTO KhaDead2
IF~~THEN REPLY @338GOTO KhaDead2
END

IF ~~THEN BEGIN KhaDead2
SAY @339
= @340
IF~~THEN REPLY @341DO ~SetGlobal("ValiantKN","GLOBAL",16) AddexperienceParty(2200) ~EXIT
END

// Donate Pirate Treasure

IF ~Global("PirTresDon","GLOBAL",1)~THEN BEGIN GivePirtresOrp
SAY @342
IF~~THEN REPLY @343DO ~SetGlobal("PirTresDon","GLOBAL",2) IncrementGlobal("Sanpoints","GLOBAL",2)~EXIT
IF~~THEN REPLY @344DO ~SetGlobal("PirTresDon","GLOBAL",2)  IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
IF~~THEN REPLY @345DO ~SetGlobal("PirTresDon","GLOBAL",2)IncrementGlobal("Sanpoints","GLOBAL",-1)~EXIT
END

// Ajantis Leaves Male Led Party

IF ~Global("SanHelmDogmas","GLOBAL",20)~THEN BEGIN SanAjaLeft1
SAY @346
IF~~THEN REPLY@347GOTO SanAjaLeft2
IF~~THEN REPLY@348GOTO SanAjaLeft2
END

IF~~THEN BEGIN  SanAjaLeft2
SAY@349
IF~~THEN REPLY@350DO ~SetGlobal("SanHelmDogmas","GLOBAL",21)~GOTO SanAjaLeft3
END

IF~~THEN BEGIN  SanAjaLeft3
SAY@351
IF~~THEN REPLY@352EXIT
END

//   Ajantis plans to propose to PC
IF ~Global("SanAjanProp1","GLOBAL",3)~THEN BEGIN AjProp1
SAY @353
IF~~THEN REPLY @354GOTO AjProp11
END

IF~~THEN BEGIN AjProp11
SAY @355
IF~~THEN REPLY @356GOTO AjProp12
END

IF~~THEN BEGIN AjProp12
SAY @357
IF~~THEN REPLY @358 GOTO AjProp13
IF~~THEN REPLY @359GOTO AjProp13
END

IF~~THEN BEGIN AjProp13
SAY @360
= @361
IF~~THEN REPLY @362GOTO AjProp14
END

IF~~THEN BEGIN AjProp14
SAY @363
IF~~THEN REPLY @364GOTO AjProp15
IF~~THEN REPLY @365GOTO AjProp15
END

IF~~THEN BEGIN AjProp15
SAY @366
IF~~THEN DO ~SetGlobal("SanAjanProp1","GLOBAL",4)~EXIT
END

// PC has Ajantis' Ring

IF~Global("SanAjanProp2","GLOBAL",2)~THEN BEGIN AjanProp20
SAY @367
IF ~~THEN REPLY @368 GOTO AjanProp21
IF ~~THEN REPLY @369GOTO AjanProp22
END

IF~~THEN BEGIN AjanProp21
SAY@370
IF ~~THEN REPLY @371GOTO AjanProp23
END

IF~~THEN BEGIN AjanProp22
SAY@372
IF ~~THEN REPLY @373GOTO AjanProp23
END

IF~~THEN BEGIN AjanProp23
SAY@374
IF~~THEN REPLY @375DO ~SetGlobal("SanAjanProp2","GLOBAL",3)~EXIT
IF~~THEN REPLY @376DO ~SetGlobal("SanAjanProp2","GLOBAL",3)~EXIT
END

// Make Space in group for Dynaheir

IF ~Global("SanDyResc","GLOBAL",1) ~THEN BEGIN  SanDyResc1
SAY @377
IF~~THEN REPLY @378DO ~SetGlobal("SanDyResc","GLOBAL",2) ~GOTO SanDyrescS
IF~~THEN REPLY @379DO ~SetGlobal("SanDyResc","GLOBAL",2) ~GOTO SanDyrescK
IF~~THEN REPLY @380DO ~SetGlobal("SanDyResc","GLOBAL",2) ~ EXIT
END

IF~~THEN BEGIN  SanDyrescS
SAY @381
IF ~~THEN REPLY @382DO ~IncrementGlobal("Sanpoints","GLOBAL",-1)~GOTO SanDyrescK
IF~~THEN REPLY @383EXIT
END

IF~~THEN BEGIN  SanDyrescK
SAY @384
IF~~THEN REPLY @385EXIT
IF ~~THEN REPLY@386DO ~SetGlobal("SandrahJoined","GLOBAL",44)LeaveParty() EscapeAreaMove("BG4802",350,497,3)~EXIT
END

/*First Four Morningtalks */

IF ~Global("SandrahMorningTalk","GLOBAL",1)~THEN BEGIN MorningOne
SAY @387
IF ~~THEN DO~SetGlobal("SandrahMorningTalk","GLOBAL",2) RealSetGlobalTimer("SandrahMorningTalkTime","GLOBAL",1800)~EXIT
END

IF ~Global("SandrahMorningTalk","GLOBAL",3) AreaType(OUTDOOR) ~THEN BEGIN MorningTwoO
SAY @388
= @389
IF ~~THEN REPLY @390 GOTO MorningTwoE
IF ~~THEN REPLY @391GOTO MorningTwoE
END

IF~~MorningTwoE
SAY @392
IF ~~THEN DO~SetGlobal("SandrahMorningTalk","GLOBAL",4) RealSetGlobalTimer("SandrahMorningTalkTime","GLOBAL",1800)~EXIT
END

IF ~Global("SandrahMorningTalk","GLOBAL",3) !AreaType(OUTDOOR) ~THEN BEGIN MorningTwoI
SAY @388
= @393
IF ~~THEN REPLY @390 GOTO MorningTwoE
IF ~~THEN REPLY @391GOTO MorningTwoE
END

IF ~Global("SandrahMorningTalk","GLOBAL",5)~THEN BEGIN Morning3
SAY @394
= @395
IF ~~THEN REPLY @396DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO M3R2
IF ~~THEN REPLY@397DO~IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO M3R2
IF ~~THEN REPLY@398GOTO M3R2
END

IF ~~THEN BEGIN M3R2
SAY @399
IF ~~THEN DO~SetGlobal("SandrahMorningTalk","GLOBAL",7)RealSetGlobalTimer("SandrahMorningTalkTime","GLOBAL",SANROM_TIMER)~EXIT
END

IF ~Global("SandrahMorningTalk","GLOBAL",6)~THEN BEGIN Morning3G
SAY @394
= @400
IF ~~THEN REPLY@396DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO M3R2
IF ~~THEN REPLY@401DO~IncrementGlobal("Sanpoints","GLOBAL",2) ~GOTO M3R2
IF ~~THEN REPLY@398GOTO M3R2
END


IF ~Global("SandrahMorningTalk","GLOBAL",8)~THEN BEGIN MorningFour
SAY @402
= @403
IF ~~THEN REPLY@404DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO NextKiss
IF ~~THEN REPLY@405DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~GOTO Disappointed
END

IF ~~THEN BEGIN NextKiss
SAY @406
= @407
IF ~~THEN DO ~SetGlobal("SandrahLT","GLOBAL",1) SetGlobal("SandrahMorningTalk","GLOBAL",10) StartCutSceneMode() SmallWait(4) FadeToColor([20.0],0) Wait(4) FadeFromColor([20.0],0)  EndCutSceneMode()~EXIT
END

IF ~~THEN BEGIN Disappointed
SAY @408
IF ~~THEN DO ~SetGlobal("SandrahMorningTalk","GLOBAL",11) SetGlobal("SandrahJoined","GLOBAL",3) EscapeAreaMove("BG3402",270,497,0)~EXIT
END

IF ~Global("SandrahMorningTalk","GLOBAL",9)~THEN BEGIN MorningFourG
SAY @402
= @403
IF ~~THEN REPLY@404GOTO Girlkiss
IF ~~THEN REPLY@409GOTO Irritated
END

IF ~~THEN BEGIN Irritated
SAY @410
IF ~~THEN REPLY @411GOTO Experience1
END

IF ~~THEN BEGIN Experience1
SAY @412
IF ~~THEN REPLY @413GOTO Experience2
END

IF ~~THEN BEGIN Experience2
SAY @414
=  @415
IF ~~THEN REPLY @416GOTO Girlkiss
END

IF ~~THEN BEGIN Girlkiss
SAY @417
= @418
IF ~~THEN REPLY @419GOTO Girlkiss2
END

IF ~~THEN BEGIN Girlkiss2
SAY @420
IF ~~THEN DO ~SetGlobal("SandrahLT","GLOBAL",1) SetGlobal("SandrahMorningTalk","GLOBAL",10) StartCutSceneMode() SmallWait(4) FadeToColor([20.0],0) Wait(4) FadeFromColor([20.0],0)  EndCutSceneMode()~EXIT
END

// Morning Talk alternate path if first chance missed

IF ~Global("SandrahMorningTalk","GLOBAL",13)~THEN BEGIN MorningFretr
SAY @421
IF ~~THEN REPLY@422DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO NextKiss
IF ~Global("SanRomPath","GLOBAL",1)~THEN REPLY@423DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO IrritatedB
IF ~Global("SanRomPath","GLOBAL",2)~THEN REPLY@424GOTO Irritated
IF ~~THEN REPLY@425DO~SetGlobal("SandrahMorningTalk","GLOBAL",14)~EXIT
END

IF ~~THEN BEGIN IrritatedB
SAY @426
IF ~~THEN REPLY @427GOTO Experience1b
END

IF ~~THEN BEGIN Experience1b
SAY @412
IF ~~THEN REPLY @413GOTO Experience2b
END

IF ~~THEN BEGIN Experience2b
SAY @428
=  @429
IF ~~THEN REPLY @430DO ~SetGlobal("SandrahLT","GLOBAL",1) SetGlobal("SandrahMorningTalk","GLOBAL",14)StartCutSceneMode() SmallWait(4) FadeToColor([20.0],0) Wait(4) FadeFromColor([20.0],0)  EndCutSceneMode() ~EXIT
END

// Haiass Play
IF ~~THEN BEGIN Haiass2
SAY @431
IF~~THEN REPLY @432EXIT
IF~~THEN REPLY @433 DO ~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO Haiass3
END

IF~~THEN BEGIN Haiass3
SAY @434
IF~~THEN REPLY @435GOTO Haiass4
IF~~THEN REPLY @436GOTO Haiass5
END

IF~~THEN BEGIN Haiass4
SAY @437
=@438
IF~~THEN REPLY @439EXIT
END

IF~~THEN BEGIN Haiass5
SAY @440
IF ~~THEN REPLY @441GOTO Haiass4
IF ~~THEN REPLY @442GOTO Haiass6
END

IF~~THEN BEGIN Haiass6 
SAY @443
= @444
IF~~THEN REPLY @445GOTO Haiass7
END

IF~~THEN BEGIN Haiass7
SAY @446
= @447
IF~~THEN REPLY @448EXIT
IF~~THEN REPLY @449EXIT
END

// Two Pussycats

IF~Global("SanPussMis","GLOBAL",1)~THEN BEGIN SanPussMis1
SAY@450
IF~~THEN REPLY @451 GOTO SanPussMis2
IF~~THEN REPLY @452GOTO SanPussMis2
IF~~THEN REPLY @453DO ~SetGlobal("SanPussMis","GLOBAL",2)~EXIT
END

IF ~~THEN BEGIN SanPussMis2
SAY @454
IF~~THEN REPLY @455GOTO SanPussMis3
IF~~THEN REPLY @456GOTO SanPussMis3
END

IF ~~THEN BEGIN SanPussMis3
SAY @457
= @458
= @459
IF ~~THEN REPLY @460DO ~SetGlobal("SanPussMis","GLOBAL",2) ~GOTO SanPussMis4
IF ~~THEN REPLY @461DO ~SetGlobal("SanPussMis","GLOBAL",2)~EXIT
END

IF ~~THEN BEGIN SanPussMis4
SAY @462
= @463
IF~~THEN REPLY@464DO ~
StartCutSceneMode()
                SmallWait(4)
                FadeToColor([20.0],0)
		Wait(4)
		FadeFromColor([20.0],0)
                EndCutSceneMode() ~EXIT
END


// Feldepost Bath

IF ~Global("SanFeldeTalk","GLOBAL",1)~THEN BEGIN FT1
SAY @465
IF~~THEN REPLY @466+ FT1-1
IF~~THEN REPLY @467+ FT1-2
IF ~ InParty("Imoen2") ~THEN REPLY @468+ FT1-4
IF ~!InParty("Imoen2") ~THEN REPLY @469+ FT1-5
END

IF ~~FT1-1
SAY @470
IF ~InParty("Imoen2") ~THEN REPLY @471+ FT1-4
IF ~!InParty("Imoen2") ~THEN REPLY @471+ FT1-5
END

IF ~~FT1-2
SAY@472
IF ~InParty("Imoen2") ~THEN REPLY @471+ FT1-4
IF ~!InParty("Imoen2") ~THEN REPLY @473+ FT1-5
END

IF ~~FT1-4
SAY @474
= @475
= @476
IF~~THEN REPLY @477DO ~SetGlobal("SanFeldeTalk","GLOBAL",4) ~GOTO BathCheck
END

IF ~~FT1-5
SAY@478
= @479
= @476
IF~~THEN REPLY @477DO ~SetGlobal("SanFeldeTalk","GLOBAL",4) ~GOTO BathCheck
END

IF ~~BathCheck
SAY @480
IF ~GlobalGT("SandrahMorningTalk","GLOBAL",5)~THEN REPLY @481 DO ~
SetGlobal("SanFeldeTalk","GLOBAL",7)
StartCutSceneMode()
                SmallWait(4)
                MoveToPoint([521.550])
		FadeToColor([20.0],0)
		Wait(4)
		FadeFromColor([20.0],0)
                EndCutSceneMode() ~EXIT
                IF ~!GlobalGT("SandrahMorningTalk","GLOBAL",5)!InParty("Imoen2")~THEN REPLY @481DO ~
SetGlobal("SanFeldeTalk","GLOBAL",5)
StartCutSceneMode()
                SmallWait(4)
                MoveToPoint([521.550])
		FadeToColor([20.0],0)
		Wait(4)
		FadeFromColor([20.0],0)
                EndCutSceneMode()~EXIT
IF ~!GlobalGT("SandrahMorningTalk","GLOBAL",5) InParty("Imoen2")~THEN REPLY @481DO ~
SetGlobal("SanFeldeTalk","GLOBAL",6)
StartCutSceneMode()
                SmallWait(4)
                MoveToPoint([521.550])
		FadeToColor([20.0],0)
		Wait(4)
		FadeFromColor([20.0],0)
                EndCutSceneMode() ~EXIT
IF ~GlobalGT("SandrahMorningTalk","GLOBAL",5)~THEN REPLY @482 DO ~
SetGlobal("SanFeldeTalk","GLOBAL",7)
StartCutSceneMode()
                SmallWait(4)
                MoveToPoint([521.550])
		FadeToColor([20.0],0)
		Wait(4)
		FadeFromColor([20.0],0)
                EndCutSceneMode() ~EXIT
                IF ~!GlobalGT("SandrahMorningTalk","GLOBAL",5)!InParty("Imoen2")~THEN REPLY @482DO ~
SetGlobal("SanFeldeTalk","GLOBAL",5)
StartCutSceneMode()
                SmallWait(4)
                MoveToPoint([521.550])
		FadeToColor([20.0],0)
		Wait(4)
		FadeFromColor([20.0],0)
                EndCutSceneMode()~EXIT
IF ~!GlobalGT("SandrahMorningTalk","GLOBAL",5) InParty("Imoen2")~THEN REPLY @483DO ~
SetGlobal("SanFeldeTalk","GLOBAL",6)
StartCutSceneMode()
                SmallWait(4)
                MoveToPoint([521.550])
		FadeToColor([20.0],0)
		Wait(4)
		FadeFromColor([20.0],0)
                EndCutSceneMode() ~EXIT
END

IF ~Global("SanFeldeTalk","GLOBAL",5)~THEN BEGIN DownSa
SAY @484
IF~~THEN REPLY @485DO ~SetGlobal("SanFeldeTalk","GLOBAL",8)~EXIT
IF~~THEN REPLY @486DO ~SetGlobal("SanFeldeTalk","GLOBAL",8)~EXIT
IF~~THEN REPLY @487 DO ~SetGlobal("SanFeldeTalk","GLOBAL",8)~EXIT
END

IF ~Global("SanFeldeTalk","GLOBAL",6)~THEN BEGIN DownSaImo
SAY @488
IF~~THEN REPLY @489DO ~SetGlobal("SanFeldeTalk","GLOBAL",8)~EXIT
IF~~THEN REPLY @486DO ~SetGlobal("SanFeldeTalk","GLOBAL",8)~EXIT
IF~~THEN REPLY @487 DO ~SetGlobal("SanFeldeTalk","GLOBAL",8)~EXIT
END

// Feldetalk 2 Bath Extension

IF ~Global("SanFeldeTalk","GLOBAL",7)~THEN BEGIN FT1Bath
SAY @490
= @491
IF~~THEN REPLY @492+ FT1BathN
IF~~THEN REPLY @493+ FT1BathW
IF~~THEN REPLY  @494+FT1BathI
END


IF ~~FT1BathW
SAY @495
IF~~THEN REPLY @496DO ~SetGlobal("SanFeldeTalk","GLOBAL",9)
                 StartCutSceneMode()
                SmallWait(4)
                FadeToColor([20.0],0)
		Wait(4)
		FadeFromColor([20.0],0)
                EndCutSceneMode() ~ EXIT
IF~~THEN REPLY @497DO ~SetGlobal("SanFeldeTalk","GLOBAL",9)
                 StartCutSceneMode()
                SmallWait(4)
                FadeToColor([20.0],0)
		Wait(4)
		FadeFromColor([20.0],0)
                EndCutSceneMode() ~ EXIT
END


IF ~~FT1BathI
SAY@498
IF~~THEN REPLY  @499DO ~SetGlobal("SanFeldeTalk","GLOBAL",9)
                 StartCutSceneMode()
                SmallWait(4)
                FadeToColor([20.0],0)
		Wait(4)
		FadeFromColor([20.0],0)
                EndCutSceneMode() ~ EXIT
END

IF ~Global("SanFeldeTalk","GLOBAL",9)~THEN BEGIN FT1BathN
SAY @500
IF~~THEN REPLY @501DO ~SetGlobal("FT1Bath","GLOBAL",1) SetGlobal("SanFeldeTalk","GLOBAL",10) ~EXIT
IF~~THEN REPLY @486DO ~SetGlobal("FT1Bath","GLOBAL",1) SetGlobal("SanFeldeTalk","GLOBAL",10) ~EXIT
IF~~THEN REPLY @487 DO ~SetGlobal("FT1Bath","GLOBAL",1) SetGlobal("SanFeldeTalk","GLOBAL",10) ~EXIT
END

// Bathtub if not done before

IF ~AreaCheck("BG3351") !Global("FT1Bath","GLOBAL",1) GlobalGT("SandrahMorningTalk","GLOBAL",5)~THEN BEGIN FTFeld
SAY @502
IF ~~THEN REPLY @503DO ~SetGlobal("SanFeldeTalk","GLOBAL",7)~EXIT
END

/* Lovetalks*/

IF ~Global("SandrahLT","GLOBAL",2)~THEN BEGIN  SLT1
SAY @504
IF ~~THEN REPLY @505DO ~SetGlobal("SanPidPack","GLOBAL",6) SetGlobal("SandrahLT","GLOBAL",3)RealSetGlobalTimer("SandrahMorningTalkTime","GLOBAL",SANROM_TIMER) ~EXIT
IF ~~THEN REPLY @506DO ~SetGlobal("SanPidPack","GLOBAL",6) SetGlobal("SandrahLT","GLOBAL",3)RealSetGlobalTimer("SandrahMorningTalkTime","GLOBAL",SANROM_TIMER) ~EXIT
IF ~~THEN REPLY @507GOTO Hesitate1
END

IF ~~THEN BEGIN Hesitate1
SAY @508
= @509
IF ~~THEN REPLY @510DO ~SetGlobal("SanPidPack","GLOBAL",6) SetGlobal("SandrahLT","GLOBAL",3)RealSetGlobalTimer("SandrahMorningTalkTime","GLOBAL",SANROM_TIMER) ~EXIT
END


IF ~Global("SANDRAHLT","GLOBAL",4)~THEN BEGIN SanPeFu1
SAY @511
IF~~THEN REPLY @512DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~GOTO SanPeFu2
IF~~THEN REPLY @513DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanPeFu3
END

IF ~~THEN BEGIN SanPeFu2
SAY @514
IF~~THEN REPLY @515GOTO  SanPeFu4
IF ~~THEN REPLY@516 DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO  SanPeFu4
IF ~~THEN REPLY@517GOTO SanPeFu6
END

IF ~~THEN BEGIN SanPeFu3
SAY @518
IF ~~THEN REPLY@519 GOTO  SanPeFu4
IF ~~THEN REPLY @520GOTO  SanPeFu4
IF ~~THEN REPLY@517GOTO SanPeFu6
END

IF ~~THEN BEGIN SanPeFu4
SAY @521
= @522
IF~~THEN REPLY @523DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO  SanPeFu5
IF~~THEN REPLY @524DO~IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO  SanPeFu5
IF~~THEN REPLY @525 DO ~SetGlobal("SANDRAHLT","GLOBAL",5) RealSetGlobalTimer("SandrahMorningTalkTime","GLOBAL",SANROM_TIMER)~EXIT
END

IF ~~THEN BEGIN SanPeFu5
SAY @526
IF~~THEN DO ~SetGlobal("SANDRAHLT","GLOBAL",5) RealSetGlobalTimer("SandrahMorningTalkTime","GLOBAL",SANROM_TIMER)~EXIT
END

IF ~~THEN BEGIN SanPeFu6
SAY @527
= @522
IF~~THEN REPLY @523DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO  SanPeFu7
IF~~THEN REPLY @524DO~IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO  SanPeFu7
IF~~THEN REPLY @525 DO ~SetGlobal("SANDRAHLT","GLOBAL",5) RealSetGlobalTimer("SandrahMorningTalkTime","GLOBAL",SANROM_TIMER)~EXIT
END

IF ~~THEN BEGIN SanPeFu7
SAY @528
IF~~THEN DO ~SetGlobal("SANDRAHLT","GLOBAL",5) RealSetGlobalTimer("SandrahMorningTalkTime","GLOBAL",SANROM_TIMER)~EXIT
END

IF ~Global("SANDRAHLT","GLOBAL",6)~THEN BEGIN SanLtKillToo1
SAY @529
IF~~THEN REPLY @530GOTO SanLtKillToo2
IF ~~THEN REPLY @531GOTO SanLtKillToo2
END

IF~~THEN BEGIN SanLtKillToo2
SAY @532
IF ~~THEN REPLY @533 GOTO SanLtKillToo3
END

IF~~THEN BEGIN SanLtKillToo3
SAY @534
IF ~~THEN REPLY @535GOTO SanLtKillToo4
END

IF~~THEN BEGIN SanLtKillToo4
SAY @536
IF~~THEN REPLY @537GOTO SanLtKillToo5
IF~~THEN REPLY @538GOTO SanLtKillToo5
IF~~THEN REPLY @539GOTO SanLtKillToo6
END

IF~~THEN BEGIN SanLtKillToo5
SAY @540
IF~~THEN DO ~SetGlobal("SANDRAHLT","GLOBAL",7) RealSetGlobalTimer("SandrahMorningTalkTime","GLOBAL",SANROM_TIMER)~EXIT
END

IF~~THEN BEGIN SanLtKillToo6
SAY @541
IF~~THEN DO ~SetGlobal("SANDRAHLT","GLOBAL",7) RealSetGlobalTimer("SandrahMorningTalkTime","GLOBAL",SANROM_TIMER)~EXIT
END

// Friendship Talks
//FT1
IF ~Global("SanFT","GLOBAL",1) ~THEN BEGIN FT2-1
SAY @542
IF~~THEN REPLY@543
DO ~SetGlobal("SanFT","GLOBAL",2) RealSetGlobalTimer("SanFTWait","GLOBAL",3000) ~GOTO FT2-7
IF~~THEN REPLY@544DO ~SetGlobal("SanFT","GLOBAL",2) RealSetGlobalTimer("SanFTWait","GLOBAL",3000) ~GOTO FT2-2
IF~~THEN REPLY@545DO ~SetGlobal("SanFT","GLOBAL",2) RealSetGlobalTimer("SanFTWait","GLOBAL",3000) ~GOTO FT2-2
END

IF~~THEN BEGIN FT2-2
SAY @546
IF~~THEN REPLY@547GOTO FT2-3
IF~~THEN REPLY@548GOTO FT2-3
END

IF~~THEN BEGIN FT2-3
SAY @549
IF~~THEN REPLY@550GOTO FT2-4
IF~~THEN REPLY@551GOTO FT2-4
END

IF~~THEN BEGIN FT2-4
SAY @552
IF~~THEN REPLY @553GOTO FT2-5
IF~~THEN REPLY @554GOTO FT2-5
END

IF~~THEN BEGIN FT2-5
SAY @555
IF~~THEN REPLY @556GOTO FT2-6
END

IF~~THEN BEGIN FT2-6
SAY@557
IF~~THEN REPLY @558EXIT
IF~~THEN REPLY @559GOTO FT2-7
END

IF~~THEN BEGIN FT2-7
SAY @560
IF~~THEN REPLY@561DO ~ActionOverride(Player1,DropInventory())~EXIT
END

// Sympathy Rewards
IF~Global("Sancharm","LOCALS",1) ~THEN BEGIN Sancharm1
SAY @562
IF~~THEN REPLY@563GOTO Sancharm2
IF~~THEN REPLY @564GOTO Sancharm2
END

IF ~~THEN BEGIN Sancharm2
SAY @565
IF ~~THEN DO ~GiveItemCreate("Misc1I",Player1,0,0,0) ~GOTO Sancharm3
END

IF ~~THEN BEGIN Sancharm3
SAY @566
IF ~~THEN DO~SetGlobal("Sancharm","LOCALS",2) CreateVisualEffectObject("SPFLESHS",Player1) ActionOverride(Player1,AddSpecialAbility("cvcharm"))~EXIT
END

IF~Global("Sancharm","LOCALS",3) ~THEN BEGIN Sancharm4
SAY @567
IF~~THEN REPLY @568DO ~SetGlobal("Sancharm","LOCALS",4) ~GOTO Sancharm5
IF~~THEN REPLY @569DO ~SetGlobal("Sancharm","LOCALS",4) ~GOTO Sancharm5
IF~~THEN REPLY @570DO ~SetGlobal("Sancharm","LOCALS",4) ~GOTO Sancharm5
END

IF ~~THEN BEGIN Sancharm5
SAY @571
IF~~THEN REPLY@572
DO ~ClearAllActions()
SmallWait(2)
SetInterrupt(FALSE)
TextScreen("SanGift")~EXIT
END

IF~Global("Sancharm","LOCALS",6) ~THEN BEGIN Sancharm6
SAY @573
IF~~THEN REPLY@574DO ~SetGlobal("Sancharm","LOCALS",7) ~GOTO Sancharm7
IF~~THEN REPLY@575DO ~SetGlobal("Sancharm","LOCALS",7) ~GOTO Sancharm7
END

IF ~~THEN BEGIN Sancharm7
SAY @576
IF~~THEN REPLY@577GOTO Sancharm8
END

IF ~~THEN BEGIN Sancharm8
SAY @578
IF~~THEN EXIT
END

//FT2

// Ajantis + Sandrah past
//Male Path
IF ~Global("KnoAjMale","GLOBAL",1) ~THEN BEGIN KnoAjMale
SAY @579
IF ~~THEN REPLY @580GOTO KnowAjCl
IF~~THEN REPLY @581DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~GOTO KnowAjKi
IF~~THEN REPLY @582DO~IncrementGlobal("Sanpoints","GLOBAL",-2)~GOTO KnowAjJea
IF~~THEN REPLY @583GOTO KnowAjMap
END

IF~~KnowAjJea
SAY @584
IF ~~THEN REPLY @585GOTO KnowAjCl
END

IF~~KnowAjMap
SAY @586
= @587
= @588
IF ~~THEN REPLY @589GOTO KnowAjKi
END

IF~~KnowAjCl
SAY@590
IF ~~THEN REPLY @591GOTO KnowAjKi
END

IF~~KnowAjKi
SAY @592
= @593
= @594
IF ~~THEN REPLY @595DO ~SetGlobal("KnoAjMale","GLOBAL",3)~EXIT
IF ~~THEN REPLY @596GOTO KnowAjKi2
END

IF ~~KnowAjKi2
SAY @597
IF ~~THEN REPLY @595DO ~SetGlobal("KnoAjMale","GLOBAL",3)~EXIT
END

//FT3
IF~Global("SanFT","GLOBAL",3)~THEN BEGIN FT3-1
SAY @598
IF~~THEN REPLY @599DO ~SetGlobal("SanFT","GLOBAL",4)RealSetGlobalTimer("SanFTWait","GLOBAL",3000)~GOTO FT3-2
END

IF~~THEN BEGIN FT3-2
SAY @600
IF~~THEN REPLY @601GOTO FT3-3
IF~~THEN REPLY @602GOTO FT3-3
END

IF~~THEN BEGIN FT3-3
SAY @603
IF~~THEN REPLY @604 GOTO FT3-4
IF~~THEN REPLY @605GOTO FT3-4
END

IF~~THEN BEGIN FT3-4
SAY @606
IF ~~THEN DO ~CreateCreatureObject("Sanboy1",Player1,0,0,0)~EXIT
END


// FT Horses
IF ~Global("Sanhors","GLOBAL",1)~THEN BEGIN Sanhors1
SAY @607
IF ~~THEN REPLY @608GOTO Sanhors3
IF ~Global("SanRomPath","GLOBAL",1)~THEN REPLY @609GOTO Sanhors2
IF ~Global("SanRomPath","GLOBAL",2)~THEN REPLY @610GOTO Sanhors3
IF ~~THEN REPLY @611GOTO Sanhors3
END

IF~~THEN BEGIN Sanhors2
SAY @612
IF ~~THEN REPLY @613GOTO Sanhors4
IF ~~THEN REPLY @614GOTO Sanhors4
IF ~~THEN REPLY @615GOTO Sanhors3
END

IF~~THEN BEGIN Sanhors3
SAY @616
IF ~~THEN REPLY @617GOTO Sanhors4
END

IF~~THEN BEGIN Sanhors4
SAY @618
IF ~Global("SanRomPath","GLOBAL",1)~THEN REPLY @619DO ~SetGlobal("Sanhors","GLOBAL",2)~EXIT
IF ~Global("SanRomPath","GLOBAL",2)~THEN REPLY @620DO ~SetGlobal("Sanhors","GLOBAL",2)~EXIT
IF ~~THEN REPLY @621DO ~SetGlobal("Sanhors","GLOBAL",2)~EXIT
END

//FT4
IF~Global("SanFT","GLOBAL",5)~THEN BEGIN FT4-1
SAY @622
IF~~THEN REPLY @623DO ~SetGlobal("SanFT","GLOBAL",6) RealSetGlobalTimer("SanFTWait","GLOBAL",3000)~GOTO FT4-2
END

IF~~THEN BEGIN FT4-2
SAY @624
IF~~THEN REPLY @625GOTO FT4-3
END

IF~~THEN BEGIN FT4-3
SAY @626
IF~~THEN REPLY @627GOTO FT4-4
IF~~THEN REPLY @628GOTO FT4-4
IF~~THEN REPLY @629GOTO FT4-4
END

IF~~THEN BEGIN FT4-4
SAY @630
IF~~THEN REPLY @631GOTO FT4-5
IF~~THEN REPLY @632GOTO FT4-5
END

IF~~THEN BEGIN FT4-5
SAY @633
IF~~THEN REPLY @634EXIT
END



//Female Path
IF ~Global("KnoAjFem","GLOBAL",1) ~THEN BEGIN KnoAjFem
SAY @579
IF ~~THEN REPLY @580GOTO KnowAjClF
IF~~THEN REPLY @583GOTO KnowAjMapF
END

IF~~KnowAjMapF
SAY @586
= @635
= @588
IF ~~THEN REPLY @589GOTO KnowAjKiF
END

IF~~KnowAjClF
SAY@590
IF ~~THEN REPLY @591GOTO KnowAjKiF
END

IF~~KnowAjKiF
SAY @636
= @593
= @637
IF ~~THEN REPLY @595DO ~SetGlobal("KnoAjFem","GLOBAL",3)~GOTO KnowAjGF1
IF ~~THEN REPLY @596GOTO KnowAjKi2F
END

IF ~~KnowAjKi2F
SAY @638
IF ~~THEN REPLY @595DO ~SetGlobal("KnoAjFem","GLOBAL",3)~GOTO KnowAjGF1
END

IF ~~KnowAjGF1
SAY @639
IF ~~THEN REPLY @640GOTO KnowAjGF2
END

IF ~~KnowAjGF2
SAY @641
IF ~~THEN REPLY @642GOTO KnowAjComp
IF ~~THEN REPLY @643DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~GOTO KnowAjHousewife
IF ~~THEN REPLY @644GOTO KnowAJFree
END

IF~~KnowAjComp
SAY@645
IF~~THEN REPLY @646EXIT
IF~~THEN REPLY @647EXIT
END

IF ~~KnowAjHousewife
SAY @648
IF~~THEN REPLY @649EXIT
IF~~THEN REPLY @650EXIT
IF~~THEN REPLY @651EXIT
END

IF ~~KnowAJFree
SAY @652
IF~~THEN REPLY @650EXIT
IF~~THEN REPLY @651EXIT
IF~~THEN REPLY @647EXIT
END

// DreamTalk 1
IF ~Global("SanDreamTalk","GLOBAL",1) ~THEN BEGIN DreamT1
SAY @653IF ~~THEN REPLY @654GOTO SanCamp1
END

IF ~~THEN BEGIN SanCamp1
SAY @655
IF ~~THEN REPLY @656GOTO Lifestyle
IF ~~THEN REPLY @657GOTO Lifestyle
IF ~~THEN REPLY @658DO ~IncrementGlobal("Sanpoints","GLOBAL",-1) SetGlobal("SanDreamTalk","GLOBAL",2) RestParty()~EXIT
END

IF ~~THEN BEGIN Lifestyle
SAY @659
IF ~~THEN REPLY @660GOTO SeeWaterdeep
IF ~~THEN REPLY @661GOTO Citygirl
IF ~~THEN REPLY @662DO ~SetGlobal("SanDreamTalk","GLOBAL",2) RestParty()~EXIT
END

IF ~~THEN BEGIN SeeWaterdeep
SAY @663
IF~~THEN REPLY @664DO ~SetGlobal("SanDreamTalk","GLOBAL",2)  RestParty()~EXIT
END

IF ~~THEN BEGIN Citygirl
SAY @665
=  @666
IF~~THEN REPLY  @664DO ~SetGlobal("SanDreamTalk","GLOBAL",2)  RestParty()~EXIT
END

// DreamTalk 2

IF ~Global("SanDreamTalk","GLOBAL",3) Global("SanStarTalk","LOCALS",0) ~THEN BEGIN DreamT2
SAY @667
IF ~~THEN REPLY @668GOTO Startalk1
IF ~~THEN REPLY @669GOTO Startalk1
IF ~~THEN REPLY @670GOTO Startalk1
END

IF ~~THEN BEGIN Startalk1
SAY @671
IF~~THEN REPLY @672GOTO Startalk2
IF ~~THEN REPLY @673GOTO Startalk2
IF ~~THEN REPLY @674GOTO Startalk2
IF ~~THEN REPLY @675GOTO Startalk2
END

IF ~~THEN BEGIN Startalk2
SAY @676
= @677
IF~~THEN REPLY @678 GOTO Startalk3
END

IF ~~THEN BEGIN Startalk3
SAY @679
IF~~THEN REPLY @680 GOTO Startalk4
IF~~THEN REPLY @681 GOTO Startalk4
END

IF ~~THEN BEGIN Startalk4
SAY @682
IF~~THEN REPLY @683GOTO Startalk5
END

IF ~~THEN BEGIN Startalk5
SAY @684
IF~~THEN REPLY @685DO ~SetGlobal("SanDreamTalk","GLOBAL",4)SetGlobal("SanStarTalk","LOCALS",1)   ~GOTO Startalk6
END

IF ~~THEN BEGIN Startalk6
SAY @686
IF~~THEN REPLY @687DO~RestParty()~EXIT
IF~~THEN REPLY @688DO~RestParty()~EXIT
END

// DreamTalk 3

IF ~Global("SanDreamTalk","GLOBAL",5) Global("Mothdream1","GLOBAL",0) ~THEN BEGIN MotherDream
SAY @689
= @690
IF ~~THEN REPLY @691DO ~SetGlobal("Mothdream1","GLOBAL",1) ~EXIT
IF ~~THEN REPLY @692DO ~SetGlobal("Mothdream1","GLOBAL",1) ~EXIT
END


IF ~Global("Mothdream1","GLOBAL",6)~THEN BEGIN AfterMoDr
SAY @693
IF~~THEN REPLY @694DO ~IncrementGlobal("Sanpoints","GLOBAL",-1)SetGlobal("SanDreamTalk","GLOBAL",6)RealSetGlobalTimer("SanDreamTalkTime","GLOBAL",SANROM_TIMER) SetGlobal("Mothdream1","GLOBAL",7)~EXIT
IF~~THEN REPLY @695GOTO AfterMoDr2
IF~~THEN REPLY @696GOTO AfterMoDr2
END

IF ~~THEN BEGIN AfterMoDr2
SAY @697
IF~~THEN REPLY @698GOTO AfterMoDr3
IF~~THEN REPLY @699GOTO AfterMoDr3
END

IF ~~THEN BEGIN AfterMoDr3
SAY @700
= @701
IF~~THEN REPLY @702GOTO AfterMoDr4
END

IF ~~THEN BEGIN AfterMoDr4
SAY @703
IF~~THEN DO ~SetGlobal("SanDreamTalk","GLOBAL",6)SetGlobal("Mothdream1","GLOBAL",7) AddJournalEntry(@60090,QUEST) GiveItemCreate("Sanport",Player1,0,0,0)RealSetGlobalTimer("SanDreamTalkTime","GLOBAL",SANROM_TIMER) ~EXIT
END

// Learned from Viconia
IF ~Global("SanDreamTalk","GLOBAL",9) ~THEN BEGIN VicSedLrn1m
SAY @704
= @705
IF~~THEN REPLY @706GOTO VicSedLrn2
IF ~~THEN REPLY @707GOTO VicSedLrn2
END

IF ~Global("SanDreamTalk","GLOBAL",10) ~THEN BEGIN VicSedLrn1f
SAY @704
= @708
IF ~~THEN REPLY @707GOTO VicSedLrn2
IF ~~THEN REPLY @709GOTO VicSedLrn3
END

IF ~~THEN BEGIN VicSedLrn2
SAY @710
=@711
IF~~THEN REPLY @712DO ~SetGlobal("SanDreamTalk","GLOBAL",11) RealSetGlobalTimer("SanDreamTalkTime","GLOBAL",SANROM_TIMER) RestParty()~EXIT
END

IF ~~THEN BEGIN VicSedLrn3
SAY @713
=@711
IF~~THEN REPLY @714DO ~SetGlobal("SanDreamTalk","GLOBAL",11) RealSetGlobalTimer("SanDreamTalkTime","GLOBAL",SANROM_TIMER) RestParty()~EXIT
END



// In Elminster's Garden

IF ~Global("Mothdream2","GLOBAL",7) ~THEN BEGIN MoDreScene1
SAY @715
IF~~THEN REPLY @716DO ~SetGlobal("Mothdream2","GLOBAL",8) ~GOTO MoDreScene2
END
 
IF~~THEN BEGIN MoDreScene2
SAY @717
IF~~THEN REPLY @718GOTO MoDreScene3
END
 
IF~~THEN BEGIN MoDreScene3
SAY @719
IF~~THEN REPLY @720GOTO MoDreScene4
END
 
IF~~THEN BEGIN MoDreScene4
SAY @721
= @722
IF~~THEN REPLY @723GOTO MoDreScene5
IF~~THEN REPLY @724GOTO MoDreScene5
END

IF~~THEN BEGIN MoDreScene5
SAY @725
IF~~THEN REPLY @726EXIT
IF~~THEN REPLY @727EXIT
IF~~THEN REPLY @728EXIT
END

 
// On Elminster's Tower

IF ~Global("Santlove","GLOBAL",1) ~THEN BEGIN SantLove1
SAY @729
IF ~~THEN REPLY @730DO ~SetGlobal("Santlove","GLOBAL",2) PlaySound("mernig")~GOTO SantLove2
END

IF~~THEN BEGIN SantLove2
SAY @731
IF ~~THEN REPLY @732GOTO SantLove3
END

IF~~THEN BEGIN SantLove3
SAY @733
IF ~~THEN REPLY @734GOTO SantLove4
END

IF~~THEN BEGIN SantLove4
SAY@735
IF ~~THEN REPLY @736 GOTO SantLove5
IF ~~THEN REPLY @737GOTO SantLove5a
END

IF~~THEN BEGIN SantLove5
SAY@738
IF ~~THEN REPLY @739GOTO SantLove6
END

IF~~THEN BEGIN SantLove5a
SAY@738
IF ~~THEN REPLY @739GOTO SantLove6a
END

IF~~THEN BEGIN SantLove6
SAY@740
IF~Global("SanRomPath","GLOBAL",1)~THEN DO ~TextScreen("SanTowM") Wait(2) Interact("CVSandr")~EXIT
IF~Global("SanRomPath","GLOBAL",2)~THEN DO ~TextScreen("SanTowF") Wait(2) Interact("CVSandr")~EXIT
END

IF~~THEN BEGIN SantLove6a
SAY@741
IF~Global("SanRomPath","GLOBAL",1)~THEN DO ~TextScreen("SanTowM") Wait(2) Interact("CVSandr")~EXIT
IF~Global("SanRomPath","GLOBAL",2)~THEN DO ~TextScreen("SanTowF") Wait(2) Interact("CVSandr")~EXIT
END

// A Veil Dance
IF ~Global("SanVeilDance","GLOBAL",1) OR(4) AreaCheck("CVWOHA") AreaCheck("BG4201")AreaCheck("ar31pb")AreaCheck("BG2215")~THEN BEGIN SanVeil1
SAY @742
= @743
= @744
=@745
= @746
= @747
= @748
= @749
IF ~~THEN DO ~SetGlobal("SanVeilDance","GLOBAL",2) StartMovie("restinn")~EXIT
END

// Bjornin Ogre Kill
IF ~Global("SanHadBjor","GLOBAL",4) ~THEN BEGIN BjorOgDe
SAY @750
IF~Global("SanRomPath","GLOBAL",1)~THEN REPLY @751GOTO BjorOgDe1
IF~Global("SanRomPath","GLOBAL",1)~THEN REPLY @752GOTO BjorOgDe1
IF~Global("SanRomPath","GLOBAL",2)~THEN REPLY @751GOTO BjorOgDe3
IF~Global("SanRomPath","GLOBAL",2)~THEN REPLY @752GOTO BjorOgDe4
END

IF ~~THEN BEGIN BjorOgDe1
SAY @753
IF~~THEN REPLY @754DO ~SetGlobal("SanHadBjor","GLOBAL",5)~EXIT
IF~~THEN REPLY @755GOTO BjorOgDe5
END

IF ~~THEN BEGIN BjorOgDe3
SAY @756
IF ~~THEN REPLY @757DO ~SetGlobal("SanHadBjor","GLOBAL",5)~EXIT
END

IF ~~THEN BEGIN BjorOgDe4
SAY @753
IF~~THEN REPLY @758DO ~SetGlobal("SanHadBjor","GLOBAL",5)~EXIT
END

IF ~~THEN BEGIN BjorOgDe5
SAY @759
IF~~THEN REPLY @760DO ~SetGlobal("SanHadBjor","GLOBAL",5)~EXIT
IF~~THEN REPLY @761DO ~SetGlobal("SanHadBjor","GLOBAL",5)~EXIT
END

// Drizzt Saga - Lich
IF ~Global("San50Ways","GLOBAL",1)~THEN BEGIN San50Ways1
SAY @762
IF~~THEN REPLY @763DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO San50Ways4
IF~~THEN REPLY @764GOTO San50Ways2
IF~~THEN REPLY @765DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO San50Ways3
END

IF ~~THEN BEGIN San50Ways2
SAY @766
IF~~THEN REPLY @767GOTO San50Ways3
IF~~THEN REPLY @768DO ~SetGlobal("San50Ways","GLOBAL",2)~EXIT
END

IF ~~THEN BEGIN San50Ways3
SAY @769
= @770
=@771
=@772
= @773
IF~~THEN REPLY @774GOTO San50Ways4
END

IF ~~THEN BEGIN San50Ways4
SAY @775
IF~~THEN REPLY@776DO ~SetGlobal("San50Ways","GLOBAL",2)~EXIT
IF~PartyHasItem("GiftofM")~THEN REPLY@777DO ~SetGlobal("San50Ways","GLOBAL",2)~EXIT
IF~HaveSpellRES("CVDrag2")~THEN REPLY@778DO ~SetGlobal("San50Ways","GLOBAL",2)~GOTO San50Ways5
END

IF ~~THEN BEGIN San50Ways5
SAY @779
IF~~THEN EXIT
END



//_______________________________________________________________
//All CHAINS Go Below

// Haiass Joins Sandrah

CHAIN
IF~~THEN BSANDR HaiassJoinSan
@780
DO~SetGlobal("HaiassJoinSan","GLOBAL",2)~
==HAIASS @781
==BSANDR@782
== Bimoen IF ~InParty("Imoen2")~THEN @783
END
++ @784DO~IncrementGlobal("Sanpoints","GLOBAL",1)~+ HaiassJoinSan2
++@785+ HaiassJoinSan2

CHAIN
IF~~THEN BSANDR HaiassJoinSan2
@786
==HAIASS@787
== BSANDR@788
END
++@789+ HaiassJoinSan3
++ @790+ HaiassJoinSan3

CHAIN
IF~~THEN BSANDR HaiassJoinSan3
@791
== HAIASS @792
== BSANDR @793
EXIT

//Bookhunters

CHAIN
IF~~THEN BSANDR  SanFuWDBook
@794
DO~SetGlobal("LeftSan","GLOBAL",3)~
==IF_FILE_EXISTS BSUFINCH @795
== BSANDR @796DO ~TakePartyItem("SuSaBo")  ~
==IF_FILE_EXISTS BSUFINCH @797
== BSANDR @798
DO ~EraseJournalEntry(@60111) GiveItemCreate("SuSaBo","Sufinch",0,0,0) SetGlobal("Bloomw","GLOBAL",6) AddexperienceParty(3600) RealSetGlobalTimer("BloomwT","GLOBAL",4800)~
END
++ @799EXTERN SUFINCHP 3

CHAIN
IF ~Global("SanSuBH","GLOBAL",4) ~THEN BSANDR BookHW1
@800
DO ~SetGlobal("SanSuBH","GLOBAL",5)~
==IF_FILE_EXISTS BSUFINCH  IF~InParty("Sufinch") ~THEN @801
==BSANDR@802
END
++ @803+ BookHW2

CHAIN
IF~~THEN BSANDR BookHW2
@804
==IF_FILE_EXISTS BSUFINCH  IF~InParty("Sufinch") ~THEN @805
==BSANDR IF~!InParty("Sufinch") ~THEN @805
==BSANDR@806
END
++ @807+  BookHW3
++ @808+  BookHW3

CHAIN
IF~~THEN BSANDR BookHW3
@809
END
++ @810
EXIT
++ @811
EXIT



// Inter NPC Banters

// Imoen First

// Imoen on Elminster1

CHAIN
IF ~Global("SanImoElm1","GLOBAL",1) ~THEN BSANDR SanImoElm1
@812
DO ~SetGlobal("SanImoElm1","GLOBAL",2)~
== Bimoen  @813
== BSANDR   @814
== Bimoen   @815
== BSANDR   @816
== Bimoen   @817
EXIT

// Imoen on PC to Sandrah Relationship

CHAIN
IF ~Global("SanImoPCInterest","GLOBAL",1)~THEN BSANDR SanImoPCInterest
  @818
DO ~SetGlobal("SanImoPCInterest","GLOBAL",2)~
== Bimoen  @819
=   @820
== BSANDR   @821
== Bimoen   @822
== BSANDR   @823
== Bimoen  @824
== BSANDR   @825
=   @826
== Bimoen  @827
== BSANDR   @828
== Bimoen   @829
== BSANDR  @830
== Bimoen   @831
EXIT

CHAIN
IF ~Global("ImoHousew","GLOBAL",1) ~THEN BSANDR ImoHousew1
@832
DO ~SetGlobal("ImoHousew","GLOBAL",2)~
== Bimoen @833
= @834
== BSANDR @835
== Bimoen @836
== BSANDR @837
== Bimoen @838
== BSANDR @839
== Bimoen IF~!Global("Imoenclasschoice","GLOBAL",1)~THEN@840
== Bimoen IF~Global("Imoenclasschoice","GLOBAL",1)~THEN@841
EXIT

CHAIN
IF ~Global("SanImoGrMa","GLOBAL",1)~THEN BSANDR Greenpink1
@842
DO~SetGlobal("SanImoGrMa","GLOBAL",2)~
== Bimoen @843
== BSANDR @844
== Bimoen @845
== BSANDR @846
== Bimoen @847
== BSANDR @848
EXIT

CHAIN
IF ~Global("ImoTravGlimps","GLOBAL",2)~THEN BSANDR TravGlimp
@849
DO ~SetGlobal("ImoTravGlimps","GLOBAL",3) ~
== Bimoen @850
== BSANDR @851
== Bimoen @852
== BSANDR @853
== Bimoen @854
== BSANDR @855
== Bimoen @856
EXIT

CHAIN
IF ~Global("PallonTalk","GLOBAL",1) ~THEN BSANDR Pallon
@857
DO ~SetGlobal("PallonTalk","GLOBAL",2) ~
== Bimoen @858
== BSANDR @859
== Bimoen @860
== BSANDR @861
== Bimoen @862
== BSANDR @863
== Bimoen @864
== BSANDR @865
== Bimoen @866
== BSANDR @867
EXIT


CHAIN
IF~~THEN  BSANDR ImoHealedProf
@868
DO~SetGlobal("SanHealImo","GLOBAL",6)~
==Bimoen @869
==BSANDR @870
==Bimoen @871
==BSANDR @872
==Bimoen @873
=@874
==BSANDR IF ~Class(Player1,PALADIN_ALL)~THEN@875
==BSANDR IF ~Class(Player1,RANGER_ALL)~THEN@876
==BSANDR IF ~Class(Player1,DRUID_ALL)~THEN@877
==BSANDR IF ~Class(Player1,BARD_ALL)~THEN@878
==BSANDR IF ~Class(Player1,CLERIC_ALL)~THEN@879
==BSANDR IF ~Class(Player1,THIEF_ALL)~THEN@880
==BSANDR IF ~Class(Player1,FIGHTER_ALL)~THEN@881
==BSANDR IF ~Class(Player1,MAGE_ALL)~THEN@882
==BSANDR IF ~Class(Player1,MONK)~THEN@883
==BSANDR IF ~Class(Player1,SORCERER)~THEN@884
EXIT

CHAIN
IF~Global("SanImoEd","LOCALS",1)~THEN BSANDR SanImoEd1
@885
DO ~SetGlobal("SanImoEd","LOCALS",2)~
== Bimoen @886
== BSANDR @887
== Bimoen @888
== BSANDR @889
== Bimoen @890
== BSANDR @891
== Bimoen @892
== BSANDR @893
== Bimoen @894
== BSANDR @895
== Bimoen @896
EXIT

// Lord Foreshadow

CHAIN
IF ~Global("X#IMForeshadow","GLOBAL",3) ~THEN BSANDR Foreshad
@897
DO~SetGlobal("X#IMForeshadow","GLOBAL",4)~
== Bimoen @898
== BSANDR @899
== Bimoen @900
EXIT

//Beregost Arrival

CHAIN
IF ~Global("X#ImoenBereg","GLOBAL",3) ~THEN BSANDR PinkTunic
@901
DO~SetGlobal("X#ImoenBereg","GLOBAL",4)~
== Bimoen @902
EXIT

CHAIN
IF ~Global("ImoHousew","GLOBAL",3)~THEN Bimoen PCEvil1
@903
DO~SetGlobal("ImoHousew","GLOBAL",4)~
==BSANDR@904
==Bimoen@905
=@906
==BSANDR@907
==Bimoen@908
==BSANDR@909
==Bimoen@910
==BSANDR@911
==Bimoen@912
=@913
==BSANDR@914
==Bimoen@915
==BSANDR@916
==Bimoen@917
==BSANDR@918
==Bimoen@919EXIT

CHAIN
IF ~Global("SanImoNashInt","GLOBAL",1) ~THEN BSANDR SanImoNashInt1
@920
DO~SetGlobal("SanImoNashInt","GLOBAL",2) RealSetGlobalTimer("SanImoNashIntT","GLOBAL",1000) ~
== Bimoen @921
== BSANDR @922
== Bimoen @923
== BSANDR @924
== Bimoen @925
EXIT

CHAIN
IF ~Global("SanImoNashInt","GLOBAL",3) ~THEN BSANDR SanImoNashInt3
@926
DO~SetGlobal("SanImoNashInt","GLOBAL",4) ~
== Bimoen @927
== BSANDR @928
= @929
END
++ @930DO ~ActionOverride("Imoen2",MoveToPointNoInterrupt([1641.916]))~
EXIT

CHAIN
IF ~Global("ImopeltHunt","GLOBAL",1) ~THEN BSANDR Pelthu1
@931
DO ~SetGlobal("ImopeltHunt","GLOBAL",2) ~
== Bimoen @932
== BSANDR @933
== Bimoen @934
== BSANDR @935
== Bimoen @936
== BSANDR @937
== Bimoen @938DO~AddJournalEntry(@60931,QUEST)~
EXIT

CHAIN
IF ~Global("SanImoNashInt","GLOBAL",9)~THEN BSANDR SanImoNashInt9
@939
DO ~SetGlobal("SanImoNashInt","GLOBAL",10)~
== Bimoen @940
== BSANDR @941
== Bimoen @942
== BSANDR @943
== Bimoen @944
== BSANDR @945
== Bimoen @946
== BSANDR @947
== Bimoen @948
== BSANDR @949
== Bimoen @950
== BSANDR @951
== Bimoen @952DO~EraseJournalEntry(@60931)~
EXIT

CHAIN
IF ~Global("SanImoLoveLet","GLOBAL",1) ~THEN BSANDR ImoLoveLet
@953
DO ~SetGlobal("SanImoLoveLet","GLOBAL",2)~
== Bimoen @954
== BSANDR @955
== Bimoen @956
END
IF ~!PartyHasItem("Sanwi2") ~THEN REPLY @957+ImoLoveLet2
++ @958+ImoLoveLet2
++ @959DO~IncrementGlobal("Sanpoints","GLOBAL",1)~+ImoLoveLet2
++ @960+  ImoLoveLet3

CHAIN
IF~~THEN BSANDR ImoLoveLet2
@961
== Bimoen @962
== BSANDR @963
== Bimoen @964EXIT

CHAIN
IF~~THEN BSANDR ImoLoveLet3
@965
== Bimoen @966
END
++ @967+ImoLoveLet2


CHAIN
IF~Global("SanImoNashInt","GLOBAL",14) ~THEN BSANDR HenGone1
@968
DO ~SetGlobal("SanImoNashInt","GLOBAL",16)~
== Bimoen @969
== BSANDR @970
== Bimoen @971
== BSANDR @972
END
++ @973+ HenGone2

CHAIN
IF ~~ THEN BSANDR HenGone2
@974
== Bimoen @975
== BSANDR @976
EXIT

//The Orphanage of Beregost

CHAIN
IF~Global("OrcPrison","GLOBAL",17)~THEN BSANDR BeregOrph1
@977
== Bimoen @978
== BSANDR @979
== Bimoen @980
== BSANDR @981
== Bimoen @982
== BSANDR @983
== Bimoen @984
== BSANDR @985
END
++ @986+ BeregOrph2
++ @987DO~IncrementGlobal("Sanpoints","GLOBAL",1)~+ BeregOrph3

CHAIN
IF ~~THEN BSANDR BeregOrph2
@988
DO ~SetGlobal("OrcPrison","GLOBAL",18)~
== Bimoen @989
== BSANDR @990
END
++ @991DO ~SetGlobal("OrcPrison","GLOBAL",20) ~EXIT
++ @992EXIT


CHAIN
IF ~~THEN BSANDR BeregOrph3
@993
DO ~SetGlobal("OrcPrison","GLOBAL",20)~
== Bimoen @994
END
++ @995EXIT

CHAIN
IF ~Global("SanClkWo","GLOBAL",1) ~THEN BSANDR Clkwospi
@996
DO ~SetGlobal("SanClkWo","GLOBAL",2) ~
== Bimoen @997
== BSANDR @998
== Bimoen @999
== BSANDR @1000
== Bimoen @1001
= @1002
== BSANDR @1003
END
++ @1004+  Clkwospi2
++ @1005+  Clkwospi2

CHAIN
IF~~THEN BSANDR Clkwospi2
@1006
END
++ @1007EXIT
++ @1008DO~IncrementGlobal("Sanpoints","Global",-1)~EXIT

CHAIN
IF ~Global("KeldPriTrav","LOCALS",1)~THEN BSANDR BeregOrph20
@1009
DO ~SetGlobal("OrcPrison","GLOBAL",20) SetGlobal("KeldPriTrav","LOCALS",2)~
== KELDDA @1010
== Bimoen @1011
== KELDDA @1012
== Bimoen @1013
== BSANDR @1014
== KELDDA @1015
== BSANDR @1016
== KELDDA @1017
== BSANDR @1018
== KELDDA @1019
== BSANDR @1020
== KELDDA @1021
== BSANDR @1022
== KELDDA @1023
=@1024
=@1025
== Bimoen @1026
== BSANDR @1027
== KELDDA @1028
END
++ @1029+ BeregOrph21

CHAIN
IF ~~THEN BSANDR BeregOrph21
@1030
== KELDDA @1031
END
++ @1032DO~IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
++ @1033EXIT

CHAIN
IF~Global("OrcPrison","GLOBAL",24)~THEN BSANDR BeregOrph30
@1034
DO ~SetGlobal("OrcPrison","GLOBAL",25)~
== Bimoen @1035
END
++ @1036+ BeregOrph31
++ @1037+ BeregOrph31

CHAIN
IF ~~THEN BSANDR  BeregOrph31
@1038
== Bimoen @1039
== BSANDR @1040
== Bimoen @1041
= @1042
== BSANDR @1043
== Bimoen @1044
== BSANDR @1045
== Bimoen @1046
== BSANDR @1047
== Bimoen @1048
== BSANDR @1049
== Bimoen @1050
== BSHART IF~InParty("Sharteel") ~THEN @1051
== BVicon  IF~InParty("Viconia") ~THEN @1052
== BKIVAN  IF~InParty("Kivan") ~THEN @1053
== IF_FILE_EXISTS C0DrakeJ IF~InParty("C0Drake") ~THEN @1054
==IF_FILE_EXISTS BSUFINCH  IF~InParty("Sufinch") ~THEN @1055
== BAJANT  IF~InParty("Ajantis") ~THEN @1056
== IF_FILE_EXISTS k-roseB  IF~InParty("k-rose") ~THEN @1057
==IF_FILE_EXISTS ~B!GAVINJ~IF ~InParty("B!GAVIN")~THEN @1058
==IF_FILE_EXISTS ACBreB IF~InParty("ACBre") ~THEN  @1059
== BBRANW  IF~InParty("Branwen") ~THEN @1060
== BXANNN  IF~InParty("Xan") ~THEN @1061
==IF_FILE_EXISTS JETLAJ IF ~InParty("Jetlaya")~THEN@1062
== BCORAN  IF~InParty("Coran") ~THEN  @1063
== IF_FILE_EXISTS BRH#ISRA  IF~InParty("RH#ISRA") ~THEN @1064
==IF_FILE_EXISTS J#IndiB IF~InParty("J#Indi") ~THEN @1065
==Bjenli IF~InParty("CVJenlig")~THEN@1066
==BYESLI IF~InParty("yeslick")~THEN@1067
== BDYNAH  IF~InParty("Dynaheir") ~THEN @1068
== BJahei  IF~InParty("Jaheira") ~THEN @1069
END
++ @1070EXIT
++ @1071DO~IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT

CHAIN
IF ~AreaCheck("BG3402")Global("OrcPrison","GLOBAL",26)~THEN BSANDR  BeregOrph40
@1072
DO~SetGlobal("OrcPrison","GLOBAL",27)~
== KELDDA @1073
==Bimoen @1074
== KELDDA @1075
==Bimoen @1076
== KELDDA @1077
END
++ @1078+ BeregOrph41

CHAIN
IF~~THEN BSANDR BeregOrph41
@1079
== KELDDA @1080
==Bimoen @1081
== KELDDA @1082
END
++ @1083+  BeregOrph42
++ @1084+BeregOrph43

CHAIN
IF~~THEN BSANDR BeregOrph42
@1085 
== KELDDA @1086
==Bimoen @1087
== KELDDA @1088
END
++ @1089+ BeregOrph44

CHAIN
IF~~THEN BSANDR BeregOrph43
@1090
== KELDDA @1091
==Bimoen @1092
== KELDDA @1093
==Bimoen @1087
== KELDDA @1094
END
++@1095+ BeregOrph44

CHAIN
IF~~THEN BSANDR BeregOrph44
@1096
DO ~ReputationInc(1) RealSetGlobalTimer("BeregOrphOpen","GLOBAL",3600)~
==Bimoen @1097
== KELDDA @1098
==Bimoen @1099
== KELDDA @1100
==Bimoen @1101
== KELDDA @1102
END
++ @1103DO ~AddexperienceParty(4200)~
EXIT

CHAIN
IF ~Global("SanImoRetWD","GLOBAL",2)~THEN BSANDR SeeHenNoOrph
@1104
DO~SetGlobal("SanImoRetWD","GLOBAL",4)~
==Bimoen @1105
END
++ @1106DO~IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
++ @1107DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~EXIT

CHAIN
IF ~Global("SanImoRetWD","GLOBAL",3) ~THEN BSANDR SeeHenOrph
@1108
DO~SetGlobal("SanImoRetWD","GLOBAL",4)~
==Bimoen @1109
END
++ @1106DO~IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
++ @1110DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~EXIT

CHAIN
IF ~Global("OrcPrison","GLOBAL",29)~THEN BSANDR BeregOrph50
@1111
DO ~SetGlobal("OrcPrison","GLOBAL",30)~
==Bimoen @1112
END
++ @1113DO~IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
++ @1114DO ~ReputationInc(-1)~EXIT

CHAIN
IF ~Global("SanImoRetWD","GLOBAL",6)~THEN BSANDR ImoHenWD1
@1115
DO ~SetGlobal("SanImoRetWD","GLOBAL",7) ~
==Bimoen @1116
== Henning2 @1117
==Bimoen @1118
== Henning2 @1119
==Bimoen @1120
== Narqmes @1121
== Henning2 @1122
= @1123
== BSANDR @1124
==Bimoen IF ~GlobalGT("OrcPrison","GLOBAL",26)~THEN @1125
==Bimoen IF ~GlobalLT("OrcPrison","GLOBAL",27)~THEN @1126
== Henning2  IF ~GlobalGT("OrcPrison","GLOBAL",26)~THEN @1127
==Bimoen IF ~GlobalGT("OrcPrison","GLOBAL",26)~THEN @1128
== Henning2  IF ~GlobalGT("OrcPrison","GLOBAL",26)~THEN @1129
== Henning2  IF ~GlobalLT("OrcPrison","GLOBAL",27)~THEN @1130
== BSANDR @1131
== Henning2 @1132
== Narqmes @1133
== Henning2 @1134
==Bimoen @1135DO ~AddExperienceParty(2000) StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF ~Global("Formedcloth","GLOBAL",15)~THEN BSANDR SanImoBhCh1
@1136
DO ~SetGlobal("Formedcloth","GLOBAL",16)~
==Bimoen @1137
== BSANDR @1138
==Bimoen @1139
END
IF ~GlobalGT("OrcPrison","GLOBAL",8)~THEN REPLY@1140+ SanImoBhCh2
IF ~GlobalLT("OrcPrison","GLOBAL",8)~THEN REPLY@1141+ SanImoBhCh3

CHAIN
IF ~~THEN BSANDR SanImoBhCh2
@1142
==Bimoen @1143
END
IF~!AreaCheck("BG2626")~THEN REPLY@1144EXIT
IF~AreaCheck("BG2626")~THEN REPLY@1145+ SanImoBhCh4

CHAIN
IF ~~THEN BSANDR SanImoBhCh3
@1146
==Bimoen @1147
END
IF~!AreaCheck("BG2626")~THEN REPLY@1144EXIT
IF~AreaCheck("BG2626")~THEN REPLY@1145+ SanImoBhCh4

CHAIN
IF ~~THEN BSANDR SanImoBhCh4
@1148
==Bimoen @1149
== BSANDR @1150
==Bimoen @1151DO~RestParty()~EXIT

CHAIN
IF ~Global("SanImoRetCK","LOCALS",1)~THEN BSANDR SanImoRetCK1
@1152
DO ~SetGlobal("SanImoRetCK","LOCALS",2)~
==Bimoen @1153
== BSANDR @1154
END
++@1155DO ~AddexperienceParty(1000) ~EXIT
++ @1156DO ~AddexperienceParty(500) ~EXIT
++ @1157DO~IncrementGlobal("Sanpoints","GLOBAL",-2)~+ SanImoRetCK2

CHAIN
IF~~THEN BSANDR SanImoRetCK2
@1158
END
++ @1159 DO~IncrementGlobal("Sanpoints","GLOBAL",1)AddexperienceParty(500) ~EXIT
++ @1160DO ~ApplySpellRES("CVChaRed",Player1)~EXIT



// Minsc and Boo

CHAIN
IF ~Global("SanBooPel","GLOBAL",1) ~THEN BSANDR SanBoo7
@1161
DO ~SetGlobal("SanBooPel","GLOBAL",2)~
== Pellig @1162
== BMinsc_ @1163
== BSANDR @1164
== BMinsc_ @1165
== BSANDR @1166
== Pellig @1167
== BMinsc_ @1168
== BSANDR @1169
EXIT

CHAIN
IF ~Global("SanBooTlk","GLOBAL",1) ~THEN BSANDR SanBoo1
@1170
DO ~SetGlobal("SanBooTlk","GLOBAL",2)~
== BMinsc_ @1171
== BSANDR @1172
== BMinsc_ @1173
== BSANDR @1174
== BMinsc_ @1175
== BSANDR @1176
== BMinsc_ @1177
== BSANDR @1178
== BMinsc_ @1179
== BSANDR @1180
== BMinsc_ @1181
== BSANDR @1182
== BMinsc_ @1183
EXIT

CHAIN
IF ~Global("SanBooTlk","GLOBAL",3) ~THEN BSANDR SanBoo5
@1184
DO ~SetGlobal("SanBooTlk","GLOBAL",4) RealSetGlobalTimer("SanMinskInt","GLOBAL",1200) ~
== BMinsc_ @1185
== BSANDR @1186
== BMinsc_ @1187
== BSANDR @1188
== BMinsc_ @1189
== BSANDR @1190
== BMinsc_ IF~!InParty("CVShau")~THEN@1191
== BMinsc_ IF~InParty("CVShau")~THEN@1192
== BSANDR @1193 DO ~ForceSpell("Minsc",CLERIC_HEAL)~
EXIT

CHAIN
IF ~Global("SanBooTlk","GLOBAL",5) ~THEN BSANDR SanBoo4
@1194
DO ~SetGlobal("SanBooTlk","GLOBAL",6) RealSetGlobalTimer("SanMinskInt","GLOBAL",1200) ~
== BMinsc_ @1195
== BSANDR @1196
== BMinsc_ @1197
== BSANDR @1198
== BMinsc_ @1199
== BSANDR @1200
== BMinsc_ @1201
== BSANDR @1202
EXIT

CHAIN
IF ~Global("SanBooTlk","GLOBAL",7) ~THEN BSANDR SanBoo2
@1203
DO ~SetGlobal("SanBooTlk","GLOBAL",8) RealSetGlobalTimer("SanMinskInt","GLOBAL",1200) ~
== BMinsc_ @1204
== BSANDR @1205
== BMinsc_ @1206
== BSANDR @1207
== BMinsc_ @1208
== BSANDR @1209
== BMinsc_ @1210
== BSANDR @1211
== BMinsc_ @1212
== BSANDR @1213
== BMinsc_ @1214
== BSANDR @1215
== BMinsc_ @1216
== BSANDR @1217
EXIT

CHAIN
IF ~Global("SanBooTlk","GLOBAL",9) ~THEN BSANDR SanBoo3
@1218
DO ~SetGlobal("SanBooTlk","GLOBAL",10) RealSetGlobalTimer("SanMinskInt","GLOBAL",1200) ~
== BMinsc_ @1219
== BSANDR @1220
== BMinsc_ @1221
== BSANDR @1222
== BMinsc_ @1223
== BSANDR @1224
== BMinsc_ @1225
== BSANDR @1226
== BDYNAH IF~InParty("Dynaheir")~THEN @1227
== BSANDR IF~InParty("Dynaheir")~THEN @1228
== BDYNAH IF~InParty("Dynaheir")~THEN @1229
== BSANDR IF~InParty("Dynaheir")~THEN @1230
== BDYNAH IF~InParty("Dynaheir")~THEN @1231
== BSANDR IF~InParty("Dynaheir")~THEN @1232
== BDYNAH IF~InParty("Dynaheir")~THEN @1233
== BSANDR IF~InParty("Dynaheir")~THEN @1234
== BDYNAH IF~InParty("Dynaheir")~THEN @1235DO~RestParty()~
EXIT

CHAIN
IF~Global("SanBooTlk","GLOBAL",11)~ THEN BSANDR SanBoo6
@1236
DO ~SetGlobal("SanBooTlk","GLOBAL",12) RealSetGlobalTimer("SanMinskInt","GLOBAL",900)~
== BMinsc_  @1237
== BSANDR @1238
== BMinsc_  @1239
== BSANDR @1240
== BMinsc_  @1241
== BSANDR @1242
== BMinsc_ @1243
== BSANDR @1244
== BMinsc_ @1245
EXIT

CHAIN
IF ~Global("SanMinsDung","LOCALS",1) ~THEN BSANDR SanBooDung
@1246
DO ~SetGlobal("SanMinsDung","LOCALS",2) RealSetGlobalTimer("SanMinskInt","GLOBAL",500) ~
== BMinsc_ @1247
== BSANDR @1248
== BMinsc_ @1249
== BSANDR @1250
== BMinsc_ @1251
== BSANDR @1252
== BMinsc_ @1253
EXIT

CHAIN
IF ~Global("SanMinsHur2","LOCALS",1) ~THEN BSANDR SanBooHur2
@1254
DO ~SetGlobal("SanMinsHur2","LOCALS",2) ~
== BMinsc_ @1255
== BSANDR @1256
== BMinsc_ @1257
== BSANDR @1258
== BMinsc_ @1259
== BSANDR @1260DO ~ForceSpell("Minsc",CLERIC_HEAL)~
EXIT

CHAIN
IF ~Global("SanMinsParty","LOCALS",1)~THEN BSANDR SanBooparty
@1261
DO ~ SetGlobal("SanMinsParty","LOCALS",2)~
== BMinsc_ @1262
== BSANDR @1263
== BMinsc_ @1264
== BSANDR @1265
EXIT

CHAIN
IF ~Global("SanMinsParty","LOCALS",3)~THEN BSANDR SanBooparty
@1266
DO ~ SetGlobal("SanMinsParty","LOCALS",4)~
== BMinsc_ @1267
== BSANDR @1268
== BMinsc_ @1269
== BSANDR @1270
== BMinsc_ @1271
== BSANDR @1272
== BMinsc_ @1273
== BSANDR @1274
== BMinsc_ @1275
== BSANDR @1276
== BMinsc_ @1277
== BSANDR @1278
== BMinsc_ @1279 DO ~CreateItem("Misc97",2,0,0) DropItem("Misc97",[-1.-1]) DropItem("Misc97",[1.1]) StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF ~Global("X#MinscBoo","GLOBAL",2)~THEN BSANDR SanBooMysHel
@1280
DO ~SetGlobal("X#MinscBoo","GLOBAL",3) RealSetGlobalTimer("SanMinskInt","GLOBAL",500) ~
== BMinsc_ @1281
== BSANDR @1282
== BMinsc_ @1283
== BSANDR @1284
== BMinsc_ @1285
== BSANDR @1286
== BMinsc_ @1287
== BSANDR @1288
== BMinsc_ @1289
= @1290DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT



// Xan

CHAIN
IF ~Global("SanXanA","GLOBAL",2)~THEN BSANDR Xanknows
@1291
DO~SetGlobal("SanXanA","GLOBAL",3) RealSetGlobalTimer("SanXanT","GLOBAL",1500)~
== BXANNN @1292
== BSANDR @1293
== BXANNN @1294
== BSANDR @1295
== BXANNN @1296
== BSANDR @1297
== BXANNN @1298
== BSANDR @1299
== BXANNN @1300
== BSANDR @1301
== BXANNN @1302
EXIT

CHAIN
IF ~Global("SanXanA","GLOBAL",4)~THEN BSANDR Xanknows2
@1303
DO~SetGlobal("SanXanA","GLOBAL",5)RealSetGlobalTimer("SanXanT","GLOBAL",1200)~
== BXANNN @1304
== BSANDR @1305
== BXANNN @1306
== BSANDR @1307
== BXANNN @1308
== BSANDR @1309
== BXANNN @1310
== BSANDR @1311
== BXANNN @1312
== BSANDR @1313
EXIT

CHAIN
IF ~Global("SanXanA","GLOBAL",6)~THEN BSANDR Xanknows2
@1314
DO~SetGlobal("SanXanA","GLOBAL",7)RealSetGlobalTimer("SanXanT","GLOBAL",300)~
== BXANNN @1315
== BSANDR @1316
== BXANNN @1317
== BSANDR @1318
== BXANNN @1319
== BSANDR @1320
== BXANNN @1321
== BSANDR @1322
== BXANNN @1323
== BSANDR @1324
== BXANNN @1325 DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF ~Global("SanXanPink","LOCALS",1)~THEN BSANDR XanPink1
@1326
DO ~SetGlobal("SanXanPink","LOCALS",2)~
== BXANNN @1327
== BSANDR @1328
== BXANNN @1329
== BSANDR @1330
== BXANNN @1331
== BSANDR @1332
== BXANNN @1333
== BSANDR @1334
== BXANNN @1335
== BSANDR @1336
EXIT

CHAIN
IF ~Global("SanXanPink","LOCALS",3)~THEN BSANDR XanPinkR
@1337
DO ~SetGlobal("SanXanPink","LOCALS",4)~
== BXANNN @1338
== BSANDR @1339
== BXANNN @1340
== BSANDR @1341
== BXANNN @1342
== BSANDR @1343
DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF~Global("SanXanA","GLOBAL",8)~THEN BSANDR Xanknows3
@1344
DO~SetGlobal("SanXanA","GLOBAL",9) RealSetGlobalTimer("SanXanT","GLOBAL",1200)~
== BXANNN @1345
== BSANDR @1346
== BXANNN @1347
== BSANDR @1348
== BXANNN @1349
== BSANDR @1350
== BXANNN @1351
== BSANDR @1352
== BXANNN @1353
== BSANDR @1354
= @1355
EXIT

CHAIN
IF~Global("SanXanA","GLOBAL",10)~THEN BSANDR Xanrelax
@1356
DO~SetGlobal("SanXanA","GLOBAL",11) RealSetGlobalTimer("SanXanT","GLOBAL",1800)~
== BXANNN @1357
== BSANDR @1358
== BXANNN @1359
== BSANDR @1360
== BXANNN @1361
== BSANDR @1362
== BXANNN @1363DO ~RestParty()~
EXIT

CHAIN
IF ~Global("SanXanA","GLOBAL",12) ~THEN BSANDR Xandietog
@1364
DO~SetGlobal("SanXanA","GLOBAL",13) RealSetGlobalTimer("SanXanT","GLOBAL",1800)~
== BXANNN @1365
== BSANDR @1366
== BXANNN @1367
== BSANDR @1368
== BXANNN @1369
== BSANDR @1370 DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF ~Global("San2Elves","GLOBAL",1)~THEN BSANDR SanXanJet
@1371
DO ~SetGlobal("San2Elves","GLOBAL",2)~
== BXANNN @1372
== BSANDR @1373
== BXANNN @1374
== BSANDR @1375
== BXANNN @1376
== BSANDR @1377
== BXANNN @1378
== BSANDR @1379
== BXANNN @1380
== BSANDR @1381DO ~RestParty()~
EXIT


CHAIN
IF ~Global("CentXan","GLOBAL",1)~THEN BSANDR XanJon
@1382
DO ~SetGlobal("CentXan","GLOBAL",2) SetGlobal("SanSpokeCent","LOCALS",1)~
== BXANNN  @1383
== BSANDR @1384
== BXANNN  @1385
== BSANDR @1386
== BXANNN  @1387
== BSANDR @1388
== BXANNN  @1389
== BSANDR @1390
== BXANNN  @1391
== BSANDR @1392
EXIT

CHAIN
IF ~Global("SanXanA","GLOBAL",14) ~THEN BSANDR Xandietog2
@1393
DO~SetGlobal("SanXanA","GLOBAL",15) RealSetGlobalTimer("SanXanT","GLOBAL",1800)~
== BXANNN @1394
== BSANDR @1395
== BXANNN @1396
== BSANDR @1397
== BXANNN @1398
== BSANDR @1399
= @1400
== BXANNN @1401
== BSANDR @1402
== BXANNN @1403
== BSANDR @1404DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF~Global("SanXanPCL","GLOBAL",1)~THEN BSANDR XanPCLuv1
@1405
DO ~SetGlobal("SanXanPCL","GLOBAL",2)~
== BXANNN @1406
== BSANDR @1407
== BXANNN @1408
== BSANDR @1409
== BXANNN @1410
== BSANDR @1411
== BXANNN @1412
== BSANDR @1413
== BXANNN @1414
== BSANDR @1415
== BXANNN @1416
== BSANDR @1417
== BXANNN @1418DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF~Global("SanXanPCL","GLOBAL",3)~THEN BSANDR Xanphilfear
@1419
DO ~SetGlobal("SanXanPCL","GLOBAL",4)~
== BXANNN @1420
== BSANDR @1421
== BXANNN @1422
== BSANDR @1423
== BXANNN @1424
== BSANDR @1425
== BXANNN @1426
== BSANDR @1427
== BXANNN @1428
== BSANDR @1429
== BXANNN @1430
== BSANDR @1431EXIT

CHAIN
IF~Global("SanXanPCL","GLOBAL",6)~THEN BSANDR Sanxanprot
@1432
DO ~SetGlobal("SanXanPCL","GLOBAL",7)~
== BXANNN @1433
== BSANDR @1434
== BXANNN @1435
== BSANDR @1436
== BXANNN @1437
== BSANDR @1438
== BXANNN @1439
== BSANDR @1440
== BXANNN @1441
== BSANDR @1442
== BXANNN @1443
EXIT

CHAIN
IF ~Global("XanDecide","GLOBAL",2) ~THEN BSANDR Xantakepc
@1444
DO ~SetGlobal("XanDecide","GLOBAL",3) ~
== BXANNN @1445
== BSANDR @1446
== BXANNN @1447
== BSANDR @1448
== BXANNN @1449
== BSANDR @1450
== BXANNN @1451
== BSANDR @1452
== BXANNN @1453
== BSANDR @1454
EXIT

CHAIN
IF ~Global("SanXanNashRet","LOCALS",1) ~THEN BSANDR XanRetMin
@1455
DO ~SetGlobal("SanXanNashRet","LOCALS",2) ~
== BXANNN @1456
== BSANDR @585
== BXANNN @1457
== BSANDR @1458
== BXANNN @1459
== BSANDR @1460
EXIT


CHAIN
IF ~Global("XanDecide","GLOBAL",5) ~THEN BSANDR Xanpcmbl
@1461
DO ~SetGlobal("XanDecide","GLOBAL",6) ~
== BXANNN @1462
== BSANDR @1463
== BXANNN @1464
= @1465
== BSANDR @1466
== BXANNN @1467
== BSANDR @1468
== BXANNN @1469
== BSANDR @1470
== BXANNN @1471
== BSANDR @1472
== BXANNN @1473
== BSANDR @1474
== BXANNN @1475
== BSANDR @1476
EXIT

CHAIN
IF ~Global("XanDecide","GLOBAL",7) ~THEN BSANDR Xanpcmbl
@1477
DO ~SetGlobal("XanDecide","GLOBAL",8) ~
== BXANNN @1478
== BSANDR @1479
== BXANNN @1480
== BSANDR @1481
== BXANNN @1482
== BSANDR @1483
== BXANNN @1484
== BSANDR @1485
== BXANNN @1486
== BSANDR @1487
== BXANNN @1488DO ~RestParty()~
EXIT

CHAIN
IF~Global("SanXanSurv","LOCALS",1) ~THEN BSANDR XanSurvBG1
@1489
DO ~SetGlobal("SanXanSurv","LOCALS",2)~
== BXANNN @1490
== BSANDR @1491
== BXANNN @1492
== BSANDR @1493
== BXANNN @1494
== BSANDR @1495
== BXANNN @1496
== BSANDR @1497
== BXANNN @1498
== BSANDR @1499
== BXANNN @1500
== BSANDR @1501
== BXANNN @1502
== BSANDR @1503DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() RestParty()~
EXIT

CHAIN
IF~Global("SanXanFielD","LOCALS",1)~THEN BSANDR XanFieldD
@1504
DO~SetGlobal("SanXanFielD","LOCALS",2)~
== BXANNN @1505
== BSANDR @1506
== BXANNN @1507
== BSANDR @1508
== BXANNN @1509
== BSANDR @1510
== BXANNN @1511
== BSANDR @1512DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

// Xan if No PC Love
CHAIN
IF~Global("SanXanA","GLOBAL",16)~THEN BSANDR XanPCLuvM
@1513
DO ~SetGlobal("SanXanA","GLOBAL",17) RealsetGlobalTimer("SanXanT","GLOBAL",2000)~
== BXANNN @1406
== BSANDR @1407
== BXANNN @1514
== BSANDR @1409
== BXANNN @1515
== BSANDR @1411
== BXANNN @1516
== BSANDR @1517
== BXANNN @1518
== BSANDR @1519
== BXANNN @1416
== BSANDR @1520
== BXANNN @1418DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF~Global("SanXanA","GLOBAL",18)~THEN BSANDR XanphilfearM
@1521
DO ~SetGlobal("SanXanA","GLOBAL",19) RealsetGlobalTimer("SanXanT","GLOBAL",1000)~
== BXANNN @1420
== BSANDR @1421
== BXANNN @1422
== BSANDR @1423
== BXANNN @1424
== BSANDR @1425
== BXANNN @1426
== BSANDR @1427
== BXANNN @1522
== BSANDR @1429
== BXANNN @1430
== BSANDR @1431EXIT

CHAIN
IF~Global("SanXanSurvWit","LOCALS",1)~THEN BSANDR SanxanprotM
@1432
DO ~SetGlobal("SanXanSurvWit","LOCALS",2) RealsetGlobalTimer("SanXanT","GLOBAL",500)~
== BXANNN @1433
== BSANDR @1434
== BXANNN @1435
== BSANDR @1436
== BXANNN @1437
== BSANDR @1438
== BXANNN @1439
== BSANDR @1523
== BXANNN @1441
== BSANDR @1442
== BXANNN @1443
EXIT

CHAIN
IF~Global("SanXanA","GLOBAL",20)~THEN BSANDR XangodsM
@1521
DO ~SetGlobal("SanXanA","GLOBAL",21) RealsetGlobalTimer("SanXanT","GLOBAL",2000)~
== BXANNN @1524
== BSANDR @1525
== BXANNN @1526
== BSANDR @1527
== BXANNN @1528
== BSANDR @1529
== BXANNN @1530
== BSANDR @1531
== BXANNN @1532
== BSANDR @1533
== BXANNN @1534
== BSANDR @1535
EXIT

CHAIN
IF~Global("SanXanA","GLOBAL",22)~THEN BSANDR XanMBM
@1536
DO ~SetGlobal("SanXanA","GLOBAL",23) RealsetGlobalTimer("SanXanT","GLOBAL",2000)~
== BXANNN @1537
== BSANDR @1466
== BXANNN @1467
== BSANDR @1538
== BXANNN @1469
== BSANDR @1539
== BXANNN @1540
== BSANDR @1472
== BXANNN @1473
== BSANDR @1474
== BXANNN @1541
== BSANDR @1476
EXIT


//Yeslick
CHAIN
IF~Global("SanYesl","GLOBAL",2)~THEN BSANDR SanYesl1
@1542
DO ~SetGlobal("SanYesl","GLOBAL",3) RealSetGlobalTimer("SanYeslTa","LOCALS",3000) ~
== BYESLI @1543
== BSANDR @1544
== BYESLI @1545
== BSANDR @1546
== BYESLI @1547
== BSANDR @1548
== BYESLI @1549
== BSANDR @1550
== BYESLI @1551
== BSANDR @1552
== BYESLI @1553
EXIT

CHAIN
IF ~~THEN BSANDR SanYeslHea1
@1554
DO ~SetGlobal("SanHealyesl","GLOBAL",4) RealSetGlobalTimer("SanYeslTa","LOCALS",600)~
== BYESLI @1555
== BSANDR @1556
== BYESLI @1557
== BSANDR @1558
== BYESLI @1559
EXIT

CHAIN
IF~Global("SanYesl","GLOBAL",4)~THEN BSANDR SanYesl2
@1560
DO ~SetGlobal("SanYesl","GLOBAL",5) RealSetGlobalTimer("SanYeslTa","LOCALS",3000) ~
== BYESLI @1561
== BSANDR @1562
== BYESLI @1563
== BSANDR @1564
== BYESLI @1565
== BSANDR @1566
== BYESLI @1567
DO~RestParty()~EXIT

CHAIN
IF~~THEN  BSANDR SanYeslElm
@1568
DO~SetGlobal("SanYeslElmi","GLOBAL",3)~
== BYESLI @1569
== BSANDR @1570
== BYESLI @1571
== BSANDR @1572
== BYESLI @1573
== BSANDR @1574
== BYESLI @1575
== BSANDR @1576
== BYESLI @1577
EXIT

// Tiax

CHAIN
IF ~Global("Santiax","LOCALS",1)~THEN BSANDR SanTiax1
@1578
DO ~SetGlobal("Santiax","LOCALS",2) RealSetGlobalTimer("SantiaxTa","LOCALS",1600) ~
== BTIAX@1579
== BSANDR @1580
== BTIAX@1581
== BSANDR @1582
== BTIAX@1583
== BSANDR @1584
EXIT

CHAIN
IF ~Global("Santiax","LOCALS",3)~THEN BSANDR SanTiax1
@1585
DO ~SetGlobal("Santiax","LOCALS",4) RealSetGlobalTimer("SantiaxTa","LOCALS",1600) ~
== BTIAX@1586
== BSANDR @1587
== BTIAX@1588
== BSANDR @1589
== BTIAX@1590
== BSANDR @1591
== BTIAX@1592
== BSANDR @1593
== BTIAX@1594
EXIT

CHAIN
IF~~THEN BSANDR Sanhealtiax
@1595
DO~SetGlobal("SanHealtiax","GLOBAL",5)~
== BTIAX@1596
== BSANDR@1597
EXIT


//Kivan

CHAIN
IF ~Global("Kivshil","GLOBAL",1) ~THEN BSANDR ImoTest
@1598
DO ~SetGlobal("Kivshil","GLOBAL",2) SetGlobal("PKivshil","GLOBAL",2) RealSetGlobalTimer("KivshilT","GLOBAL",1200)~
== BKIVAN @1599
== BSANDR @1600
== BKIVAN @1601
== BSANDR @1602
== BKIVAN @1603
== BSANDR @1604
== BKIVAN @1605
= @1606
EXIT

CHAIN
IF ~Global("Kivshil","GLOBAL",3) ~THEN BSANDR SanKivInitial
@1607
DO ~SetGlobal("Kivshil","GLOBAL",4) SetGlobal("PKivshil","GLOBAL",4) RealSetGlobalTimer("KivshilT","GLOBAL",1200)~
== BKIVAN @1608
== BSANDR@1609
== BKIVAN @1610
== BSANDR@1611
== BKIVAN @1612
== BSANDR@1613
== BKIVAN @1614
== BSANDR@1615
== BKIVAN @1616
== BSANDR@1617
== BKIVAN @1618
== BSANDR@1619
== BKIVAN @1620
== BSANDR@1621
== BKIVAN @1622
== BSANDR@1623
== BKIVAN @1624DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~EXIT

CHAIN
IF ~Global("Kivshil","GLOBAL",5) ~THEN BSANDR SanKivIn2
@1625
= @1626
DO ~SetGlobal("Kivshil","GLOBAL",6) SetGlobal("PKivshil","GLOBAL",6) RealSetGlobalTimer("KivshilT","GLOBAL",1200)~
== BKIVAN @1627
== BSANDR@1628
== BKIVAN @1629
== BSANDR@1630
== BKIVAN @1631
== BSANDR@1632
== BKIVAN @1633
== BSANDR@1634
== BKIVAN @1635DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF ~Global("Kivkill","GLOBAL",2) ~THEN BSANDR SanKivWar
@1636
DO ~SetGlobal("Kivkill","GLOBAL",3) SetGlobal("PKivkill","GLOBAL",3) RealSetGlobalTimer("KivshilT","GLOBAL",1200)~
== BKIVAN @1637
= @1638
== BSANDR@1639
== BKIVAN @1640
== BSANDR@1641
== BKIVAN @1642
== BSANDR@1643
== BKIVAN @1644
== BSANDR@1645
== BKIVAN @1646
== BSANDR@244
== BKIVAN @1647
== BSANDR@1648
== BKIVAN @1649
EXIT

CHAIN
IF ~Global("Kivkill","GLOBAL",4)~THEN BSANDR SanKivWar2
@1650
DO ~SetGlobal("Kivkill","GLOBAL",5) SetGlobal("PKivkill","GLOBAL",5) RealSetGlobalTimer("KivshilT","GLOBAL",1200)~
== BKIVAN @1651
== BSANDR@1652
== BKIVAN @1653
== BSANDR@1654
== BKIVAN @1655
== BSANDR@1656
== BKIVAN @1657
== BSANDR@1658
== BKIVAN @1659
== BSANDR@1660
== BKIVAN @1661
EXIT

CHAIN
IF ~Global("Kivshil","GLOBAL",7) ~THEN BSANDR SanKivIn4
@1662
DO ~SetGlobal("Kivshil","GLOBAL",8) SetGlobal("PKivshil","GLOBAL",8)~
== BKIVAN @1663
==BSANDR@1664
== BKIVAN @1665
==BSANDR@1666
== BKIVAN @1667
==BSANDR@1668
== BKIVAN @1669 
==BSANDR@1670
== BKIVAN @1671
==BSANDR@1672
== BKIVAN @1673
==BSANDR@1674DO~RestParty()~
EXIT

CHAIN
IF ~Global("KivNakD","GLOBAL",1) ~THEN BSANDR SanKivIn6
@1675
DO ~SetGlobal("KivNakD","GLOBAL",2) SetGlobal("PKivNakD","GLOBAL",2)~
== BKIVAN @1676
==BSANDR@1677
== BKIVAN @1678
==BSANDR@1679
== BKIVAN @1680
==BSANDR@1681
== BKIVAN @1682
==BSANDR@1683
== BKIVAN @1684
==BSANDR@1685
== BKIVAN @1686DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF ~Global("SanKivTaz","GLOBAL",1) ~THEN BSANDR SanKivTazd
@1687
DO~SetGlobal("SanKivTaz","GLOBAL",2) SetGlobal("PSanKivTaz","GLOBAL",2) RealSetGlobalTimer("KivshilT","GLOBAL",880)~
== BKIVAN @1688
==BSANDR@1689
== BKIVAN @1690
==BSANDR@1691
== BKIVAN @1692
==BSANDR@1693
== BKIVAN @1694
==BSANDR@1695
== BKIVAN @1696
=@1697
==BSANDR@1698
== BKIVAN @1699 DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF ~Global("SanKivTaz","GLOBAL",3) ~THEN BSANDR SanKivTazL
@1700
DO~SetGlobal("SanKivTaz","GLOBAL",4) SetGlobal("PSanKivTaz","GLOBAL",4) RealSetGlobalTimer("KivshilT","GLOBAL",1200)~
== BKIVAN @1701
== BSANDR@1702
== BKIVAN @1703
== BSANDR@1704
== BKIVAN @1705
== BSANDR@1706
== BKIVAN @1707
== BSANDR@1708
== BKIVAN @1709
== BSANDR@1710
== BKIVAN @1711
== BSANDR@252
== BKIVAN @1712
== BSANDR@1713
== BKIVAN @1714
== BSANDR@1715
== BKIVAN @1716
== BSANDR@1717
== BKIVAN @1718
== BSANDR@1719
== BKIVAN @1720
== BSANDR@1721
EXIT

CHAIN
IF ~Global("CentKiv","GLOBAL",1)~THEN BSANDR KivJon
@1382
DO ~SetGlobal("CentKiv","GLOBAL",2) SetGlobal("SanSpokeCent","LOCALS",1)~
== BKIVAN  @1383
== BSANDR @1722
== BKIVAN  @1385
== BSANDR @1386
== BKIVAN  @1723
== BSANDR @1724
== BKIVAN  @1389
== BSANDR @1725
== BKIVAN  @1391
== BSANDR @1392
EXIT

CHAIN
IF ~Global("SanKevStay","LOCALS",1) ~THEN BSANDR SanKevStay
@1726
DO ~SetGlobal("SanKevStay","LOCALS",2) SetGlobal("PSanKevStay","LOCALS",2)RealSetGlobalTimer("KivshilT","GLOBAL",1200)~
== BKIVAN @1727
= @1728
== BSANDR @1729
== BKIVAN @1730
== BSANDR @1731
== BKIVAN @1732
== BSANDR @1733
== BKIVAN @1734
== BSANDR @1735
== BKIVAN @1736
=@1737
== BSANDR @1738
== BKIVAN @1739
== BSANDR @1740DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF~Global("SanKivBow","GLOBAL",1)~THEN BSANDR Kivbow
@1741
DO ~SetGlobal("SanKivBow","GLOBAL",2)~
== BKIVAN  @1742
== BSANDR @1743
== BKIVAN  @1744
== BSANDR @1745
== BKIVAN  @1746
== BSANDR @1747
== BKIVAN  @1748
== BSANDR @1749
=@1750
EXIT

CHAIN
IF ~Global("SanKivTaz","GLOBAL",5) ~THEN BSANDR SanKivSeeD
@1751
DO~SetGlobal("SanKivTaz","GLOBAL",6) SetGlobal("PSanKivTaz","GLOBAL",6) RealSetGlobalTimer("KivshilT","GLOBAL",1200)~
== BKIVAN @1752
== BSANDR @1753
== BKIVAN @1754
== BSANDR @1755
== BKIVAN @1756
== BSANDR @244
== BKIVAN @1757
== BSANDR @1758
== BKIVAN @1759
EXIT

CHAIN
IF ~Global("SanKivBtlAh","GLOBAL",1) ~THEN BSANDR SanKivSeeD
@1760
DO~SetGlobal("SanKivBtlAh","GLOBAL",2) SetGlobal("PSanKivBtlAh","GLOBAL",2)RealSetGlobalTimer("KivshilT","GLOBAL",800)~
== BKIVAN @1761
== BSANDR @1762
== BKIVAN @1763
EXIT

CHAIN
IF ~Global("San2ElvesK","GLOBAL",1)~THEN BSANDR SanKivJet
@1764
DO ~SetGlobal("San2ElvesK","GLOBAL",2)~
== BKIVAN @1372
== BSANDR @1373
== BKIVAN @1374
== BSANDR @1375
== BKIVAN @1376
== BSANDR @1377
== BKIVAN @1765
== BSANDR @1379
== BKIVAN @1380
== BSANDR @1766DO ~RestParty()~
EXIT


CHAIN
IF ~Global("SankivRab","LOCALS",1)~THEN BSANDR SanKivSeeR
@1767
DO ~SetGlobal("SankivRab","LOCALS",2) SetGlobal("PSankivRab","LOCALS",2)~
== BKIVAN @1768
== BSANDR @1769
== BKIVAN @1770
== BSANDR @1771
== BKIVAN @1772
== BSANDR @1773
== BKIVAN @1774
END
++ @1775
EXIT

CHAIN
IF ~Global("SankivRab","LOCALS",3)~THEN BSANDR SanKivOutd
@1776
DO ~SetGlobal("SankivRab","LOCALS",4) SetGlobal("PSankivRab","LOCALS",4)RealSetGlobalTimer("KivshilT","GLOBAL",1200)~
== BKIVAN @1777
== BSANDR @1238
== BKIVAN @1778
== BSANDR @1779
== BKIVAN @1780
== BSANDR @1781
== BKIVAN @1782
== BSANDR @1783
== BKIVAN @1784
== BSANDR @1785
== BKIVAN @1786
EXIT

CHAIN
IF ~Global("SankivRab","LOCALS",5)~THEN BSANDR SanKivOut2
@1787
DO ~SetGlobal("SankivRab","LOCALS",6) SetGlobal("PSankivRab","LOCALS",6)RealSetGlobalTimer("KivshilT","GLOBAL",1200)~
== BKIVAN @1788
== BSANDR @1789
== BKIVAN @1790
== BSANDR @1791
== BKIVAN @1792
== BSANDR @1793
== BKIVAN @1794
== BSANDR @1795
== BKIVAN @1796
== BSANDR @1797
== BKIVAN @1798
== BSANDR @1799
== BKIVAN @1800
== BSANDR @1801
== BKIVAN @1802
== BSANDR @1803
== BKIVAN @1804DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF ~Global("SanTamoko","LOCALS",3)~THEN BSANDR SanKivRev3
@1805
DO ~SetGlobal("SanTamoko","LOCALS",4)~
== BKIVAN @1806
== BSANDR @1807
== BKIVAN @1808
== BSANDR @1809
== BKIVAN @1810
EXIT


// Faldorn

CHAIN
IF ~Global("SanFalB","GLOBAL",2) ~THEN BSANDR SanFalHat
@1811
DO ~SetGlobal("SanFalB","GLOBAL",3)~
== Bfaldo @1812
== BSANDR @1813
== Bfaldo @1814
== BSANDR IF ~InMyArea("Pellig") ~THEN@1815
== Bfaldo IF ~InMyArea("Pellig") ~THEN@1816
== BSANDR IF ~!InMyArea("Pellig") ~THEN @1817
== Bfaldo IF ~InMyArea("Pellig") ~THEN @1818
== BSANDR @1819
== Bfaldo @1820
== BSANDR @1821
== Bfaldo @1822
== BSANDR @1823
== Bfaldo @1824
EXIT

// Eldoth
CHAIN
IF ~Global("SanEldoDisl","LOCALS",7)~THEN BSANDR EldothRuma
@1825
DO ~SetGlobal("SanEldoDisl","LOCALS",8)~
== BELDOT@1826
=@1827
== BSANDR @1828
== BELDOT@1829
== BSANDR @1830
== BELDOT@1831
== BSANDR @1832
== BELDOT@1833
== BSANDR @1834
== BELDOT@1835
== BSANDR @1836
== BELDOT@1837
DO~ApplySpellRES("CVSLEEP","Eldoth")~
EXIT

// Ajantis Banters
CHAIN
IF~Global("SanAjan1","LOCALS",2) ~THEN BSANDR SanAjan1
@1838
DO ~SetGlobal("SanAjan1","LOCALS",3)~
== BAJANT @1839
== BSANDR @1840
== BAJANT @1841
== BSANDR @1842
== BAJANT @1843
== BSANDR @1844
== BAJANT @1845
== BSANDR @1846
== BAJANT @1847
== BSANDR @1848
== BAJANT @1849
== BSANDR @1850
EXIT

CHAIN
IF~~THEN BSANDR SanAjanHeal
@1851
DO ~SetGlobal("SanHealAjan","GLOBAL",6) RealSetGlobalTimer("SanHelmDogmasdel","LOCALS",600)~
== BAJANT @1852
== BSANDR @1853
== BAJANT @1854
== BSANDR @1855
== BAJANT @1856
== BSANDR @1857
== BSANDR IF~Global("SanRomPath","GLOBAL",2)~THEN@1858
== BSANDR IF~Global("SanRomPath","GLOBAL",1)~THEN@1859
== BAJANT @1860
EXIT

CHAIN
IF ~Global("SanHelmDogmas","GLOBAL",2)~THEN BSANDR AjanHelm
@1861
DO ~SetGlobal("SanHelmDogmas","GLOBAL",3)~
== BAJANT @1862
== BSANDR @1863
== BAJANT @1864
== BSANDR @1865
== BAJANT @1866
== BSANDR @1867
== BAJANT @1868
== BSANDR @1869
== BAJANT @1870
= @1871
= @1872
= @1873
= @1874
== BSANDR @1875
== BAJANT @1876
== BSANDR @1877
== BAJANT IF~GlobalGT("PCKnowsElmDaughter","GLOBAL",0)~THEN@1878
== BAJANT IF~Global("PCKnowsElmDaughter","GLOBAL",0)~THEN@1879
EXIT

CHAIN
IF ~Global("SanHelmDogmas","GLOBAL",6)~THEN BSANDR AjanMyst
@1880
DO ~SetGlobal("SanHelmDogmas","GLOBAL",7) ~
== BAJANT @1881
== BSANDR @1882
== BAJANT @1883
== BSANDR @1884
= @1885
== BAJANT @1886
== BSANDR @1887
== BAJANT @1888
== BSANDR @1889
== BAJANT @1890
== BSANDR @1891
EXIT

CHAIN
IF~Global("SanImohelmKill","LOCALS",1)~THEN BSANDR AjanMystkill
@1892
DO~SetGlobal("SanImohelmKill","LOCALS",2)~
==Bimoen@1893
== BSANDR @1894
==Bimoen@1895
== BSANDR @1896
==Bimoen@1897
== BSANDR @1898
==Bimoen@1899
== BSANDR @1900
==Bimoen@1901
== BSANDR @1902EXIT

CHAIN
IF ~Global("SanAjantWDEntry","LOCALS",1)~THEN BSANDR AjanWDentry
@1903
DO ~SetGlobal("SanAjantWDEntry","LOCALS",2)~
== BAJANT @1904
== BSANDR @1905
== BAJANT @1906
== BSANDR @1907
== BAJANT @1908
== BSANDR @1909
== BAJANT @1910
== BSANDR @1911
== BAJANT @1912
EXIT

CHAIN
IF~Global("SanHelmDogmas","GLOBAL",9) ~THEN BSANDR AjanExpla
@1913
DO ~SetGlobal("SanHelmDogmas","GLOBAL",11)~
== BAJANT @1914
=@1915
== BSANDR @1916
== BAJANT @1917
== BSANDR @1918
== BAJANT @1919
== BSANDR @1920
== BAJANT @1921
== BSANDR @1922
== BAJANT @1923
== BSANDR @1924
== BAJANT @1925
=@1926
=@1927
EXIT

CHAIN
IF~Global("SanHelmDogmas","GLOBAL",10) ~THEN BSANDR AjanExpla
@1913
DO ~SetGlobal("SanHelmDogmas","GLOBAL",11)~
== BAJANT @1914
=@1915
== BSANDR @1928
== BAJANT @1919
== BSANDR @1920
== BAJANT @1921
== BSANDR @1922
= @1929
== BAJANT @1925
== BSANDR @1930
== BAJANT @1923
== BSANDR @1924
== BAJANT @1925
=@1926
=@1927
EXIT

CHAIN
IF ~Global("SanAjkilBant","GLOBAL",1)~THEN BSANDR AjKilInt
@1931
DO ~SetGlobal("SanAjkilBant","GLOBAL",2)~
== BAJANT @1932
==BSANDR @1933
== BAJANT @1934
= @1935
==BSANDR @1936
== BAJANT @1937
==BSANDR @1938
= @1939
= @1940
== BAJANT @1941
==BSANDR @1942
== BAJANT @1943
==BSANDR @1944
== BAJANT @1945
==BSANDR @1946
== BAJANT @1947
EXIT

CHAIN
IF ~Global("SanHelmDogmas","GLOBAL",13) ~THEN BSANDR AjanAfKi
@1948
DO ~SetGlobal("SanHelmDogmas","GLOBAL",14)~
== BAJANT @1949
== BSANDR @1950
== BAJANT @1951
== BSANDR @1952
== BAJANT @1953
== BSANDR @1954
== BAJANT @1955
== BSANDR @1956
== BAJANT @1957DO ~StartCutSceneMode()
                SmallWait(4)
                FadeToColor([20.0],0)
		Wait(4)
		FadeFromColor([20.0],0)
                EndCutSceneMode() ~EXIT
                
CHAIN 
IF ~Global("SanHelmDogmas","GLOBAL",15) ~THEN BSANDR AjaNTM
@1958
DO ~SetGlobal("SanHelmDogmas","GLOBAL",17)~
== BAJANT @1959
== BSANDR @1960
== BAJANT @1961
== BSANDR @1962
== BAJANT @1963
== BSANDR @1964
== BAJANT @1965
== BSANDR @1966
== BAJANT @1967
== BSANDR @1968
== BAJANT @1969
== BSANDR @1970
== BAJANT @1971
== BSANDR @1970
= @1972
== BAJANT @1973DO~RestParty()~
EXIT

CHAIN
IF ~Global("SanAjanProp1","GLOBAL",1)~THEN BSANDR Prop1
@1974
DO ~SetGlobal("SanAjanProp1","GLOBAL",2)RealSetGlobalTimer("SanAjanPropDel","GLOBAL",420)~
== BAJANT @1975
== BSANDR @1976
== BAJANT @1977
== BSANDR @1978
== BAJANT @1979
== BSANDR @1980
== BAJANT @1981
== BSANDR @1982
== BAJANT @1983
== BSANDR @1984
== BAJANT @1985
== BSANDR @1986
== BAJANT @1987
== BSANDR @1988
EXIT


CHAIN
IF ~Global("SanHelmDogmas","GLOBAL",16) ~THEN BSANDR AjaNTF
@1989
DO ~SetGlobal("SanHelmDogmas","GLOBAL",17)~
== BAJANT @1959
== BSANDR @1960
== BAJANT @1961
== BSANDR @1962
== BAJANT @1963
== BSANDR @1964
== BAJANT @1965
== BSANDR @1966
== BAJANT @1967
== BSANDR @1968
== BAJANT @1969
== BSANDR @1970
== BAJANT @1990
== BSANDR @1972
== BAJANT @1991
== BSANDR @1992
== BAJANT @1993DO~RestParty()~
EXIT

CHAIN
IF ~Global("SanHelmDogmas","GLOBAL",66) ~THEN BSANDR AjaNTFR
@1989
DO ~SetGlobal("SanHelmDogmas","GLOBAL",17)~
== BAJANT @1959
== BSANDR @1960
== BAJANT @1961
== BSANDR @1962
== BAJANT @1963
== BSANDR @1964
== BAJANT @1965
== BSANDR @1966
== BAJANT @1994
== BSANDR @1968
== BAJANT @1969
== BSANDR @1970
== BAJANT @1995
== BSANDR @1972
== BAJANT @1996
== BSANDR @1997
== BAJANT @1993DO~RestParty()~
EXIT

CHAIN
IF ~Global("SanAjanProp2","GLOBAL",5)~THEN BSANDR AjaRG
@1998
=@1999
DO ~SetGlobal("SanAjanProp2","GLOBAL",6)~
== BAJANT @2000
== BSANDR @2001
== BAJANT @2002
== BSANDR @2003
== BAJANT @2004
== BSANDR @2005
== BAJANT @2006
== BSANDR @2007
== BAJANT @2008
== BSANDR @2009EXIT

CHAIN
IF ~Global("SanAjanProp3","GLOBAL",2)~THEN BSANDR AjaPr
@2010
DO ~SetGlobal("SanAjanProp3","GLOBAL",3)~
== BAJANT @2011
== BSANDR @2012
== BAJANT @2013
== BSANDR @2014
== BAJANT @2015
== BSANDR @2016
== BAJANT @2017
== BSANDR @2018EXIT

CHAIN
IF ~Global("SanHelmDogmas","GLOBAL",22)~THEN BSANDR AjCarele
@2019
DO ~SetGlobal("SanHelmDogmas","GLOBAL",23)~
== BAJANT @2020
== BSANDR @2021
== BAJANT @2022
== BSANDR @2023
== BAJANT @2024
== BSANDR @2025
== BAJANT @2026
EXIT

CHAIN
IF ~Global("SanHelmDogmas","GLOBAL",24)~THEN BSANDR Ajboth1
@2027
= @2028
DO ~SetGlobal("SanHelmDogmas","GLOBAL",25)~
== BAJANT @2029
END
++ @2030DO~IncrementGlobal("Sanpoints","GLOBAL",2)~+ Ajboth2
++ @2031+  Ajboth3

CHAIN
IF~~THEN BSANDR Ajboth2
@2032
== BAJANT @2033
END
++@2034EXIT

CHAIN
IF~~THEN BSANDR Ajboth3
@2035
== BAJANT @2036
END
++ @2037EXIT
++ @2038DO~IncrementGlobal("Sanpoints","GLOBAL",1)~+ Ajboth2

CHAIN
IF ~Global("SanHelmDogmas","GLOBAL",26)~THEN BSANDR AjPellDanc
@2039
= @2040
DO ~SetGlobal("SanHelmDogmas","GLOBAL",27)~
== BAJANT @2041
== BSANDR @2042
== BAJANT @2043
== BSANDR @2044
== BAJANT @2045
END
++ @2046+ AjPellDanc1

CHAIN
IF ~~THEN BSANDR AjPellDanc1
@2047
== BAJANT @2048DO ~RestParty()~EXIT


CHAIN
IF ~Global("SanAjanGifts","GLOBAL",1)~THEN BSANDR AjaPrR
@2010
DO ~SetGlobal("SanAjanGifts","GLOBAL",2) RealSetGlobalTimer("SanAjGifts","GLOBAL",1200)~
== BAJANT @2049
== BSANDR @2050
== BAJANT @2013
== BSANDR @2014
== BAJANT @2051DO ~GiveItemCreate("X#AJRONE","CVSandr",0,0,0)~
== BSANDR @2052
=@2053
== BAJANT @2017
== BSANDR @2054EXIT

CHAIN
IF ~Global("SanAjanGifts","GLOBAL",3)~THEN BSANDR AjbothR
@2027
= @2028
DO ~SetGlobal("SanHelmDogmas","GLOBAL",25)SetGlobal("SanAjanGifts","GLOBAL",4) RealsetGlobalTimer("SanAjGifts","GLOBAL",1800)~
== BAJANT @2055
END
++ @2056DO~IncrementGlobal("Sanpoints","GLOBAL",2)~+ Ajboth2R
++ @2057+  Ajboth3R

CHAIN
IF~~THEN BSANDR Ajboth2R
@2032
== BAJANT @2033
END
++@2058EXIT

CHAIN
IF~~THEN BSANDR Ajboth3R
@2035
== BAJANT @2036
END
++ @2037EXIT
++ @2038DO~IncrementGlobal("Sanpoints","GLOBAL",1)~+ Ajboth2

CHAIN
IF ~Global("SanAjanGifts","GLOBAL",5)~THEN BSANDR AjPellDancA
@2039
= @2040
DO ~SetGlobal("SanHelmDogmas","GLOBAL",27)SetGlobal("SanAjanGifts","GLOBAL",6) RealsetGlobalTimer("SanAjGifts","GLOBAL",1800)~
== BAJANT @2041
== BSANDR @2042
== BAJANT @2059
== BSANDR @2060
== BAJANT @2045
END
++ @2061+ AjPellDanc1A

CHAIN
IF ~~THEN BSANDR AjPellDanc1A
@2047
END
++ @2062DO ~RestParty()~EXIT
++ @2063DO ~RestParty()~EXIT

// Finch Banter

CHAIN
IF ~Global("SuFiPel","GLOBAL",1)~THEN BSANDR FinchBantBH
@2064
DO ~SetGlobal("SuFiPel","GLOBAL",2) ~
==IF_FILE_EXISTS BSUFINCH@2065
== BSANDR @2066
==IF_FILE_EXISTS BSUFINCH@2067
== BSANDR @2068
==IF_FILE_EXISTS BSUFINCH@2069
EXIT

CHAIN
IF ~Global("FinchBant1","LOCALS",1)~THEN BSANDR FinchBant1m
@2070
DO ~SetGlobal("FinchBant1","LOCALS",3)~
==IF_FILE_EXISTS BSUFINCH@2071
== BSANDR @2072
==IF_FILE_EXISTS BSUFINCH@2073
== BSANDR @2074
==IF_FILE_EXISTS BSUFINCH@2075
= @2076
== BSANDR @2077
==IF_FILE_EXISTS BSUFINCH@2078
== BSANDR @2079
==IF_FILE_EXISTS BSUFINCH@2080
== BSANDR @2081
= @2082
==IF_FILE_EXISTS BSUFINCH@2083
EXIT

CHAIN
IF ~Global("FinchBant1","LOCALS",2)~THEN BSANDR FinchBant1f
@2070
DO ~SetGlobal("FinchBant1","LOCALS",3)~
==IF_FILE_EXISTS BSUFINCH@2071
== BSANDR @2072
==IF_FILE_EXISTS BSUFINCH@2073
== BSANDR @2074
==IF_FILE_EXISTS BSUFINCH@2075
= @2076
== BSANDR @2077
==IF_FILE_EXISTS BSUFINCH@2078
== BSANDR @2084
==IF_FILE_EXISTS BSUFINCH@2080
== BSANDR @2081
= @2082
==IF_FILE_EXISTS BSUFINCH@2083
EXIT

CHAIN
IF ~Global("FinchBant1","LOCALS",4)~THEN BSANDR FinchBant2
@2085
DO ~SetGlobal("FinchBant1","LOCALS",5)~
==IF_FILE_EXISTS BSUFINCH@2086
== BSANDR @2087
==IF_FILE_EXISTS BSUFINCH@2088
== BSANDR @2089
==IF_FILE_EXISTS BSUFINCH@2090
== BSANDR @2091
==IF_FILE_EXISTS BSUFINCH@2092
== BSANDR @2093
= @2094
==IF_FILE_EXISTS BSUFINCH@2095
== BSANDR @2096
==IF_FILE_EXISTS BSUFINCH@2097
EXIT

CHAIN
IF~~THEN BSANDR FinchHealed
@2098
DO ~SetGlobal("SanHealfink","GLOBAL",6) ~
==IF_FILE_EXISTS BSUFINCH @2099
== BSANDR @2100
==IF_FILE_EXISTS BSUFINCH @2101
== BSANDR @2102
==IF_FILE_EXISTS BSUFINCH @2103
EXIT

CHAIN
IF ~Global("SanSUFiCLREV","GLOBAL",1)~THEN BSANDR SuFiBookQ
@2104
DO ~SetGlobal("SanSUFiCLREV","GLOBAL",2)~
==IF_FILE_EXISTS BSUFINCH@2105
== BSANDR @2106
==IF_FILE_EXISTS BSUFINCH@2107
END
++@2108EXIT
++@2109+ SuFiBookQ2

CHAIN
IF~~THEN BSANDR SuFiBookQ2
@2110
==IF_FILE_EXISTS BSUFINCH@2111
== BSANDR @2112
END
++ @2113+ SuFiBookQ3

CHAIN
IF~~THEN BSANDR SuFiBookQ3
@2114
END
++ @2115
EXIT

CHAIN
IF ~Global("SanSuBH","GLOBAL",13)InParty("Sufinch") ~THEN BSANDR SuFiBookQ60
@2116
DO ~SetGlobal("SanSuBH","GLOBAL",14) RealSetGlobalTimer("BloomwT","GLOBAL",1200)~
==IF_FILE_EXISTS BSUFINCH@2117
== BSANDR @86
==IF_FILE_EXISTS BSUFINCH@88
== BSANDR @2118
==IF_FILE_EXISTS BSUFINCH@2119
== BSANDR @2120
==IF_FILE_EXISTS BSUFINCH@91
EXIT

CHAIN
IF ~Global("SanSuUnKnBo","GLOBAL",1) InParty("Sufinch") ~THEN BSANDR SaFiBoUnkn
@2121
DO ~SetGlobal("SanSuUnKnBo","GLOBAL",2) ~
==IF_FILE_EXISTS BSUFINCH@2122
== BSANDR @2123
==IF_FILE_EXISTS BSUFINCH@2124
== BSANDR @2125
==IF_FILE_EXISTS BSUFINCH@2126
EXIT

// Coran

CHAIN
IF ~Global("SanCoran","LOCALS",2)~THEN BSANDR SanCoranFi
@2127
DO~SetGlobal("SanCoran","LOCALS",3)~
== BCORAN@2128
== BSANDR @2129
== BCORAN@2130
== BSANDR @2131
== BCORAN@2132
== BSANDR @2133
== BCORAN@2134
EXIT

CHAIN
IF ~Global("SanCoran","LOCALS",4)~THEN BSANDR SanCoranbo
@2135
DO~SetGlobal("SanCoran","LOCALS",5) RealSetGlobalTimer("SanCoranTi","LOCALS",3600)~
== BCORAN@2136
== BSANDR @2137
== BCORAN@2138
== BSANDR @2139
== BCORAN@2140
== BSANDR @2141
EXIT

CHAIN
IF ~Global("SanCoran","LOCALS",6)~THEN BSANDR SanCoranSi
@2142
DO~SetGlobal("SanCoran","LOCALS",7) RealSetGlobalTimer("SanCoranTi","LOCALS",620)~
== BCORAN@2143
== BSANDR @2144
== BCORAN@2145
=@2146
== BSANDR @2147
== BCORAN@2148
== BSANDR @2149
== BCORAN@2150
== BSANDR @2151
== BCORAN@2152
== BSANDR @2153
== BCORAN@2154
EXIT

CHAIN
IF ~Global("SanCoran","LOCALS",8)~THEN BSANDR SanCorBedrol1
@2155
DO ~SetGlobal("SanCoran","LOCALS",9) RealSetGlobalTimer("SanCoranTi","LOCALS",1800)~
== BCORAN@2156
== BSANDR@2157
== BCORAN@2158
== BSANDR@2159
== BCORAN@2160
== BSANDR@2161
== BCORAN@2162
== BSANDR@2163DO~RestParty()~
EXIT

CHAIN
IF ~Global("SanCoran","LOCALS",10)~THEN BSANDR SanCorVine
@2164
DO ~SetGlobal("SanCoran","LOCALS",11) RealSetGlobalTimer("SanCoranTi","LOCALS",1600)~
== BCORAN@2165
== BSANDR@2166
= @2167
== BCORAN@2168
== BSANDR@2169
== BCORAN@2170
EXIT

CHAIN
IF ~Global("SanCoran","LOCALS",12)~THEN BSANDR SanCorEve1
@2171
DO ~SetGlobal("SanCoran","LOCALS",13) RealSetGlobalTimer("SanCoranTi","LOCALS",1800)~
== BCORAN@2172
== BSANDR@2173
== BCORAN@2174
== BSANDR@2175
== BCORAN@2176
== BSANDR@2177
== BCORAN@2178
== BSANDR@2179
== BCORAN@2180
== BSANDR@2181DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT

CHAIN
IF~Global("SanCorShirt","LOCALS",1)~THEN BSANDR SanCorshirt
@2182
DO ~SetGlobal("SanCorShirt","LOCALS",2)~
== BCORAN@2183
== BSANDR@2184
== BCORAN@2185
== BSANDR@2186
== BCORAN@2187
== BSANDR@2188
== BCORAN@2189
== BSANDR@2190
EXIT

CHAIN
IF ~Global("SanCoran","LOCALS",15)~THEN BSANDR SanCorEve2
@2191
DO ~SetGlobal("SanCoran","LOCALS",16)~
== BCORAN@2192
== BSANDR@2193
== BCORAN@2194
== BSANDR@2195
== BCORAN@2196
== BSANDR@2197
== BCORAN@2198
== BSANDR@2199
== BCORAN@2200
== BSANDR@2201
DO~RestParty()~
EXIT

CHAIN
IF ~Global("SanCoran","LOCALS",17)~THEN BSANDR SanCormor1
@2202
DO ~SetGlobal("SanCoran","LOCALS",18) RealSetGlobalTimer("SanCoranTi","LOCALS",1800)~
== BCORAN@2202
== BSANDR@2203
== BCORAN@2204
END
++@2205+ SanCormor2

CHAIN
IF~~THEN BSANDR SanCormor2
@2206
== BCORAN@2207
== BSANDR@2208
== BCORAN@2209
== BSANDR@2210
== BCORAN@2211DO~CreateVisualEffectObject("SPFLESHS","Coran")~
EXIT

/* Coran Babytalks */

CHAIN
IF~Global("SanCorbabe","GLOBAL",1)~THEN BSANDR  SanCorbabe1
@2212
DO ~SetGlobal("SanCorbabe","GLOBAL",2) SetGlobal("P#CoranBaby","GLOBAL",1)~
== BCORAN@2213
== BSANDR @2214
== BCORAN@2215
== BSANDR @2216
== BCORAN@2217
== BSANDR @2218
== BCORAN@2219
== BSANDR @2220
== BCORAN@2221
== BSANDR @2222
== BCORAN@2223
EXIT

CHAIN
IF~Global("SanCorbabe","GLOBAL",4)~THEN BSANDR  SanCorbabe2
@2224
DO ~SetGlobal("SanCorbabe","GLOBAL",5) RealSetGlobalTimer("P#CGBabyTalkTime","GLOBAL",COROM_TIMER)~
== BCORAN@2225
== BSANDR @2226
== BCORAN@2227
= @2228
= @2229
== BSANDR @2230
== BCORAN@2231
== BSANDR @2232
== BCORAN@2233
EXIT

CHAIN
IF~Global("SanCorbabe","GLOBAL",6)~THEN BSANDR  SanCorbabe3
@2234
DO ~SetGlobal("SanCorbabe","GLOBAL",7) RealSetGlobalTimer("P#CGBabyTalkTime","GLOBAL",COROM_TIMER)~
== BCORAN@2235
== BSANDR @2236
== BCORAN@2237
= @2238
= @2239
== BSANDR  @2240
== BCORAN @2241
= @2242
= @2243
= @2244
= @2245
= @2246
== BSANDR @2247
== BCORAN @2248
EXIT

CHAIN
IF~Global("SanCorbabe","GLOBAL",8)~THEN BSANDR  SanCorbabe4
@2249
DO ~SetGlobal("SanCorbabe","GLOBAL",9) RealSetGlobalTimer("P#CGBabyTalkTime","GLOBAL",180)~
== BCORAN@2250
== BSANDR @2251
== BCORAN@2252
== BSANDR @2253
== BCORAN@2254
== BSANDR @2255
== BCORAN@2256 DO ~LeaveParty() SetGlobal("P#CoranMoves","GLOBAL",1)SetLeavePartyDialogueFile()~
EXIT

CHAIN
IF~Global("SanCorbabe","GLOBAL",12)~THEN BSANDR  SanCorbabe5
@2257
DO~SetGlobal("SanCorbabe","GLOBAL",13)~
== BCORAN@2258
== BSANDR @2259
== BCORAN@2260
== BSANDR @2261
== BCORAN@2262 DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT


// Jaheira First

CHAIN
IF ~Global("JarKhalBant1","GLOBAL",1) Global("SanRomPath","GLOBAL",1)
~THEN BSANDR JarBant1m
@2263
DO ~SetGlobal("JarKhalBant1","GLOBAL",2)~
== BJahei @2264
== BSANDR @2265
== BJahei @2266
== BSANDR @2267
== BJahei @2268
== BSANDR @2269
== BJahei @2270
== BKhali IF ~InParty("KHALID") ~THEN @2271
== BJahei IF ~InParty("KHALID") ~THEN @2272
== BKhali IF ~InParty("KHALID") ~THEN @2273
EXIT

CHAIN
IF ~Global("JarKhalBant1","GLOBAL",1) Global("SanRomPath","GLOBAL",2)
~THEN BSANDR JarBant1f
@2263
DO ~SetGlobal("JarKhalBant1","GLOBAL",2)~
== BJahei @2264
== BSANDR @2265
== BJahei @2266
== BSANDR @2274
== BJahei @2268
== BSANDR @2269
== BJahei @2270
== BKhali IF ~InParty("KHALID") ~THEN @2271
== BJahei IF ~InParty("KHALID") ~THEN @2272
== BKhali IF ~InParty("KHALID") ~THEN @2273
EXIT

CHAIN
IF~Global("JarKhalBant1","GLOBAL",3)~THEN BSANDR JarBant2
@2275
DO ~SetGlobal("JarKhalBant1","GLOBAL",4)~
== BKhali @2276
== BSANDR @2277
== BKhali @2278
== BSANDR @2279
== BKhali @2280
= @2281
== BSANDR @2282
== BKhali @2283
== BSANDR @2284
== BKhali @2285
== BJahei IF~InParty("Jaheira")~THEN@2286
== BKhali IF~InParty("Jaheira")~THEN@2287
== BJahei IF~InParty("Jaheira")~THEN@2288
EXIT

CHAIN
IF~Global("JarKhalBant1","GLOBAL",6)~THEN BSANDR JarBant2al
@2289
DO ~SetGlobal("JarKhalBant1","GLOBAL",4)~
== BKhali @2276
== BSANDR @2290
== BKhali @2278
== BSANDR @2279
== BKhali @2280
= @2281
== BSANDR @2282
== BKhali @2283
== BSANDR @2284
== BKhali @2291
== BSANDR @2292
== BKhali @2293
EXIT

CHAIN
IF~~THEN  BSANDR SanJAHHea1
@2294
DO~ SetGlobal("SanHealjah","GLOBAL",4)~
== BJahei @2295
== BSANDR @2296
== BJahei @2297
== BSANDR @2298
== BJahei @2299
== BSANDR @2300
== BJahei @2301
EXIT

CHAIN
IF ~Global("SanJahKiv","GLOBAL",1)~THEN BSANDR SanjahKiv
@2302
DO ~SetGlobal("SanJahKiv","GLOBAL",2)~
== BJahei @2303
== BSANDR @2304
== BJahei @2305
== BSANDR @2306
== BJahei @2307
== BSANDR @2308
== BJahei @2309
== BSANDR @2310
== BJahei @2311
== BSANDR @2312
== BJahei @2313
== BSANDR @2314
= @2315
== BJahei @2316
== BSANDR @2317
== BJahei @2318
== BSANDR @2319
EXIT

CHAIN
IF ~Global("SanHealkal","GLOBAL",7)~THEN BSANDR SanKhaInt
@2320
DO ~SetGlobal("SanHealkal","GLOBAL",8)~
== BKhali @2321
== BSANDR @2322
== BKhali @2323
== BSANDR @2324
== BKhali @2325
== BSANDR @2326
== BKhali @2327
== BSANDR @2328
== BKhali @2329DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT

CHAIN
IF ~Global("SanHealkal","GLOBAL",9)~THEN BSANDR SanKhaInt2
@2330
DO ~SetGlobal("SanHealkal","GLOBAL",10)~
== BJahei @2331
== BSANDR @2332
== BJahei @2333
== BSANDR @2334
== BJahei @2335
== BSANDR @2336
== BJahei @2337
== BSANDR @2338
= @2339
== BJahei @2340
EXIT

CHAIN
IF~Global("SanFrJah","LOCALS",1)~THEN  BSANDR SanJAHTut
@2341
DO~SetGlobal("SanFrJah","LOCALS",2)~
== BJahei @2342
== BSANDR @2343
== BJahei @2344
=@2345
== BSANDR @2346
== BJahei @2347
== BSANDR @2348
== BJahei @2349
== BSANDR @2350
EXIT

CHAIN
IF ~Global("SanHealkal","GLOBAL",11)~THEN BSANDR SanKhaIntPeaceG
@2351
DO ~SetGlobal("SanHealkal","GLOBAL",12) ~
== BKhali @2352
== BSANDR @2353
== BKhali @2354
== BSANDR @2355
== BJahei @2356
== BSANDR @2357DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT

CHAIN
IF ~Global("SanHealkal","GLOBAL",13)~THEN BSANDR SanKhaIntPeaceR
@2358
DO ~SetGlobal("SanHealkal","GLOBAL",14) ~
== BKhali @2359
== BSANDR @2360
== BKhali @2361
== BJahei @2362
== BKhali @2363
== BJahei @2364
EXIT

// Viconia on Male PC

CHAIN
IF ~
Global("VicBant1","GLOBAL",1)
 ~THEN BSANDR VicBant1
@2365
DO ~SetGlobal("VicBant1","GLOBAL",2) RealSetGlobalTimer("VicBantT","GLOBAL",1200)~
== BVicon @2366
== BSANDR @2367
== BVicon @2368
== BSANDR @2369
== BVicon @2370
== BSANDR @2371
== BVicon @2372EXIT

// Viconia on Female PC
CHAIN
IF ~
Global("VicBant2","GLOBAL",1)
 ~THEN BSANDR VicBant2
@2365
DO ~SetGlobal("VicBant2","GLOBAL",2) RealSetGlobalTimer("VicBantT","GLOBAL",1200)~
== BVicon @2373
== BSANDR @2374
== BVicon @2375
== BSANDR @2376
== BVicon @2377
== BSANDR @2378
== BVicon @2379
= @2380EXIT

// Viconia's Piece
CHAIN
IF ~
Global("VicBant3","GLOBAL",1)
 ~THEN BSANDR VicBant3
 @2381
DO ~SetGlobal("VicBant3","GLOBAL",2) GiveItemCreate("Sanwi1","CVSandr",0,0,0) AddJournalEntry(@60148,QUEST) RealSetGlobalTimer("VicBantT","GLOBAL",1200)~
== BVicon @2382
== BSANDR @2383
== BVicon @2384
= @2385
= @2386
== BSANDR @2387
== BVicon @2388
== BSANDR @2389
== BVicon @2390
== BSANDR @2391
== BVicon @2392
== BSANDR @2393
== BVicon @2394
EXIT

CHAIN
IF ~Global("VicBant3","GLOBAL",3)~ THEN BSANDR VicBant4
@2395
DO ~SetGlobal("VicBant3","GLOBAL",4)RealSetGlobalTimer("VicBantT","GLOBAL",ONE_DAY)~
== BVicon @2396
== BSANDR @2397
== BVicon @2398
= @2399
== BSANDR @2400
= @2401
== BVicon @2402
== BSANDR @2403
== BVicon @2404
== BSANDR @2405
== BVicon @2406
== BSANDR @2407
== BVicon @2408
== BSANDR @2409
== BVicon @2410
== BSANDR @928
EXIT

CHAIN
IF  ~Global("VicBant3","GLOBAL",5)~THEN BSANDR VicBant5
@2411
DO ~SetGlobal("VicBant3","GLOBAL",6)RealSetGlobalTimer("VicBantT","GLOBAL",ONE_DAY) ~
== BVicon @2412
== BSANDR @2413
== BVicon @2414
== BSANDR @2415
== BVicon @2416
== BSANDR @2417
== BVicon @2418
EXIT

CHAIN
IF ~Global("SanDSOTSCUW","GLOBAL",6)~THEN BSANDR VicJarl1
@2419
DO ~SetGlobal("SanDSOTSCUW","GLOBAL",7)~
== BVicon @2420
== BSANDR @2421
== BVicon @2422
== BSANDR @2423DO ~AddexperienceParty(2100) ~
EXIT

// Two Cleric Lovers at Inn
CHAIN
IF ~Global("SanVicInnLov","LOCALS",1)~THEN BSANDR SanVicInn1
@2424
DO ~SetGlobal("SanVicInnLov","LOCALS",2)~
== BVicon @2425
== BSANDR @2426
== BVicon @2427
END
++ @2428+ SanVicInnNo
IF~Global("SanRompath","GLOBAL",1)~THEN REPLY @2429+ SanVicInnYes
IF~Global("SanRompath","GLOBAL",2)~THEN REPLY @2430+ SanVicInnFem

CHAIN
IF ~~THEN BSANDR SanVicInnNo
@2431
DO ~SetGlobal("SanVicInnLov","LOCALS",4)~
== BVicon @2432
== BSANDR @2433
== BVicon @2434
== BSANDR @2435
== BVicon @2436DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() RestParty() ~
EXIT

CHAIN
IF ~~THEN BSANDR SanVicInnFem
@2437
DO ~SetGlobal("SanVicInnLov","LOCALS",4)~
== BVicon @2438
== BSANDR @2433
== BVicon @2439
== BSANDR @2435
== BVicon @2436DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() RestParty() ~
EXIT

CHAIN
IF ~~THEN BSANDR SanVicInnYes
@2440
== BVicon @2441
== BSANDR @2442
== BVicon @2443
END
++ @2444+ SanVicInnYes2

CHAIN
IF ~~THEN BSANDR SanVicInnYes2
@2445
== BVicon @2446
== BSANDR @2447
== BVicon @2448
== BSANDR @2449
== BVicon @2450
== BSANDR @2451
DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() RestParty() ~
EXIT

CHAIN
IF ~Global("SanVicInnLov","LOCALS",3)~THEN BSANDR SanVicInnYes3
@2452
DO ~SetGlobal("SanVicInnLov","LOCALS",6)~
== BVicon @2453
== BSANDR @2454
== BVicon @2455
= @2456
== BSANDR @2457
EXIT

CHAIN
IF ~Global("SanVicInnLov","LOCALS",5)~THEN BSANDR SanVicInnNo3
@2458
DO ~SetGlobal("SanVicInnLov","LOCALS",6)~
== BVicon @2459
== BSANDR IF ~Global("SanRompath","GLOBAL",1)~THEN@2460
== BSANDR IF ~Global("SanRompath","GLOBAL",2)~THEN@2461
== BVicon @2455
= @2462
== BSANDR @2457
EXIT

CHAIN
IF ~Global("SanVicInnLov","LOCALS",7)~THEN BSANDR SanVicInnD1
@2463
DO ~SetGlobal("SanVicInnLov","LOCALS",8)~
== BVicon @2464
== BSANDR @2465
== BVicon @2466
== BSANDR @2467
== BVicon @2468
END
++ @2469+ SanVicInnD2

CHAIN
IF ~~THEN BSANDR SanVicInnD2
@2470
== BVicon @2471
== BSANDR @2472
DO ~RestParty() ~
EXIT




// Bjornin 1st visit
CHAIN
IF ~
Global("SanHadBjor","GLOBAL",1)~
THEN BSANDR BjorFi
@2473
DO ~SetGlobal("SanHadBjor","GLOBAL",2) ~
== Bjorni @2474
==  BSANDR @2475
== Bjorni @2476
= @2477
==  BSANDR @2478DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~EXIT


// Bjornin 2nd visit
CHAIN
IF ~Global("SanHadBjor","GLOBAL",6)~THEN BSANDR BjorRev
@2479
DO ~SetGlobal("SanHadBjor","GLOBAL",7)~
== Bjorni @2480
== BSANDR @2481
== Bjorni @2482
== BSANDR @2483
== Bjorni @2484
== BSANDR @2485DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~EXIT

//Edwin Warning

CHAIN
IF~Global("Cowscroll","GLOBAL",1)~THEN BSANDR EdwEny
@2486
DO~SetGlobal("Cowscroll","GLOBAL",2)~
== Bedwin_ @2487
== BSANDR @2488
== Bedwin_ @2489
== BSANDR @2490
== Bedwin_ @2491DO ~GiveItemCreate("myscurs","Edwin",0,0,0) UseItem("myscurs","Edwin") ActionOverride("Edwin",ChangeAIScript("BGEDWI2",OVERRIDE))~
EXIT

CHAIN
IF ~Global("Cowscroll","GLOBAL",3)~THEN BSANDR EdwCurs
@2492
DO~SetGlobal("Cowscroll","GLOBAL",4)~
== Bedwin_ @2493
== BSANDR @2494
== Bedwin_ @2495
END
++ @2496DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~+ EdwCurs2
++ @2497+ EdwCurs2

CHAIN
IF ~~THEN BSANDR EdwCurs2
@2498
== Bedwin_ @2499
== BSANDR @2500
END
++ @2501DO~IncrementGlobal("Sanpoints","GLOBAL",1)~+ EdwCurs3
++ @2502+ EdwCurs3

CHAIN
IF ~~THEN BSANDR EdwCurs3
@2503
== Bedwin_ @2504
== BSANDR @2505
=@2506
== Bedwin_ @2507
== BSANDR @2508
END
++ @2509
EXIT

CHAIN
IF ~Global("Cowscroll","GLOBAL",5)~THEN BSANDR SanEdlook
@2510
DO~SetGlobal("Cowscroll","GLOBAL",6)~
== Bedwin_ @2511
== BSANDR @2512
== Bedwin_ @2513
== BSANDR @2514
== Bedwin_ @2515
== BSANDR @2516
== Bedwin_ @2517
== BSANDR @2518
== Bedwin_ @2519 DO~RestParty()~
EXIT

CHAIN
IF ~Global("Cowscroll","GLOBAL",7)~THEN BSANDR SanEdlook
@2520
DO~SetGlobal("Cowscroll","GLOBAL",8) RealSetGlobalTimer("CowscrollT","GLOBAL",1800)~
== Bedwin_ @2521
== BSANDR @2522
== Bedwin_ @2523
== BSANDR @2524
== Bedwin_ @2525
== BSANDR @2526
== Bedwin_ @2527
== BSANDR @2528
EXIT

CHAIN
IF ~Global("Cowscroll","GLOBAL",9)~THEN BSANDR SanEdNoCurse
@2529
DO~SetGlobal("Cowscroll","GLOBAL",10) RealSetGlobalTimer("CowscrollT","GLOBAL",1500) ~
== Bedwin_ @2530
== BSANDR @2531
== Bedwin_ @2532
== BSANDR @2533
== Bedwin_ @2534
== BSANDR @2535
== Bedwin_ @2536
== BSANDR @2537
== Bedwin_ @2538
== BSANDR @2539
== Bedwin_ @2540
EXIT

CHAIN
IF ~Global("SanEdBlushTa","GLOBAL",1)~THEN BSANDR SanEdBlushTaNoDy
@2541
DO~SetGlobal("SanEdBlushTa","GLOBAL",2) SetGlobal("SanEdBlush","GLOBAL",2)RealSetGlobalTimer("CowscrollT","GLOBAL",1500)~
==Bedwin_ @2542
==BSANDR @2543
==Bedwin_ @2544
==BSANDR @2545
EXIT

CHAIN
IF ~Global("SanEdAnts","GLOBAL",1)~THEN BSANDR SanEdInnAnt1
@2546
DO~SetGlobal("SanEdAnts","GLOBAL",2) RealSetGlobalTimer("CowscrollT","GLOBAL",1200)~
== Bedwin_ @2547
END
++ @2548DO~IncrementGlobal("Sanpoints","GLOBAL",1)~+  SanEdInnAnt2
++ @2549+  SanEdInnAnt2
++ @2550DO~IncrementGlobal("Sanpoints","GLOBAL",1)~+  SanEdInnAnt2

CHAIN
IF ~~THEN BSANDR SanEdInnAnt2
@2551
== Bedwin_ @2552 
END
++ @2553EXIT
++ @2554+ SanEdInnAnt3

CHAIN
IF ~~THEN BSANDR SanEdInnAnt3
@2555
== Bedwin_ @2556
== BSANDR @2557
== Bedwin_ @2558
== BSANDR @2559
== Bedwin_ @2560
== BSANDR @2561
== Bedwin_ @2562DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF ~Global("SanEdLoveBoy","LOCALS",1)~THEN BSANDR SanEdBetter
@2563
DO~SetGlobal("SanEdLoveBoy","LOCALS",2) ForceSpell(Player1,CLERIC_HEAL)RealSetGlobalTimer("CowscrollT","GLOBAL",1500)~
== Bedwin_ @2564
== BSANDR @2565
== Bedwin_ @2566
== BSANDR @2567
== Bedwin_ @2568
== BSANDR @2569
== Bedwin_ @2570
= @2571
== BSANDR @2572
== Bedwin_ @2573
EXIT

CHAIN
IF ~Global("SanEdLoveBoy","LOCALS",3) ~THEN BSANDR SanEdAlmDy
@2574
DO~SetGlobal("SanEdLoveBoy","LOCALS",4) RealSetGlobalTimer("CowscrollT","GLOBAL",1500)~
== Bedwin_ @2575
== BSANDR @2576
== Bedwin_ @2577
== BSANDR @2578
== Bedwin_ @2579
== BSANDR @2580
== Bedwin_ @2581DO ~TakeItemReplace("Potn54","potn08","Edwin") ApplyDamage(Myself,16,CRUSHING) ApplySpellRES("CVSLEEP","Edwin") ~
EXIT


CHAIN
IF ~Global("Cowscroll","GLOBAL",11)~THEN BSANDR SanEdRobRag
@2582
DO ~SetGlobal("Cowscroll","GLOBAL",12) RealSetGlobalTimer("CowscrollT","GLOBAL",1800)~
== Bedwin_@2583
== BSANDR@2584
== Bedwin_@2585
== BSANDR@2586
== Bedwin_@2587
== BSANDR@2588
== Bedwin_@2589
== BSANDR@2590
== Bedwin_@2591
EXIT

CHAIN
IF ~Global("Cowscroll","GLOBAL",13)~THEN BSANDR SanEdEndl
@2592
DO ~SetGlobal("Cowscroll","GLOBAL",14) RealSetGlobalTimer("CowscrollT","GLOBAL",1800)~
== Bedwin_@2593
== BSANDR@2594
== Bedwin_@2595
== BSANDR@2596
== Bedwin_@2597
== BSANDR@2598
== Bedwin_@2599
== BSANDR@2600
== Bedwin_@2601
== BSANDR@2602
== Bedwin_@2603
== BSANDR@2604DO ~ ApplySpellRES("CVSLEEP","Edwin") ~
EXIT

CHAIN
IF ~Global("CowElmFear","LOCALS",1)~THEN BSANDR cowMeetElm
@2605
DO ~SetGlobal("CowElmFear","LOCALS",2)~
== Bedwin_@2606
== BSANDR@2607
== Bedwin_@2608
== BSANDR@2609
== Bedwin_@2610
== BSANDR@2611
== Bedwin_@2612
== BSANDR@2613
== Bedwin_@2614
== BSANDR@2615
== Bedwin_ @2616
END
++ @2617+ cowMeetElm2
++ @2618+ cowMeetElm3

CHAIN
IF ~~THEN BSANDR cowMeetElm2
@2619DO~AddexperienceParty(500)~
EXIT

CHAIN
IF ~~THEN BSANDR cowMeetElm3
@2620
DO ~ApplySpellRES("CVChaRed",Player1)~EXIT

CHAIN
IF ~Global("CowElmFear","LOCALS",3)~THEN BSANDR cowMeetElm4
@2621
DO ~SetGlobal("CowElmFear","LOCALS",4)~
== Bedwin_ @2622
== BSANDR@2623
== Bedwin_ @2624
== BSANDR@2625
== Bedwin_ @2626
== BSANDR@2627
== Bedwin_ @2628
== BSANDR@2629
== Bedwin_ @2630
== BSANDR@2631DO ~RestParty()~
EXIT

CHAIN
IF ~Global("Cowscroll","GLOBAL",15)~THEN BSANDR SanEdArmCo
@2632
DO ~SetGlobal("Cowscroll","GLOBAL",16)~
== Bedwin_ @2633
== BSANDR @2634
== Bedwin_ @2635
== BSANDR@2636
== Bedwin_@2637
== BSANDR@2638
== Bedwin_@2639
== BSANDR@2640
== Bedwin_ @2641
== BSANDR IF ~GlobalGT("SanBooTlk","GLOBAL",1)~THEN @2642
== BSANDR IF ~GlobalLT("SanBooTlk","GLOBAL",1)~THEN @2643
== Bedwin_ IF ~GlobalGT("SanBooTlk","GLOBAL",1)~THEN  @2644
== Bedwin_ IF ~GlobalLT("SanBooTlk","GLOBAL",1)~THEN @2645
== BSANDR @2646
== Bedwin_ @1713
EXIT

CHAIN
IF ~Global("Cowscroll","GLOBAL",17)~THEN BSANDR SanEdCoomAsp
@1793
DO ~SetGlobal("Cowscroll","GLOBAL",18) RealSetGlobalTimer("CowscrollT","GLOBAL",1800)~
== Bedwin_@2647
== BSANDR@2648
== Bedwin_@2649
== BSANDR@2650
== Bedwin_@2651
== BSANDR@2652
= @2653
= @2654
= @2655
=@2656
=@2657
= @2658
=@2659
=@2660
=@2661
= @2662
=@2663
== Bedwin_@2664
== BSANDR@2665
== Bedwin_@2666DO~RestParty()~
EXIT

CHAIN
IF ~Global("Cowscroll","GLOBAL",19)~THEN BSANDR SanEdPenny
@2667
DO~SetGlobal("Cowscroll","GLOBAL",20)RealSetGlobalTimer("CowscrollT","GLOBAL",1800)~
== Bedwin_@2668
== BSANDR@2669
== Bedwin_@2629
== BSANDR@2670
== Bedwin_@2671
== BSANDR@2672
== Bedwin_@2673
== BSANDR@2674
== Bedwin_@2675
== BSANDR@2676
== Bedwin_@2677
== BSANDR@2678
== Bedwin_@2679
== BSANDR@2680
== Bedwin_@2681
== BSANDR@2682
EXIT

CHAIN
IF~Global("SanEdWizCandlAtt","LOCALS",1) ~THEN BSANDR CandlwizRed
@2683
DO ~SetGlobal("SanEdWizCandlAtt","LOCALS",2) ~
== Bedwin_@2684
== BSANDR@2685
== Bedwin_@2686
== BSANDR@2687
== Bedwin_@2688
== BSANDR@2689
EXIT

CHAIN
IF~Global("SanEdCyr","LOCALS",1)~THEN BSANDR SanEdCyrR
@2690
DO~SetGlobal("SanEdCyr","LOCALS",2)~
== Bedwin_@2691
== BSANDR@2692
== Bedwin_@2693
== BSANDR@2694
== Bedwin_@2695
== BSANDR@2696
== Bedwin_@2697
== BSANDR@2698
== Bedwin_@2699
== BSANDR@2700
EXIT

CHAIN
IF ~Global("sanredatt","GLOBAL",3)~THEN BSANDR SanEdEastWood
@2701
DO~SetGlobal("sanredatt","GLOBAL",4)~
== Bedwin_@2702
== BSANDR@2703
== Bedwin_@2704
== BSANDR@2705
== Bedwin_@2706EXIT

// Branwen Joined

CHAIN
IF ~Global("SanBranSearch","GLOBAL",4) Global("SanBranJoined","GLOBAL",1) ~THEN BSANDR SanbranThx
@2707
DO ~SetGlobal("SanBranJoined","GLOBAL",2)~
==BBRANW @2708
== BSANDR @2709
==BBRANW @2710
== BSANDR @2711
==BBRANW @2712
EXIT


CHAIN
IF ~Global("SanBranSearch","GLOBAL",3) Global("SanBranJoined","GLOBAL",1)Global("SanRomPath","GLOBAL",2) ~THEN BSANDR SanbranRepl1
@2707
DO ~SetGlobal("SanBranJoined","GLOBAL",2) SetGlobal("SanPidPack","GLOBAL",36)~
==BBRANW @2708
== BSANDR @2709
==BBRANW @2710
== BSANDR @2711
==BBRANW @2712
== BSANDR @2713
==BBRANW @2714
== BSANDR @2715
==BBRANW @2716
= @2717
== BSANDR @2718
EXIT

CHAIN
IF ~Global("SanBranSearch","GLOBAL",3) Global("SanBranJoined","GLOBAL",1)Global("SanRomPath","GLOBAL",1) ~THEN BSANDR SanbranRepl2
@2707
DO ~SetGlobal("SanBranJoined","GLOBAL",2) SetGlobal("SanPidPack","GLOBAL",36) RealSetGlobalTimer("SanBranReplTime","GLOBAL",ONE_DAY)~
==BBRANW @2708
== BSANDR @2709
==BBRANW @2710
== BSANDR @2711
==BBRANW @2712
== BSANDR @2713
==BBRANW @2714
== BSANDR @2719
==BBRANW @2717
== BSANDR @2720
EXIT

CHAIN
IF ~Global("SanBranTRInv","LOCALS",1)~THEN BSANDR SanBranTRInvq
@2721
DO ~SetGlobal("SanBranTRInv","LOCALS",2)~
==BBRANW @2722
== BSANDR @2723
= @2724
==BBRANW @2725
= @2726
== BSANDR @2727
==BBRANW @2728
EXIT

CHAIN
IF ~Global("SanBranFrT","GLOBAL",1) ~THEN BSANDR SanbranBant1
@2729
DO~SetGlobal("SanBranFrT","GLOBAL",2) RealSetGlobalTimer("SanBranFrTTT","LOCALS",300) ~
==BBRANW @2730
== BSANDR @2731
==BBRANW @2732
== BSANDR @2733
==BBRANW @2734
== BSANDR @2735
==BBRANW @2736
== BSANDR @2737
==BBRANW @2738
== BSANDR @2739
==BBRANW @2740
EXIT

CHAIN
IF ~Global("SanBranFrT","GLOBAL",3)~THEN BSANDR SanbranBant2
@2741
DO ~SetGlobal("SanBranFrT","GLOBAL",4)~
==BBRANW @2742
== BSANDR @2743
==BBRANW @2744
==BSANDR @2745
==BBRANW @2746
==BSANDR @2747
=@2748
==BBRANW @2749
=@2750
==BSANDR @2751
==BBRANW @2752
==BSANDR @2753
EXIT

CHAIN
IF ~Global("SanBranFrT","GLOBAL",5)~THEN BSANDR SanbranBant3
@2754
DO ~SetGlobal("SanBranFrT","GLOBAL",6)~
==BBRANW @2755
==BSANDR @2756
==BBRANW @2757
==BSANDR @2758
==BBRANW @2759
==BSANDR @2760
==BBRANW @2761
EXIT

CHAIN
IF ~Global("SanBrandoT","GLOBAL",2)~THEN BSANDR SanbranBant4
@2762
DO ~SetGlobal("SanBrandoT","GLOBAL",3) RealSetGlobalTimer("SanBranFrTTT","LOCALS",480)~
==BBRANW @2763
= @2764
==BSANDR @2765
==BBRANW @2766
==BSANDR @2767
==BBRANW @2768
==BSANDR @2769
==BBRANW @2770
==BSANDR @2771
==BBRANW @2772
==BSANDR @2773
==BBRANW @2774
EXIT

CHAIN
IF ~Global("SanBranKilT","GLOBAL",1)~THEN BSANDR SanBranKiltec
@2775
DO ~SetGlobal("SanBranKilT","GLOBAL",2)~
==BBRANW @2776
==BSANDR @2777
==BBRANW @2778
==BSANDR @2779
==BBRANW @2780
==BSANDR @2781
==BBRANW @2782
==BSANDR @2783
DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT

CHAIN
IF ~Global("SanBranDzt","GLOBAL",1)~THEN BSANDR SanbranDrzt
@2784
DO ~SetGlobal("SanBranDzt","GLOBAL",2) SetGlobal("SansharDzt","GLOBAL",2)~
==BBRANW @2785
==BSANDR @2786
==BBRANW @2787
==BSANDR @2788
==BBRANW @2789
==BSANDR @2790
==BBRANW @2791
==BSANDR @2792
EXIT

CHAIN
IF~Global("SansharDzt","GLOBAL",1)~THEN BSANDR SansharDrzt
@2784
DO ~SetGlobal("SansharDzt","GLOBAL",2)SetGlobal("SanBranDzt","GLOBAL",2) ~
==BSHART @2785
==BSANDR @2786
==BSHART @2787
==BSANDR @2793
==BSHART @2789
==BSANDR @2794
==BSHART @2795
==BSANDR @2792
EXIT

CHAIN
IF ~Global("SanBranTrzg","GLOBAL",1)~THEN BSANDR SanbranDrzt
@2796
DO ~SetGlobal("SanBranTrzg","GLOBAL",2)~
==BBRANW @2797
==BSANDR @2798
==BBRANW @2799
==BSANDR @2800
==BBRANW @2801
==BSANDR @2802
EXIT

CHAIN
IF~Global("SanBranTrzg","GLOBAL",3)~THEN BSANDR SanBranTiny
@2803
DO ~SetGlobal("SanBranTrzg","GLOBAL",4)~
==BBRANW @2804
==BSANDR @2805
==BBRANW @2806
==BSANDR @2807
==BBRANW @2808
==BSANDR @2809
==BBRANW @2810
EXIT

CHAIN
IF ~Global("SanBranDetLove","GLOBAL",2) ~THEN BSANDR SanBranOpen
@2811
DO~SetGlobal("SanBranDetLove","GLOBAL",3)~
==BBRANW IF~Global("P#BranMatch","GLOBAL",1)~THEN@2812
==BBRANW IF~Global("P#BranMatch","GLOBAL",0)~THEN@2813
==BSANDR@2814
==BBRANW@2815
==BSANDR@2816
==BBRANW@2817
==BSANDR@2818
==BBRANW@2819
==BSANDR IF~Global("P#BranMatch","GLOBAL",1)~THEN@2820
==BSANDR IF~Global("P#BranMatch","GLOBAL",0)~THEN@2821DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT

CHAIN
IF ~Global("SanBranOV","LOCALS",2)~THEN BSANDR  SanBranOV1
@2822
DO ~SetGlobal("SanBranOV","LOCALS",3) SetGlobal("SanBranDec","GLOBAL",4)~
==BBRANW@2823
== BSANDR @2824
==BBRANW@2825
== BSANDR @2826
==BBRANW@2827
== BSANDR @2828
==BBRANW@2829
END
++ @2830+ SanBranOV2

CHAIN
IF ~~THEN BSANDR  SanBranOV2
@2831
==BBRANW@2832
== BSANDR @2833
==BBRANW@2834
END
++ @2835DO~IncrementGlobal("Sanpoints","GLOBAL",3)~+  SanBranOV3
++ @2836DO~IncrementGlobal("Sanpoints","GLOBAL",4)~+  SanBranOV3

CHAIN
IF ~~THEN BSANDR  SanBranOV3
@2837
==BBRANW@2838
DO ~SetGlobal("P#BranwenRomanceActive","GLOBAL",3) LeaveParty() EscapeArea()~EXIT


 
//Haiass

CHAIN
IF ~Global("HaiassFr","GLOBAL",1) ~THEN BSANDR Haiass1
@2839
DO ~SetGlobal("HaiassFr","GLOBAL",2) RealSetGlobalTimer("SandrahMorningTalkTime","GLOBAL",600)~
== HAIASS @2840
== BSANDR @2841
== HAIASS @2842
== BSANDR @2843
END
++@2844EXTERN BSANDR Haiass2

CHAIN
IF ~Global("HaiassPellRom","GLOBAL",3) ~THEN BSANDR Hairab
@2845
DO ~SetGlobal("HaiassPellRom","GLOBAL",4)~
== Pellig @2846
== HAIASS @2847
== BSANDR @2848
END
++ @2849 EXIT
++ @2850DO~IncrementGlobal("Sanpoints","GLOBAL",1)~
EXIT

CHAIN
IF ~Global("HaiassHurt","GLOBAL",1)~THEN  BSANDR Haihurt
@2851
= @2852DO ~SetGlobal("HaiassHurt","GLOBAL",2) ReallyForceSpellRES("CVHealh","Haiass")~
EXIT

CHAIN
IF ~Global("HaiassPellRom","GLOBAL",5) ~THEN BSANDR HaiPelTown
@2853
DO ~SetGlobal("HaiassPellRom","GLOBAL",6)~
== Pellig @2854
== HAIASS @2855
== Pellig @2856
== BSANDR @2857
END
++ @2858+ HaiPelTown1

CHAIN
IF ~~THEN BSANDR HaiPelTown1
@2859
END
++@2860DO~IncrementGlobal("Sanpoints","GLOBAL",2)~EXIT
IF~Global("SanRomPath","Global",1)~THEN REPLY@2861DO~IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
IF~Global("SanRomPath","Global",2)~THEN REPLY@2862DO~IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT

CHAIN
IF ~Global("HaiassPellRom","GLOBAL",7) ~THEN BSANDR HaiPelBath
@2863
DO ~SetGlobal("HaiassPellRom","GLOBAL",8)~
== Pellig @2864
== HAIASS @2865
== Pellig @2866
== HAIASS @2867
== Pellig @2868
END
++ @2869DO~IncrementGlobal("Sanpoints","GLOBAL",1)~+ HaiPelBath2
++ @2870+ HaiPelBath2

CHAIN
IF~~THEN  BSANDR HaiPelBath2
@2871
== HAIASS @2872
== Pellig @2873
EXIT

// Safana BG1

CHAIN
IF ~Global("SanSafaBan","GLOBAL",2) ~THEN BSANDR SanSaf1
@2874
DO ~ SetGlobal("SanSafaBan","GLOBAL",3) RealSetGlobalTimer("SanSafaBanTi","LOCALS",600)~
== BSAFAN@2875
== BSANDR@2876
== BSAFAN@2877
== BSANDR@2878
== BSAFAN@2879
== BSANDR@2880
== BSAFAN@2881
EXIT

CHAIN
IF ~Global("SanSafaBan","GLOBAL",4) ~THEN BSANDR SanSaf4
@2882
DO ~ SetGlobal("SanSafaBan","GLOBAL",5) RealSetGlobalTimer("SanSafaBanTi","LOCALS",600)~
== BSAFAN@2883
=@2884
== BSANDR@2885
== BSAFAN@2886
== BSANDR@2887
== BSAFAN@2888
EXIT

CHAIN
IF ~Global("SanSafaBan","GLOBAL",11) ~THEN BSANDR SanSaf5
@2889
DO ~ SetGlobal("SanSafaBan","GLOBAL",12) RealSetGlobalTimer("SanSafaBanTi","LOCALS",600)~
== BSAFAN@2890
== BSANDR@2891
== BSAFAN@2892
== BSANDR@2893
== BSAFAN@2894
== BSANDR@2895
== BSAFAN@2896
== BSANDR@2897
== BSAFAN@2898
END
++ @2899EXIT
++ @2900EXIT

CHAIN
IF~Global("SanSafaBan","GLOBAL",14)~THEN BSANDR SanSaf14
@2901
DO~SetGlobal("SanSafaBan","GLOBAL",15)~
== BSAFAN@2902
== BSANDR@2903
== BSAFAN@2904
== BSANDR@2905
== BSAFAN@2906
== BSANDR@2907
== BSAFAN@2908
== BSANDR@2909
== BSAFAN@2910
== BSANDR@2911
== BSAFAN@2912
== BSANDR@2913
== BSAFAN@2914DO~RestParty()~EXIT



// Garrick Interludes
CHAIN
IF ~Global("SanGarr1","GLOBAL",1) ~THEN BSANDR SanGarr1
@2915
DO~SetGlobal("SanGarr1","GLOBAL",2)~
== BGARRI @2916
==BSANDR @2917
== BGARRI @2918
=@2919
==BSANDR @2920
== BGARRI @2921
= @2922
==BSANDR @2923
== BGARRI @2924
==BSANDR @2925
== BGARRI @2926
= @2927
EXIT

CHAIN
IF ~Global("SanGarr1","GLOBAL",3) InParty("Garrick")~THEN BSANDR SanGarr3
@2928
DO ~SetGlobal("SanGarr1","GLOBAL",4) ~
== BGARRI @2929
==BSANDR @2930
== BGARRI @2931
==BSANDR @2932
== BGARRI @2933
==BSANDR @2934 DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT

CHAIN
IF ~Global("SanGarr1","GLOBAL",5)InParty("Garrick")~THEN BSANDR SanGarr5
@2935
DO~SetGlobal("SanGarr1","GLOBAL",6) RealSetGlobalTimer("SangarLeDel","LOCALS",300)~
== BGARRI @2936
==BSANDR @2937
== BGARRI @2938
==BSANDR @2939
== BGARRI @2940
==BSANDR @2941
== BGARRI @2942
DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT

CHAIN
IF ~Global("SanGarrN","GLOBAL",1)~THEN BSANDR SanGarrDa
@2943
DO~SetGlobal("SanGarrN","GLOBAL",2) ~
== BGARRI @2944
==BSANDR @2945
== BGARRI @2946
==BSANDR @2947
END
++ @2948+  SanGarrDaSe
++ @2949DO~IncrementGlobal("Sanpoints","GLOBAL",1)~+ SanGarrDaPC

CHAIN
IF~~THEN BSANDR SanGarrDaSe
@2950
== BGARRI @2951DO ~RestParty()~EXIT

CHAIN
IF~~THEN BSANDR SanGarrDaPC
@2952
== BGARRI @2953
==BSANDR @2954DO ~RestParty()~ EXIT

CHAIN
IF ~Global("SanGarQCh","GLOBAL",1)~THEN BSANDR SanGarCh
@2955
DO ~SetGlobal("SanGarQCh","GLOBAL",2)~
== BGARRI @2956
==BSANDR @2957
== BGARRI @2958
==BSANDR @2959
== BGARRI @2960
==BSANDR @2961
EXIT

CHAIN
IF ~Global("SanGarQCh","GLOBAL",3)~THEN BSANDR SanGarCh
@2962
DO ~SetGlobal("SanGarQCh","GLOBAL",4) RealSetGlobalTimer("SangarLeDel","LOCALS",300)~
== BGARRI @2963
==BSANDR @2964
== BGARRI @2965
==BSANDR @2966
DO~StartCutSceneMode()
                SmallWait(4)
                FadeToColor([20.0],0)
		Wait(4)
		FadeFromColor([20.0],0)
                EndCutSceneMode() ~EXIT
                

CHAIN
IF ~Global("SanGarr1","GLOBAL",7)~THEN BSANDR SanGarle
@2967
DO ~SetGlobal("SanGarr1","GLOBAL",8)~
== BGARRI @2968
==BSANDR @2969
== BGARRI @2970
==BSANDR @2971
== BGARRI @2972
==BSANDR @2973
== BGARRI @2974
==BSANDR @2975
== BGARRI @2976
==BSANDR @2977
== BGARRI @2978
==BSANDR @2979
== BGARRI @2980DO~LeaveParty() SetDialog("Garrip") EscapeAreaMove("BG0705",837,783,0)~EXIT
                
CHAIN
IF ~~THEN BSANDR Sanhealgarri
@2981
DO~SetGlobal("SanHealgar","GLOBAL",4)~
== BGARRI @2982
== BSANDR @2983
== BGARRI @2984
== BSANDR @2985
== BGARRI @2986
== BSANDR @2987DO~StartCutSceneMode()
                SmallWait(4)
                FadeToColor([20.0],0)
		Wait(4)
		FadeFromColor([20.0],0)
                EndCutSceneMode() ~EXIT

// Shar-Teel Episodes

CHAIN
IF~Global("SanShartDuel","GLOBAL",2)~THEN BSANDR SanShart0
@2988
DO ~SetGlobal("SanShartDuel","GLOBAL",3)~
== BSHART@2989
== BSANDR @2990
== BSHART@2991
== BSANDR @2992
== BSHART@2993
EXIT

CHAIN
IF~Global("SanShartDuel","GLOBAL",4)~THEN BSANDR SanShartM0
@2988
DO ~SetGlobal("SanShartDuel","GLOBAL",5)~
== BSHART@2994
= @2995
== BSANDR @2996
END
++ @2997+ SanShartM1

CHAIN
IF~~ THEN BSANDR SanShartM1
@2992
== BSHART@2993
EXIT

CHAIN
IF~Global("SanSharInt","GLOBAL",2) ~THEN BSANDR SanShart1
@2998
DO ~SetGlobal("SanSharInt","GLOBAL",3) RealSetGlobalTimer("SanSharIntT","GLOBAL",SANROM_TIMER)~
== BSHART@2999
== BSANDR @3000
== BSHART@3001
== BSANDR@3002
== BSHART@3003
= @3004
== BSANDR@3005
== BSHART@3006
== BSANDR@3007
== BSHART@3008
EXIT

CHAIN
IF~Global("SanSharInt","GLOBAL",4) ~THEN BSANDR SanShart2
@3009
DO ~SetGlobal("SanSharInt","GLOBAL",5) RealSetGlobalTimer("SanSharIntT","GLOBAL",SANROM_TIMER)~
== BSHART@3010
== BSANDR @3011
== BSHART@3012
== BSANDR @3013
== BSHART@3014
== BSANDR @3015
== BSHART@3016
== BSANDR @3017
== BSHART@3018
== BSANDR @3019
== BSHART@3020
== BSANDR @3021
== BSHART@3022
== BSANDR @3023
== BSHART@3024
EXIT

CHAIN
IF ~Global("SanSharInt","GLOBAL",6) ~THEN BSANDR SanShart2m
@3025
DO ~SetGlobal("SanSharInt","GLOBAL",8) RealSetGlobalTimer("SanSharIntT","GLOBAL",SANROM_TIMER)~
== BSHART@3026
== BSANDR @3027
== BSHART@3028
== BSANDR @3029
== BSHART IF ~Global("X#ShartSex","GLOBAL",1)~THEN @3030
== BSHART IF ~!Global("X#ShartSex","GLOBAL",1)~THEN @3031
== BSANDR @3032
== BSHART@3033
== BSANDR IF ~Global("X#ShartSex","GLOBAL",1)~THEN @3034
== BSANDR IF ~!Global("X#ShartSex","GLOBAL",1)~THEN @3035
== BSHART@3036
== BSANDR @3037
== BSHART@3038
== BSANDR @3039
== BSHART@3040
EXIT

CHAIN
IF ~Global("SanSharInt","GLOBAL",7)~THEN BSANDR SanShart2f
@3025
DO ~SetGlobal("SanSharInt","GLOBAL",8) RealSetGlobalTimer("SanSharIntT","GLOBAL",SANROM_TIMER)~
== BSHART@3041
== BSANDR @3042
== BSHART@3043
== BSANDR @3037
== BSHART@3038
== BSANDR @3039
== BSHART@3040
EXIT

CHAIN
IF ~Global("SanSharReDo","GLOBAL",1) ~THEN BSANDR SharRedo
@3044
== BSHART @3045
== BSANDR@3046
== BSHART @3047
== BSANDR@3048
== BSHART @2273
== BSANDR@3049
== BSHART @3050
END
++ @3051DO~IncrementGlobal("Sanpoints","GLOBAL",1)~+ SharRedo2
++ @3052+ SharRedo2
++ @3053+  SharRedo3
++ @3054DO~IncrementGlobal("Sanpoints","GLOBAL",1)~+ SharRedo2

CHAIN
IF ~~THEN BSANDR SharRedo2
@3055
== BSHART @3056
END
IF~GlobalLT("X#SharInterestTalk","GLOBAL",32)~THEN REPLY @3057DO ~SetGlobal("SanSharReDo","GLOBAL",2)
SetGlobal("X#SHARINTEREST","GLOBAL",1)
RealSetGlobalTimer("X#SharInterestTime","GLOBAL",600)~EXIT
IF~GlobalGT("X#SharInterestTalk","GLOBAL",32)~THEN REPLY  @3058DO ~SetGlobal("SanSharReDo","GLOBAL",2)
SetGlobal("X#SHARINTEREST","GLOBAL",2)
RealSetGlobalTimer("X#SharInterestTime","GLOBAL",600)~EXIT

CHAIN
IF ~~THEN BSANDR SharRedo3
@3059
== BSHART @3060
=@3056
END
IF~GlobalLT("X#SharInterestTalk","GLOBAL",32)~THEN REPLY  @3057DO ~SetGlobal("SanSharReDo","GLOBAL",2)
SetGlobal("X#SHARINTEREST","GLOBAL",1)
RealSetGlobalTimer("X#SharInterestTime","GLOBAL",600)~EXIT
IF~GlobalGT("X#SharInterestTalk","GLOBAL",32)~THEN REPLY  @3058DO ~SetGlobal("SanSharReDo","GLOBAL",2)
SetGlobal("X#SHARINTEREST","GLOBAL",2)
RealSetGlobalTimer("X#SharInterestTime","GLOBAL",600)~EXIT

CHAIN
IF ~Global("SanSharInt","GLOBAL",9)~THEN BSANDR SanShart3
@3061
DO ~SetGlobal("SanSharInt","GLOBAL",10) RealSetGlobalTimer("SanSharIntT","GLOBAL",SANROM_TIMER)~
== BSHART@3062
== BSANDR @3063
== BSHART@3064
== BSANDR @3065
== BSHART@3066
== BSANDR @3067
== BSHART@3068
== BSANDR @3069
== BSHART@3070
== BSANDR @3071
== BSHART@3072
== BSANDR @3073
== BSHART@3074
== BSANDR @3075
== BSHART@3076
== BSANDR @3077
== BSHART@3078
EXIT

CHAIN
IF~~THEN BSANDR Sharheal1
@3079
DO ~SetGlobal("SanHealshar","GLOBAL",8)~
== BSHART@3080
==BSANDR @3081
== BSHART@3082
==BSANDR @3083
== BSHART@3084
==BSANDR @3085
== BSHART@3086
EXIT

CHAIN
IF~~THEN BSANDR Sharheal2
@3087
DO ~SetGlobal("SanHealshar","GLOBAL",8)~
== BSHART@3080
==BSANDR @3088
== BSHART@3082
==BSANDR @3083
== BSHART@3084
==BSANDR @3089
== BSHART@3090
EXIT

CHAIN
IF ~Global("SanSharInt","GLOBAL",11)~THEN BSANDR SanShart3
@3091
DO ~SetGlobal("SanSharInt","GLOBAL",12) RealSetGlobalTimer("SanSharIntT","GLOBAL",SANROM_TIMER)~
== BSHART@3092
== BSANDR @3093
== BSHART@3094
== BSANDR @3095
== BSHART@3096DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF ~Global("SanSharInt","GLOBAL",13) ~THEN BSANDR SanShart4
@3097
DO~SetGlobal("SanSharInt","GLOBAL",14)~
== BSHART@3098
== BSANDR @3099
== BSHART@3100
== BSANDR @3101
== BSHART@3102
== BSANDR @3103
== BSHART@3104
== BSANDR @3105
== BSHART@3106
= @3107
== BSANDR @3108
== BSHART @3109
EXIT

CHAIN
IF ~Global("SanSharInt","GLOBAL",15) Global("Sanrompath","Global",1)~THEN BSANDR SanShart6M
@3110
DO ~SetGlobal("SanSharInt","GLOBAL",16)~
==BSHART @3111
==BSANDR @3112
==BSHART @3113
==BSANDR @3114
==BSHART @3115
==BSANDR @3116
==BSHART @3117
==BSANDR @3118
EXIT

CHAIN
IF ~Global("SanSharInt","GLOBAL",15) Global("Sanrompath","Global",2)~THEN BSANDR SanShart6F
@3119
DO ~SetGlobal("SanSharInt","GLOBAL",16)~
==BSHART @3111
==BSANDR @3112
==BSHART @3113
==BSANDR @3114
==BSHART @3115
==BSANDR @3116
==BSHART @3120
EXIT

CHAIN
IF ~Global("SanSharBoth","GLOBAL",1)~THEN BSANDR SanShartBN1
@3121
DO ~SetGlobal("SanSharBoth","GLOBAL",2)~
==BSHART@3122
==BSANDR @3123
==BSHART@3124
==BSANDR @3125
END
++ @3126+ SanShartBN2
++ @3127+ SanShartBN3

CHAIN
IF ~~THEN BSANDR SanShartBN2
@3128
==BSHART @3129
END
++ @3130+ SanShartBN4


CHAIN
IF ~~THEN BSANDR SanShartBN3
@3131
==BSHART @3132
END
++ @3133+SanShartBN4

CHAIN
IF ~~THEN BSANDR SanShartBN4
@3134DO ~RestParty() ~
EXIT

CHAIN
IF ~Global("DimDay","GLOBAL",1)~THEN BSANDR Dimday
@3135
DO~SetGlobal("DimDay","GLOBAL",2) TakePartyGold(50) ~
==BSANDR @3136
= @3137
= @3138
==BSHART @3139DO ~PlaySound("DimDay")  ~
= @3140
= @3141
==BSANDR @3142
==BSHART @3143
==BSANDR @3144
==BSHART @3145
==BSANDR @3146DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF ~Global("DimDay","GLOBAL",4) ~THEN BSANDR CruelTBK
@3147
DO ~SetGlobal("DimDay","GLOBAL",5) ~
==BSHART @3148
= @3149
= @3150
==BSANDR @3151
EXIT

CHAIN
IF ~Global("SharRead1","GLOBAL",1)~THEN BSANDR SanShartbook1
@3152
DO ~SetGlobal("SharRead1","GLOBAL",2) ~
==BSHART@3153
= @3154
==BSANDR @3155
==BSHART@3156
=@3157
END
++ @3158+ SanShartbook2

CHAIN
IF ~~THEN BSANDR SanShartbook2
@3159
==BSHART@3160
END
++@3161+ SanShartbook3

CHAIN
IF ~~THEN BSANDR SanShartbook3
@3162
==BSHART@3163
==BSANDR @3164
==BSHART@3165
==BSANDR @3166
==BSHART@3167
END
++@3168+ SanShartbook4

CHAIN
IF ~~THEN BSANDR SanShartbook4
@3169
==BSHART@3170
= @3171
END
++ @3172
EXIT

CHAIN
IF ~Global("SharRead1","GLOBAL",3)~THEN BSANDR SharReadName
@3173
DO ~SetGlobal("SharRead1","GLOBAL",4)~
== BSHART@3174
== BSANDR @3175
== BSHART@3176
== BSANDR @3177
== BSHART@3178
== BSANDR @3179
== BSHART@3180
== BSANDR @3181
== BSHART@3182
== BSANDR @3183
== BSHART@3184
== BSANDR @3185DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF ~Global("SanSharGoM","LOCALS",1)~THEN BSANDR SanSharGom1
@3186
DO ~SetGlobal("SanSharGoM","LOCALS",2)~
== BSHART@3187
== BSANDR @3188
== BSHART@3189
== BSANDR @3190
== BSHART IF~Global("Sanrompath","Global",1)~THEN@3191
== BSHART IF~Global("Sanrompath","Global",2)~THEN@3192
== BSANDR IF~Global("Sanrompath","Global",1)~THEN@3193
== BSHART IF~Global("Sanrompath","Global",1)~THEN@3194
== BSANDR IF~Global("Sanrompath","Global",2)~THEN@3195
== BSHART IF~Global("Sanrompath","Global",2)~THEN@3196
== BSANDR @3197
== BSHART IF~Global("Sanrompath","Global",1)~THEN@3198
== BSHART IF~Global("Sanrompath","Global",2)~THEN@3199
== BSANDR @3200
== BSHART@3201
== BSANDR @3202
== BSHART@3203
== BSANDR @3204
EXIT

CHAIN
IF ~Global("SanSharInt","GLOBAL",17)~THEN BSANDR SanSharBabe
@3205
DO ~SetGlobal("SanSharInt","GLOBAL",18)~
== BSHART@3206
== BSANDR @3207
== BSHART@3208
== BSANDR @3209
== BSHART@3210
== BSANDR @3211
== BSHART@3212
== BSANDR @3213
== BSHART@3214
== BSANDR @3215
== BSHART@3216
== BSANDR @3217
== BSHART@3218
== BSANDR @3219
END
++ @3220
EXIT

CHAIN
IF ~Global("SanSharTown","GLOBAL",2) ~THEN BSANDR SanSharTown1
@3221
DO ~SetGlobal("SanSharTown","GLOBAL",3)~
== BSHART@3222
== BSANDR @3223
== BSHART@3224
== BSANDR @3225
== BSHART@3226
= @3227
== BSANDR @3228
== BSHART@3229
== BSANDR @3230
EXIT

CHAIN
IF ~~THEN BSANDR SharPregT1
@3231
DO ~SetGlobal("SanSharInt","GLOBAL",21) RealSetGlobalTimer("SanSharIntT","GLOBAL",SANROM_TIMER)~
== BSHART@3232
== BSANDR @3233
== BSHART@3234
== BSANDR @3235
== BSHART@3236
== BSANDR @3237
END
++ @3238+ SharPregT2

CHAIN
IF ~~THEN BSANDR SharPregT2
@3239
== BSHART@3240
== BSANDR @3241
= @3242
END
++ @3243DO~IncrementGlobal("Sanpoints","GLOBAL",3)~+ SharPregT4
++ @3244DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~+ SharPregT3

CHAIN
IF ~~THEN BSANDR SharPregT3
@3245
END
++ @3246+ SharPregT5

CHAIN
IF~~THEN BSANDR SharPregT4
@3247
== BSHART@3248
END
++ @3249+ SharPregT5

CHAIN
IF ~~THEN BSANDR SharPregT5
@3250
== BSHART@3251
== BSANDR @3252
== BSHART@3253
== BSANDR @3254
== BSHART@3255
= @3256
END
++ @3257DO ~ClearAllActions()
SmallWait(2)
SetInterrupt(FALSE)
TextScreen("SharBa")
AddJournalEntry(@60350,QUEST)
~EXIT

CHAIN
IF ~Global("SanSharInt","GLOBAL",22) ~THEN BSANDR SharPregN
@3258
DO ~SetGlobal("SanSharInt","GLOBAL",23) RealSetGlobalTimer("SanSharPreg","GLOBAL",300000)~
== BSHART@3259
== BSANDR @3260
== BSHART@3261
== BSANDR @3262
END
++ @3263+ SharPregN2

CHAIN
IF ~~THEN BSANDR SharPregN2
@3264
== BSHART@3265
END
++ @3266+ SharPregN3

CHAIN
IF ~~THEN BSANDR SharPregN3
@3267
== BSHART@3268
== BSANDR @3269
== BSHART@3270
== BSANDR @3271
== BSHART@3272
== BSANDR @3273
== BSHART@3274
EXIT

CHAIN
IF ~Global("SanSharAngD","LOCALS",1) Global("SanRompath","Global",1)~THEN BSANDR SanSharAngDeadM
@3275
DO ~SetGlobal("SanSharAngD","LOCALS",2) ~
== BSHART @3276
== BSANDR @3277
== BSHART @3278
== BSANDR @3279
== BSHART @3280
== BSANDR @3281
== BSHART @3282
==BSHART @3283
END
++@3284DO~IncrementGlobal("Sanpoints","GLOBAL",3)~EXIT
++@3285DO~IncrementGlobal("Sanpoints","GLOBAL",-6) ~EXIT
++@3286DO~IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT

CHAIN
IF ~Global("SanSharAngD","LOCALS",1) Global("SanRompath","Global",2)~THEN BSANDR SanSharAngDeadF
@3275
DO ~SetGlobal("SanSharAngD","LOCALS",2) ~
== BSHART @3276
== BSANDR @3277
== BSHART @3278
== BSANDR @3279
== BSHART @3280
== BSANDR @3281
== BSHART @3282EXIT

CHAIN
IF ~Global("SanSharInt","GLOBAL",24)~THEN BSANDR SanSharGoWDBaby1
@3287
DO ~SetGlobal("SanSharInt","GLOBAL",25) ~
== BSHART @3288
== BSANDR @3289
== BSHART @3290
== BSANDR @3291
== BSHART @3292DO~ FillSlot(SLOT_ARMOR)~
== BSANDR @3293
END
++ @3294+  SanSharGoWDBaby2

CHAIN
IF ~~THEN BSANDR SanSharGoWDBaby2
@3295
== BSHART @3296
= @3297
END
++@3298+  SanSharGoWDBaby3

CHAIN
IF ~~THEN BSANDR SanSharGoWDBaby3
@3299
== BSHART @3300
== BSANDR @3301
== BSHART @3302
== BSANDR @3303
== BSHART @3304
END
++@3305+  SanSharGoWDBaby4

CHAIN
IF ~~THEN BSANDR SanSharGoWDBaby4
@3299
== BSHART @3306
DO ~SetGlobal("x#sharinterest","Global",3) ActionOverride("Sharteel",LeaveParty())
ActionOverride("Sharteel",MoveBetweenAreas("CVSans",[352.325],12))~
EXIT



// In Elminster's Tower

CHAIN
IF ~Global("Santlove","GLOBAL",2) ~THEN BSANDR SantLove21
@3307
= @3308
DO ~SetGlobal("Santlove","GLOBAL",3) ~
== Bimoen IF~InParty("Imoen2") ~THEN @3309
== BSHART IF~InParty("Sharteel") ~THEN @3310
== BVicon  IF~InParty("Viconia") ~THEN @3311
== BKIVAN  IF~InParty("Kivan") ~THEN @3312
==IF_FILE_EXISTS BSUFINCH  IF~InParty("Sufinch") ~THEN @3313
== BAJANT  IF~InParty("Ajantis") ~THEN @3314
==IF_FILE_EXISTS k-roseB  IF~InParty("k-rose") ~THEN @3315
==IF_FILE_EXISTS ACBreB IF~InParty("ACBre") ~THEN  @3316
==IF_FILE_EXISTS ~B!GAVINJ~IF ~InParty("B!GAVIN")~THEN @3317
== BBRANW  IF~InParty("Branwen") ~THEN @3318
== BXANNN  IF~InParty("Xan") ~THEN @3319
== Bjenli IF~InParty("CVJenlig")~THEN@3320
== IF_FILE_EXISTS BRH#ISRA  IF~InParty("RH#ISRA") ~THEN @3321
== BCORAN  IF~InParty("Coran") ~THEN  @3322
== BDYNAH  IF~InParty("Dynaheir") ~THEN @3323
== BJahei  IF~InParty("Jaheira") ~THEN @3324
== BSANDR @3325DO~
StartCutSceneMode()
                SmallWait(4)
		FadeToColor([30.0],0)
		Wait(2)
		ActionOverride(Player1,LeaveAreaLUA("CVdre2","",[700.950],7))
		ActionOverride(Player2,LeaveAreaLUA("CVdre2","",[700.950],7))
		ActionOverride(Player3,LeaveAreaLUA("CVdre2","",[700.950],7))
		ActionOverride(Player4,LeaveAreaLUA("CVdre2","",[700.950],7))
		ActionOverride(Player5,LeaveAreaLUA("CVdre2","",[700.950],7))
		ActionOverride(Player6,LeaveAreaLUA("CVdre2","",[700.950],7))
		FadeFromColor([30.0],0)
                EndCutSceneMode()~
EXIT


CHAIN
IF ~Global("Santlove","GLOBAL",7) ~THEN BSANDR SantLove71
@3326
DO ~SetGlobal("Santlove","GLOBAL",8) ~
== Bimoen IF~InParty("Imoen2") ~THEN @3327
== BSHART IF~InParty("Sharteel") ~THEN @3328
== BVicon  IF~InParty("Viconia") ~THEN @3329
== BKIVAN  IF~InParty("Kivan") ~THEN @3330
==IF_FILE_EXISTS BSUFINCH  IF~InParty("Sufinch") ~THEN @3331
== BAJANT  IF~InParty("Ajantis") ~THEN @3332
==IF_FILE_EXISTS k-roseB  IF~InParty("k-rose") ~THEN @3333
==IF_FILE_EXISTS ACBreB IF~InParty("ACBre") ~THEN  @3334
==IF_FILE_EXISTS ~B!GAVINJ~IF ~InParty("B!GAVIN")~THEN @3335
== BBRANW  IF~InParty("Branwen") ~THEN @3336
== BXANNN  IF~InParty("Xan") ~THEN @3337
== BCORAN  IF~InParty("Coran") ~THEN  @3338
== BDYNAH  IF~InParty("Dynaheir") ~THEN @3339
==Bedwin_  IF~InParty("Edwin") ~THEN @3340
== IF_FILE_EXISTS BRH#ISRA  IF~InParty("RH#ISRA") ~THEN @3341
== BJahei  IF~InParty("Jaheira") ~THEN @3342
== Bjenli IF~InParty("CVJenlig")~THEN@3343
== BSANDR @3344
EXIT

CHAIN
IF ~Global("SanSuBH","GLOBAL",30)!InParty("Imoen2")~THEN BSANDR BloodyMoney1
@3345
DO ~SetGlobal("SanSuBH","GLOBAL",31)~
END
++ @3346EXIT
++ @3347EXIT

CHAIN
IF ~Global("SanSuBH","GLOBAL",30)InParty("Imoen2") GlobalLT("OrcPrison","GLOBAL",24)~THEN BSANDR BloodyMoney2
@3348
DO ~SetGlobal("SanSuBH","GLOBAL",31)~
== Bimoen@3349
== BSANDR @3350
== Bimoen@3351
== BSANDR @3352
END
++ @3346EXIT
++ @3347DO~IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT

CHAIN
IF ~Global("SanSuBH","GLOBAL",30)InParty("Imoen2") GlobalGT("OrcPrison","GLOBAL",23)~THEN BSANDR BloodyMoney3
@3348
DO ~SetGlobal("SanSuBH","GLOBAL",31)~
== Bimoen@3353
== BSANDR @3354
== Bimoen@3355
== BSHART IF~InParty("Sharteel") ~THEN @3356
== BKIVAN  IF~InParty("Kivan") ~THEN @3357
==IF_FILE_EXISTS BSUFINCH  IF~InParty("Sufinch") ~THEN @3358
== Bedwin_ IF ~InParty("Edwin") ~THEN @3359
== BMinsc_ IF ~InParty("Minsc") ~THEN @3360
== BAJANT  IF~InParty("Ajantis") ~THEN @3361
== BVicon  IF~InParty("Viconia") ~THEN @3362
==Bskie IF~InParty("Skie") ~THEN @3363
==Bjenli IF ~InParty("CVJenlig") ~THEN @3364
==IF_FILE_EXISTS k-roseB  IF~InParty("k-rose") ~THEN @3365
==IF_FILE_EXISTS ACBreB IF~InParty("ACBre") ~THEN  @3366
==IF_FILE_EXISTS ~B!GAVINJ~IF ~InParty("B!GAVIN")~THEN @3367
== IF_FILE_EXISTS BRH#ISRA  IF~InParty("RH#ISRA") ~THEN @3368
== BBRANW  IF~InParty("Branwen") ~THEN @3369
== BXANNN  IF~InParty("Xan") ~THEN @3370
== BCORAN  IF~InParty("Coran") ~THEN  @3371
== BDYNAH  IF~InParty("Dynaheir") ~THEN @3372
== BJahei  IF~InParty("Jaheira") ~THEN @3373
== BSANDR @3352
END
++ @3346EXIT
++ @3347DO~IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT


CHAIN
IF~Global("SanSuBH","GLOBAL",32)~THEN BSANDR ZombStr
@3374
DO ~SetGlobal("SanSuBH","GLOBAL",33)~
== Bimoen IF ~InParty("Imoen2")~THEN@3375
== BSANDR IF ~!InParty("Imoen2")~THEN@3376
== BSHART IF~InParty("Sharteel") ~THEN @3377
== BKIVAN  IF~InParty("Kivan") ~THEN @3378
==IF_FILE_EXISTS BSUFINCH  IF~InParty("Sufinch") ~THEN @3379
== BSANDR IF ~!InParty("Sufinch")~THEN@3380
== BAJANT  IF~InParty("Ajantis") ~THEN @3381
== BVicon  IF~InParty("Viconia") ~THEN @3382
==IF_FILE_EXISTS ACBreB IF~InParty("ACBre") ~THEN  @3383
==IF_FILE_EXISTS ~B!GAVINJ~IF ~InParty("B!GAVIN")~THEN @3384
== Bedwin_  IF~InParty("Edwin") ~THEN @3385
== BBRANW  IF~InParty("Branwen") ~THEN @3386
==Bskie IF~InParty("Skie") ~THEN @3387
==Bjenli IF ~InParty("CVJenlig") ~THEN @3388
== BXANNN  IF~InParty("Xan") ~THEN @3389
== BCORAN  IF~InParty("Coran") ~THEN  @3390
== BDYNAH  IF~InParty("Dynaheir") ~THEN @3391
== BJahei  IF~InParty("Jaheira") ~THEN @3392
== BMinsc_ IF~InParty("Minsc") ~THEN @3393
== BSANDR @3394
END
++ @3395EXIT

// Xvart Secret
CHAIN
IF~Global("SanDruids","cvdru0",2)~THEN BSANDR XvartSecret
@3396
DO~SetGlobal("SanDruids","cvdru0",3) SetGlobal("SanXvartPeace","Global",1)~
== BKIVAN  IF~InParty("Kivan") ~THEN @3397
== BJahei  IF~InParty("Jaheira") ~THEN @3398
== BMinsc_ IF~InParty("Minsc") ~THEN @3399
== Bfaldo IF~InParty("Faldorn") ~THEN @3400
END
++@3401DO~AddexperienceParty(1000)~EXIT

// Dynaheir Quest Talks

CHAIN
IF ~Global("SanDynAftGn","GLOBAL",1)~THEN  BSANDR KickSPT443
@3402
DO ~SetGlobal("SanDynAftGn","GLOBAL",2)~
==BDYNAH @3403
== CVSandrJ @3404
==BDYNAH @3405
== CVSandrJ @3406
= @3407
EXIT

CHAIN
IF ~Global("DYBant","GLOBAL",2) ~THEN BSANDR DyCloth
@3408
DO ~SetGlobal("DYBant","GLOBAL",3) RealSetGlobalTimer("DynBantT","GLOBAL",1600)~
== BDYNAH @3409
== BSANDR @3410
== BDYNAH @3411
== BSANDR @3412
== BDYNAH @3413
== BSANDR @3414
== BDYNAH @3415
== BSANDR @3416
== BDYNAH @3417
== BSANDR @3418
== BDYNAH @3419
EXIT

CHAIN
IF ~Global("DYBant","GLOBAL",4)~THEN BSANDR DyClothGiv
@3420
DO ~SetGlobal("DYBant","GLOBAL",5) SetGlobal("SanNotCloth","GLOBAL",3) RealSetGlobalTimer("DynBantT","GLOBAL",1800)~
== BDYNAH IF ~GlobalLT("Formedcloth","GLOBAL",2)~THEN@3421DO ~GiveItemCreate("Sanwi2","CVSandr",0,0,0)~
== BDYNAH IF ~GlobalGT("Formedcloth","GLOBAL",1)~THEN@3422
== BDYNAH @3423
== BSANDR IF ~GlobalLT("Formedcloth","GLOBAL",2)~THEN@3424
== BSANDR IF ~PartyHasItem("Sanwi3")~THEN@3425
== BSANDR IF ~PartyHasItem("Sanwi1")~THEN@3426
== BSANDR @3427
== BDYNAH  @3428
== BSANDR @3429
== BDYNAH  @3430
== BSANDR @3431
== BDYNAH  @3432
== BSANDR @3433
== BDYNAH  @3434
== BSANDR @3435
== BDYNAH  @3436
EXIT

CHAIN
IF ~Global("DYBant","GLOBAL",6) ~THEN BSANDR SanDyBS1
@3437
DO ~SetGlobal("DYBant","GLOBAL",7) RealSetGlobalTimer("DynBantT","GLOBAL",1800)~
== BDYNAH  @3438
== BSANDR @3439
== BDYNAH  @3440
== BSANDR @3441
== BDYNAH  @3442
== BSANDR IF ~Global("PCKnowsElmDaughter","GLOBAL",1)~THEN @3443
== BSANDR IF ~Global("PCKnowsElmDaughter","GLOBAL",0)~THEN @3444
== BDYNAH  @3445
== BSANDR @3446
== BDYNAH  @3447
== BSANDR IF ~GlobalGT("WinskApp1","GLOBAL",7)~THEN @3448
== BDYNAH IF ~GlobalGT("WinskApp1","GLOBAL",7)~THEN@3449
== BSANDR IF ~!GlobalGT("WinskApp1","GLOBAL",7)~THEN @3450
== BDYNAH IF ~!GlobalGT("WinskApp1","GLOBAL",7)~THEN@3451
EXIT

CHAIN
IF ~Global("DYBant","GLOBAL",8) ~THEN BSANDR SanDyBS1
@3452
DO ~SetGlobal("DYBant","GLOBAL",9) RealSetGlobalTimer("DynBantT","GLOBAL",1800)~
== BDYNAH@3453
== BSANDR @3454
== BDYNAH@3455
== BSANDR @3456
== BDYNAH@3457
== BSANDR @3458
== BDYNAH@3459
== BSANDR @3460
EXIT

CHAIN
IF ~Global("DYBant","GLOBAL",10)~THEN BSANDR SanDycommI
@3461
DO ~SetGlobal("DYBant","GLOBAL",11) RealSetGlobalTimer("DynBantT","GLOBAL",800)~
== BDYNAH@3462
== BSANDR @3463
== BDYNAH@3464
== BSANDR @3465
== BDYNAH@3466
== BSANDR @3467
== BDYNAH@3468
== BSANDR @3469
== BDYNAH@3470
== BSANDR @3471
== BDYNAH@3472
== BSANDR @3473
== BDYNAH@3474
== BSANDR @3475
== BDYNAH@3476
== BSANDR @3477DO~RestParty()~
EXIT

CHAIN
IF ~Global("DYBantF","GLOBAL",10)~THEN BSANDR SanDycommInF
@3461
DO ~SetGlobal("DYBant","GLOBAL",11) SetGlobal("DYBantF","GLOBAL",11) RealSetGlobalTimer("DynBantT","GLOBAL",800)~
== BDYNAH@3462
== BSANDR @3463
== BDYNAH@3478
== BSANDR @3465
== BDYNAH@3466
== BSANDR @3467
== BDYNAH@3472
== BSANDR @3473
== BDYNAH@3474
== BSANDR @3475
== BDYNAH@3476
== BSANDR @3477DO~RestParty()~
EXIT

CHAIN
IF ~Global("DYBant","GLOBAL",12)~THEN BSANDR SanDyRedW
@3479
DO~SetGlobal("DYBant","GLOBAL",13) RealSetGlobalTimer("DynBantT","GLOBAL",1000)~
== BDYNAH@3480
== BSANDR@3481
== BDYNAH@3482
== BSANDR@3483
== BDYNAH @3484
== BSANDR@3485
== BDYNAH@3486
== BSANDR@3487
= @3488
== BDYNAH@3489
== BSANDR@3490
== BDYNAH@3491
== BSANDR@3492
EXIT

CHAIN
IF ~Global("DYBant","GLOBAL",14)~THEN BSANDR SanDyRedW
@3493
DO~SetGlobal("DYBant","GLOBAL",15) RealSetGlobalTimer("DynBantT","GLOBAL",1000)~
== BDYNAH@3494
== BSANDR@3495
== BDYNAH@3496
== BSANDR@3497
== BDYNAH@3498
== BSANDR@3499
== BDYNAH@3500
== BSANDR@3501
== BDYNAH@3502
== BSANDR@3503DO ~RestParty()~
EXIT

CHAIN
IF ~Global("DYBant","GLOBAL",34)~THEN BSANDR SanDyRedWF
@3493
DO~SetGlobal("DYBant","GLOBAL",15) RealSetGlobalTimer("DynBantT","GLOBAL",1000)~
== BDYNAH@3494
= @3504
== BSANDR@3495
== BDYNAH@3496
== BSANDR@3497
== BDYNAH@3505
== BSANDR@3506
== BDYNAH@3500
== BSANDR@3501
== BDYNAH@3502
== BSANDR@3503
EXIT


CHAIN
IF ~Global("DYBant","GLOBAL",16)~THEN BSANDR SanDyLbs
@3507
DO~SetGlobal("DYBant","GLOBAL",17) RealSetGlobalTimer("DynBantT","GLOBAL",800)~
== BDYNAH@3508
== BSANDR @3509
== BDYNAH @3510
== BSANDR @3511
== BDYNAH @3512
== BSANDR @3513
== BDYNAH @3514
== BSANDR @3515
== BDYNAH @3516
EXIT

CHAIN
IF ~Global("DYBant","GLOBAL",18)~THEN BSANDR SanDywinsk
@3517
DO~SetGlobal("DYBant","GLOBAL",19) RealSetGlobalTimer("DynBantT","GLOBAL",1200)~
== BDYNAH @3518
== BSANDR@3519
== BDYNAH @3520
== BSANDR@3521
== BDYNAH @3522
= @3523
== BSANDR @3524
== BDYNAH @3525
== BSANDR @3526
== BDYNAH @3527
== BSANDR @3528
== BDYNAH @3529
EXIT

CHAIN
IF ~Global("DYBant","GLOBAL",48)~THEN BSANDR SanDywinskPast
@3517
DO~SetGlobal("DYBant","GLOBAL",19) RealSetGlobalTimer("DynBantT","GLOBAL",1200)~
== BDYNAH @3518
== BSANDR@3530
== BDYNAH @3531
== BSANDR@3532
== BDYNAH @3533
= @3523
== BSANDR @3524
== BDYNAH @3525
== BSANDR @3534
== BDYNAH @3527
== BSANDR @3535
== BDYNAH @3529
EXIT

CHAIN 
IF ~Global("SanMinDyStat","LOCALS",1)~THEN BSANDR  SanMinDyStat1
@3536
DO ~SetGlobal("SanMinDyStat","LOCALS",2)~
==BMinsc_ @3537
== BDYNAH @3538
== BSANDR @3539
== BDYNAH @3540
=@3541
== BSANDR @3542
== BDYNAH @3543
== BSANDR @3544
== BDYNAH @3545
== BSANDR @3546
== BDYNAH @3547
== BSANDR @3548
== BDYNAH @3549
EXIT

CHAIN
IF ~Global("DYBant","GLOBAL",20)~THEN BSANDR SanDyFightBha
@3550
DO~SetGlobal("DYBant","GLOBAL",21)~
== BDYNAH@3551
== BSANDR @3552
== BDYNAH@3553
== BSANDR @3554
== BDYNAH@3555
== BSANDR @3556
== BDYNAH@3557
== BSANDR @3558
== BDYNAH@3559
== BSANDR @3560
== BDYNAH@3561
== BSANDR @3562
== BDYNAH@3563
== BSANDR @3564
== BDYNAH@3565
EXIT

CHAIN
IF ~Global("DYBant","GLOBAL",35)~THEN BSANDR SanDyFightBhaF
@3550
DO~SetGlobal("DYBant","GLOBAL",21)~
== BDYNAH@3551
== BSANDR @3552
== BDYNAH@3553
== BSANDR @3554
== BDYNAH@3555
== BSANDR @3556
== BDYNAH@3557
== BSANDR @3558
== BDYNAH@3559
== BSANDR @3560
== BDYNAH@3561
== BSANDR @3562
== BDYNAH@3566
== BSANDR @3567
== BDYNAH@3565
EXIT


CHAIN
IF~Global("SanDyWyEd","LOCALS",1)~THEN BSANDR SanDyWyEd
@3568
DO ~SetGlobal("SanDyWyEd","LOCALS",2)~
== BDYNAH@3569
== BSANDR @3570
== BDYNAH@3571
== BSANDR @3572
== BDYNAH@3573
== BSANDR @3574
== BDYNAH@3575
== BSANDR @3576
== BDYNAH@3577
== BSANDR @3578
== BDYNAH@3579
EXIT

CHAIN
IF ~Global("DYBant","GLOBAL",22)~THEN BSANDR SanDyAscens
@3580
DO ~SetGlobal("DYBant","GLOBAL",23) RealSetGlobalTimer("DynBantT","GLOBAL",1200)~
== BDYNAH@3581
== BSANDR @3582
== BDYNAH@3583
== BSANDR @3584
== BDYNAH@3585
== BSANDR @3586
== BDYNAH@3587
== BSANDR @3588
== BDYNAH@3589
== BSANDR @3590
== BDYNAH@3591
== BSANDR @3592
== BDYNAH @3593DO ~ StartCutSceneMode()  SmallWait(4) FadeToColor([20.0],0) Wait(4) FadeFromColor([20.0],0)  EndCutSceneMode() ~EXIT

CHAIN
IF ~Global("SanDyUnTo","LOCALS",1) ~THEN BSANDR SanDyUnTo
@3594
DO~SetGlobal("SanDyUnTo","LOCALS",2)~
== BDYNAH@3595
== BSANDR @3596
== BDYNAH IF ~InParty("Minsc") ~THEN @3597
== BDYNAH IF ~!InParty("Minsc") ~THEN @3598
== BSANDR @3599
== BDYNAH IF ~GlobalLT("DYBant","GLOBAL",23)~THEN @3589
== BDYNAH IF ~GlobalGT("DYBant","GLOBAL",22)~THEN @3600
== BSANDR @3601
== BDYNAH @3602
== BSANDR @3603
== BDYNAH @3604
EXIT

CHAIN
IF ~Global("X#MinscBoo","GLOBAL",4)~THEN BSANDR MinscBooMysPlan
@3605
DO~SetGlobal("X#MinscBoo","GLOBAL",5)~
== BDYNAH @3606
== BSANDR @3607
== BDYNAH  @3608
== BSANDR @3609
== BDYNAH  @3610
== BSANDR @3611
== BDYNAH  @3612
== BSANDR @252
== BDYNAH  @3613
== BSANDR @3614
== BDYNAH@3615DO ~ StartCutSceneMode()  SmallWait(4) FadeToColor([20.0],0) Wait(4) FadeFromColor([20.0],0)  EndCutSceneMode() ~EXIT


// Drizzt
CHAIN
IF WEIGHT #-3~InParty("CVSandr") OR(2) GlobalGT("F_MeetDrizztInBeard","Global",0) Global("DrDuMeetUlg","GLOBAL",1)~THEN Drizzt JoinSan
@3616
==CVSandrJ@3617
==CVJenliJ IF~InParty("CVSandr")InParty("CVJenlig")~THEN@3618
END
++@3619+ JoinSan2
++@3620EXIT

CHAIN
IF~~THEN Drizzt JoinSan2
@3621
DO~JoinParty()~EXIT

CHAIN
IF ~Global("SanDrizzt","GLOBAL",3)~THEN BSANDR SanDriBG1In
@3622
DO ~SetGlobal("SanDrizzt","GLOBAL",4) SetGlobal("SanDrizzt2","GLOBAL",4) RealSetGlobalTimer("SanDrizztInterv","GLOBAL",1600)~
== F_DRIZTJ@3623
== BSANDR@3624
== F_DRIZTJ@3625
EXIT

CHAIN
IF ~Global("SanDrizzt","GLOBAL",5)~THEN BSANDR SanDriBG1Olddays
@3626
DO ~SetGlobal("SanDrizzt","GLOBAL",6) SetGlobal("SanDrizzt2","GLOBAL",6) RealSetGlobalTimer("SanDrizztInterv","GLOBAL",1600)~
== F_DRIZTJ@3627
== BSANDR@3628
== F_DRIZTJ@3629
== BSANDR@3630
== F_DRIZTJ@3631
== BSANDR@3632
== F_DRIZTJ@3633
== BSANDR@3634
== F_DRIZTJ@3635
== BSANDR@3636
EXIT

CHAIN
IF ~Global("SanDrizzt","GLOBAL",7)~THEN BSANDR SanDriMat
@3637
DO ~SetGlobal("SanDrizzt","GLOBAL",8) SetGlobal("SanDrizzt2","GLOBAL",8) RealSetGlobalTimer("SanDrizztInterv","GLOBAL",1600)~
== F_DRIZTJ@3638
== BSANDR@3639
== F_DRIZTJ@3640
== BSANDR@3641
== F_DRIZTJ@3642
== BSANDR@3643
== F_DRIZTJ@3644
== BSANDR@3645
== F_DRIZTJ@3646
== BSANDR@3647
== F_DRIZTJ@3648
== BSANDR@3649
== F_DRIZTJ@3650DO ~ RestParty() ~EXIT

CHAIN
IF ~Global("SanDrizzt","GLOBAL",10)~THEN BSANDR SanDriMid
@3651
DO~SetGlobal("SanDrizzt","GLOBAL",11) SetGlobal("SanDrizzt2","GLOBAL",11) RealSetGlobalTimer("SanDrizztInterv","GLOBAL",1600) ~
== F_DRIZTJ@3652
== BSANDR@3653
== F_DRIZTJ@3654
=@3655
== BSANDR@3656
== F_DRIZTJ@3657
== BSANDR@3658
== F_DRIZTJ@3659
== BSANDR@3660
== F_DRIZTJ@3661DO ~ StartCutSceneMode()  SmallWait(4) FadeToColor([20.0],0) Wait(4) FadeFromColor([20.0],0)  EndCutSceneMode() ~EXIT

CHAIN
IF ~Global("SanDrizzt","GLOBAL",12)~THEN BSANDR SanDriCyr
@3662
DO~SetGlobal("SanDrizzt","GLOBAL",13) SetGlobal("SanDrizzt2","GLOBAL",13) RealSetGlobalTimer("SanDrizztInterv","GLOBAL",1600) ~
== F_DRIZTJ@3663
== BSANDR@3664
== F_DRIZTJ@3665
= @3666
== BSANDR@3667
== F_DRIZTJ@3668
= @3669
== BSANDR@3670
== F_DRIZTJ@3671
== BSANDR@3672
== F_DRIZTJ@3673
== BSANDR@3674EXIT

CHAIN
IF ~Global("SanDriDrowAmb","GLOBAL",1)~THEN BSANDR SAnDrwoAmb
@3675
DO ~SetGlobal("SanDriDrowAmb","GLOBAL",2)~
== F_DRIZTJ@3676
== BSANDR@3677
== F_DRIZTJ@3678
== BSANDR@3679
== F_DRIZTJ@3680
== BSANDR@3681
== BSANDR IF~GlobalGT("SanDSOTSCUW","GLOBAL",10)~THEN@3682
== F_DRIZTJ IF~GlobalGT("SanDSOTSCUW","GLOBAL",10)~THEN@3683
== F_DRIZTJ @3684
== BSANDR@3685
== F_DRIZTJ @3686
END
++ @3687EXIT

CHAIN
IF~Global("SanDrByeBG1","LOCALS",1)~THEN BSANDR SanDriByeBG1
@3688
DO~SetGlobal("SanDrByeBG1","LOCALS",2)~
== F_DRIZTJ @3689
== BSANDR@3690
== F_DRIZTJ @3691
== BSANDR@3692
== F_DRIZTJ @3693
= @3694DO ~LeaveParty() EscapeArea()~EXIT

CHAIN
IF WEIGHT #-3~NumTimesTalkedTo(0)InParty("CVSandr")~THEN F_CATTI rescued
@3695
==F_DRIZTJ IF~InParty("F_Drizzt")~THEN@3696
==CVSandrJ IF~!InParty("F_Drizzt")~THEN@3697
==F_Catti@3698
==CVSandrJ@3699
==F_Catti@3700DO~AddexperienceParty(3500) EscapeArea()~EXIT

CHAIN
IF WEIGHT #-3~NumTimesTalkedTo(0)InParty("CVSandr")~THEN F_Brueno Searchcatti
@3701
==F_DRIZTJ IF~InParty("F_Drizzt")~THEN@3702
==CVSandrJ IF~!InParty("F_Drizzt")~THEN@3703
==F_Brueno@3704DO~AddexperienceParty(3500) EscapeArea()~EXIT

CHAIN
IF WEIGHT #-3~NumTimesTalkedTo(0)InParty("CVSandr")InParty("F_Drizzt")~THEN F_Wulfga Searchcatti2
@3705
==F_DRIZTJ@3706
==F_Wulfga@3707DO~AddexperienceParty(2500) EscapeArea()~EXIT

CHAIN
IF WEIGHT #-3~NumTimesTalkedTo(0)InParty("CVSandr")~THEN F_Regis2 Searchcatti3
@3708DO~AddexperienceParty(900) EscapeArea()~EXIT

//    Imoens Baby Interpretation

CHAIN
IF ~Global("Formedcloth","GLOBAL",8) ~THEN BSANDR ImoWinBabe
@3709
DO ~SetGlobal("Formedcloth","GLOBAL",9)~
== Bimoen IF  ~InParty("Imoen2")~THEN @3710
==BSANDR IF  ~InParty("Imoen2")~THEN @3711
== Bimoen IF  ~InParty("Imoen2")~THEN @3712
==BSANDR IF  ~InParty("Imoen2")~THEN @3713
== Bimoen IF  ~InParty("Imoen2")~THEN @3714
==BSANDR IF  ~InParty("Imoen2")~THEN @3715
== Bimoen IF  ~InParty("Imoen2")~THEN @3716
=@3717
==BSANDR IF  ~InParty("Imoen2")~THEN @3718
END
IF ~Global("SanRomPath","GLOBAL",1)~THEN REPLY @3719EXIT
IF ~Global("SanRomPath","GLOBAL",2)~THEN REPLY @3720EXIT
IF~~THEN REPLY@3721EXIT

CHAIN
IF ~Global("Formedcloth","GLOBAL",23)~THEN BSANDR ImoBhaalSp4
@3722
DO~SetGlobal("Formedcloth","GLOBAL",24)~
== Bimoen @3723
== BSANDR @3724
== Bimoen @3725
== BSANDR @250
== Bimoen @3726
== BSANDR @3727
== Bimoen @3728
END
++ @3729DO~IncrementGlobal("Sanpoints","GLOBAL",1)~+ ImoBhaalSp5
++ @3730+ ImoBhaalSp5

CHAIN
IF ~~THEN BSANDR ImoBhaalSp5
@3731
== Bimoen @3732
== BSANDR @3733
== Bimoen @3734
== BSANDR @3735
== Bimoen @3736
== BSANDR @3737
END
++ @3738+ ImoBhaalSp6

CHAIN
IF ~~THEN BSANDR ImoBhaalSp6
@3739
== Bimoen @3740
== BSANDR @3741
== Bimoen @3742
== BSANDR @3743
== Bimoen @3744
== BSANDR @3745
== Bimoen @3746
== BSANDR @3747
END
++ @3748+ ImoBhaalSp7

CHAIN
IF ~~THEN BSANDR ImoBhaalSp7
@3749
== Bimoen @3750
== BSANDR @3751
== Bimoen @3752
END
++ @3753+ ImoBhaalSp8

CHAIN
IF ~~THEN BSANDR ImoBhaalSp8
@3754
== Bimoen @3755
== BSANDR @3756
END
IF ~GlobalGT("OrcPrison","GLOBAL",8) ~THEN REPLY @3757+ ImoBhaalSp9
IF ~GlobalLT("OrcPrison","GLOBAL",8) ~THEN REPLY @3757+ ImoBhaalSp10

CHAIN
IF ~~THEN BSANDR ImoBhaalSp9
@3758
== Bimoen @3759
== BSANDR @3760
== Bimoen @3761EXIT

CHAIN
IF ~~THEN BSANDR ImoBhaalSp10
@3758
== Bimoen @3762
=@3763EXIT

CHAIN
IF WEIGHT #-12~Global("SanPCIdiot","LOCALS",1) ~THEN Bimoen Idi1
@3764
=@3765
DO~SetGlobal("SanPCIdiot","LOCALS",2) ReputationInc(-1)~EXIT


// Heal Xan

CHAIN
IF ~~THEN  BSANDR SanHealXan
@3766
DO ~SetGlobal("SanHealXan","GLOBAL",6)~
==BXANNN @3767
== BSANDR@3768
= @3769
==BXANNN @3770
== BSANDR@3771
==BXANNN @3772
== BSANDR @3773
EXIT

//Heal Viconia

CHAIN
IF ~~THEN BSANDR SanHealVic
@3774
DO ~SetGlobal("SanHealVic","GLOBAL",6)~
== BVicon @3775
== BSANDR @3776
== BVicon @3777
== BSANDR @3778
== BVicon @3779 EXIT

// Heal Khalid

CHAIN
IF ~~THEN BSANDR SanHealkal
@3780
DO ~SetGlobal("SanHealkal","GLOBAL",6) ~
== BKhali @3781
== BSANDR @3782
== BKhali @3783
== BSANDR @3784
== BKhali @3785
== BSANDR @3786
== BKhali @3787
EXIT

// Bookhunters

CHAIN
IF ~~THEN BSANDR SanHarbmap
@3788
== HARBOR@3789
== BSANDR@3790
== HARBOR@3791
== BSANDR@3792
== HARBOR@3793
== BSANDR@3794
== HARBOR@3795
== BSANDR@3796
== HARBOR@3797
== BSANDR@3798
== HARBOR@3799
== BSANDR@3800
== HARBOR@3801
== BSANDR@3802
== HARBOR@3803
EXIT

// After Sarevok's Dead
CHAIN
IF ~Global("SanEndBG1Plot","GLOBAL",1)~THEN BSANDR SanEndBG1Plot1
@3804
DO~SetGlobal("SanEndBG1Plot","GLOBAL",2)~
END
++  @3805+ SanEndBG1Plot2

CHAIN
IF ~~THEN BSANDR SanEndBG1Plot2
@3806
END
++ @3807 + SanEndBG1Plot3

CHAIN
IF ~~THEN BSANDR SanEndBG1Plot3
@3808
=@3809
== BDYNAH  IF~InParty("Dynaheir") ~THEN @3810
== BSANDR IF~InParty("Dynaheir") ~THEN @3811
== BDYNAH  IF~InParty("Dynaheir") ~THEN @3812
== Bimoen IF~InParty("Imoen2") ~THEN @3813
== BSANDR IF~InParty("Imoen2") ~THEN @3814
== Bimoen IF~InParty("Imoen2") ~THEN @3815
== BSHART IF~InParty("Sharteel") GlobalLT("SanSharInt","GLOBAL",21)~THEN @3816
== BSHART IF~InParty("Sharteel") GlobalGT("SanSharInt","GLOBAL",20)~THEN @3817
== BSANDR IF ~InParty("Sharteel") GlobalGT("SanSharInt","GLOBAL",20)~THEN @3818
== BSHART IF~InParty("Sharteel") GlobalGT("SanSharInt","GLOBAL",20)~THEN @3819
==IF_FILE_EXISTS ~B!GAVINJ~IF ~InParty("B!GAVIN")~THEN @3820
== BSANDR IF ~InParty("B!GAVIN")~THEN @3821
== Bjenli  IF~InParty("CVJenlig") ~THEN @3822
== BVicon  IF~InParty("Viconia") ~THEN @3823
== BKIVAN  IF~InParty("Kivan") ~THEN @3824
==IF_FILE_EXISTS BSUFINCH  IF~InParty("Sufinch") ~THEN @3825
==IF_FILE_EXISTS TamokoJ IF ~InParty("Tamoko")~THEN @3826
== BAJANT  IF~InParty("Ajantis") ~THEN @3827
==IF_FILE_EXISTS ACBreB IF~InParty("ACBre") ~THEN  @3828
== BBRANW  IF~InParty("Branwen") ~THEN @3829
== BXANNN  IF~InParty("Xan") ~THEN @3830
== BCORAN  IF~InParty("Coran") ~THEN  @3831
== BJahei  IF~InParty("Jaheira") ~THEN @3832
EXIT

//OoPah
CHAIN
IF~Global("Oopahfun","BG4900",1)~THEN BSandr OpTeas
@3833
DO~SetGlobal("Oopahfun","BG4900",2)~
END
++@3834DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~EXTERN Gazib 1
++@3835DO~IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT

// Heal Branwen

CHAIN
IF ~~THEN BSANDR BranHealed
@3836
DO ~SetGlobal("SanHealBran","GLOBAL",6)~
== BBRANW @3837
== BSANDR @3838
== BBRANW @3839
== BSANDR @3840
== BBRANW IF ~Global("SanRomPath","GLOBAL",1)~THEN @3841
== BBRANW IF ~!Global("SanRomPath","GLOBAL",1)~THEN @3842
== BSANDR @3843
== BBRANW @3844
== BSANDR @3845
== BBRANW @3846
EXIT

//Heal Safana

CHAIN
IF ~~THEN BSANDR SanHealsaf
@3847
DO ~SetGlobal("SanHealsaf","GLOBAL",4)~
== BSAFAN @3848
== BSANDR @3849
== BSAFAN @3850
== BSANDR @3851
== BSAFAN @3852
== BSANDR @3853
== BSAFAN @3854
== BSANDR @3855
EXIT

//Heal Edwin

CHAIN
IF~~THEN  BSANDR SanHealEde
@3856
DO~SetGlobal("SanHealEde","GLOBAL",6)~
== Bedwin_@3857
== BSANDR@3858
== Bedwin_@3859
== BSANDR@3860
== Bedwin_@3861
EXIT

//Heal Xzar
CHAIN
IF~~THEN BSANDR Sanhealxzar
@3862
==BXzar@3863
== BSANDR@3864
==BXzar@3865
== BSANDR@3866
==BXzar@3867
EXIT

// Heal Coran
CHAIN
IF~~THEN BSANDR Sanhealcor
@3868
DO ~SetGlobal("SanHealcor","GLOBAL",5)~
==BCORAN @3869
== BSANDR@3870
==BCORAN @3871
== BSANDR@3872
==BCORAN @3873
EXIT

// Heal Dynaheir

CHAIN
IF ~~THEN BSANDR Dynaheal
@3874
DO ~SetGlobal("SanHealDyna","GLOBAL",6) RealSetGlobalTimer("SanHealDynaB","LOCALS",1800)~
== BDYNAH @3875
== BSANDR@3876
== BDYNAH @3877
== BSANDR@3878
== BDYNAH @3879
== BSANDR@3880
== BDYNAH @3881
EXIT

// Heal Minsc

CHAIN
IF ~~THEN BSANDR SanHealboo
@3882
DO~SetGlobal("SanHealBoo","GLOBAL",6)~
== BMinsc_@3883
== BSANDR @3884
EXIT

//Heal Eldoth

CHAIN
IF~~THEN BSANDR EldoHealed
@3885
DO~SetGlobal("SanHealeldo","GLOBAL",5) ~
== BELDOT@3886
== BSANDR@3887
EXIT

// Heal DrizztBG1

CHAIN
IF~Global("SanHealDriz","GLOBAL",3) ~THEN BSANDR DrizhealBG1
@3888
DO~SetGlobal("SanHealDriz","GLOBAL",4) RealSetGlobalTimer("SanDrizztInterv","GLOBAL",900) ~
== F_DRIZTJ@3889
== BSANDR@3890
== F_DRIZTJ@3891
== BSANDR @3892
== F_DRIZTJ@3893
== BSANDR @3894
== F_DRIZTJ@3895
== BSANDR @3896
== F_DRIZTJ@3897
== BSANDR @3898
EXIT

//Heal Kivan BG1

CHAIN
IF~~THEN BSANDR SanhealkivSC
@3899
DO ~SetGlobal("SanHealkiv","GLOBAL",5)~
== BKIVAN@3900
== BSANDR@3901
== BKIVAN@3902
== BSANDR@3903
== BKIVAN@3904
== BSANDR@3905
EXIT


//APPENDs

APPEND BERRUN

IF WEIGHT #-999 ~Global("SanImoNashInt","GLOBAL",16) Global("SanHenMis","LOCALS",0) ~THEN BEGIN SanHenMis1
SAY @3906
IF~~THEN REPLY @3907DO ~SetGlobal("SanHenMis","LOCALS",1)~GOTO SanHenMis2
END

IF ~~THEN BEGIN SanHenMis2
SAY @3908
IF~~THEN REPLY @3909GOTO SanHenMis3
IF~~THEN REPLY @3910GOTO SanHenMis3
END

IF ~~THEN BEGIN SanHenMis3
SAY @3911
= @3912
IF~~THEN REPLY@3913GOTO SanHenMis4
END

IF ~~THEN BEGIN SanHenMis4
SAY @3914
IF~!PartyHasItem("MISC85") !PartyHasItem("SCRL2W")~THEN REPLY @3915DO ~SetGlobal("SanImoNashInt","GLOBAL",17) EraseJournalEntry(@60932) AddJournalEntry(@60186,QUEST) ActionOverride("Berrun",EscapeAreaDestroy(90)) ~EXIT
IF~OR(2) PartyHasItem("MISC85") PartyHasItem("SCRL2W")~THEN REPLY @3915DO ~SetGlobal("SanImoNashInt","GLOBAL",17) EraseJournalEntry(@60932) AddJournalEntry(@60186,QUEST)~EXIT
END
END

APPEND DynahJ
IF ~Global("SanNotCloth","GLOBAL",2) ~THEN BEGIN DyCloPC1
SAY @3916
IF~~THEN REPLY @3917DO ~GiveItemCreate("Sanwi2",Player1,0,0,0)~GOTO
DyCloPC2
END

IF~~THEN BEGIN DyCloPC2
SAY @3918
IF~~THEN REPLY @3919DO ~SetGlobal("SanNotCloth","GLOBAL",3)~GOTO DyCloPC3
END

IF~~THEN BEGIN DyCloPC3
SAY @3920
IF~~THEN EXIT
END
END

APPEND BXANNN
IF WEIGHT #-9 ~Global("SanHealXan","GLOBAL",5)~THEN BEGIN SanHealed
SAY @3921
IF~~THEN EXTERN BSANDR SanHealXan
END
END

APPEND Bedwin_
IF WEIGHT #-9 ~Global("SanHealEde","GLOBAL",5)~THEN BEGIN SanHealede
SAY @3922
IF~~THEN EXTERN BSANDR SanHealEde
END
END

APPEND BSAFAN
IF WEIGHT #-9 ~Global("SanHealsaf","GLOBAL",3)~THEN BEGIN SanHealsaf
SAY @3923
IF~~THEN EXTERN BSANDR SanHealsaf
END
END


APPEND BVicon

IF WEIGHT #-9 ~Global("SanHealVic","GLOBAL",5)~THEN BEGIN VicHealed
SAY @3924
IF~~THEN EXTERN BSANDR SanHealVic
END
END

APPEND BKHALI

IF WEIGHT #-9 ~Global("SanHealkal","GLOBAL",5) ~THEN BEGIN Kalhealed
SAY @3925
IF~~THEN EXTERN BSANDR SanHealkal
END
END

APPEND BMinsc_
IF WEIGHT #-9 ~Global("SanHealBoo","GLOBAL",5) ~THEN BEGIN Boohealed
SAY @3926
IF~~THEN EXTERN BSANDR SanHealboo
END
END


APPEND BSHART

IF WEIGHT #-9 ~Global("SanHealshar","GLOBAL",7) ~THEN BEGIN SharhealIF
SAY @3927
IF~~THEN EXTERN BSANDR Sharheal2
END

IF WEIGHT #-9  ~Global("SanHealshar","GLOBAL",6)~THEN BEGIN SharhealNF
SAY @3928
IF~~THEN EXTERN BSANDR Sharheal1 
END
END

APPEND BDYNAH

IF WEIGHT #-9 ~Global("SanHealDyna","GLOBAL",5)~THEN BEGIN SanDyHeal
SAY @3929
IF~~THEN EXTERN BSANDR Dynaheal
END
END


APPEND SHARTJ

IF WEIGHT #-99 ~!Global("endofbg1","GLOBAL",2) Global("X#SharInterestTalk","GLOBAL",38) InParty("CVSandr") ~THEN BEGIN San670
  SAY  @3930
  IF ~~THEN REPLY @3931DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1)
RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)
~GOTO San671
  IF ~~THEN REPLY @3932DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1)
RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)
~GOTO San672
  IF ~~THEN REPLY  @3933 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1)
RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)
~GOTO San672
  IF ~~THEN REPLY  @3934 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) IncrementGlobal("X#SharKind","GLOBAL",2)
RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)
~GOTO San684
  IF ~~THEN REPLY @3935DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1)
RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)
~GOTO San685
END

IF ~~THEN BEGIN San671
  SAY @3936
  IF ~~THEN REPLY @3937 DO ~IncrementGlobal("X#SharKind","GLOBAL",-1)
~EXIT
  IF ~~THEN REPLY @3938 GOTO San672
  IF ~~THEN REPLY @3939 GOTO San685
END

IF ~~THEN BEGIN San672
  SAY  @3940
  IF ~~THEN GOTO San677
  IF ~InParty("viconia")~THEN GOTO San673
  IF ~InParty("eldoth")~THEN GOTO San674
  IF ~InParty("imoen2") ~THEN GOTO San675
  IF ~InParty("kagain") ~THEN GOTO San676
  IF ~!InParty("viconia") !InParty("eldoth") !InParty("imoen2") !InParty("kagain")~THEN GOTO 677
END

IF ~~THEN BEGIN San673
  SAY  @3941
  IF ~~THEN GOTO San677
END

IF ~~THEN BEGIN San674
  SAY  @3942
  IF ~~THEN GOTO San677
END

IF ~~THEN BEGIN San675
  SAY @3943
  IF ~~THEN GOTO San677
END

IF ~~THEN BEGIN San676
  SAY  @3944
  IF ~~THEN GOTO San677
END

IF ~~THEN BEGIN San677
  SAY @3945
  IF ~InParty("imoen2")~THEN REPLY @3946 GOTO San678
  IF ~InParty("imoen2")~THEN REPLY  @3947GOTO San679
  IF ~InParty("viconia")~THEN REPLY @3948 GOTO San680
  IF ~InParty("eldoth")~THEN REPLY  @3949 GOTO San682
   IF ~~THEN REPLY  @3950 GOTO San686
  IF ~~THEN REPLY  @3951 GOTO San688
  END

IF ~~THEN BEGIN San678
  SAY  @3952
  IF ~~THEN REPLY @3953DO ~IncrementGlobal("X#SharKind","GLOBAL",1)
RestParty()
~EXIT
END

IF ~~THEN BEGIN San679
  SAY  @3954
  = @3955
  IF ~~THEN DO ~IncrementGlobal("X#SharKind","GLOBAL",1) RestParty()~EXIT
END

IF ~~THEN BEGIN San680
  SAY  @3956
  IF ~~THEN REPLY @3957DO ~IncrementGlobal("X#SharKind","GLOBAL",2) RestParty() ~EXIT
END

IF ~~THEN BEGIN San682
  SAY  @3958
  IF ~~THEN DO ~IncrementGlobal("X#SharKind","GLOBAL",2)RestParty()~EXIT
END

IF ~~THEN BEGIN San684
  SAY  @3959
  IF ~~THEN DO ~IncrementGlobal("X#SharKind","GLOBAL",3)RestParty()~EXIT
END

IF ~~THEN BEGIN San685
  SAY @3960
  IF ~~THEN GOTO San672
END

IF ~~THEN BEGIN San686
  SAY  @3961
  IF ~~THEN DO ~RestParty() ~EXIT
END


IF ~~THEN BEGIN San688
  SAY  @3962
  IF ~~THEN DO ~IncrementGlobal("X#SharKind","GLOBAL",-1)RestParty()~EXIT
END
END


APPEND SHARTJ
IF WEIGHT #-19 ~Global("SanSharInt","GLOBAL",20) ~THEN BEGIN sharPreg1
SAY @3963
IF~~THEN REPLY @3964GOTO sharPreg2
IF~~THEN REPLY @3965GOTO sharPreg2
IF~~THEN REPLY @3966 GOTO sharPreg3
END

IF ~~THEN BEGIN sharPreg2
SAY @3967
IF ~~THEN REPLY @3968GOTO sharPreg3
END

IF ~~THEN BEGIN sharPreg3
SAY @3969
IF~~THEN REPLY @3970EXTERN BSANDR SharPregT1
END
END

APPEND  BJahei

IF WEIGHT #-9  ~Global("SanHealjah","GLOBAL",3)~THEN BEGIN SanHealJah
SAY @3971
IF~~THEN EXTERN BSANDR SanJAHHea1
END
END


APPEND BYESLI

IF WEIGHT #-9 ~Global("SanHealyesl","GLOBAL",3)~THEN BEGIN SanHealYesl
SAY @3972
IF~~THEN EXTERN BSANDR SanYeslHea1
END

IF WEIGHT #-9 ~Global("SanYeslElmi","GLOBAL",2)~THEN BEGIN SanElmYesl
SAY @3973
IF~~THEN EXTERN BSANDR SanYeslElm
END
END


APPEND BAJANT

IF WEIGHT #-9 ~Global("SanHealAjan","GLOBAL",5)~THEN BEGIN AjanHeal
SAY @3974
IF~~THEN EXTERN BSANDR SanAjanHeal
END


IF WEIGHT #-9 ~Global("SanHelmDogmas","GLOBAL",18)Global("Sanleave","LOCALS",0)~THEN BEGIN SanLeave1
SAY @3975
IF~AreaCheck("BG4801") ~THEN REPLY @3976DO ~ActionOverride("CVSandr",MoveToPoint([661.176])) ~GOTO SanLeave2
IF~AreaCheck("BG2616") ~THEN REPLY @3976DO ~ActionOverride("CVSandr",MoveToPoint([314.319])) ~GOTO SanLeave2
IF~AreaCheck("BG3351") ~THEN REPLY @3976DO ~ActionOverride("CVSandr",MoveToPoint([503.544])) SetGlobal("Sanleave","LOCALS",1)~EXIT
IF~AreaCheck("BG3304") ~THEN REPLY @3976DO ~ActionOverride("CVSandr",MoveToPoint([673.454])) SetGlobal("Sanleave","LOCALS",1)~EXIT
IF~AreaCheck("BG2301") ~THEN REPLY @3976DO ~ActionOverride("CVSandr",MoveToPoint([641.841])) SetGlobal("Sanleave","LOCALS",1)~EXIT
IF~AreaCheck("BG0105") ~THEN REPLY @3976DO ~ActionOverride("CVSandr",MoveToPoint([344.144])) SetGlobal("Sanleave","LOCALS",1)~EXIT
IF~AreaCheck("BG0116") ~THEN REPLY @3976DO ~ActionOverride("CVSandr",MoveToPoint([673.454])) SetGlobal("Sanleave","LOCALS",1)~EXIT
IF~AreaCheck("BG0119") ~THEN REPLY @3976DO ~ActionOverride("CVSandr",MoveToPoint([645.419])) SetGlobal("Sanleave","LOCALS",1)~EXIT
IF~AreaCheck("BG0705") ~THEN REPLY @3976DO ~ActionOverride("CVSandr",MoveToPoint([976.548])) SetGlobal("Sanleave","LOCALS",1)~EXIT
IF~AreaCheck("BG1001") ~THEN REPLY @3976DO ~ActionOverride("CVSandr",MoveToPoint([358.723])) SetGlobal("Sanleave","LOCALS",1)~EXIT
IF~AreaCheck("BG3357") ~THEN REPLY @3976DO ~ActionOverride("CVSandr",MoveToPoint([286.247])) SetGlobal("Sanleave","LOCALS",1)~EXIT
END

IF WEIGHT #-9 ~Global("Sanleave","LOCALS",1) ~THEN BEGIN SanLeave2
SAY @3977
IF~~THEN REPLY@3978GOTO SanLeave3
IF~~THEN REPLY@3979DO~SetGlobal("Sanleave","LOCALS",2)~GOTO SanLeave3
END

IF~~THEN BEGIN SanLeave3
SAY @3980
IF~~THEN REPLY@3981GOTO SanLeave4
IF~~THEN REPLY @3982GOTO SanLeave4
END

IF~~THEN BEGIN SanLeave4
SAY @3983
IF~~THEN REPLY @3984GOTO SanLeave5
IF~~THEN REPLY @3985GOTO SanLeave5
END

IF~~THEN BEGIN SanLeave5
SAY @3986
IF~~THEN REPLY @3987DO ~SetGlobal("SanHelmDogmas","GLOBAL",19)~GOTO SanLeave6
END

IF~~THEN BEGIN SanLeave6
SAY @3988
IF~~THEN DO ~GiveItemCreate("SanAjLet","CVSandr",0,0,0) LeaveParty() EscapeAreaMove("BG4802",561,317,0) RestParty()~EXIT
END
END


APPEND Bimoen
IF WEIGHT #-9 ~Global("SanHealImo","GLOBAL",5)~THEN BEGIN SanHealImo
SAY @3989
IF~~THEN EXTERN BSANDR ImoHealedProf
END
END

APPEND IF_FILE_EXISTS BSUFINCH
IF WEIGHT #-9 ~Global("SanHealfink","GLOBAL",5) ~THEN BEGIN  SanHealfink
SAY @3990
IF~~THEN EXTERN BSANDR FinchHealed
END

IF WEIGHT #-8 ~Global("LeftSan","GLOBAL",2)~THEN BEGIN SanFoundBook
SAY@3991
IF~~THEN EXTERN BSANDR  SanFuWDBook
END
END

APPEND BELDOT
IF WEIGHT #-9 ~Global("SanHealeldo","GLOBAL",4) ~THEN BEGIN  SanHealeldo
SAY @3992
IF~~THEN EXTERN BSANDR EldoHealed
END
END

APPEND BBRANW                                           
IF WEIGHT #-9 ~Global("SanHealBran","GLOBAL",5)~THEN BEGIN Sanbranheal
SAY @3993
IF~~THEN EXTERN BSANDR BranHealed
END
END

APPEND BKIVAN
IF WEIGHT #-9 ~Global("SanHealkiv","GLOBAL",4)~THEN BEGIN SankivSCheal
SAY @3994
IF~~THEN EXTERN BSANDR SanhealkivSC
END
END

APPEND BGARRI
IF WEIGHT #-19 ~Global("SanHealgar","GLOBAL",3)~THEN BEGIN Sangarriheal
SAY @3995
IF~~THEN EXTERN BSANDR Sanhealgarri
END
END

APPEND BCORAN
IF WEIGHT #-9 ~Global("SanHealcor","GLOBAL",4)~THEN BEGIN Sancorheal
SAY @3996
IF~~THEN EXTERN BSANDR Sanhealcor
END
END

APPEND BTIAX
IF WEIGHT #-9 ~Global("SanHealtiax","GLOBAL",4)~THEN BEGIN Santiaxheal
SAY @3997
IF~~THEN EXTERN BSANDR Sanhealtiax
END
END

APPEND BXzar
IF WEIGHT #-9 ~Global("SanHealxzar","GLOBAL",3)~THEN BEGIN Sanxzarheal
SAY @3998
IF~~THEN DO~SetGlobal("SanHealxzar","GLOBAL",4)~EXTERN BSANDR Sanhealxzar
END
END



APPEND HAIASS

IF WEIGHT #-9 ~Global("HaiassJoinSan","GLOBAL",1)~THEN BEGIN HaiSan
SAY@3999
IF~~THEN EXTERN BSANDR HaiassJoinSan
END
END

EXTEND_TOP KELDDA 0 #1
  IF ~Global("PirTresDon","GLOBAL",2)~THEN REPLY @4000GOTO GivePirtres
  END

APPEND KELDDA
IF ~~THEN BEGIN GivePirtres
SAY @4001
IF ~NumItemsParty("CVPirbag",1)~THEN REPLY @4002DO ~TakePartyItemNum("CVPirbag",1) AddexperienceParty(2000) ~EXIT
IF ~NumItemsParty("CVPirbag",2)~THEN REPLY @4002DO ~TakePartyItemNum("CVPirbag",1) AddexperienceParty(2000) ~EXIT
IF ~NumItemsParty("CVPirbag",2)~THEN REPLY @4003DO ~TakePartyItemNum("CVPirbag",2) AddexperienceParty(3000) ~EXIT
IF ~NumItemsParty("CVPirbag",3)~THEN REPLY @4002DO ~TakePartyItemNum("CVPirbag",1) AddexperienceParty(2000) ~EXIT
IF ~NumItemsParty("CVPirbag",3)~THEN REPLY @4003DO ~TakePartyItemNum("CVPirbag",2) AddexperienceParty(3000) ~EXIT
IF ~NumItemsParty("CVPirbag",3)~THEN REPLY @4004DO ~TakePartyItemNum("CVPirbag",3) AddexperienceParty(4000) ~EXIT
IF ~NumItemsParty("CVPirbag",4)~THEN REPLY @4002DO ~TakePartyItemNum("CVPirbag",1) AddexperienceParty(2000) ~EXIT
IF ~NumItemsParty("CVPirbag",4)~THEN REPLY @4003DO ~TakePartyItemNum("CVPirbag",2) AddexperienceParty(2000) ~EXIT
IF ~NumItemsParty("CVPirbag",4)~THEN REPLY @4004DO ~TakePartyItemNum("CVPirbag",3) AddexperienceParty(4000) ~EXIT
IF ~NumItemsParty("CVPirbag",4)~THEN REPLY @4005DO ~TakePartyItemNum("CVPirbag",4) AddexperienceParty(5000) ~EXIT
IF ~NumItemsParty("CVPirbag",5)~THEN REPLY @4002DO ~TakePartyItemNum("CVPirbag",1) AddexperienceParty(2000) ~EXIT
IF ~NumItemsParty("CVPirbag",5)~THEN REPLY @4003DO ~TakePartyItemNum("CVPirbag",2) AddexperienceParty(3000) ~EXIT
IF ~NumItemsParty("CVPirbag",5)~THEN REPLY @4004DO ~TakePartyItemNum("CVPirbag",3) AddexperienceParty(4000) ~EXIT
IF ~NumItemsParty("CVPirbag",5)~THEN REPLY @4005DO ~TakePartyItemNum("CVPirbag",5) AddexperienceParty(5000) ~EXIT
IF ~NumItemsParty("CVPirbag",5)~THEN REPLY @4006DO ~TakePartyItemNum("CVPirbag",5) AddexperienceParty(6000) ~EXIT
IF ~NumItemsParty("CVPirbag",6)~THEN REPLY @4002DO ~TakePartyItemNum("CVPirbag",1) AddexperienceParty(2000) ~EXIT
IF ~NumItemsParty("CVPirbag",6)~THEN REPLY @4003DO ~TakePartyItemNum("CVPirbag",2) AddexperienceParty(3000) ~EXIT
IF ~NumItemsParty("CVPirbag",6)~THEN REPLY @4004DO ~TakePartyItemNum("CVPirbag",3) AddexperienceParty(4000) ~EXIT
IF ~NumItemsParty("CVPirbag",6)~THEN REPLY @4005DO ~TakePartyItemNum("CVPirbag",5) AddexperienceParty(5000) ~EXIT
IF ~NumItemsParty("CVPirbag",6)~THEN REPLY @4006DO ~TakePartyItemNum("CVPirbag",5) AddexperienceParty(6000) ~EXIT
IF ~NumItemsParty("CVPirbag",6)~THEN REPLY @4007DO ~TakePartyItemNum("CVPirbag",6) AddexperienceParty(7000) ~EXIT
IF ~NumItemsParty("CVPirbag",7)~THEN REPLY @4002DO ~TakePartyItemNum("CVPirbag",1) AddexperienceParty(2000) ~EXIT
IF ~NumItemsParty("CVPirbag",7)~THEN REPLY @4003DO ~TakePartyItemNum("CVPirbag",2) AddexperienceParty(3000) ~EXIT
IF ~NumItemsParty("CVPirbag",7)~THEN REPLY @4004DO ~TakePartyItemNum("CVPirbag",3) AddexperienceParty(4000) ~EXIT
IF ~NumItemsParty("CVPirbag",7)~THEN REPLY @4005DO ~TakePartyItemNum("CVPirbag",5) AddexperienceParty(5000) ~EXIT
IF ~NumItemsParty("CVPirbag",7)~THEN REPLY @4006DO ~TakePartyItemNum("CVPirbag",5) AddexperienceParty(6000) ~EXIT
IF ~NumItemsParty("CVPirbag",7)~THEN REPLY @4007DO ~TakePartyItemNum("CVPirbag",6) AddexperienceParty(7000) ~EXIT
END
END

EXTEND_TOP CORANJ 70 #2
IF ~InParty("CVSandr")~THEN REPLY @4008GOTO SanPCCor
END

APPEND CORANJ
IF~~THEN BEGIN  SanPCCor
SAY@4009
IF~~THEN REPLY @4010GOTO 74
END
END

EXTEND_TOP HARBOR 0 #3
IF~GlobalGT("SanSuBH","GLOBAL",11) GlobalLT("SanSuBH","GLOBAL",26) ~THEN REPLY @4011GOTO San22
END

APPEND HARBOR
IF ~~THEN BEGIN San22
SAY @4012
IF ~~THEN EXTERN BSANDR SanHarbmap
END
END

ADD_TRANS_ACTION Drizzt BEGIN 1 END BEGIN 0 1 2 3 4 5 6 7 8 9 END
 ~SetGlobal("SanBranSharDzt","GLOBAL",1)~

