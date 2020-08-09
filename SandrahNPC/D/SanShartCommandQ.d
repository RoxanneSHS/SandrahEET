BEGIN CVShacom
BEGIN CVWDBoss

IF~AreaCheck("CVRoa1")~THEN BEGIN Hello1
SAY@0
IF~~THEN REPLY@1EXIT
IF~~THEN REPLY@2EXIT
END

CHAIN
IF~Global("SanSharCom","GLOBAL",2) AreaCheck("CVElm5") ~THEN CVShacom WestGate1
@3
DO~SetGlobal("SanSharCom","GLOBAL",3)~
==WDWatch@4
==WDWatch@5
==CVShacom@6
=@7
==CVSandrJ@8
==CVShacom@9
==CVSandrJ@10
==CVShacom@11
==CVSandrJ@12
==CVShacom@13
END
++@14+ WestGate2
++@15+ WestGate2

CHAIN
IF ~~THEN CVShacom WestGate2
@16
==CVSandrJ@17
==CVShacom@18
==CVSandrJ@19
==CVShacom@20
=@21DO~EscapeArea()~
END
++@22EXIT
++@23EXIT

CHAIN
IF~Global("SanSharCom","GLOBAL",3) AreaCheck("CVRoa1") ~THEN CVShacom Hut1
@24
DO~SetGlobal("SanSharCom","GLOBAL",4)SetGlobal("ShaFollow","CVRoa1",1) RealSetGlobalTimer("Wave","CVRoa1",50)~
==CVSandrJ@25
==CVShacom@26EXIT

CHAIN
IF~Global("SanSharCom","GLOBAL",7) AreaCheck("CVRoa1") ~THEN CVShacom Hut2
@27
DO~SetGlobal("SanSharCom","GLOBAL",8) SetGlobal("ShaFollow","CVRoa1",2)~
==CVSandrJ@28
==CVShacom@29
END
++@30EXIT
++@31EXIT
++@32+ Hut3

CHAIN
IF~~THEN CVShacom Hut3
@33
==CVSandrJ@34
==CVShacom@35EXIT

CHAIN
IF WEIGHT #-2~Global("SanSharCom","GLOBAL",1)~THEN WATCH SharQStart1
@36
DO~SetGlobal("SanSharCom","GLOBAL",2)~
==CVSANDRJ@37
==WATCH@38
END
++@39+ SharQStart2
++@40+ SharQStart2
++@41+ SharQStart2

CHAIN
IF~~THEN WATCH SharQStart2
@42
==CVSANDRJ@43
=@44
==WATCH@45EXIT