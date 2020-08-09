BEGIN CVGHATLE

IF ~Global("NoShau","LOCALS",0) Global("ENDOFBG1","GLOBAL",2) !InParty("CVShau") ~THEN BEGIN ShauHint1
SAY @0
IF~~THEN REPLY @1GOTO ShauHint2
IF~~THEN REPLY @2GOTO NoShauHint
END

IF~~THEN BEGIN  NoShauHint
SAY @3
IF~~THEN REPLY @4DO ~SetGlobal("NoShau","LOCALS",0) RevealAreaOnMap("ar3520") AddJournalEntry(@60349,QUEST)~EXIT
END

IF~~THEN BEGIN  ShauHint2
SAY @5
IF~GlobalLT("KnowStorm","GLOBAL",1)~THEN REPLY @6DO ~SetGlobal("NoShau","LOCALS",1) RevealAreaOnMap("ar3520") AddJournalEntry(@60349,QUEST) SetGlobal("KnowStorm","GLOBAL",1)~EXIT
IF~GlobalGT("KnowStorm","GLOBAL",0)~THEN REPLY @6DO ~SetGlobal("NoShau","LOCALS",1) RevealAreaOnMap("ar3520") AddJournalEntry(@60349,QUEST) ~EXIT
END

CHAIN
IF~Global("SanBG1ShauPrev","GLOBAL",4) !Global("ENDOFBG1","GLOBAL",2) ~THEN CVGHATLE ShauBG1Prev
@7
DO~SetGlobal("SanBG1ShauPrev","GLOBAL",5)~
== CVORWARL @8
== CVGHATLE @9
== CVORWARL @10
== CVGHATLE @11
== CVORWARL @12
== CVGHATLE @13
EXIT



CHAIN
IF ~Global("ENDOFBG1","GLOBAL",2) Global("SeeShau","LOCALS",0) InParty("CVShau") ~THEN CVGHATLE ShauFo1
@14
DO ~SetGlobal("SeeShau","LOCALS",1)~
==BSHAUHA@15
== CVGHATLE @16
==BSHAUHA@17
END
++ @18+ ShauFo2

CHAIN
IF~~THEN CVGHATLE ShauFo2
@19
==BSHAUHA@20
== CVGHATLE @21
==BSHAUHA@22
== CVGHATLE @23
END
++ @24DO~AddJournalEntry(@468,QUEST)SetGlobal("Shaucity","GLOBAL",3)~
EXIT

CHAIN
IF~Global("shauorcboy","GLOBAL",5) !InParty("CVShau") ~THEN CVGHATLE ShauMissfq
@25
== CVorwarl@26
END
++@27
EXIT

CHAIN
IF~Global("shauorcboy","GLOBAL",5) InParty("CVShau") ~THEN CVGHATLE ShauOrcWar1
@28
DO~SetGlobal("shauorcboy","GLOBAL",6)SetGlobalTimer("ShauToClan","GLOBAL",TEN_DAYS)~
== CVorwarl@26
==BSHAUHA@29
== CVorwarl@30
==BSANDR@31
== CVGHATLE @32
== CVorwarl@33
==BSHAUHA@34
== CVorwarl@35
==BSANDR@36
== CVGHATLE @37
==BSANDR@38
== CVorwarl@39
== CVGHATLE @40
== CVorwarl@41
==BSHAUHA@42
== CVGHATLE @43
=@44
==BSANDR@45
==BSHAUHA@46
==BSANDR@47
==BSHAUHA@48
== CVGHATLE @49
== CVorwarl IF~!InParty("Minsc")~THEN@50
== CVorwarl IF~InParty("Minsc")~THEN@51
EXIT

CHAIN
IF~Global("ShauOrcWar","GLOBAL",7)~THEN CVGHATLE ShauOrcWarBr
@52
DO~SetGlobal("ShauOrcWar","GLOBAL",8)~
== CVorwarl@53
==BSHAUHA@54
== CVGHATLE @55
==BSHAUHA@56
== CVorwarl@57
== CVGHATLE @58
== BMinsc@59
== CVorwarl@60
==BSHAUHA@61
== CVGHATLE @62
==BSHAUHA@63
== CVorwarl@64
==BSHAUHA@65
=@66
==BSandr@67
== CVGHATLE @68
== CVorwarl@69
END
++@70+ ShauOrcWarBr2
++@71+ ShauOrcWarBr2

CHAIN
IF~~THEN CVGHATLE ShauOrcWarBr2
@72
== CVorwarl@73
==CVSandrJ@74
==BSHAUHA@75DO~TakePartyItem("SHAMYRK") LeaveParty() ~
==BMinsc@76DO~LeaveParty()~EXIT

CHAIN
IF ~Global("SanHintFactory","GLOBAL",11)~THEN CVGHATLE ShauShaTabu1
@77
DO~SetGlobal("SanHintFactory","GLOBAL",12)~
==CVSandrJ@78
==CVGHATLE @79
==CVSandrJ@80
==CVGHATLE @81
END
++@82+ ShauShaTabu2

CHAIN
IF~~THEN CVGHATLE ShauShaTabu2
@83
==CVSandrJ@84
==CVGHATLE @85
DO~EscapeArea()~EXIT



