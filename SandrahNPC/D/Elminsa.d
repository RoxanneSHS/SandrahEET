BEGIN Elminsa

//Elminsters Revenge
IF ~Global("ElmRevDau","GLOBAL",3)~ElmRevDau
SAY @0
IF~~THEN REPLY @1
DO ~SetGlobal("ElmRevDau","GLOBAL",4) ReputationInc(-9)~EXIT
END

// Bring Gifts
IF ~Global("MystrGift","GLOBAL",2) !AreaCheck("CVElm2") ~ElmBringGift
SAY @2
=@3
IF~~THEN DO ~SetGlobal("MystrGift","GLOBAL",3) ~EXIT
END

// Elminster Shard Quest

CHAIN
IF ~Global("ElminGaveNarQ","GLOBAL",1)~THEN  Elminsa ElminGaveNarQI
@4
== CVSandrJ @5
== Elminsa @6
= @7
== CVSandrJ @8
END
++ @9+ GaveNarQ2
++ @10DO ~EraseJournalEntry(@76) ~+ GaveNarRej
++ @11DO ~EraseJournalEntry(@76) ~+ GaveNarQ2

CHAIN
IF ~~THEN Elminsa GaveNarRej
@12
== CVSandrJ @13
END
++ @14+ GaveNarRej2
++ @15+ GaveNarQ2

CHAIN
IF ~~THEN Elminsa GaveNarRej2
@16
== CVSandrJ @17
== Elminsa @18
== CVSandrJ @19DO ~
                CreateVisualEffectObject("SPDIMNDR","CVSandr")
		CreateVisualEffectObject("SPDIMNDR","Elminsa")
		Wait(3)
		ActionOverride("CVSandr",EscapeAreaMove("BG3402",270,497,0))
		ActionOverride("Elminsa",EscapeAreaMove("BG3402",291,500,0))
                ActionOverride("NarQMes",EscapeAreaMove("BG3402",251,490,0))
	        SetGlobal("SandrahJoined","GLOBAL",5) LeaveParty()
		SetGlobal("ElminGaveNarQ","GLOBAL",4)
		AddJournalEntry(@60072,INFO)
                END ~EXIT

CHAIN
IF ~~THEN Elminsa GaveNarQ2
@20
= @21
== CVSandrJ @22
== Elminsa @23
== CVSandrJ @24
== Elminsa @25
== CVSandrJ @26
== Elminsa @27
= @28
= @29
END
IF ~PartyHasItem("SCRLALZ") ~THEN REPLY @30+ GaveNarQ3
IF ~!PartyHasItem("SCRLALZ") ~THEN REPLY @31+ GaveNarScrl

CHAIN
IF ~~THEN Elminsa GaveNarScrl
@32
= @33
END
++ @34 + GaveNarScr2

CHAIN
IF ~~THEN Elminsa GaveNarScr2
@35
= @36
END
++ @37DO ~SetGlobal("ElminGaveNarQ","GLOBAL",2) ActionOverride("Elminsa",EscapeArea()) ActionOverride("Narqmes",EscapeArea())AddJournalEntry(@60071,QUEST) ~ EXIT

CHAIN
IF ~~THEN Elminsa GaveNarQ3
@38
= @39
= @40
== CVSandrJ @41
== Elminsa  @42
= @43
END
++ @44+ GaveNarQ4

CHAIN
IF ~~THEN Elminsa GaveNarQ4
@45
= @46
== CVSandrJ @47
==  Elminsa @48
= @49
END
++ @50+ ClP1
IF ~Global("UsedScrlLoc","GLOBAL",1) ~THEN REPLY @51+ ClP2
++ @52 + ClP1

CHAIN
IF ~~THEN Elminsa ClP1
@53
== CVSandrJ @54
== Elminsa @55
END
IF~!AreaCheck("BG3402")~THEN REPLY@56DO ~SetGlobal("SanNarQ","GLOBAL",1) SetGlobal("ElminGaveNarQ","GLOBAL",4) AddJournalEntry(@60070,QUEST) EraseJournalEntry(@60076)~EXIT
IF~AreaCheck("BG3402")~THEN REPLY@56DO ~SetGlobal("SanNarQ","GLOBAL",1) SetGlobal("ElminGaveNarQ","GLOBAL",4) AddJournalEntry(@60070,QUEST) EraseJournalEntry(@60076)~+ MoveElm

CHAIN
IF ~~THEN Elminsa ClP2
@55
END
IF~!AreaCheck("BG3402")InParty("Imoen2")~THEN REPLY@57DO ~AddexperienceParty(2000) SetGlobal("SanNarQ","GLOBAL",1) SetGlobal("ElminGaveNarQ","GLOBAL",4) AddJournalEntry(@60070,QUEST) EraseJournalEntry(@60076)~EXIT
IF~!AreaCheck("BG3402")!InParty("Imoen2")~THEN REPLY@58DO ~AddexperienceParty(2000) SetGlobal("SanNarQ","GLOBAL",1) SetGlobal("ElminGaveNarQ","GLOBAL",4) AddJournalEntry(@60070,QUEST) EraseJournalEntry(@60076)~EXIT
IF~AreaCheck("BG3402")InParty("Imoen2")~THEN REPLY@56DO ~SetGlobal("SanNarQ","GLOBAL",1) SetGlobal("ElminGaveNarQ","GLOBAL",4) AddJournalEntry(@60070,QUEST) EraseJournalEntry(@60076)~+ MoveElm
IF~AreaCheck("BG3402")!InParty("Imoen2")~THEN REPLY@59DO ~SetGlobal("SanNarQ","GLOBAL",1) SetGlobal("ElminGaveNarQ","GLOBAL",4) AddJournalEntry(@60070,QUEST) EraseJournalEntry(@60076)~+ MoveElm

CHAIN
IF~~THEN Elminsa MoveElm
@60
DO~ActionOverride("Elminsa",EscapeAreaMove("BG2304",479,242,1))
    ActionOverride("NarQMes",EscapeAreaMove("BG2304",436,381,4)) ~
EXIT

CHAIN
IF ~Global("ElminGaveNarQ","GLOBAL",2) PartyHasItem("SCRLALZ") ~THEN Elminsa ThalWScr
@61
== CVSandrJ @62
END
++ @63DO ~AddexperienceParty(2000)EraseJournalEntry(@60071) AddJournalEntry(@60073,QUEST_DONE)~+ GaveNarQ3

CHAIN
IF ~Global("ElminGaveNarQ","GLOBAL",2) !PartyHasItem("SCRLALZ") ~THEN Elminsa ThalWoScr
@64
END
++ @65EXIT

CHAIN
IF ~GlobalGT("SanNarQ","GLOBAL",0) GlobalLT("SanNarQ","GLOBAL",6)~THEN Elminsa
NarQNotYet
@66
== CVSandrJ @67
END
++ @68+  NarQNotYetH


CHAIN
IF ~~THEN Elminsa NarQNotYetH
@69
= @70
END
++ @71
EXIT 

CHAIN
IF ~Global("SanNarQ","GLOBAL",6) PartyHasItem("EShard")~THEN Elminsa SharRetI
@72
= @73
== CVSandrJ @74
== BIMOEN  IF ~InParty("Imoen2")~THEN @75
== BBRANW IF~InParty("Branwen") ~THEN @76
== Elminsa @77
END
++ @78+ NarqLeft1
++ @79+ NarqLeft1
++ @80+ NarqLie
++ @81+ NarqLeft1

CHAIN
IF ~~THEN Elminsa NarqLie
@82
= @83
= @84DO ~GiveItemCreate("SanParc","CVSandr",0,0,0)
SetGlobal("SanparcT","GLOBAL",1)
AddJournalEntry(@60077,QUEST_DONE)
AddexperienceParty(5000)
SetGlobal("SanNarQ","GLOBAL",7)
TakePartyItem("EShard")
EraseJournalEntry(@60013)
EraseJournalEntry(@60017)
EraseJournalEntry(@60021)
EraseJournalEntry(@60042)
EraseJournalEntry(@60048)
EraseJournalEntry(@60058)
EraseJournalEntry(@60067)
EraseJournalEntry(@60070)
EraseJournalEntry(@60076)
StartCutSceneMode()
CreateVisualEffectObject("SPDIMNDR","Elminsa")
Wait(3)
EndCutSceneMode()
ActionOverride("Elminsa",EscapeAreaMove("CVDRE2",834,775,12))
ActionOverride("Narqmes",EscapeAreaMove("CVDRE2",844,795,12))
~EXIT

CHAIN
IF ~~THEN Elminsa NarqLeft1
@85
= @86
= @84DO ~GiveItemCreate("SanParc","CVSandr",0,0,0)
SetGlobal("SanparcT","GLOBAL",1)
AddJournalEntry(@60077,QUEST_DONE)
AddexperienceParty(5000)
SetGlobal("SanNarQ","GLOBAL",7)
TakePartyItem("EShard")
EraseJournalEntry(@60013)
EraseJournalEntry(@60017)
EraseJournalEntry(@60021)
EraseJournalEntry(@60042)
EraseJournalEntry(@60048)
EraseJournalEntry(@60058)
EraseJournalEntry(@60067)
EraseJournalEntry(@60070)
EraseJournalEntry(@60076)
StartCutSceneMode()
CreateVisualEffectObject("SPDIMNDR","Elminsa")
Wait(3) 
EndCutSceneMode()
ActionOverride("Elminsa",EscapeAreaMove("CVDRE2",834,775,12))
ActionOverride("Narqmes",EscapeAreaMove("CVDRE2",864,795,12))
~EXIT

// Elminster at Waterdeep

CHAIN
IF ~Global("SanNarQ","GLOBAL",7) AreaCheck("CVDRE2")~THEN Elminsa WelWD
@87
= @88
== CVSandrJ @89
== Elminsa @90
= @91
== CVSandrJ @92
== BIMOEN IF~InParty("Imoen2") ~THEN @93
== BSHART IF~InParty("Sharteel") ~THEN @94
== BVICON  IF~InParty("Viconia") ~THEN @95
== BKIVAN  IF~InParty("Kivan") ~THEN @96
==IF_FILE_EXISTS BSUFINCH  IF~InParty("Sufinch") ~THEN @97
== BAJANT  IF~InParty("Ajantis") ~THEN @98
==IF_FILE_EXISTS k-roseB  IF~InParty("k-rose") ~THEN @99
==IF_FILE_EXISTS ~BB!GAVIN~IF~InParty("b!gavin") ~THEN  @100
==IF_FILE_EXISTS ACBreB IF~InParty("ACBre") ~THEN  @101
== Elminsa IF~InParty("ACBre") ~THEN  @102
== IF_FILE_EXISTS BRH#ISRA  IF~InParty("RH#ISRA") ~THEN @103
== BBRANW  IF~InParty("Branwen") ~THEN @104
== BXANNN  IF~InParty("Xan") ~THEN @105
== BCORAN  IF~InParty("Coran") ~THEN  @106
== Elminsa  IF~InParty("Coran") ~THEN  @107
== BDYNAH  IF~InParty("Dynaheir") ~THEN @108
== BJAHEI  IF~InParty("Jaheira") ~THEN @109
== BJenli IF~InParty("CVJenlig") ~THEN @110
==IF_FILE_EXISTS BT2Val IF~InParty("T2Val") ~THEN @111
== Elminsa IF~InParty("CVJenlig") ~THEN @112
== BSANDR @113
END
++ @114
+ WelWD2

CHAIN
IF ~~THEN Elminsa WelWD2
@115
DO ~EscapeAreaMove("CVSTUD",450,256,3)~EXIT

CHAIN
IF ~Global("SanNarQ","GLOBAL",7) AreaCheck("CVSTUD") ~THEN Elminsa FalSlip1
@116
DO ~SetGlobal("SanNarQ","GLOBAL",8)~
== BSANDR @117
== Elminsa @118
== BSANDR @119
END
++ @120+ FalSlip2
++ @121+ FalSlipHide

CHAIN
IF ~~THEN Elminsa FalSlipHide
@122
END
++ @123+ FalSlip2

CHAIN
IF ~~THEN Elminsa FalSlip2
@124
= @125
== BIMOEN IF~InParty("Imoen2") ~THEN @126
== Elminsa IF~InParty("Imoen2") ~THEN@127
== BSANDR @128
== Elminsa @129
END
++ @130+ FalSlip3
++ @131+ FalSlip3

CHAIN
IF ~~THEN Elminsa FalSlip3
@132
== BSANDR @133
== Elminsa @134
== BSANDR @135
== Elminsa @136DO ~GiveItemCreate("SanEtg","CVSandr",0,0,0) AddJournalEntry(@60127,QUEST) SetGlobal("SanNarQ","GLOBAL",9) EscapeArea()~ EXIT

CHAIN
IF~Global("SanAcadMission","GLOBAL",3)~THEN Elminsa SendAcad
@137
DO ~SetGlobal("SanAcadMission","GLOBAL",4)~
== BSANDR IF ~AreaCheck("CVDRE2")~THEN @138DO ~AddexperienceParty(1100)~
== BSANDR IF ~!AreaCheck("CVDRE2")~THEN @139DO ~AddexperienceParty(600)~
== Elminsa @140
== BSANDR @141
== Elminsa @142
== BSANDR @143
== Elminsa @144
== BSANDR @145
== Elminsa @146
END
++@147+ SendAcad2
++@148+ SendAcad2

CHAIN
IF~~THEN  Elminsa SendAcad2
@149
== BIMOEN IF~InParty("Imoen2") ~THEN @150
== BSHART IF~InParty("Sharteel") ~THEN @151
== BVICON  IF~InParty("Viconia") ~THEN @152
== BKIVAN  IF~InParty("Kivan") ~THEN @153
==IF_FILE_EXISTS BSUFINCH  IF~InParty("Sufinch") ~THEN @154
== BAJANT  IF~InParty("Ajantis") ~THEN @155
==IF_FILE_EXISTS k-roseB  IF~InParty("k-rose") ~THEN @156
==IF_FILE_EXISTS ~B!GAVINJ~IF ~InParty("B!GAVIN")~THEN @157
==IF_FILE_EXISTS ACBreB IF~InParty("ACBre") ~THEN  @158
== BBRANW  IF~InParty("Branwen") ~THEN @159
==IF_FILE_EXISTS ~BB!GAVIN~IF~InParty("b!gavin") ~THEN  @160
== BXANNN  IF~InParty("Xan") ~THEN @161
== BCORAN  IF~InParty("Coran") ~THEN  @162
== IF_FILE_EXISTS BRH#ISRA  IF~InParty("RH#ISRA") ~THEN @163
== BGARRI IF~InParty("Garrick") ~THEN  @164
==IF_FILE_EXISTS BT2Val IF~InParty("T2Val") ~THEN @165
== BDYNAH  IF~InParty("Dynaheir") ~THEN @166
== BYESLI IF~InParty("Yeslick") ~THEN @167
==BTIAX IF ~InParty("Tiax") ~THEN @168
== BJAHEI  IF~InParty("Jaheira") ~THEN @169
== BSAFAN IF~InParty("Safana") ~THEN@170
==BJenli IF~InParty("CVJenlig") ~THEN @171
== BSANDR @172
END
++ @173 + SendAcad3
++ @174+ SendAcad3
++ @175+  SendAcad4

CHAIN
IF~~THEN  Elminsa SendAcad3
@176
DO ~SetGlobal("SanAcad","GLOBAL",1) EscapeArea()~
EXIT

CHAIN
IF~~THEN  Elminsa SendAcad4
@177DO ~SetGlobal("SanAcad","GLOBAL",1) SetGlobal("SanAkadMistake","GLOBAL",1) EscapeArea()~
EXIT


// Story of the Second Child

CHAIN
IF~Global("Formedcloth","GLOBAL",3) AreaCheck("CVDRE2") ~THEN  Elminsa KHChild1
@178
DO~SetGlobal("Formedcloth","GLOBAL",4) ~
== BSANDR @179
== Elminsa @180
==BSANDR @181
END
++ @182+ KHChild2
++ @183+ KHChild2

CHAIN
IF~~THEN  Elminsa KHChild2
@184DO ~EscapeArea()~EXIT

CHAIN
IF ~Global("Formedcloth","GLOBAL",24) AreaCheck("CVStud") ~THEN  Elminsa SanImoMoth
@185
DO ~SetGlobal("Formedcloth","GLOBAL",25)~
== BIMOEN @186
== Elminsa @187
== BIMOEN @188
== Elminsa @189
= @190
== BIMOEN @191
== Elminsa @192
== BIMOEN @193
== Elminsa @194
== BIMOEN @195
== Elminsa @196
== BIMOEN @197
= @198
== Elminsa @199
== BIMOEN @200
== Elminsa @201
== BIMOEN @202
== Elminsa @203DO ~EscapeArea()~
EXIT

