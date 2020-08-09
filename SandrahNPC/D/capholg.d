BEGIN   Capholg

CHAIN
IF~GlobalGT("SanSuBH","GLOBAL",18) Global("SanGetSwill","GLOBAL",0) ~THEN Capholg Swill
@0
DO~SetGlobal("SanGetSwill","GLOBAL",1) ~
==CVSandrJ@1
==Capholg @2
==CVSandrJ@3
==Capholg @4
==CVSandrJ @5
==Capholg @6
==CVSandrJ@7
END
++ @8+ Swill2

CHAIN
IF~~THEN Capholg Swill2
@9
END
IF ~PartyHasItem("sanparc") ~THEN REPLY@10EXIT
IF ~!PartyHasItem("sanparc") ~THEN REPLY@11EXIT

CHAIN
IF ~Global("SanGetSwill","GLOBAL",1)
OR(7)
PartyHasItem("Misc97")
PartyHasItem("dgxq1")
PartyHasItem("Misc1a")
PartyHasItem("Misc61")
PartyHasItem("Ntpotn03")
PartyHasItem("Ntpotn04")
PartyHasItem("Ntpotn01")~THEN Capholg Readchar
@12
DO~SetGlobal("SanGetSwill","GLOBAL",2) ~
==CVSandrJ@13
==Capholg @14
=@15
END
++ @16+ ReadcharD1
++ @17+ ReadcharD2

CHAIN
IF~~THEN Capholg ReadcharD1
@18
END
++@19+ Readchar2

CHAIN
IF~~THEN Capholg ReadcharD2
@20
END
++@19+ Readchar2

CHAIN
IF~~THEN Capholg Readchar2
@21
==CVSandrJ @22
== Capholg @23
==CVSandrJ @24
==Capholg @25
==CVSandrJ @26
==Capholg @27
= @28
==CVSandrJ @29
==Capholg @30
= @31
==CVSandrJ @32
== Capholg @33
END
++ @34+ Readchar3

CHAIN
IF~~THEN Capholg Readchar3
@35
==CVSandrJ @36
==Capholg @37
==CVSandrJ @38
==Capholg @39
==CVSandrJ @40
==Capholg @41
==CVSandrJ @42
==Capholg @43
END
IF ~PartyGoldLT(20000)~THEN REPLY @44DO~SetGlobal("SanGetSwill","GLOBAL",3) ~EXIT
IF ~PartyGoldGT(20000)~THEN REPLY @45DO~SetGlobal("SanGetSwill","GLOBAL",3) ~EXIT
IF  ~PartyGoldGT(20000)~THEN REPLY @46DO ~
SetGlobal("SanGetSwill","GLOBAL",4)
SetGlobal("SanSuBH","GLOBAL",25) 
TakePartyGold(20000)
ActionOverride("capholg",EscapeArea())
ActionOverride(Player1,LeaveAreaLUA("CVPIR1","",[750.298],2))
ActionOverride(Player2,LeaveAreaLUA("CVPIR1","",[750.298],2))
ActionOverride(Player3,LeaveAreaLUA("CVPIR1","",[750.298],2))
ActionOverride(Player4,LeaveAreaLUA("CVPIR1","",[750.298],2))
ActionOverride(Player5,LeaveAreaLUA("CVPIR1","",[750.298],2))
ActionOverride(Player6,LeaveAreaLUA("CVPIR1","",[750.298],2))
~EXIT

CHAIN
IF ~Global("SanGetSwill","GLOBAL",3) ~THEN Capholg Leave
@47
END
++ @48DO ~SetGlobal("SanGetSwill","GLOBAL",4) SetGlobal("SanSuBH","GLOBAL",25) TakePartyGold(20000)
ActionOverride("capholg",DestroySelf())
ActionOverride(Player1,LeaveAreaLUA("CVPIR1","",[750.298],2))
ActionOverride(Player2,LeaveAreaLUA("CVPIR1","",[750.298],2))
ActionOverride(Player3,LeaveAreaLUA("CVPIR1","",[750.298],2))
ActionOverride(Player4,LeaveAreaLUA("CVPIR1","",[750.298],2))
ActionOverride(Player5,LeaveAreaLUA("CVPIR1","",[750.298],2))
ActionOverride(Player6,LeaveAreaLUA("CVPIR1","",[750.298],2))
~EXIT

CHAIN
IF ~Global("SanGetSwill","GLOBAL",5) AreaCheck("CVPIR1") ~THEN Capholg waitboat
@49
DO~SetGlobal("SanGetSwill","GLOBAL",6)~
END
++ @50+ waitboat2

CHAIN
IF ~~THEN Capholg waitboat2
@51
EXIT



CHAIN
IF ~Global("SanGetSwill","GLOBAL",6) AreaCheck("CVPIR2") ~THEN Capholg waitisl
@52EXIT





