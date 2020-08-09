CHAIN
IF WEIGHT #-2~Global("SanZaiya","GLOBAL",1)~THEN ZaiyaJ SanZaiya1
@0
DO~SetGlobal("SanZaiya","GLOBAL",2)IncrementGlobal("ZDayOfCurse","LOCALS",-2)~
==CVSandrJ@1
==ZaiyaJ@2
==CVSandrJ@3
=@4
=@5
=@6
==ZaiyaJ@7
==CVSandrJ@8EXIT

CHAIN
IF WEIGHT #-2~Global("SanHealZaiya","GLOBAL",2)~THEN ZaiyaJ SanZaiya2
@9
==KiaraJ@10
DO~SetGlobal("SanZaiya","GLOBAL",4)SetGlobal("SanHealZaiya","GLOBAL",3)~
==CVSandrJ@11
==ZaiyaJ@12
==CVSandrJ@13
=@14
==KiaraJ@15
==ZaiyaJ@16
==KiaraJ@17
==CVSandrJ@18
==Pellig@19
==KiaraJ@20
==ZaiyaJ@21DO~ActionOverride("CVSandr",AddSpecialAbility("CVSilFir"))~EXIT

CHAIN
IF WEIGHT #-2~Global("SanZaiya","GLOBAL",5)~THEN ZaiyaJ SanZaiya3
@22
==KiaraJ@23
DO~SetGlobal("SanZaiya","GLOBAL",6)~
==CVSandrJ@24
==ZaiyaJ@25
==KiaraJ@26
==CVSandrJ@27
==ZaiyaJ@28
==CVSandrJ@29EXIT

ADD_TRANS_ACTION BKIARA BEGIN 99 END BEGIN 0 END ~SetGlobal("SanKiZaBha","GLOBAL",1)~

CHAIN
IF WEIGHT #-2~Global("SanKiZaBha","GLOBAL",2)~THEN ZaiyaJ SanZaiya4
@30
DO~SetGlobal("SanKiZaBha","GLOBAL",3)~
==CVSandrJ@31
==ZaiyaJ@32
==CVSandrJ@33
==KiaraJ@34
==CVSandrJ@35
==KiaraJ@36
==CVSandrJ@37
==KiaraJ@38
==CVSandrJ@39
==KiaraJ@40
==CVSandrJ@41EXIT

CHAIN
IF WEIGHT #-2~Global("SanKiZaBha","GLOBAL",4)~THEN ZaiyaJ SanZaiya5
@42
DO~SetGlobal("SanKiZaBha","GLOBAL",5)~
==CVSandrJ@43
==KiaraJ@44
==CVSandrJ@45
==KiaraJ@46
==ZaiyaJ@47
==CVSandrJ@48EXIT

CHAIN
IF WEIGHT #-2~Global("SanInterKiara","LOCALS",1)~THEN BKiara SanInterest1
@49
DO~SetGlobal("SanInterKiara","LOCALS",2)~
==BSandr@50
==BKiara@51
==BSandr@52
==BKiara@53
==BSandr@54
==BKiara@55
==BSandr@56
==BKiara@57
==BSandr@58
==BKiara@59
==BSandr@60 EXIT

CHAIN
IF WEIGHT #-2~Global("SanRepaKiara","LOCALS",1)~THEN BKiara SanInterest2
@61
DO~SetGlobal("SanRepaKiara","LOCALS",2)~
==BSandr@62
==BKiara@63
==ZaiyaJ@64
==BSandr@65
==BKiara@66
==BSandr@67
==BKiara@68
END
++@69DO~SetGlobal("Kiararomanceactive","GLOBAL",2)~EXIT
++@70DO~SetGlobal("Kiararomanceactive","GLOBAL",2)~EXIT
++@71EXIT