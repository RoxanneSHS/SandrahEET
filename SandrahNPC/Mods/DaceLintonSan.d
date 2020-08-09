CHAIN
IF WEIGHT #-3~Global("SanDaceB","GLOBAL",4)~THEN BT#Dace DaceSan1
@0
DO~SetGlobal("SanDaceB","GLOBAL",5) RealSetGlobalTimer("SanDaceTime","LOCALS",1640)~
==BSandr@1
==BT#Dace@2
==BSandr@3
==BT#Dace@4
==BSandr@5
==BT#Dace@6
==BSandr@7EXIT

CHAIN
IF WEIGHT #-3~Global("SanDaceB","GLOBAL",6)~THEN BT#Dace DaceSan2
@8
DO~SetGlobal("SanDaceB","GLOBAL",7) RealSetGlobalTimer("SanDaceTime","LOCALS",1640)~
==BSandr@9
==BT#Dace@10
==BSandr@11
==BT#Dace@12
==BSandr@13
==BT#Dace@14
==BSandr@15
=@16
==BT#Dace@17EXIT

CHAIN
IF WEIGHT #-3~Global("SanDaceB","GLOBAL",8)~THEN BT#Dace DaceSan3
@18
DO~SetGlobal("SanDaceB","GLOBAL",9) RealSetGlobalTimer("SanDaceTime","LOCALS",1640)~
==BSandr@19
==BT#Dace @20
==BSandr@21
==BT#Dace @22
==BT#Dace IF~Global("SanRomPath","GLOBAL",1)~THEN@23
==BSandr IF~Global("SanRomPath","GLOBAL",1)~THEN@24
==BT#Dace IF~Global("SanRomPath","GLOBAL",1)~THEN@25
==BT#Dace IF~Global("SanRomPath","GLOBAL",2)~THEN@26
==BSandr IF~Global("SanRomPath","GLOBAL",2)~THEN@27
==BT#Dace IF~Global("SanRomPath","GLOBAL",2)~THEN@28
EXIT

CHAIN
IF WEIGHT #-3~Global("SanDaceB","GLOBAL",10)~THEN BT#Dace DaceSan4
@29
DO~SetGlobal("SanDaceB","GLOBAL",11) RealSetGlobalTimer("SanDaceTime","LOCALS",1640)~
==BSandr@30
==BT#Dace @31
==BSandr@32
==BT#Dace @33
==BSandr@34
==BT#Dace @35EXIT

CHAIN
IF WEIGHT #-3~Global("SanDaceB","GLOBAL",12)~THEN BSandr DaceSan5
@36
DO~SetGlobal("SanDaceB","GLOBAL",13) RealSetGlobalTimer("SanDaceTime","LOCALS",1640)~
END
++@37EXTERN BT#Dace DaceSan6

CHAIN
IF~~THEN BT#Dace DaceSan6
@38
==BSandr@39
==BT#Dace@40
=@41
==BSandr@42
==BT#Dace@43
==BSandr@44
==BT#Dace@45
END
++@46EXIT

CHAIN
IF WEIGHT #-3~Global("SanDaceB","GLOBAL",14)~THEN BT#Dace DaceSan7
@47
DO~SetGlobal("SanDaceB","GLOBAL",15) RealSetGlobalTimer("SanDaceTime","LOCALS",1640)~
==BSandr@48
==BT#Dace@49
==BSandr@50
==BT#Dace@51EXIT