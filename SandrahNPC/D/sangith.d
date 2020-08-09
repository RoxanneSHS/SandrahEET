BEGIN SANGITH

CHAIN
IF ~Global("SanGithVS","GLOBAL",1)~THEN SANGITH Vs1
@0
== BSANDR @1
== SANGITH@2
== BSANDR @3
== SANGITH@4
== BSANDR @5
==CVJenliJ IF~InParty("CVJenlig")~THEN@6
== SANGITH IF~InParty("CVJenlig")~THEN@7
END
++ @8DO ~SetGlobal("SanGithVS","GLOBAL",2)~+  Vs2
++ @9DO ~SetGlobal("SanGithVS","GLOBAL",3)~+  Vs3
++ @10DO ~SetGlobal("SanGithVS","GLOBAL",4)~+  Vs4

CHAIN
IF ~~THEN SANGITH Vs2
@11DO ~TakePartyItem("Sw2h15")~EXIT

CHAIN
IF ~~THEN SANGITH Vs3
@12
END
++ @13DO ~TakePartyItem("Sw2h15") DestroyItem("Sw2h15")~EXIT

CHAIN
IF ~~THEN SANGITH Vs4
@14
EXIT

CHAIN
IF ~Global("SanGithVS","GLOBAL",6)~THEN SANGITH Vs1
@15
== BSANDR @16
END
++ @8DO ~SetGlobal("SanGithVS","GLOBAL",7)~+  Vs2
++ @9DO ~SetGlobal("SanGithVS","GLOBAL",7)~+  Vs3




