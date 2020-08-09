// Tiax

CHAIN
IF ~Global("Sanotiax","LOCALS",1)~THEN BSANDR Sanotiax1
@0
DO ~SetGlobal("Sanotiax","LOCALS",2) RealSetGlobalTimer("SanotiaxTa","LOCALS",1600) ~
== BO#Tiax@1
== BSANDR @2
== BO#Tiax@3
== BSANDR @4
== BO#Tiax@5
== BSANDR @6
EXIT

CHAIN
IF ~Global("Sanotiax","LOCALS",3)~THEN BSANDR Sanotiax2
@7
DO ~SetGlobal("Sanotiax","LOCALS",4) RealSetGlobalTimer("SanotiaxTa","LOCALS",1600) ~
== BO#Tiax@8
== BSANDR @9
== BO#Tiax@10
== BSANDR @11
== BO#Tiax@12
== BSANDR @13
== BO#Tiax@14
== BSANDR @15
== BO#Tiax@16
EXIT

CHAIN
IF~~THEN BSANDR Sanhealotiax
@17
DO~SetGlobal("SanHealtiax","GLOBAL",5)~
== BO#Tiax@18
== BSANDR@19
EXIT

APPEND BO#TIAX
IF WEIGHT #-9 ~Global("SanHealtiax","GLOBAL",4)~THEN BEGIN Sanotiaxheal
SAY @20
IF~~THEN EXTERN BSANDR Sanhealotiax
END
END






