CHAIN
IF WEIGHT #-3~Global("SanMurhurt","LOCALS",1) ~THEN BA#Murn Compl
@0
DO~SetGlobal("SanMurhurt","LOCALS",2) ~
==Bsandr@1
==BA#Murn@2
==Bsandr@3DO~ReallyForceSpell("A#Murn",CLERIC_HEAL)~EXIT

CHAIN
IF WEIGHT #-1~Global("SanJenFear","LOCALS",1) ~THEN BA#Murn ComplJ
@4
DO~SetGlobal("SanJenFear","LOCALS",2) ~
==BJenli@5
==BA#Murn@6
==BJenli@7EXIT