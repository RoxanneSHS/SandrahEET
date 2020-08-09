APPEND BJ#Klsy

IF WEIGHT #-6~Global("SanHealklsy","GLOBAL",5) ~THEN BEGIN SanhealKlsy1
SAY@0
IF~~THEN EXTERN BSandr SanhealKlsy2
END

IF WEIGHT #-7~Global("SanHealklsy","GLOBAL",7)~THEN BEGIN SanKlsy1
SAY@1
IF~~THEN EXTERN BSandr SanhealKlsy3
END
END

CHAIN
IF~~THEN BSandr SanhealKlsy2
@2
DO~SetGlobal("SanHealklsy","GLOBAL",6) RealSetGlobalTimer("SanKelseyT","LOCALS",2120)~
== BJ#Klsy@3
== BSandr@4
== BJ#Klsy@5
== BSandr@6
== BJ#Klsy@7
== BSandr@8
== BJ#Klsy@9
== BSandr@10
== BJ#Klsy@11
== BSandr@12EXIT

CHAIN
IF~~THEN BSandr SanhealKlsy3
@13
DO~SetGlobal("SanHealklsy","GLOBAL",8) RealSetGlobalTimer("SanKelseyT","LOCALS",2120)~
== BJ#Klsy@14
== BSandr@15
== BJ#Klsy@16
== BSandr@17
== BJ#Klsy@18
== BSandr@19DO~ StartCutSceneMode()  SmallWait(4) FadeToColor([20.0],0) Wait(4) FadeFromColor([20.0],0)  EndCutSceneMode() ~
EXIT