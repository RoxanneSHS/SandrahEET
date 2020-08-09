BEGIN SANDARK

CHAIN
IF ~Global("Sandark","GLOBAL",2) ~THEN SANDARK Warn1
@0 
== JETLAJ @1
== SANDARK @2
== JETLAJ @3
== SANDARK @4
== JETLAJ @5
== BSANDR @6
END
++ @7 + Warn2
++ @8+ Warn3
++ @9+ Warn4
++ @10+ Warn5

CHAIN
IF~~THEN SANDARK Warn2
@11
DO~SetGlobal("Sandark","GLOBAL",3)IncrementGlobal("Sanpoints","GLOBAL",1) AddexperienceParty(6000) ~EXIT

CHAIN
IF~~THEN SANDARK Warn3
@11
DO~SetGlobal("Sandark","GLOBAL",3)AddexperienceParty(2000) ~EXIT

CHAIN
IF~~THEN SANDARK Warn4
@11
DO~SetGlobal("Sandark","GLOBAL",3)IncrementGlobal("Sanpoints","GLOBAL",-1) AddexperienceParty(1000) ~EXIT

CHAIN
IF~~THEN SANDARK Warn5
@12
DO ~SetGlobal("Sandark","GLOBAL",4)IncrementGlobal("Sanpoints","GLOBAL",-3)ReputationInc(-2) ~EXIT


// Jet Laya Sister

INTERJECT_COPY_TRANS JETLAJ 1 SanJetSis
== JETLAJ IF ~InParty("CVSandr")GlobalLT("SanHealJet","GLOBAL",4)~THEN@13
== BSANDR IF ~InParty("CVSandr")GlobalLT("SanHealJet","GLOBAL",4) ~THEN@14
== JETLAJ IF ~InParty("CVSandr")GlobalLT("SanHealJet","GLOBAL",4)~THEN@15
== BSANDR IF ~InParty("CVSandr")GlobalLT("SanHealJet","GLOBAL",4) ~THEN@16DO ~SetGlobal("SanHealJet","GLOBAL",4)~
== JETLAJ IF ~InParty("CVSandr")GlobalLT("SanHealJet","GLOBAL",4)~THEN@17
END

// Jet'Laya
CHAIN
IF ~Global("San2Elves","GLOBAL",3)~THEN BSANDR JetLath
@18
DO ~SetGlobal("San2Elves","GLOBAL",4)~
== JETLAJ @19
== BSANDR @20
== JETLAJ @21
== BSANDR @22
== JETLAJ @23
== BSANDR @24
== JETLAJ @25DO~RestParty()~
EXIT

CHAIN
IF ~~THEN BSANDR JetHealed
@26
DO ~SetGlobal("SanHealJet","GLOBAL",4)~
== JETLAJ@27
== BSANDR  @14
== JETLAJ@15
== BSANDR  @16
== JETLAJ@17
EXIT

CHAIN
IF ~Global("SanJetAml","LOCALS",1)~THEN BSANDR SanJetSisD
@28
DO ~SetGlobal("SanJetAml","LOCALS",2)~
== JETLAJ@29
== BSANDR  @30
== JETLAJ@31
== BSANDR  @32
END
++ @33+ SanJetSisD2
++ @34
+ SanJetSisD2

CHAIN
IF ~~THEN BSANDR SanJetSisD2
@35
END
++ @36DO ~AddexperienceParty(2500)~EXIT
++ @37+ SanJetSisD3

CHAIN
IF ~~THEN BSANDR SanJetSisD3
@38
END
++@39DO ~AddexperienceParty(2500)~EXIT

APPEND JETLAJ
IF WEIGHT #-9 ~Global("SanHealJet","GLOBAL",3)~THEN BEGIN SanHealJet
SAY @40
IF~~THEN EXTERN BSANDR JetHealed
END
END