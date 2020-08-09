BEGIN HENNING

IF~
AreaCheck("CVorc2")
NumberOfTimesTalkedTo(0)
~THEN BEGIN Uhh
SAY @0
IF ~~THEN EXIT
END

IF ~
AreaCheck("BG4803")
!Global("DMWWNashkelPelt","GLOBAL",1)
OR(2)
!InParty("CVSandr") 
!InParty("Imoen2")
NumberOfTimesTalkedTo(0)
~THEN BEGIN NK0
  SAY @1
  IF ~~THEN REPLY @2 DO ~StartStore("sto4803",LastTalkedToBy(Myself))AddJournalEntry(@60175,QUEST) ~EXIT
  IF ~~THEN REPLY @3DO~ AddJournalEntry(@60175,QUEST) ~EXIT
END

IF ~AreaCheck("BG4803") InParty("CVSandr") InParty("Imoen2") Global("SanImoNashInt","GLOBAL",4) PartyHasItem("MISC01")~THEN BEGIN NK1f
 SAY @4
 IF~~THEN DO ~TakePartyItemNum("MISC01",1)
GiveGoldForce(500)
IncrementGlobal("DMWWNashkelPelt","GLOBAL",1)
EraseJournalEntry(@60175)
DestroyItem("MISC01")
~GOTO NK1c
END
  
IF ~
AreaCheck("BG4803")
!Global("DMWWNashkelPelt","GLOBAL",1)
InParty("CVSandr") 
InParty("Imoen2")
NumberOfTimesTalkedTo(0)
~THEN BEGIN NK1a
SAY @5
  IF ~~THEN EXTERN HENNING ForImo1
END

IF ~
AreaCheck("BG4803")
!Global("DMWWNashkelPelt","GLOBAL",1)
PartyHasItem("MISC01")
~THEN BEGIN NK1b
  SAY @4
  IF ~InParty("CVSandr") InParty("Imoen2") Global("SanImoNashInt","GLOBAL",4)~THEN DO ~TakePartyItemNum("MISC01",1)
GiveGoldForce(500)
IncrementGlobal("DMWWNashkelPelt","GLOBAL",1)
EraseJournalEntry(@60175)
DestroyItem("MISC01")
~GOTO NK1c
IF ~OR(2)!InParty("CVSandr") InParty("Imoen2")~THEN DO ~TakePartyItemNum("MISC01",1)
GiveGoldForce(500)
IncrementGlobal("DMWWNashkelPelt","GLOBAL",1)
EraseJournalEntry(@60175)
DestroyItem("MISC01")
~EXIT
END

IF~~NK1c
SAY @6
IF ~~THEN EXTERN HENNING ForImo2
END

IF ~
AreaCheck("BG4803")
!Global("DMWWNashkelPelt","GLOBAL",1)
!PartyHasItem("MISC01") 
OR(2) 
!Global("SanImoNashInt","GLOBAL",7) 
!Global("SanImoNashInt","GLOBAL",10)
~THEN BEGIN NK2
  SAY @1
  IF ~~THEN REPLY @2DO ~StartStore("sto4803",LastTalkedToBy(Myself))
~EXIT
  IF ~~THEN REPLY@3 EXIT
END

IF ~
AreaCheck("BG4803")
Global("DMWWNashkelPelt","GLOBAL",1)
!PartyHasItem("misc01")
!AreaCheck("CVORC2")
OR(2) 
!Global("SanImoNashInt","GLOBAL",7) 
!Global("SanImoNashInt","GLOBAL",10)
~THEN BEGIN NK3
  SAY @7
  IF ~~THEN REPLY@2DO ~StartStore("STO4803",LastTalkedToBy(Myself))~EXIT
  IF ~~THEN REPLY @3EXIT
END

IF ~
AreaCheck("BG4803")
Global("DMWWNashkelPelt","GLOBAL",1)
PartyHasItem("misc01")
!AreaCheck("CVORC2") 
OR(2) 
!Global("SanImoNashInt","GLOBAL",7)
!Global("SanImoNashInt","GLOBAL",10)
~THEN BEGIN NK4
  SAY @8
  IF ~~THEN REPLY @9DO ~StartStore("STO4803",LastTalkedToBy(Myself)) ~EXIT
  IF ~~THEN REPLY @10EXIT
END


// Imoen Interest in Nashkel

CHAIN
IF~Global("Nashtalk","LOCALS",0) ~THEN HENNING ForImo1
@11
=@12
DO ~SetGlobal("ImoNashSK","GLOBAL",1)SetGlobal("Nashtalk","LOCALS",1)~
== CVSandrJ IF ~InParty("CVSandr") InParty("Imoen2") ~THEN @13
== HENNING IF ~InParty("CVSandr") InParty("Imoen2") ~THEN @14
== CVSandrJ IF ~InParty("CVSandr") InParty("Imoen2") ~THEN @15
== HENNING IF ~InParty("CVSandr") InParty("Imoen2") ~THEN @16
== CVSandrJ IF ~InParty("CVSandr") InParty("Imoen2") ~THEN @17
== BIMOEN  IF ~InParty("CVSandr") InParty("Imoen2") ~THEN @18
== HENNING IF ~InParty("CVSandr") InParty("Imoen2") ~THEN @19DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~EXIT

CHAIN
IF~Global("SanImoNashInt","GLOBAL",4)~THEN HENNING ForImo2
@20
== BIMOEN  IF ~InParty("CVSandr") InParty("Imoen2") ~THEN @21
== HENNING IF ~InParty("CVSandr") InParty("Imoen2") ~THEN @22
== BIMOEN  IF ~InParty("CVSandr") InParty("Imoen2") ~THEN @23
== HENNING IF ~InParty("CVSandr") InParty("Imoen2") ~THEN @24
== BIMOEN  IF ~InParty("CVSandr") InParty("Imoen2") ~THEN @25DO ~SetGlobal("SanImoNashInt","GLOBAL",5) AddJournalEntry(@60932,QUEST)~EXIT

CHAIN
IF WEIGHT #-999 ~Global("SanImoNashInt","GLOBAL",7)InParty("Imoen2") InParty("CVSandr") ~THEN HENNING ImoFurC
@26
DO ~SetGlobal("SanImoNashInt","GLOBAL",8)~
== BIMOEN @27
== HENNING @28
== BIMOEN @29
= @30DO ~GiveItemCreate("imofurc","Imoen2",0,0,0)~
== HENNING @31
== BIMOEN @32DO ~StartMovie("restinn")~
EXIT

CHAIN
IF WEIGHT #-999~Global("SanImoNashInt","GLOBAL",10)InParty("Imoen2") InParty("CVSandr") ~THEN HENNING ImoFur2
 @33
 DO ~SetGlobal("SanImoNashInt","GLOBAL",11)~
 == BIMOEN @34
== HENNING @35
 == BIMOEN @36
== HENNING @37
 == BIMOEN @38
== HENNING @39
END
++ @40EXIT
++ @41EXIT

CHAIN
IF WEIGHT #-999 ~Global("SanImoNashInt","GLOBAL",13) InParty("Imoen2") InParty("CVSandr")~ THEN HENNING ImoSana
@42
DO ~SetGlobal("SanImoNashInt","GLOBAL",15)~
 == BIMOEN @43
 == HENNING @44
 == BSANDR@45
 END
 ++ @46+ ImoSanaSD
 
 CHAIN 
 IF ~~THEN HENNING ImoSanaSD
 @47
 == BIMOEN @48
 == BSHART IF~InParty("Sharteel") ~THEN @49
== BVICONI  IF~InParty("Viconia") ~THEN @50
== BKIVAN  IF~InParty("Kivan") ~THEN @51
== IF_FILE_EXISTS BSUFINCH  IF~InParty("Sufinch") ~THEN @52
== BAJANT  IF~InParty("Ajantis") ~THEN @53
== IF_FILE_EXISTS k-roseB  IF~InParty("k-rose") ~THEN @54
== IF_FILE_EXISTS ~B!GAVINJ~IF ~InParty("B!GAVIN")~THEN @55
== IF_FILE_EXISTS ACBreB IF~InParty("ACBre") ~THEN  @56
== BBRANW  IF~InParty("Branwen") ~THEN @57
== BXANNN  IF~InParty("Xan") ~THEN @58
== BCORAN  IF~InParty("Coran") ~THEN  @59
== BGARRI IF~InParty("Garrick") ~THEN  @60
== BDYNAH  IF~InParty("Dynaheir") ~THEN @61
== BJAHEI  IF~InParty("Jaheira") ~THEN @62
== BSANDR @63
DO ~
 StartCutSceneMode()
		FadeToColor([30.0],0)
		Wait(2)
		ActionOverride("Shopkn",DestroySelf())
		ActionOverride("Sanana",DestroySelf())
		ActionOverride(Player1,LeaveAreaLUA("BG4800","",[1747.1139],13))
		ActionOverride(Player2,LeaveAreaLUA("BG4800","",[1747.1139],13))
		ActionOverride(Player3,LeaveAreaLUA("BG4800","",[1747.1139],13))
		ActionOverride(Player4,LeaveAreaLUA("BG4800","",[1747.1139],13))
		ActionOverride(Player5,LeaveAreaLUA("BG4800","",[1747.1139],13))
		ActionOverride(Player6,LeaveAreaLUA("BG4800","",[1747.1139],13))
		FadeFromColor([30.0],0)
                EndCutSceneMode()~
EXIT




