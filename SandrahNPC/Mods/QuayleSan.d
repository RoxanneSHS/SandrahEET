CHAIN
IF WEIGHT #-11~Global("SanQualHeal","GLOBAL",3)~THEN BQUAYL SanHeal
@0
DO~SetGlobal("SanQualHeal","GLOBAL",4)RealSetGlobalTimer("QuaySanInt","LOCALS",600)~
==BSandr@1
==BQUAYL@2
==BSandr@3
==BQUAYL@4EXIT

CHAIN
IF WEIGHT #-11~Global("SanQualHeal","GLOBAL",5)~THEN BQUAYL SanSong
@5
=@6
DO~SetGlobal("SanQualHeal","GLOBAL",6)RealSetGlobalTimer("QuaySanInt","LOCALS",1000)~
==BSandr@7
==BQUAYL@8
==BSandr@9
==BQUAYL@10
= @11
==BSandr@12
=@13
==BQUAYL@14
==BSandr@15
==BQUAYL @16
==BSandr@17
==BQUAYL @18EXIT

CHAIN
IF WEIGHT #-11~Global("SanQualHeal","GLOBAL",7)~THEN BQUAYL Sanenvy
@19
DO~SetGlobal("SanQualHeal","GLOBAL",8)RealSetGlobalTimer("QuaySanInt","LOCALS",1000)~
==BSandr@20
==BQUAYL @21
==BSandr@22
=@23
==BQUAYL @24EXIT
