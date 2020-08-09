CHAIN
IF WEIGHT #-4 ~Global("SanHealXul","GLOBAL",1)~THEN BLK#XUL XulSandra1
 @0
 DO ~SetGlobal("SanHealXul","GLOBAL",2)~
== BSandr @1
== BLK#XUL @2
== BSandr @3
== BLK#XUL @4
== BSandr @5
== BLK#XUL IF~Global("LK#XulayeKnows","GLOBAL",0)~THEN@6
== BLK#XUL IF~!Global("LK#XulayeKnows","GLOBAL",0)~THEN@7
EXIT

CHAIN
IF WEIGHT #-5 ~Global("LK#XulSandrah","LOCALS",1)~THEN BLK#XUL XulSandra2
 @8
 DO ~SetGlobal("LK#XulSandrah","LOCALS",2)~
== BSandr @9
== BLK#XUL @10
== BSandr @11
== BLK#XUL @12
== BSandr @13
== BLK#XUL @14
== IF_FILE_EXISTS BYASRAEN IF~InParty("Yasraena")~THEN@15
== BSandr IF~InParty("Yasraena")~THEN@16      
==IF_FILE_EXISTS BYASRAEN IF~InParty("Yasraena")~THEN@17
== BViconi IF~!InParty("Yasraena") InParty("Viconia")~THEN@15
== BSandr IF~!InParty("Yasraena")InParty("Viconia")~THEN@16      
==BViconi IF~!InParty("Yasraena")InParty("Viconia")~THEN@17
END
IF~!InParty("Yasraena")!InParty("Viconia")~THEN REPLY@18EXTERN BSandr NoXulJa
IF~OR(2)InParty("Yasraena")InParty("Viconia")~THEN REPLY@19EXIT

CHAIN
IF~~THEN  BSandr NoXulJa
@20
END
++@21EXIT

CHAIN
IF WEIGHT #-5 ~Global("LK#XulSandrah","LOCALS",4)~THEN BLK#XUL XulSandra3
 @22
 =@23
 DO ~SetGlobal("LK#XulSandrah","LOCALS",5)RealSetGlobalTimer("SanDelayt","LOCALS",800)~
== BSandr@24
==BLK#XUL@25
== BSandr@26
==BLK#XUL@27
== BSandr@28
==BLK#XUL@29
== BSandr@30
==BLK#XUL@31EXIT

CHAIN
IF WEIGHT #-10 ~NumTimesTalkedTo(0) OR(2)Dead("Solaufein")Global("SolaufeinJob","GLOBAL",7) InParty("Xulaye") !StateCheck("Xulaye",CD_STATE_NOTVALID) InParty("CVSandr")~THEN UDSvir08 SanOveruleXul
@32
==LK#Xulj@33
==UDSvir08@34
==CVSandrJ@35
==LK#Xulj@36
==CVSandrJ@37
==LK#Xulj@38
END
++@39EXTERN UDSvir08 3

CHAIN
IF WEIGHT #-6~Global("LK#XulayeWins","GLOBAL",4) InParty("CVSandr") PartyHasItem("Misc9t")~THEN LK#XULX SanWinsToo
@40
==CVSandrJ @41
== LK#XULX @42
==CVSandrJ @43
== LK#XULX @44
END
++@45+2
