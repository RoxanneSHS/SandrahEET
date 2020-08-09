CHAIN
IF WEIGHT #-2~Global("SanAdrianH","LOCALS",3)~THEN BRH#ADR Heal
@0
DO~SetGlobal("SanAdrianH","LOCALS",4)~
==BSandr@1
==BRH#ADR@2
==BSandr@3
==BRH#ADR@4DO~IncrementGlobal("SanAdrianL","Global",1)~EXIT

CHAIN
IF WEIGHT #-2~Global("SanAdrianA","LOCALS",1)~THEN BRH#ADR Azuth
@5
DO~SetGlobal("SanAdrianA","LOCALS",2)~
==BSandr@6
==BRH#ADR@7
==BSandr@8
==BRH#ADR@9
==BSandr@10DO~IncrementGlobal("SanAdrianL","Global",1)~EXIT

CHAIN
IF WEIGHT #-2~Global("SanAdrianR","LOCALS",1)~THEN BRH#ADR Redwi
@11
DO~SetGlobal("SanAdrianR","LOCALS",2)~
==BSandr@12
==BRH#ADR@13
==BSandr@14
==BRH#ADR@15
==BSandr@16
==BRH#ADR@17DO~IncrementGlobal("SanAdrianL","Global",1)~EXIT

CHAIN
IF WEIGHT #-2~Global("SanAdrianC","LOCALS",1)~THEN BRH#ADR Commo
@18
DO~SetGlobal("SanAdrianC","LOCALS",2)~
==BSandr@19
==BRH#ADR@20
==BSandr@21
==BRH#ADR@22
==BSandr@23
==BRH#ADR@24
==BSandr@25
==BRH#ADR@26
==BSandr@27
==BRH#ADR@28
==BSandr@29DO~IncrementGlobal("SanAdrianL","Global",1)~EXIT

CHAIN
IF WEIGHT #-2~Global("SanAdrianY","LOCALS",1)~THEN BRH#ADR Cyric
@30
DO~SetGlobal("SanAdrianY","LOCALS",2)~
==BSandr@31
==BRH#ADR@32
==BSandr@33
==BRH#ADR@34
==BSandr@12
==BRH#ADR@35
==BSandr@36
==BRH#ADR@37
==BSandr@38DO~IncrementGlobal("SanAdrianL","Global",1)~EXIT

//Being Evil
CHAIN
IF WEIGHT #-2~Global("SanAdrianL","Global",6)~THEN BRH#ADR Final
@39
DO~SetGlobal("SanAdrianL","Global",7)~
==BSandr@40
==BRH#ADR@41
==BSandr@42
==BRH#ADR@43
==BSandr@44
==BRH#ADR@45
==BSandr@46
=@47
==BRH#ADR@48DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~EXIT


EXTEND_BOTTOM RH#ADRJ 1874
IF~InParty("CVSandr")~THEN REPLY@49DO~SetGlobal("AskSanPid","LOCALS",1)~GOTO JuSandr
END

APPEND RH#ADRJ
IF~~THEN BEGIN JuSandr
SAY@50
IF~~THEN REPLY@51 EXIT
IF~~THEN REPLY@52EXIT
END
END