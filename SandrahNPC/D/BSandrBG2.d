APPEND BSANDR

// First Night after Dungeon
IF~Global("SanSleepBG2","GLOBAL",1)~THEN BEGIN SanAnmNig1
SAY @0
IF~~THEN REPLY @1DO ~SetGlobal("SanSleepBG2","GLOBAL",2)~GOTO SanAnmNig2
END

IF~~THEN BEGIN SanAnmNig2
SAY @2
IF~~THEN DO ~
ClearAllActions()
SetInterrupt(FALSE)
TextScreen("BG2Nite")
Wait(2)
SetInterrupt(TRUE)
RestParty()~EXIT
END

// Jon Dreams
IF~Global("SanJonDream","LOCALS",1)~THEN BEGIN Sanjondreams1
SAY @3
IF~~THEN REPLY @4GOTO Sanjondreams2
IF~~THEN REPLY @5GOTO Sanjondreams2
IF~~THEN REPLY @6GOTO Sanjondreams2
END

IF~~THEN BEGIN Sanjondreams2
SAY @7
IF~~THEN REPLY @8 GOTO Sanjondreams3
END

IF~~THEN BEGIN Sanjondreams3
SAY @9
IF~~THEN REPLY @10DO~SetGlobal("SanJonDream","LOCALS",2) RealSetGlobalTimer("SanJonDreamDel","LOCALS",7200) ~GOTO Sanjondreams4
END

IF~~THEN BEGIN Sanjondreams4
SAY @11
IF~~THEN REPLY @12GOTO Sanjondreams5
IF ~~THEN REPLY @13 GOTO Sanjondreams5
END

IF~~THEN BEGIN Sanjondreams5
SAY @14
IF~~THEN REPLY @15EXIT
IF~~THEN REPLY @16EXIT
END

IF ~Global("SanJonDream","LOCALS",3)~ THEN BEGIN Sanjondreams6
SAY @17
IF~~THEN REPLY @18GOTO Sanjondreams7
IF~Global("SanRomPath","GLOBAL",1)~THEN REPLY @19GOTO Sanjondreams7
IF~Global("SanRomPath","GLOBAL",2) ~THEN REPLY @20GOTO Sanjondreams7
END

IF~~THEN BEGIN Sanjondreams7
SAY @21
IF~~THEN REPLY @22DO~SetGlobal("SanJonDream","LOCALS",4)~ GOTO Sanjondreams8
END

IF~~THEN BEGIN Sanjondreams8
SAY @23
IF~~THEN REPLY @24GOTO Sanjondreams9
END

IF~~THEN BEGIN Sanjondreams9
SAY @25
IF~~THEN REPLY @26GOTO Sanjondreams10
END

IF~~THEN BEGIN Sanjondreams10
SAY @27
IF~~THEN EXIT
END

//Oghma Tempel
IF~Global("SanTempOghmAmn","LOCALS",1)~THEN BEGIN SanAmTempl1
SAY@28
IF~~THEN REPLY@29GOTO SanAmTempl2
IF~~THEN REPLY@30GOTO SanAmTempl3
END

IF~~THEN BEGIN  SanAmTempl2
SAY@31
IF~~THEN REPLY@32GOTO SanAmTempl4
END

IF ~~THEN BEGIN  SanAmTempl3
SAY@33
IF~~THEN REPLY@32GOTO SanAmTempl4
END

IF ~~THEN BEGIN  SanAmTempl4
SAY@34
IF~~THEN REPLY@35DO~SetGlobal("SanTempOghmAmn","LOCALS",2)~GOTO SanAmTempl5
END

IF ~~THEN BEGIN  SanAmTempl5
SAY@36
IF~~THEN REPLY@37EXIT
END

//Alhoon
IF~Global("SanKillAlh","ar0711",1)~THEN BEGIN Sanillthid1
SAY@38
IF~~THEN REPLY@39DO~SetGlobal("SanKillAlh","ar0711",2)~GOTO Sanillthid2
IF~~THEN REPLY@40DO~SetGlobal("SanKillAlh","ar0711",2)~GOTO Sanillthid2
END

IF~~THEN BEGIN Sanillthid2
SAY@41
IF~~THEN REPLY@42GOTO Sanillthid3
END

IF~~THEN BEGIN Sanillthid3
SAY@43
IF~~THEN REPLY@44GOTO Sanillthid4
END

IF~~THEN BEGIN Sanillthid4
SAY@45
IF~~THEN EXIT
END

//Tiax in Spellhold
IF ~Global("SanSHtiax","LOCALS",1)~THEN BEGIN SanSHtxR
SAY@46
IF~~THEN DO~SetGlobal("SanSHtiax","LOCALS",2)~EXIT
END

//Shar-Teel in Anm
IF ~Global("SharInJail","GLOBAL",1)~THEN BEGIN SanSharAmJail1
SAY @47
IF~GlobalLT("SanSharInt","GLOBAL",31)~THEN REPLY @48DO ~SetGlobal("SharInJail","GLOBAL",2)~GOTO SanSharAmJail2
IF~GlobalGT("SanSharInt","GLOBAL",30)~THEN REPLY @48DO ~SetGlobal("SharInJail","GLOBAL",2)~GOTO SanSharAmJail3
END

IF ~~THEN BEGIN SanSharAmJail2
SAY @49
IF~~THEN REPLY @50EXIT
IF~~THEN REPLY @51DO~IncrementGlobal("Sanpoints","GLOBAL",-2)~EXIT
END

IF ~~THEN BEGIN SanSharAmJail3
SAY @52
IF~~THEN REPLY @50EXIT
IF~~THEN REPLY @53DO~IncrementGlobal("Sanpoints","GLOBAL",-2)~EXIT
END

IF ~Global("sharplot","GLOBAL",9)~THEN BEGIN SanSharAmJail5
SAY @54
IF~~THEN REPLY@55DO~SetGlobal("sharplot","GLOBAL",11)~GOTO SanSharAmJail6
END

IF ~Global("sharplot","GLOBAL",10)~THEN BEGIN SanSharAmJail15
SAY @56
IF~~THEN REPLY@57DO~SetGlobal("sharplot","GLOBAL",11)~GOTO SanSharAmJail6
END

IF ~~THEN BEGIN SanSharAmJail6
SAY @58
IF ~~THEN REPLY@59EXIT
END

//Jaheira Departure
IF~Global("SanJahMiss","LOCALS",1)~THEN BEGIN SanJahGoAft1
SAY@60
IF ~~THEN REPLY@61DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~GOTO SanJahGoAft2
IF ~~THEN REPLY@62DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanJahGoAft3
IF ~~THEN REPLY@63GOTO SanJahGoAft4
END

IF~~THEN BEGIN SanJahGoAft2
SAY@64
IF ~~THEN REPLY@63GOTO SanJahGoAft5
END

IF~~THEN BEGIN SanJahGoAft3
SAY@65
IF ~~THEN REPLY@66DO~SetGlobal("SanJahMiss","LOCALS",2)~EXIT
END

IF~~THEN BEGIN SanJahGoAft4
SAY@67
IF ~~THEN REPLY@68DO~SetGlobal("SanJahMiss","LOCALS",2)~EXIT
END

IF~~THEN BEGIN SanJahGoAft5
SAY@69
IF ~~THEN REPLY@68DO~SetGlobal("SanJahMiss","LOCALS",2)~EXIT
END

//Proud of PC
IF~Global("SanPCInfluen","LOCALS",1)~THEN BEGIN SanProudPCdeci1
SAY@70
IF~~THEN REPLY@71GOTO SanProudPCdeci2
IF~~THEN REPLY@72GOTO SanProudPCdeci2
END

IF ~~THEN BEGIN SanProudPCdeci2
SAY @73
IF~~THEN REPLY@74DO ~SetGlobal("SanPCInfluen","LOCALS",2) ~GOTO SanProudPCdeci3
END

IF ~~THEN BEGIN SanProudPCdeci3
SAY @75
IF~~THEN REPLY@76GOTO SanProudPCdeci4
END

IF ~~THEN BEGIN SanProudPCdeci4
SAY @77
IF~~THEN REPLY@78DO~IncrementGlobal("Sanpoints","GLOBAL",2)~EXIT
IF~~THEN REPLY@79DO~IncrementGlobal("Sanpoints","GLOBAL",-25)~EXIT
END

// Travel Parcel
IF~Global("SanCanTravel","GLOBAL",1)~THEN BEGIN TravelParc1
SAY@80
IF~~THEN REPLY@81GOTO TravelParc2
IF~~THEN REPLY@82GOTO TravelParc2
END

IF~~THEN BEGIN TravelParc2
SAY@83
IF~~THEN REPLY@84DO~SetGlobal("SanCanTravel","GLOBAL",2) ~GOTO TravelParc3
END

IF~~THEN BEGIN TravelParc3
SAY@85
=@86
IF~~THEN REPLY@87GOTO TravelParc4
END

IF~~THEN BEGIN TravelParc4
SAY@88
IF~~THEN REPLY@89GOTO TravelParc5
IF~~THEN REPLY@90GOTO TravelParc5
END

IF~~THEN BEGIN TravelParc5
SAY@91
=@92
=@93
IF~~THEN REPLY@94EXIT
END

//Castle Ownwer
IF~Global("SanCasOwn","GLOBAL",8)~THEN BEGIN Darnicasown1
SAY@95
IF~~THEN REPLY@96GOTO Darnicasown2
IF~~THEN REPLY@97GOTO Darnicasown3
END

IF~~THEN BEGIN Darnicasown2
SAY@98
IF~~THEN REPLY@99DO~SetGlobal("SanCasOwn","GLOBAL",9) IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO Darnicasown4
END

IF~~THEN BEGIN Darnicasown3
SAY@100
IF~~THEN REPLY@99DO~SetGlobal("SanCasOwn","GLOBAL",9) IncrementGlobal("Sanpoints","GLOBAL",2) ~GOTO Darnicasown4
END

IF~~THEN BEGIN Darnicasown4
SAY@101
IF~~THEN REPLY@102GOTO Darnicasown5
IF~~THEN REPLY@103GOTO Darnicasown5
END

IF~~THEN BEGIN Darnicasown5
SAY@104
IF~~THEN REPLY@105EXIT
END

//Necromancers
IF~Global("SanNecroHa","LOCALS",1)~THEN BEGIN SanNecrohate1
SAY@106
IF~~THEN REPLY@107GOTO SanNecrohate2
END

IF~~THEN BEGIN SanNecrohate2
SAY @108
=@109
IF~~THEN REPLY @110GOTO SanNecrohate3
IF~~THEN REPLY @111GOTO SanNecrohate3
END

IF~~THEN BEGIN SanNecrohate3
SAY@112
IF~AreaCheck("ar0800")~THEN REPLY@113GOTO SanNecrohate4
IF~~THEN REPLY @114DO ~SetGlobal("SanNecroHa","LOCALS",2)~EXIT
IF~~THEN REPLY @115GOTO SanNecrohate4
END

IF~~THEN BEGIN SanNecrohate4
SAY @116
IF~~THEN REPLY @117DO ~SetGlobal("SanNecroHa","LOCALS",3)~GOTO SanNecrohate5
END

IF~~THEN BEGIN SanNecrohate5
SAY @118
IF~~THEN REPLY@119GOTO SanNecrohate6
IF~~THEN REPLY @120GOTO SanNecrohate6
END

IF~~THEN BEGIN SanNecrohate6
SAY @121
=@122
IF~~THEN REPLY @123GOTO SanNecrohate7
END

IF~~THEN BEGIN SanNecrohate7
SAY @124
=@125
IF~~THEN REPLY @126GOTO SanNecrohate8
END

IF~~THEN BEGIN SanNecrohate8
SAY @127
IF~~THEN REPLY @128EXIT
END

//  The archive
IF~Global("SandragQuestn","cvtml1",1)~THEN BEGIN SanArchDrgQ1
SAY@129
IF~~THEN REPLY@130DO~SetGlobal("SandragQuestn","LOCALS",2)~EXIT
IF~~THEN REPLY@131DO~SetGlobal("SandragQuestn","cvtml1",2)~EXIT
END

// Abyss
IF~Global("SanhellComm","ar2900",1)~THEN BEGIN SanKeepCool1
SAY@132
IF~~THEN REPLY@133GOTO SanKeepCool2
IF~~THEN REPLY@134GOTO SanKeepCool2
END

IF~~THEN BEGIN SanKeepCool2
SAY@135
IF~~THEN REPLY@136GOTO SanKeepCool3
IF~~THEN REPLY@137GOTO SanKeepCool3
END

IF~~THEN BEGIN SanKeepCool3
SAY@138
IF~~THEN REPLY@139DO~SetGlobal("SanhellComm","ar2900",2)~GOTO SanKeepCool4
END

IF~~THEN BEGIN SanKeepCool4
SAY@140
IF~~THEN REPLY@141EXIT
END

//Defeated Jon
IF~Global("SanAfterJon","GLOBAL",2) ~THEN BEGIN SoulBack1
SAY@142
IF~~THEN REPLY@143DO~IncrementGlobal("Sanpoints","GLOBAL",1) SetGlobal("SanAfterJon","GLOBAL",3)~GOTO SoulBack2
IF~~THEN REPLY@144DO~IncrementGlobal("Sanpoints","GLOBAL",2)SetGlobal("SanAfterJon","GLOBAL",3)~GOTO SoulBack2
IF~~THEN REPLY@145DO~IncrementGlobal("Sanpoints","GLOBAL",1)SetGlobal("SanAfterJon","GLOBAL",3)~GOTO SoulBack2
END

IF ~~THEN BEGIN SoulBack2
SAY@146
IF~~THEN REPLY@147GOTO SoulBack3
END

IF ~~THEN BEGIN SoulBack3
SAY@148
IF~GlobalGT("Sanpoints","GLOBAL",120) GlobalGT("SanKhalBlood","GLOBAL",11)~THEN REPLY@149GOTO SoulBack4
IF~GlobalLT("Sanpoints","GLOBAL",121) GlobalGT("SanKhalBlood","GLOBAL",11)~THEN REPLY@149GOTO SoulBack5
IF~GlobalGT("Sanpoints","GLOBAL",120) GlobalLT("SanKhalBlood","GLOBAL",12)~THEN REPLY@149GOTO SoulBack6
IF~GlobalLT("Sanpoints","GLOBAL",121) GlobalLT("SanKhalBlood","GLOBAL",12)~THEN REPLY@149GOTO SoulBack7
END

IF ~~THEN BEGIN SoulBack4
SAY@150
IF~Global("SanHintFactory","Global",35)~THEN EXIT
IF~!Global("SanHintFactory","Global",35)~THEN GOTO SoulBack11
END

IF ~~THEN BEGIN SoulBack5
SAY@151
IF~~THEN REPLY@152GOTO SoulBack8
END

IF ~~THEN BEGIN SoulBack6
SAY@150
=@153
IF~~THEN REPLY@154EXIT
IF~~THEN REPLY@155GOTO SoulBack9
END

IF ~~THEN BEGIN SoulBack7
SAY@156
IF~~THEN REPLY@157GOTO SoulBack10
IF~~THEN REPLY@158GOTO SoulBack9
END

IF ~~THEN BEGIN SoulBack8
SAY@159
IF~~THEN REPLY@160EXIT
IF~~THEN REPLY@161EXIT
IF~~THEN REPLY@162EXIT
END

IF ~~THEN BEGIN SoulBack9
SAY@163
=@164
IF~~THEN REPLY@165DO ~SetGlobal("SandrahOutForToB","GLOBAL",1)~EXIT
END

IF ~~THEN BEGIN SoulBack10
SAY@153
IF~~THEN REPLY@154EXIT
IF~~THEN REPLY@155GOTO SoulBack9
END

IF ~~THEN BEGIN SoulBack11
SAY@166
=@167
IF~~THEN REPLY@168GOTO SoulBack9
IF~~THEN REPLY@169GOTO SoulBack9
IF~~THEN REPLY@170GOTO SoulBack9
END

IF~Global("SanAfterJon","GLOBAL",4)~THEN BEGIN BhaalDream
SAY@171
=@172
IF~~THEN REPLY@173DO~ClearAllActions() StartCutSceneMode() StartCutScene("SanBh01")~EXIT
END

//Cyric
IF~Global("CyrDisg","ar0304",3)~THEN BEGIN CyricGuild1
SAY@174
IF~~THEN REPLY@175GOTO CyricGuild2
IF~~THEN REPLY@176GOTO CyricGuild2
END

IF~~THEN BEGIN CyricGuild2
SAY@177
IF~~THEN REPLY@178DO~SetGlobal("CyrDisg","ar0304",4)~GOTO CyricGuild3
END

IF~~THEN BEGIN CyricGuild3
SAY@179
IF~~THEN REPLY@180EXIT
IF~~THEN REPLY@181EXIT
IF~~THEN REPLY@182EXIT
END

IF~Global("SanKevl","GLOBAL",1)~THEN BEGIN SanKeve1
SAY@183
IF~~THEN REPLY@184GOTO SanKeve2
END

IF~~THEN BEGIN SanKeve2
SAY@185
IF~~THEN REPLY@186GOTO SanKeve3
IF~~THEN REPLY@187GOTO SanKeve3
END

IF~~THEN BEGIN SanKeve3
SAY@188
IF~~THEN REPLY@189GOTO SanKeve4
IF~~THEN REPLY@190GOTO SanKeve4
END

IF~~THEN BEGIN SanKeve4
SAY@191
IF~~THEN REPLY@192DO~SetGlobal("SanKevl","GLOBAL",2)~GOTO SanKeve5
END

IF~~THEN BEGIN SanKeve5
SAY@193
=@194
=@195
IF~~THEN REPLY@196EXIT
IF~~THEN REPLY@197EXIT
END

//Growing Powers
IF~Global("SanFinCult","LOCALS",2)~THEN BEGIN SanGrowPo1
SAY@198
IF~~THEN REPLY@199GOTO SanGrowPo2
IF~~THEN REPLY@200GOTO SanGrowPo3
IF~~THEN REPLY@201GOTO SanGrowPo3
END

IF~~THEN BEGIN SanGrowPo2
SAY@202
IF~~THEN REPLY@203GOTO SanGrowPo3
END

IF~~THEN BEGIN SanGrowPo3
SAY@204
IF~~THEN REPLY@205DO~SetGlobal("SanFinCult","LOCALS",3)~GOTO SanGrowPo4
END

IF~~THEN BEGIN SanGrowPo4
SAY@206
=@207
=@208
IF~~THEN REPLY@209EXIT
IF~~THEN REPLY@210EXIT
IF~~THEN REPLY@211EXIT
END

//Nib Jansen Hints

IF ~Global("KnowStorm","GLOBAL",3)~THEN BEGIN NibHint1
SAY @212
IF~~THEN REPLY @213GOTO NibHint2
IF~~THEN REPLY @214GOTO NibHint2
END

IF ~~THEN BEGIN NibHint2
SAY @215
IF~~THEN REPLY @216DO ~SetGlobal("KnowStorm","GLOBAL",4)~EXIT
END

// Landed in the Stormhorns
IF ~Global("Airjump","LOCALS",3)Global("Nibfly","GLOBAL",2)~THEN BEGIN LandStorm1
SAY @217
IF ~~THEN REPLY @218DO ~SetGlobal("Airjump","LOCALS",4) SetGlobal("Nibfly","GLOBAL",5) SetGlobal("SanBreStorm","ar3520",1)~EXIT
END

IF ~Global("Airjump","LOCALS",3)Global("Nibfly","GLOBAL",3)~THEN BEGIN LandStorm3
SAY @217
IF ~~THEN REPLY @219GOTO LandStorm5
END

IF ~Global("Airjump","LOCALS",3)Global("Nibfly","GLOBAL",4)~THEN BEGIN LandStorm4
SAY @217
IF ~~THEN REPLY @220GOTO LandStorm5
END

IF ~~THEN BEGIN LandStorm5
SAY @221
IF ~~THEN REPLY @222DO ~SetGlobal("Airjump","LOCALS",4) SetGlobal("Nibfly","GLOBAL",5)SetGlobal("SanBreStorm","ar3520",1)~EXIT
END


// Shauhana

IF ~Global("Shamyrkfound","GLOBAL",7) ~THEN BEGIN ShauHer1
SAY@223
IF~~THEN REPLY@224DO ~SetGlobal("Shamyrkfound","GLOBAL",8)~GOTO ShauHer2
END

IF ~~THEN BEGIN ShauHer2
SAY @225
IF~~THEN REPLY@226GOTO ShauHer3
END

IF ~~THEN BEGIN ShauHer3
SAY @227
IF~~THEN REPLY@228GOTO ShauHer4
END

IF ~~THEN BEGIN ShauHer4
SAY @229
= @230
IF~~THEN REPLY@231GOTO ShauHer5
END

IF ~~THEN BEGIN ShauHer5
SAY @232
IF~~THEN REPLY@233GOTO ShauHer6
END

IF ~~THEN BEGIN ShauHer6
SAY @234
IF ~~THEN REPLY@235
EXIT
END

//Shadowtemple
IF~Global("SanArch","ar1402",1)~THEN BEGIN SanArchloss1
SAY@236
IF ~~THEN REPLY@237DO~IncrementGlobal("Sanpoints","GLOBAL",2) SetGlobal("SanArch","ar1402",2) ~GOTO SanArchloss2
IF ~~THEN REPLY@238DO~SetGlobal("SanArch","ar1402",2) ~EXIT
IF ~~THEN REPLY@239DO~IncrementGlobal("Sanpoints","GLOBAL",-2) SetGlobal("SanArch","ar1402",2) ~GOTO SanArchloss3
END

IF~~THEN BEGIN SanArchloss2
SAY@240
IF ~~THEN REPLY@241EXIT
END

IF~~THEN BEGIN SanArchloss3
SAY@242
IF ~~THEN REPLY@241EXIT
END

//Mae Var
IF~Global("CVMaeDidKN","ar0300",1)~THEN BEGIN MaeVarRec1
SAY@243
IF~~THEN REPLY@244GOTO MaeVarRec2
IF~~THEN REPLY@245GOTO MaeVarRec2
END

IF~~THEN BEGIN MaeVarRec2
SAY@246
IF~~THEN REPLY@247GOTO MaeVarRec3
END

IF~~THEN BEGIN MaeVarRec3
SAY@248
IF~~THEN REPLY@249GOTO MaeVarRec4
END

IF~~THEN BEGIN MaeVarRec4
SAY@250
IF~~THEN DO~SetGlobal("CVMaeDidKN","ar0300",2)~EXIT
END

//Amaunator
IF~Global("SanNoNeht","ar0204",1) ~THEN BEGIN SanAmautemp1
SAY@251
IF~~THEN REPLY@252GOTO SanAmautemp2
IF~~THEN REPLY@253GOTO SanAmautemp2
END

IF~~THEN BEGIN SanAmautemp2
SAY@254
IF~~THEN REPLY@255DO~SetGlobal("SanNoNeht","ar0204",2) ~GOTO SanAmautemp3
END

IF~~THEN BEGIN SanAmautemp3
SAY@256
=@257
IF~~THEN REPLY@258EXIT
END

//Underdark
IF~Global("SanNaza","LOCALS",1)~THEN BEGIN sannarz1
SAY@259
IF ~~THEN REPLY@260GOTO sannarz2
IF ~~THEN REPLY@261GOTO sannarz2
END

IF~~THEN BEGIN sannarz2
SAY@262
IF ~~THEN REPLY@263DO~SetGlobal("SanNaza","LOCALS",2)~EXIT
IF ~~THEN REPLY@264DO~TakePartyItem("d0qpliph") DropItem("d0qpliph",[-1.-1]) SetGlobal("SanNaza","LOCALS",2) ~EXIT
END

IF~Global("RE_BjorninSex","GLOBAL",2) ~THEN BEGIN PchadBjorn1
SAY@265
IF~~THEN REPLY@266DO~SetGlobal("RE_BjorninSex","GLOBAL",3)~EXIT
IF~~THEN REPLY@267DO~SetGlobal("RE_BjorninSex","GLOBAL",3)~EXIT
IF~~THEN REPLY@268DO~SetGlobal("RE_BjorninSex","GLOBAL",3)~EXIT
END

IF~Global("SanNitePh","LOCALS",2)~THEN BEGIN SanPhNot1
SAY@269
IF~~THEN REPLY@270GOTO SanPhNot2
IF~~THEN REPLY@271GOTO SanPhNot2
IF~~THEN REPLY@272GOTO SanPhNot2
END

IF~~THEN BEGIN SanPhNot2
SAY@273
IF~Global("SanRomPath","GLOBAL",1)~THEN REPLY@274GOTO SanPhNot4
IF~Global("SanRomPath","GLOBAL",2)~THEN REPLY@274GOTO SanPhNot3
IF~Global("SanRomPath","GLOBAL",2)~THEN REPLY@275 GOTO SanPhNot3
IF~Global("SanRomPath","GLOBAL",1)~THEN REPLY@276 GOTO SanPhNot3
END

IF~~THEN BEGIN SanPhNot3
SAY@277
IF~~THEN DO~SetGlobal("SanNitePh","LOCALS",3)~EXIT
END

IF~~THEN BEGIN SanPhNot4
SAY@278
IF~~THEN DO~SetGlobal("SanNitePh","LOCALS",3)~EXIT
END

IF~Global("SanNitePh","LOCALS",1)~THEN BEGIN SanPhhad1
SAY@279
IF~~THEN REPLY@280GOTO SanPhhad2
IF~~THEN REPLY@281GOTO SanPhhad2
IF~~THEN REPLY @282GOTO SanPhhad2
END

IF~~THEN BEGIN SanPhhad2
SAY@283
IF~~THEN REPLY@284GOTO SanPhhad3
IF~~THEN REPLY@285GOTO SanPhhad5
IF~~THEN REPLY@286GOTO SanPhhad3
END

IF~~THEN BEGIN SanPhhad3
SAY@287
IF~~THEN REPLY@274GOTO SanPhhad4
IF~~THEN REPLY@275DO~SetGlobal("SanNitePh","LOCALS",4)~EXIT
END

IF~~THEN BEGIN SanPhhad4
SAY@288
IF~~THEN DO~SetGlobal("SanNitePh","LOCALS",4)~EXIT
END

IF~~THEN BEGIN SanPhhad5
SAY@289
IF~~THEN REPLY@290DO~SetGlobal("SanNitePh","LOCALS",4)~EXIT
END
END

//===================================================================
//                    CHAINS BELOW
//===================================================================

// Irenicus Dungeon

CHAIN
IF ~Global("SanFurcDungI","LOCALS",1) ~THEN BSANDR SanFurcDungIm
@291
DO~SetGlobal("SanFurcDungI","LOCALS",2)~
==BIMOEN2 @292
EXIT

CHAIN
IF~Global("SawKhalid","AR0603",1)~THEN BSANDR DeKhalReac
@293
DO~SetGlobal("SawKhalid","AR0603",2)~
==BJAHEIR @294
END
++@295+ DeKhalReac2

CHAIN
IF~~THEN BSANDR DeKhalReac2
@296
= @297
==BJAHEIR @298
EXIT

// Imoen Saerileth
CHAIN
IF~Global("SanseaYou","GLOBAL",7)~THEN BSANDR SanSaerImoFri
@299
DO~SetGlobal("SanseaYou","GLOBAL",8)~
==BIMOEN2 @300
== BSANDR@301
==BIMOEN2 @302
== BSANDR@303
==BIMOEN2 @304
== BSANDR@305
==BIMOEN2 @306
== BSANDR@307
==BIMOEN2 @308
== BSANDR@309
==BIMOEN2 @310
== BSANDR@311
==BIMOEN2 @312
EXIT

// Shar-Teel's Baby

CHAIN
IF ~Global("SanSharInt","GLOBAL",32)~THEN BSANDR SanSharbirthGorion1
@313
DO~SetGlobal("SanSharInt","GLOBAL",33)~
== CVshabab@314
END
++@315+ SanSharbirthGorion2

CHAIN
IF ~~THEN BSANDR SanSharbirthGorion2
@316
== CVshabab@317DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() Wait(2)~
EXIT

CHAIN
IF ~Global("SanSharInt","GLOBAL",33)~THEN BSANDR SanSharbirthGorion3
@318
DO~SetGlobal("SanSharInt","GLOBAL",34)~
== CVshabab@319
== BSANDR@320
== Sangori@321
== BSANDR@322
== Sangori@321
END
++ @323+ SanSharbirthGorion4

CHAIN
IF ~~THEN BSANDR SanSharbirthGorion4
@324
== CVshabab@325
== Sangori@321
== CVshabab@326
END
++ @327+SanSharbirthGorion5

CHAIN
IF ~~THEN BSANDR SanSharbirthGorion5
@328
== CVshabab@329
END
++ @330+SanSharbirthGorion6

CHAIN
IF ~~THEN BSANDR SanSharbirthGorion6
@331
== CVshabab@332
== Sangori@321
== CVshabab@333
== BSANDR@334
== CVshabab@335
 DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT

//Viconia in BG2
CHAIN
IF~Global("SanDrowHerV","GLOBAL",1)~THEN BSandr SanQilVic
@336
DO~SetGlobal("SanDrowHerD","GLOBAL",2) SetGlobal("SanDrowHerV","GLOBAL",2) SetGlobal("SanDrowHerY","GLOBAL",2)~
==BVICONI @337
==BSANDR @338
==BVICONI @339
==BSANDR @340
=@341
==BVICONI @342
==BSANDR @343
==BVICONI @344
==BSANDR @345DO~RestParty()~EXIT

//Collector
CHAIN
IF~Global("CVColleEnc","GLOBAL",13)~THEN BSandr CollNightVis
@346
DO~SetGlobal("CVColleEnc","GLOBAL",14)~
==Pellig@347
==BSandr@348
=@349
==Pellig@350
==BSandr@351
==Pellig@352
==BSandr@353
END
++@354+ CollNightVis2
++@355+ CollNightVis2

CHAIN
IF~~THEN BSandr CollNightVis2
@356
=@357
END
++@358+ CollNightVis3
++@359+ CollNightVis3

CHAIN
IF~~THEN BSandr CollNightVis3
@360
END
++@361+ CollNightVis4
++@362+ CollNightVis4

CHAIN 
IF~~THEN BSandr CollNightVis4
@363EXIT

CHAIN
IF ~Global("SanBooPel","GLOBAL",11) ~THEN BSANDR SanBoo17
@364
DO ~SetGlobal("SanBooPel","GLOBAL",2)~
== Pellig @365
== BMinsc @366
== BSANDR @367
== BMinsc @368
== BSANDR @369
== Pellig @370
== BMinsc @371
== BSANDR @372
EXIT

CHAIN
IF ~Global("SanBooTlk","GLOBAL",21) ~THEN BSANDR SanBoo21
@373
DO ~SetGlobal("SanBooTlk","GLOBAL",22)~
== BMinsc @374
== BSANDR @375
== BMinsc @376
== BSANDR @377
== BMinsc @378
== BSANDR @379
== BMinsc @380
== BSANDR @381
== BMinsc @382
== BSANDR @383
== BMinsc @384
== BSANDR @385
== BMinsc @386
EXIT

CHAIN
IF ~Global("SanBooTlk","GLOBAL",23) ~THEN BSANDR SanBoo5
@387
DO ~SetGlobal("SanBooTlk","GLOBAL",24) RealSetGlobalTimer("SanMinskInt","GLOBAL",1200) ~
== BMinsc @388
== BSANDR @389
== BMinsc @390
== BSANDR @391
== BMinsc @392
== BSANDR @393
== BMinsc IF~!InParty("CVShau")~THEN@394
== BMinsc IF~InParty("CVShau")~THEN@395
== BSANDR @396 DO ~ForceSpell("Minsc",CLERIC_HEAL)~
EXIT

CHAIN
IF ~Global("SanMinsDung","LOCALS",11) ~THEN BSANDR SanBooDung
@397
DO ~SetGlobal("SanMinsDung","LOCALS",12) RealSetGlobalTimer("SanMinskInt","GLOBAL",500) ~
== BMinsc @398
== BSANDR @399
== BMinsc @400
== BSANDR @401
== BMinsc @402
== BSANDR @403
== BMinsc @404
EXIT

// Two Cleric Lovers at Inn BG2
CHAIN
IF ~Global("SanVicInnLov","LOCALS",11)~THEN BSANDR SanVicInn1
@405
DO ~SetGlobal("SanVicInnLov","LOCALS",12)~
== BViconi @406
== BSANDR @407
== BViconi @408
END
++ @409+ SanVicInnNo
IF~Global("SanRompath","GLOBAL",1)~THEN REPLY @410+ SanVicInnYes
IF~Global("SanRompath","GLOBAL",2)~THEN REPLY @411+ SanVicInnFem

CHAIN
IF ~~THEN BSANDR SanVicInnNo
@412
DO ~SetGlobal("SanVicInnLov","LOCALS",14)~
== BViconi @413
== BSANDR @414
== BViconi @415
== BSANDR @416
== BViconi @417DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() RestParty() ~
EXIT

CHAIN
IF ~~THEN BSANDR SanVicInnFem
@418
DO ~SetGlobal("SanVicInnLov","LOCALS",14)~
== BViconi @419
== BSANDR @414
== BViconi @420
== BSANDR @416
== BViconi @417DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() RestParty() ~
EXIT

CHAIN
IF ~~THEN BSANDR SanVicInnYes
@421
== BViconi @422
== BSANDR @423
== BViconi @424
END
++ @425+ SanVicInnYes2

CHAIN
IF ~~THEN BSANDR SanVicInnYes2
@426
== BViconi @427
== BSANDR @428
== BViconi @429
== BSANDR @430
== BViconi @431
== BSANDR @432
DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() RestParty() ~
EXIT

CHAIN
IF ~Global("SanVicInnLov","LOCALS",13)~THEN BSANDR SanVicInnYes3
@433
DO ~SetGlobal("SanVicInnLov","LOCALS",16)~
== BViconi @434
== BSANDR @435
== BViconi @436
= @437
== BSANDR @438
EXIT

CHAIN
IF ~Global("SanVicInnLov","LOCALS",15)~THEN BSANDR SanVicInnNo3
@439
DO ~SetGlobal("SanVicInnLov","LOCALS",16)~
== BViconi @440
== BSANDR IF ~Global("SanRompath","GLOBAL",1)~THEN@441
== BSANDR IF ~Global("SanRompath","GLOBAL",2)~THEN@442
== BViconi @436
= @443
== BSANDR @438
EXIT

CHAIN
IF ~Global("SanVicInnLov","LOCALS",17)~THEN BSANDR SanVicInnD1
@444
DO ~SetGlobal("SanVicInnLov","LOCALS",18)~
== BViconi @445
== BSANDR @446
== BViconi @447
== BSANDR @448
== BViconi @449
END
++ @450+ SanVicInnD2

CHAIN
IF ~~THEN BSANDR SanVicInnD2
@451
== BViconi @452
== BSANDR @453
DO ~RestParty() ~
EXIT

CHAIN
IF WEIGHT #-9 ~Global("SanHealVic","GLOBAL",15)~THEN BViconi VicHealed2
@454
DO ~SetGlobal("SanHealVic","GLOBAL",6)~
== BSANDR@455
== BViconi @456
== BSANDR @457
== BViconi @458
== BSANDR @459
== BViconi @460 EXIT