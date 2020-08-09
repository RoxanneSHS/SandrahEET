BEGIN CVorwarl

CHAIN
IF ~Global("shauorcboy","GLOBAL",1)~THEN CVorwarl CVorwarl1
@0
DO~SetGlobal("shauorcboy","GLOBAL",2)~
== BSHAUHA @1
== CVorwarl@2
== BSHAUHA @3
== CVorwarl@4
== BSHAUHA @5
== CVorwarl@6
== BSHAUHA @7
END
++ @8EXIT
++ @9
EXIT

CHAIN
IF ~Global("shauorcboy","GLOBAL",3)~THEN CVorwarl CVorwarl2
@10
DO~SetGlobal("shauorcboy","GLOBAL",4)~
== BSHAUHA @11
== CVorwarl@12
== BSHAUHA @13
=@14
== CVorwarl@15
== BSHAUHA @16
== CVorwarl@17
END
++ @18EXIT
++ @19EXIT
++ @20EXTERN BSHAUHA ShauWallCall1

CHAIN
IF~Global("shauorcboy","GLOBAL",5) !InParty("CVShau") ~THEN CVorwarl ShauMissfq
@21
== CVGHATLE@22
END
++@23
EXIT

CHAIN
IF~Global("shauorcboy","GLOBAL",5) InParty("CVShau") ~THEN CVorwarl ShauOrcWar1
@24
DO~SetGlobal("shauorcboy","GLOBAL",6) SetGlobalTimer("ShauToClan","GLOBAL",TEN_DAYS)~
== CVGHATLE@25
== CVorwarl@26
==BSHAUHA@27
== CVorwarl@28
==BSANDR@29
== CVGHATLE @30
== CVorwarl@31
==BSHAUHA@32
== CVorwarl@33
==BSANDR@34
== CVGHATLE @35
==BSANDR@36
== CVorwarl@37
== CVGHATLE @38
== CVorwarl@39
==BSHAUHA@40
== CVGHATLE @41
=@42
==BSANDR@43
==BSHAUHA@44
==BSANDR@45
==BSHAUHA@46
== CVGHATLE @47
== CVorwarl IF~!InParty("Minsc")~THEN@48
== CVorwarl IF~InParty("Minsc")~THEN@49
EXIT

CHAIN
IF ~Global("ShauOrcWar","GLOBAL",1)~THEN CVorwarl ShauOrcWar2
@50
DO~SetGlobal("ShauOrcWar","GLOBAL",2)~
== CVGHATLE @51
==BSHAUHA@52
== CVGHATLE @53
==BSHAUHA@54
==BSANDR@55
== CVorwarl@56
== CVGHATLE @57
== CVGHATLE @58
==BSHAUHA@59
==BSANDR@60
==BSHAUHA@61
==BSANDR@62
==BMinsc IF~InParty("Minsc")~THEN@63
==BSANDR @64
== CVGHATLE @65
==BSHAUHA@66EXIT

CHAIN
IF~Global("ShauOrcWar","GLOBAL",4)~THEN CVorwarl ShauOrcWar3
@67
DO~SetGlobal("ShauOrcWar","GLOBAL",5)~
==BSHAUHA@68
== CVGHATLE @69
== CVorwarl@70
==BSANDR@71
== CVGHATLE @72
==BSANDR@73
== CVGHATLE @74
==BSANDR@75
== CVorwarl@76
== CVGHATLE @77
==BSANDR@78
== CVorwarl@79
== CVGHATLE @80
EXIT


