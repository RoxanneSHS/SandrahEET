BEGIN CVColle

CHAIN
IF~AreaCheck("CVROA7") ~THEN CVColle Bracers1
@0
DO~SetGlobal("GaveKey","CVROA7",2)~
=@1
==CVSandrJ@2
==CVColle@3
END
IF~PartyHasItem("Sanbrc")~THEN REPLY@4+Bracers2
IF~PartyHasItem("AGshld01")~THEN REPLY@5+ Bracers4
IF~PartyHasItem("Blunpoi")~THEN REPLY@6+ Bracers4
IF~~THEN REPLY@7+ Bracers3
IF~PartyHasItem("Imofurc") InParty("Imoen2")~THEN REPLY@8+Bracers5

CHAIN
IF ~~THEN CVColle Bracers5
@9
END
++@10EXTERN IMOEN2_ ColleNo

CHAIN
IF~~THEN CVColle Bracers2
@11
==CVSandrJ@12
END
++@13DO~ReputationInc(1)IncrementGlobal("Sanpoints","GLOBAL",2)~EXIT
++@14DO~ReputationInc(-1)IncrementGlobal("Sanpoints","GLOBAL",-2)~+ Bracers3

CHAIN
IF~~THEN CVColle Bracers3
@15
END
++@16DO ~StartStore("CVColle",LastTalkedToBy(Myself))~EXIT
++@17+ Meet1d

CHAIN
IF~~THEN CVColle Bracers4
@18
END
++@19DO ~StartStore("CVColle",LastTalkedToBy(Myself))~EXIT

CHAIN
IF~~THEN IMOEN2_ ColleNo
@20
EXIT

CHAIN
IF ~Global("CVColleEnc","GLOBAL",2)~THEN CVColle Meet1
@21
DO~SetGlobal("CVColleEnc","GLOBAL",3) ~
==CVSandrJ@22
==CVColle@23
END
++@24+ Meet1b
++@25+ Meet1b

CHAIN
IF~~THEN CVColle Meet1b
@26
==CVSandrJ@27
==CVColle@28
END
++@29+ Meet1c

CHAIN
IF~~THEN CVColle Meet1c
@30
==CVSandrJ@31
==CVColle@1
==CVSandrJ@2
==CVColle@3
END
++@16DO ~StartStore("CVColle",LastTalkedToBy(Myself))~EXIT
++@17+ Meet1d

CHAIN
IF~~THEN CVColle Meet1d
@32DO ~StartStore("CVColle",LastTalkedToBy(Myself))~EXIT

CHAIN
IF ~Global("CVColleEnc","GLOBAL",5)~THEN CVColle Meet2
@33
DO~SetGlobal("CVColleEnc","GLOBAL",6) ~
==CVSandrJ@34
END
++@16DO ~StartStore("CVColle",LastTalkedToBy(Myself))~EXIT
++@17+ Meet1d
++@35+ Meet1d

CHAIN
IF ~Global("CVColleEnc","GLOBAL",8)~THEN CVColle Meet3
@33
DO~SetGlobal("CVColleEnc","GLOBAL",9) ~
==CVSandrJ@36
==CVColle@37
==CVSandrJ@38
==CVColle@39
==CVSandrJ@40
END
++@16DO ~StartStore("CVColle",LastTalkedToBy(Myself))~EXIT
++@41EXIT