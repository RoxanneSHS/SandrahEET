CHAIN
IF WEIGHT #-4~Global("SanNathB","GLOBAL",5)~THEN BFHNat SanHealNath1
@0
DO~SetGlobal("SanNathB","GLOBAL",6)RealSetGlobalTimer("SanSilvrInt","LOCALS",2000)~
==BSandr@1
==BFHNat@2
==BSandr@3
==BFHNat@4
==BSandr@5
==BFHNat@6EXIT

CHAIN
IF WEIGHT #-4~Global("SanNathB","GLOBAL",7)~THEN BFHNat SanHealNath2
@7
DO~SetGlobal("SanNathB","GLOBAL",8)RealSetGlobalTimer("SanNathInt","LOCALS",2000)~
==BSandr@8
==BFHNat@9
==BSandr@10
==BFHNat@11
==BSandr@12
==BFHNat@13
==BSandr@14
==BFHNat@15EXIT

CHAIN
IF WEIGHT #-4~Global("SanNathB","GLOBAL",9)~THEN BFHNat SanHealNath3
@16
DO~SetGlobal("SanNathB","GLOBAL",10)RealSetGlobalTimer("SanNathInt","LOCALS",2000)~
==BSandr@17
==BFHNat IF~GLOBAL("SanRomPath","GLOBAL",1)~THEN@18
==BSandr IF~GLOBAL("SanRomPath","GLOBAL",1)~THEN@19
==BFHNat IF~GLOBAL("SanRomPath","GLOBAL",1)~THEN@20
==BFHNat IF~GLOBAL("SanRomPath","GLOBAL",2)~THEN@21
==BSandr IF~GLOBAL("SanRomPath","GLOBAL",2)~THEN@22
==BFHNat IF~GLOBAL("SanRomPath","GLOBAL",2)~THEN@20EXIT

