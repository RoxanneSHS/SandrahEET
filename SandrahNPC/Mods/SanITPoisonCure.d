EXTEND_TOP Lothan 1 #1
IF~Global("CVLotPlot","GLOBAL",0)InParty("CVSandr")~THEN REPLY @0GOTO 3
END

CHAIN
IF WEIGHT #-7~Global("CVLotPlot","GLOBAL",1)~THEN BSandr CVLotwy1
@1
=@2
DO~SetGlobal("CVLotPlot","GLOBAL",2)~
END
++@3DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~+ CVLotwy2
++@4DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~+ CVLotwy2
++@5DO~IncrementGlobal("Sanpoints","GLOBAL",1)~+ CVLotwy2

CHAIN
IF~~THEN BSandr CVLotwy2
@6
=@7
END
++@8+ CVLotwy3
++@9+ CVLotwy3

CHAIN
IF~~THEN BSandr CVLotwy3
@10
END
++@11+ CVLotwy4
++@12+ CVLotwy4

CHAIN
IF~~THEN BSandr CVLotwy4
@13
=@14
END
++@15DO~SetGlobal("CVLotPlot","GLOBAL",3)~ EXIT
++@16EXIT
++@17DO~SetGlobal("CVLotPlot","GLOBAL",3)~ EXIT

EXTEND_TOP Thalan 35 #3
IF~Global("CVLotPlot","GLOBAL",3)InParty("CVSandr") !Global("PartyCured","GLOBAL",1)~THEN REPLY @18GOTO CVLotwy5
END

EXTEND_TOP Thalan 1 #3
IF~Global("CVLotPlot","GLOBAL",3)InParty("CVSandr") !Global("PartyCured","GLOBAL",1)~THEN REPLY @18GOTO CVLotwy5
END

CHAIN
IF~~THEN Thalan CVLotwy5
@19
DO~SetGlobal("CVLotPlot","GLOBAL",4)~
==CVSandrJ@20
==Thalan@21
==CVSandrJ@22
==Thalan@23
=@24
=@25
==CVSandrJ@26
==Thalan@27
==CVSandrJ@28
==Thalan@29
END
++@29+ CVLotwy6

CHAIN
IF~~THEN Thalan CVLotwy6
@30
==CVSandrJ@31
==Thalan@32
==CVSandrJ@33
==Thalan@34
==CVSandrJ@35
==Thalan@36
==CVSandrJ@37
==Thalan@38
==CVSandrJ@39
END
++@40+ CVLotwy7

CHAIN
IF~~THEN Thalan CVLotwy7
@41
==CVSandrJ@42
==Thalan@43
==CVSandrJ@44
=@45
END
++@46DO~SetGlobal("CVLotPlot","GLOBAL",5)~EXIT
++@47DO~SetGlobal("CVLotPlot","GLOBAL",5)~EXIT
++@48EXIT

CHAIN
IF WEIGHT #-7~Global("CVLotPlot","GLOBAL",9)~THEN BSandr CVLotwy9
@49
=@50
DO~SetGlobal("CVLotPlot","GLOBAL",10) SetGlobal("PartyCured","GLOBAL",1)~
=@51
=@52
=@53
END
++@54EXIT
++@55+ CVLotwy10

CHAIN
IF ~~THEN BSandr CVLotwy10
@56
END
++@57EXIT


