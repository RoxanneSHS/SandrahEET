//Fate Spirit

EXTEND_BOTTOM FATESP 6 #17
IF ~!InMyArea("CVSandr") Global("SandrahSummoned","GLOBAL",0)~THEN REPLY@0GOTO NoSan
END

APPEND FATESP

IF~~THEN BEGIN NoSan
SAY@1
=@2
IF~~THEN DO ~
CreateVisualEffect("SPPORTAL",[1799.1228])
Wait(2)
CreateCreature("PelligT",[1799.1228],0)
SetGlobal("SandrahSummoned","GLOBAL",1)
~EXIT
END
END

//Charname's Mother
EXTEND_BOTTOM SOLAR 24
IF~GlobalGT("Formedcloth","GLOBAL",8)~THEN REPLY @3GOTO SanErr
END

APPEND SOLAR
IF~~THEN BEGIN SanErr
SAY@4
IF~~THEN GOTO 25
END
END

//Saradush Episodes

EXTEND_BOTTOM Sarvolo 9
IF~InParty("CVSandr") ~THEN REPLY@5GOTO VolSan1
IF~InParty("CVJenlig")~THEN REPLY@6GOTO VolJenl1
END

APPEND Sarvolo

IF~~THEN BEGIN VolSan1
SAY@7
=@8
IF~~THEN REPLY@9GOTO VolSan2
END

IF~~THEN BEGIN VolJenl1
SAY@10
IF~~THEN REPLY@11GOTO VolJenl2
END
END

CHAIN
IF~~THEN Sarvolo VolJenl2
@12
==BJenli25@13
==Sarvolo@14
==BJenli25@15
END
++@16+ 9

CHAIN
IF~~THEN Sarvolo VolSan2
@17
==BSandr25@18
==Sarvolo@19
==BSandr25@20
END
++@21+ 9

ADD_TRANS_ACTION Sarbha03 BEGIN 0 END BEGIN 0 1 2 END ~SetGlobal("SanDoneJahag","ar5007",1)~

ADD_TRANS_ACTION Hgkar01 BEGIN 0 END BEGIN 0 END ~SetGlobal("SanChoices","ar6400",1)~

//Mystra Visits

CHAIN
IF ~Global("SanMystApToB","GLOBAL",2)~THEN sanmyst VisitTob1
@22
DO ~SetGlobal("SanMystApToB","GLOBAL",3) SetGlobal("SanHealToB","GLOBAL",1)~
== BSANDR25 @23
== sanmyst@24
== BSANDR25 @25
== sanmyst@26
== BSANDR25 @27
== sanmyst@28
== BSANDR25 @29
== sanmyst@30
== BSANDR25 @31
== sanmyst@32
=@33
=@34DO~AddXPObject("CVSandr",40000) GiveItemCreate("CVMysClk","CVSandr",0,0,0)~
== BSANDR25 @35
== sanmyst@36EXIT

CHAIN
IF~Global("SanRaiseMys","GLOBAL",2)~THEN sanmyst RaiseSan
@37
DO~SetGlobal("SanRaiseMys","GLOBAL",3)~
== BSANDR25 @38
== sanmyst@39
=@40
== BSANDR25 @41
== sanmyst@42
=@43
== BSANDR25 @44
== sanmyst@45
== BSANDR25 @46
== sanmyst@47
=@48
=@49
== BSANDR25 @50
=@51
==Finsol01@52
END
++@53EXTERN Finsol01 4

CHAIN
IF~Global("SandrahSummoned","GLOBAL",3)~THEN sanmyst RaiseSanNoPc
@37
DO~SetGlobal("SandrahSummoned","GLOBAL",4)~
== BSANDR25 @38
== sanmyst@39
=@40
== BSANDR25 @41
== sanmyst@42
=@43
== BSANDR25 @44
== sanmyst@45
== BSANDR25 @46
== sanmyst@47
=@48
=@54
== BSANDR25 @50
=@51
==Finsol01@52DO~ActionOverride("Finsol01",SetNumTimesTalkedTo(1))~EXTERN Finsol01 4


// Watcher's Keep Altar Ritual

EXTEND_BOTTOM Goralt1 0
IF ~InParty("CVSandr") Global("CribNote","GLOBAL",0)~THEN REPLY@55EXTERN CVSan25J SanWKRitu1
IF ~InParty("CVSandr") Global("CribNote","GLOBAL",1)~THEN REPLY@55EXTERN CVSan25J SanWKRitu2
END

CHAIN
IF~~THEN CVSan25J SanWKRitu1
@56
END
++@57EXTERN Goralt1 8

CHAIN
IF~~THEN CVSan25J SanWKRitu2
@58
=@59
==Goralt1@60
==CVSan25J @61
==Goralt1@62
==CVSan25J @63
==Goralt1@64
==CVSan25J @65
=@66
END
++ @67EXTERN Goralt1 6

//Enter Undermountain
CHAIN 
IF WEIGHT #-9~Global("San25ChiQuest","GLOBAL",13)~THEN CVRingo EnterUM
@68
DO~SetGlobal("San25ChiQuest","GLOBAL",14)~
==BSandr25@69
==CVRingo@70
==BSandr25@71
==CVRingo@72
==BSandr25@73
==CVRingo@74
END
++@75+ EnterUM2

CHAIN
IF~~THEN CVRingo EnterUM2
@76
END
++@77EXIT
++@78EXIT

CHAIN
IF~AreaCheck("CVumo4") Global("QiTest","cvumo4",0)~THEN SAMYSTP1 Mystpr251
@79
==BSandr25@80
==SAMYSTP1@81
==BSandr25@82
==SAMYSTP1@83
=@84
END
++@85DO~IncrementGlobal("QiTest","cvumo4",1)~+ Mystpr252
++@86DO~IncrementGlobal("QiTest","cvumo4",3)~+ Mystpr252
++@87DO~IncrementGlobal("QiTest","cvumo4",2)~+ Mystpr252

CHAIN
IF~~THEN SAMYSTP1 Mystpr252
@88
END
++@89DO~IncrementGlobal("QiTest","cvumo4",2)~+ Mystpr253
++@90DO~IncrementGlobal("QiTest","cvumo4",1)~+ Mystpr253
++@91DO~IncrementGlobal("QiTest","cvumo4",3)~+ Mystpr253

CHAIN
IF~~THEN SAMYSTP1 Mystpr253
@92
END
++@93DO~IncrementGlobal("QiTest","cvumo4",2)~+ Mystpr254
++@94DO~IncrementGlobal("QiTest","cvumo4",2)~+ Mystpr254
++@95DO~IncrementGlobal("QiTest","cvumo4",2)~+ Mystpr254

CHAIN
IF~~THEN SAMYSTP1 Mystpr254
@96
END
IF~Global("QiTest","cvumo4",4)~THEN REPLY@97+ Mystpr255
IF~GlobalGT("QiTest","cvumo4",4)~THEN REPLY@97+ Mystpr256

CHAIN
IF~~THEN SAMYSTP1 Mystpr255
@98
DO~SetGlobal("San25ChiQuest","GLOBAL",90) EscapeArea() ~EXIT

CHAIN
IF~~THEN SAMYSTP1 Mystpr256
@99
DO~SetGlobal("San25ChiQuest","GLOBAL",16) GiveItemCreate("CVUmward",Player1,0,0,0) EscapeArea()~EXIT

ADD_TRANS_ACTION AMCLER02 BEGIN 9 END BEGIN 0 END
~SetGlobal("SanBaltMelis","GLOBAL",1)~

//Szass in Neera quest
I_C_T OHNSzass 1 SanOhSzassR
==OHNSzass IF~InParty("CVSandr")~THEN@100
==BSandr25 IF~InParty("CVSandr")~THEN@101
==OHNSzass IF~InParty("CVSandr")~THEN@102
==OHNSzass IF~InParty("CVSandr")~THEN@103
END

INTERJECT_COPY_TRANS Finsol01 14 SanQidrEssence1
==CVSan25J IF ~InParty("CVSandr") !InMyArea("CVQidr2") ~THEN@104
==Finsol01 IF ~InParty("CVSandr") !InMyArea("CVQidr2") ~THEN@105
==CVSan25J IF ~InParty("CVSandr") !InMyArea("CVQidr2") ~THEN@106
==Finsol01 IF ~InParty("CVSandr") !InMyArea("CVQidr2") ~THEN@107END

INTERJECT_COPY_TRANS Finsol01 14 SanQidrEssence2
==CVQidr IF ~InParty("CVSandr") InMyArea("CVQidr2") ~THEN@108
==Finsol01 IF ~InParty("CVSandr") InMyArea("CVQidr2") ~THEN@105
==CVSan25J IF ~InParty("CVSandr") InMyArea("CVQidr2") ~THEN@109
==Finsol01 IF ~InParty("CVSandr") InMyArea("CVQidr2") ~THEN@107END

ADD_TRANS_TRIGGER Finsol01 3
~!InParty("CVSandr")~

EXTEND_BOTTOM Finsol01 3
IF~InParty("CVSandr")~THEN DO ~SetGlobal("SanRaiseMys","GLOBAL",1) ClearAllActions()  StartCutSceneMode() StartCutScene("cut233h")~EXIT
END

ADD_TRANS_TRIGGER Finsol01 33
~!InParty("CVSandr")~

EXTEND_BOTTOM Finsol01 33
IF~InParty("CVSandr") GlobalLT("PPEvilChoices","GLOBAL",3) Global("PlayerChoseEssence","GLOBAL",1)~THEN DO~ClearAllActions() StartCutSceneMode() StartCutScene("cut233s1") ~EXIT
IF~InParty("CVSandr") GlobalGT("PPEvilChoices","GLOBAL",2) Global("PlayerChoseEssence","GLOBAL",1)~THEN DO~ClearAllActions() StartCutSceneMode() StartCutScene("cut233s2") ~EXIT
IF~InParty("CVSandr") Global("PlayerChoseEssence","GLOBAL",0)~THEN DO~ClearAllActions() StartCutSceneMode() StartCutScene("cut233s3") ~EXIT
END

APPEND Finsol01

IF WEIGHT #-10~Global("SanRaiseMys","GLOBAL",1)~THEN BEGIN SanMystCalls
SAY@110
=@111
IF~~THEN DO~SetGlobal("SanRaiseMys","GLOBAL",2) ActionOverride("Finmel01",DestroySelf()) ActionOverride("Balth2",DestroySelf()) ActionOverride("CVqidr2",DestroySelf())ClearAllActions()StartCutSceneMode() StartCutScene("CVcut301")~EXIT
END

IF WEIGHT #-11~Global("SandrahSummoned","GLOBAL",2)~THEN BEGIN SanMystCalls2
SAY@112IF~~THEN DO~SetGlobal("SandrahSummoned","GLOBAL",3) ClearAllActions()StartCutSceneMode() StartCutScene("CVcut304")~EXIT
END

END


EXTEND_BOTTOM CHALCY01 1
IF~InParty("CVSandr")~THEN GOTO S101
END

CHAIN
IF~~THEN CHALCY01 S101
@113
==CVSan25J IF~Global("SanKevl","GLOBAL",0)~THEN@114
==CVSan25J IF~GlobalGT("SanKevl","GLOBAL",0)~THEN@115
==CHALCY01@116
==CVSan25J @117
==CHALCY01@118
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("cutch4b")~EXIT

