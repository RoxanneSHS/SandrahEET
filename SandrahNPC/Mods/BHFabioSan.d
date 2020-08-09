CHAIN
IF~Global("SanFabioBH","GLOBAL",1)~THEN BFabio SanFabio1
@0
DO~SetGlobal("SanFabioBH","GLOBAL",2)~
==BSandr@1
==BFabio@2
==BSandr@3
EXIT

CHAIN
IF~Global("SanFabioBH","GLOBAL",3)~THEN BFabio SanFabio2
@4
DO~SetGlobal("SanFabioBH","GLOBAL",4)~
==BSandr@5
==BFabio@6
==BSandr@7
==BFabio@8
==BSandr@9
==BFabio@10
==BSandr@11
==BFabio@12
==BSandr@13
==BFabio@14EXIT

CHAIN
IF~Global("SanFabioBH","GLOBAL",5)~THEN BFabio SanFabio3
@15
DO~SetGlobal("SanFabioBH","GLOBAL",6)~
==BSandr@16
==BFabio@17
==BSandr@18
==BFabio@19
==BSandr@20
==BFabio@21
==BSandr@22
==BFabio@23DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~EXIT

CHAIN
IF~Global("SanFabioBH","GLOBAL",8)~THEN BFabio SanFabio4
@24
DO~SetGlobal("SanFabioBH","GLOBAL",9)~
==BSandr@25
==BFabio@26
==BSandr@27
==BFabio@28
==BSandr@29EXIT

CHAIN
IF~Global("SanFabioBH","GLOBAL",10)~THEN BFabio SanFabio4
@30
DO~SetGlobal("SanFabioBH","GLOBAL",11)~
==BSandr@31
==BFabio@32
==BSandr@33
==BFabio@34
==BSandr@35
DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~EXIT

CHAIN
IF~Global("SanFabioAndrella","LOCALS",1)~THEN BFabio SanFabioAndr
@36
DO~SetGlobal("SanFabioAndrella","LOCALS",2)~
==BSandr@37
==BFabio@38
==BSandr@39
==BFabio@40
==BSandr@41
==BFabio@42
==BSandr@43
==BFabio@44
==BSandr@45
==BFabio@46EXIT

ADD_TRANS_TRIGGER BHPell 64
~!InParty("CVSandr")~

EXTEND_BOTTOM BHPell 64
IF~InParty("CVSandr")~THEN REPLY @47EXTERN BSandr SanGoodbyeFab
END

CHAIN
IF~~THEN BSandr SanGoodbyeFab
@48
DO~SetGlobal("BHAllDone","GLOBAL",1)~
==BHFabioJ IF~InMyArea("Fabio") GlobalGT("SanFabioBH","GLOBAL",5)~THEN@49
==BSandr IF~InMyArea("Fabio") GlobalGT("SanFabioBH","GLOBAL",5)~THEN@50
==BHFabioJ IF~InMyArea("Fabio") GlobalGT("SanFabioBH","GLOBAL",5)~THEN@51
==BSandr IF~InMyArea("Fabio") GlobalGT("SanFabioBH","GLOBAL",5)~THEN@52
END
++@53EXTERN BHPell 65

CHAIN
IF WEIGHT #-19~Global("SanFabEdBH","bh0500",1)~THEN BEDWIN FabioJeal
@54
DO~SetGlobal("SanFabEdBH","bh0500",2)~
==BSandr@55
==Bedwin@56
==BSandr@57
==Bedwin@58
==BSandr@59
==Bedwin@60EXIT