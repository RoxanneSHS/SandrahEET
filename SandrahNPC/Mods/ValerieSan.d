CHAIN
IF WEIGHT #-2~Global("SanHealValri","GLOBAL",3)~THEN BT2Val Sanheal1
@0
DO~SetGlobal("SanHealValri","GLOBAL",4)~
==Bsandr@1
==BT2Val@2
==Bsandr@3
=@4
==BT2Val@5
==Bsandr@6
==BT2Val@7
==Bsandr@8EXIT

CHAIN
IF WEIGHT #-2~Global("SanHealValri","GLOBAL",5)~THEN BT2Val Sanheal2
@9
DO~SetGlobal("SanHealValri","GLOBAL",6)~
==Bsandr@10
==BT2Val @11
==Bsandr@12
==BT2Val @13
==Bsandr@14
=@15
=@16
==BT2Val @17DO~AddSpecialAbility("SPIN147")~
==Bsandr@18EXIT

CHAIN
IF WEIGHT #-2~Global("SanHealValri","GLOBAL",9)~THEN BT2Val Sanheal3
@19
DO~SetGlobal("SanHealValri","GLOBAL",10)~
==BSandr@20
==BT2Val@21
==BSandr@22
==BT2Val@23
==BSandr@24
=@25
=@26
==BT2Val@27
==BSandr@28
==BT2Val@29
==BSandr@30EXIT

CHAIN
IF WEIGHT #-2~Global("SanHealValri","GLOBAL",7)~THEN BT2Val Sanheal4
@31
DO~SetGlobal("SanHealValri","GLOBAL",8)~
==BSandr@32
==BT2Val@33
==BSandr@34
==BT2Val@35
==BSandr@36
==BT2Val@37
==BSandr@38EXIT

CHAIN
IF WEIGHT #-2~Global("SanHealValri","GLOBAL",11)~THEN BT2Val Sanheal5
@39
DO~SetGlobal("SanHealValri","GLOBAL",12)~
==BT2Val@40
==BSandr@41
==BT2Val@42
==BSandr@43
=@44
==BT2Val@45EXIT

CHAIN
IF WEIGHT #-2~Global("SanHealValri","GLOBAL",13)~THEN BT2Val Sanheal6
@46
DO~SetGlobal("SanHealValri","GLOBAL",14)~
==BSandr@47
==BT2Val@48
==BSandr@49
==BT2Val@50
==BSandr@51
==BT2Val@52
==BSandr@53
==BT2Val@54
==BSandr@55
==BT2Val@56
=@57DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~EXIT

CHAIN
IF WEIGHT #-2~Global("ValJenB","LOCALS",2)~THEN BT2Val JenDuty
@58
DO~SetGlobal("ValJenB","LOCALS",3)~
==BJenli@59
==BT2Val@60
==BJenli@61
==BT2Val@62
==BJenli@63EXIT