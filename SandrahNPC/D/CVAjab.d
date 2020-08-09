BEGIN CVAjam

BEGIN CVAjab

CHAIN
IF~Global("SanAjaThief","GLOBAL",1)~THEN CVAjab AjaThief1
@0
DO~SetGlobal("SanAjaThief","GLOBAL",2)~
==CVAjam@1
=@2
==BSandr@3
==CVAjam@4
==BSandr@5
==CVAjab@6
==BSandr@7
==CVAjam@8
==BSandr@9
==IF_FILE_EXISTS BAjant IF~InParty("Ajantis")~THEN@10
==IF_FILE_EXISTS C#AjanB IF~InParty("C#Ajantis")~THEN@10
==BSandr@11
==CVAjam@12
==IF_FILE_EXISTS BAjant IF~InParty("Ajantis")~THEN@13
==IF_FILE_EXISTS C#AjanB IF~InParty("C#Ajantis")~THEN@13
==BSandr@14
==CVAjam@15
==IF_FILE_EXISTS BAjant IF~InParty("Ajantis")~THEN@16
==IF_FILE_EXISTS C#AjanB IF~InParty("C#Ajantis")~THEN@16
==CVAjam@17DO~EscapeArea()~
==BSandr@18DO~ForceSpell("CVAjab",CLERIC_HEAL)~
==CVAjab@19DO~EscapeArea() ~
==IF_FILE_EXISTS BAjant IF~InParty("Ajantis")~THEN@20
==IF_FILE_EXISTS C#AjanB IF~InParty("C#Ajantis")~THEN@20
==BSandr@21EXIT