BEGIN CVRingo

CHAIN
IF~NumTimesTalkedTo(0) !AreaCheck("CVElm1")~THEN CVRingo WDret1
@0
== BSANDR@1
== CVRingo @2
== BSANDR@3
END
IF~GlobalLT("KatDef","GLOBAL",2) !Dead("Kattah") ~THEN REPLY@4+ WDretkhatliv
IF~GlobalLT("KatDef","GLOBAL",2) Dead("Kattah") ~THEN REPLY@4+ WDretkhatdedH
IF~GlobalGT("KatDef","GLOBAL",1)~THEN REPLY@4+ WDretkhatdedS

CHAIN
IF ~~THEN CVRingo  WDretkhatliv
@5
== BSANDR@6
== CVRingo @7
== BSANDR@8
END
++ @9DO ~AddexperienceParty(500)~+ WDretKhatfind


CHAIN
IF ~~THEN CVRingo  WDretkhatdedS
@5
== BSANDR@6
== CVRingo @7
== BSANDR@10
==CVRingo @11
END
++ @12DO ~AddexperienceParty(9000)~ + WDret2
++ @13DO ~AddexperienceParty(200)~+ WDret2

CHAIN
IF ~~THEN CVRingo  WDretkhatdedH
@5
== BSANDR@6
== CVRingo @7
END
++@14+ WDret3

CHAIN
IF ~~THEN CVRingo WDret2
@15
= @16DO ~SetGlobal("SanWDTemplWi","GLOBAL",3)SetGlobal("SanWDTempleHint","GLOBAL",3)~EXIT

CHAIN
IF ~~THEN CVRingo WDret3
@17
END
++ @18DO ~AddexperienceParty(500)~+ WDretKhatfind2

CHAIN
IF ~~THEN CVRingo  WDretKhatfind
@19
== BSANDR@20
== CVRingo @21
== BSANDR@22
==CVRingo @23
END
++@24EXIT

CHAIN
IF ~~THEN CVRingo  WDretKhatfind2
@25
== BSANDR@20
== CVRingo @21
== BSANDR@22
==CVRingo @23
END
++@26EXIT

CHAIN
IF~NumTimesTalkedToGT(0) GlobalGT("KatDef","GLOBAL",1) GlobalLT("SanWDTemplWi","GLOBAL",3)~THEN CVRingo WDret11
@27
== BSANDR@28
== CVRingo @15DO ~AddexperienceParty(2000)~
== BSANDR IF~Global("SanWDTempleHint","GLOBAL",2)~THEN@29
== CVRingo @16DO~SetGlobal("SanWDTempleHint","GLOBAL",3) SetGlobal("SanWDTemplWi","GLOBAL",3) ~EXIT

CHAIN
IF~NumTimesTalkedToGT(0) GlobalLT("KatDef","GLOBAL",2) ~THEN CVRingo WDret12
@27
END
++@30EXIT

CHAIN
IF~Global("SanWDTemplWi","GLOBAL",3)Global("SanWDTempleHint","GLOBAL",3)~THEN CVRingo WDTempHeal
@31
== BSANDR@32
== CVRingo @33
END
++@34+ WDTempHeal2

CHAIN
IF ~~THEN CVRingo WDTempHeal2
@35
== BSANDR@36
== CVRingo @37
== BSANDR@38
=@39
== CVRingo @40
== BSANDR@41
== CVRingo @42
== BSANDR@43
== CVRingo @44
== BSANDR@45
== CVRingo @46
== BSANDR@47
END
++ @48DO~SetGlobal("SanWDTemplWi","GLOBAL",4)~EXIT
++ @49DO ~SetGlobal("SanWDTemplWi","GLOBAL",5)~+ WDTempHeal3

CHAIN
IF ~~THEN CVRingo WDTempHeal3
@50
=@51
== BSANDR@52 EXIT

CHAIN
IF~Global("SanWDTemplWi","GLOBAL",9)~THEN CVRingo WDTempHealDone
@53
DO~SetGlobal("SanWDTemplWi","GLOBAL",10)~
== BSANDR@54
== CVRingo @55DO~TakePartyGold(2000)~
== BSANDR@56
== CVRingo @57
== BSANDR@58DO~AddSpecialAbility("cvdrag2") AddSpecialAbility("sanhand") GiveItemCreate("cvmybelt","CVSandr",0,0,0) AddSpecialAbility("sanhand") AddSpecialAbility("spin101")~
EXIT

CHAIN
IF~Global("SanKhalBlood","GLOBAL",4)~THEN CVRingo BookWrite
@59
DO~SetGlobal("SanKhalBlood","GLOBAL",5) ~
== BSANDR@60
== CVRingo @61
== BSANDR@62
== CVRingo @63
== BSANDR@64
== CVRingo @65
== BSANDR@66
== CVRingo @67
== BSANDR@68
== CVRingo @69
== BSANDR@70
== CVRingo @71
== BSANDR@72
EXIT

CHAIN
IF~Global("SanVampWDQuest","GLOBAL",8)~THEN CVRingo StartVampQ1
@73
DO~SetGlobal("SanVampWDQuest","GLOBAL",9)~
== BSANDR@74
== CVRingo @75
=@76
= @77
=@78
== BSANDR@79
== CVRingo @80
== BSANDR@81
== CVRingo @82
END
++@83+ StartVampQ2
++@84+ StartVampQ2

CHAIN 
IF~~THEN CVRingo StartVampQ2
@85EXIT

CHAIN
IF~Global("SanVampWDQuest","GLOBAL",24)~THEN CVRingo StartVampQ3
@86
DO~SetGlobal("SanVampWDQuest","GLOBAL",25)~
== BSANDR@87
== CVRingo @88
== BSANDR@89
== CVRingo @90DO~AddexperienceParty(5500)~EXIT

CHAIN
IF~GlobalGT("SanWDTemplWi","GLOBAL",9) ~THEN CVRingo WDTempHealDoneF
@91
== BSANDR@72
EXIT