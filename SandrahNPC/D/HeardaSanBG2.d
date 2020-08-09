BEGIN Alzalih

APPEND BSANDR
IF ~Global("SanHaerRel2","GLOBAL",3) ~THEN BEGIN SanHaerRelSlv
SAY @0
IF~~THEN REPLY @1DO~SetGlobal("SanHaerRel2","GLOBAL",4)~EXIT
END
END

APPEND CVSandrJ
IF~Global("SanHaerRel1","GLOBAL",19)~THEN BEGIN SanHaerHunt1
SAY@2
=@3
IF~~THEN REPLY@4DO~SetGlobal("SanHaerRel1","GLOBAL",20)AddJournalEntry(@739,QUEST)~EXIT
IF~~THEN REPLY@5GOTO SanHaerHuntOver
END

IF~~THEN BEGIN SanHaerHuntOver
SAY@6
IF~~THEN DO~ReputationSet(9) SetGlobal("Sandrahjoined","GLOBAL",0) LeaveParty() EscapeArea()~EXIT
END

IF~Global("SanHaerRel1","GLOBAL",27)~THEN BEGIN SanHaerHunt2
SAY@7
IF~~THEN REPLY@8DO~SetGlobal("SanHaerRel1","GLOBAL",28)~GOTO SanHaerHunt3
END

IF~~THEN BEGIN SanHaerHunt3
SAY@9
IF~~THEN REPLY@10GOTO SanHaerHunt4
IF~~THEN REPLY@11GOTO SanHaerHunt4
END

IF~~THEN BEGIN SanHaerHunt4
SAY@12
IF~~THEN REPLY@13GOTO SanHaerHunt5
IF~~THEN REPLY@14GOTO SanHaerHunt5
END

IF~~THEN BEGIN SanHaerHunt5
SAY@15
=@16
IF~~THEN REPLY@17GOTO SanHaerHunt6
END

IF~~THEN BEGIN SanHaerHunt6
SAY@18
IF~~THEN REPLY@19EXIT
END
END

APPEND Voleta
IF WEIGHT #-4~Global("SanHaerRel1","GLOBAL",32)~THEN BEGIN HaerH1
SAY@20
IF~~THEN REPLY@21GOTO HaerH2
IF~~THEN REPLY@22GOTO HaerH2
END

IF~~THEN BEGIN HaerH2
SAY@23
IF~~THEN DO~DestroySelf()
CreateCreature("Caddem2",[488.2662],14)~EXIT
END
END


CHAIN
IF ~Global("SanHaerRel3","LOCALS",2) ~THEN BSANDR SanHaerMissedInt
@24
DO~SetGlobal("SanHaerRel3","LOCALS",3) SetGlobal("SanHaerRel1","GLOBAL",2) RealSetGlobalTimer("SanHaerRelT","LOCALS",2000) ~
==BHAERDA @25
== BSANDR@26
==BHAERDA@27
= @28
== BSANDR@29
==BHAERDA@30
EXIT

CHAIN
IF ~Global("SanHaerRel1","GLOBAL",3)~THEN BSANDR SanHaerMist1
@31
DO~SetGlobal("SanHaerRel1","GLOBAL",4)RealSetGlobalTimer("SanHaerRelT","LOCALS",2000)~
==BHAERDA@32
== BSANDR@33
==BHAERDA@34
== BSANDR@35
==BHAERDA@36
== BSANDR@37
==BHAERDA@38
== BSANDR@39
==BHAERDA@40
EXIT

CHAIN
IF ~Global("SanHaerRel1","GLOBAL",5)~THEN BSANDR SanHaerMist2
@41
DO~SetGlobal("SanHaerRel1","GLOBAL",6)RealSetGlobalTimer("SanHaerRelT","LOCALS",2000)~
==BHAERDA@42
== BSANDR@43
==BHAERDA@44
== BSANDR@45
==BHAERDA@46
== BSANDR@47
==BHAERDA@48
EXIT

CHAIN
IF ~Global("SanHaerRel1","GLOBAL",7)~THEN BSANDR SanHaerMist3
@49
DO~SetGlobal("SanHaerRel1","GLOBAL",8)RealSetGlobalTimer("SanHaerRelT","LOCALS",2000)~
==BHAERDA@50
==BHAERDA@51
== BSANDR@52
==BHAERDA@53
== BSANDR@54
==BHAERDA@55
== BSANDR IF~!InParty("Aerie") ~THEN@56
== BSANDR IF~InParty("Aerie") ~THEN@57
==BHAERDA@58DO ~ RestParty() ~
EXIT

CHAIN
IF ~Global("SanHaerRel1","GLOBAL",9)~THEN BSANDR SanHaerMist4
@59
DO~SetGlobal("SanHaerRel1","GLOBAL",10)RealSetGlobalTimer("SanHaerRelT","LOCALS",2000)~
==BHAERDA@60
== BSANDR@61
==BHAERDA@62
== BSANDR@63
==BHAERDA@64
== BSANDR@65
==BHAERDA@66
== BSANDR@67
==BHAERDA@68
EXIT

CHAIN
IF ~Global("SanHaerRel1","GLOBAL",11)~THEN BSANDR SanHaerMist5
@69
DO~SetGlobal("SanHaerRel1","GLOBAL",12)~
==BHAERDA@70
== BSANDR @71
==BHAERDA@72
== BSANDR @73
==BHAERDA@74
== BSANDR @75
==BHAERDA@76
== BSANDR @77
==BHAERDA@78
== BSANDR @79
==BHAERDA@80
== BSANDR @81
==BHAERDA@82DO~StartCutSceneMode()  SmallWait(4) CreateCreature("narong2",[823.808],8) Wait(4) CreateCreature("alzalig",[933.912],8)  EndCutSceneMode()~EXIT

CHAIN
IF WEIGHT #-1~AreaCheck("CVDre3") Global("SanHaerRel1","GLOBAL",12)~THEN Alzalig CatchHaer1
@83
DO~SetGlobal("SanHaerRel1","GLOBAL",13)~
==Narongu@84
==BHAERDA@85
== BSANDR @86
==Narongu@87
== Alzalig@88DO~Enemy()~
==Narongu@89DO~Enemy()~EXIT

CHAIN
IF WEIGHT #-2~OR(2) AreaCheck("ar1400") AreaCheck("ar1404") Global("SanHaerRel1","GLOBAL",21)~THEN Alzalig CatchHaer2
@90
DO~SetGlobal("SanHaerRel1","GLOBAL",22)~
==Narongu@91DO~ReallyForceSpell("Alzalig",WIZARD_FIREBALL)~
== Alzalig@92DO~ReallyForceSpell("Narongu",WIZARD_FIREBALL)~
==Narongu@93
DO~ActionOverride("Narongu",ReallyForceSpell(Myself,DRYAD_TELEPORT))
ActionOverride("Alzalig",ReallyForceSpell(Myself,DRYAD_TELEPORT))~EXIT

CHAIN
IF WEIGHT #-4~Global("SanHaerRel1","GLOBAL",29)~THEN Brus2 GetToBG
@94
DO~SetGlobal("SanHaerRel1","GLOBAL",30)~
==CVSandrJ@95
== Brus2@96
==CVSandrJ@97
== Brus2@98DO~EscapeArea()~EXIT

CHAIN
IF WEIGHT #-4~Global("SanHaerRel1","GLOBAL",31)~THEN BlackL GetToBGL
@99
DO~SetGlobal("SanHaerRel1","GLOBAL",32)SetGlobal("SanToBGTH","AR0300",1)~
==CVSandrJ@100
== BlackL@101
==CVSandrJ@102
== BlackL@103
==CVSandrJ@104
== BlackL@105
DO~EscapeArea()~EXIT

CHAIN
IF~Global("SanHaerRel1","GLOBAL",32)~THEN Alzalih Final
@106
DO~SetGlobal("SanHaerRel1","GLOBAL",33)~
==CVSandrJ@107
==Alzalih@108
==CVSandrJ@109
==Alzalih@110DO~Enemy()~EXIT

CHAIN
IF WEIGHT #-5~Global("SanHaerRel1","GLOBAL",34)~THEN Haerdap SanRescue
@111
==CVSandrJ@112
==Haerdap @113
=@114DO~AddXPObject("CVSandr",55000) AddXPObject("Haerdalis",55000) SetGlobal("KickedOut","LOCALS",0) JoinParty() ~EXIT

CHAIN
IF~Global("SanHaerRel1","GLOBAL",35) ~THEN BSandr SanHaeReunite
@115
DO~SetGlobal("SanHaerRel1","GLOBAL",36)~
==BHAERDA@116
==BSandr@117
==BHAERDA@118DO~ StartCutSceneMode()  SmallWait(4) FadeToColor([20.0],0) Wait(4) FadeFromColor([20.0],0)  EndCutSceneMode() ~
EXIT

EXTEND_BOTTOM TSBlackL 20
IF~OR(2) Global("SanHaerRel1","GLOBAL",30)Global("SanHaerRel1","GLOBAL",31)InParty("CVSandr")~THEN REPLY @119EXTERN TSBlackL LilGetToBGL
END

CHAIN
IF ~~THEN TSBlackL LilGetToBGL
@120
DO~SetGlobal("SanHaerRel1","GLOBAL",32)ActionOverride("CVSandr",SetGlobal("SanToBGTH","LOCALS",1))~
==CVSandrJ@100
== TSBlackL@101
==CVSandrJ@102
== TSBlackL@103
==CVSandrJ@104
== TSBlackL@105EXIT