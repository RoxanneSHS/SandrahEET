BEGIN CVDauro

CHAIN
IF~Global("SanDauroQ","GLOBAL",1)~THEN CVDauro Traceddem1
@0
DO~SetGlobal("SanDauroQ","GLOBAL",2)~
==BSandr@1
==CVDauro@2
==BSandr@3
==CVDauro@4
==BSandr@5
==CVDauro@6
END
++@7+ Traceddem2
++@8+ Traceddem2

CHAIN
IF~~THEN CVDauro Traceddem2
@9
==BSandr@10
==CVDauro@11
==BSandr@12
==CVDauro@13
END
++@14+ Traceddem3
++@15+ Traceddem3

CHAIN
IF~~THEN CVDauro Traceddem3
@16
==BSandr@17EXIT

CHAIN
IF~Global("SanDauroQ","GLOBAL",5)~THEN CVDauro Traceddem4
@18
DO~SetGlobal("SanDauroQ","GLOBAL",7)~
==BSandr@19
==CVDauro@20
DO~AddexperienceParty(9000) EscapeArea()~EXIT

