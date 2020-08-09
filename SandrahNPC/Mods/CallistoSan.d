APPEND BCMCalli

IF WEIGHT #-9 ~Global("SanHealcalli","GLOBAL",3)~THEN BEGIN CalliHeal
SAY @0
IF~~THEN EXTERN BSANDR SanCalliHeal
END

IF WEIGHT #-10 ~Global("SanHealcalli","GLOBAL",6)~THEN BEGIN CalliGranny
SAY @1
IF~~THEN EXTERN BSANDR SanCalliHeal2
END

IF WEIGHT #-11 ~Global("SanHealcalli","GLOBAL",8)~THEN BEGIN CalliRead
SAY @2
IF~~THEN EXTERN BSANDR SanCalliHeal3
END
END

APPEND BSandr
IF~Global("CmCalliEndGame","AR2600",2)~THEN BEGIN CalliEnd1
SAY@3
IF~~THEN REPLY@4DO~SetGlobal("CmCalliEndGame","AR2600",3)~GOTO CalliEnd2
END

IF~~THEN BEGIN CalliEnd2
SAY@5
IF~GlobalLT("Chapter","GLOBAL",20)~THEN REPLY@6GOTO CalliEnd3
IF~GlobalGT("Chapter","GLOBAL",19)~THEN REPLY@7GOTO CalliEnd4
END

IF~~THEN BEGIN CalliEnd3
SAY@8
IF~~THEN REPLY@9GOTO CalliEnd5
END

IF~~THEN BEGIN CalliEnd4
SAY@10
IF~~THEN REPLY@11GOTO CalliEnd5
END

IF~~THEN BEGIN CalliEnd5
SAY@12
IF~~THEN EXIT
END
END


CHAIN 
IF~~THEN BSANDR SanCalliHeal
@13
=@14
DO~SetGlobal("SanHealcalli","GLOBAL",4)RealSetGlobalTimer("SanCallisT","LOCALS",1200)~
==BCMCalli@15
== BSANDR@16
==BCMCalli@17EXIT

CHAIN
IF~~THEN BSANDR SanCalliHeal2
@18
DO~SetGlobal("SanHealcalli","GLOBAL",7) RealSetGlobalTimer("SanCallisT","LOCALS",3100)~
==BCMCalli@19
== BSANDR@20
==BCMCalli@21
== BSANDR@22
==BCMCalli@23
== BSANDR@24
==BCMCalli@25
== BSANDR@26
==BCMCalli@27
== BSANDR@28
==BCMCalli@29EXIT

CHAIN
IF~~THEN BSANDR SanCalliHeal3
@30
DO~SetGlobal("SanHealcalli","GLOBAL",9) RealSetGlobalTimer("SanCallisT","LOCALS",3100)~
==BCMCalli@31
== BSANDR@32
==BCMCalli@33
== BSANDR@34
==BCMCalli@35
== BSANDR@36
==BCMCalli@37
== BSANDR@38DO~RestParty()~EXIT

CHAIN
IF WEIGHT #-3~Global("SanHealcalli","GLOBAL",11)~THEN BCMCalli SanCalliHeal4
@39
DO~SetGlobal("SanHealcalli","GLOBAL",12) RealSetGlobalTimer("SanCallisT","LOCALS",3100)~
== BSANDR@40
=@41
==BCMCalli@42
== BSANDR@43
==BCMCalli@44
== BSANDR@45
==BCMCalli@46
== BSANDR@47
==BCMCalli@48
=@49
== BSANDR@50
==BCMCalli@51
== BSANDR@52
==BCMCalli@53
== BSANDR@54
=@55EXIT

CHAIN
IF~Global("SanCalliMar","ar0511",1)~THEN BSANDR SanCallimarD
@56
DO~SetGlobal("SanCalliMar","ar0511",2)~
==BCMCalli@57
== BSANDR@58
==BCMCalli@59
== BSANDR@60
==BCMCalli@61
== BSANDR@62
==BCMCalli@63
== BSANDR@64EXIT

CHAIN
IF~Global("SanCalReviv","ar1100",1)~THEN BSANDR SanCalliSor
@65
DO~SetGlobal("SanCalReviv","ar1100",2)~
==BCMCalli@66
== BSANDR@67
==BCMCalli@68
== BSANDR@69
==BCMCalli@70
== BSANDR@71
==BCMCalli@72
== BSANDR@73EXIT

INTERJECT_COPY_TRANS CMMarius 4 SanMarius1
== CVSandrJ IF ~InParty("CVSandr") ~THEN @74
==CMCalliJ IF ~InParty("CVSandr") ~THEN @75
== CVSandrJ IF ~InParty("CVSandr") ~THEN @76
END