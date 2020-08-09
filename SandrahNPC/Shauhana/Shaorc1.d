BEGIN Shaorc1

IF~RandomNum(4,1) AreaCheck("CVSH14")~THEN BEGIN Ruins1
SAY@0
IF~~THEN EXIT
END

IF~RandomNum(4,2) AreaCheck("CVSH14")~THEN BEGIN Ruins2
SAY@1
IF~~THEN EXIT
END

IF~RandomNum(4,3) AreaCheck("CVSH14")~THEN BEGIN Ruins3
SAY@2
IF~~THEN EXIT
END

IF~RandomNum(4,4) AreaCheck("CVSH14")~THEN BEGIN Ruins4
SAY@3
IF~~THEN EXIT
END

CHAIN
IF~Global("ShauUnd","CVSh11",1)~THEN Shaorc1 Hint1
@4
DO~SetGlobal("ShauUnd","CVSh11",2)~
==CVSandrJ@5
==Shaorc1@6
==CVSandrJ@7
==Shaorc1@8
==CVSandrJ@9
==Shaorc1@10
==CVSandrJ@11
==Shaorc1@12
==CVSandrJ@13
==Shaorc2@14
==CVSandrJ@15
==Shaorc2@16
==CVSandrJ@17
END
++@18+ Hint2

CHAIN
IF~~THEN Shaorc1 Hint2
@19
==CVSandrJ@20
==Shaorc1@21DO~AddexperienceParty(500) EscapeArea()~
==Shaorc2@22DO~AddexperienceParty(500) EscapeArea()~EXIT

CHAIN
IF~Global("Entered","CVSH15",2)~THEN Shaorc1 Villagenetry
@23
DO~SetGlobal("Entered","CVSH15",3)~
==CVSandrJ@24
==Shaorc1@25
==CVSandrJ@26
END
++@27+ village1
++@28+ village2

CHAIN 
IF~~THEN Shaorc1 village1
@29EXIT


CHAIN
IF~~THEN Shaorc1 village2
@30EXIT

BEGIN Shaorc2

IF~RandomNum(4,1) GlobalGT("ShauUnd","CVSh11",1) See([PC]) AreaCheck("CVSh11")~THEN BEGIN leave1
SAY@31
IF~~THEN DO~AddexperienceParty(500) EscapeArea()~EXIT
END

IF~RandomNum(4,2) GlobalGT("ShauUnd","CVSh11",1) See([PC]) AreaCheck("CVSh11")~THEN BEGIN leave2
SAY@32
IF~~THEN DO~AddexperienceParty(500) EscapeArea()~EXIT
END

IF~RandomNum(4,3) GlobalGT("ShauUnd","CVSh11",1) See([PC]) AreaCheck("CVSh11")~THEN BEGIN leave3
SAY@33
IF~~THEN DO~AddexperienceParty(500) EscapeArea()~EXIT
END

IF~RandomNum(4,4) GlobalGT("ShauUnd","CVSh11",1) See([PC]) AreaCheck("CVSh11")~THEN BEGIN leave3
SAY@34
IF~~THEN DO~AddexperienceParty(500) EscapeArea()~EXIT
END

IF~RandomNum(4,1) AreaCheck("CVSH14")~THEN BEGIN Ruins1
SAY@0
IF~~THEN EXIT
END

IF~RandomNum(4,2) AreaCheck("CVSH14")~THEN BEGIN Ruins2
SAY@1
IF~~THEN EXIT
END

IF~RandomNum(4,3) AreaCheck("CVSH14")~THEN BEGIN Ruins3
SAY@2
IF~~THEN EXIT
END

IF~RandomNum(4,4) AreaCheck("CVSH14")~THEN BEGIN Ruins4
SAY@35
IF~~THEN EXIT
END

BEGIN Shaorc3

IF~RandomNum(2,1) AreaCheck("CVSH14")~THEN BEGIN Ruins5
SAY@36
IF~~THEN EXIT
END

IF~RandomNum(2,2) AreaCheck("CVSH14")~THEN BEGIN Ruins6
SAY@37
IF~~THEN EXIT
END

CHAIN
IF~Global("HinteE","CVSh11",2)~THEN Shaorc3 HintE
@38
DO~SetGlobal("HinteE","CVSh11",3)~
==CVSandrJ@39
==Shaorc3@40
==CVSandrJ@41
==Shaorc3@42
==CVSandrJ@43DO~
ReallyForceSpell("Shaorc3",CLERIC_HEAL)~EXIT


BEGIN CVSHLICH
IF~NumTimesTalkedTo(0)~THEN BEGIN lichThr
SAY@44
=@45
IF~~THEN DO ~SetGlobal("SanHintFactory","GLOBAL",1) Enemy()~EXIT
END

BEGIN Shaorc4
IF~RandomNum(4,1) AreaCheck("CVSH14")~THEN BEGIN Ruins1
SAY@36
IF~~THEN EXIT
END

IF~RandomNum(4,2) AreaCheck("CVSH14")~THEN BEGIN Ruins2
SAY@37
IF~~THEN EXIT
END

IF~RandomNum(4,3) AreaCheck("CVSH14")~THEN BEGIN Ruins3
SAY@46
IF~~THEN EXIT
END

IF~RandomNum(4,4) AreaCheck("CVSH14")~THEN BEGIN Ruins4
SAY@47
IF~~THEN EXIT
END

BEGIN Shaorc5
IF~RandomNum(4,1) AreaCheck("CVSH14")~THEN BEGIN Ruins1
SAY@0
IF~~THEN EXIT
END

IF~RandomNum(4,2) AreaCheck("CVSH14")~THEN BEGIN Ruins2
SAY@1
IF~~THEN EXIT
END

IF~RandomNum(4,3) AreaCheck("CVSH14")~THEN BEGIN Ruins3
SAY@2
IF~~THEN EXIT
END

IF~RandomNum(4,4) AreaCheck("CVSH14")~THEN BEGIN Ruins4
SAY@48
IF~~THEN EXIT
END


BEGIN Shaorc6
IF~Global("MooseLoose","CVSH14",1)~THEN BEGIN MooseSt
SAY@49
=@50
IF~~THEN REPLY@51DO~SetGlobal("MooseLoose","CVSH14",2)~EXIT
END

IF~Global("SanHintFactory","GLOBAL",7)~THEN BEGIN Openway
SAY@52
IF~~THEN REPLY@53
GOTO Open2
END

IF~~THEN BEGIN Open2
SAY@54
=@55
IF~~THEN REPLY@56DO~SetGlobal("SanHintFactory","GLOBAL",8)~EXIT
END

BEGIN Shaorc7
IF~RandomNum(2,1)~THEN BEGIN bers1
SAY@57
IF~~THEN EXIT
END

IF~RandomNum(2,2) ~THEN BEGIN bers2
SAY@58
IF~~THEN EXIT
END

BEGIN Shaorc8
IF~RandomNum(2,1)~THEN BEGIN bers1
SAY@57
IF~~THEN EXIT
END

IF~RandomNum(2,2) ~THEN BEGIN bers2
SAY@58
IF~~THEN EXIT
END

BEGIN Shaorc9
IF~RandomNum(2,1)~THEN BEGIN bers1
SAY@57
IF~~THEN EXIT
END

IF~RandomNum(2,2) ~THEN BEGIN bers2
SAY@58
IF~~THEN EXIT
END

BEGIN Shaorc10
IF~RandomNum(2,1)~THEN BEGIN bers1
SAY@57
IF~~THEN EXIT
END

IF~RandomNum(2,2) ~THEN BEGIN bers2
SAY@58
IF~~THEN EXIT
END

BEGIN Shaorc11
IF~RandomNum(2,1)~THEN BEGIN bers1
SAY@57
IF~~THEN EXIT
END

IF~RandomNum(2,2) ~THEN BEGIN bers2
SAY@58
IF~~THEN EXIT
END

