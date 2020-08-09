CHAIN
IF WEIGHT #-3~Global("Sanalora","GLOBAL",3)~THEN Balora Stuffy
@0
DO~SetGlobal("Sanalora","GLOBAL",4)RealSetGlobalTimer("SanBantT","LOCALS",3200)~
==Bsandr@1
==Balora@2
==Bsandr@3
==Balora@4
==Bsandr@5
==Balora@6
==Bsandr@7
==Balora@8EXIT

CHAIN
IF WEIGHT #-3~Global("Sanalora","GLOBAL",5)~THEN Balora Cyric
@9
DO~SetGlobal("Sanalora","GLOBAL",6)RealSetGlobalTimer("SanBantT","LOCALS",3200)~
==Bsandr@10
==Balora@11
==Bsandr@12
==Balora@13
==Bsandr@14
==Balora@15EXIT

CHAIN
IF WEIGHT #-3~Global("Sanalora","GLOBAL",7)~THEN Balora Funtime
@16
DO~SetGlobal("Sanalora","GLOBAL",8)RealSetGlobalTimer("SanBantT","LOCALS",3200)~
==Bsandr@17
==Balora@18
==Bsandr@19
==Balora@20
==Bsandr@21
==Balora@22DO~ActionOverride("CVSandr",AddSpecialAbility("CVKnok"))~EXIT