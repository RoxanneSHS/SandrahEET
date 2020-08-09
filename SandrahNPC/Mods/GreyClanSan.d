BEGIN  SANLIND

CHAIN
IF ~NumTimesTalkedTo(0) ~THEN SANLIND 1
@0
==BSANDR @1
==SANLIND @2
==BSANDR @3
==SANLIND @4
DO ~ChangeEnemyAlly("sanlind",ENEMY) ChangeAIScript("CVAkaWiz",OVERRIDE)~EXIT

BEGIN SANRENA

CHAIN
IF ~NumTimesTalkedTo(0) ~THEN SANRENA 1
@5
== BSANDR @6
= @7
= @8
= @9
== SANRENA @10
== BSANDR @11
== SANRENA @12
DO ~ChangeEnemyAlly("sanrena",ENEMY) ChangeAIScript("CVAkaWiz",OVERRIDE) ~EXIT

APPEND  CVSANDRJ

IF~Global("SanJey","LOCALS",1)~THEN BEGIN SanJeyTakeQ1
SAY@13
IF~~THEN REPLY@14DO~SetGlobal("SanJey","LOCALS",2)~GOTO SanJeyTakeQ2
IF~~THEN REPLY@15DO~SetGlobal("SanJey","LOCALS",2)~GOTO SanJeyTakeQ3
END

IF~~THEN BEGIN SanJeyTakeQ2
SAY@16
IF~~THEN REPLY@17EXIT
END

IF~~THEN BEGIN SanJeyTakeQ3
SAY@18
IF~~THEN REPLY@19EXIT
IF~~THEN REPLY@17EXIT
END

// Academy Mission

IF ~Global("SanGCE","GLOBAL",1)~THEN BEGIN SanGCELi1
SAY @20
IF~~THEN REPLY @21GOTO SanGCELi2
END

IF ~~THEN BEGIN SanGCELi2
SAY @22
IF ~~THEN REPLY @23DO ~SetGlobal("SanGCE","GLOBAL",1)~GOTO SanGCELi3
END

IF ~~THEN BEGIN SanGCELi3
SAY @24
IF ~~THEN REPLY @25DO ~SetGlobal("SanGCE","GLOBAL",2)~GOTO SanGCELi4
END

IF ~~THEN BEGIN SanGCELi4
SAY @26
IF ~~THEN REPLY @27DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanGCELi5
IF ~~THEN REPLY @28GOTO SanGCELi5
END

IF ~~THEN BEGIN SanGCELi5
SAY @29
IF ~~THEN REPLY @30EXIT
IF ~~THEN REPLY @31EXIT
END

IF ~Global("SanGCE","GLOBAL",3) ~THEN BEGIN SanGCExe1
SAY @32
IF ~~THEN REPLY @33GOTO SanGCExe2
END

IF ~~THEN BEGIN SanGCExe2
SAY @34
IF ~~THEN REPLY @35DO ~SetGlobal("SanGCE","GLOBAL",4)~EXIT
END

IF ~Global("SanAcadMission","GLOBAL",1)~THEN BEGIN AcadMi1
SAY @36
IF~~THEN REPLY @37 DO~IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO  AcadMi2
IF~~THEN REPLY @38GOTO AcadMi2
END

IF~~THEN BEGIN AcadMi2
SAY @39
IF~~THEN REPLY @40DO ~SetGlobal("SanAcadMission","GLOBAL",2) IncrementGlobal("Sanpoints","GLOBAL",1) RealSetGlobalTimer("SanAcadMissionT","GLOBAL",6000)~EXIT
IF~~THEN REPLY @41 DO ~SetGlobal("SanAcadMission","GLOBAL",2) IncrementGlobal("Sanpoints","GLOBAL",1) RealSetGlobalTimer("SanAcadMissionT","GLOBAL",6000)~EXIT
IF~~THEN REPLY@42DO ~SetGlobal("SanAcadMission","GLOBAL",2) RealSetGlobalTimer("SanAcadMissionT","GLOBAL",6000)~EXIT
END

IF ~Global("SanAkadMistake","GLOBAL",1)~THEN BEGIN AkadMist1
SAY @43
= @44
IF~~THEN REPLY @45DO~IncrementGlobal("Sanpoints","GLOBAL",-2)~GOTO AkadMist2
IF~~THEN REPLY @46DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO AkadMist3
END

IF~~THEN BEGIN  AkadMist2
SAY @47
IF~~THEN REPLY @48GOTO AkadMist3
END

IF~~THEN BEGIN  AkadMist3
SAY @49
IF~~THEN REPLY@50DO ~IncrementGlobal("Sanpoints","GLOBAL",1) SetGlobal("SanAkadMistake","GLOBAL",2)~EXIT
END

END

//Grey Clan Academy

INTERJECT_COPY_TRANS BW05BL02 1 FaceLinda
== CVSandrJ IF ~InParty("CVSandr") ~THEN @51
== BW05LIND IF ~InParty("CVSandr") ~THEN @52
== CVSandrJ IF ~InParty("CVSandr") ~THEN @53
== BW05LIND IF ~InParty("CVSandr") ~THEN @54
== BW05BL02 IF ~InParty("CVSandr") ~THEN @55
== CVSandrJ IF ~InParty("CVSandr") ~THEN @56
== BW05LIND IF ~InParty("CVSandr") ~THEN @57
END


INTERJECT_COPY_TRANS BW05MONI 3 Acaspy
== BW05MONI IF ~InParty("CVSandr") ~THEN @58
== CVSandrJ IF ~InParty("CVSandr") ~THEN @59
== BW05MONI IF ~InParty("CVSandr") ~THEN @60
== CVSandrJ IF ~InParty("CVSandr") ~THEN @61
== BW05MONI IF ~InParty("CVSandr") ~THEN @62
END

INTERJECT_COPY_TRANS BW05TERG 26 Acaspy2
== CVSandrJ IF ~InParty("CVSandr") PartyHasItem("SANAKAK") ~THEN @63
== BW05TERG IF ~InParty("CVSandr") ~THEN @64
== CVSandrJ IF ~InParty("CVSandr") ~THEN @65
== BW05TERG IF ~InParty("CVSandr") ~THEN @66
== CVSandrJ IF ~InParty("CVSandr") ~THEN @67
= @68
== BIMOEN IF ~InParty("Imoen2") InParty("CVSandr")~THEN @69
== CVSandrJ IF ~InParty("CVSandr") ~THEN @70
== BW05TERG IF ~InParty("CVSandr") ~THEN @71
== CVSandrJ IF ~InParty("CVSandr") ~THEN @72
== BW05TERG IF ~InParty("CVSandr") ~THEN @73
== CVSandrJ IF ~InParty("CVSandr") ~THEN @74
== BW05TERG IF ~InParty("CVSandr") ~THEN @75
== CVSandrJ IF ~InParty("CVSandr") ~THEN @76
== BW05TERG IF ~InParty("CVSandr") ~THEN @77DO ~SetGlobal("SanAcadMission","GLOBAL",1) ~
END

APPEND BW05TERG
IF ~Global("SanMoniAka","GLOBAL",2) ~THEN BEGIN  tergMoniAka1
SAY @78
IF ~~THEN REPLY @79GOTO tergMoniAka2
IF ~~THEN REPLY @80GOTO tergMoniAka3
END

IF ~~THEN BEGIN  tergMoniAka2
SAY @81
IF~~THEN REPLY @82DO ~TakePartyItem("SanAkJo")AddexperienceParty(3500) ~ GOTO tergMoniAka4
END

IF ~~THEN BEGIN  tergMoniAka3
SAY @83
IF~~THEN REPLY @84DO ~TakePartyItem("SanAkJo") AddexperienceParty(3500) ~GOTO tergMoniAka4
END

IF ~~THEN BEGIN  tergMoniAka4
SAY @85
IF ~~THEN EXTERN CVSANDRJ TergMoniXe
END
END

APPEND BW05MONI
IF WEIGHT #-2~Global("MoniExitPlat","LOCALS",1)~THEN BEGIN ExitPlat
SAY@86
IF~~THEN REPLY @87DO~SetGlobal("MoniExitPlat","LOCALS",2)Enemy()~EXIT
END
END

// Starting the Quest
CHAIN
IF WEIGHT #-2~NumTimesTalkedTo(0) InParty("CVSandr")~THEN BW05FFGE JeyNoticeSan
@88
==CVSANDRJ@89
==BW05FFGE@90
==CVSANDRJ@91
==BW05FFGE@92
=@93
END
++@94EXTERN BW05FFGE 2
++@95EXTERN BW05FFGE 2

//Legencase Showdown

CHAIN
IF ~Global("SanMoniAka","GLOBAL",1)~THEN CVSANDRJ  MoniAka1
@96
DO ~SetGlobal("SanMoniAka","GLOBAL",2)~
== BW05MONI @97DO~ActionOverride("BW05MONI",CreateItem("ImoSlHP1",0,0,0)) ActionOverride("BW05MONI",FillSlot(SLOT_AMULET))~
==CVSANDRJ @98
END
++ @99+ MoniAka2

CHAIN
IF~~THEN CVSANDRJ  MoniAka2
@100
== BW05MONI @101
==CVSANDRJ @102
== BW05MONI @103
END
++ @104+ MoniAka3
++ @105+ MoniAka3

CHAIN
IF~~THEN CVSANDRJ  MoniAka3
@106
== BW05MONI @107
DO ~StartCutSceneMode()
Wait(2)
CreateCreatureObjectOffset("BW05grs2","BW05MONI",[100.100])
CreateCreatureObjectOffset("BW05grz2","BW05MONI",[-100.100])
CreateCreatureObjectOffset("BW05grs2","BW05MONI",[100.-100])
CreateCreatureObjectOffset("BW05grz2","BW05MONI",[-100.-100])
Wait(2)
EndCutSceneMode()
Spell(LastSeenBy(Myself),WIZARD_CONFUSION)
ChangeEnemyAlly("BW05MONI",ENEMY)
RealSetGlobalTimer("MonfiFight","CVAKA2",90)~
EXIT


// Academy Tergius Report

CHAIN
IF~~THEN  CVSANDRJ TergMoniXe
@108
== ELMINSA @109
== BW05TERG@110
==CVSANDRJ @111
== ELMINSA @112
== BW05TERG@113DO ~EscapeArea()~
== ELMINSA @114DO ~EscapeArea()~
EXIT