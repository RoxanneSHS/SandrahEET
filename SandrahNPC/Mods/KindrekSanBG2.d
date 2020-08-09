CHAIN
IF WEIGHT #-5~Global("SanHealKindrek","GLOBAL",3)~THEN BKindrek San1
@0
DO~SetGlobal("SanHealKindrek","GLOBAL",4) RealSetGlobalTimer("HeilKindrT","LOCALS",900)~
==BSandr@1
==BKindrek@2
==BSandr@3
==BKindrek@4
==BSandr@5
==BKindrek@6
==BSandr@7
==BKindrek@8EXIT

CHAIN
IF WEIGHT #-5~Global("SanHealKindrek","GLOBAL",5)~THEN BKindrek San2
@9
DO~SetGlobal("SanHealKindrek","GLOBAL",6) RealSetGlobalTimer("HeilKindrT","LOCALS",900)~
==BSandr@10
==BKindrek@11
==BSandr@12
==BKindrek@13
==BSandr@14
==BKindrek@15EXIT

CHAIN
IF WEIGHT #-5~Global("SanHealKindrek","GLOBAL",7)~THEN BKindrek San3
@16
DO~SetGlobal("SanHealKindrek","GLOBAL",8) RealSetGlobalTimer("HeilKindrT","LOCALS",900)~
==BSandr@17
==BKindrek@18
==BSandr@19
==BKindrek@20
==BSandr@21
=@22
==BKindrek@23
=@24EXIT

CHAIN
IF WEIGHT #-5~Global("SanHealKindrek","GLOBAL",9)~THEN BKindrek San4
@25
=@26
DO~SetGlobal("SanHealKindrek","GLOBAL",10) ~
==BSandr@27DO~AddSpecialAbility("CVDrag10")~
==BKindrek@28
==BSandr@29
==BKindrek@30DO~RestParty()~EXIT

