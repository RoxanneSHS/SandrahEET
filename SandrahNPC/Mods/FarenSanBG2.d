CHAIN
IF WEIGHT #-21~Global("SanHealFaren","GLOBAL",1)~THEN BFHFRN SanHeal1
@0
DO~SetGlobal("SanHealFaren","GLOBAL",2)~
==BSandr@1
==BFHFRN@2
==BSandr@3
==BFHFRN@4
==BSandr@5
==BFHFRN@6
==BSandr@7EXIT

CHAIN
IF WEIGHT #-22~Global("SanHealFaren","GLOBAL",3)~THEN BFHFRN SanHeal2
@8
DO~SetGlobal("SanHealFaren","GLOBAL",4) RealSetGlobalTimer("SanFarenT","LOCALS",1800)~
==BSandr@9
==BFHFRN@10
==BSandr@11
==BFHFRN@12
==BSandr@13
==BFHFRN@14
==BSandr@15DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~EXIT

CHAIN
IF WEIGHT #-23~Global("SanHealFaren","GLOBAL",5)~THEN BFHFRN SanHeal3
@16
DO~SetGlobal("SanHealFaren","GLOBAL",6) RealSetGlobalTimer("SanFarenT","LOCALS",1800)~
==BSandr@17
==BFHFRN@18
==BSandr@19
==BFHFRN@20
==BSandr@21
==BFHFRN@22
==BSandr@23DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~EXIT

CHAIN
IF WEIGHT #-24~Global("SanHealFaren","GLOBAL",7)~THEN BFHFRN SanHeal4
@24
DO~SetGlobal("SanHealFaren","GLOBAL",8)RealSetGlobalTimer("SanFarenT","LOCALS",1800)~
==BSandr@25
==BFHFRN@26
==BSandr@27
==BFHFRN@28EXIT

CHAIN
IF WEIGHT #-25~Global("SanHealFaren","GLOBAL",10)~THEN BFHFRN SanHeal5
@29
DO~SetGlobal("SanHealFaren","GLOBAL",11)RealSetGlobalTimer("SanFarenT","LOCALS",1800)~
==BSandr@30
==BFHFRN@31
==BSandr@32
==BFHFRN@33
==BSandr@34
==BFHFRN@35
==BSandr@36
==BFHFRN@37
==BSandr@38DO~RestParty()~EXIT