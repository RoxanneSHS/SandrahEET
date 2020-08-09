CHAIN
IF WEIGHT #-5~Global("SanIsraTalk","GLOBAL",2)~THEN BRH#ISRA Sanfirst
@0
DO~SetGlobal("SanIsraTalk","GLOBAL",3) RealSetGlobalTimer("SanIsraDel","GLOBAL",800)~
==BSandr@1
==BRH#ISRA@2
==BSandr@3
==BRH#ISRA@4
==BSandr@5
==BRH#ISRA@6
==BSandr@7EXIT

CHAIN
IF WEIGHT #-5~Global("SanIsraTalk","GLOBAL",4)~THEN BRH#ISRA Sansecond
@8
DO~SetGlobal("SanIsraTalk","GLOBAL",5) RealSetGlobalTimer("SanIsraDel","GLOBAL",1100)~
==BSandr@9
==BRH#ISRA@10
==BSandr@11
==BRH#ISRA@12
==BSandr@13
==BRH#ISRA@14
==BSandr@15
==BRH#ISRA@16
==BSandr@17EXIT

CHAIN
IF WEIGHT #-5~Global("SanIsraTalk","GLOBAL",6)~THEN BRH#ISRA Santhird
@18
DO~SetGlobal("SanIsraTalk","GLOBAL",7) RealSetGlobalTimer("SanIsraDel","GLOBAL",1100)~
==BSandr@19
==BRH#ISRA@20
==BSandr@21
==BRH#ISRA@22
==BSandr@23EXIT 

EXTEND_TOP RH#IsraJ 518 #1
IF~InParty("CVSandr")~THEN REPLY@24GOTO IsrSanCommt
IF~InParty("CVJenlig")~THEN REPLY@25GOTO IsrJenCommt
END

CHAIN
IF~~THEN RH#IsraJ IsrSanCommt
@26EXIT

CHAIN
IF~~THEN RH#IsraJ IsrJenCommt
@27EXIT

