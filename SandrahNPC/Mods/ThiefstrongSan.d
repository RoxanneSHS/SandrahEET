//Thief Stronghold Mod

ADD_STATE_TRIGGER TS5Bad 0
~!InParty("CVSandr")~

ADD_STATE_TRIGGER TS5Bad 1
~GlobalLT("TSPlot","GLOBAL",7)~

APPEND TS5Bad
IF WEIGHT #-2~InParty("CVSandr") NumTimesTalkedTo(0) Name("TS5Door",Myself)~THEN BEGIN
SanAltern1
SAY@0
IF~~THEN REPLY@1DO~SetGlobal("TS5Hostile","GLOBAL",1) ActionOverride("TS5Grd1",Enemy()) ActionOverride("TS5Grd2",Enemy()) Enemy()~EXIT
IF~~THEN REPLY@2GOTO SanAltern2
END
END

APPEND TSLATH01
IF WEIGHT #-2~Global("TSPlot","GLOBAL",9) ~THEN BEGIN Othersolv1
SAY@3
IF~~THEN DO~SetGlobal("TSPlot","GLOBAL",7) SetGlobalTimer("TSPlotTimer","GLOBAL",TWO_DAYS)
AddXPObject(Player1,25000) AddXPObject(Player2,25000) AddXPObject(Player3,25000) AddXPObject(Player4,25000) AddXPObject(Player5,25000) AddXPObject(Player6,25000)~GOTO Othersolv2
END

IF~~THEN BEGIN Othersolv2
SAY@4
IF~~THEN DO~SetDialog("TSGLT2")~EXIT
END
END

CHAIN
IF~~THEN TS5Bad SanAltern2
@5
DO~SetGlobal("TSPlot","GLOBAL",8)~
==CVSandrJ@6
==TS5Bad@7
=@8
==CVSandrJ@9
==TS5Bad@10
=@11DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) CreateCreature("TS5Bad",[3463.1145],3) ChangeEnemyAlly("TS5Bad",NEUTRAL) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~EXIT

CHAIN
IF WEIGHT #-2~Global("TSPlot","GLOBAL",8)~THEN TS5Bad SanAltern3
@12
==CVSandrJ@13
==TS5Bad@14
==CVSandrJ@15
==TS5Bad@16
==CVSandrJ@17
END
++@18+ SanAltern4
++@19+ SanAltern5

CHAIN
IF~~THEN TS5Bad SanAltern4
@20
==CVSandrJ@21
==TS5Bad@22DO~SetGlobal("TSPlot","GLOBAL",9) ActionOverride("TS5Bad",EscapeArea()) ActionOverride("TS5Door",EscapeArea() ActionOverride("TS5Grd1",EscapeArea()) ActionOverride("TS5Grd2",EscapeArea())~EXIT

CHAIN
IF~~THEN TS5Bad SanAltern5
@23
DO~SetGlobal("TSPlot","GLOBAL",6) ActionOverride("TS5Bad",EscapeArea())SetGlobal("TS5Hostile","GLOBAL",1) ActionOverride("TS5Door",Enemy()) ActionOverride("TS5Grd1",Enemy()) ActionOverride("TS5Grd2",Enemy())~EXIT

ADD_STATE_TRIGGER TSGT05 19
~!InParty("CVSandr")~

EXTEND_TOP TSGT05 0 #1
IF~Global("PlayerThiefGuild","GLOBAL",1)
InParty("CVSandr")
GlobalGT("aranjob","GLOBAL",1)~THEN REPLY@24GOTO 300
IF~Global("PlayerThiefGuild","GLOBAL",1)
InParty("CVSandr")
GlobalGT("b!alternatives","GLOBAL",4)~THEN REPLY@25GOTO 300
END

APPEND TSGT05 
IF~InParty("CVSandr")~THEN BEGIN 299
SAY@26
IF~GlobalLT("aranjob","GLOBAL",2) GlobalLT("b!alternatives","GLOBAL",5)~GOTO 3
IF~Global("PlayerThiefGuild","GLOBAL",1)
GlobalGT("aranjob","GLOBAL",1)~THEN REPLY@24GOTO 300
IF~Global("PlayerThiefGuild","GLOBAL",1)
GlobalGT("b!alternatives","GLOBAL",4)~THEN REPLY@25GOTO 300
END

IF~~THEN BEGIN 300
SAY@27
IF~~THEN REPLY@28GOTO 301
END

IF~~THEN BEGIN 301
SAY@29
IF~~THEN DO~SetGlobal("JosterSilence","GLOBAL",1) SetGlobal("JosterLeave","GLOBAL",1) SetGlobalTimer("JosterReturn","GLOBAL",900000) SetGlobalTimer("JosterPaid","GLOBAL",900000) EscapeArea()~EXIT
END
END



