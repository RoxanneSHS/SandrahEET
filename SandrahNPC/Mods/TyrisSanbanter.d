CHAIN
IF WEIGHT #-4~Global("SanTyriB","LOCALS",3)~THEN BG#Tyris Healsan1
@0
DO~SetGlobal("SanTyriB","LOCALS",4) ~
==BSandr@1
==BG#Tyris@2
==BSandr@3
==BG#Tyris@4
==BSandr@5
==BG#Tyris@6
==BSandr@7
==BG#Tyris@8
==BSandr@9EXIT

CHAIN
IF WEIGHT #-4~Global("SanTyriB","LOCALS",5)~THEN BG#Tyris Healsan2
@10
DO~SetGlobal("SanTyriB","LOCALS",6) ~
==BSandr@11
==BG#Tyris@12
==BSandr@13
=@14
==BG#Tyris@15
==BSandr@16
==BG#Tyris@17DO~RunAwayFrom("CVSandr",20)~
==BSandr@18EXIT

CHAIN
IF WEIGHT #-4~Global("SanTyriB","LOCALS",15)~THEN BG#Tyris Healsan3
@10
DO~SetGlobal("SanTyriB","LOCALS",6) ~
==BSandr@11
==BG#Tyris@12
==BSandr@19
==BG#Tyris@20
==BSandr@21
==BG#Tyris@22
==BSandr@23EXIT

CHAIN
IF WEIGHT #-4~Global("SanTyriB","LOCALS",7)~THEN BG#Tyris SanretUr1
@24
DO~SetGlobal("SanTyriB","LOCALS",8) ~
==BSandr@25
==BG#Tyris@26
==BSandr@27
=@28
=@29
=@30
==BG#Tyris@31
=@32
=@33
==BSandr@34
=@35
==BG#Tyris@36
==BSandr@37
==BG#Tyris@38
END
IF~Global("G#TF.TyrisMatch","GLOBAL",0)~THEN REPLY@39+ SanretUr2
IF~Global("G#TF.TyrisMatch","GLOBAL",0)~THEN REPLY@40+ SanretUr3

CHAIN
IF~~THEN BG#Tyris SanretUr2
@41EXIT

CHAIN
IF~~THEN BG#Tyris SanretUr3
@42EXIT

