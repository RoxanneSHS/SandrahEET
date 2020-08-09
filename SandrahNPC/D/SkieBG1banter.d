CHAIN
IF WEIGHT #-3~Global("CVJenSkiB","LOCALS",1) ~THEN Bskie CVJenSki1
@0
DO~SetGlobal("CVJenSkiB","LOCALS",2)RealSetGlobalTimer("CVSanBantTi","LOCALS",1200) ~
==BJenli@1
==Bskie IF~InParty("Eldoth")~THEN@2
==BJenli IF~InParty("Eldoth")~THEN@3
==Bskie IF~InParty("Eldoth")~THEN@4
==Bskie IF~!InParty("Eldoth")~THEN@5
==BJenli IF~!InParty("Eldoth")~THEN@6EXIT

CHAIN
IF WEIGHT #-3~Global("CVJenSkiB","LOCALS",3) ~THEN Bskie CVJenSki2
@7
DO~SetGlobal("CVJenSkiB","LOCALS",4) RealSetGlobalTimer("CVSanBantTi","LOCALS",900)~
==BJenli@8
==Bskie@9
==BJenli@10
==Bskie@11
==BJenli@12
==Bskie@13
==BJenli@14
==Bskie@15EXIT

CHAIN
IF WEIGHT #-3~Global("CVJenSkiB","LOCALS",5) ~THEN Bskie CVJenSki3
@16
DO~SetGlobal("CVJenSkiB","LOCALS",6)RealSetGlobalTimer("CVSanBantTi","LOCALS",1100) ~
==BJenli@17
==Bskie@18
==BJenli@19
==Bskie@20EXIT


CHAIN
IF WEIGHT #-3~Global("CVSanSkieHeal","LOCALS",4)~THEN Bskie SanHeal1
@21
DO~SetGlobal("CVSanSkieHeal","LOCALS",5) RealSetGlobalTimer("CVSanBantTi","LOCALS",700)~
==BSandr@22
==Bskie@23
==BSandr@24
==Bskie@25
==BSandr@26
==Bskie@27EXIT

CHAIN
IF WEIGHT #-3~Global("X#SummonDora","GLOBAL",4)~THEN Bskie Sanskpade
@28
DO~SetGlobal("X#SummonDora","GLOBAL",5)~
==BSandr@29
==Bskie@30
==BSandr@31
==Bskie@32
==BSandr@33
==Bskie@34
==BSandr@35
==Bskie@36
==BSandr@37
==Bskie@38
==BSandr@39
==Bskie@40
==BSandr@41
==Bskie@42
==BSandr@43
==Bskie@44EXIT

CHAIN
IF WEIGHT #-1~InParty("CVSandr") InParty("Skie") InParty("Eldoth") !GlobalTimerNotExpired("Ransom","GLOBAL") ~THEN Elkart Gameup
@45
DO~SetGlobal("RansomTaken","GLOBAL",9)~
==SkieJ@46
==EldotJ@47
==SkieJ@48
==EldotJ@49
==SkieJ@50
==CVSandrJ@51
==SkieJ@52
==EldotJ@53
==Elkart@54DO~CreateCreature("FLAMSCO",[0.0],0)CreateCreature("FLAMSCO",[0.0],0) CreateCreature("FLAMSCO",[0.0],0)CreateCreature("FLAMSCO",[0.0],0) CreateCreature("FLAMSCO",[0.0],0) CreateCreature("FLAMSCO",[0.0],0) EraseJournalEntry(106273)
EscapeAreaDestroy(90) ~EXIT

CHAIN
IF WEIGHT #-4~InParty("CVSandr") Global("RansomTaken","GLOBAL",9)!AreaCheck("BG0105") ~THEN Bskie Gameup2
@55
DO~SetGlobal("RansomTaken","GLOBAL",10)~
==BSandr@56
==Bskie@57
==BSandr@58
==Bskie@59
==BSandr@60
==Bskie@61
=@62EXIT