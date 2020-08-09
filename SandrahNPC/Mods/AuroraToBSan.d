CHAIN
IF~CombatCounter(0)!See([ENEMY]) InMyArea("CVSandr") InParty("CVSandr") !StateCheck("CVSandr",CD_STATE_NOTVALID)!StateCheck("ibaur",CD_STATE_NOTVALID) !AreaCheck("ar4500")Global("AuroSanN","LOCALS",0)~THEN BIBAUR25 Sanboot
@0
DO~SetGlobal("AuroSanN","LOCALS",1) ~
==BSandr25@1
==BIBAUR25@2
==BSandr25@3
==BIBAUR25@4EXIT

CHAIN
IF~CombatCounter(0)!See([ENEMY]) InMyArea("CVSandr") InParty("CVSandr") !StateCheck("CVSandr",CD_STATE_NOTVALID)!StateCheck("ibaur",CD_STATE_NOTVALID) AreaCheck("ar4500")Global("AuroSanN","LOCALS",1)~THEN BIBAUR25 Sanboot
@5
DO~SetGlobal("AuroSanN","LOCALS",2) ~
==BSandr25@6
==BIBAUR25@7
==BSandr25@8
==BIBAUR25@9
==BSandr25@10EXIT