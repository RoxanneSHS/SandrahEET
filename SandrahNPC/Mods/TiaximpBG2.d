// Tiax

CHAIN
IF ~Global("Sanotiax","LOCALS",1)~THEN BSANDR Sanotiax1
@0
DO ~SetGlobal("Sanotiax","LOCALS",2) RealSetGlobalTimer("SanotiaxTa","LOCALS",1600) ~
== 7XTIAXB@1
== BSANDR @2
== 7XTIAXB@3
== BSANDR @4
== 7XTIAXB@5
== BSANDR @6
EXIT

CHAIN
IF ~Global("Sanotiax","LOCALS",3)~THEN BSANDR Sanotiax2
@7
DO ~SetGlobal("Sanotiax","LOCALS",4) RealSetGlobalTimer("SanotiaxTa","LOCALS",1600) ~
== 7XTIAXB@8
== BSANDR @9
== 7XTIAXB@10
== BSANDR @11
== 7XTIAXB@12
== BSANDR @13
== 7XTIAXB@14
== BSANDR @15
== 7XTIAXB@16
EXIT

CHAIN
IF~~THEN BSANDR Sanhealotiax
@17
DO~SetGlobal("SanHealtiax","GLOBAL",5)~
== 7XTIAXB@18
== BSANDR@19
EXIT

APPEND 7XTIAXB
IF WEIGHT #-9 ~Global("SanHealtiax","GLOBAL",4)~THEN BEGIN Sanotiaxheal
SAY @20
IF~~THEN EXTERN BSANDR Sanhealotiax
END
END






