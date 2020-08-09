BEGIN CVMONTE

CHAIN
IF ~Global("monteedebut","LOCALS",1) ~THEN CVMONTE BookHE1
@0
== BSANDR @1
== CVMONTE @2
== BSANDR @3
== CVMONTE @4
== BSANDR @5
== CVMONTE @6
== BSANDR @7
== CVMONTE @8
== BSANDR @9
== CVMONTE @10
== BSANDR @11
== CVMONTE @12
END
IF ~PartyHasItem("CVFARKPA") ~THEN REPLY @13DO~TakePartyItem("CVFARKPA") SetGlobal("SanGavMontPapers","GLOBAL",1)~+ BookHE2
IF ~PartyHasItem("CVFARKPA") ~THEN REPLY @14DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~+ BookHE3
IF ~!PartyHasItem("CVFARKPA") ~THEN REPLY @15+ BookHE4

CHAIN
IF ~~THEN CVMONTE BookHE2
@16
DO ~SetGlobal("monteedebut","LOCALS",3)~EXIT


CHAIN
IF ~~THEN CVMONTE BookHE3
@17
DO~ SetGlobal("monteedebut","LOCALS",2) ~EXIT

CHAIN
IF ~~THEN CVMONTE BookHE4
@18
DO ~SetGlobal("monteedebut","LOCALS",3)~EXIT