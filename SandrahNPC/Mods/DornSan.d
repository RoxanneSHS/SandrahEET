CHAIN
IF~Global("Sanhealdorn","GLOBAL",3)~THEN BDorn  Hidmast1
~The servitude to your mistress grants you impressive powers, woman.~
DO~SetGlobal("Sanhealdorn","GLOBAL",4)~
==BSandr~Servitude? Is that how you are bound to your *master*?~
==BDorn~Bah, do your task and stop babbling.~
==BSandr~I would not compare my relationship to Mystra with that of a slave to her master.~
==BDorn~We follow <CHARNAME> while serving someone else at the same time.~
==BSandr~If so - my alliance is revealed while yours stays hidden.~
==BDorn~*He stares at the blade of his sword but remains silent.*~EXIT

I_C_T DornJ_ 87 SanMistDorn1
==CVSandrJ IF~ InParty("CVSandr")~THEN~This may reveal more about the one who suggested the question than the one he may accuse.~
==DornJ_ IF~ InParty("CVSandr")~THEN~She always has *helpful* advice, but ask yourself who has the most profit from your heeding it.~
==CVJenliJ IF~ InParty("CVJenlig")~THEN~(Hiss) Doubt Githyanki loyalty, blackling?.~
==DornJ_ IF~ InParty("CVJenlig")~THEN~Believe it or not, you're about the only one I trust as you're an evil beast and you show it open.~
END

I_C_T DornJ_ 178 SanMistDorn2
==CVJenliJ IF~ InParty("CVJenlig")~THEN~(Hiss) Doubt Githyanki loyalty, blackling?.~
==DornJ_ IF~ InParty("CVJenlig")~THEN~Believe it or not, you're about the only one I trust as you're an evil beast and you show it open.~
==CVSandrJ IF~ InParty("CVSandr")~THEN~This may reveal more about the one who suggested the question than the one he may accuse.~
==DornJ_ IF~ InParty("CVSandr")~THEN~She always has *helpful* advice, but ask yourself who has the most profit from your heeding it.~
END