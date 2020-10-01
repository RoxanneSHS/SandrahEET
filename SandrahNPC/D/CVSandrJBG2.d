APPEND CVSANDRJ

// PID Package 13 - Starting in Amn

IF ~IsGabber(Player1) Global("SanPidPack","GLOBAL",13) ~THEN BEGIN SanPCInit13
SAY @0
IF ~!Global("SanRompa","Global",2)RandomNum(3,1)~THEN REPLY@1EXIT
IF ~!Global("SanRompa","Global",2)RandomNum(3,2)~THEN REPLY@2EXIT
IF ~!Global("SanRompa","Global",2)RandomNum(3,3)~THEN REPLY@3EXIT
IF~OR(22) 	Global("AerieRomanceActive","GLOBAL",2)
		Global("AnomenRomanceActive","GLOBAL",2)
		Global("JaheiraRomanceActive","GLOBAL",2)
		Global("ViconiaRomanceActive","GLOBAL",2)
		Global("M#AmberRomanceActive","GLOBAL",2)
		Global("ChloeRomanceActiveCR","GLOBAL",2)
		Global("E3FadeRomanceActive","GLOBAL",2)
		Global("B!GavinRomanceActive","GLOBAL",2)
		Global("imoenromanceactive","GLOBAL",2)
		Global("J#KelseyRomanceActive","GLOBAL",2)
		Global("KiaraRomanceActive","GLOBAL",2)
		Global("P#KivanRomanceActive","GLOBAL",2)
		Global("PGNaliaRomanceActive","GLOBAL",2)
		Global("NathRomanceActive","GLOBAL",2)
		Global("LK#NindeRomanceActive","GLOBAL",2)
		Global("SaerilethRomanceActive","GLOBAL",2)
		Global("SarahRomanceActive","GLOBAL",2)
		Global("SimeRomanceActive","GLOBAL",2)
		Global("SolaSleep","GLOBAL",3)
		Global("TsujathaRomanceActive","GLOBAL",2)
		Global("TashiaRomanceActive","GLOBAL",2)
		Global("O#XanRomanceActive","GLOBAL",2) ~THEN REPLY@4GOTO SanOtherLove
IF~		OR(11)
		Global("PlayerHasStronghold","GLOBAL",1)
		Global("PCKeepOwner","GLOBAL",1)
		GlobalGT("Rangerprotector","GLOBAL",1)
		Global("PCSphere","GLOBAL",1)
		Global("PlayerThiefGuild","GLOBAL",1)
		Global("PlayerHasPlayhouse","GLOBAL",1)
		Global("PaladinOrder","GLOBAL",1)
		Global("JoinHelm","GLOBAL",1)
		Global("JoinLathander","GLOBAL",1)
		Global("JoinTalos","GLOBAL",1)
		Global("Druidstronghold","GLOBAL",1)~THEN REPLY@5GOTO SanStronghold
IF~RandomNum(2,1) !TimeOfDay(DAY) AreaType(OUTDOOR)~THEN REPLY@6GOTO SanStarBG2PID1
IF~RandomNum(2,2) !TimeOfDay(DAY) AreaType(OUTDOOR)~THEN REPLY@7GOTO SanStarBG2PID2
IF~TimeOfDay(DAY) AreaType(OUTDOOR)~THEN REPLY@8GOTO SanStarBG2PID3
IF~AreaType(DUNGEON)~THEN REPLY@9GOTO SanStarBG2PID4
IF~!TimeOfDay(DAY) !AreaType(OUTDOOR)!AreaType(DUNGEON)~THEN REPLY@10GOTO SanStarBG2PID5
IF~!AreaCheck("ar0602") Global("SanNotCapt","LOCALS",0)Global("SanSentBelt","GLOBAL",0) ~THEN REPLY@11GOTO SanNotCapt1
IF~!AreaCheck("ar0602") Global("SanNotCapt","LOCALS",0)Global("SanSentBelt","GLOBAL",1) ~THEN REPLY@12GOTO SanNotCapt11
IF ~Global("SanNotCapt","LOCALS",1)~THEN REPLY@13GOTO SanNotCapt3
IF ~Global("SanMysRise","GLOBAL",2)~THEN REPLY @14GOTO SanMysSucc11
IF ~GlobalGT("SanFlirt","GLOBAL",19) Global("SanMysRise","GLOBAL",3)~THEN REPLY @15GOTO SanBLine11
IF~Global("Chapter","GLOBAL",14) Global("SanAmnAdv1","LOCALS",0) ~THEN REPLY @16GOTO SanAmnAdvA
IF ~Global("SanHendak","GLOBAL",2) !AreaCheck("ar0406")~THEN REPLY@17GOTO SanHendls1
IF~GlobalGT("SanAdrianL","Global",5) Global("SanAskAdrian","LOCALS",0)InParty("RH#Adrian")~THEN REPLY @18DO~SetGlobal("SanAskAdrian","LOCALS",1)~GOTO SanAdri1
IF~GlobalGT("SanAranH","GLOBAL",9) Global("SanAskAran","LOCALS",0)InParty("C-Aran")~THEN REPLY @19DO~SetGlobal("SanAskAran","LOCALS",1)~GOTO SanAranL1
IF~GlobalGT("SanHintFactory","GLOBAL",9) !See("CVShauq") Global("SanSharkTru","LOCALS",0)~THEN REPLY@20GOTO SharkTru1
IF~Global("PoolHealT","CVSHA7",4)~THEN REPLY@21DO~SetGlobal("PoolHealT","CVSHA7",5)~GOTO PoolTalk17
IF~Global("FreeSlaves","GLOBAL",1) Global("SanHendak","GLOBAL",3)~THEN REPLY @22GOTO SanHendls5
IF~Global("ys_FindElminster","GLOBAL",1) Global("SanAskLief","LOCALS",0) ~THEN REPLY @23GOTO SanAskLief1
IF~GlobalGT("GettingApprentices","GLOBAL",0) Global("SanPCHassphere","GLOBAL",0) ~THEN REPLY@24GOTO SanSphereAdv1
IF~Global("KangaxxQuest","GLOBAL",1) Global("SanKangAdv","LOCALS",0)~THEN REPLY @25GOTO SanKanAdv1
IF~GlobalGT("SanDrizBG2","LOCALS",10) GlobalLT("Chapter","GLOBAL",16) Global("SanPCvsDriz","LOCALS",0) InParty("Driz2")~THEN REPLY @26GOTO SanPCvsDriz1
IF~GlobalGT("waukleofree","GLOBAL",3) InMyArea("Pellig") Global("SanPelltru","LOCALS",0)~THEN REPLY@27GOTO SanPelltru1
IF ~Global("SanPelltru","LOCALS",1)~THEN REPLY@28GOTO SanPelltru4
IF~Global("SANSHARINT","GLOBAL",26)GlobalGT("Chapter","GLOBAL",13) Global("SanBabewait","LOCALS",0)!AreaType(CITY)~THEN REPLY@29GOTO SanBabewait1
IF~Global("PurskInf","LOCALS",0) OR(2) PartyHasItem("DDPkMap") AreaCheck("dd1900") ~THEN REPLY@30GOTO SanPurskTalk1
IF~Global("SanDesTroll","LOCALS",2) NumItemsPartyLT("arow04",5) AreaType(FOREST)  ~THEN REPLY@31GOTO SanAcArF2
IF~Global("SanBrynAltern","LOCALS",2) GlobalLT("B!alternatives","GLOBAL",3)~THEN REPLY@32GOTO TrySthNew2
IF~Global("SanDesTroll","LOCALS",2) NumItemsPartyLT("arow04",5) !AreaType(FOREST)  ~THEN REPLY@31GOTO SanAcArNF2
IF~Global("SanHintFactory","GLOBAL",35)Global("SanDarkMatter","LOCALS",0)~THEN REPLY@33GOTO SanSzassPid1
IF~Global("SanHintFactory","GLOBAL",35)Global("SanDarkMatter","LOCALS",1)~THEN REPLY@34GOTO SanSzassPid9
IF ~Global("EshpkInf","LOCALS",0) PartyHasItem("DDMap01")~THEN REPLY@35GOTO  SanEshpTalk1
IF~Global("SanNewArm","GLOBAL",5)~THEN REPLY@36GOTO SanmysarmDream1
IF~Global("CbPartyIsInSoubarMilitia","GLOBAL",7) Global("SanCbCasAdv","LOCALS",0)~THEN REPLY@37GOTO SanLyarTyp1
IF~Global("SankangFull","LOCALS",2) GlobalLT("UsedCrypt0331","GLOBAL",2)~THEN REPLY@38GOTO SanTombkanEnt32
IF~Global("SanMekCurse","GLOBAL",1)~THEN REPLY@39GOTO MekCurse2
IF~Global("C#SB_Auftraggeber","GLOBAL",1) Global("SanSilvAdl","LOCALS",0)~THEN REPLY@40GOTO SanTanner21
IF~Global("SanNecroHa","LOCALS",2)~THEN REPLY@41EXTERN BSANDR SanNecrohate4
IF~ Global("BeholderPlot","GLOBAL",1) !Dead("UnseeingEye")Global("SanUnseen","LOCALS",0) ~THEN REPLY @42GOTO SanUnsee1
IF~Global("SanVampWDQuest","GLOBAL",16)~THEN REPLY@43GOTO DoWDVampQ6
IF~Global("SanSharInt","GLOBAL",37) AreaType(OUTDOOR) !Global("SanRompa","Global",2) Global("SanBabeToo","LOCALS",0)~THEN REPLY @44GOTO SanBabeHave1
IF~GlobalGT("C#AjantisRitterSuche","GLOBAL",0) Global("SanGoldBall","LOCALS",0) PartyHasItem("C#Ajgk")~THEN REPLY@45GOTO SanGlobAjanMiss1
IF~InParty("ADAngel") !AreaCheck("ar0800") Global("CVAngelRev","LOCALS",0)~THEN REPLY@46GOTO SanAdSarD
IF~InParty("Zaiya") GlobalLT("ZaiyaCursed","GLOBAL",8) Global("SanZaiyaPid","LOCALS",0)~THEN REPLY@47DO~SetGlobal("SanZaiyaPid","LOCALS",1)~GOTO SanZaiyaHeal1
IF~Global("WorkingForBodhi","GLOBAL",1) Global("SanOnBohWork","LOCALS",0)~THEN REPLY@48DO~SetGlobal("SanOnBohWork","LOCALS",1)~GOTO SanonBoh1
IF~!Global("SanCanTravel","GLOBAL",2) AreaCheck("CVDre1")~THEN REPLY @49DO ~SetGlobal("SanTravel","GLOBAL",62)~EXIT
IF~~THEN REPLY@50GOTO SanHamCl2
IF~~THEN REPLY@51EXIT
END

IF~~THEN BEGIN SanonBoh1
SAY@52
IF~~THEN REPLY@53DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanonBoh2
IF~~THEN REPLY@54DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanonBoh2
END

IF~~THEN BEGIN SanonBoh2
SAY@55
=@56
IF~~THEN REPLY@57EXIT
IF~~THEN REPLY@58EXIT
IF~~THEN REPLY@59EXIT
END

IF~~THEN BEGIN SanZaiyaHeal1
SAY@60
IF~~THEN REPLY@61GOTO SanZaiyaHeal2
IF~~THEN REPLY@62GOTO SanZaiyaHeal2
IF~~THEN REPLY@63GOTO SanZaiyaHeal2
END

IF~~THEN BEGIN SanZaiyaHeal2
SAY@64
=@65
IF~~THEN REPLY@66GOTO SanZaiyaHeal3
IF~~THEN REPLY@67GOTO SanZaiyaHeal3
END

IF~~THEN BEGIN SanZaiyaHeal3
SAY@68
=@69
=@70
IF~~THEN REPLY@71GOTO SanZaiyaHeal4
END

IF~~THEN BEGIN SanZaiyaHeal4
SAY@72
IF~~THEN EXIT
END

IF~~THEN BEGIN SanAdSarD
SAY@73
IF~~THEN DO~SetGlobal("CVAngelRev","LOCALS",1) SetGlobal("CVSareded","Global",1)~EXIT
END

IF~~THEN BEGIN SanHamCl2
SAY@74
IF~~THEN DO~ReallyForceSpellRES("SanHamCL",Myself)~EXIT
END

IF~~THEN BEGIN SanStronghold
SAY@75
IF~~THEN REPLY@76DO~IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
IF~~THEN REPLY@77DO~IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
IF~~THEN REPLY@78DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~EXIT
END

IF~~THEN BEGIN SanStarBG2PID1
SAY@79
IF~~THEN REPLY@80EXIT
IF~~THEN REPLY@81EXIT
END

IF~~THEN BEGIN SanStarBG2PID2
SAY@82
IF~~THEN REPLY@83EXIT
IF~~THEN REPLY@84EXIT
END

IF~~THEN BEGIN SanOtherLove
SAY@85
IF~~THEN REPLY@86DO~IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
IF~~THEN REPLY@87EXIT
END

IF~~THEN BEGIN SanStarBG2PID3
SAY@88
IF~~THEN REPLY@89EXIT
IF~~THEN REPLY@90EXIT
IF~Global("SanRompa","Global",2)~THEN REPLY@91EXIT
END

IF~~THEN BEGIN SanStarBG2PID4
SAY@92
IF~~THEN REPLY@93EXIT
IF~~THEN REPLY@94EXIT
IF~~THEN REPLY@95EXIT
END

IF~~THEN BEGIN SanStarBG2PID5
SAY@96
IF~~THEN REPLY@97EXIT
IF~~THEN REPLY@98GOTO SanBedPid12
IF~~THEN REPLY@99EXIT
END

IF ~~THEN BEGIN SanGlobAjanMiss1
SAY@100
IF~GlobalGT("SanHelmDogmas","GLOBAL",11)~THEN GOTO  SanGlobAjanMiss1a
IF~GlobalLT("SanHelmDogmas","GLOBAL",12)~THEN GOTO  SanGlobAjanMiss1b
END

IF ~~THEN BEGIN SanGlobAjanMiss1a
SAY@101
IF~~THEN REPLY@102DO ~SetGlobal("SanGoldBall","LOCALS",1)~GOTO SanGlobAjanMiss2
END

IF ~~THEN BEGIN SanGlobAjanMiss1b
SAY@103
IF~~THEN REPLY@102DO ~SetGlobal("SanGoldBall","LOCALS",1)~GOTO SanGlobAjanMiss2
END

IF ~~THEN BEGIN SanGlobAjanMiss2
SAY@104
IF~~THEN REPLY@105EXIT
END

IF~~THEN BEGIN SanBabeHave1
SAY @106
IF~~THEN REPLY@107DO~SetGlobal("SanBabeToo","LOCALS",1)~GOTO SanBabeHave2
END

IF~~THEN BEGIN SanBabeHave2
SAY @108
IF~~THEN REPLY@109DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanBabeHave3
END

IF~~THEN BEGIN SanBabeHave3
SAY @110
IF~~THEN REPLY@111EXIT
IF~~THEN REPLY@112EXIT
IF~~THEN REPLY@113EXIT
END


IF~~THEN BEGIN SanLyarTyp1
SAY@114
IF~~THEN DO~SetGlobal("SanCbCasAdv","LOCALS",1) TriggerActivation("Tran5000",TRUE)~EXIT
END

IF~~THEN BEGIN SanBabewait1
SAY@115
IF~~THEN REPLY@116GOTO SanBabewait2
IF~~THEN REPLY@117GOTO SanBabewait2
END

IF~~THEN BEGIN SanBabewait2
SAY@118
IF~!Global("SanRompa","Global",2)~THEN REPLY@119GOTO SanBabewait3
IF~Global("SanRompa","Global",2)~THEN REPLY@119GOTO SanBabewait3a
END

IF~~THEN BEGIN SanBabewait3
SAY@120
IF~~THEN REPLY@121DO~SetGlobal("SanBabewait","LOCALS",1)~EXIT
END

IF~~THEN BEGIN SanBabewait3a
SAY@122
IF~~THEN REPLY@121DO~SetGlobal("SanBabewait","LOCALS",1)~EXIT
END

IF~~THEN BEGIN SanTanner21
SAY @123
IF~~THEN REPLY@124DO~SetGlobal("SanSilvAdl","LOCALS",1)~GOTO SanTanner22
END

IF~~THEN BEGIN SanTanner22
SAY @125
IF~~THEN REPLY@126GOTO  SanTanner23
IF~~THEN REPLY@127GOTO SanTanner23
IF~~THEN REPLY@128DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~EXIT
END

IF~~THEN BEGIN SanTanner23
SAY@129
=@130
IF~~THEN REPLY@131EXIT
END

IF~~THEN BEGIN MekCurse2
SAY@132
IF~~THEN REPLY @133DO ~SetGlobal("SanMekCurse","GLOBAL",2)~GOTO MekCurse3
END

IF~~THEN BEGIN MekCurse3
SAY@134
IF~~THEN REPLY @135GOTO MekCurse4
END

IF~~THEN BEGIN MekCurse4
SAY@136
IF~~THEN REPLY @137
GOTO MekCurse5
END

IF~~THEN BEGIN MekCurse5
SAY@138
IF~~THEN EXIT
END

IF~~THEN BEGIN SanAcArF2
SAY @139
=@140
IF~~THEN DO~StartCutSceneMode()
SmallWait(4)
ForceSpell(Myself,CLERIC_SPIRITUAL_HAMMER)
SmallWait(4)
GiveItemCreate("arow04",Player1,80,0,0)
EndCutSceneMode()
SetGlobal("SanDesTroll","LOCALS",5) ~EXIT
END

IF~~THEN BEGIN SanAcArNF2
SAY @141
IF~~THEN REPLY@142DO~SetGlobal("SanDesTroll","LOCALS",3) ~EXIT
END

IF~Global("SanDesTroll","LOCALS",4)~THEN BEGIN SanAcArNF22
SAY@143
IF~~THEN REPLY@144DO~SetGlobal("SanDesTroll","LOCALS",2)~EXIT
IF~~THEN REPLY@145 GOTO SanAcArF2
END

IF~~THEN BEGIN SanUnsee1
SAY@146
IF~~THEN REPLY @147 DO~SetGlobal("SanUnseen","LOCALS",1)~GOTO SanUnsee2
IF~~THEN REPLY @148DO~SetGlobal("SanUnseen","LOCALS",1)~GOTO SanUnsee3
END

IF~~THEN BEGIN SanUnsee2
SAY@149
IF~~THEN REPLY @150GOTO SanUnsee4
END

IF~~THEN BEGIN SanUnsee3
SAY@151
IF~~THEN REPLY @150GOTO SanUnsee4
END

IF~~THEN BEGIN SanUnsee4
SAY@152
IF~~THEN REPLY @153 GOTO SanUnsee5
END

IF~~THEN BEGIN SanUnsee5
SAY@154
IF~~THEN REPLY @155DO~IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
END

IF~~THEN BEGIN SanmysarmDream1
SAY @156
IF~!Global("SanRompa","Global",2)~THEN REPLY@157GOTO SanmysarmDream2
IF~Global("SanRompa","Global",2)~THEN REPLY@158GOTO SanmysarmDream2
IF~~THEN REPLY@159GOTO SanmysarmDream2
END

IF~~THEN BEGIN SanmysarmDream2
SAY @160
IF~~THEN REPLY@161GOTO SanmysarmDream3
END

IF~~THEN BEGIN SanmysarmDream3
SAY @162
IF~~THEN REPLY@163DO~SetGlobal("SanNewArm","GLOBAL",6)~EXIT
END

IF~~THEN BEGIN SanEshpTalk1
SAY@164
IF~~THEN REPLY@165DO ~SetGlobal("EshpkInf","LOCALS",1)IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
END

IF~~THEN BEGIN SanPurskTalk1
SAY@166
IF~~THEN REPLY@167DO ~SetGlobal("PurskInf","LOCALS",1)IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
END

IF~~THEN BEGIN SanPelltru1
SAY @168
IF~~THEN REPLY@169GOTO SanPelltru2
IF~~THEN REPLY@170GOTO SanPelltru2
IF~~THEN REPLY@171GOTO SanPelltru2
END

IF~~THEN BEGIN SanPelltru2
SAY @172
=@173
IF~~THEN REPLY@174GOTO SanPelltru3
IF~~THEN REPLY@175GOTO SanPelltru3
END

IF~~THEN BEGIN SanPelltru3
SAY @176
IF~!Global("SanRompa","Global",2)~THEN REPLY@177DO~SetGlobal("SanPelltru","LOCALS",1)~EXIT
IF~Global("SanRompa","Global",2)~THEN REPLY@178DO~SetGlobal("SanPelltru","LOCALS",1)~EXIT
IF~~THEN REPLY@179GOTO SanPelltru4
END

IF~~THEN BEGIN SanPelltru4
SAY @180
IF~InMyArea("Haiass")~THEN REPLY@181GOTO SanPelltru5
IF~!InMyArea("Haiass")~THEN REPLY@182GOTO SanPelltru5
IF~~THEN REPLY @183GOTO SanPelltru5
END

IF~~THEN BEGIN SanPelltru5
SAY @184
IF~~THEN REPLY@185GOTO SanPelltru6
END

IF~~THEN BEGIN SanPelltru6
SAY @186
IF~~THEN REPLY@187DO~SetGlobal("SanPelltru","LOCALS",2)~GOTO SanPelltru7
END

IF~~THEN BEGIN SanPelltru7
SAY @188
IF~InMyArea("Haiass")~THEN REPLY@189EXIT
IF~!InMyArea("Haiass")~THEN REPLY@190EXIT
END

IF~~THEN BEGIN SanPCvsDriz1
SAY@191
IF~~THEN REPLY @192GOTO SanPCvsDriz2
END

IF~~THEN BEGIN SanPCvsDriz2
SAY@193
IF~~THEN REPLY @194GOTO SanPCvsDriz3
IF~~THEN REPLY @195GOTO SanPCvsDriz3
END

IF~~THEN BEGIN SanPCvsDriz3
SAY@196
IF~~THEN REPLY @197DO~SetGlobal("SanPCvsDriz","LOCALS",6)~EXIT
IF~~THEN REPLY @198DO~SetGlobal("SanPCvsDriz","LOCALS",6)~EXIT
IF~~THEN REPLY @199DO~IncrementGlobal("Sanpoints","GLOBAL",-2)~GOTO SanPCvsDriz4
END

IF~~THEN BEGIN SanPCvsDriz4
SAY@200
IF~~THEN DO ~SetGlobal("SanPCvsDriz","LOCALS",2) SetGlobal("SanPidPack","GLOBAL",113)~EXIT
END

IF~~THEN BEGIN SanSzassPid1
SAY@201
IF~!Global("SanRompa","Global",2)~THEN REPLY@202GOTO SanSzassPid2
IF~~THEN REPLY@203DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanSzassPid3
IF~~THEN REPLY@204DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanSzassPid3
END

IF~~THEN BEGIN SanSzassPid2
SAY@205
IF~~THEN DO~SetGlobal("SanDarkMatter","LOCALS",3)~EXIT
END

IF~~THEN BEGIN SanSzassPid3
SAY@206
IF~~THEN REPLY@207GOTO SanSzassPid4
IF~~THEN REPLY@208GOTO SanSzassPid4
END

IF~~THEN BEGIN SanSzassPid4
SAY@209
= @210
=@211
IF~~THEN REPLY@212GOTO SanSzassPid5
END

IF~~THEN BEGIN SanSzassPid5
SAY@213
=@214
=@215
IF~~THEN REPLY@216GOTO SanSzassPid6
IF~~THEN REPLY@217GOTO SanSzassPid6
END

IF~~THEN BEGIN SanSzassPid6
SAY@218
IF~~THEN REPLY@219GOTO SanSzassPid7
IF~~THEN REPLY@220GOTO SanSzassPid7
IF~~THEN REPLY@221GOTO SanSzassPid7
END

IF~~THEN BEGIN SanSzassPid7
SAY@222
IF~~THEN REPLY@223GOTO SanSzassPid8
END

IF~~THEN BEGIN SanSzassPid8
SAY@224
IF~~THEN REPLY@225DO~SetGlobal("SanDarkMatter","LOCALS",1)~EXIT
IF~~THEN REPLY@226GOTO SanSzassPid9
END

IF~~THEN BEGIN SanSzassPid9
SAY@227
IF~~THEN REPLY@228GOTO SanSzassPid10
IF~~THEN REPLY@229GOTO SanSzassPid10
END

IF~~THEN BEGIN SanSzassPid10
SAY@230
=@231
IF~~THEN REPLY@232DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanSzassPid11
END

IF~~THEN BEGIN SanSzassPid11
SAY@233
IF~~THEN REPLY@234GOTO SanSzassPid12
END

IF~~THEN BEGIN SanSzassPid12
SAY@235
IF~~THEN REPLY@236DO~SetGlobal("SanDarkMatter","LOCALS",2)~EXIT
END

IF~~THEN BEGIN SanKanAdv1
SAY @237
IF~~THEN REPLY @238GOTO SanKanAdv2
IF~~THEN REPLY @239GOTO SanKanAdv3
END

IF~~THEN BEGIN SanKanAdv2
SAY@240
IF~~THEN REPLY @241GOTO SanKanAdv3
IF~~THEN REPLY @242GOTO SanKanAdv3
END

IF~~THEN BEGIN SanKanAdv3
SAY@243
IF~~THEN REPLY @244DO~SetGlobal("SanKangAdv","LOCALS",1)~GOTO SanKanAdv4
END

IF~~THEN BEGIN SanKanAdv4
SAY@245
IF~~THEN REPLY @246DO~IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
IF~~THEN REPLY @247DO~IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
IF~~THEN REPLY @248DO~IncrementGlobal("Sanpoints","GLOBAL",2)~EXIT
END

IF~~THEN BEGIN SanAskLief1
SAY @249
IF~~THEN REPLY @250DO ~SetGlobal("SanAskLief","LOCALS",1)~GOTO SanAskLief2
END

IF~~THEN BEGIN SanAskLief2
SAY @251
IF~~THEN REPLY @252DO~IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
END

IF~~THEN BEGIN SanHendls1
SAY@253
IF~~THEN REPLY @254DO~SetGlobal("SanHendak","GLOBAL",3)~GOTO SanHendls2
END

IF~~THEN BEGIN SanHendls2
SAY @255
IF~~THEN REPLY @256DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanHendls3
IF~~THEN REPLY @257DO~IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SanHendls3
END

IF~~THEN BEGIN SanHendls3
SAY @258
IF~~THEN REPLY @259GOTO SanHendls4
IF~~THEN REPLY @260GOTO SanHendls4
END

IF~~THEN BEGIN SanHendls4
SAY @261
IF~~THEN REPLY @262EXIT
IF~~THEN REPLY @263EXIT
END

IF~~THEN BEGIN SanHendls5
SAY @264
IF~~THEN REPLY @265DO~SetGlobal("SanHendak","GLOBAL",4)IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanHendls6
END

IF~~THEN BEGIN SanHendls6
SAY @266
IF~~THEN REPLY @267GOTO SanHendls7
IF~~THEN REPLY @268GOTO SanHendls7
END

IF~~THEN BEGIN SanHendls7
SAY @269
= @270
IF~~THEN REPLY @271 GOTO SanHendls8
IF~~THEN REPLY @272 GOTO SanHendls8
END

IF~~THEN BEGIN SanHendls8
SAY @273
= @274
= @275
= @276
IF~~THEN REPLY @277 GOTO SanHendls9
END

IF~~THEN BEGIN SanHendls9
SAY @278
= @279
=@280
IF~~THEN REPLY @281GOTO SanHendls10
END

IF~~THEN BEGIN SanHendls10
SAY @282
= @283
= @284
IF~~THEN DO~IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
END


IF ~~THEN BEGIN SanAmnAdvA
SAY@285
IF ~~THEN REPLY @286 GOTO  SanAmnAdvB
IF ~~THEN REPLY @287GOTO  SanAmnAdvB
IF ~~THEN REPLY @288 GOTO  SanAmnAdvB
END

IF~~THEN BEGIN SanAmnAdvB
SAY @289
IF ~~THEN REPLY @290GOTO  SanAmnAdvC
IF ~~THEN REPLY @291GOTO  SanAmnAdvC
END

IF~~THEN BEGIN SanAmnAdvC
SAY @292
IF ~~THEN REPLY @293GOTO  SanAmnAdvD
IF ~~THEN REPLY @294GOTO  SanAmnAdvD
END

IF~~THEN BEGIN SanAmnAdvD
SAY @295
IF ~Global("SanRomPath","GLOBAL",1)~THEN REPLY @296GOTO  SanAmnAdvEm
IF ~Global("SanRomPath","GLOBAL",2)~THEN REPLY @296GOTO  SanAmnAdvEf
END

IF~~THEN BEGIN SanAmnAdvEm
SAY @297
IF ~~THEN REPLY @298GOTO  SanAmnAdvF
END

IF~~THEN BEGIN SanAmnAdvEf
SAY @299
IF ~~THEN REPLY @298GOTO  SanAmnAdvF
END

IF~~THEN BEGIN SanAmnAdvF
SAY @300
IF ~~THEN REPLY @301DO ~SetGlobal("SanAmnAdv1","LOCALS",1)~EXIT
END

IF~~THEN BEGIN SanNotCapt11
SAY@302
IF~~THEN REPLY @303GOTO SanNotCapt12
END

IF~~THEN BEGIN SanNotCapt12
SAY@304
IF~~THEN REPLY @305GOTO SanNotCapt13
IF~~THEN REPLY @306GOTO SanNotCapt13
END

IF~~THEN BEGIN SanNotCapt13
SAY@307
IF~~THEN REPLY @308GOTO SanNotCapt14
END

IF~~THEN BEGIN SanNotCapt14
SAY@309
= @310
IF~AreaCheck("ar0603") ~THEN REPLY @311GOTO SanNotCapt3
IF~!AreaCheck("ar0603")~THEN REPLY @312GOTO SanNotCapt3
IF~!AreaCheck("ar0603")~THEN REPLY @313DO~SetGlobal("SanNotCapt","LOCALS",1)~EXIT
IF~AreaCheck("ar0603") ~THEN REPLY @314DO~SetGlobal("SanNotCapt","LOCALS",1)~EXIT
END

IF~~THEN BEGIN SanNotCapt1
SAY @315
= @316
IF~~THEN REPLY @317 GOTO SanNotCapt2
END

IF~~THEN BEGIN SanNotCapt2
SAY@318
= @310
IF~AreaCheck("ar0603") ~THEN REPLY @311GOTO SanNotCapt3
IF~!AreaCheck("ar0603")~THEN REPLY @312GOTO SanNotCapt3
IF~!AreaCheck("ar0603")~THEN REPLY @313DO~SetGlobal("SanNotCapt","LOCALS",1)~EXIT
IF~AreaCheck("ar0603") ~THEN REPLY @314DO~SetGlobal("SanNotCapt","LOCALS",1)~EXIT
END

IF~~THEN BEGIN SanNotCapt3
SAY @319
= @320
IF~~THEN REPLY@321GOTO SanNotCapt4
END

IF~~THEN BEGIN SanNotCapt4
SAY @322
= @323
= @324
IF ~~THEN REPLY @325DO~SetGlobal("SanNotCapt","LOCALS",3)~EXIT
IF ~~THEN REPLY @326DO~SetGlobal("SanNotCapt","LOCALS",3)~EXIT
END

IF ~~THEN BEGIN SanMysSucc11
SAY @327
IF ~~THEN REPLY @328GOTO SanMysSucc12
IF ~~THEN REPLY @329 GOTO SanMysSucc12
IF ~~THEN REPLY @330GOTO SanMysSucc12
END

IF ~~THEN BEGIN SanMysSucc12
SAY @331
= @332
IF ~~THEN REPLY @333GOTO SanMysSucc13
END

IF ~~THEN BEGIN SanMysSucc13
SAY @334
IF ~~THEN REPLY @335GOTO SanMysSucc14
IF~~THEN REPLY@336GOTO SanMysSucc14
END

IF ~~THEN BEGIN SanMysSucc14
SAY @337
IF ~~THEN REPLY @338GOTO SanMysSucc15
END

IF ~~THEN BEGIN SanMysSucc15
SAY @339
= @340
IF ~~THEN REPLY @341GOTO SanMysSucc16
END

IF ~~THEN BEGIN SanMysSucc16
SAY @342
IF ~~THEN REPLY @343GOTO SanMysSucc17
END

IF ~~THEN BEGIN SanMysSucc17
SAY @344
IF ~~THEN REPLY @345GOTO SanMysSucc18
END

IF ~~THEN BEGIN SanMysSucc18
SAY @346
= @347
IF ~~THEN REPLY @348GOTO SanMysSucc19
END

IF ~~THEN BEGIN SanMysSucc19
SAY @349
IF ~~THEN REPLY @350GOTO SanMysSucc20
END

IF ~~THEN BEGIN SanMysSucc20
SAY @351
IF ~~THEN DO ~SetGlobal("SanMysRise","GLOBAL",3)~EXIT
END

IF~~THEN BEGIN SanBLine11
SAY@352
IF ~~THEN REPLY @353GOTO SanBLine12
END

IF~~THEN BEGIN SanBLine12
SAY@354
IF ~~THEN REPLY @355GOTO SanBLine13
END

IF~~THEN BEGIN SanBLine13
SAY@356
IF ~~THEN REPLY @357GOTO SanBLine14
END

IF~~THEN BEGIN SanBLine14
SAY@358
IF ~~THEN REPLY @359DO ~SetGlobal("SanMysRise","GLOBAL",4)~GOTO SanBLine15
END

IF~~THEN BEGIN SanBLine15
SAY@360
IF ~~THEN REPLY @361EXIT
IF ~~THEN REPLY @362EXIT
IF ~~THEN REPLY @363EXIT
END

// PID Package 113 - (Interlude Drizzt quarrel)

IF ~IsGabber(Player1) Global("SanPidPack","GLOBAL",113) ~THEN BEGIN SanPCInit113
SAY @364
IF ~~THEN REPLY@365DO~SetGlobal("SanPidPack","GLOBAL",114) ~EXIT
END

IF ~IsGabber(Player1) Global("SanPidPack","GLOBAL",114) ~THEN BEGIN SanPCInit114
SAY @366
IF ~~THEN REPLY@367GOTO SanPCvsDriz5
IF ~~THEN REPLY@368GOTO SanPCvsDriz6
END

IF~~THEN BEGIN SanPCvsDriz5
SAY@369
IF~~THEN DO ~SetGlobal("SanPCvsDriz","LOCALS",3) SetGlobal("SanPidPack","GLOBAL",13)~EXIT
END

IF~~THEN BEGIN SanPCvsDriz6
SAY@370
IF~~THEN DO ~SetGlobal("SanPCvsDriz","LOCALS",3) SetGlobal("SanPidPack","GLOBAL",13)~EXIT
END

// PID Package 14 - Reaching Brynnlaw

IF ~IsGabber(Player1) Global("SanPidPack","GLOBAL",14) ~THEN BEGIN SanPCInit14
SAY @371
IF ~RandomNum(2,1)TimeGT(12)~THEN REPLY@372GOTO SanBedPid1
IF ~RandomNum(2,2)TimeGT(12)~THEN REPLY@372GOTO SanBedPid2
IF ~TimeLT(13)~THEN REPLY@372GOTO SanBedPid3
IF ~RandomNum(4,1)~THEN REPLY@373GOTO SanCompliMeet1
IF ~RandomNum(4,2)~THEN REPLY@373GOTO SanCompliMeet2
IF ~RandomNum(4,3)~THEN REPLY@373GOTO SanCompliMeet3
IF ~RandomNum(4,4)~THEN REPLY@373GOTO SanCompliMeet4
IF~GlobalGT("SanHintFactory","GLOBAL",9) !See("CVShauq") Global("SanSharkTru","LOCALS",0)~THEN REPLY@20GOTO SharkTru1
IF~Global("PoolHealT","CVSHA7",4)~THEN REPLY@21DO~SetGlobal("PoolHealT","CVSHA7",5)~GOTO PoolTalk17
IF ~Global("SanMysRise","GLOBAL",2)~THEN REPLY @14GOTO SanMysSucc11
IF ~GlobalGT("SanFlirt","GLOBAL",19) Global("SanMysRise","GLOBAL",3)~THEN REPLY @15GOTO SanBLine11
IF~Global("SanVampWDQuest","GLOBAL",16)~THEN REPLY@43GOTO DoWDVampQ6
IF~Global("FreeSlaves","GLOBAL",1) Global("SanHendak","GLOBAL",3)~THEN REPLY @22GOTO SanHendls5
IF~Global("ys_FindElminster","GLOBAL",1) Global("SanAskLief","LOCALS",0) ~THEN REPLY @23GOTO SanAskLief1
IF~GlobalGT("GettingApprentices","GLOBAL",0) Global("SanPCHassphere","GLOBAL",0) ~THEN REPLY@24GOTO SanSphereAdv1
IF~Global("KangaxxQuest","GLOBAL",1) Global("SanKangAdv","LOCALS",0)~THEN REPLY @25GOTO SanKanAdv1
IF ~Global("SanPelltru","LOCALS",1)~THEN REPLY@374GOTO SanPelltru4
IF~GlobalGT("C#AjantisRitterSuche","GLOBAL",0) Global("SanGoldBall","LOCALS",0) PartyHasItem("C#Ajgk")~THEN REPLY@45GOTO SanGlobAjanMiss1
IF~GlobalGT("SanAdrianL","Global",5) Global("SanAskAdrian","LOCALS",0)InParty("RH#Adrian")~THEN REPLY @18DO~SetGlobal("SanAskAdrian","LOCALS",1)~GOTO SanAdri1
IF~GlobalGT("SanAranH","GLOBAL",9) Global("SanAskAran","LOCALS",0)InParty("C-Aran")~THEN REPLY @19DO~SetGlobal("SanAskAran","LOCALS",1)~GOTO SanAranL1
IF~Global("CVGodag","GLOBAL",9) Global("CVGodagJon","GLOBAL",1)~THEN REPLY@375DO~SetGlobal("CVGodag","GLOBAL",10)~GOTO GodagBG22
IF~Global("SANSHARINT","GLOBAL",26)GlobalGT("Chapter","GLOBAL",13) Global("SanBabewait","LOCALS",0)!AreaType(CITY)~THEN REPLY@29GOTO SanBabewait1
IF~Global("PurskInf","LOCALS",0) OR(2) PartyHasItem("DDPkMap") AreaCheck("dd1900") ~THEN REPLY@30GOTO SanPurskTalk1
IF~Global("SanDesTroll","LOCALS",2) NumItemsPartyLT("arow04",5) AreaType(FOREST)  ~THEN REPLY@31GOTO SanAcArF2
IF~Global("SanDesTroll","LOCALS",2) NumItemsPartyLT("arow04",5) !AreaType(FOREST)  ~THEN REPLY@31GOTO SanAcArNF2
IF ~Global("EshpkInf","LOCALS",0) PartyHasItem("DDMap01")~THEN REPLY@376GOTO  SanEshpTalk1
IF~Global("SanNewArm","GLOBAL",5)~THEN REPLY@36GOTO SanmysarmDream1
IF~Global("CbPartyIsInSoubarMilitia","GLOBAL",7) Global("SanCbCasAdv","LOCALS",0)~THEN REPLY@37GOTO SanLyarTyp1
IF~Global("SankangFull","LOCALS",2) GlobalLT("UsedCrypt0331","GLOBAL",2)~THEN REPLY@38GOTO SanTombkanEnt32
IF~Global("SanMekCurse","GLOBAL",1)~THEN REPLY@39GOTO MekCurse2
IF~Global("C#SB_Auftraggeber","GLOBAL",1) Global("SanSilvAdl","LOCALS",0)~THEN REPLY@40GOTO SanTanner21
IF~GlobalGT("SolaufeinJob","GLOBAL",4) Global("SanRomPath","GLOBAL",1) Global("SanDrwCompl","LOCALS",0)~THEN REPLY@377GOTO SanDrwCompl1
IF~Global("SanProph","GLOBAL",3)~THEN REPLY@378GOTO FishPrie1
IF~Global("SanProph","GLOBAL",7) GlobalGT("udMind","GLOBAL",39)~THEN REPLY@379GOTO FishPrie11
IF~Global("SanNecroHa","LOCALS",2)~THEN REPLY@41EXTERN BSANDR SanNecrohate4
IF~Global("SanSlayHelp","LOCALS",3)~THEN REPLY@380GOTO SanPCWasSlayer22
IF~ Global("BeholderPlot","GLOBAL",1) !Dead("UnseeingEye")Global("SanUnseen","LOCALS",0) ~THEN REPLY @42GOTO SanUnsee1
IF~Global("SanSharInt","GLOBAL",37) AreaType(OUTDOOR) Global("SanBabeToo","LOCALS",0)~THEN REPLY @44GOTO SanBabeHave1
IF~AreaCheck("AR2400") !Dead("udmaster") PartyHasItem("Misc9x")~THEN REPLY@381GOTO Flayeropen
IF~InParty("ADAngel") !AreaCheck("ar0800") Global("CVAngelRev","LOCALS",0)~THEN REPLY@46GOTO SanAdSarD
IF~!Global("SanCanTravel","GLOBAL",2) AreaCheck("CVDre1")~THEN REPLY @49DO ~SetGlobal("SanTravel","GLOBAL",62)~EXIT
IF~~THEN REPLY@50GOTO SanHamCl2
IF~~THEN REPLY@51EXIT
END

IF~~THEN BEGIN Flayeropen
SAY@382
IF~~THEN DO~SetGlobalTimer("SpawnIllTimer","GLOBAL",TWELVE_MINUTES)SetGlobal("spawnIll","AR2400",0)~EXIT
END

IF~~THEN BEGIN SanDrwCompl1
SAY@383
IF~~THEN REPLY@384DO~SetGlobal("SanDrwCompl","LOCALS",1)~GOTO SanDrwCompl2
END

IF~~THEN BEGIN SanDrwCompl2
SAY@385
=@386
=@387 
IF~~THEN REPLY@388EXIT
IF~~THEN REPLY@389EXIT
IF~~THEN REPLY@390EXIT
END

IF~~THEN BEGIN FishPrie1
SAY@391
IF~~THEN REPLY@392DO~SetGlobal("SanProph","GLOBAL",4)~GOTO FishPrie2
END

IF~~THEN BEGIN FishPrie11
SAY@393
IF~~THEN REPLY@392DO~SetGlobal("SanProph","GLOBAL",8)~GOTO FishPrie12
END

IF~~THEN BEGIN FishPrie12
SAY@394
=@395
IF~~THEN REPLY@396GOTO FishPrie3
IF~~THEN REPLY@397GOTO FishPrie3
END

IF~~THEN BEGIN FishPrie2
SAY@398
=@399
IF~~THEN REPLY@396GOTO FishPrie3
IF~~THEN REPLY@397GOTO FishPrie3
END

IF~~THEN BEGIN FishPrie3
SAY@400
IF~~THEN REPLY@401EXIT
IF~~THEN REPLY@402GOTO FishPrie4
IF~~THEN REPLY@403GOTO FishPrie4
END

IF~~THEN BEGIN FishPrie4
SAY@404
IF~~THEN REPLY@405GOTO FishPrie5
IF~~THEN REPLY@406GOTO FishPrie7
END

IF~~THEN BEGIN FishPrie5
SAY@407
IF~~THEN REPLY@408GOTO FishPrie8
END

IF~~THEN BEGIN FishPrie6
SAY@409
IF~~THEN REPLY@410GOTO FishPrie4
IF~~THEN REPLY@411GOTO FishPrie7
END

IF~~THEN BEGIN FishPrie7
SAY@412
IF~~THEN REPLY@413GOTO FishPrie5
IF~~THEN REPLY@414GOTO FishPrie8
END

IF~~THEN BEGIN FishPrie8
SAY@415
IF~~THEN DO~IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
END

IF~~THEN BEGIN SanBedPid1
SAY@416
IF~~THEN EXIT
END

IF~~THEN BEGIN SanBedPid2
SAY@417
IF~~THEN EXIT
END

IF~~THEN BEGIN SanBedPid3
SAY@418
IF~~THEN REPLY@419DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~EXIT
END

IF~~THEN BEGIN SanCompliMeet1
SAY@420
IF~~THEN REPLY@421EXIT
END

IF~~THEN BEGIN SanCompliMeet2
SAY@422
IF~~THEN REPLY@423EXIT
END

IF~~THEN BEGIN SanCompliMeet3
SAY@424
IF~~THEN REPLY@425EXIT
END

IF~~THEN BEGIN SanCompliMeet4
SAY@426
IF~~THEN REPLY@427EXIT
END

//Meeting everybody in Irenicus' Dungeon

IF~Global("San0602Reunite","LOCALS",2)~THEN BEGIN BG2Reunion1
SAY @428
IF~~THEN REPLY @429DO~SetGlobal("San0602Reunite","LOCALS",3)~GOTO BG2Reunion2
END

IF~~THEN BEGIN BG2Reunion2
SAY@430
IF ~InParty("Imoen2")~THEN GOTO BG2Reunion3
IF ~!InParty("Imoen2") InParty("Jaheira") ~THEN GOTO BG2Reunion4
IF~!InParty("Imoen2") !InParty("Jaheira") InParty("Minsc") ~THEN GOTO BG2Reunion5
IF~!InParty("Imoen2") !InParty("Jaheira") !InParty("Minsc") InParty("ACBre")~THEN GOTO BG2Reunion6
IF~!InParty("Imoen2") !InParty("Jaheira") !InParty("Minsc") !InParty("ACBre") InParty("Wulfg2")~THEN GOTO BG2Reunion7
IF~!InParty("Imoen2") !InParty("Jaheira") !InParty("Minsc") !InParty("ACBre") !InParty("Wulfg2") InParty("RChloe")~THEN GOTO BG2Reunion8
IF~!InParty("Imoen2") !InParty("Jaheira") !InParty("Minsc") !InParty("ACBre") !InParty("Wulfg2") !InParty("RChloe")~THEN REPLY@431GOTO BG2Reunion9
END

IF~~THEN BEGIN BG2Reunion3
SAY @432
IF~~THEN EXTERN  IMOEN2J  BG2ReunionImo
END

IF~~THEN BEGIN BG2Reunion4
SAY@433
IF~~THEN EXTERN  JAHEIRAJ  BG2ReunionJah
END

IF~~THEN BEGIN BG2Reunion5
SAY@434
IF~~THEN EXTERN  MINSCJ  BG2ReunionMinsc
END

IF~~THEN BEGIN BG2Reunion6
SAY@435
IF~~THEN EXTERN  ACBreJ  BG2ReunionBre
END

IF~~THEN BEGIN BG2Reunion7
SAY@436
IF~~THEN EXTERN  Wulfg2J  BG2Reunionwul
END

IF~~THEN BEGIN BG2Reunion8
SAY@437
IF~~THEN EXTERN  RCHLOEJ  BG2Reunionchlo
END

IF ~~THEN BEGIN BG2Reunion9
SAY @438
= @439
IF ~~THEN GOTO BG2Reunion16
END

IF ~~THEN BEGIN BG2Reunion10
SAY@440
IF ~InParty("Jaheira") ~GOTO BG2Reunion4
IF~!InParty("Jaheira") InParty("Minsc") ~THEN GOTO BG2Reunion5
IF~!InParty("Jaheira") !InParty("Minsc") InParty("ACBre")~THEN GOTO BG2Reunion6
IF~!InParty("Jaheira") !InParty("Minsc") !InParty("ACBre") InParty("Wulfg2")~THEN GOTO BG2Reunion7
IF~!InParty("Jaheira") !InParty("Minsc") !InParty("ACBre") !InParty("Wulfg2") InParty("RChloe")~THEN GOTO BG2Reunion8
IF~!InParty("Jaheira") !InParty("Minsc") !InParty("ACBre") !InParty("Wulfg2") !InParty("RChloe")~THEN GOTO BG2Reunion16
END

IF ~~THEN BEGIN BG2Reunion11
SAY@441
IF~ InParty("Minsc") ~THEN GOTO BG2Reunion5
IF~ !InParty("Minsc") InParty("ACBre")~THEN GOTO BG2Reunion6
IF~ !InParty("Minsc") !InParty("ACBre") InParty("Wulfg2")~THEN GOTO BG2Reunion7
IF~!InParty("Minsc") !InParty("ACBre") !InParty("Wulfg2") InParty("RChloe")~THEN GOTO BG2Reunion8
IF~ !InParty("Minsc") !InParty("ACBre") !InParty("Wulfg2") !InParty("RChloe")~THEN GOTO BG2Reunion16
END

IF ~~THEN BEGIN BG2Reunion12
SAY@442
= @443
IF~ InParty("ACBre")~THEN GOTO BG2Reunion6
IF~!InParty("ACBre") InParty("Wulfg2")~THEN GOTO BG2Reunion7
IF~!InParty("ACBre") !InParty("Wulfg2") InParty("RChloe")~THEN GOTO BG2Reunion8
IF~ !InParty("ACBre") !InParty("Wulfg2") !InParty("RChloe")~THEN GOTO BG2Reunion16
END

IF ~~THEN BEGIN BG2Reunion13
SAY@444
IF~InParty("Wulfg2")~THEN GOTO BG2Reunion7
IF~!InParty("Wulfg2") InParty("RChloe")~THEN GOTO BG2Reunion8
IF~!InParty("Wulfg2") !InParty("RChloe")~THEN GOTO BG2Reunion16
END

IF ~~THEN BEGIN BG2Reunion14
SAY@445
IF~ InParty("RChloe")~THEN DO ~SetGlobal("SanMetChloe","LOCALS",1)~GOTO BG2Reunion8
IF~!InParty("RChloe")~THEN GOTO BG2Reunion16
END

IF ~~THEN BEGIN BG2Reunion15
SAY@446
IF~~THEN GOTO BG2Reunion16
END

IF~Global("SanHeardIren","GLOBAL",1)~THEN BEGIN SanremIren1
SAY @447
IF~Global("CentPC","GLOBAL",0)~THEN REPLY @448GOTO SanremIren2
IF~GlobalGT("CentPC","GLOBAL",1) ~THEN REPLY @449GOTO SanremIren3
END

IF ~~THEN BEGIN SanremIren2
SAY@450
IF~Global("SanIreHint","LOCALS",2)~THEN REPLY@451DO ~SetGlobal("SanHeardIren","GLOBAL",2)~GOTO SanremIren4
IF~!Global("SanIreHint","LOCALS",2)~THEN REPLY@452DO ~SetGlobal("SanHeardIren","GLOBAL",2)~GOTO SanremIren4
END
                     
IF ~~THEN BEGIN SanremIren3
SAY@453
IF~Global("SanIreHint","LOCALS",2)~THEN REPLY@451DO ~SetGlobal("SanHeardIren","GLOBAL",2)~GOTO SanremIren4
IF~!Global("SanIreHint","LOCALS",2)~THEN REPLY@454DO ~SetGlobal("SanHeardIren","GLOBAL",2)~GOTO SanremIren4
END

IF ~~THEN BEGIN SanremIren4
SAY@455
IF~~THEN REPLY@456EXIT
IF~~THEN REPLY@457EXIT 
END

IF ~Global("SanYoshDun","GLOBAL",2) ~THEN BEGIN SanYoshDunNoYosh1
SAY @458
IF~~THEN REPLY@459DO ~SetGlobal("SanYoshDun","GLOBAL",3)~GOTO SanYoshDunNoYosh2
END

IF~~THEN BEGIN SanYoshDunNoYosh2
SAY@460
IF~~THEN REPLY @461GOTO SanYoshDunNoYosh3
END

IF~~THEN BEGIN SanYoshDunNoYosh3
SAY@462
IF~~THEN REPLY @463 EXIT
IF~~THEN REPLY @464EXIT
END

IF ~Global("SanHeardIren","GLOBAL",3) ~THEN BEGIN Sanremwdoom
SAY @465
IF~~THEN REPLY@466GOTO Sanremwdoom2
END

IF~~THEN BEGIN Sanremwdoom2
SAY@467
IF~~THEN REPLY@468DO~SetGlobal("SanHeardIren","GLOBAL",5) ~EXIT
END

IF~ Global("SanHeardIren","GLOBAL",4) ~THEN BEGIN Sanremnodoom
SAY @465
IF~~THEN REPLY@469GOTO Sanremwdoom2
END

//Free Hendak
IF ~Global("SanHendak","GLOBAL",1)~THEN BEGIN Sanfreehend1
SAY@470
IF~~THEN DO ~
ClearAllActions()
SmallWait(2) 
StartCutSceneMode()
ActionOverride("CVSandr",JumpToPoint([412.1216]))
MoveViewPoint([412.1216],INSTANT)
EndCutSceneMode()
SetGlobal("SanHendak","GLOBAL",2)
~EXIT
END

// Slaver Hunt
IF~Global("SanSacroll","GLOBAL",2)~THEN BEGIN Sanfreehend10
SAY@471
IF~~THEN REPLY@472DO ~SetGlobal("SanSacroll","GLOBAL",3)IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO  Sanfreehend11
IF~~THEN REPLY@473DO~SetGlobal("SanSacroll","GLOBAL",3)IncrementGlobal("Sanpoints","GLOBAL",-1)~GOTO Sanfreehend11
IF~~THEN REPLY@474 DO ~SetGlobal("SanSacroll","GLOBAL",3)IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO  Sanfreehend11
END

IF~~THEN BEGIN Sanfreehend11
SAY @475
IF~~THEN REPLY @476GOTO Sanfreehend12
IF~~THEN REPLY @477GOTO Sanfreehend13
END

IF~~THEN BEGIN Sanfreehend12
SAY@478
IF~~THEN REPLY @479GOTO Sanfreehend13
END

IF~~THEN BEGIN Sanfreehend13
SAY@480
IF~~THEN REPLY @481DO~AddJournalEntry(@60458,QUEST)~EXIT
IF~~THEN REPLY @482DO~AddJournalEntry(@60458,QUEST)~EXIT
END

IF~Global("SanSacroll","GLOBAL",7)~THEN BEGIN Santemlslav1
SAY @483
IF~~THEN REPLY @484DO~SetGlobal("SanSacroll","GLOBAL",8)~GOTO Santemlslav2
END

IF~~THEN BEGIN Santemlslav2
SAY @485
IF~~THEN REPLY@486EXIT
IF~~THEN REPLY@487DO~AddexperienceParty(12000)~GOTO Santemlslav3
END

IF~~THEN BEGIN Santemlslav3
SAY @488
IF~~THEN REPLY@489EXIT
IF~~THEN REPLY@490EXIT
END

// Beholder Cult
IF~Global("SanBehCult","LOCALS",1)~THEN BEGIN SanUnsee6
SAY@491
IF~Global("SanUnseen","LOCALS",0) ~THEN REPLY@492DO~SetGlobal("SanBehCult","LOCALS",2)~GOTO SanUnsee7
IF~Global("SanUnseen","LOCALS",1)~THEN REPLY@493DO~SetGlobal("SanBehCult","LOCALS",2)~GOTO SanUnsee11
END

IF~~THEN BEGIN SanUnsee7
SAY @494
IF~~THEN REPLY @153 GOTO SanUnsee8
END

IF~~THEN BEGIN SanUnsee8
SAY@495
IF~~THEN REPLY @155GOTO SanUnsee11
END   

IF~~THEN BEGIN SanUnsee11
SAY@496
IF~~THEN EXIT
END

// The Thumb
IF~Global("SanPirThumb","ar0310",1)~THEN BEGIN Santhethumb1
SAY @497
IF~~THEN REPLY @498GOTO Santhethumb2
IF~~THEN REPLY @499 GOTO Santhethumb2
END

IF ~~THEN BEGIN Santhethumb2
SAY@500
IF~~THEN REPLY@501 GOTO Santhethumb3
END

IF ~~THEN BEGIN Santhethumb3
SAY@502
IF~~THEN REPLY@503GOTO Santhethumb4
END

IF ~~THEN BEGIN Santhethumb4
SAY@504
IF~~THEN DO~SetGlobal("SanPirThumb","ar0310",2)~EXIT
END

//Harpers

IF~Global("Sanharpers","ar0309",1)~THEN BEGIN SanHarpstrange1
SAY@505
IF~~THEN REPLY@506GOTO SanHarpstrange2
IF~~THEN REPLY@507GOTO SanHarpstrange2
END

IF~~THEN BEGIN SanHarpstrange2
SAY@508
IF~~THEN REPLY@509DO~SetGlobal("Sanharpers","ar0309",2)~EXIT
END

//Tirdir
IF ~Global("SanTirdir","LOCALS",2)~THEN BEGIN SanTirdirhunt1
SAY@510
IF~~THEN REPLY@511DO ~SetGlobal("SanTirdir","LOCALS",3)~EXIT
END

// Kangaxx Parts
IF ~Global("SankangTors","GLOBAL",1)~BEGIN SanTombkanEnt1
SAY @512
IF~!Global("SankangLegs","LOCALS",3)~THEN REPLY @513 GOTO SanTombkanEnt2
IF~!Global("SankangLegs","LOCALS",3)~THEN REPLY @514DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanTombkanEnt2
IF ~Global("SankangLegs","LOCALS",3)~THEN REPLY @515GOTO SanTombkanEnt7
END

IF~~BEGIN SanTombkanEnt2
SAY @516
IF~Global("SanKangAdv","LOCALS",1)~THEN REPLY @517GOTO SanTombkanEnt3
IF~!Global("SanKangAdv","LOCALS",1)~THEN REPLY @517GOTO SanTombkanEnt4
END

IF~~BEGIN SanTombkanEnt3
SAY @518
IF~~THEN REPLY @519DO~SetGlobal("SankangTors","GLOBAL",2)~GOTO SanTombkanEnt6
IF~~THEN REPLY @520DO~SetGlobal("SankangTors","GLOBAL",2)~EXIT
IF~~THEN REPLY @521DO~SetGlobal("SankangTors","GLOBAL",2)~GOTO SanTombkanEnt6
END

IF~~BEGIN SanTombkanEnt4
SAY @522
IF~~THEN REPLY @523DO~SetGlobal("SankangTors","GLOBAL",2)~EXIT
IF~~THEN REPLY @520DO~SetGlobal("SankangTors","GLOBAL",2)~EXIT
IF~~THEN REPLY @521DO~SetGlobal("SankangTors","GLOBAL",2)~GOTO SanTombkanEnt5
END

IF~~BEGIN SanTombkanEnt5
SAY @524
IF~~THEN DO ~SetGlobal("SankangTors","GLOBAL",3)~EXIT
END

IF~~BEGIN SanTombkanEnt6
SAY @525
IF~~THEN DO ~SetGlobal("SankangTors","GLOBAL",3)~EXIT
END

IF~~BEGIN SanTombkanEnt7
SAY @526
IF~~THEN REPLY @523DO~SetGlobal("SankangTors","GLOBAL",2)~EXIT
IF~~THEN REPLY @520DO~SetGlobal("SankangTors","GLOBAL",2)~EXIT
IF~~THEN REPLY @521DO~SetGlobal("SankangTors","GLOBAL",2)~GOTO SanTombkanEnt5
END

IF ~Global("SankangLegs","LOCALS",1)~BEGIN SanTombkanEnt11
SAY @527
IF~~THEN REPLY @513 GOTO SanTombkanEnt12
IF~~THEN REPLY @514DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanTombkanEnt12
END

IF~~THEN BEGIN SanTombkanEnt12
SAY @516
IF~~THEN REPLY @528DO~SetGlobal("SankangLegs","LOCALS",3)~GOTO SanTombkanEnt14
END

IF~~THEN BEGIN SanTombkanEnt14
SAY @529
IF~~THEN REPLY @530DO~IncrementGlobal("Sanpoints","GLOBAL",2) ~GOTO SanTombkanEnt15
IF~~THEN REPLY @531DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanTombkanEnt15
IF~~THEN REPLY @532DO~IncrementGlobal("Sanpoints","GLOBAL",-3)~EXIT
END

IF~~THEN BEGIN SanTombkanEnt15
SAY @533
IF~~THEN REPLY @534EXIT
IF~~THEN REPLY @535EXIT
IF~~THEN REPLY @536EXIT
END

IF ~Global("SankangLegs","LOCALS",2)~BEGIN SanTombkanEnt21
SAY @512
IF~~THEN REPLY @513DO~SetGlobal("SankangLegs","LOCALS",3)~GOTO SanTombkanEnt22
IF~~THEN REPLY @514DO~IncrementGlobal("Sanpoints","GLOBAL",1)~DO~SetGlobal("SankangLegs","LOCALS",3)~GOTO SanTombkanEnt22
END

IF~~BEGIN SanTombkanEnt22
SAY @516
IF~Global("SanKangAdv","LOCALS",1)~THEN REPLY @517GOTO SanTombkanEnt23
IF~!Global("SanKangAdv","LOCALS",1)~THEN REPLY @517GOTO SanTombkanEnt24
END

IF~~BEGIN SanTombkanEnt23
SAY @518
IF~~THEN REPLY @519GOTO SanTombkanEnt26
IF~~THEN REPLY @520GOTO SanTombkanEnt14
IF~~THEN REPLY @521GOTO SanTombkanEnt26
END

IF~~BEGIN SanTombkanEnt24
SAY @522
IF~~THEN REPLY @523GOTO SanTombkanEnt14
IF~~THEN REPLY @520GOTO SanTombkanEnt14
IF~~THEN REPLY @521GOTO SanTombkanEnt25
END

IF~~BEGIN SanTombkanEnt25
SAY @524
IF~~THEN GOTO SanTombkanEnt14
END

IF~~BEGIN SanTombkanEnt26
SAY @525
IF~~THEN GOTO SanTombkanEnt14
END

IF ~Global("SankangFull","LOCALS",1)~BEGIN SanTombkanEnt30
SAY@537
IF~~THEN REPLY@538DO~SetGlobal("SankangFull","LOCALS",2) ~GOTO SanTombkanEnt31
END

IF~~BEGIN SanTombkanEnt31
SAY @539
IF~~THEN EXIT
END

IF~~BEGIN SanTombkanEnt32
SAY @540
IF~~THEN REPLY @541GOTO SanTombkanEnt33
IF~~THEN REPLY @542 GOTO SanTombkanEnt34
END

IF~~BEGIN SanTombkanEnt33
SAY@543
IF~~THEN REPLY @544DO~SetGlobal("SankangFull","LOCALS",3) ~EXIT
IF~~THEN REPLY @545GOTO SanTombkanEnt34
END

IF~~BEGIN SanTombkanEnt34
SAY@546
IF~~THEN REPLY@547GOTO SanTombkanEnt35
IF~~THEN REPLY @545GOTO SanTombkanEnt36
IF~~THEN REPLY @548GOTO SanTombkanEnt37
END

IF~~BEGIN SanTombkanEnt35
SAY@549
IF~~THEN REPLY@550DO~SetGlobal("SankangFull","LOCALS",3) ~EXIT
IF~~THEN REPLY @551DO~SetGlobal("SankangFull","LOCALS",3) ~EXIT
IF~~THEN REPLY@552GOTO SanTombkanEnt37
END

IF~~BEGIN SanTombkanEnt36
SAY@543
IF~~THEN REPLY @544DO~SetGlobal("SankangFull","LOCALS",3) ~EXIT
IF~~THEN REPLY @553GOTO SanTombkanEnt37
END

IF~~BEGIN SanTombkanEnt37
SAY@554
IF~~THEN DO ~GiveItemCreate("cbbk7554",Player1,0,0,0) SetGlobal("SankangFull","LOCALS",3)~EXIT
END

//Firkraag
IF~Global("SanFierk","ar1201",1)~THEN BEGIN SanFirkDung1
SAY@555
IF~~THEN REPLY@556DO~SetGlobal("SanFierk","ar1201",2) ~GOTO SanFirkDung2
IF~~THEN REPLY@557DO~SetGlobal("SanFierk","ar1201",2) ~GOTO SanFirkDung2
IF~~THEN REPLY@558DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~GOTO SanFirkDung2
END

IF~~THEN BEGIN SanFirkDung2
SAY@559
IF~~THEN REPLY@560 GOTO SanFirkDung3
IF~~THEN REPLY@561GOTO SanFirkDung3
IF~~THEN REPLY@562GOTO SanFirkDung3
END

IF~~THEN BEGIN SanFirkDung3
SAY@563
IF~~THEN REPLY@564GOTO SanFirkDung4
END

IF~~THEN BEGIN SanFirkDung4
SAY@565
IF~~THEN REPLY@566GOTO SanFirkDung5
END

IF~~THEN BEGIN SanFirkDung5
SAY@567
IF~~THEN REPLY@568EXIT
END

IF~Global("SanMaze","ar1202",1)~THEN BEGIN SanFirkDung6
SAY@569
IF~~THEN REPLY@570DO~SetGlobal("SanMaze","ar1202",2)~GOTO SanFirkDung7
END

IF~~THEN BEGIN SanFirkDung7
SAY@571
IF~~THEN REPLY@572GOTO SanFirkDung8
END

IF~~THEN BEGIN SanFirkDung8
SAY@573
IF~~THEN REPLY@574GOTO SanFirkDung9
END

IF~~THEN BEGIN SanFirkDung9
SAY@575
IF~~THEN REPLY@576GOTO SanFirkDung10
IF~~THEN REPLY@577GOTO SanFirkDung10
IF~~THEN REPLY@578GOTO SanFirkDung10
IF~~THEN REPLY@579GOTO SanFirkDung10
END

IF~~THEN BEGIN SanFirkDung10
SAY@580
IF~~THEN REPLY@581GOTO SanFirkDung11
IF~~THEN REPLY@582GOTO SanFirkDung12
END

IF~~THEN BEGIN SanFirkDung11
SAY@583
IF~~THEN REPLY@582GOTO SanFirkDung13
END

IF~~THEN BEGIN SanFirkDung12
SAY@583
IF~~THEN REPLY@581GOTO SanFirkDung13
END

IF~~THEN BEGIN SanFirkDung13
SAY@584
IF~~THEN REPLY@585GOTO SanFirkDung14
END

IF~~THEN BEGIN SanFirkDung14
SAY@586
IF~~THEN REPLY@587EXIT
END

// Innershade
IF ~Global("SanINNERMAP","LOCALS",1) ~THEN BEGIN SanMoveInShad
SAY@588
IF~~THEN DO~
ClearAllActions()
                 SmallWait(2)
                 StartCutSceneMode()
                FadeToColor([30.0],0)
		Wait(2)
		ActionOverride(Player1,LeaveAreaLUA("arish1","",[2397.114],12))
		ActionOverride(Player2,LeaveAreaLUA("arish1","",[2397.114],10))
		ActionOverride(Player3,LeaveAreaLUA("arish1","",[2397.114],11))
		ActionOverride(Player4,LeaveAreaLUA("arish1","",[2397.114],12))
		ActionOverride(Player5,LeaveAreaLUA("arish1","",[2397.114],11))
		ActionOverride(Player6,LeaveAreaLUA("arish1","",[2397.114],10))
		ActionOverride("Pellig",LeaveAreaLUA("arish1","",[2397.114],11))
		ActionOverride("Haiass",LeaveAreaLUA("arish1","",[2397.114],10))
                FadeFromColor([30.0],0)
                EndCutSceneMode()
                SetGlobal("SanINNERMAP","LOCALS",2)~
EXIT
END


//Shar-Teel is Mother
IF~Global("SanSharInt","GLOBAL",35)~THEN BEGIN SanExtraDuty1
SAY @589
IF~~THEN REPLY @590GOTO  SanExtraDuty2
IF~~THEN REPLY @591GOTO  SanExtraDuty3
IF~~THEN REPLY @592GOTO  SanExtraDuty4
END

IF~~THEN BEGIN SanExtraDuty2
SAY@593
= @594
IF~~THEN REPLY @595DO ~SetGlobal("SanSharInt","GLOBAL",36)~EXIT
IF~~THEN REPLY @596DO ~SetGlobal("SanSharInt","GLOBAL",36)~EXIT
END

IF~~THEN BEGIN SanExtraDuty3
SAY@597
= @594
IF~~THEN REPLY @595DO ~SetGlobal("SanSharInt","GLOBAL",36)~EXIT
IF~~THEN REPLY @596DO ~SetGlobal("SanSharInt","GLOBAL",36)~EXIT
END


IF~~THEN BEGIN SanExtraDuty4
SAY@598
= @594
IF~~THEN REPLY @595DO ~SetGlobal("SanSharInt","GLOBAL",36)~EXIT
IF~~THEN REPLY @596DO ~SetGlobal("SanSharInt","GLOBAL",36)~EXIT
END

//Fishing for Trouble
IF~Global("SanCeren","LOCALS",1)~THEN BEGIN SanReqCeren1
SAY@599
IF~~THEN REPLY@600GOTO SanReqCeren2
IF~~THEN REPLY@601GOTO SanReqCeren3
END

IF~~THEN BEGIN SanReqCeren2
SAY@602
IF~~THEN REPLY@603DO~SetGlobal("SanCeren","LOCALS",2)~EXIT
END

IF~~THEN BEGIN SanReqCeren3
SAY@604
IF~~THEN REPLY@603DO~SetGlobal("SanCeren","LOCALS",2)~EXIT
END

IF~Global("SanCeren","LOCALS",3)~THEN BEGIN SanReqCerenSC1
SAY @605
IF~~THEN REPLY@606GOTO SanReqCerenSC2
IF~~THEN REPLY@607GOTO SanReqCerenSC3
END

IF~~THEN BEGIN SanReqCerenSC2
SAY @608
IF~~THEN REPLY@609DO~SetGlobal("SanCeren","LOCALS",4)~EXIT
END

IF~~THEN BEGIN SanReqCerenSC3
SAY @610
IF~~THEN REPLY@609DO~SetGlobal("SanCeren","LOCALS",4)~EXIT
END

IF~Global("SanCeren","LOCALS",5) ~THEN BEGIN SanPolyReady1
SAY@611
IF~~THEN REPLY@612GOTO SanPolyReady2
IF~~THEN REPLY@613 GOTO SanPolyReady2
IF~~THEN REPLY@614 GOTO SanPolyReady3
END

IF~~THEN BEGIN SanPolyReady2
SAY @615
IF~~THEN DO~SetGlobal("SanCeren","LOCALS",6) ~EXIT
END

IF~~THEN BEGIN SanPolyReady3
SAY @616
IF~~THEN DO~SetGlobal("SanCeren","LOCALS",6) ~EXIT
END

// Alternatives to Brynnlaw
IF~Global("SanBrynAltern","LOCALS",1)~THEN BEGIN TrySthNew1
SAY@617
IF~~THEN REPLY@618DO~SetGlobal("SanBrynAltern","LOCALS",2)~EXIT
IF~~THEN REPLY@619DO~SetGlobal("SanBrynAltern","LOCALS",2)~EXIT
IF~~THEN REPLY@620DO~SetGlobal("SanBrynAltern","LOCALS",2)~EXIT
END

IF~~THEN BEGIN TrySthNew2
SAY@621
IF~~THEN REPLY@622DO~SetGlobal("SanBrynAltern","LOCALS",3)~GOTO TrySthNew3
END

IF~~THEN BEGIN TrySthNew3
SAY@623
IF~~THEN REPLY@624GOTO TrySthNew4
IF~~THEN REPLY@625GOTO TrySthNew4
IF~~THEN REPLY@626GOTO TrySthNew4
END

IF~~THEN BEGIN TrySthNew4
SAY@627
IF~~THEN REPLY@628GOTO TrySthNew5
IF~~THEN REPLY@629GOTO TrySthNew5
END

IF~~THEN BEGIN TrySthNew5
SAY@630
IF~~THEN REPLY@631EXIT
END

IF~Global("SanBrynAltern","LOCALS",4)~THEN BEGIN TrySthNew6
SAY@632
IF~~THEN REPLY @633GOTO TrySthNew7
IF~~THEN REPLY@634GOTO TrySthNew7
END

IF~~THEN BEGIN TrySthNew7
SAY@635
IF~~THEN REPLY@636DO~SetGlobal("SanBrynAltern","LOCALS",5)~GOTO TrySthNew8
END

IF~~THEN BEGIN TrySthNew8
SAY@637
IF~~THEN REPLY@638EXIT
IF~~THEN REPLY@639EXIT
END

IF~Global("SanBrynAltern2","LOCALS",1)~THEN BEGIN TrySthNew16
SAY@632
IF~~THEN REPLY @640GOTO TrySthNew17
IF~~THEN REPLY@634GOTO TrySthNew17
END

IF~~THEN BEGIN TrySthNew17
SAY@641
IF~~THEN REPLY@636DO~SetGlobal("SanBrynAltern2","LOCALS",2)~GOTO TrySthNew18
END

IF~~THEN BEGIN TrySthNew18
SAY@642
IF~~THEN REPLY@643EXIT
IF~~THEN REPLY@644EXIT
END

//Bodhi First Battle
IF~Global("BoIrSibl","ar0800",1)~THEN BEGIN SanBodLassl
SAY@645
IF~~THEN REPLY@646DO~SetGlobal("BoIrSibl","ar0800",2)~GOTO SanBodLassl2
END

IF~~THEN BEGIN SanBodLassl2
SAY@647
IF~~THEN REPLY@648EXIT
IF~~THEN REPLY@649EXIT
END

//Bodhi' Abduction Attempt + Defeat
IF~Global("SanBodAttmpt","AR0800",2) ~THEN BEGIN SanBodAbdu1
SAY@650
IF~~THEN REPLY @651DO~SetGlobal("SanBodAttmpt","AR0800",3) ~GOTO SanBodAbdu2
END

IF~~THEN BEGIN SanBodAbdu2
SAY@652
IF~~THEN REPLY@653GOTO SanBodAbdu3
IF~OR(11)
GlobalGT("KiaraVampire","GLOBAL",0)
GlobalGT("K#SarahVampire","GLOBAL",0)
GlobalGT("VP_SimeVampire","GLOBAL",0)
GlobalGT("JaheiraVampire","GLOBAL",0)
GlobalGT("AerieVampire","GLOBAL",0)
GlobalGT("ViconiaVampire","GLOBAL",0)
GlobalGT("M#AmberVampire","GLOBAL",0)
GlobalGT("KimVampire","GLOBAL",0)
GlobalGT("LK#NindeAbducted","GLOBAL",0)
GlobalGT("G#TF.TyrisVampire","GLOBAL",0)
GlobalGT("PGNaliaVampire","GLOBAL",0)
~THEN REPLY@654GOTO SanBodAbdu3
IF~OR(9)
GlobalGT("ValygarVampire","GLOBAL",0)
GlobalGT("FHFVampire","GLOBAL",0)
GlobalGT("AnomenVampire","GLOBAL",0)
GlobalGT("C#AjantisVampire","GLOBAL",0)
GlobalGT("ADAngelVampire","GLOBAL",0)
GlobalGT("B!GavVampire","GLOBAL",0)
GlobalGT("EdwinVampire","GLOBAL",0)
GlobalGT("J#KelseyVampire","GLOBAL",0)
GlobalGT("Solavampire","GLOBAL",0)
~THEN REPLY@655GOTO SanBodAbdu3
END

IF~~THEN BEGIN SanBodAbdu3
SAY@656
IF~~THEN REPLY@657EXIT
IF~~THEN REPLY@658EXIT
END

IF~Global("SanBodAttmpt","AR0800",4) ~THEN BEGIN SanBodAbdu4
SAY@659
IF~~THEN REPLY@660GOTO  SanBodAbdu5
IF~~THEN REPLY@661GOTO  SanBodAbdu5
END

IF~~THEN BEGIN SanBodAbdu5
SAY@662
IF~~THEN REPLY@663DO~SetGlobal("SanBodAttmpt","AR0800",5) ~GOTO  SanBodAbdu6
END

IF~~THEN BEGIN SanBodAbdu6
SAY@664
IF~~THEN REPLY@665GOTO  SanBodAbdu7
END

IF~~THEN BEGIN SanBodAbdu7
SAY@666
IF~~THEN REPLY@667EXIT
IF~~THEN REPLY@668EXIT
IF~~THEN REPLY@669EXIT
END

// Sharkta Fai

IF~Global("Homesail","GLOBAL",13)~THEN BEGIN SanBHBrag1
SAY@670
IF~~THEN REPLY @671GOTO SanBHBrag2
IF~~THEN REPLY @672GOTO SanBHBrag2
END

IF~~THEN BEGIN SanBHBrag2
SAY @673
IF~~THEN REPLY @674DO ~SetGlobal("Homesail","GLOBAL",14) AddexperienceParty(5500)~EXIT
END

IF~Global("SanOtherWorld","GLOBAL",1)~THEN BEGIN SanOWWorried1
SAY@675
IF~~THEN REPLY @676GOTO SanOWWorried2
IF~~THEN REPLY @677GOTO SanOWWorried2
END

IF~~THEN BEGIN SanOWWorried2
SAY @678
IF~~THEN REPLY@679DO ~SetGlobal("SanOtherWorld","GLOBAL",2)~GOTO SanOWWorried3
END

IF~~THEN BEGIN SanOWWorried3
SAY @680
IF~~THEN REPLY@681GOTO SanOWWorried4
END

IF~~THEN BEGIN SanOWWorried4
SAY @682
IF~~THEN REPLY@683GOTO SanOWWorried5
END

IF~~THEN BEGIN SanOWWorried5
SAY @684
= @685
IF~~THEN REPLY@686 GOTO SanOWWorried6
IF~~THEN REPLY@687GOTO SanOWWorried7
END

IF~~THEN BEGIN SanOWWorried6
SAY @688
IF~~THEN REPLY@689EXIT
END

IF~~THEN BEGIN SanOWWorried7
SAY @690
IF~~THEN REPLY@689EXIT
END

IF~Global("SanHintFactory","GLOBAL",2)~THEN BEGIN EssFactry1
SAY@691
IF~~THEN REPLY@692DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO EssFactry2
IF~~THEN REPLY@693GOTO EssFactry2
END

IF~~THEN BEGIN EssFactry2
SAY@694
IF~~THEN REPLY@695DO~SetGlobal("SanHintFactory","GLOBAL",3)~GOTO EssFactry3
END

IF~~THEN BEGIN EssFactry3
SAY@696
IF~~THEN REPLY@697GOTO EssFactry5
IF~~THEN REPLY@698GOTO EssFactry4
END

IF~~THEN BEGIN EssFactry4
SAY@699
IF~~THEN GOTO EssFactry5
END

IF~~THEN BEGIN EssFactry5
SAY@700
IF~~THEN REPLY@701EXIT
END

IF~Global("SanHintFactory","GLOBAL",4)~THEN BEGIN EssFactry6
SAY@702
IF~~THEN REPLY@703DO~SetGlobal("SanHintFactory","GLOBAL",5)~GOTO EssFactry7
END

IF~~THEN BEGIN EssFactry7
SAY@704
=@705
=@706
IF~~THEN REPLY@707GOTO EssFactry8
END

IF~~THEN BEGIN EssFactry8
SAY@708
IF~~THEN REPLY@709GOTO EssFactry9
IF~~THEN REPLY@710GOTO EssFactry9
END

IF~~THEN BEGIN EssFactry9
SAY@711
IF~~THEN REPLY@712GOTO EssFactry10
END

IF~~THEN BEGIN EssFactry10
SAY@713
IF~~THEN REPLY@714GOTO EssFactry11
END

IF~~THEN BEGIN EssFactry11
SAY@715
IF~~THEN REPLY@716EXIT
END

IF~Global("SanHintFactory","GLOBAL",20)~THEN BEGIN Beattam1
SAY@717
IF~~THEN REPLY@718GOTO Beattam2
IF~~THEN REPLY@719GOTO Beattam2
END

IF~~THEN BEGIN  Beattam2
SAY@720
IF~~THEN REPLY@721GOTO Beattam3
IF~~THEN REPLY@722GOTO Beattam3
IF~~THEN REPLY@723GOTO Beattam3
END

IF~~THEN BEGIN  Beattam3
SAY@724
IF~~THEN REPLY@725DO~SetGlobal("SanHintFactory","GLOBAL",21)~EXIT
IF~~THEN REPLY@726DO~SetGlobal("SanHintFactory","GLOBAL",21)~EXIT
IF~~THEN REPLY@727DO~SetGlobal("SanHintFactory","GLOBAL",21)~EXIT
END

// Spellhold
IF~Global("SanSlayHelp","LOCALS",1)~THEN BEGIN SanPCWasSlayer1
SAY@728
=@729
IF ~~THEN REPLY @730GOTO SanPCWasSlayer5
IF ~~THEN REPLY @731GOTO SanPCWasSlayer2
END

IF~~THEN BEGIN SanPCWasSlayer2
SAY@732
IF ~~THEN REPLY @733GOTO SanPCWasSlayer3
END

IF~~THEN BEGIN SanPCWasSlayer3
SAY@734
IF ~~THEN REPLY @735GOTO SanPCWasSlayer4
IF ~~THEN REPLY @736GOTO SanPCWasSlayer7
END

IF~~THEN BEGIN SanPCWasSlayer4
SAY@737
IF~~THEN DO~SetGlobal("SanSlayHelp","LOCALS",5)~EXIT
END

IF~~THEN BEGIN SanPCWasSlayer5
SAY@738
IF ~~THEN REPLY @733GOTO SanPCWasSlayer3
IF~~THEN REPLY@739GOTO SanPCWasSlayer6
IF~~THEN REPLY@740
GOTO SanPCWasSlayer7
IF~~THEN REPLY@741GOTO SanPCWasSlayer9
END

IF~~THEN BEGIN SanPCWasSlayer6
SAY@742
IF~~THEN REPLY@740
GOTO SanPCWasSlayer7
IF~~THEN REPLY@743GOTO SanPCWasSlayer9
END

IF~~THEN BEGIN SanPCWasSlayer7
SAY@744
IF~~THEN REPLY@745GOTO SanPCWasSlayer8
END

IF~~THEN BEGIN SanPCWasSlayer8
SAY@132
IF~~THEN DO~SetGlobal("SanSlayHelp","LOCALS",5)~EXIT
END

IF~~THEN BEGIN SanPCWasSlayer9
SAY@746
IF~~THEN REPLY@747GOTO SanPCWasSlayer8
IF~~THEN REPLY@748GOTO SanPCWasSlayer8
END

IF~Global("SanSlayHelp","LOCALS",2)~THEN BEGIN SanPCWasSlayer11
SAY@749
=@729
IF ~~THEN REPLY @750DO~SetGlobal("SanSlayHelp","LOCALS",3)~EXIT
IF ~~THEN REPLY @751DO~SetGlobal("SanSlayHelp","LOCALS",3)~EXIT
END

IF~Global("SanSlayHelp","LOCALS",4)~THEN BEGIN SanPCWasSlayer21
SAY@752
IF ~~THEN REPLY @730GOTO SanPCWasSlayer5
IF ~~THEN REPLY @731GOTO SanPCWasSlayer2
END

IF~~THEN BEGIN SanPCWasSlayer22
SAY@752
IF ~~THEN REPLY @730GOTO SanPCWasSlayer5
IF ~~THEN REPLY @731GOTO SanPCWasSlayer2
END

IF~Global("SanElleRef","LOCALS",1)~Suldahint1
SAY@753
IF~~THEN REPLY@754GOTO Suldahint2
IF~~THEN REPLY@755GOTO Suldahint2
END

IF~~THEN BEGIN Suldahint2
SAY@756
IF~~THEN REPLY@757GOTO Suldahint3
END

IF~~THEN BEGIN Suldahint3
SAY@758
=@759
IF~~THEN REPLY@760DO ~SetGlobal("SanElleRef","LOCALS",2)~GOTO Suldahint4
END

IF~~THEN BEGIN Suldahint4
SAY@761
IF~~THEN REPLY@762EXIT
IF~~THEN REPLY@763EXIT
END

IF~Global("SanresearIr","LOCALS",2)~THEN BEGIN SansearchJItm1
SAY@764
IF~~THEN REPLY@765DO ~SetGlobal("SanresearIr","LOCALS",3) IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
IF~~THEN REPLY@766DO ~SetGlobal("SanresearIr","LOCALS",3) IncrementGlobal("Sanpoints","GLOBAL",-1)~EXIT
END

IF~Global("SanPCCanSlay","GLOBAL",1) ~THEN BEGIN SanDangeIns1
SAY@767
IF~~THEN REPLY@768GOTO SanDangeIns2
IF~~THEN REPLY@769GOTO SanDangeIns2
IF~~THEN REPLY@770GOTO SanDangeIns2
IF~~THEN REPLY@771GOTO SanDangeIns2
END

IF ~~THEN BEGIN SanDangeIns2
SAY@772
IF~~THEN REPLY@773GOTO SanDangeIns3
IF~~THEN REPLY@774GOTO SanDangeIns3
END

IF ~~THEN BEGIN SanDangeIns3
SAY@775
IF~~THEN REPLY@776DO~SetGlobal("SanPCCanSlay","GLOBAL",2) ~GOTO SanDangeIns4
END

IF ~~THEN BEGIN SanDangeIns4
SAY@777
IF~~THEN REPLY@778EXIT
IF~~THEN REPLY@779GOTO SanDangeIns5
IF~~THEN REPLY@780GOTO SanDangeIns5
IF~~THEN REPLY@781GOTO SanDangeIns5
END

IF ~~THEN BEGIN SanDangeIns5
SAY@782
IF~~THEN EXIT
END

//Underdark
IF~Global("UcmMatronDrow","GLOBAL",2)~THEN BEGIN UDWelcome1
SAY@783
IF~~THEN REPLY@784GOTO UDWelcome2
IF~~THEN REPLY@785GOTO UDWelcome2
END

IF~~THEN BEGIN UDWelcome2
SAY@786
=@787
IF~~THEN REPLY@788DO~SetGlobal("UcmMatronDrow","GLOBAL",3)~GOTO UDWelcome3
END

IF~~THEN BEGIN UDWelcome3
SAY@789
=@790
IF~~THEN REPLY@791GOTO UDWelcome4
END

IF~~THEN BEGIN UDWelcome4
SAY@792
IF~~THEN REPLY@793EXIT
IF~~THEN REPLY@794EXIT
END

IF~Global("SanFLead","ar2200",1)~THEN BEGIN SanFemDrow1
SAY@795
IF~~THEN REPLY@796DO~SetGlobal("SanFLead","ar2200",2)~GOTO SanFemDrow2
END

IF~~THEN BEGIN SanFemDrow2
SAY@797
IF~~THEN REPLY@798DO~IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
IF~~THEN REPLY@799DO~IncrementGlobal("Sanpoints","GLOBAL",-2)~GOTO SanFemDrow3
IF~InParty("Yasraena")~THEN REPLY@800GOTO SanFemDrow4
IF~InParty("Viconia")~THEN REPLY@801GOTO SanFemDrow5
IF~InParty("Imoen2")~THEN REPLY@802GOTO SanFemDrow6
IF~InParty("M#Amber")~THEN REPLY@803GOTO SanFemDrow7
IF~InParty("Kiyone")~THEN REPLY@804GOTO SanFemDrow7
IF~InParty("Jaheira")~THEN REPLY@805GOTO SanFemDrow7
IF~InParty("Aerie")~THEN REPLY@806GOTO SanFemDrow8
IF~InParty("kim")~THEN REPLY@807GOTO SanFemDrow7
IF~InParty("Saerileth")~THEN REPLY@808GOTO SanFemDrow7
IF~InParty("Nalia")~THEN REPLY@809GOTO SanFemDrow9
IF~InParty("RChloe")~THEN REPLY@810GOTO SanFemDrow7
IF~InParty("CVShau")~THEN REPLY@811GOTO SanFemDrow7
IF~InParty("MWAriena")~THEN REPLY@812GOTO SanFemDrow10
IF~InParty("k#sheena")~THEN REPLY@813GOTO SanFemDrow7
IF~~THEN REPLY@814DO~IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SanFemDrow11
END

IF~~THEN BEGIN SanFemDrow3
SAY@815
IF~~THEN REPLY@816EXIT
IF~~THEN REPLY@817EXIT
IF~~THEN REPLY@818EXIT
END

IF~~THEN BEGIN SanFemDrow4
SAY@819
IF~~THEN REPLY@820GOTO SanFemDrow11
IF~~THEN REPLY@821EXIT
END

IF~~THEN BEGIN SanFemDrow5
SAY@822
IF~~THEN REPLY@820GOTO SanFemDrow11
IF~~THEN REPLY@821EXIT
END

IF~~THEN BEGIN SanFemDrow6
SAY@823
IF~~THEN REPLY@820GOTO SanFemDrow11
IF~~THEN REPLY@821EXIT
END

IF~~THEN BEGIN SanFemDrow7
SAY@824
IF~~THEN REPLY@825GOTO SanFemDrow11
IF~~THEN REPLY@821EXIT
END

IF~~THEN BEGIN SanFemDrow8
SAY@826
IF~~THEN REPLY@825GOTO SanFemDrow11
IF~~THEN REPLY@821EXIT
END

IF~~THEN BEGIN SanFemDrow9
SAY@827
IF~~THEN REPLY@825GOTO SanFemDrow11
IF~~THEN REPLY@821EXIT
END

IF~~THEN BEGIN SanFemDrow10
SAY@828
IF~~THEN REPLY@825GOTO SanFemDrow11
IF~~THEN REPLY@821EXIT
END

IF~~THEN BEGIN SanFemDrow11
SAY@829
IF~~THEN REPLY@830DO~IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
IF~~THEN REPLY@831EXIT
IF~~THEN REPLY@832DO~IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
END

IF~Global("SanUsePrevi","AR2200",1)~THEN BEGIN UseDrowPriv1
SAY@833
IF~~THEN REPLY@834DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO UseDrowPriv2
IF~~THEN REPLY@835DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~GOTO UseDrowPriv2
IF~~THEN REPLY@836DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~GOTO UseDrowPriv2
IF~~THEN REPLY@837GOTO UseDrowPriv2
END

IF~~THEN BEGIN UseDrowPriv2
SAY@838
IF~~THEN REPLY@839DO~SetGlobal("SanUsePrevi","AR2200",2) ~GOTO UseDrowPriv3
IF~~THEN REPLY@840DO~SetGlobal("SanUsePrevi","AR2200",2) ~GOTO UseDrowPriv3
END

IF~~THEN BEGIN UseDrowPriv3
SAY@841
IF~~THEN REPLY@842GOTO UseDrowPriv4
END

IF~~THEN BEGIN UseDrowPriv4
SAY@843
=@844
IF~~THEN REPLY@845EXIT
END

IF~Global("SanProph2","ar2100",1)~THEN BEGIN SanErrGith
SAY@846
IF~~THEN REPLY@847DO~SetGlobal("SanProph2","ar2100",2)~GOTO SanErrGith2
END

IF~~THEN BEGIN SanErrGith2
SAY@848
IF~~THEN REPLY@849EXIT
IF~~THEN REPLY@850EXIT
IF~~THEN REPLY@851GOTO SanErrGith3
END

IF~~THEN BEGIN SanErrGith3
SAY@852
IF~~THEN REPLY@853EXIT
END

IF~Global("SanDrowSleep","LOCALS",1)~THEN BEGIN SanDrwLuv1
SAY@854
IF~Global("SanRomPath","GLOBAL",1)~THEN REPLY@855DO~SetGlobal("SanDrowSleep","LOCALS",2)~GOTO SanDrwLuv2
IF~Global("SanRomPath","GLOBAL",2)~THEN REPLY@855DO~SetGlobal("SanDrowSleep","LOCALS",2)~GOTO SanDrwLuv4
END

IF~~THEN BEGIN SanDrwLuv2
SAY@856
IF~~THEN REPLY@857GOTO SanDrwLuv3
IF~~THEN REPLY@858GOTO SanDrwLuv3
END

IF~~THEN BEGIN SanDrwLuv3
SAY@859
=@860
IF~~THEN DO~RestParty()~EXIT
END

IF~~THEN BEGIN SanDrwLuv4
SAY@861
IF~~THEN REPLY@862GOTO SanDrwLuv5
IF~~THEN REPLY@863GOTO SanDrwLuv6
END

IF~~THEN BEGIN SanDrwLuv5
SAY@864
=@860
IF~~THEN DO~RestParty()~EXIT
END

IF~~THEN BEGIN SanDrwLuv6
SAY@865
IF~~THEN REPLY@857GOTO SanDrwLuv3
IF~~THEN REPLY@858GOTO SanDrwLuv3
END

IF~Global("SanDrowSleep","LOCALS",3)~THEN BEGIN SanDrwLuv7
SAY@866
IF~~THEN REPLY@867GOTO SanDrwLuv8
IF~~THEN REPLY@868GOTO SanDrwLuv9
IF~~THEN REPLY@869GOTO SanDrwLuv8
END

IF~~THEN BEGIN SanDrwLuv8
SAY@870
IF~~THEN DO~SetGlobal("SanDrowSleep","LOCALS",4)~EXIT
END

IF~~THEN BEGIN SanDrwLuv9
SAY@871
IF~~THEN DO~SetGlobal("SanDrowSleep","LOCALS",4)~EXIT
END

IF~Global("SanSola","GLOBAL",1)~THEN BEGIN SanWarnIntr1
SAY@872
IF~~THEN REPLY@873GOTO SanWarnIntr2
IF~~THEN REPLY@874GOTO SanWarnIntr2
IF~~THEN REPLY@875GOTO SanWarnIntr2
END

IF~~THEN BEGIN SanWarnIntr2
SAY@876
IF~~THEN REPLY@877DO~SetGlobal("SanSola","GLOBAL",2)~GOTO SanWarnIntr3
END

IF~~THEN BEGIN SanWarnIntr3
SAY@878
IF~~THEN REPLY@879GOTO SanWarnIntr4
IF~~THEN REPLY@880GOTO SanWarnIntr4
END

IF~~THEN BEGIN SanWarnIntr4
SAY@881
IF~~THEN REPLY@882GOTO SanWarnIntr6
IF~~THEN REPLY@883GOTO SanWarnIntr5
END

IF~~THEN BEGIN SanWarnIntr5
SAY@884
IF~~THEN GOTO SanWarnIntr6
END

IF~~THEN BEGIN SanWarnIntr6
SAY@885
=@886
IF~Global("SanRomPath","GLOBAL",1)~THEN REPLY@887GOTO SanWarnIntr8
IF~Global("SanRomPath","GLOBAL",2)~THEN REPLY@887GOTO SanWarnIntr7
END

IF~~THEN BEGIN SanWarnIntr7
SAY@888
IF~~THEN REPLY@889EXIT
IF~~THEN REPLY@890EXIT
IF~~THEN REPLY@891EXIT
END

IF~~THEN BEGIN SanWarnIntr8
SAY@892
IF~~THEN REPLY@893EXIT
IF~~THEN REPLY@894EXIT
IF~~THEN REPLY@895EXIT
END

IF~Global("SanSola","GLOBAL",3) ~THEN BEGIN SanWarnIntr11
SAY@896
IF~~THEN REPLY@897GOTO SanWarnIntr13
IF~~THEN REPLY@898GOTO SanWarnIntr13
IF~Global("SanRomPath","GLOBAL",1)~THEN REPLY@899GOTO SanWarnIntr14
IF~Global("SanRomPath","GLOBAL",2)~THEN REPLY@900GOTO SanWarnIntr19
IF~~THEN REPLY@901GOTO SanWarnIntr12
END

IF~~THEN BEGIN SanWarnIntr12
SAY@902
IF~~THEN DO~SetGlobal("SanSola","GLOBAL",4) IncrementGlobal("Sanpoints","GLOBAL",6)~EXIT
END 

IF~~THEN BEGIN SanWarnIntr13
SAY@903
IF~~THEN REPLY@904GOTO SanWarnIntr12
IF~~THEN REPLY@905GOTO
SanWarnIntr15
END

IF~~THEN BEGIN SanWarnIntr14
SAY@906
IF~~THEN REPLY@907GOTO SanWarnIntr17
END

IF~~THEN BEGIN SanWarnIntr15
SAY@908
IF~~THEN REPLY@909GOTO SanWarnIntr16
IF~~THEN REPLY@910GOTO SanWarnIntr12
END

IF~~THEN BEGIN SanWarnIntr16
SAY@911
=@912
IF~~THEN REPLY@913DO~SetGlobal("SanSola","GLOBAL",4) IncrementGlobal("Sanpoints","GLOBAL",-10)~EXIT
END

IF~~THEN BEGIN SanWarnIntr17
SAY@914
IF~~THEN REPLY@915GOTO SanWarnIntr18
END

IF~~THEN BEGIN SanWarnIntr18
SAY@916
IF~~THEN REPLY@917DO~SetGlobal("SanSola","GLOBAL",4) IncrementGlobal("Sanpoints","GLOBAL",4)~EXIT
IF~~THEN REPLY@918GOTO SanWarnIntr16
IF~~THEN REPLY@919DO~SetGlobal("SanSola","GLOBAL",4) IncrementGlobal("Sanpoints","GLOBAL",4)~EXIT
END

IF~~THEN BEGIN SanWarnIntr19
SAY@920
IF~~THEN GOTO SanWarnIntr13
END

IF~Global("SanSola","GLOBAL",5)~THEN BEGIN SanWarnIntr21
SAY@921
IF~~THEN REPLY@922GOTO SanWarnIntr22
IF~~THEN REPLY@923GOTO SanWarnIntr22
IF~~THEN REPLY@924DO~SetGlobal("SanSola","GLOBAL",6) IncrementGlobal("Sanpoints","GLOBAL",-4)~EXIT
END

IF~~THEN BEGIN SanWarnIntr22
SAY@925
=@926
IF~~THEN REPLY@927DO~SetGlobal("SanSola","GLOBAL",6) IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SanWarnIntr23
END

IF~~THEN BEGIN SanWarnIntr23
SAY@928
IF~~THEN REPLY@929GOTO SanWarnIntr24
END

IF~~THEN BEGIN SanWarnIntr24
SAY@930
IF~~THEN REPLY@931EXIT
END

// PID Package 15 - Leaving Underdark

IF ~IsGabber(Player1) Global("SanPidPack","GLOBAL",15) ~THEN BEGIN SanPCInit15
SAY @932
IF ~RandomNum(4,1) !AreaType(DUNGEON)~THEN REPLY@933GOTO SanBedPid11
IF ~RandomNum(4,2)!AreaType(DUNGEON)~THEN REPLY@933GOTO SanBedPid12
IF ~RandomNum(4,3)!AreaType(DUNGEON)~THEN REPLY@933GOTO SanBedPid13
IF ~RandomNum(4,4)!AreaType(DUNGEON)~THEN REPLY@933GOTO SanBedPid14
IF ~RandomNum(2,1)!AreaType(DUNGEON)~THEN REPLY@934GOTO SanPdHung1
IF ~RandomNum(2,2)!AreaType(DUNGEON)~THEN REPLY@934GOTO SanPdHung2
IF~RandomNum(2,1) AreaType(DUNGEON)~THEN REPLY@935GOTO SanPdLiDung1
IF~RandomNum(2,2) AreaType(DUNGEON)~THEN REPLY@935GOTO SanPdLiDung2
IF ~Global("SanMysRise","GLOBAL",2)~THEN REPLY @14GOTO SanMysSucc11
IF~GlobalGT("C#AjantisRitterSuche","GLOBAL",0) Global("SanGoldBall","LOCALS",0) PartyHasItem("C#Ajgk")~THEN REPLY@45GOTO SanGlobAjanMiss1
IF ~GlobalGT("SanFlirt","GLOBAL",19) Global("SanMysRise","GLOBAL",3)~THEN REPLY @15GOTO SanBLine11
IF~GlobalGT("SanHintFactory","GLOBAL",9) !See("CVShauq") Global("SanSharkTru","LOCALS",0)~THEN REPLY@20GOTO SharkTru1
IF~Global("CVGodag","GLOBAL",9) Global("CVGodagJon","GLOBAL",1)~THEN REPLY@375DO~SetGlobal("CVGodag","GLOBAL",10)~GOTO GodagBG22
IF~Global("PoolHealT","CVSHA7",4)~THEN REPLY@21DO~SetGlobal("PoolHealT","CVSHA7",5)~GOTO PoolTalk17
IF~Global("ys_FindElminster","GLOBAL",1) Global("SanAskLief","LOCALS",0) ~THEN REPLY @23GOTO SanAskLief1
IF~Global("KangaxxQuest","GLOBAL",1) Global("SanKangAdv","LOCALS",0)~THEN REPLY @25GOTO SanKanAdv1
IF ~Global("SanPelltru","LOCALS",1)~THEN REPLY@28GOTO SanPelltru4
IF~GlobalGT("GettingApprentices","GLOBAL",0) Global("SanPCHassphere","GLOBAL",0) ~THEN REPLY@24GOTO SanSphereAdv1
IF~Global("SanVampWDQuest","GLOBAL",16)~THEN REPLY@43GOTO DoWDVampQ6
IF~Global("SANSHARINT","GLOBAL",26)GlobalGT("Chapter","GLOBAL",13) Global("SanBabewait","LOCALS",0)!AreaType(CITY)~THEN REPLY@29GOTO SanBabewait1
IF~Global("PurskInf","LOCALS",0) OR(2) PartyHasItem("DDPkMap") AreaCheck("dd1900") ~THEN REPLY@936GOTO SanPurskTalk1
IF~Global("SanDesTroll","LOCALS",2) NumItemsPartyLT("arow04",5) AreaType(FOREST)  ~THEN REPLY@31GOTO SanAcArF2
IF~Global("SanDesTroll","LOCALS",2) NumItemsPartyLT("arow04",5) !AreaType(FOREST)  ~THEN REPLY@31GOTO SanAcArNF2
IF ~Global("EshpkInf","LOCALS",0) PartyHasItem("DDMap01")~THEN REPLY@376GOTO  SanEshpTalk1
IF~Global("SanNewArm","GLOBAL",5)~THEN REPLY@36GOTO SanmysarmDream1
IF~Global("CbPartyIsInSoubarMilitia","GLOBAL",7) Global("SanCbCasAdv","LOCALS",0)~THEN REPLY@37GOTO SanLyarTyp1
IF~Global("SankangFull","LOCALS",2) GlobalLT("UsedCrypt0331","GLOBAL",2)~THEN REPLY@38GOTO SanTombkanEnt32
IF~Global("SanMekCurse","GLOBAL",1)~THEN REPLY@39GOTO MekCurse2
IF~Global("SanProph","GLOBAL",3)~THEN REPLY@378GOTO FishPrie1
IF~Global("SanProph","GLOBAL",7) GlobalGT("udMind","GLOBAL",39)~THEN REPLY@379GOTO FishPrie11
IF~Global("SanNecroHa","LOCALS",2)~THEN REPLY@41EXTERN BSANDR SanNecrohate4
IF~Global("SanKhalBlood","GLOBAL",1)~THEN REPLY @937EXTERN CVSANDRJ SanAneWeavTh7
IF~Global("SanSaerFight","GLOBAL",8)InParty("Saerileth")~THEN REPLY@938GOTO SansaeFiTlk1
IF~GlobalGT("SanAdrianL","Global",5) Global("SanAskAdrian","LOCALS",0)InParty("RH#Adrian")~THEN REPLY @18DO~SetGlobal("SanAskAdrian","LOCALS",1)~GOTO SanAdri1
IF~GlobalGT("SanAranH","GLOBAL",9) Global("SanAskAran","LOCALS",0)InParty("C-Aran")~THEN REPLY @19DO~SetGlobal("SanAskAran","LOCALS",1)~GOTO SanAranL1
IF~Global("SanKhalBlood","GLOBAL",3)~THEN REPLY @939GOTO SanMysSeekr1
IF~Global("SanSharInt","GLOBAL",37) AreaType(OUTDOOR) Global("SanBabeToo","LOCALS",0)~THEN REPLY @44GOTO SanBabeHave1
IF~Global("SanKhalBlood","GLOBAL",5) !AreaCheck("CVElm1") !AreaCheck("CVElm2")!AreaCheck("CVElm3")!AreaCheck("CVElm4")~THEN REPLY @940GOTO FindSRBook1
IF~Global("SanKhalBlood","GLOBAL",13) ~THEN REPLY@941GOTO SanHeriMyst7
IF~Global("SanKhalBlood","GLOBAL",12) RealGlobalTimerExpired("SanDreamTalkTime","GLOBAL")~THEN REPLY@942GOTO SanHeriMyst1
IF~Global("SanKhalBlood","GLOBAL",14) ~THEN REPLY@943GOTO SanHeriMyst13
IF~OR(2) Global("SanIntEllesInt1","GLOBAL",1) Global("SanIntEllesInt1","GLOBAL",1) ~THEN REPLY @944GOTO SanQuilBef1
IF~GlobalGT("SanKhalBlood","GLOBAL",9) Global("SanIntEllesInt1","GLOBAL",0)~THEN REPLY @944GOTO SanQuilBef11
IF~GlobalGT("SheinaTalk","GLOBAL",0)OR(3) AreaCheck("ARPO05")AreaCheck("ARPO06")AreaCheck("ARPO07")~THEN REPLY @945GOTO SanHealTDD1
IF~Global("SanXephRet","GLOBAL",7)PartyHasItem("SANAKAK")~THEN REPLY @946DO~SetGlobal("SanXephRet","GLOBAL",8)~EXIT
IF~Global("SaerilethBetrothed","GLOBAL",1)Global("SanSaerMarry","LOCALS",0)~THEN REPLY@947GOTO Marrysaer1
IF~InParty("ADAngel") !AreaCheck("ar0800") Global("CVAngelRev","LOCALS",0)~THEN REPLY@46GOTO SanAdSarD
IF~~THEN REPLY@50GOTO SanHamCl2
IF~~THEN REPLY@51EXIT
END

IF~~THEN BEGIN SanAdri1
SAY@948
=@949
IF~~THEN REPLY@950DO~IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SanAdri2
END

IF~~THEN BEGIN SanAdri2
SAY@951
IF~~THEN REPLY@952EXIT
IF~~THEN REPLY@953EXIT
IF~~THEN REPLY@954EXIT
END

IF~~THEN BEGIN SanAranL1
SAY@948
=@949
IF~~THEN REPLY@950DO~IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SanAdri2
END

IF~~THEN BEGIN SanHealTDD1
SAY@955
IF~~THEN REPLY@956EXIT
END

IF~~THEN BEGIN FindSRBook1
SAY@957
IF~~THEN REPLY@958DO~SetGlobal("SanKhalBlood","GLOBAL",6)~GOTO FindSRBook2
IF~~THEN REPLY@959EXIT
END

IF~~THEN BEGIN FindSRBook2
SAY@960
IF~~THEN REPLY@961GOTO FindSRBook3
END

IF~~THEN BEGIN FindSRBook3
SAY@962
IF~~THEN REPLY@963GOTO FindSRBook4
IF~Global("GodGuess3","LOCALS",0)~THEN REPLY@964GOTO FindSRBook5
IF~Global("GodGuess1","LOCALS",0)~THEN REPLY@965GOTO FindSRBook6
IF~~THEN REPLY@966GOTO FindSRBook10
IF~Global("GodGuess2","LOCALS",0)~THEN REPLY@967GOTO FindSRBook7
IF~Global("GodGuessE","LOCALS",0)~THEN REPLY@968GOTO FindSRBook8
END

IF~~THEN BEGIN FindSRBook4
SAY@969
IF~~THEN GOTO FindSRBook3
END

IF~~THEN BEGIN FindSRBook5
SAY@970
IF~~THEN DO~SetGlobal("GodGuess3","LOCALS",1)~GOTO FindSRBook3
END

IF~~THEN BEGIN FindSRBook6
SAY@971
IF~~THEN DO~SetGlobal("GodGuess1","LOCALS",1)~GOTO FindSRBook3
END

IF~~THEN BEGIN FindSRBook7
SAY@972
IF~~THEN DO~SetGlobal("GodGuess2","LOCALS",1)~GOTO FindSRBook3
END

IF~~THEN BEGIN FindSRBook8
SAY@973
IF~~THEN DO~SetGlobal("GodGuessE","LOCALS",1)~GOTO FindSRBook3
END

IF~~THEN BEGIN FindSRBook10
SAY@974
IF~~THEN REPLY@975GOTO FindSRBook11
END

IF~~THEN BEGIN FindSRBook11
SAY@976
IF~~THEN REPLY@977GOTO FindSRBook12
END

IF~~THEN BEGIN FindSRBook12
SAY@978
IF~~THEN REPLY@979GOTO FindSRBook13
IF~~THEN REPLY@980GOTO FindSRBook13
END

IF~~THEN BEGIN FindSRBook13
SAY@981
IF~~THEN DO~RealSetGlobalTimer("GodGuessT","LOCALS",1800)~EXIT
END

IF~~THEN BEGIN SanMysSeekr1
SAY@982
IF~~THEN REPLY@983GOTO SanMysSeekr2
IF~~THEN REPLY@984GOTO SanMysSeekr2
END

IF~~THEN BEGIN SanMysSeekr2
SAY@985
IF~~THEN REPLY@986
DO~SetGlobal("SanKhalBlood","GLOBAL",4)~GOTO SanMysSeekr3
END

IF~~THEN BEGIN SanMysSeekr3
SAY@987
IF~~THEN REPLY@988GOTO SanMysSeekr4
IF~~THEN REPLY@989GOTO SanMysSeekr4
IF~~THEN REPLY@990GOTO SanMysSeekr4
END

IF~~THEN BEGIN SanMysSeekr4
SAY@991
=@992
IF~~THEN REPLY@993GOTO SanMysSeekr5
IF~~THEN REPLY@994GOTO SanMysSeekr5
END

IF~~THEN BEGIN SanMysSeekr5
SAY@995
IF~~THEN REPLY@996EXIT
IF~~THEN REPLY@997DO~IncrementGlobal("Sanpoints","GLOBAL",2)~EXIT
END

IF~~THEN BEGIN GodagBG22
SAY@998
IF~~THEN REPLY@999GOTO GodagBG23
END

IF~~THEN BEGIN GodagBG23
SAY@1000
IF~~THEN REPLY@1001GOTO GodagBG24
IF~~THEN REPLY@1002GOTO GodagBG24
IF~~THEN REPLY@1003GOTO GodagBG24
END

IF~~THEN BEGIN GodagBG24
SAY@1004
IF~~THEN REPLY@1005GOTO GodagBG25
IF~~THEN REPLY@1006GOTO GodagBG25
END

IF~~THEN BEGIN GodagBG25
SAY@1007
IF~~THEN REPLY@1008DO~AddexperienceParty(4700)~EXIT
END

IF~Global("CVGodag","GLOBAL",12)~THEN BEGIN GodagBG31
SAY@1009
IF~~THEN REPLY@1010GOTO GodagBG32
IF~~THEN REPLY@1011GOTO GodagBG32
IF~~THEN REPLY@1012GOTO GodagBG32
END

IF~~THEN BEGIN GodagBG32
SAY@1013
=@1014
IF~~THEN REPLY@1015DO~AddexperienceParty(4700) SetGlobal("CVGodag","GLOBAL",13)~EXIT
IF~~THEN REPLY@1016DO~AddexperienceParty(5700) SetGlobal("CVGodag","GLOBAL",13)~EXIT
END

IF~~THEN BEGIN SanAneWeavTh7
SAY@1017
IF~~THEN REPLY@1018GOTO SanAneWeavTh9
IF~~THEN REPLY@1019GOTO SanAneWeavTh8
END

IF~~THEN BEGIN SanAneWeavTh8
SAY@1020
IF~~THEN REPLY@1021GOTO SanAneWeavTh9
IF~~THEN REPLY@1022EXIT
END

IF~~THEN BEGIN SanAneWeavTh9
SAY@1023
IF~~THEN REPLY@1024GOTO SanAneWeavTh10
IF~~THEN REPLY@1025GOTO SanAneWeavTh10
END

IF~~THEN BEGIN SanAneWeavTh10
SAY@1026
IF~~THEN REPLY@1027DO~SetGlobal("SanKhalBlood","GLOBAL",2)~GOTO SanAneWeavTh11
END

IF~~THEN BEGIN SanAneWeavTh11
SAY@1028
=@1029
IF~~THEN REPLY@1030EXIT
IF~~THEN REPLY@1031EXIT
IF~~THEN REPLY@1032EXIT
END

IF~~THEN BEGIN SansaeFiTlk1
SAY@1033
IF~~THEN REPLY@1034GOTO SansaeFiTlk2
IF~~THEN REPLY@1035GOTO SansaeFiTlk2
IF~~THEN REPLY@1036GOTO SansaeFiTlk2
END

IF~~THEN BEGIN SansaeFiTlk2
SAY@1037
=@1038
IF~~THEN REPLY@1039DO~SetGlobal("SanSaerFight","GLOBAL",9)~GOTO SansaeFiTlk3
END

IF~~THEN BEGIN SansaeFiTlk3
SAY@1040
IF~~THEN REPLY@1041GOTO SansaeFiTlk4
IF~~THEN REPLY@1042GOTO SansaeFiTlk4
END

IF~~THEN BEGIN SansaeFiTlk4
SAY@1043
IF~~THEN REPLY@1044EXIT
IF~~THEN REPLY@1045EXIT
IF~~THEN REPLY@1046EXIT
END

IF~~THEN BEGIN Marrysaer1
SAY@1047
IF~~THEN REPLY@1048DO~SetGlobal("SanSaerMarry","LOCALS",1) ~GOTO Marrysaer2
END

IF~~THEN BEGIN Marrysaer2
SAY@1049
IF~~THEN REPLY@1050GOTO Marrysaer3
IF~~THEN REPLY@1051GOTO Marrysaer3
END

IF~~THEN BEGIN Marrysaer3
SAY@1052
IF~~THEN REPLY@1053GOTO Marrysaer4
IF~~THEN REPLY@1054GOTO Marrysaer5
END

IF~~THEN BEGIN Marrysaer4
SAY@1055
IF~~THEN REPLY@1056GOTO Marrysaer6
IF~~THEN REPLY@1057GOTO Marrysaer6
END

IF~~THEN BEGIN Marrysaer5
SAY@1058
IF~~THEN REPLY@1056GOTO Marrysaer6
IF~~THEN REPLY@1057GOTO Marrysaer6
END

IF~~THEN BEGIN Marrysaer6
SAY@1059
=@1060
IF~~THEN REPLY@1061EXIT
IF~~THEN REPLY@1062EXIT
IF~~THEN REPLY@1063EXIT
END

IF~Global("SaeWait","Ar0900",2)~THEN BEGIN SanSaeragainTemp
SAY@1064
IF~~THEN REPLY@1065DO~CreateCreatureObjectOffScreen("Saerilet",Myself,0,0,0) SetGlobal("SaeWait","Ar0900",0) ~EXIT
IF~~THEN REPLY@1066DO~SetGlobal("SaeWait","Ar0900",1) RealSetGlobalTimer("AR0900SaerRetry","GLOBAL",1500)~EXIT
IF~~THEN REPLY@1067DO~SetGlobal("SaeWait","Ar0900",1) RealSetGlobalTimer("AR0900SaerRetry","GLOBAL",1500)~EXIT
END

IF~~THEN BEGIN SanPdLiDung1
SAY@1068
IF~~THEN EXIT
END

IF~~THEN BEGIN SanPdLiDung2
SAY@1069
IF~~THEN EXIT
END

IF~~THEN BEGIN SanPdHung1
SAY@1070
IF~~THEN EXIT
END

IF~~THEN BEGIN SanPdHung2
SAY@1071
IF~~THEN EXIT
END

IF~~THEN BEGIN SanBedPid11
SAY@1072
IF~~THEN REPLY@1073DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~EXIT
END

IF~~THEN BEGIN SanBedPid12
SAY@1074
IF~~THEN DO~SetGlobal("SanTwrLo","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("CVTwrLo")~EXIT
END

IF~~THEN BEGIN SanBedPid13
SAY@1075
IF~~THEN REPLY@1076DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~EXIT
END

IF~~THEN BEGIN SanBedPid14
SAY@1077
IF~~THEN DO~SetGlobal("SanTwrLo","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("CVTwrLo")~EXIT
END

IF~~THEN BEGIN SanQuilBef1
SAY@1078
IF~~THEN REPLY@1079DO~SetGlobal("SanIntEllesInt1","GLOBAL",2)  SetGlobal("SanIntEllesInt2","GLOBAL",2)~GOTO SanQuilBef2
END

IF~~THEN BEGIN SanQuilBef2
SAY@1080
=@1081
IF~~THEN REPLY@1082EXIT
IF~~THEN REPLY@1083EXIT
END

IF~~THEN BEGIN SanQuilBef11
SAY@1084
IF~~THEN REPLY@1085DO~SetGlobal("SanIntEllesInt1","GLOBAL",2)  SetGlobal("SanIntEllesInt2","GLOBAL",2)~GOTO SanQuilBef2
END

IF~Global("SanTwrLo","GLOBAL",1) ~THEN BEGIN SanTowrLo1
SAY@1086
IF~~THEN REPLY@1087GOTO SanTowrLo2
END

IF~~THEN BEGIN SanTowrLo2
SAY@1088
IF~~THEN REPLY@1089 GOTO SanTowrLo3
END

IF~~THEN BEGIN SanTowrLo3
SAY@1090
IF~~THEN REPLY@1091 GOTO SanTowrLo4
END

IF~~THEN BEGIN SanTowrLo4
SAY@1092
IF~~THEN REPLY@1093 GOTO SanTowrLo5
END

IF~~THEN BEGIN SanTowrLo5
SAY@1094
IF~~THEN REPLY@1093 DO~ ClearAllActions() StartCutSceneMode() StartCutScene("CVTwrLoR")~EXIT
END

IF~Global("SanTwrLo","GLOBAL",2) ~THEN BEGIN SanTowrLo11
SAY@1095
IF~~THEN REPLY@1096GOTO SanTowrLo12
END

IF~~THEN BEGIN SanTowrLo12
SAY@1097
IF~~THEN REPLY@1098GOTO SanTowrLo13
END

IF~~THEN BEGIN SanTowrLo13
SAY@1099
IF~~THEN REPLY@1100GOTO SanTowrLo14
END

IF~~THEN BEGIN SanTowrLo14
SAY@1101
IF~~THEN REPLY@1102GOTO SanTowrLo15
END

IF~~THEN BEGIN SanTowrLo15
SAY@1103
IF~~THEN REPLY@1104 DO~ ClearAllActions() StartCutSceneMode() StartCutScene("CVTwrLoR")~EXIT
END

//The Book That Writes Itself
IF~Global("SanKhalBlood","GLOBAL",7)~THEN BEGIN FindSRBook21
SAY@1105
IF~~THEN REPLY@1106GOTO FindSRBook22
IF~~THEN REPLY@1107GOTO FindSRBook22
END

IF~~THEN BEGIN FindSRBook22
SAY@1108
IF~~THEN REPLY@1109DO~SetGlobal("SanKhalBlood","GLOBAL",8)~GOTO FindSRBook23
END

IF~~THEN BEGIN FindSRBook23
SAY@1110
IF~Global("CVAR1402","GLOBAL",1)~THEN REPLY@1111GOTO FindSRBook24
IF ~~THEN REPLY@1112GOTO FindSRBook24
END

IF~~THEN BEGIN FindSRBook24
SAY@1113
IF~~THEN REPLY@1114GOTO FindSRBook25
IF~~THEN REPLY@1115GOTO FindSRBook25
IF~~THEN REPLY@1116GOTO FindSRBook25
END

IF~~THEN BEGIN FindSRBook25
SAY@1117
IF~~THEN REPLY@1118DO~RestParty()~EXIT
IF~~THEN REPLY@1119DO~RestParty()~EXIT
IF~~THEN REPLY@1120DO~RestParty()~EXIT
END

IF~Global("SanKhalBlood","GLOBAL",11)~BEGIN SanWHoIam1
SAY@1121
IF~~THEN REPLY@1122GOTO SanWHoIam2
IF~~THEN REPLY@1123GOTO SanWHoIam2
END

IF~~THEN BEGIN SanWHoIam2
SAY@1124
IF~~THEN DO~SetGlobal("SanKhalBlood","GLOBAL",12) RealSetGlobalTimer("SanDreamTalkTime","GLOBAL",TWENTY_MINUTES) StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~EXIT
END

IF~~THEN BEGIN SanHeriMyst1
SAY@1125
IF~~THEN REPLY@1126GOTO SanHeriMyst2
END

IF~~THEN BEGIN SanHeriMyst2
SAY@1127
IF~~THEN REPLY@1128GOTO SanHeriMyst3
IF~~THEN REPLY@1129GOTO SanHeriMyst3
END

IF~~THEN BEGIN SanHeriMyst3
SAY@1130
IF~~THEN REPLY@1131GOTO SanHeriMyst5
END

IF~~THEN BEGIN SanHeriMyst5
SAY@1132
=@1133
IF~~THEN REPLY@1134GOTO SanHeriMyst6
END

IF~~THEN BEGIN SanHeriMyst6
SAY@1135
=@1136
IF~~THEN REPLY@1137DO~SetGlobal("SanKhalBlood","GLOBAL",13)~EXIT
IF~~THEN REPLY@1138DO~SetGlobal("SanKhalBlood","GLOBAL",14)~GOTO SanHeriMyst7
END

IF~~THEN BEGIN SanHeriMyst7
SAY@1139
IF~~THEN REPLY@1140GOTO SanHeriMyst8
END

IF~~THEN BEGIN SanHeriMyst8
SAY@1141
IF~~THEN REPLY@1142GOTO SanHeriMyst9
END

IF~~THEN BEGIN SanHeriMyst9
SAY@1143
IF~~THEN REPLY@1144GOTO SanHeriMyst10
END

IF~~THEN BEGIN SanHeriMyst10
SAY@1145
IF~~THEN REPLY@1146GOTO SanHeriMyst11
END

IF~~THEN BEGIN SanHeriMyst11
SAY@1147
IF~~THEN REPLY@1148GOTO SanHeriMyst12
IF~~THEN REPLY@1149GOTO SanHeriMyst12
IF~~THEN REPLY@1150 GOTO SanHeriMyst12
END

IF~~THEN BEGIN SanHeriMyst12
SAY@1151
IF~~THEN DO~SetGlobal("SanKhalBlood","GLOBAL",14)~EXIT
END

IF~~THEN BEGIN SanHeriMyst13
SAY@1152
=@1153
=@1154
IF~~THEN REPLY@1155DO~SetGlobal("SanKhalBlood","GLOBAL",15)~GOTO SanHeriMyst14
IF~~THEN REPLY@1156DO~SetGlobal("SanKhalBlood","GLOBAL",15)~GOTO SanHeriMyst14
END

IF~~THEN BEGIN SanHeriMyst14
SAY@1157
IF~~THEN REPLY@1158GOTO SanHeriMyst17
IF~~THEN REPLY@1159GOTO SanHeriMyst16
IF~~THEN REPLY@1160GOTO SanHeriMyst15
END

IF~~THEN BEGIN SanHeriMyst15
SAY@1161
IF~~THEN REPLY@1162EXIT
END

IF~~THEN BEGIN SanHeriMyst16
SAY@1163
IF~~THEN REPLY@1162EXIT
END

IF~~THEN BEGIN SanHeriMyst17
SAY@1161
IF~~THEN REPLY@1164EXIT
END

IF~~THEN BEGIN SharkTru1
SAY@1165
IF~~THEN REPLY@1166DO~SetGlobal("SanSharkTru","LOCALS",1)~GOTO SharkTru2
END

IF~~THEN BEGIN SharkTru2
SAY@1167
IF~~THEN REPLY@1168GOTO SharkTru3
IF~~THEN REPLY@1169GOTO SharkTru4
END

IF~~THEN BEGIN SharkTru3
SAY@1170
IF~~THEN REPLY@1171GOTO SharkTru5
END

IF~~THEN BEGIN SharkTru5
SAY@1172
IF~~THEN REPLY@1173GOTO SharkTru6
IF~~THEN REPLY@1174GOTO SharkTru4
END

IF~~THEN BEGIN SharkTru4
SAY@1175
IF~~THEN REPLY@1176DO~SetGlobal("SanSharkTru","LOCALS",2)~GOTO SharkTru7
END

IF~~THEN BEGIN SharkTru7
SAY@1177
IF~~THEN REPLY@1178GOTO SharkTru8
END

IF~~THEN BEGIN SharkTru8
SAY@1170
IF~~THEN REPLY@1171GOTO SharkTru10
END

IF~~THEN BEGIN SharkTru10
SAY@1172
IF~~THEN REPLY@1173GOTO SharkTru6
END

IF~~THEN BEGIN SharkTru6
SAY@1179
IF~~THEN REPLY@1180EXIT
IF~GlobalLT("SanSharkTru","LOCALS",2)~THEN REPLY@1174GOTO SharkTru11
END

IF~~THEN BEGIN SharkTru11
SAY@1175
IF~~THEN REPLY@1176DO~SetGlobal("SanSharkTru","LOCALS",2)~GOTO SharkTru12
END

IF~~THEN BEGIN SharkTru12
SAY@1177
IF~~THEN REPLY@1181EXIT
END

IF~Global("PoolHealT","CVSHA7",1) ~THEN BEGIN PoolTalk1
SAY@1182
IF~Global("SanSharkTru","LOCALS",2)~THEN REPLY@1183GOTO PoolTalk8
IF~!Global("SanSharkTru","LOCALS",2)~THEN REPLY@1184GOTO PoolTalk2
END

IF~~THEN BEGIN PoolTalk2
SAY@1170
IF~~THEN REPLY@1171GOTO PoolTalk3
END

IF~~THEN BEGIN PoolTalk3
SAY@1172
IF~~THEN REPLY@1173GOTO PoolTalk4
IF~~THEN REPLY@1174GOTO PoolTalk5
END

IF~~THEN BEGIN PoolTalk4
SAY@1179
IF~~THEN REPLY@1180GOTO PoolTalk8
IF~GlobalLT("SanSharkTru","LOCALS",2)~THEN REPLY@1174GOTO PoolTalk5
END

IF~~THEN BEGIN PoolTalk5
SAY@1175
IF~~THEN REPLY@1176DO~SetGlobal("SanSharkTru","LOCALS",2)~GOTO PoolTalk8
END

IF~~THEN BEGIN PoolTalk8
SAY@1185
IF~~THEN REPLY@1186GOTO PoolTalk9
IF~~THEN REPLY @1187GOTO PoolTalk9
END

IF~~THEN BEGIN PoolTalk9
SAY@1188
IF~~THEN REPLY@1189GOTO PoolTalk10
END

IF~~THEN BEGIN PoolTalk10
SAY@1190
IF~~THEN REPLY @1191GOTO PoolTalk11
IF~~THEN REPLY@1192GOTO PoolTalk11
END

IF~~THEN BEGIN PoolTalk11
SAY@1193
IF~~THEN REPLY @1194GOTO PoolTalk12
END

IF~~THEN BEGIN PoolTalk12
SAY@1195
=@1196
IF~~THEN REPLY @1197GOTO PoolTalk13
END

IF~~THEN BEGIN PoolTalk13
SAY@1198
IF~~THEN DO~SetGlobal("PoolHealT","CVSHA7",2) AddexperienceParty(18000) RealSetGlobalTimer("Entershar","CVSha7",60) ~EXIT
END

IF~Global("PoolHealT","CVSHA7",3)~THEN BEGIN PoolTalk14
SAY@1199
IF~~THEN REPLY @1200GOTO PoolTalk15
IF~~THEN REPLY @1201GOTO PoolTalk15
IF~~THEN REPLY @1202GOTO PoolTalk15
END

IF~~THEN BEGIN PoolTalk15
SAY@1203
=@1204
IF~~THEN REPLY @1205GOTO PoolTalk16
END

IF~~THEN BEGIN PoolTalk16
SAY@1206
IF~~THEN REPLY@1207DO~SetGlobal("PoolHealT","CVSHA7",4)~EXIT
IF~~THEN REPLY@21DO~SetGlobal("PoolHealT","CVSHA7",5)~GOTO PoolTalk17
END

IF~~THEN BEGIN PoolTalk17
SAY@1208
=@1209
IF~~THEN EXIT
END


//Waterdeep Vampire Quest
IF~Global("SanVampWDQuest","GLOBAL",6)~THEN BEGIN ForgotWDVampQ1
SAY@1210
IF~~THEN REPLY@1211GOTO ForgotWDVampQ2
IF~~THEN REPLY@1212GOTO ForgotWDVampQ3
END

IF~~THEN BEGIN ForgotWDVampQ2
SAY@1213
IF~~THEN DO~SetGlobal("SanVampWDQuest","GLOBAL",7) IncrementGlobal("Sanpoints","GLOBAL",-1) SetGlobal("SANWDho","GLOBAL",1)~EXIT
END

IF~~THEN BEGIN ForgotWDVampQ3
SAY@1214
IF~~THEN DO~SetGlobal("SanVampWDQuest","GLOBAL",7) IncrementGlobal("Sanpoints","GLOBAL",-3) SetGlobal("SANWDho","GLOBAL",1)~EXIT
END

IF~Global("SanVampWDQuest","GLOBAL",15)~THEN BEGIN DoWDVampQ1
SAY@1215
IF~~THEN REPLY@1216DO~SetGlobal("SanVampWDQuest","GLOBAL",16)~
GOTO DoWDVampQ2
END

IF~~THEN BEGIN DoWDVampQ2
SAY@1217
IF~~THEN REPLY@1218DO~IncrementGlobal("Sanpoints","GLOBAL",-3)~GOTO DoWDVampQ3
IF~~THEN REPLY@1219DO~IncrementGlobal("Sanpoints","GLOBAL",5) ~GOTO DoWDVampQ4
END

IF~~THEN BEGIN DoWDVampQ3
SAY@1220
IF~~THEN REPLY@1221GOTO DoWDVampQ4
END

IF~~THEN BEGIN DoWDVampQ4
SAY@1222
IF~~THEN REPLY@1223GOTO DoWDVampQ5
END

IF~~THEN BEGIN DoWDVampQ5
SAY@1224
IF~~THEN REPLY@1225DO~SetGlobal("SanVampWDQuest","GLOBAL",17)~GOTO DoWDVampQ6
IF~~THEN REPLY@1226EXIT
END

IF~~THEN BEGIN DoWDVampQ6
SAY@1227
IF~!Global("SanVampWDQuest","GLOBAL",17)~THEN DO~SetGlobal("SanVampWDQuest","GLOBAL",17) ClearAllActions() SetInterrupt(FALSE) Wait(4) TextScreen("VampVis") ~EXIT
IF~Global("SanVampWDQuest","GLOBAL",17)~THEN DO~ClearAllActions() SetInterrupt(FALSE) Wait(4) TextScreen("VampVis") ~EXIT
END

IF~Global("SanVampWDQuest","GLOBAL",23)~THEN BEGIN DoWDVampQF
SAY@1228
IF~~THEN REPLY@1229DO~SetGlobal("SanVampWDQuest","GLOBAL",24)~EXIT
END

IF~~THEN BEGIN SanSphereAdv1
SAY@1230
IF~~THEN REPLY@1231DO~SetGlobal("SanPCHassphere","GLOBAL",1)~GOTO SanSphereAdv2
END

IF~~THEN BEGIN SanSphereAdv2
SAY@1232
IF~~THEN REPLY@1233GOTO SanSphereAdv3
IF~~THEN REPLY@1234GOTO SanSphereAdv3
END

IF~~THEN BEGIN SanSphereAdv3
SAY@1235
IF~~THEN REPLY@1236GOTO SanSphereAdv4
IF~~THEN REPLY@1237GOTO SanSphereAdv4
END

IF~~THEN BEGIN SanSphereAdv4
SAY@1238
IF~~THEN REPLY@1239EXIT
END

IF~Global("SanMaltese","LOCALS",1)~THEN BEGIN Ybgirq1
SAY@1240
IF~~THEN REPLY@1241GOTO Ybgirq2
IF~~THEN REPLY@1242GOTO Ybgirq2
IF~~THEN REPLY@1243GOTO Ybgirq2
END

IF~~THEN BEGIN Ybgirq2
SAY@1244
IF~Global("Sanrompath","GLOBAL",1)~THEN REPLY@1245DO~SetGlobal("SanMaltese","LOCALS",2)~GOTO Ybgirq3m
IF~Global("Sanrompath","GLOBAL",2)~THEN REPLY@1245DO~SetGlobal("SanMaltese","LOCALS",2)~GOTO Ybgirq3f
END

IF~~THEN BEGIN Ybgirq3m
SAY@1246
IF~~THEN EXIT
END

IF~~THEN BEGIN Ybgirq3f
SAY@1247
IF~~THEN EXIT
END

IF~Global("SanMaltese","LOCALS",3)~THEN BEGIN Ybgirq11
SAY@1248
IF~~THEN REPLY@1249DO~SetGlobal("SanMaltese","LOCALS",4)~GOTO  Ybgirq12
IF~~THEN REPLY@1250DO~SetGlobal("SanMaltese","LOCALS",4)~GOTO  Ybgirq12
END

IF~~THEN BEGIN Ybgirq12
SAY@1251
IF~~THEN REPLY@1252EXIT
IF~~THEN REPLY@1253EXIT
END

//========================================================================
// SHADOW OF Amn Interjects
END
//========================================================================


// Yoshimo
INTERJECT_COPY_TRANS YOSHIMO 42 SanYoshDun
== CVSandrJ IF ~InParty("CVSandr") ~THEN @1254
== YOSHIMO IF ~InParty("CVSandr") ~THEN @1255
== CVSandrJ IF ~InParty("CVSandr") ~THEN @1256
== YOSHIMO IF ~InParty("CVSandr") ~THEN @1257
== CVSandrJ IF ~InParty("CVSandr") ~THEN @462
END

INTERJECT_COPY_TRANS YOSHIMO 6 SanYoshDunNoImo
== CVSandrJ IF ~InParty("CVSandr") ~THEN @1254
== YOSHIMO IF ~InParty("CVSandr") ~THEN @1255
== CVSandrJ IF ~InParty("CVSandr") ~THEN @1256
== YOSHIMO IF ~InParty("CVSandr") ~THEN @1257
== CVSandrJ IF ~InParty("CVSandr") ~THEN @462
END

// Freeing Tabitha
INTERJECT BEAST 0 SanPelligFreeTab
==  PELLIG IF ~InParty("CVSandr") InMyArea("Pellig")~THEN @1258
=@1259
== BEAST IF ~InParty("CVSandr") InMyArea("Pellig")~THEN @1260
== CVSandrJ IF ~InParty("CVSandr") InMyArea("Pellig")~THEN @1261
== BEAST IF ~InParty("CVSandr") InMyArea("Pellig")~THEN @1262
==  PELLIG IF ~InParty("CVSandr") InMyArea("Pellig")~THEN @1263
= @1264
END BEAST 77

INTERJECT HLKETTA 0 SanSlavHuntAnk
== CVSandrJ IF~InParty("CVSandr") Global("SanSacroll","GLOBAL",6) ~THEN @1265
== HLSION IF~InParty("CVSandr") Global("SanSacroll","GLOBAL",6) ~THEN @1266
== HLKETTA IF~InParty("CVSandr") Global("SanSacroll","GLOBAL",6) ~THEN @1267
== CVSandrJ IF~InParty("CVSandr") Global("SanSacroll","GLOBAL",6) ~THEN @1268
== HLSion IF~InParty("CVSandr") ~THEN @1269DO~SetGlobal("TalkedToHlsion","GLOBAL",2) SetGlobal("TalkedToHlketta","GLOBAL",2) ForceSpell(Myself,DRYAD_TELEPORT)~
== HLKETTA IF~InParty("CVSandr") ~THEN @1270DO~ActionOverride("hlketta",DestroySelf()) SetGlobal("TalkedToHlsion","GLOBAL",2)  SetGlobal("TalkedToHlketta","GLOBAL",2) ForceSpell(Myself,DRYAD_TELEPORT) ~EXIT

//Shadow Thieves
INTERJECT_COPY_TRANS RENAL 14 SanRenaTip
== CVSandrJ IF~InParty("CVSandr")~THEN @1271
== RENAL IF~InParty("CVSandr")~THEN @1272
== RENAL IF~InParty("CVSandr") Global("SanRomPath","GLOBAL",1)~THEN @1273
== RENAL IF~InParty("CVSandr") Global("SanRomPath","GLOBAL",2)~THEN@1274
== CVSandrJ IF~InParty("CVSandr")~THEN @1275
END

INTERJECT_COPY_TRANS RENAL 63 SanRenaTip2
== CVSandrJ IF~InParty("CVSandr")~THEN @1276 END


//Neeber
INTERJECT NEEBER 3 SanKnowsfaml
== CVSandrJ IF~InParty("CVSandr")~THEN @1277
== NEEBER IF~InParty("CVSandr")~THEN @1278
== CVSandrJ IF~InParty("CVSandr")~THEN @1279
== NEEBER IF~InParty("CVSandr")~THEN @1280
END NEEBER 16

//Keldorn
INTERJECT_COPY_TRANS KELDOR 22 SanMeetKel1
== CVSandrJ IF~InParty("CVSandr") GlobalGT("SanHelmDogmas","GLOBAL",11) ~THEN @1281
== KELDOR IF~InParty("CVSandr") GlobalGT("SanHelmDogmas","GLOBAL",11) ~THEN @1282
== CVSandrJ IF~InParty("CVSandr") GlobalGT("SanHelmDogmas","GLOBAL",11) ~THEN @1283
== KELDOR IF~InParty("CVSandr") GlobalGT("SanHelmDogmas","GLOBAL",11) ~THEN @1284
= @1285
== CVSandrJ IF~InParty("CVSandr") GlobalGT("SanHelmDogmas","GLOBAL",11) ~THEN @1286
== KELDOR IF~InParty("CVSandr") GlobalGT("SanHelmDogmas","GLOBAL",11) ~THEN @1287
END

INTERJECT_COPY_TRANS KELDOR 26 SanMeetKel2
== CVSandrJ IF~InParty("CVSandr") GlobalGT("SanHelmDogmas","GLOBAL",11) ~THEN @1281
== KELDOR IF~InParty("CVSandr") GlobalGT("SanHelmDogmas","GLOBAL",11) ~THEN @1288
== CVSandrJ IF~InParty("CVSandr") GlobalGT("SanHelmDogmas","GLOBAL",11) ~THEN @1283
== KELDOR IF~InParty("CVSandr") GlobalGT("SanHelmDogmas","GLOBAL",11) ~THEN @1284
= @1285
== CVSandrJ IF~InParty("CVSandr") GlobalGT("SanHelmDogmas","GLOBAL",11) ~THEN @1286
== KELDOR IF~InParty("CVSandr") GlobalGT("SanHelmDogmas","GLOBAL",11) ~THEN @1287
END

INTERJECT_COPY_TRANS KELDOR 18 SanMeetKel3
== CVSandrJ IF~InParty("CVSandr") GlobalGT("SanHelmDogmas","GLOBAL",11) ~THEN @1289
== KELDOR IF~InParty("CVSandr") GlobalGT("SanHelmDogmas","GLOBAL",11) ~THEN @1288
== CVSandrJ IF~InParty("CVSandr") GlobalGT("SanHelmDogmas","GLOBAL",11) ~THEN @1283
== KELDOR IF~InParty("CVSandr") GlobalGT("SanHelmDogmas","GLOBAL",11) ~THEN @1284
= @1285
== CVSandrJ IF~InParty("CVSandr") GlobalGT("SanHelmDogmas","GLOBAL",11) ~THEN @1286
== KELDOR IF~InParty("CVSandr") GlobalGT("SanHelmDogmas","GLOBAL",11) ~THEN @1287
END

//Paladin Stronghold
INTERJECT HurgisF 4 SanTrickF
==CVSandrJ IF~InParty("CVSandr")~THEN @1290
== HurgisF IF~InParty("CVSandr")~THEN @1291
==CVSandrJ IF~InParty("CVSandr")~THEN @1292
END
++@1293EXTERN HurgisF 13
++@1294EXTERN HurgisF 14

INTERJECT HurgisR 4 SanTrickR
==CVSandrJ IF~InParty("CVSandr")~THEN @1290
DO~SetGlobal("HurgisHere","GLOBAL",1)~
== HurgisR IF~InParty("CVSandr")~THEN @1295
==CVSandrJ IF~InParty("CVSandr")~THEN @1296
== HurgisR IF~InParty("CVSandr")~THEN @1297
END HurgisR 9

//Shar-Teel in Amn
INTERJECT IF_FILE_EXISTS Sharthug 0 SharInJail
== CVSandrJ IF ~InParty("CVSandr") GlobalGT("SanSharInt","GLOBAL",20) ~THEN@1298
== Sharthug IF ~InParty("CVSandr") GlobalGT("SanSharInt","GLOBAL",20) ~THEN@1299
END Sharthug 2

//Mekrath
INTERJECT_COPY_TRANS MEKRAT 16 SanMekCurse
== CVSandrJ IF ~InParty("CVSandr")~THEN@1300
==MEKRAT IF ~InParty("CVSandr")~THEN@1301
== CVSandrJ IF ~InParty("CVSandr")~THEN@1302
END

//Hear Dalis 1st meeting
INTERJECT_COPY_TRANS HAERDA 0 SanHaerRel1
== CVSandrJ IF ~InParty("CVSandr")~THEN@1303
==HAERDA IF ~InParty("CVSandr")~THEN@1304
== CVSandrJ IF ~InParty("CVSandr")~THEN@1305
==HAERDA IF ~InParty("CVSandr")~THEN@1306
= @1307
== CVSandrJ IF ~InParty("CVSandr")~THEN@1308
==HAERDA IF ~InParty("CVSandr")~THEN@1309
END

INTERJECT_COPY_TRANS HAERDA 25 SanHaerRel2
== CVSandrJ IF ~InParty("CVSandr")~THEN@1303
==HAERDA IF ~InParty("CVSandr")~THEN@1304
== CVSandrJ IF ~InParty("CVSandr")~THEN@1305
==HAERDA IF ~InParty("CVSandr")~THEN@1306
= @1307
== CVSandrJ IF ~InParty("CVSandr")~THEN@1308
==HAERDA IF ~InParty("CVSandr")~THEN@1309
END

INTERJECT PPireni2 19 CVGodagJon
== CVSandrJ IF ~InParty("CVSandr")Global("CVGodag","GLOBAL",9)~THEN@1310
==PPireni2 IF ~InParty("CVSandr")Global("CVGodag","GLOBAL",9)~THEN @1311
== CVSandrJ IF ~InParty("CVSandr")Global("CVGodag","GLOBAL",9)~THEN@1312
==PPireni2 IF ~InParty("CVSandr")Global("CVGodag","GLOBAL",9)~THEN @1313
=@1314
==CVSandrJ IF ~InParty("CVSandr")Global("CVGodag","GLOBAL",9)~THEN@1315
==PPireni2 IF ~InParty("CVSandr")Global("CVGodag","GLOBAL",9)~THEN @1316
==CVSandrJ IF ~InParty("CVSandr")Global("CVGodag","GLOBAL",9)~THEN@1317
==PPireni2 IF ~InParty("CVSandr")Global("CVGodag","GLOBAL",9)~THEN@1318
END PPireni2 19


//Underdark
INTERJECT_COPY_TRANS UDSOLA01 79 SanMeetsPhaere
== CVSandrJ IF ~InParty("CVSandr") Global("SanRomPath","GLOBAL",1)~THEN@1319
== UDSOLA01 IF ~InParty("CVSandr") Global("SanRomPath","GLOBAL",1)~THEN@1320
==UDPHAE01 IF ~InParty("CVSandr") Global("SanRomPath","GLOBAL",1)~THEN@1321
=@1322
END

INTERJECT UDSOLA01 104 SanSolSnif
== CVSandrJ IF ~InParty("CVSandr")~THEN@1323
== UDSOLA01 IF ~InParty("CVSandr")~THEN@1324
== CVSandrJ IF ~InParty("CVSandr")~THEN@1325
== UDSOLA01 IF ~InParty("CVSandr")~THEN@1326
END UDSOLA01 107

INTERJECT UDSOLA01 103 SanSolSnifa
== CVSandrJ IF ~InParty("CVSandr")~THEN@1323
DO~SetGlobal("SanSolSnif","Global",1)~
== UDSOLA01 IF ~InParty("CVSandr")~THEN@1324
== CVSandrJ IF ~InParty("CVSandr")~THEN@1325
== UDSOLA01 IF ~InParty("CVSandr")~THEN@1326
END UDSOLA01 107

INTERJECT UDSOLA01 102 SanSolSnifb
== CVSandrJ IF ~InParty("CVSandr")~THEN@1323
DO~SetGlobal("SanSolSnif","Global",1)~
== UDSOLA01 IF ~InParty("CVSandr")~THEN@1324
== CVSandrJ IF ~InParty("CVSandr")~THEN@1325
== UDSOLA01 IF ~InParty("CVSandr")~THEN@1326
END UDSOLA01 107

INTERJECT_COPY_TRANS UDARDUL 65 SanMMInt1b
== UDARDUL IF ~InParty("CVSandr")~THEN@1327
==UDPHAE01 IF ~InParty("CVSandr")~THEN@1328
== UDARDUL IF ~InParty("CVSandr")~THEN@1329
=@1330
== CVSandrJ IF ~InParty("CVSandr")~THEN@1331
== UDARDUL IF ~InParty("CVSandr")~THEN@1332
END

INTERJECT JARLAXLE 40 SanJarNotso2
== CVSandrJ IF ~InParty("CVSandr") ~THEN@1333
== JARLAXLE IF ~InParty("CVSandr") ~THEN@1334
== JARLAXLE IF ~InParty("CVSandr") Global("SanRomPath","GLOBAL",1)~THEN@1335
== JARLAXLE IF ~InParty("CVSandr") Global("SanRomPath","GLOBAL",2)~THEN@1336
== CVSandrJ IF ~InParty("CVSandr") ~THEN@1337
== JARLAXLE IF ~InParty("CVSandr") ~THEN@1338
== JARLAXLE IF ~InParty("CVSandr") Global("SanRomPath","GLOBAL",2) ~THEN@1339
== CVSandrJ IF ~InParty("CVSandr") ~THEN@1340
== JARLAXLE IF ~InParty("CVSandr") ~THEN@1341DO~CreateCreature("breg03",[300.427],2)CreateCreature("breg03",[340.370],2) ActionOverride("breg01",Enemy())
Enemy()~
END JARLAXLE 41

INTERJECT JARLAXLE 38 SanJarNotso1
== CVSandrJ IF ~InParty("CVSandr") ~THEN@1333
== JARLAXLE IF ~InParty("CVSandr") ~THEN@1334
== JARLAXLE IF ~InParty("CVSandr") Global("SanRomPath","GLOBAL",1)~THEN@1335
== JARLAXLE IF ~InParty("CVSandr") Global("SanRomPath","GLOBAL",2)~THEN@1336
== CVSandrJ IF ~InParty("CVSandr") ~THEN@1337
== JARLAXLE IF ~InParty("CVSandr") ~THEN@1338
== JARLAXLE IF ~InParty("CVSandr") Global("SanRomPath","GLOBAL",2) ~THEN@1339
== CVSandrJ IF ~InParty("CVSandr") ~THEN@1340
== JARLAXLE IF ~InParty("CVSandr") ~THEN@1341DO~CreateCreature("breg03",[300.427],2)CreateCreature("breg03",[340.370],2) ActionOverride("breg01",Enemy())
Enemy()~
END JARLAXLE 41

INTERJECT_COPY_TRANS Player1 33 SanTreeLife
==Player1 IF~InParty("CVSandr") ~THEN @1342
== CVSandrJ IF ~InParty("CVSandr")~THEN @1343
==Player1 IF~InParty("CVSandr") ~THEN @1344
=@1345DO~IncrementGlobal("Sanpoints","GLOBAL",20)~
END

//Valygar's Friends
INTERJECT_COPY_TRANS IF_FILE_EXISTS Valran01 0 Sanderrik
==CVSandrJ IF ~InParty("CVSandr")Global("SanValgyR","GLOBAL",0)~THEN@1346
== Valran01 IF ~InParty("CVSandr")Global("SanValgyR","GLOBAL",0)~THEN@1347
== CVSandrJ IF ~InParty("CVSandr")Global("SanValgyR","GLOBAL",0)~THEN@1348
== Valran01 IF ~InParty("CVSandr")Global("SanValgyR","GLOBAL",0)~THEN@1349
== Valran01 IF ~InParty("CVSandr")Global("SanValgyR","GLOBAL",0)~THEN@1350
== CVSandrJ IF ~InParty("CVSandr")Global("SanValgyR","GLOBAL",0)~THEN@1351
== Valran01 IF ~InParty("CVSandr")Global("SanValgyR","GLOBAL",0)~THEN@1352
END

INTERJECT_COPY_TRANS Imoen2 19 SanImoReAsy
== CVSandrJ IF~InParty("CVSandr")~THEN@1353DO~ActionOverride("CVSandr",ReallyForceSpell("Imoen2",CLERIC_HEAL))~
==Imoen2 IF~InParty("CVSandr")~THEN@1354
== CVSandrJ IF~InParty("CVSandr")~THEN@1355END


//========================================================================
// CHAIN Below
//========================================================================

//Irenicus Dungeon

CHAIN
IF ~~THEN CVSandrJ BG2Reunion16
@1356
==IF_FILE_EXISTS D#Silver IF~InParty("D#Silver")~THEN @1357
==CVSandrJ IF~InParty("D#Silver")~THEN @1358
==IF_FILE_EXISTS D#Silver IF~InParty("D#Silver")~THEN @1359
==CVSandrJ IF~InParty("D#Silver")~THEN @1360
END
++ @1361EXIT


// Athkatla Promenade

CHAIN
IF ~Global("waukleofree","GLOBAL",1)~THEN CVSANDRJ PellFreeLeo
@1362
DO~SetGlobal("waukleofree","GLOBAL",2)~
== PELLIG @1363
==  CVSandrJ @1364
== PELLIG @1363
EXIT

CHAIN
IF ~Global("waukleofree","GLOBAL",4) ~THEN CVSANDRJ PellFreeLeo2
@1365
DO~SetGlobal("waukleofree","GLOBAL",5)~
== PELLIG @1366
==  CVSandrJ @1367
END
++ @1368+ PellFreeLeo3
++ @1369+ PellFreeLeo4

CHAIN
IF~~THEN CVSANDRJ PellFreeLeo3
@1370EXIT

CHAIN
IF~~THEN CVSANDRJ PellFreeLeo4
@1371EXIT

//SanSunRitual
CHAIN
IF~~THEN CVSANDRJ SanSunRitual
@1372
==SHAAVA01 @1373
== CVSandrJ @1374
=@1375
= @1376
 ==SHAAVA01 @1377
 =@1378
== CVSandrJ @1379
=@1380
=@1381
==SHAAVA01 @1382
== CVSandrJ @1383
=@1384
=@1385
==SHAAVA01 @1386
END
++@1387EXTERN SHAAVA01 12

//Survival Solaufein
CHAIN
IF~~THEN CVSANDRJ NotKillSola
@1388
==UDSOLA01@1389
== CVSandrJ @1390
==UDSOLA01@1391
== CVSandrJ @1392
==UDSOLA01@1393
== CVSandrJ @1394
==UDSOLA01@1395
== CVSandrJ @1396
==UDSOLA01@1397
==CVSandrJ @1398
==UDSOLA01@1399
END
++@1400EXTERN UDSOLA01 128

CHAIN
IF~~THEN CVSANDRJ SanUDJarlAgain
@1401
==BREG01@1402
END
++@1403EXTERN BREG01 8

CHAIN
IF WEIGHT #-18~!InPartySlot(LastTalkedToBy,0) Gender(Player1,MALE) IsGabber("CVSandr") Global("SolaufeinJob","GLOBAL",5)Global("PhaereJob","GLOBAL",1) Global("SanRiva","LOCALS",0)~THEN UDPHAE01 sanRival
@1404
DO~SetGlobal("SanRiva","LOCALS",1)~
==CVSandrJ@1405
==UDPHAE01@1406
==CVSandrJ@1407
==UDPHAE01@1408
==CVSandrJ@1409
==UDPHAE01@1090EXIT

//========================================================================
// APPEND Below
//========================================================================
APPEND IMOEN2J

IF ~~THEN BEGIN BG2ReunionImo
SAY @1410
=@1411
IF ~~THEN EXTERN CVSANDRJ BG2Reunion10
END
END

APPEND JAHEIRAJ
IF ~~THEN BEGIN BG2ReunionJah
SAY @1412
IF ~~THEN EXTERN CVSANDRJ BG2Reunion11
END
END

APPEND MINSCJ
IF~~THEN BEGIN BG2ReunionMinsc
SAY @1413
IF ~~THEN EXTERN CVSANDRJ BG2Reunion12
END
END


APPEND Wulfg2J 
IF~~THEN BEGIN BG2Reunionwul
SAY @1414
IF ~~THEN EXTERN CVSANDRJ BG2Reunion14
END
END

APPEND IDJinni
IF WEIGHT #-5~PartyHasItem("misc4d")Global("CVGodag","GLOBAL",8)~THEN BEGIN NotDag1
SAY@1415
IF~~THEN REPLY@1416GOTO NotDag2
END

IF~~THEN BEGIN NotDag2
SAY@1417
IF~~THEN DO~SetGlobal("CVGodag","GLOBAL",9) AddJournalEntry(@60907,QUEST)~GOTO 12
END
END


APPEND BEAST
IF~~THEN BEGIN 77
SAY@1418
  IF ~~THEN DO ~OpenDoor("DOOR19")
OpenDoor("DOOR20")
OpenDoor("DOOR21")
OpenDoor("DOOR22")
OpenDoor("DOOR23")
OpenDoor("DOOR24")
ActionOverride("Tabitha",ChangeAIScript("Randwalk",OVERRIDE)) 
ActionOverride("Tabitha",Ally())
Enemy()
~EXIT
END
END

APPEND IF_FILE_EXISTS ACBreJ
IF~~THEN BEGIN BG2ReunionBre
SAY @1419
IF ~~THEN EXTERN CVSANDRJ BG2Reunion13
END
END

APPEND IF_FILE_EXISTS RCHLOEJ
IF~~THEN BEGIN  BG2Reunionchlo
SAY @1420
IF ~~THEN EXTERN CVSANDRJ BG2Reunion15
END
END

APPEND  UDPHAE01
IF~~THEN BEGIN 300
SAY@1421
=@1422
IF~~THEN REPLY@1423DO~SetGlobal("PhaereInnuendo","GLOBAL",3)SetGlobal("PhaereFixMRAe","GLOBAL",1)SetGlobal("PhaereFixMRVi","GLOBAL",1) SetGlobal("PhaereFixMRJa","GLOBAL",1)~GOTO 113
END
END

APPEND DOGHMA
IF~~THEN BEGIN 101
SAY@1424
IF~~THEN REPLY@1425GOTO 102
END

IF~~THEN BEGIN 102
SAY@1426
IF~~THEN EXIT
END
END

EXTEND_TOP SHAAVA01 4 #1
IF~InParty("CVSandr") ~THEN REPLY @1427EXTERN CVSANDRJ SanSunRitual
END

//Dealing With Solaufein

ADD_TRANS_TRIGGER UDSOLA01 117 
~!InParty("CVSandr")~

EXTEND_BOTTOM UDSOLA01 117
IF ~InParty("CVSandr")~THEN REPLY @1428EXTERN CVSANDRJ NotKillSola
IF ~InParty("CVSandr")~THEN REPLY @1429EXTERN CVSANDRJ NotKillSola
IF ~InParty("CVSandr")~THEN REPLY @1430EXTERN UDSOLA01 119
END

ADD_TRANS_TRIGGER UDSOLA01 121 
~!InParty("CVSandr")~

EXTEND_BOTTOM UDSOLA01 121
IF ~InParty("CVSandr")~THEN REPLY @1431EXTERN UDSOLA01 126
IF ~InParty("CVSandr")~THEN REPLY @1432EXTERN CVSANDRJ NotKillSola
END

ADD_TRANS_TRIGGER UDSOLA01 127
~!InParty("CVSandr")~

EXTEND_BOTTOM UDSOLA01 127
IF ~InParty("CVSandr")~THEN REPLY @1431EXTERN UDSOLA01 126
IF ~InParty("CVSandr")~THEN REPLY @1432EXTERN CVSANDRJ NotKillSola
END

EXTEND_BOTTOM UDPHAE01 110
IF ~InParty("CVSandr")~THEN REPLY @1433GOTO 300
END

EXTEND_BOTTOM UDPHAE01 106
IF ~InParty("CVSandr")~THEN REPLY @1433GOTO 300
END

ADD_TRANS_TRIGGER UDARDUL 16
~!InParty("CVSandr")~

EXTEND_BOTTOM UDARDUL 16
IF ~InParty("CVSandr")~THEN REPLY @1434DO~SetGlobal("MatronJob","GLOBAL",2)~GOTO 65
IF ~InParty("CVSandr")~THEN REPLY @1435GOTO 66
END

EXTEND_BOTTOM BREG01 7
IF~InParty("CVSandr")~THEN REPLY @1436EXTERN CVSANDRJ SanUDJarlAgain
END

EXTEND_BOTTOM DOGHMA 0
IF~InParty("CVSandr") Global("SanKhalBlood","GLOBAL",4) ~THEN REPLY @1437GOTO 101
END

EXTEND_BOTTOM Demson 74
IF~InParty("CVSandr")~THEN REPLY @1438GOTO 75
END

EXTEND_BOTTOM Demson 86
IF~InParty("CVSandr")Dead("HurgisF")!Dead("Plgirl01")~THEN REPLY @1439GOTO 90
END

APPEND Hellfear
IF~~THEN BEGIN 101
SAY@1440
IF~~THEN DO~IncrementGlobal("Sanpoints","GLOBAL",5)~GOTO 15
END
END

APPEND SUELLE2
IF WEIGHT #-4 ~Global("RE_Suelle2Interject2","GLOBAL",1) InParty("CVSandr") Global("SanSecond","LOCALS",0)~THEN BEGIN Second
SAY@1441
IF~~THEN DO~SetGlobal("SanSecond","LOCALS",1)~GOTO 6
END
END

EXTEND_BOTTOM Hellfear 14
IF~InParty("CVSandr")~THEN REPLY @1442GOTO 101
END

EXTEND_BOTTOM Rylock 25
IF~Global("TalkedToLyros","GLOBAL",1) Global("LyrosJob","GLOBAL",0) InParty("CVSandr")~THEN REPLY@1443GOTO 9
END

EXTEND_BOTTOM Rylock 9
IF~Global("TalkedToLyros","GLOBAL",1) Global("LyrosJob","GLOBAL",0) InParty("CVSandr")~THEN REPLY@1444GOTO 12
END

EXTEND_BOTTOM TRGyp02 2
IF~!InPartySlot(LastTalkedToBy,0) Name("CVSandr",LastTalkedToBy) ~THEN GOTO GypSanFortn
END

CHAIN
IF~~THEN TRGyp02 GypSanFortn
@1445
==CVSandrJ@1446
==TRGyp02@1447
=@1448
=@1449
=@1450
==CVSandrJ@1451
==TRGyp02@1452DO ~GiveGoldForce(10)
ActionOverride(Player1,SetDialogue("Player1"))~EXIT

I_C_T ImoenJ 56 SanCloneElle
==CVSandrJ IF~InParty("CVSandr")~THEN@1453
==Imoen2J IF~InParty("CVSandr")~THEN@1454
==CVSandrJ IF~InParty("CVSandr")~THEN@1455
==Imoen2J IF~InParty("CVSandr")~THEN@1456DO~SetGlobal("SanCloneElle","Global",2)~END

CHAIN
IF~Global("SanCloneElle","Global",1)~THEN CVSandrJ SanCloneEllePC
@1453
DO~SetGlobal("SanCloneElle","Global",2)~
END
++@1457+ SanCloneEllePC2
++@1458+ SanCloneEllePC2

CHAIN
IF~~THEN CVSandrJ SanCloneEllePC2
@1459
=@1460EXIT

CHAIN 
IF WEIGHT #-2~ Global("BodiAppear","GLOBAL",7) Global("HigherPrice","LOCALS",0) InParty("CVSandr")~THEN Brus2 high1 
 @1461
DO~SetGlobal("HigherPrice","LOCALS",1)~
==CVSandrJ@1462
==Brus2@1463
==CVSandrJ@1464
==Brus2@1465
==CVSandrJ@1466
==Brus2@1467DO~AddJournalEntry(@60978,QUEST)~
==CVSandrJ@1468
==Brus2@1469
END
  IF ~~THEN GOTO 13
  IF ~ OR(2)
Class(Player1,FIGHTER_ALL)
Kit(Player1,Blackguard)
~THEN GOTO 4
  IF ~ Class(Player1,BARD_ALL)
~THEN GOTO 5
  IF ~ Class(Player1,CLERIC_ALL)
~THEN GOTO 7
  IF ~ Class(Player1,THIEF_ALL)
~THEN GOTO 8
  IF ~ Class(Player1,RANGER_ALL)
~THEN GOTO 9
  IF ~ Class(Player1,PALADIN_ALL)
!Kit(Player1,Blackguard)
~THEN GOTO 10
  IF ~ Class(Player1,MAGE_ALL)
~THEN GOTO 11
  IF ~ Class(Player1,DRUID_ALL)
!Class(Player1,SHAMAN)
~THEN GOTO 12

CHAIN
IF WEIGHT #-9~Global("BodiAppear","GLOBAL",7) Global("Linvail","GLOBAL",0) Global("ShadowWork","GLOBAL",1) PartyGoldGT(14999) PartyGoldLT(130000) Global("BodiWork","GLOBAL",0) ~THEN Gaelan highprice1
@1470
==CVSandrJ IF~InParty("CVSandr")~THEN@1471
==Gaelan IF~InParty("CVSandr")~THEN@1472
END
IF ~InParty("CVSandr")~THEN REPLY @1473EXIT
IF ~InParty("CVSandr")~THEN REPLY @1474EXIT
IF~!InParty("CVSandr")~THEN REPLY @1471+ highprice2

CHAIN
IF~~THEN Gaelan highprice2
@1475EXIT

CHAIN
IF WEIGHT #8 ~ Global("Linvail","GLOBAL",0) Global("ShadowWork","GLOBAL",1) !Global("BodiAppear","GLOBAL",7) PartyGoldGT(129999) Global("BodiWork","GLOBAL",0) ~THEN Gaelan hashigh
 @1476
END
  IF ~~THEN REPLY @1477DO~TakePartyGold(100000)~GOTO 86
  IF ~~THEN REPLY @1478GOTO 52
  IF ~ Global("ImTooSexyForThisBrus","GLOBAL",1)~THEN REPLY @1479GOTO 84

I_C_T C6Elhan2 42 SanElhanSuspic
==CVSandrJ IF~InParty("CVSandr")~THEN@1480END

