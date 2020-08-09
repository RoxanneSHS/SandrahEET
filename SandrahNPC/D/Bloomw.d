BEGIN BLOOMW

CHAIN
IF ~Global("Bloomw","GLOBAL",1)~THEN BLOOMW BloReUn
@0
DO~SetGlobal("Bloomw","GLOBAL",8)~
== IF_FILE_EXISTS BSUFINCH @1
== BLOOMW @2
== IF_FILE_EXISTS BSUFINCH @3
= @4
== BLOOMW @5
== IF_FILE_EXISTS BSUFINCH @6
== BLOOMW @7
== IF_FILE_EXISTS BSUFINCH @8
== BIMOEN2 IF ~InParty("Imoen2") ~THEN @9
== IF_FILE_EXISTS k-roseB  IF~InParty("k-rose") ~THEN @10
== BSandr @11
== BLOOMW @12
END
++ @13+ BloRePr
++ @14+BloReInp

CHAIN
IF ~~THEN BLOOMW BloRePr
@15
DO ~ReputationInc(1) EscapeAreaMove("CVEBS1",294,355,5)~EXIT

CHAIN
IF ~~THEN BLOOMW BloReInp
@16
DO ~ ReputationInc(-1) EscapeAreaMove("CVEBS1",294,355,5)~EXIT

CHAIN
IF ~Global("Bloomw","GLOBAL",2)~THEN Bloomw BloSUQ
@17
== BSandr @18
== BLOOMW @19
== BSandr IF~Global("SUSanKnowsFinch","GLOBAL",1)!BeenInParty("Sufinch")~THEN@20
== BSandr IF~Global("SUSanKnowsFinch","GLOBAL",1)BeenInParty("Sufinch")~THEN@21
== BSandr IF~!Global("SUSanKnowsFinch","GLOBAL",1)~THEN@22
== BLOOMW @23
END
IF ~!Dead("Sufinch") ~THEN REPLY@24+ BloSUQ1
IF ~Dead("Sufinch") ~THEN REPLY@25 + BloSuDe

CHAIN
IF ~~THEN BLOOMW BloSuDe
@26
= @27 DO~EscapeAreaMove("CVEBS1",294,355,5)~
END
++@28DO ~GiveItemCreate("SuSaBo",Player1,0,0,0) SetGlobal("Bloomw","GLOBAL",5) RealSetGlobalTimer("BloomwT","GLOBAL",4800) ~EXIT
++@29
DO ~GiveItemCreate("SuSaBo",Player1,0,0,0) SetGlobal("Bloomw","GLOBAL",5) RealSetGlobalTimer("BloomwT","GLOBAL",4800) ~EXIT

CHAIN
IF ~~THEN BLOOMW BloSUQ1
@30
= @31
END
++ @32+ BloSuErr
++ @33+ BloSuQeY

CHAIN
IF ~~THEN BLOOMW BloSuErr
@34
DO ~SetGlobal("Bloomw","GLOBAL",5) ReputationInc(-2) CreateItem("SuSaBo",0,0,0) DropItem("SuSaBo",[-1.-1])RealSetGlobalTimer("BloomwT","GLOBAL",4800) EscapeAreaMove("CVEBS1",294,355,5)~EXIT

CHAIN
IF ~~THEN BLOOMW BloSuQeY
@35
DO ~GiveItemCreate("SuSaBo",Player1,0,0,0) SetGlobal("Bloomw","GLOBAL",5) AddJournalEntry(@60111,QUEST) RealSetGlobalTimer("BloomwT","GLOBAL",4800)EscapeAreaMove("CVEBS1",294,355,5)  ~
EXIT

CHAIN
IF ~Global("Bloomw","GLOBAL",3)~THEN BLOOMW BloSUCoI
@17
== BSandr @36
== BLOOMW @19
== BSandr @37
== BLOOMW @38
END
++@39+ BloSUQ1
++@40+ BloSUQ1


CHAIN
IF ~Global("Bloomw","GLOBAL",4)~THEN BLOOMW BloSUInB
@41EXIT

CHAIN
IF ~Global("Bloomw","GLOBAL",6)~THEN BLOOMW BloQDone
@42DO ~ReputationInc(1)SetGlobal("Bloomw","GLOBAL",7) ~ EXIT

CHAIN
IF ~OR(2) Global("Bloomw","GLOBAL",5) Global("Bloomw","GLOBAL",7)~THEN BLOOMW BloSUInB
@43
END
++@44DO ~StartStore("CVClar",LastTalkedToBy(Myself))~EXIT
IF~Global("WDFishermen","GLOBAL",3) !PartyHasItem("CVWDFi2") ~THEN REPLY @45+ BloFiMe
IF~InParty("CVSandr") Global("SanKhalBlood","GLOBAL",4) ~THEN REPLY @46+ BlBoowr
++@47EXIT

CHAIN
IF ~Global("Bloomw","GLOBAL",8)~THEN BLOOMW BloSuQWF
@48
== IF_FILE_EXISTS BSUFINCH @49
== BLOOMW @50
== IF_FILE_EXISTS BSUFINCH @51
== BLOOMW @52
== BSandr @53
== BLOOMW @54
= @55
== IF_FILE_EXISTS BSUFINCH @56
== BLOOMW @57 DO ~GiveItemCreate("SuSaBo","Sufinch",0,0,0)SetGlobal("Bloomw","GLOBAL",9)AddJournalEntry(@60212,QUEST) RealSetGlobalTimer("BloomwT","GLOBAL",4800)~
== IF_FILE_EXISTS BSUFINCH @58
== BLOOMW @59
EXIT

CHAIN
IF ~Global("Bloomw","GLOBAL",9)~THEN BLOOMW BloSUInC
@43
END
++@44DO ~StartStore("CVClar",LastTalkedToBy(Myself))~EXIT  
IF~InParty("CVSandr") Global("SanKhalBlood","GLOBAL",4) ~THEN REPLY @46+ BlBoowr
++@47EXIT
IF~Global("WDFishermen","GLOBAL",3) !PartyHasItem("CVWDFi2") ~THEN REPLY @45+ BloFiMe

CHAIN
IF~~THEN  BLOOMW BlBoowr
@60
== BSandr @61
== BLOOMW @62
== BSandr @63
== BLOOMW @64
EXIT

CHAIN
IF~~THEN  BLOOMW BloFiMe
@65
== BSandr @66
==BLOOMW @67
== BSandr @68
==BLOOMW @69EXIT

