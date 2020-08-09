CHAIN
IF WEIGHT #-3~Global("SanHealNiki","GLOBAL",1)~THEN BCMNikit Sandrah1
@0
DO~SetGlobal("SanHealNiki","GLOBAL",2) RealSetGlobalTimer("SanHealNikiTi","LOCALS",2100)~
==Bsandr@1
==BCMNikit@2
==Bsandr@3
==BCMNikit@4
==Bsandr@5EXIT

CHAIN
IF WEIGHT #-3~Global("SanHealNiki","GLOBAL",3)~THEN BCMNikit Sandrah2
@6
DO~SetGlobal("SanHealNiki","GLOBAL",4) RealSetGlobalTimer("SanHealNikiTi","LOCALS",2100)~
==Bsandr@7
==BCMNikit@8
==Bsandr@9
=@10EXIT

CHAIN
IF WEIGHT #-3~Global("SanHealNiki","GLOBAL",5)~THEN CMMadel SandrahP
@11
DO~SetGlobal("SanHealNiki","GLOBAL",6) SetGlobal("LockedDoor1001b","AR1000",1)~
==BCMNikit@12
==CMMadel@13
=@14
==Bsandr@15
==BCMNikit@16
==CMMadel@17DO~MoveToPoint([3560.1640]) Wait(2) DestroySelf()~EXIT

CHAIN
IF WEIGHT #-3~Global("SanHealNiki","GLOBAL",6)~THEN BCMNikit Sandrah3
@18
DO~SetGlobal("SanHealNiki","GLOBAL",7) ~
==Bsandr@19
==BCMNikit@20
==Bsandr@21EXIT

CHAIN
IF WEIGHT #-3~Global("SanHealNiki","GLOBAL",7)~THEN CMMadel SandrahT
@22
DO~SetGlobal("SanHealNiki","GLOBAL",8) ~
==BCMNikit@23
==CMMadel@24
==CMGeorge@25
==BCMNikit@26
==CMMadel@27DO~Enemy()~
==CMGeorge@28
==Bsandr@29
==CMGeorge@30DO~Enemy()~
END
++@31DO~ReputationInc(-2)~EXIT
++@32DO~AddexperienceParty(6800)~EXIT

CHAIN
IF WEIGHT #-3~Global("SanHealNiki","GLOBAL",9)~THEN BCMNikit Sandrah4
@33
DO~SetGlobal("SanHealNiki","GLOBAL",10) ~
==Bsandr@34
==BCMNikit@35
==Bsandr@36
==BCMNikit@37
==Bsandr@38
==BCMNikit@39
==Bsandr@40
==BCMNikit@41
==Bsandr@42DO~AddSpecialAbility("CVDra21")~
END
++@43EXIT