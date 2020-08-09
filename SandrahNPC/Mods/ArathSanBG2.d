INTERJECT_COPY_TRANS LK#Arath 2 SanMeetArath
== CVSANDRJ IF~InParty("CVSandr")~THEN@0
==LK#Arath IF~InParty("CVSandr")~THEN@1
=@2
END

CHAIN
IF WEIGHT #-5~Global("SanMeetArath","GLOBAL",2)~THEN BLK#Arat SanMeetArath2
@3
DO~SetGlobal("SanMeetArath","GLOBAL",3)RealSetGlobalTimer("SanInterArath","LOCALS",1700)~
==BSandr@4
==BLK#Arat@5
==BSandr@6
==BLK#Arat@7
==BSandr@8
==BLK#Arat@9
==BSandr@10EXIT

CHAIN
IF WEIGHT #-5~Global("SanMeetArath","GLOBAL",4)~THEN BLK#Arat SanMeetArath3
@11
DO~SetGlobal("SanMeetArath","GLOBAL",5)RealSetGlobalTimer("SanInterArath","LOCALS",1700)~
==BSandr@12
==BLK#Arat@13
==BSandr@14
==BLK#Arat@15
==BSandr@16
==BLK#Arat@17
==BSandr@18
==BLK#Arat@19EXIT

CHAIN
IF WEIGHT #-5~Global("SanMeetArath","GLOBAL",6)~THEN BLK#Arat SanMeetArath4
@20
DO~SetGlobal("SanMeetArath","GLOBAL",7)RealSetGlobalTimer("SanInterArath","LOCALS",1700)~
==BSandr@21
==BLK#Arat@22
==BSandr@23
==BLK#Arat@24
==BSandr@25
==BLK#Arat@26
=@27
==BSandr@28
==BLK#Arat@29
==BSandr@30
==BLK#Arat@31
=@32EXIT

CHAIN
IF~Global("SanMeetArath","GLOBAL",8)~THEN CVCatCe SanFindArat1
@33
DO~SetGlobal("SanMeetArath","GLOBAL",9)~
== BSANDR@34
==BLK#Arat@35
== BSANDR@36DO~ReallyForceSpell("CVCATCE",CLERIC_CURE_MEDIUM_WOUNDS)~
END
++@37+ SanFindArat2
++@38+ SanFindArat2

CHAIN
IF~~THEN CVCatCe SanFindArat2
@39
==BLK#Arat@40
== BSANDR@41
==BLK#Arat@42
== BSANDR@43
==BLK#Arat@44
== BSANDR@45
==Pellig@46
==CVCatCe@47
EXIT


CHAIN
IF~Global("SanMeetArath","GLOBAL",11)~THEN BSandr ArathFreeCat
@48
DO~SetGlobal("SanMeetArath","GLOBAL",12)~
==BLK#Arat@49
== BSANDR@50
==BLK#Arat@51
DO~AddXPObject("Arath",5000) AddXPObject("CVSandr",5000) TakePartyItem("CVCatce") Wait(2) DestroyItem("CVCatce") CreateCreatureObjectOffset("CVCatCe","CVSandr",[25.-25]) ~EXIT

CHAIN
IF~Global("SanMeetArath","GLOBAL",12)~THEN CVCatCe SanFindAr3
@52
DO~SetGlobal("SanMeetArath","GLOBAL",13)ActionOverride("CVSandr",AddSpecialAbility("CVDra15"))RealSetGlobalTimer("SanInterArath","LOCALS",2700)~
==BLK#Arat@53
== BSANDR@54
==Pellig@55
==BLK#Arat@56
== BSANDR@57
==BLK#Arat@58
== BSANDR@59
==BLK#Arat@60
==CVCatCe@47DO~ActionOverride("CVCatce",MoveToPointNoInterrupt([0.0]))~EXIT

CHAIN
IF WEIGHT #-5~Global("SanMeetArath","GLOBAL",14)~THEN BLK#Arat SanMeetArath6
@61
DO~SetGlobal("SanMeetArath","GLOBAL",15)~
== BSANDR@62
==BLK#Arat@63
== BSANDR@64
==BLK#Arat@65
== BSANDR@66
==BLK#Arat@67
== BSANDR@68
==BLK#Arat@69
== BSANDR@70DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() Wait(2) AddSpecialAbility("Spin517r")~EXIT

CHAIN
IF WEIGHT #-5~Global("SanMeetArath","GLOBAL",16)~THEN BLK#Arat SanMeetArath7
@71
DO~SetGlobal("SanMeetArath","GLOBAL",17)~
== BSANDR@72
==BLK#Arat@73
== BSANDR@74
==BLK#Arat@75
== BSANDR@76
==BLK#Arat@77
== BSANDR@78EXIT