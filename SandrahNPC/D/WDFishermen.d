BEGIN  WDFish1
BEGIN  WDFish2
BEGIN  WDFish3
BEGIN  WDFish5

CHAIN
IF~Global("WDFishermen","GLOBAL",1)~THEN WDFish1 Fishplot1
@0
==CVSandrJ@1
==WDFish1@2
==CVSandrJ@3
==WDFish2@4
==WDFish1@5
==CVSandrJ@6
==WDFish2@7
==WDFish1@8
==IF_FILE_EXISTS B2#TenyJ IF~InParty("Tenya")~THEN@9
==CVSandrJ@10
=@11
END
++@12+ Fishplot2
++@13+ Fishplot2

CHAIN 
IF~~THEN WDFish1 Fishplot2
@14
==CVSandrJ@15
==WDFish2@16
==WDFish1@17
==CVSandrJ@18
==WDFish2@19
==CVSandrJ@20
==IF_FILE_EXISTS B2#TenyJ IF~InParty("Tenya")~THEN@21
==WDFish1@22
==WDFish2@23
==CVSandrJ@24
END
++@25+ Fishplot3

CHAIN 
IF~~THEN WDFish1 Fishplot3
@26
==WDFish2@27
==CVSandrJ@28
END
++@29DO~SetGlobal("WDFishermen","GLOBAL",2)~EXIT
++@30DO~SetGlobal("WDFishermen","GLOBAL",2)~EXIT
++@31 DO~SetGlobal("WDFishermen","GLOBAL",2)~EXIT

CHAIN
IF~GlobalGT("WDFishermen","GLOBAL",0) GlobalLT("WDFishermen","GLOBAL",5)~THEN WDFish1 FishplotR
@32
==CVSandrJ@33
==WDFish2@34EXIT

CHAIN
IF~Global("WDFishermen","GLOBAL",5)~THEN WDFish1 FishplotS
@32
==CVSandrJ@35
==WDFish2@36
==CVSandrJ@37
==WDFish1@38
==IF_FILE_EXISTS B2#TenyJ IF~InParty("Tenya")~THEN@39
==CVSandrJ@40
=@41DO~SetGlobal("WDFishermen","GLOBAL",6)~EXIT

CHAIN
IF~Global("WDFishermen","GLOBAL",7)~THEN WDFish3 FishplotF
@42
DO~SetGlobal("WDFishermen","GLOBAL",8)~
==WDFish2@43
==WDFish1@44
==WDFish3@45
==WDFish1@46
==WDFish3@47
==WDFish2@48
==WDFish3@49
==CVSandrJ@50
==WDFish3@51
==CVSandrJ@52
==WDFish3@53
==CVSandrJ@54
==WDFish3@55
=@56DO~TakePartyItem("CVWDFi1") TakePartyItem("CVWDFi2") CreateVisualEffect("icwrati",[2252.294])  Wait(2) CreateVisualEffect("icwrati",[2212.254]) Wait(2) ReallyForceSpell(Myself,DRYAD_TELEPORT)~EXIT

CHAIN
IF~Global("WDFishermen","GLOBAL",23)~THEN WDFish1 Sacri1
@57
DO~SetGlobal("WDFishermen","GLOBAL",24)~
==CVSandrJ@58
==WDFish2@59
==WDFish1@60
==WDFish2@61DO~ClearAllActions() StartCutSceneMode()ActionOverride("WDFish1",MoveToPoint([1841.322])) MoveViewPoint([1841.322],FAST)Wait(8) CreateVisualEffect("spanisum",[1938.322])ActionOverride("WDFish1",DestroySelf()) EndCutSceneMode() ReputationInc(-1) EscapeArea() ~EXIT

CHAIN
IF~Global("WDFishermen","GLOBAL",12)~THEN WDFish1 Sacri2
@57
DO~SetGlobal("WDFishermen","GLOBAL",13)~
==CVSandrJ@62
==WDFish1@63
==WDFish2@64DO~ClearAllActions() StartCutSceneMode() TakePartyItem("WDfibod") CreateCreature("WDFish5",[2155.290],0) Wait(6) ActionOverride("WDFish5",MoveToPoint([1841.322])) MoveViewPoint([1841.322],FAST) Wait(8) CreateVisualEffect("spanisum",[1938.322])ActionOverride("WDFish5",DestroySelf()) ActionOverride("WDFish1",EscapeArea()) EndCutSceneMode() ReputationInc(1) AddexperienceParty(9000) EscapeArea()~EXIT


CHAIN
IF~Global("WDFishermen","GLOBAL",8)~THEN CVSandrJ FishplotF2
@65
DO~SetGlobal("WDFishermen","GLOBAL",9)~
==WDFish2@66
==WDFish1@67
==WDFish2@68
==CVSandrJ@69
==WDFish1@70
END
++@71+ FishplotF3
++@72+ FishplotF3
++@73+ FishplotF3

CHAIN
IF~~THEN CVSandrJ FishplotF3
@74
==WDFish1@75
==CVSandrJ@76
==WDFish2@77
==WDFish1@78
==CVSandrJ@79
==WDFish2@80
==CVSandrJ@81
END
++@82DO~IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
++@83DO~IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
++@84EXIT

CHAIN
IF~Global("WDFishermen","GLOBAL",10)~THEN CVSandrJ FishplotCrys
@85
DO~SetGlobal("WDFishermen","GLOBAL",11)~
END
++@86+ FishplotCrys2
++@87+ FishplotCrys2

CHAIN
IF~~THEN CVSandrJ FishplotCrys2
@88
END
++@89+ FishplotCrys3
++@90+ FishplotCrys3

CHAIN
IF~~THEN CVSandrJ FishplotCrys3
@91
=@92
END
++@93EXIT

CHAIN
IF~Global("WDFishermen","GLOBAL",11)~THEN WDFish5 Sirine1
@94
==CVSandrJ@95
==WDFish5@96
==CVSandrJ@97
==WDFish5@98
END
++@99+ Sirine2
++@100DO~IncrementGlobal("Sanpoints","GLOBAL",-2) ~+ Sirine2
++@101+ Sirine2

CHAIN
IF~~THEN WDFish5 Sirine2
@102
==CVSandrJ@103
==WDFish5@104
=@105
=@106
==CVSandrJ@107
==WDFish5@108
==CVSandrJ@109
==WDFish5@110
==CVSandrJ@111
==WDFish5@112
END
++@113+ Sirine3
++@114+ Sirine3
++@115+ Sirine3

CHAIN
IF~~THEN WDFish5 Sirine3
@116
==CVSandrJ@117
==Bimoen IF~InParty("Imoen2")~THEN@118
== BSHART IF~InParty("Sharteel") ~THEN @119
== BVICON  IF~InParty("Viconia") ~THEN @120
== BKIVAN  IF~InParty("Kivan") ~THEN @121
==IF_FILE_EXISTS BSUFINCH  IF~InParty("Sufinch") ~THEN @122
== BAJANT  IF~InParty("Ajantis") ~THEN @123
==IF_FILE_EXISTS k-roseB  IF~InParty("k-rose") ~THEN @124
==IF_FILE_EXISTS ~B!GAVINJ~IF ~InParty("B!GAVIN")~THEN @125
==IF_FILE_EXISTS ACBreB IF~InParty("ACBre") ~THEN  @126
==BNeera_ IF~InParty("Neera") ~THEN @127
== BBRANW  IF~InParty("Branwen") ~THEN @128
== BXANNN  IF~InParty("Xan") ~THEN @129
== BCORAN  IF~InParty("Coran") ~THEN  @130
== IF_FILE_EXISTS BRH#ISRA  IF~InParty("RH#ISRA") ~THEN @131
== BGARRI IF~InParty("Garrick") ~THEN  @132
==IF_FILE_EXISTS BT2Val IF~InParty("T2Val") ~THEN @133
== BDYNAH  IF~InParty("Dynaheir") ~THEN @134
== BYESLI IF~InParty("Yeslick") ~THEN @135
==BTIAX IF ~InParty("Tiax") ~THEN @136
==IF_FILE_EXISTS B2#TenyJ IF~InParty("Tenya")~THEN@137
== BJAHEI  IF~InParty("Jaheira") ~THEN @138
==BDorn_ IF~InParty("Dorn") ~THEN @139
== BSAFAN IF~InParty("Safana") ~THEN@140
==BJenli IF~InParty("CVJenlig") ~THEN @141
== BSANDR@142
END
++@143DO~SetGlobal("WDFishermen","GLOBAL",12) ActionOverride("WDFish5",DestroySelf())GiveItemCreate("WDfibod","CVSandr",1,0,0)~EXIT
++@144DO~SetGlobal("WDFishermen","GLOBAL",22) ~EXIT
++@145DO~Kill("WDFish5")SetGlobal("WDFishermen","GLOBAL",32)~EXIT
