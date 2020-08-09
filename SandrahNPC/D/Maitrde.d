BEGIN maitrde

IF~GlobalGT("Katcut","GLOBAL",7)~THEN BEGIN Closed
SAY@0
IF~~THEN EXIT
END

CHAIN
IF~NumTimesTalkedTo(0) Global("Katcut","GLOBAL",5) ~THEN maitrde WDresto1
@1
END
++ @2+  WDresto2
++ @3+  WDresto2

CHAIN
IF ~~THEN  maitrde WDresto2
@4
== IF_FILE_EXISTS ACBreB IF~InParty("ACBre") ~THEN  @5
== BIMOEN IF~InParty("Imoen2") ~THEN @6
== BSHART IF~InParty("Sharteel") ~THEN @7
== BVICON IF~InParty("Viconia") ~THEN @8
== BKIVAN IF~InParty("Kivan") ~THEN @9
==IF_FILE_EXISTS BSUFINCH  IF ~InParty("Sufinch") ~THEN @10
== MAITRDE IF ~InParty("Sufinch") ~THEN @11
== BAJANT IF~InParty("Ajantis") ~THEN @12
== BJenli IF~InParty("CVJenlig") ~THEN @13
== MAITRDE IF~InParty("CVJenlig") ~THEN @14
==IF_FILE_EXISTS k-roseB  IF ~InParty("k-rose") ~THEN @15
== MAITRDE  IF~InParty("k-rose") ~THEN@16
== IF_FILE_EXISTS BRH#ISRA  IF~InParty("RH#ISRA") ~THEN @17
== BBRANW  IF~InParty("Branwen") ~THEN @18
== BEDWIN_ IF~InParty("Edwin") ~THEN @19
== BXANNN  IF~InParty("Xan") ~THEN @20
==BDorn_ IF~InParty("Dorn") ~THEN @21
==BNeera_ IF~InParty("Neera")~THEN @22
== BCORAN  IF~InParty("Coran") ~THEN  @23
== BDYNAH  IF~InParty("Dynaheir") ~THEN @24
== BJAHEI  IF~InParty("Jaheira") ~THEN @25
== BSANDR @26
END
++ @27+ WDresto3
++ @28+  WDresto3
++ @29+ WDresto3

CHAIN
IF ~~THEN  maitrde WDresto3
@30
END
++ @31+ WDresto4

CHAIN
IF ~~THEN  maitrde WDresto4
@32
== HILATH  IF ~GlobalLT("Katcut","GLOBAL",10)~THEN @33
== MAITRDE IF ~GlobalLT("Katcut","GLOBAL",10)~THEN @34
== HILATH IF ~GlobalLT("Katcut","GLOBAL",10)~THEN @35
== MAITRDE @36
== HILATH IF ~GlobalLT("Katcut","GLOBAL",10)~THEN @37DO~MoveBetweenAreas("CVElm1",[1246.650],4)~
== CORANJ IF ~GlobalLT("Katcut","GLOBAL",10) InParty("Coran") ~THEN  @38
== HILATH IF ~GlobalLT("Katcut","GLOBAL",10) InParty("Coran") ~THEN  @39DO~MoveBetweenAreas("CVElm1",[1246.650],4)~
== MAITRDE IF ~Global("Katcut","GLOBAL",10) ~THEN @40
END
++ @41DO ~ClearAllActions()
SmallWait(2) 
StartCutSceneMode()
StartCutScene("CVWDRes1")~EXIT

CHAIN
IF ~Global("Maitre1","GLOBAL",2)~THEN  maitrde WDresto5
@42
= @43
== BDYNAH  IF~InParty("Dynaheir") ~THEN @44
== BIMOEN IF~InParty("Imoen2") ~THEN @45
==IF_FILE_EXISTS ACBreB IF~InParty("ACBre") ~THEN  @46
== MAITRDE IF~InParty("ACBre") ~THEN  @47
==BDorn_ IF~InParty("Dorn") ~THEN @21
== MAITRDE IF~InParty("Dorn") ~THEN @48
== BVICON  IF~InParty("Viconia") ~THEN @49
== MAITRDE IF~InParty("Viconia") ~THEN @50
== BVICON  IF~InParty("Viconia") ~THEN @51
== MAITRDE IF~InParty("Viconia") ~THEN @52
== BJenli IF~InParty("CVJenlig") ~THEN @53
== BXANNN  IF~InParty("Xan") ~THEN @54
==BNeera_ IF~InParty("Neera")~THEN @55
== BSandr @56
END
++ @57DO ~SetGlobal("Katcut","GLOBAL",6) SetGlobal("Maitre1","GLOBAL",3) StartMovie("DAYNITE")~
EXIT

CHAIN
IF~NumTimesTalkedToGT(0)Global("Katcut","GLOBAL",6) ~THEN maitrde WDresto6
@58
== BSandr @59
== MAITRDE @60
== BSandr @61
== MAITRDE @62
== BSandr @63
== MAITRDE @64
== MAITRDE IF ~InParty("ACBre") ~THEN  @65
== MAITRDE IF ~InParty("Viconia") ~THEN @66
== MAITRDE IF~InParty("Coran") ~THEN @67
== MAITRDE IF~InParty("Imoen2") ~THEN @68
== MAITRDE IF ~InParty("Minsc") ~THEN @69
== MAITRDE @70
== MAITRDE IF~OR(2)InParty("Sharteel") InParty("Branwen")~THEN @71
== MAITRDE @72
END
++ @73+  WDresto7

CHAIN
IF ~~THEN  maitrde WDresto7
@74
END
++ @75DO ~SetGlobal("Katcut","GLOBAL",7) TakePartyGold(670)~
EXIT
