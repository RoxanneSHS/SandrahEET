APPEND BSandr

IF~Global("SanseaYou","GLOBAL",3)~THEN BEGIN SaerYoung1
SAY@0
IF~~THEN REPLY@1GOTO SaerYoung2
IF~~THEN REPLY@2GOTO SaerYoung3
IF~~THEN REPLY@3GOTO SaerYoung3
END

IF~~THEN BEGIN SaerYoung2
SAY@4
IF~~THEN REPLY@5DO~SetGlobal("SanseaYou","GLOBAL",4)~GOTO SaerYoung4
END

IF~~THEN BEGIN SaerYoung3
SAY@6
IF~~THEN REPLY@7DO~SetGlobal("SanseaYou","GLOBAL",4)~GOTO SaerYoung4
END

IF~~THEN BEGIN SaerYoung4
SAY@8
IF~~THEN REPLY@9GOTO SaerYoung5
IF~~THEN REPLY@10GOTO SaerYoung5
END

IF~~THEN BEGIN SaerYoung5
SAY@11
IF~~THEN REPLY@12EXIT
END
END

CHAIN
IF~Global("SansearAdvise","GLOBAL",1)~THEN BSandr SanSearWhyTh1
@13
DO~SetGlobal("SansearAdvise","GLOBAL",2)~
== BSaerile@14
== BSandr @15
== BSaerile@16
== BSandr @17
== BSaerile@18
== BSandr @19
== BSaerile@20
EXIT

CHAIN
IF~~THEN BSandr SanHealSaer2
@21
== BSaerile@22
= @23
== BSandr @24
== BSaerile@25EXIT

CHAIN
IF~Global("SanHealSaer","GLOBAL",6)~THEN BSandr SanHealSaer3
@26
DO~SetGlobal("SanHealSaer","GLOBAL",7) RealSetGlobalTimer("SanSaerT","LOCALS",1500)~
== BSaerile@27
== BSandr @28
== BSaerile@29
== BSandr @30
== BSaerile@31
== BSandr @32
== BSaerile@33
== BSandr @34
== BSaerile@35EXIT

CHAIN
IF~Global("SanUddSar","LOCALS",1)~THEN BSandr SanUddSaer
@36
DO~SetGlobal("SanUddSar","LOCALS",2)~
== BSaerile@37
== BSandr @38
== BSaerile@39
== BSandr @40
== BSaerile@41
== BSandr @42
== BSaerile@43
== BSandr @44EXIT

CHAIN
IF~Global("SanSaerFight","GLOBAL",3)~THEN BSandr SanSaerQuaPC
@45
DO~SetGlobal("SanSaerFight","GLOBAL",4)~
== BSaerile@46
= @47
== BSandr @48
== BSaerile@49
== BSandr @50
== BSaerile@51
== BSandr @52
== BSaerile@53
== BSandr @54DO~ChangeEnemyAlly("CVSandr",NEUTRAL) ~
== BSaerile@55DO~ChangeEnemyAlly("Saerileth",NEUTRAL) EquipMostDamagingMelee() AttackOneRound("CVSandr")~
EXIT

CHAIN
IF~Global("SanSaerFight","GLOBAL",5)~THEN BSandr SanSaerQuaPC2
@56
DO~SetGlobal("SanSaerFight","GLOBAL",6) RealSetGlobalTimer("SanSaerT","LOCALS",600)~
== BSaerile@57
END
++@58EXIT
++@59EXIT
++@60EXIT 

CHAIN
IF~Global("SanSaerFight","GLOBAL",12) ~THEN BSandr SanSaesexAdv
@61
DO~SetGlobal("SanSaerFight","GLOBAL",13)~
== BSaerile@62
== BSandr @63
== BSaerile@64
== BSandr @65
== BSaerile@66
== BSandr @67
== BSaerile@68
== BSandr @69
== BSaerile@70
== BSandr @71
== BSaerile@72
== BSandr @73
== BSaerile@74
== BSandr @75
== BSaerile@76
== BSandr @77
== BSaerile@78
DO ~DropInventory() CreateVisualEffectObject("CALLLIGH",Myself) ReallyForceSpellRES("Spin714",Myself) ApplyDamage(Myself,80,CRUSHING)~EXIT

           	
CHAIN
IF~Global("SanSaerFight","GLOBAL",7)~THEN BSandr SanSaerQuaPC3
@79
DO~SetGlobal("SanSaerFight","GLOBAL",8) RealSetGlobalTimer("SanSaerT","LOCALS",600)~
== BSaerile@80
== BSandr @81
=@82
== BSaerile@83
== BSandr @84
== BSaerile@85
== BSandr @86DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~EXIT

CHAIN
IF~Global("SanSaerFight","GLOBAL",15)~THEN BSandr SanSaerWedPres
@87
DO~SetGlobal("SanSaerFight","GLOBAL",16) RealSetGlobalTimer("SanSaerT","LOCALS",600)~
== BSaerile@88
== BSandr @89
== BSaerile@90
== BSandr @91DO~GiveItemCreate("CVSaeWed","Saerileth",0,0,0)~
END
++@92DO~IncrementGlobal("Sanpoints","GLOBAL",2)~EXIT
++@93DO~IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
++@94DO~IncrementGlobal("Sanpoints","GLOBAL",-2)~EXIT


CHAIN
IF~~THEN BSAERILE San2
@95
DO~SetGlobal("NSToldCleric","GLOBAL",2)~
==NSCleric@96
=@97
== BSaerile@98
==NSCleric@99
== BSaerile@100
END
IF~!Global("SaerilethRomanceActive","GLOBAL",2)~THEN REPLY@101+ San3
++@102+ San4
IF~Global("SaerilethRomanceActive","GLOBAL",2)~THEN REPLY@101+ San5

CHAIN
IF~~THEN BSAERILE San3
@103
==NSCleric@104
== BSaerile@105
END
++@106+ San7
++@102+ San4

CHAIN
IF~~THEN BSAERILE San5
@107
==NSCleric@104
=@108
END
++@106+ San6
++@102+ San4

CHAIN
IF~~THEN BSAERILE San4
@109
==NSCleric@110
DO ~SetGlobal("FoundKesevar","GLOBAL",1) ClearAllActions()StartCutSceneMode() StartCutScene("CVCut105")~EXIT

CHAIN
IF~~THEN BSAERILE San6
@111
=@112
=@109DO~SetGlobal("SaerilethRomanceActive","GLOBAL",3)LeaveParty() EscapeArea() ~
==NSCleric@113DO ~EscapeArea() ~EXIT

CHAIN
IF~~THEN BSAERILE San7
@114
=@115
=@109DO~SetGlobal("SaerilethRomanceActive","GLOBAL",3)LeaveParty() EscapeArea() ~
 ==NSCleric@113DO ~EscapeArea() ~EXIT

//______________APPENDS______//

APPEND Saerilet

IF WEIGHT #-9~ NumberOfTimesTalkedTo(0)
Gender(Player1,MALE)
See(Player1)
OR(2)
Alignment(Player1,MASK_GOOD)
Alignment(Player1,MASK_GENEUTRAL)
InParty("CVSandr")
OR(3)
Race(Player1,HUMAN)
Race(Player1,HALF_ELF)
Race(Player1,ELF)
~THEN BEGIN 500
SAY  @116
IF ~~THEN GOTO 501
END

IF~~THEN BEGIN 501
SAY@117
IF ~~THEN GOTO 1
END
END

APPEND BSaerile

IF WEIGHT #-9~Global("SanHealSaer","GLOBAL",3) ~THEN BEGIN SanHealSaer1
SAY@118
IF~~THEN DO ~SetGlobal("SanHealSaer","GLOBAL",4)~EXTERN BSandr SanHealSaer2
END
END

APPEND NSCleric
IF WEIGHT #-9~InParty("CVSandr") InParty("Saerileth")!StateCheck("Saerileth",STATE_SLEEPING)
Global("NSToldCleric","GLOBAL",1) ~THEN BEGIN San1
SAY@119
IF ~~THEN EXTERN BSAERILE San2
END
END

ADD_TRANS_ACTION Saerilet BEGIN 9 END BEGIN 0 END
 ~SetGlobal("SaeWait","Ar0900",1) RealSetGlobalTimer("AR0900SaerRetry","GLOBAL",860) ~

ADD_TRANS_ACTION Saerilet BEGIN 16 END BEGIN 0 END
 ~SetGlobal("SaeWait","Ar0900",1) RealSetGlobalTimer("AR0900SaerRetry","GLOBAL",860) ~
 
ADD_TRANS_ACTION Saerilet BEGIN 23 END BEGIN 0 END
 ~SetGlobal("SaeWait","Ar0900",1) RealSetGlobalTimer("AR0900SaerRetry","GLOBAL",860) ~

ADD_TRANS_ACTION Saerilet BEGIN 61 END BEGIN 0 END
 ~SetGlobal("SaeWait","Ar0900",1) RealSetGlobalTimer("AR0900SaerRetry","GLOBAL",860) ~

ADD_TRANS_ACTION Saerilet BEGIN 68 END BEGIN 0 END
 ~SetGlobal("SaeWait","Ar0900",1) RealSetGlobalTimer("AR0900SaerRetry","GLOBAL",860) ~

