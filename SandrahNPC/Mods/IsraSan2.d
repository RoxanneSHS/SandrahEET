CHAIN
IF WEIGHT #-5~Global("SanIsraTalk","GLOBAL",2)~THEN BRH#ISR Sanfirst2
@0
DO~SetGlobal("SanIsraTalk","GLOBAL",3) RealSetGlobalTimer("SanIsraDel","GLOBAL",800)~
==BSandr@1
==BRH#ISR@2
==BSandr@3
==BRH#ISR@4
==BSandr@5
==BRH#ISR@6
==BSandr@7EXIT

CHAIN
IF WEIGHT #-5~Global("SanIsraTalk","GLOBAL",4)~THEN BRH#ISR Sansecond2
@8
DO~SetGlobal("SanIsraTalk","GLOBAL",5) RealSetGlobalTimer("SanIsraDel","GLOBAL",1100)~
==BSandr@9
==BRH#ISR@10
==BSandr@11
==BRH#ISR@12
==BSandr@13
==BRH#ISR@14
==BSandr@15
==BRH#ISR@16
==BSandr@17EXIT

CHAIN
IF WEIGHT #-5~Global("SanIsraTalk","GLOBAL",6)~THEN BRH#ISR Santhird3
@18
DO~SetGlobal("SanIsraTalk","GLOBAL",7) RealSetGlobalTimer("SanIsraDel","GLOBAL",1100)~
==BSandr@19
==BRH#ISR@20
==BSandr@21
==BRH#ISR@22
==BSandr@23EXIT

EXTEND_TOP RH#IsrJ 1669 #1
IF~InParty("CVSandr")~THEN REPLY@24GOTO IsrSanCommt2
IF~InParty("CVJenlig")~THEN REPLY@25GOTO IsrJenCommt2
END

CHAIN
IF~~THEN RH#IsrJ IsrSanCommt2
@26EXIT

CHAIN
IF~~THEN RH#IsrJ IsrJenCommt2
@27EXIT