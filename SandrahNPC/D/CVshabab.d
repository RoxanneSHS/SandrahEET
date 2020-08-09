BEGIN CVshabab

IF ~GlobalLT("SanSharInt","GLOBAL",36)!Global("SanSharCom","GLOBAL",8)~THEN BEGIN SanSharGorBirth
SAY @0
IF ~~THEN EXIT
END

BEGIN SanKaBa

CHAIN
IF~Global("SanSharInt","GLOBAL",40)~THEN CVshabab KhaliBab1
@1
DO~SetGlobal("SanSharInt","GLOBAL",41)~
==Sangori@2
==SanKaBa@3
==CVshabab@4
=@5
==Sangori@6
==CVshabab@7
==Sangori@8
==CVshabab@9
END
++@10+ KhaliBab2

CHAIN
IF~~THEN CVshabab KhaliBab2
@11
=@12
==SanKaBa@3
==Sangori@13
END
++@14DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() RestParty()~
EXIT

CHAIN
IF ~Global("SanSharNewHome","GLOBAL",1)GlobalGT("SanSharInt","GLOBAL",35)~THEN CVshabab SanSharCap1
@15
=@16
DO~SetGlobal("SanSharNewHome","GLOBAL",2)~
==Sangori@2
==BSandr@17
==CVshabab@18
==BSandr@19
==CVshabab @20
=@21
DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~EXIT

CHAIN
IF~Global("SanSharNewHome","GLOBAL",2) InParty("ADangel") See("ADAngel") Global("AngelinWDS","LOCALS",0) ~THEN CVshabab SanSharCapA1
@22
DO~SetGlobal("AngelinWDS","LOCALS",1)~
==IF_FILE_EXISTS ADAngelJ @23
==CVshabab @24
==Sangori@25
==IF_FILE_EXISTS ADAngelJ @26
==Sangori @27
END
++@28+Angel1
++@29+Angel1

CHAIN
IF~Global("SanSharNewHome","GLOBAL",3)InParty("ADangel") See("ADAngel") Global("AngelinWDS","LOCALS",0)~THEN CVshabab SanSharCapA2
@30
=@31
DO~SetGlobal("AngelinWDS","LOCALS",1)~
==IF_FILE_EXISTS ADAngelJ @23
==CVshabab @32
==IF_FILE_EXISTS ADAngelJ @26
END
++@33+Angel2
++@29+Angel2

CHAIN
IF~Global("SanSharNewHome","GLOBAL",2)~THEN CVshabab SanSharCap2
@34
==Sangori@35
END
++@36EXIT

CHAIN
IF~~THEN CVshabab Angel1
@37
==Sangori@38
==IF_FILE_EXISTS ADAngelJ @39
==CVshabab@40
==IF_FILE_EXISTS ADAngelJ @41EXIT

CHAIN
IF ~Global("SanSharNewHome","GLOBAL",1)Global("SanSharCom","GLOBAL",8)~THEN CVshabab SanSharCap3
@42
=@43
DO~SetGlobal("SanSharNewHome","GLOBAL",3)~
==Sangori@44
==BSandr@17
==CVshabab@45
==BSandr@46
END
++@47EXIT

CHAIN
IF~Global("SanSharNewHome","GLOBAL",3)~THEN CVshabab SanSharCap4
@48
==Sangori@49
END
++@50EXIT


 CHAIN
IF~~THEN CVshabab Angel2
@37
==IF_FILE_EXISTS ADAngelJ @39
==CVshabab@51
==IF_FILE_EXISTS ADAngelJ @52EXIT