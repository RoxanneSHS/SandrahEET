I_C_T C0Sirene 5 SanC0SirB
==CVSandrJ IF~InParty("CVSandr")~THEN@0
==CVSandrJ IF~InParty("CVSandr") InParty("Viconia") !InParty("CVJenlig")~THEN@1
==CVSandrJ IF~InParty("CVSandr") !InParty("Viconia") InParty("CVJenlig")~THEN@2
==CVSandrJ IF~InParty("CVSandr") InParty("Viconia") InParty("CVJenlig")~THEN@3
==CVSandrJ IF~InParty("CVSandr") !InParty("Viconia") !InParty("CVJenlig")~THEN@4
==C0Sirene IF~InParty("CVSandr")~THEN@5END

CHAIN
IF~Global("SanC0SirB","Global",2) AreaCheck("CVNar2")~THEN C0SirenJ Demo1
@6
DO~SetGlobal("SanC0SirB","Global",3) ~
==CVSandrJ @7
==C0SirenJ @8
==CVSandrJ @9
EXIT

CHAIN
IF~Global("SanC0SirB","Global",4) ~THEN C0SirenJ Siri2
@10
DO~SetGlobal("SanC0SirB","Global",5) ~
==CVSandrJ @11
==C0SirenJ @12
==CVSandrJ @13
==C0SirenJ @14 EXIT

CHAIN
IF~Global("SanC0SirB","Global",6) ~THEN C0SirenJ Siri3
@15
DO~SetGlobal("SanC0SirB","Global",7) ~
==CVSandrJ @16
==C0SirenJ @17
==CVSandrJ @18
==C0SirenJ @19
==CVSandrJ @20
=@21
==C0SirenJ @22EXIT
