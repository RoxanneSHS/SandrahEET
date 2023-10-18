APPEND BCERND
IF~Global("SanHealCernd","GLOBAL",5)~THEN Sanhealme
SAY@0
IF~~THEN EXTERN BSandr SanHealCernd
END
END

CHAIN
IF~Global("SanCerndLT","GLOBAL",4)~THEN BSandr CernFreeCat
@1
DO~SetGlobal("SanCerndLT","GLOBAL",5)~
==BCERND@2
== BSANDR@3
==BCERND@4
DO~AddXPObject("Cernd",5000) AddXPObject("CVSandr",5000) TakePartyItem("CVCatce") Wait(2) DestroyItem("CVCatce") CreateCreatureObjectOffset("CVCatCe","CVSandr",[25.-25]) ~EXIT

CHAIN
IF~Global("SanCerndLT","GLOBAL",7)~THEN BSandr CernSanPast
@5
DO~SetGlobal("SanCerndLT","GLOBAL",8)~
==BCERND@6
==BSANDR@7
==BCERND@8
==BSANDR@9
==BCERND@10
==BSANDR@11
==BCERND@12
==BSANDR@13
==BCERND@14EXIT

CHAIN
IF~Global("SanCerndBabe","LOCALS",2)~THEN BSandr CernSanPastB
@15
DO~SetGlobal("SanCerndBabe","LOCALS",3)~
==BCERND@16
==BSANDR@17
==BCERND@18
==BSANDR@19
END
++@20DO~IncrementGlobal("Sanpoints","GLOBAL",2)~EXIT
++@21DO~IncrementGlobal("Sanpoints","GLOBAL",-2)~EXIT
++@22DO~IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT

CHAIN
IF~Global("SanCerndLT","GLOBAL",10)~THEN BSandr CernFreeCat
@23
DO~SetGlobal("SanCerndLT","GLOBAL",11)~
==PELLIG@24
==BCERND@25
==BSANDR@26
==BCERND@27
==BSANDR@28
==BCERND@29
==BSANDR@30
==BCERND@31
==BSANDR@32
==BCERND@33
==BSANDR@34
EXIT

CHAIN
IF~~THEN BSandr SanHealCernd
@35
DO~SetGlobal("SanHealCernd","GLOBAL",6)~
==BCERND@36
==BSANDR@37
==BCERND@38
==BSANDR@39
==BCERND@40
==BSANDR@41
==BCERND@42
==BSANDR@43EXIT




