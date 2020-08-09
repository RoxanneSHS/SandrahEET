ADD_TRANS_TRIGGER ADAngelj 236
~Global("SanSharInt","GLOBAL",0)
Global("SanSharNewHome","GLOBAL",0)~

EXTEND_BOTTOM ADAngelj 236
IF~GlobalLT("SanSharInt","GLOBAL",25)~THEN REPLY@0GOTO 239
IF~GlobalGT("SanSharInt","GLOBAL",25)~THEN REPLY@1GOTO SanAng1
IF~GlobalGT("SanSharInt","GLOBAL",25)~THEN REPLY@2GOTO SanAng5
IF~GlobalGT("SanSharNewHome","GLOBAL",0)~THEN REPLY@3GOTO 258
END

APPEND ADAngelj
IF~~THEN BEGIN SanAng1
SAY@4
IF~~THEN REPLY@5GOTO SanAng2
IF~~THEN REPLY@6GOTO 255
END

IF~~THEN BEGIN SanAng2
SAY@7
IF~~THEN REPLY@8GOTO 258
IF~GlobalGT("SanSharNewHome","GLOBAL",0)~THEN REPLY@9GOTO 258
IF~GlobalGT("SanSharInt","GLOBAL",25)~THEN REPLY@2GOTO SanAng5
END

IF~~THEN BEGIN SanAng3
SAY@10
IF~~THEN REPLY@11GOTO SanAng6
IF~~THEN REPLY@12GOTO SanAng6
END

IF~~THEN BEGIN SanAng4
SAY@10
IF~~THEN REPLY@13EXIT
IF~~THEN REPLY@12EXIT
END

IF~~THEN BEGIN SanAng5
SAY@14
IF~GlobalGT("SanSharInt","GLOBAL",36)~THEN REPLY @15GOTO SanAng3
IF~GlobalLT("SanSharInt","GLOBAL",36)~THEN REPLY @15GOTO SanAng4
END

IF~~THEN BEGIN SanAng6
SAY@16
IF~~THEN REPLY@17EXIT
END
END

CHAIN
IF WEIGHT #-6~Global("SanAngelB","LOCALS",1)~THEN Badangel SanKillSar
@18
DO~SetGlobal("SanAngelB","LOCALS",2)~
==BSandr@19
==Badangel@20
==BSandr@21
==Badangel@22
==BSandr@23
==Badangel@24
==BSandr@25
==Badangel@26
==BSandr@27
==Badangel@28
==BSandr@29EXIT

CHAIN
IF WEIGHT #-6~Global("SanAngelB","LOCALS",3)~THEN Badangel SanAngNo
@30
DO~SetGlobal("SanAngelB","LOCALS",4)~
==BSandr@31
==Badangel@32
==BSandr@33
==Badangel@34
==BSandr@35EXIT

CHAIN
IF WEIGHT #-6~Global("AngelinWD","LOCALS",1) ~THEN Badangel WDComand
@36
DO~SetGlobal("AngelinWD","LOCALS",2) ~
==BSandr@37
==Badangel@38
==BSandr@39
==Badangel@40
==BSandr@41
==Badangel@42
==BSandr@43
==Badangel@44
END
++@45EXIT
++@46EXIT

