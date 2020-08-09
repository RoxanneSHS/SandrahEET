
CHAIN
IF ~Global("MWArShauha","LOCALS",1)~THEN MWBarn TwoOrcs1
@0
DO~SetGlobal("MWArShauha","LOCALS",2)~
== BSHAUHA @1
== MWBarn@2
== BSHAUHA @3
== MWBarn@4
== BSHAUHA @5EXIT

CHAIN
IF ~Global("MWArShauha","LOCALS",3)~THEN MWBarn TwoOrcs2
@6
DO~SetGlobal("MWArShauha","LOCALS",4)~
== BSHAUHA @7
== MWBarn@8
== BSHAUHA @9
== MWBarn@10
== BSHAUHA @11
== MWBarn@12
== BSHAUHA @13
== MWBarn@14EXIT

CHAIN
IF WEIGHT #-14~Global("MWarsanbount","LOCALS",1)~THEN MWBarn Bountfriend
@15
DO~SetGlobal("MWarsanbount","LOCALS",2)~
==BSandr@16
== MWBarn@17
== MWBarn IF~InParty("CVShau")~THEN @18
==BShauha IF~InParty("CVShau")~THEN @19
== MWBarn IF~InParty("CVShau")~THEN @20
EXIT

INTERJECT_COPY_TRANS  MWBOHUL 0 SanArienSlaveHate
== CVSandrJ IF ~InParty("CVSandr")~THEN @21
== CVShauJ IF ~InParty("CVShau")~THEN @22
== MWBOHUL IF~OR(2)InParty("CVShau")InParty("CVSandr")~THEN@23
== CVSandrJ IF ~InParty("CVSandr")~THEN @24
==MWBarn IF~OR(2)InParty("CVShau")InParty("CVSandr")~THEN@25END