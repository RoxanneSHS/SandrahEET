//Winski Perorate
BEGIN SANWINSK

CHAIN
IF ~Global("WinskApp1","GLOBAL",2)~THEN SANWINSK WinskiApp1
@0
DO~SetGlobal("WinskApp1","GLOBAL",3) RealSetGlobalTimer("WiItemR","GLOBAL",1200)~
== BDYNAH  IF~InParty("Dynaheir") ~THEN @1
== BMINSC_ IF ~InParty("Minsc") ~THEN @2
== BSANDR @3
== SANWINSK @4
== BSANDR @5
== SANWINSK @6
== BSANDR @7
= @8
== SANWINSK @9
== BSANDR @10
== SANWINSK @11
EXIT

CHAIN
IF ~Global("SanOrDiEarly","GLOBAL",1)~THEN SANWINSK WinskiAppEar2
@12
DO ~SetGlobal("SanOrDiEarly","GLOBAL",2)RealSetGlobalTimer("WiItemR","GLOBAL",1200)~
== BSANDR @13
== SANWINSK @14
== BSANDR @15
== SANWINSK @16
== BSANDR @17
== SANWINSK @18
== BSANDR @19
==BDYNAH IF ~InParty("Dynaheir") ~THEN@20
== SANWINSK @21
EXIT

CHAIN
IF ~Global("SanOrDiId","GLOBAL",5)~THEN SANWINSK WinskiApp2
@22
DO ~SetGlobal("SanOrDiId","GLOBAL",6)RealSetGlobalTimer("WiItemR","GLOBAL",1200)~
== BSANDR @13
== SANWINSK @14
== BSANDR @15
== SANWINSK @16
== BSANDR @23
== SANWINSK @18
== BSANDR @19
== SANWINSK @21
== BSANDR @24
== SANWINSK @25EXIT

CHAIN
IF WEIGHT #-2~Global("ENDOFBG1","GLOBAL",1) InParty("CVSandr") !InParty("dynaheir")
GlobalLT("X#DynaJournal","GLOBAL",9) ~THEN Winski Orlend
@26
==CVSandrJ@27
==Winski@28
==CVSandrJ@29
==Winski@30
=@31
=@32
=@33 DO~SetGlobal("X#DynaJournal","GLOBAL",9)
CreateCreatureObjectDoor("X#TANARI",Player1,0,0,0)~EXIT