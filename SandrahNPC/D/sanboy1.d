BEGIN Sanboy1

CHAIN
IF ~NumTimesTalkedTO(0) ~THEN Sanboy1 messgiv
@0
== BSANDR @1
== Sanboy1 @2DO ~GiveItemCreate("Sanboy1","CVSandr",0,0,0) ~
== BSANDR @3
== Sanboy1 @4DO ~EscapeArea()~
== BSANDR @5DO ~TakePartyGold(5)~
EXIT

CHAIN
IF WEIGHT #-1~Global("SanXanA","GLOBAL",24)~THEN Sanboy1 xanmess
@6
DO~SetGlobal("SanXanA","GLOBAL",25)~
== BSANDR @7
== Sanboy1 @8
== BXANNN @9
== Sanboy1 @10
== BXANNN @11DO~TakePartyGold(15)~
== Sanboy1 @12
== BXANNN @13
== Sanboy1 @14DO~EscapeArea()~
== BXANNN @15
== BSANDR @16
== BXANNN @17
== BSANDR @18
== BXANNN @19DO~SetGlobal("IWasKickedOut","LOCALS",1) SetDialog("xanp") LeaveParty() EscapeAreaMove("BG0705",702,736,0)~
EXIT

CHAIN
IF WEIGHT #-2~AreaCheck("cvsh14")Global("Entered","CVSH14",1)~THEN Sanboy1 messshau
@20
DO~SetGlobal("Entered","CVSH14",2)~
== BSANDR @21
== Sanboy1 @22
== BSANDR @23
== Sanboy1 @24
== BSANDR @25
== Sanboy1 @26
== BSANDR @27
== Sanboy1 @28
== BSANDR @29
== Sanboy1 @30DO~EscapeAreaMove("cvsh15",1520,1771,7)~EXIT

