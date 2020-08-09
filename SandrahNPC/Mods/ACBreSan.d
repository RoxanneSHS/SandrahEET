// Breagar

CHAIN
IF ~Global("SanBreBa","GLOBAL",1)~THEN BSANDR SanBreAtt
@0
DO ~SetGlobal("SanBreBa","GLOBAL",2)~
== ACBreB @1
== BSANDR @2
== ACBreB @3
== BSANDR @4
= @5
EXIT

CHAIN
IF ~~THEN  BSANDR SanBreHea1
@6
DO ~SetGlobal("SanHealBre","GLOBAL",6)~
== ACBreB @7
== BSANDR @8
== ACBreB @9
END
++ @10DO~IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
++ @11EXIT
++ @12 DO~IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT

CHAIN
IF ~Global("SanBreBa","GLOBAL",4)~THEN BSANDR SanBreBal
@13
DO ~GiveItemCreate("Misc97","ACBre",12,0,0) SetGlobal("SanBreBa","GLOBAL",5)~
== ACBreB @14
== BSANDR @15
== ACBreB @16
== BSANDR @17
END
++ @18DO ~ApplySpellRES("CVChaRed",Player1)~EXIT
++ @19+  SanBreBal2
++ @20DO~IncrementGlobal("Sanpoints","GLOBAL",1)~+ SanBreBal3

CHAIN
IF ~~THEN BSANDR SanBreBal2
@21
== ACBreB @22
== BSANDR @23
== ACBreB @24
== BSANDR @25
== ACBreB @26
== BSANDR @27
== ACBreB @28
EXIT

CHAIN
IF ~~THEN BSANDR SanBreBal3
@29
== ACBreB @22
== BSANDR @30
== ACBreB @24
== BSANDR @25
== ACBreB @26
== BSANDR @27
== ACBreB @28
EXIT

CHAIN
IF ~Global("SanBreBa","GLOBAL",6)~THEN BSANDR SanBreP
@31
DO ~SetGlobal("SanBreBa","GLOBAL",7)~
== ACBreB @32
== BSANDR @32
== ACBreB @33
== BSANDR @34
== ACBreB @35
== BSANDR @36
== ACBreB @37
== BSANDR @38
== ACBreB @39
== BSANDR @40
== ACBreB @41
== BSANDR @42
== ACBreB @43
== BSANDR @44
== ACBreB @45
== BSANDR @46
== ACBreB @47DO~RestParty()~
EXIT

CHAIN
IF ~Global("SanBreAbb","LOCALS",1) ~THEN BSANDR SanBreDwF
@48
DO ~SetGlobal("SanBreAbb","LOCALS",2) ~
== ACBreB @49
== BSANDR @50
== ACBreB @51
== BSANDR @52
== ACBreB @53
== BSANDR @54
== ACBreB @55
== BSANDR @56
== ACBreB @57
EXIT

CHAIN
IF~Global("ACMINEC2","GLOBAL",2)~THEN BSANDR SanBreSlavmin
@58
DO~SetGlobal("ACMINEC2","GLOBAL",3)~
== ACBreB @59
== BSANDR @60
== ACBreB @61
=@62
== BSANDR @63EXIT

CHAIN
IF ~Global("SanBreBa","GLOBAL",9)~THEN BSANDR SanBreHa
@64
DO ~SetGlobal("SanBreBa","GLOBAL",10) RealSetGlobalTimer("SanBreHaBat","LOCALS",3060)~
== ACBreB @65
== BSANDR @66
== ACBreB @67
== BSANDR @68
== ACBreB @69
== BSANDR @70
== ACBreB @71
== BSANDR @72
== ACBreB @73
== BSANDR @74
== ACBreB @75
== BSANDR @76
== ACBreB @77
== BSANDR @78
== ACBreB @79EXIT

CHAIN
IF~Global("ThankBreg","dsc020",1)~THEN CVSandrJ BregTunnels
@80
DO~SetGlobal("ThankBreg","dsc020",2)~
== ACBreB @81
==CVSandrJ@82
== ACBreB @83EXIT

CHAIN
IF~Global("SanCasBre","arac03",1) ~THEN BSANDR BreAxHunt1
@84
DO~SetGlobal("SanCasBre","arac03",2)~
== ACBreB @85
==BSANDR @86
== ACBreB @87
==BSANDR @88
== ACBreB @89
==BSANDR @90
== ACBreB @91
=@92EXIT

CHAIN
IF~Global("SanBreStorm","ar3520",2)~THEN BSandr Stormhorn1
@93
DO~SetGlobal("SanBreStorm","ar3520",3)~
== ACBreB @94
==BSANDR @95
== ACBreB @96
==BSANDR @97
== ACBreB @98
==BSANDR @99
== ACBreB @100
==BSANDR @101
== ACBreB @102EXIT

APPEND ACBreB

IF WEIGHT #-9 ~Global("SanHealBre","GLOBAL",5)~THEN BEGIN SanHealBre
SAY @103
IF~~THEN EXTERN BSANDR SanBreHea1
END
END



