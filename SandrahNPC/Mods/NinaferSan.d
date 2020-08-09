CHAIN
IF WEIGHT #-11~Global("SanNinaf","GLOBAL",1)~THEN BCMNINAF TwoMyst1
@0
DO~SetGlobal("SanNinaf","GLOBAL",2) RealSetGlobalTimer("SanNinaInT","LOCALS",1800)~
==BSandr@1
==BCMNINAF@2
==BSandr@3
==BCMNINAF@4
==BSandr@5
==BCMNINAF@6
==BSandr@7
==BCMNINAF@8
==BSandr@9
==BCMNINAF@10
==BSandr@11
DO~RestParty()~EXIT

CHAIN
IF WEIGHT #-12~Global("SanHealNina","GLOBAL",3)~THEN BCMNINAF SanNinaPH
@12
DO~SetGlobal("SanHealNina","GLOBAL",4)RealSetGlobalTimer("SanNinaInT","LOCALS",1800)~
==BSandr@13
==BCMNINAF@14
==BSandr@15
==BCMNINAF@16
==BSandr@17
==BCMNINAF@18EXIT

CHAIN
IF WEIGHT #-13~Global("SanNinaf","GLOBAL",3)~THEN BCMNINAF TwoMyst2
@19
DO~SetGlobal("SanNinaf","GLOBAL",4) RealSetGlobalTimer("SanNinaInT","LOCALS",3600)~
==BSandr@20
==BCMNINAF@21
==BSandr@22
==BCMNINAF@23
==BSandr@24
==BCMNINAF@25
==BSandr@26
==BCMNINAF@27
==BSandr@28
==BCMNINAF@29
==BSandr@30
==BCMNINAF@31
==BSandr@32EXIT

CHAIN
IF WEIGHT #-14~Global("SanNinaf","GLOBAL",5)~THEN BCMNINAF TwoMyst3
@33
DO~SetGlobal("SanNinaf","GLOBAL",6) RealSetGlobalTimer("SanNinaInT","LOCALS",1800)~
==BSandr@34
==BCMNINAF@35
==BSandr@36
==BCMNINAF@37
==BSandr@38
==BCMNINAF@39
==BSandr@38
==BCMNINAF@40
==BSandr@41EXIT