CHAIN
IF~Global("SanJon25","GLOBAL",2)~THEN BJonel25 MystraInv
@0
DO~SetGlobal("SanJon25","GLOBAL",3)~
==BSandr25@1
==BJonel25@2
==BSandr25@3
==BJonel25@4
==BSandr25@5DO~ClearAllActions() StartMovie("CVJonde")~EXIT

CHAIN
IF~Global("SanJon25","GLOBAL",3)~THEN BJonel25 MystraInv2
@6
DO~SetGlobal("SanJon25","GLOBAL",4)~
==BSandr25@7
==BJonel25@8
==BSandr25@9
==BJonel25@10
==BSandr25@11
=@12
==BJonel25@13
=@14EXIT

CHAIN
IF~Global("SanJon25","GLOBAL",6)~THEN BJonel25 SanJon1
@15
DO~SetGlobal("SanJon25","GLOBAL",7)~
==BSandr25@16
==BJonel25@17
==BSandr25@18
==BJonel25@19
==BSandr25@20
==BJonel25@21
==BSandr25@22EXIT

CHAIN
IF~Global("SanHealJon","LOCALS",2)~THEN BJonel25 SanJonHeal
@23
DO~SetGlobal("SanHealJon","LOCALS",3)~
==BSandr25@24
==BJonel25@25
==BSandr25@26EXIT

CHAIN
IF~Global("SanJon25","GLOBAL",8)~THEN BJonel25 SanJonPel
@27
DO~SetGlobal("SanJon25","GLOBAL",9) RealSetGlobalTimer("SanJonT","LOCALS",2600)~
==BSandr25@28
==BJonel25@29
==BSandr25@30
==BJonel25@31
==BSandr25@32
==BJonel25@33
==BSandr25@34
==BJonel25@35
==BSandr25@36EXIT

CHAIN
IF~Global("SanJonPwr","LOCALS",1)~THEN BJonel25 SanJonPwr
@37
DO~SetGlobal("SanJonPwr","LOCALS",2)RealSetGlobalTimer("SanJonT","LOCALS",2000)~
==BSandr25@38
==BJonel25 @39
==BSandr25@40
==BJonel25 @41
==BSandr25@42
==BJonel25 @43
==BSandr25@44
==BJonel25 @45
==BSandr25@46
==BJonel25 @47
==BSandr25@48EXIT

CHAIN
IF~Global("IrSanWK","LOCALS",1)~THEN BJonel25 WKadv
@49
DO~SetGlobal("IrSanWK","LOCALS",2) RealSetGlobalTimer("SanJonT","LOCALS",2000)~
==BSandr25@50
==BJonel25 @51
==BSandr25@52
==BJonel25 @53
=@54EXIT

CHAIN
IF~Global("SanIrClk","LOCALS",1)~THEN BJonel25 SanIrClk
 @55
DO~SetGlobal("SanIrClk","LOCALS",2) RealSetGlobalTimer("SanJonT","LOCALS",2000)~
==BSandr25@56
==BJonel25 @57
==BSandr25@58
==BJonel25 @59
==BSandr25@60
==BJonel25 @61
==BSandr25@62
==BJonel25 @63
==BSandr25@64
==BJonel25 @65
==BSandr25@66
==BJonel25 @67
==BSandr25@68EXIT

CHAIN
IF~Global("SanIrDeava","LOCALS",1)~THEN BJonel25 SanIrDeva
@69
DO~SetGlobal("SanIrDeava","LOCALS",2) RealSetGlobalTimer("SanJonT","LOCALS",2000)~
==BSandr25@70
==BJonel25 @71
==BSandr25@72
==BJonel25 @73
==BSandr25@74
==BJonel25 @75
=@76
==BSandr25@77
=@78
==BJonel25 @79EXIT

CHAIN
IF~Global("SanIrDeava","LOCALS",3)~THEN BJonel25 SanIrDeva2
@80
DO~SetGlobal("SanIrDeava","LOCALS",4) RealSetGlobalTimer("SanJonT","LOCALS",2000)~
==BSandr25@81
==BJonel25 @82
==BSandr25@83
==BJonel25 @84
==BSandr25@85
==BJonel25 @86
==BSandr25@87
==BJonel25 @88
==BSandr25@89EXIT

CHAIN
IF~Global("SendaiDoorXP","AR6100",3)~THEN BJonel25 SanJonCannbl
@90
DO~SetGlobal("SendaiDoorXP","AR6100",4)IncrementGlobal("JonRedemptionCounter","GLOBAL",3)~
==BSandr25@91
==BJonel25 @92
==BSandr25@93
==BJonel25 @94
=@95
==BSandr25@96
==BJonel25 @97
==BSandr25@98
==BJonel25 @99
==BSandr25@100EXIT

CHAIN
IF~Global("SanJon25","GLOBAL",10)~THEN BJonel25 SanJonPel
@101
DO~SetGlobal("SanJon25","GLOBAL",11) IncrementGlobal("JonRedemptionCounter","GLOBAL",5)RealSetGlobalTimer("SanJonT","LOCALS",2600)~
==BSandr25@102
==BJonel25 @103
==BSandr25@104
==BJonel25 @105
==BSandr25@106
==BJonel25 @107
==BSandr25@108
==BJonel25 @109
==BSandr25@110
==BJonel25 @111
==BSandr25@112
==BJonel25 @113EXIT

CHAIN
IF~Global("SanAtSeal","LOCALS",1)~THEN BJonel25 SanJonSeal
@114
DO~SetGlobal("SanAtSeal","LOCALS",2) IncrementGlobal("JonRedemptionCounter","GLOBAL",3)~
==BSandr25@115
==BJonel25 @116
==BSandr25@117
==BJonel25 @118
==BSandr25@119
==BJonel25 @120
==BSandr25@121
==BJonel25 @122
=@123EXIT

ADD_TRANS_TRIGGER Balth 24
~!InParty("CVSandr")~

EXTEND_BOTTOM Balth 24
IF ~InParty("CVSandr") Alignment(Player1,MASK_GOOD) ReputationGT(Player1,18) ~THEN REPLY @124GOTO 33
IF ~InParty("CVSandr") !Alignment(Player1,MASK_GOOD)ReputationGT(Player1,18)~THEN REPLY @124GOTO 33
IF ~InParty("CVSandr") Alignment(Player1,MASK_GOOD) !ReputationGT(Player1,18) ~THEN REPLY @124GOTO 33
IF ~InParty("CVSandr") !Alignment(Player1,MASK_GOOD)!ReputationGT(Player1,18)ReputationGT(Player1,6) ~THEN REPLY @124GOTO 34
IF ~InParty("CVSandr")~THEN REPLY @125GOTO 35
IF ~InParty("CVSandr")~THEN REPLY@126GOTO 36
IF ~InParty("CVSandr")~THEN REPLY @127GOTO 37
IF ~InParty("CVSandr") Alignment(Player1,MASK_EVIL)!ReputationGT(Player1,6)~THEN REPLY @124GOTO 38
IF ~InParty("CVSandr") Global("lrascbalt1","GLOBAL",0) InParty("lrirenic") G("AcceptIlmater",0) ~THEN DO ~SetGlobal("lrascbalt1","GLOBAL",1)~EXTERN JONEL25J SanIn
END

CHAIN
IF~~THEN JONEL25J SanIn
@128DO ~IncrementGlobal("ConvinceBalth","GLOBAL",2)~
==JONEL25J IF ~G("lrHasSoulStone",0)G("AcceptIlmater",0)G("lrBaltSoul",1)~THEN@129
==BALTH@130
==CVSan25J@131
==BALTH@132
==CVSan25J@133
==BALTH@134
END
++@135EXTERN Balth 39

EXTEND_BOTTOM LRGODEMO 13
IF~InParty("CVSandr")~THEN REPLY@136EXTERN CVSan25J Sancheatdemo
END

CHAIN
IF~~THEN CVSan25J Sancheatdemo
@137
=@138
==LRGODEMO@139
=@140
==CVSan25J @141
==LRGODEMO@142
=@143
==CVSan25J @144
==LRGODEMO@145
=@146
==CVSan25J @147
==LRGODEMO@148
=@149
==CVSan25J@150
==JONEL25J@151
DO~IncrementGlobal("JonRedemptionCounter","GLOBAL",6)~
==LRGODEMO@152
==CVSan25J@153
==LRGODEMO @154
= @155
==CVSan25J@156
==LRGODEMO @157
==CVSan25J@158
=@159
==LRGODEMO @52
==CVSan25J@160
==LRGODEMO @161
=@162
END
++@163EXTERN LRGODEMO 39

EXTEND_BOTTOM Jonel25J 162
IF~InParty("CVSandr") ~THEN REPLY@164DO~SetGlobal("lrdemoquestion","LOCALS",2)IncrementGlobal("JonRedemptionCounter","GLOBAL",3)~GOTO JonelDemogSan
END

APPEND Jonel25J
IF~~THEN BEGIN  JonelDemogSan
SAY@165
IF~Global("DemogorgonChange","GLOBAL",0)~THEN DO~ActionOverride("demogor1",ReallyForceSpell(Myself,DEMOGORGON_CHANGE)) SetGlobal("DemogorgonChange","GLOBAL",1)TriggerActivation("DemoGorgonInfo",FALSE) ~EXIT
IF~Global("DemogorgonChange","GLOBAL",1)~THEN EXIT
END
END

INTERJECT Jonel25J 304  SanDealSoul1
==Jonel25J IF~InParty("CVSandr") GlobalGT("JonRedemptioncounter","GLOBAL",10)~THEN@166END CVSan25J SanDealSoul

INTERJECT Jonel25J 305  SanDealSoul2
==Jonel25J IF~InParty("CVSandr") GlobalGT("JonRedemptioncounter","GLOBAL",10)~THEN@167END CVSan25J SanDealSoul

INTERJECT Jonel25J 319 SanDealSoul3
==CVSan25J IF~InParty("CVSandr") ~THEN@168END CVSan25J SanDealSoul

CHAIN
IF~~THEN CVSan25J SanDealSoul
@169
DO~SG("lrFinale",2)~
==Jonel25J@170
==CVSan25J@171
==Jonel25J@172
==CVSan25J@173
==Jonel25J@174
==CVSan25J@175
==Jonel25J@176
=@177
==Finsol01@178
=@179
=@180
=@181DO~ClearAllActions()
StartCutSceneMode()
StartCutScene("lrfijon1")~EXIT

EXTEND_BOTTOM FinSol01 8
IF~InParty("CVSandr")  Dead("lrirenic") Global("lrFinSolJon","LOCALS",0)~THEN DO~SetGlobal("lrFinSolJon","LOCALS",1)~GOTO 5
END

EXTEND_TOP FinSol01 4 #3
IF~InParty("CVSandr")  Dead("lrirenic") Global("lrFinSolJon","LOCALS",0)~THEN DO~SetGlobal("lrFinSolJon","LOCALS",1)~GOTO 5
IF~InParty("CVSandr") InParty("lrirenic") Global("lrFinSolJon","LOCALS",0)~THEN DO~SetGlobal("lrFinSolJon","LOCALS",1)~GOTO 46
END

I_C_T LRElle1 42 SanLRMaskAccept
==CVSan25J IF~InParty("CVSandr")~THEN@182
==LRElle1 IF~InParty("CVSandr")~THEN@183
==CVSan25J IF~InParty("CVSandr")~THEN@184
END
