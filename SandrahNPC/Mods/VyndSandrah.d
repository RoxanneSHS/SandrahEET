CHAIN
IF WEIGHT #-1~Global("Sanvyndheal","Global",3)~THEN BGV#Vynd Domina1
@0
DO~SetGlobal("Sanvyndheal","Global",4)~
==BSandr@1
==BGV#Vynd@2
==BSandr@3
==BGV#Vynd@4
==BSandr@5
==BGV#Vynd@6
==BSandr@7
==BGV#Vynd@8EXIT

CHAIN
IF WEIGHT #-1~Global("Sanvyndheal","Global",5)~THEN BGV#Vynd Domina2
@9
DO~SetGlobal("Sanvyndheal","Global",6)~
==BSandr@10
==BGV#Vynd@11
==BSandr@12
==BGV#Vynd@13
==BSandr@14
==BGV#Vynd@15
==BSandr@16
==BGV#Vynd@17
==BSandr@18EXIT

CHAIN
IF WEIGHT #-1~Global("Sanvyndheal","Global",7)~THEN BGV#Vynd Domina3
@19
DO~SetGlobal("Sanvyndheal","Global",8)~
==BSandr@20
==BGV#Vynd@21
==BSandr@22
==BGV#Vynd@23
=@24
==BSandr@25
==BGV#Vynd@26
==BSandr@27EXIT

CHAIN
IF WEIGHT #-1~Global("Sanvyndheal","Global",9)~THEN BGV#Vynd Domina4
@28
DO~SetGlobal("Sanvyndheal","Global",10)~
==BSandr@29
==BGV#Vynd@30
==BSandr@31
==BGV#Vynd@32
==BSandr@33
==BGV#Vynd@34EXIT

CHAIN
IF WEIGHT #-1~Global("Sanvyndheal","Global",11)~THEN BGV#Vynd Domina5
@35
DO~SetGlobal("Sanvyndheal","Global",12)~
==BSandr@36
==BGV#Vynd@37
==BSandr@38
==BGV#Vynd@39
==BSandr@40
==BGV#Vynd@41DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT