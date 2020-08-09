APPEND BKAGAI
IF WEIGHT #-9 ~Global("SanHealkag","GLOBAL",4) ~THEN BEGIN  SanHealkag
SAY @0
IF~~THEN EXTERN BSANDR kagaiHealed
END
END

//Heal Kagain

CHAIN
IF~~THEN BSANDR kagaiHealed
@1
DO~SetGlobal("SanHealkag","GLOBAL",5) ~
== BKAGAI @2
== BSANDR@3
== BKAGAI @4
== BSANDR@5
== BKAGAI @6
== BSANDR@7
== BKAGAI @8
== BSANDR@9
EXIT

//Kagain Tavern

CHAIN
IF~Global("SankagTavern","LOCALS",2)~THEN BSANDR SanKagtav
@10
DO~SetGlobal("SankagTavern","LOCALS",3)~
== BKAGAI @11
==BSANDR@12
== BKAGAI @13
==BSANDR@14
== BKAGAI @15
==BSANDR@16
==Wench1@17
== BKAGAI @18
==BSANDR@19
==Wench1@20
==BSANDR@21
== BKAGAI @22
==BSANDR@23
== BKAGAI @24EXIT

//Sandrah Kagain Banters

CHAIN
IF ~Global("SanKagFight","LOCALS",2)~THEN BSANDR sanKagFig
@25
DO~SetGlobal("SanKagFight","LOCALS",3) RealSetGlobalTimer("SanKagFightInt","LOCALS",3600)~
== BKAGAI @26
== BSANDR@27
== BKAGAI @28
== BSANDR@29
== BKAGAI @30
== BSANDR@31
== BKAGAI @32
== BSANDR@33
== BKAGAI @34
== BSANDR@35
EXIT

CHAIN
IF ~Global("SanKagFight","LOCALS",4)~THEN BSANDR sanKagFi2
@36
DO~SetGlobal("SanKagFight","LOCALS",5) RealSetGlobalTimer("SanKagFightInt","LOCALS",3600)~
== BKAGAI @37
== BSANDR@38
== BKAGAI @39
== BSANDR@40
== BKAGAI @41
== BSANDR@42
== BKAGAI @43DO ~ApplyDamage(Myself,16,CRUSHING) ApplySpellRES("CVSLEEP","Kagain") ~
EXIT

CHAIN
IF ~Global("SanKagFight","LOCALS",6)~THEN BSANDR sanKagFi3
@44
DO~SetGlobal("SanKagFight","LOCALS",7) RealSetGlobalTimer("SanKagFightInt","LOCALS",3600)~
== BKAGAI @45
== BSANDR@46
== BKAGAI @47
== BSANDR@48
== BKAGAI @49
== BSANDR@50
== BKAGAI @51
== BSANDR@52EXIT

CHAIN
IF~Global("SanKagAbe","BG0126",1)~THEN BSANDR sanKagAbela
@53
DO~SetGlobal("SanKagAbe","BG0126",1)~
== BKAGAI @54
== BSANDR@55
== BKAGAI @56
== BSANDR@57
== BKAGAI @58
== BSANDR@59EXIT
