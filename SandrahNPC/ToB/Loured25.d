BEGIN Loured25

IF~Global("Loureedjoined","GLOBAL",2) AreaCheck("CVUmo5") GlobalGT("SanBeginRTF","GLOBAL",1)~THEN BEGIN JoinRTF1
SAY@0
IF~~THEN REPLY@1GOTO JoinRTF2
IF~~THEN REPLY@2GOTO JoinRTF2
IF~~THEN REPLY@3EXIT
END

IF~~THEN BEGIN JoinRTF2
SAY@4
IF~~THEN REPLY@5DO~SetGlobal("Loureedjoined","GLOBAL",1) JoinParty()~EXIT
IF~~THEN REPLY@6DO~SetGlobal("Loureedjoined","GLOBAL",3) EscapeArea()~EXIT
IF~~THEN REPLY@7EXIT
END

CHAIN
IF WEIGHT #-3~AreaCheck("Ar6100") Global("LouaftSend","ar6100",1) ~THEN Loured25 Advance1
@8
END
++@9+ Advance2
++@10+ Advance2

CHAIN
IF~~THEN Loured25 Advance2
@11
DO~SetGlobal("LouaftSend","ar6100",2) SetGlobal("Loureedjoined","GLOBAL",2)~
==CVSan25J@12
==Loured25@13
==CVSan25J@14
==Loured25@15
==CVSan25J@16
==Loured25@17
==CVSan25J@18
==Loured25@19
END
++@20+ Advance3
++@21+ Advance4

CHAIN
IF~~THEN Loured25 Advance3
@22
END
++@23+ Advance4

CHAIN
IF~~THEN Loured25 Advance4
@24
DO~ReallyForceSpell(Myself,DRYAD_TELEPORT)~
END
++@25EXIT

