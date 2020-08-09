BEGIN Elm25san

CHAIN
IF~Global("San25ChiQuest","GLOBAL",7)~THEN Elm25san SanSist1
@0
DO~SetGlobal("San25ChiQuest","GLOBAL",8)~
==BSandr25@1
==Elm25san@2
==BSandr25@3
==Elm25san@4
==BSandr25@5
==Elm25san@6
=@7
=@8
==BSandr25@9
==Elm25san@10
=@11
END
++@12+SanSist2
++@13+SanSist2

CHAIN
IF~~THEN Elm25san SanSist2
@14
==IF_FILE_EXISTS BSAREV25 IF~InParty("Sarevok")~THEN@15
==Elm25san IF~InParty("Sarevok")~THEN@16
==BSandr25 IF~!InParty("Sarevok")~THEN@17
==BIMOEN25 IF~InParty("Imoen2")~THEN@18
==Elm25san IF~InParty("Imoen2")~THEN@19
==Elm25san@20
==BSandr25@21
==Elm25san@22
END
++@23+ SanSist3

CHAIN
IF~~THEN Elm25san SanSist3
@24
==BSandr25@25
==Elm25san@26
=@27
=@28
END
++@29+ SanSist4
++@30+ SanSist4

CHAIN
IF~~THEN Elm25san SanSist4
@31
==BSandr25@32
==Elm25san@33
==BSandr25@34
==Elm25san@35
==BSandr25@36
==Elm25san@37
END
++@38+ SanSist5

CHAIN
IF~~THEN Elm25san SanSist5
@39
==BSandr25@40
==Elm25san@41
==BSandr25@42
==Elm25san@43DO~EscapeAreaMove("CVStud",359,237,6)~EXIT

CHAIN
IF~Global("San25ChiQuest","GLOBAL",10)~THEN Elm25san SanSist6
@44
DO~SetGlobal("San25ChiQuest","GLOBAL",11)~
==BSandr25@45
==Elm25san@46
==BSandr25@47
==Elm25san@48
==BSandr25@49
==Elm25san@50
==BSandr25@51
==Elm25san@52
==BSandr25@53
==Elm25san@54
==BSandr25@55
==Elm25san@56
==BSandr25@57
==Elm25san@58DO ~GiveItemCreate("CVUmoK","CVSandr",0,0,0) EscapeArea()~EXIT









