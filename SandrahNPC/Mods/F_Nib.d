APPEND F_NIB

IF WEIGHT #-9 ~AreaCheck("ar0700") ~THEN BEGIN Skyscroll1
SAY @0
IF~NumInPartyLT(6)~THEN REPLY @1GOTO Skyscroll4
IF~NumInParty(6)~THEN REPLY @1GOTO Skyscroll2
END

IF ~~THEN BEGIN Skyscroll2
SAY @2
IF ~InParty("ACBRE")~THEN REPLY @3GOTO Skyscroll3
IF ~InParty("Kivan")~THEN REPLY @4GOTO Skyscroll3
IF ~InParty("Jaheira")~THEN REPLY @5GOTO Skyscroll3
IF ~~THEN REPLY @6GOTO Skyscroll3
END

IF ~~THEN BEGIN Skyscroll3
SAY @7
IF ~~THEN REPLY @8GOTO Skyscroll6
END

IF ~~THEN BEGIN Skyscroll4
SAY @9
IF ~~THEN REPLY @10GOTO Skyscroll5
END

IF ~~THEN BEGIN Skyscroll5
SAY @11
IF ~~THEN REPLY @8GOTO Skyscroll6
END

IF ~~THEN BEGIN Skyscroll6
SAY @12
IF~~THEN DO~GiveItemCreate("CVSkys",Player1,0,0,0) EscapeArea()~EXIT 
END


IF WEIGHT #-9 ~AreaCheck("CVSKYS") ~THEN BEGIN Skyship1
SAY@13
IF~~THEN REPLY @14GOTO Skyship2
END

IF ~~THEN BEGIN  Skyship2
SAY  @15
IF~~THEN REPLY @16GOTO Skyship3
END

IF ~~THEN BEGIN  Skyship3
SAY  @17
IF ~~THEN REPLY @18DO ~TakePartyItem("CVSkys") TakePartyGold(3000)  SetGlobal("Nibfly","GLOBAL",2)~EXIT
IF ~~THEN REPLY @19DO ~TakePartyItem("CVSkys") TakePartyGold(3000) SetGlobal("Nibfly","GLOBAL",3)~EXIT
IF ~~THEN REPLY @20DO ~TakePartyItem("CVSkys") TakePartyGold(3000) SetGlobal("Nibfly","GLOBAL",4)~EXIT
IF ~~THEN REPLY @21EXIT
IF ~~THEN REPLY @22DO~StartStore("F_NIBSHP",Player1)~EXIT
END

IF WEIGHT #-10 ~Global("NibHere","CVSH13",1) AreaCheck("CVsh13")~THEN BEGIN SkyshipSH1
SAY@23
IF ~~THEN REPLY @24GOTO SkyshipSH2
IF ~~THEN REPLY @25GOTO SkyshipSH2
END

IF ~~THEN BEGIN SkyshipSH2
SAY@26
IF ~~THEN REPLY @27DO~SetGlobal("NibHere","CVSH13",2) ~GOTO SkyshipSH3
END

IF ~~THEN BEGIN SkyshipSH3
SAY@28
=@29
IF ~~THEN REPLY @22DO~StartStore("F_NIBSHP",Player1)~EXIT
IF~~THEN REPLY@30DO ~SetGlobal("SanTravel","GLOBAL",62)GiveItemCreate("CVSkys",Player1,0,0,0)~EXIT
IF ~~THEN REPLY @21EXIT
END

IF WEIGHT #-10 ~Global("NibHere","CVSH13",2)  ~THEN BEGIN SkyshipSHPer
SAY@31
IF ~~THEN REPLY @22DO~StartStore("F_NIBSHP",Player1)~EXIT
IF~~THEN REPLY@30DO ~GiveItemCreate("CVSkys",Player1,0,0,0) SetGlobal("SanTravel","GLOBAL",62)~EXIT
IF~GlobalGT("SanRTFPlot1","GLOBAL",6)~THEN REPLY@32DO~GiveItemCreate("CVSkys",Player1,0,0,0) SetGlobal("SanTravel","GLOBAL",401)~EXIT
IF~Global("RTLeyPlot1","GLOBAL",7)~THEN REPLY@33DO~ClearAllActions() StartCutSceneMode() StartCutScene("CVCut411")~EXIT
IF ~~THEN REPLY @21EXIT
END
END