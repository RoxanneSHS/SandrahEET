CHAIN
IF WEIGHT #-9~Global("SanHealanom","GLOBAL",4)~THEN Banomen SanHeal1
@0
DO~SetGlobal("SanHealanom","GLOBAL",5)~
==BSandr@1
== Banomen@2
==BSandr@3
== Banomen@4
==BSandr@5EXIT

CHAIN
IF WEIGHT #-10~Global("SanHealanom","GLOBAL",6)~THEN Banomen SanDoubt1
@6
DO~SetGlobal("SanHealanom","GLOBAL",7)~
==BSandr@7
== Banomen@8
==BSandr@9
== Banomen@10
==BSandr@11
== Banomen@12
==BSandr@13EXIT

CHAIN
IF WEIGHT #-11~Global("SanHealanom","GLOBAL",9) ~THEN Banomen SanSlavChiHunt1
@14 
DO~ SetGlobal("SanHealanom","GLOBAL",10) ~
==BSandr@15
==Banomen@16
==BSandr@17
==Banomen@18
==BSandr@19
==Banomen@20
==BSandr@21
==Banomen@22
==BSandr@23
==Banomen@24
END
++@25+ SanSlavChiHunt8

CHAIN
IF~~THEN Banomen SanSlavChiHunt8
@26
==BSandr@27
END
++@28EXIT
             

CHAIN
IF WEIGHT #-12~Global("SanHealanom","GLOBAL",12)~THEN Banomen SanAnomPe
@29
DO~SetGlobal("SanHealanom","GLOBAL",13)~
==BSandr@30
==Banomen@31
==BSandr@32EXIT

CHAIN
IF WEIGHT #-13~Global("SanHealanom","GLOBAL",15)~THEN Banomen SanAnomPe
@33
DO~SetGlobal("SanHealanom","GLOBAL",16) RealSetGlobalTimer("SanAnomT","LOCALS",1800)~
==BSandr@34
==Banomen@35
==BSandr@36
==Banomen@37
==BSandr@38
==Banomen@39EXIT

CHAIN
IF WEIGHT #-16~Global("SanAnomenDecide","GLOBAL",1) ~THEN Banomen SanSaerAdv
@40
DO~SetGlobal("SanAnomenDecide","GLOBAL",2) ~
==BSandr@41
==Banomen@42
==BSandr@43
=@44
==Banomen@45
==BSandr@46
=@47
==Banomen@48EXIT

CHAIN
IF WEIGHT #-16~Global("SanAnomenDecide","GLOBAL",6) ~THEN Banomen SanSaerkil
@49
DO~SetGlobal("SanAnomenDecide","GLOBAL",7) ~
==BSandr@50
==Banomen@51
==BSandr@52EXIT

CHAIN
IF WEIGHT #-16~Global("SanAnomenDecide","GLOBAL",8) ~THEN Banomen SanSaerkil2
@53
DO~SetGlobal("SanAnomenDecide","GLOBAL",9) ~
==BSandr@54DO~RunAwayFrom("Anomen",20)~EXIT


APPEND Bylanna
IF WEIGHT #-5~InParty("Anomen") InParty("CVSandr") !StateCheck("Anomen",STATE_SLEEPING)
Global("SanAnomenDecide","GLOBAL",2) Global("Anomen","LOCALS",0) ~THEN BEGIN SanAnoDec
  SAY @55
  IF ~~THEN DO ~SetGlobal("Anomen","LOCALS",1)
~EXTERN ~ANOMENJ~130
END
END