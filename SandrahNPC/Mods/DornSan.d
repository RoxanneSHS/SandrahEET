CHAIN
IF~Global("Sanhealdorn","GLOBAL",3)~THEN BDorn_  Hidmast1
@0
DO~SetGlobal("Sanhealdorn","GLOBAL",4)~
==BSandr@1
==BDorn_@2
==BSandr@3
==BDorn_@4
==BSandr@5
==BDorn_@6EXIT

I_C_T DornJ_ 87 SanMistDorn1
==CVSandrJ IF~InParty("CVSandr")~THEN@7
==DornJ_ IF~InParty("CVSandr")~THEN@8
==CVJenliJ IF~InParty("CVJenlig")~THEN@9
==DornJ_ IF~InParty("CVJenlig")~THEN@10
END

I_C_T DornJ_ 178 SanMistDorn2
==CVJenliJ IF~InParty("CVJenlig")~THEN@9
==DornJ_ IF~InParty("CVJenlig")~THEN@10
==CVSandrJ IF~InParty("CVSandr")~THEN@7
==DornJ_ IF~InParty("CVSandr")~THEN@8
END