CHAIN
IF~Global("spawnDrow1","AR2100",2) ~THEN BSandr VicciUD
@0
DO~SetGlobal("spawnDrow1","AR2100",3)~
==BViconi@1
==BSandr@2
==BViconi@3
==BSandr@4
==BViconi@5
==BSandr@6
==BViconi@7EXIT

CHAIN
IF WEIGHT #-19~Global("Vicstake","LOCALS",2) ~THEN BViconi VicciStake
@8
DO~SetGlobal("Vicstake","LOCALS",3)RealSetGlobalTimer("SanVicBG2Plot","LOCALS",1800)~
==BSandr@9
==BViconi@10
==BSandr@11
==BViconi@12
==BSandr@13
==BViconi@14
==BSandr@15
==BViconi@16
=@17EXIT

CHAIN
IF WEIGHT #-19~Global("Vicstake","LOCALS",4) ~THEN BViconi VicciStake2
@18
DO~SetGlobal("Vicstake","LOCALS",5)RealSetGlobalTimer("SanVicBG2Plot","LOCALS",1800)~
==BSandr@19
==BViconi@20
==BSandr@21
==BViconi@22
=@23
==BSandr@24
==BViconi@25
==BSandr@26
==BViconi@27
==BSandr@28
==BViconi@29EXIT