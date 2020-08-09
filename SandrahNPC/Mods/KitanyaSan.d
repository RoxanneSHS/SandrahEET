CHAIN
IF WEIGHT #-23~Global("SanHealKity","GLOBAL",2)~THEN R#Kityb StopHeal1
@0
DO~SetGlobal("SanHealKity","GLOBAL",4)~
==BSandr@1
==R#Kityb@2
==BSandr@3
==R#Kityb@4
==BSandr@5
==R#Kityb@6EXIT

CHAIN
IF WEIGHT #-24~Global("SanHealKity","GLOBAL",5)~THEN BSandr SanKityAskJon
@7
DO~SetGlobal("SanHealKity","GLOBAL",6)~
==R#Kityb@8
==BSandr@9
==R#Kityb@10
==BSandr@11
==R#Kityb@12
==BSandr@13
==R#Kityb@14
==BSandr@15
END
++@16+ SanKityAskJon2
++@17EXIT
++@18+ SanKityAskJon2

CHAIN
IF~~THEN BSandr SanKityAskJon2
@19
=@20
END
++@21EXIT
++@22EXIT
IF~Global("SanRomPath","GLOBAL",1)~THEN REPLY @23EXIT

CHAIN
IF WEIGHT #-25~Global("SanHealKity","GLOBAL",7)~THEN R#Kityb SanKityAskJon
@24
DO~SetGlobal("SanHealKity","GLOBAL",8)~
==BSandr@25
==R#Kityb@26
==BSandr@27
==R#Kityb@28
=@29
==BSandr@30
=@31
==R#Kityb@32
==BSandr@33
==R#Kityb@34
==BSandr@35
==R#Kityb@36
==BSandr@37
==R#Kityb@38EXIT

CHAIN
IF WEIGHT #-26~Global("SanHealKity","GLOBAL",9)~THEN R#Kityb SanKityAskPC
@39
DO~SetGlobal("SanHealKity","GLOBAL",10)~
==BSandr@40
==R#Kityb@41
==BSandr@42
==R#Kityb@43
==BSandr@44
==R#Kityb@45
==BSandr@46
==R#Kityb@47EXIT

EXTEND_BOTTOM R#Kityj 271
IF~InParty("CVSandr")~THEN REPLY @48GOTO KitySan1
END

APPEND R#Kityj
IF~~THEN BEGIN KitySan1
SAY@49
IF~~THEN REPLY@50GOTO 272
IF~~THEN REPLY@51EXIT
END
END