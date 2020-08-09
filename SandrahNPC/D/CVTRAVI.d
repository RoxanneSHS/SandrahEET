BEGIN CVTRAVI

CHAIN 
IF ~GlobalLT("OrcPrison","GLOBAL",20)~THEN CVTRAVI go21
@0
DO ~SetGlobal("OrcPrison","GLOBAL",21)~EXIT

CHAIN
IF ~Global("OrcPrison","GLOBAL",21)~THEN CVTRAVI sd1
@1
= @2
DO ~SetGlobal("OrcPrison","GLOBAL",22)~
== Bimoen @3
==CVTRAVI @4
END
++ @5+ sd2

CHAIN
IF ~~THEN CVTRAVI sd2
@6
== Bimoen @7
==CVTRAVI @8
== BSANDR@9
==CVTRAVI @10
== Bimoen @11
END
++ @12+sd3

CHAIN
IF~~THEN CVTRAVI sd3
@13
== BSANDR@14
==CVTRAVI @15
== BSANDR@16
==CVTRAVI @17
END
++ @18+sd4


CHAIN
IF~~THEN CVTRAVI sd4
@19
== BSANDR@20
== CVTRAVI @21
=@22
== BSANDR@23
== CVTRAVI @24
== BSANDR@25
== CVTRAVI @26
== BSANDR@27
== CVTRAVI @28
== BSANDR@29
== Bimoen @30
== CVTRAVI @31
END
++ @32+sd5

CHAIN
IF~~THEN CVTRAVI sd5
@33
== BSANDR@34
== CVTRAVI @35
== Bimoen @36
== CVTRAVI @37
== Bimoen @38
== CVTRAVI @39
== Bimoen @40
== CVTRAVI @41
== Bimoen @42
== CVTRAVI @43
== Bimoen @44
== CVTRAVI @45
== Bimoen @46
== CVTRAVI @47
== BSANDR@48
== CVTRAVI @49DO~
GiveItemCreate("CVTravde","Imoen2",0,0,0)
TakePartyGold(15000)
ActionOverride("CVTravi",EscapeAreaDestroy(90)) ~
EXIT

