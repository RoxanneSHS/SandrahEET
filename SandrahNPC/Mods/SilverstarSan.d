CHAIN
IF WEIGHT #-4~Global("SanSilvrheal","GLOBAL",5)~THEN BSilver SanHealSilv1
@0
DO~SetGlobal("SanSilvrheal","GLOBAL",6)RealSetGlobalTimer("SanSilvrInt","LOCALS",2000)~
==BSandr@1
==BSilver@2
=@3EXIT

CHAIN
IF WEIGHT #-4~Global("SanSilvrheal","GLOBAL",7)~THEN BSilver SanHealSilv2
@4
DO~SetGlobal("SanSilvrheal","GLOBAL",8)RealSetGlobalTimer("SanSilvrInt","LOCALS",2000)~
==BSandr@5
==BSilver@6
==BSandr@7
==BSilver@8
==BSandr@9
==BSilver@10
==BSandr@11
==BSilver@12
==BSandr@13
=@14
==BSilver@15EXIT