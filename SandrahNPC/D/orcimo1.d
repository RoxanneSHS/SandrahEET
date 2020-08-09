BEGIN orcimo1

CHAIN
IF ~Global("OrcimoTalk","GLOBAL",1)~THEN orcimo1 Ini1
@0
=@1
DO~SetGlobal("OrcimoTalk","GLOBAL",2)~
==Bimoen @2
== orcimo1 @3
==Bimoen @4
== orcimo1 @5
==BSANDR@6
== orcimo1 @7
==BSANDR@8
== orcimo1 @9
==Bimoen @10
== orcimo1 @11
==BSANDR@12
==Bimoen @13
END
++ @14+ Ini2

CHAIN
IF~~THEN orcimo1 Ini2
@15
==Bimoen @16
== orcimo1 @17DO~EscapeArea() ~
== BSANDR@18
==Bimoen @19
== BSANDR@20
==Bimoen @21
== BSANDR@22
==Bimoen @23DO ~AddexperienceParty(5000)~
EXIT