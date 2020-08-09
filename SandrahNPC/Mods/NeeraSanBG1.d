INTERJECT_COPY_TRANS Neekando 0 SanNeeraRW1
== CVSandrJ IF ~InParty("CVSandr")~THEN @0
== Neera_ IF ~InParty("CVSandr")~THEN @1
== CVSandrJ IF ~InParty("CVSandr")~THEN @2
== Neekando IF ~InParty("CVSandr")~THEN @3
END

INTERJECT_COPY_TRANS Neera_ 8 SanNeeraRW2
== CVSandrJ IF ~InParty("CVSandr")~THEN @4
== Neera_ IF ~InParty("CVSandr")~THEN @5
END 

CHAIN
IF WEIGHT #-2~Global("SanNeeraBG1B","GLOBAL",3)~THEN BNeera_ SanNeera1
@6
DO~SetGlobal("SanNeeraBG1B","GLOBAL",4)~
==CVSandrJ@7
==BNeera_@8
==CVSandrJ@9
=@10
=@11
=@12
==BNeera_@13
==CVSandrJ@14EXIT

CHAIN
IF WEIGHT #-2~Global("SanNeeraBG1B","GLOBAL",6)~THEN BNeera_ SanNeera2
@15
DO~SetGlobal("SanNeeraBG1B","GLOBAL",7)~
==CVSandrJ@16
==BNeera_@17
==CVSandrJ@18
==BNeera_@19
==CVSandrJ@20
==BNeera_@21
==CVSandrJ@22
==BNeera_@23
==CVSandrJ@24
==BNeera_@25
END
++@26EXIT

CHAIN
IF WEIGHT #-2~Global("SanNeeraR","LOCALS",1)~THEN BNeera_ Redwi
@27
DO~SetGlobal("SanNeeraR","LOCALS",2)~
==BSandr@28
==BNeera_@29
==BSandr@30
==BNeera_@31
==BSandr@32
==BNeera_@33DO~IncrementGlobal("SanNeeraBG1B","Global",1)~
==BSandr@34
==BNeera_@35EXIT

CHAIN
IF WEIGHT #-2~Global("SanNeeraA","LOCALS",1)~THEN BNeera_ RedwiA
@36
DO~SetGlobal("SanNeeraA","LOCALS",2)~
==BSandr@37
==BNeera_@38
==BSandr@39
==BNeera_@40
==BSandr@41
==BNeera_@42
=@43EXIT

EXTEND_BOTTOM Neadoy 0
IF~InParty("CVSandr")~THEN REPLY@44DO~SetGlobal("ADOY_MET_PARTY","GLOBAL",1)~GOTO Neasan1
END 

EXTEND_BOTTOM Neadoy 1
IF~InParty("CVSandr")~THEN REPLY@44DO~SetGlobal("ADOY_MET_PARTY","GLOBAL",1)~GOTO Neasan1
END 

CHAIN
IF~~THEN Neadoy Neasan1
@45
==CVSandrJ@46
==Neadoy@47
END
++@48EXTERN Neadoy 2
++@49EXTERN Neadoy 2
IF~!Dead("Neera")~THEN REPLY@50EXTERN Neadoy 2

CHAIN
IF WEIGHT #-2~Global("SanNeeraBG2B","GLOBAL",1)~THEN BNeera SanNeera22
@51
DO~SetGlobal("SanNeeraBG2B","GLOBAL",2)~
==CVSandrJ@52
==BNeera@53
==CVSandrJ@54
==BNeera@55
==CVSandrJ@56
==BNeera@57EXIT

CHAIN
IF WEIGHT #-6~Global("LavokOutside","GLOBAL",1) InParty("Neera") OR(2)Global("PlayerHasStronghold","GLOBAL",1) !Class(Player1,LONG_BOW)~THEN Lavok Neerasphere
@58
DO~DestroyItem("MINHP1") SetGlobal("PCSphere","GLOBAL",1) AddXPObject(Player1,11375)
AddXPObject(Player2,11375) AddXPObject(Player3,11375) AddXPObject(Player4,11375) AddXPObject(Player5,11375) AddXPObject(Player6,11375)~
=@59
==BNeera@60
==Lavok@61
==BNeera@62
==BNeera IF~InParty("CVSandr")~THEN@63
==Lavok@64DO~Kill(Myself)~EXIT