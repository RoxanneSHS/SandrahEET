CHAIN
IF WEIGHT #-3~Global("SanHealSkie","GLOBAL",3)~THEN 1xSkieb Sandrah1
@0
DO~SetGlobal("SanHealSkie","GLOBAL",4)RealSetGlobalTimer("SanSkieT","LOCALS",2000)~
==BSandr@1
==1xSkieb@2
==BSandr@3
==1xSkieb@4
==BSandr@5
==1xSkieb@6EXIT

CHAIN
IF WEIGHT #-3~Global("SanHealSkie","GLOBAL",5) ~THEN 1xSkieb Sandrah2
@7
DO ~SetGlobal("SanHealSkie","GLOBAL",6)RealSetGlobalTimer("SanSkieT","LOCALS",2000)~
==BSANDR@8
==1xSkieb@9
==BSANDR@10
==1xSkieb@11
==BSANDR@12
==1xSkieb@13
=@14
==BSANDR@15
==1xSkieb@16
==BSANDR@17
==1xSkieb@18
==BSANDR@19
==1xSkieb@20DO~RestParty()~
EXIT

CHAIN
IF WEIGHT #-3~Global("SanHealSkie","GLOBAL",8) ~THEN 1xSkieb Sandrah3
@21
DO ~SetGlobal("SanHealSkie","GLOBAL",9)RealSetGlobalTimer("SanSkieT","LOCALS",2000)~
==BSANDR@22
==1xSkieb@23
==BSANDR@24
==1xSkieb@25
==BSANDR@26EXIT

CHAIN
IF WEIGHT #-3~Global("SanHealSkie","GLOBAL",10) ~THEN 1xSkieb Sandrah4
@27
DO ~SetGlobal("SanHealSkie","GLOBAL",11)RealSetGlobalTimer("SanSkieT","LOCALS",2000)~
==BSANDR@28
==1xSkieb@29
==BSANDR@30
==1xSkieb@31
==BSANDR@32
==1xSkieb@33
==BSANDR@34
==1xSkieb@35
==BSANDR@36EXIT

CHAIN
IF WEIGHT #-3~Global("SanHealSkie","GLOBAL",12) ~THEN 1xSkieb SandrahL1
@37
DO ~SetGlobal("SanHealSkie","GLOBAL",13)RealSetGlobalTimer("SanSkieT","LOCALS",2000)~
==BSANDR@38
==1xSkieb@39
==BSANDR@40DO~AddSpecialAbility("cvknok")AddSpecialAbility("cvtrap")~
==1xSkieb@41
=@42
=@43EXIT

CHAIN
IF WEIGHT #-3~Global("DesignItem","LOCALS",1) ~THEN 1xSkieb SandrahL2
@44
DO~SetGlobal("DesignItem","LOCALS",2) ~
==BSANDR@45
==1xSkieb@46
=@47
==BSANDR@48
==1xSkieb@49
==BSANDR@50
END
++@51EXTERN BSANDR SandrahL2b
++@52EXTERN BSANDR SandrahL2b
++@53EXTERN BSANDR SandrahL2b
++@54EXTERN BSANDR SandrahL2b

CHAIN
IF~~THEN BSANDR SandrahL2b
@55EXIT

CHAIN
IF WEIGHT #-3~Global("DesignItem","LOCALS",3) ~THEN 1xSkieb SandrahL2a
@44
DO~SetGlobal("DesignItem","LOCALS",4) ~
==BSANDR@45
==1xSkieb@46
=@47
==BSANDR@48
==1xSkieb@56
==BSANDR@57
END
++@51EXIT

CHAIN
IF WEIGHT #-11~Global("SkieRomanceActive","GLOBAL",2) Global("SkieRomanceC6","GLOBAL",3) InParty("CVSandr") RealGlobalTimerExpired("SkieTimerC6","GLOBAL") ~THEN 1xSkiej SanAspar
@58
DO~SetGlobal("SkieRomanceC6","GLOBAL",4)~
=@59
==CVSandrJ@60
==1xSkiej@61
==CVSandrJ@62DO~AddSpecialAbility("CVBabbl")~
==1xSkiej@63
END
++@64EXIT
++@65EXIT