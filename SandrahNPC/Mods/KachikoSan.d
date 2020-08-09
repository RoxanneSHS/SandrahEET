CHAIN
IF~Global("SanHealKachi","GLOBAL",3)~THEN BKachi Sanheal1
@0
DO~SetGlobal("SanHealKachi","GLOBAL",4)~
==BSandr@1
==BKachi@2
==BSandr@3
==BKachi@4
==BSandr@5
==BKachi@6
==BSandr@7
==BKachi@8
==BSandr@9
==BSandr IF~InParty("Yoshimo")~THEN@10EXIT

CHAIN
IF~Global("SanHealKachi","GLOBAL",5)~THEN BKachi SanYoshKil
@11
DO~SetGlobal("SanHealKachi","GLOBAL",6)~
==BSandr@12
==BKachi@13
==BSandr@14
==BKachi@15
==BSandr@16
==BKachi@17
==BSandr@18
==BKachi@19
==BSandr@20
==BKachi@21
==BSandr@22
==BKachi@23EXIT