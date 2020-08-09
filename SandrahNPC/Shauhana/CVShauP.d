BEGIN CVShauP

IF ~Global("ShauhanaJoined","GLOBAL",1)
GlobalLT("ShauOrcWar","GLOBAL",7)
OR(11)
AreaCheck("CVSHA1")
AreaCheck("CVSHA2")
AreaCheck("CVSHA3")
AreaCheck("CVSHA4")
AreaCheck("CVSHA5")
AreaCheck("CVSHA6")
AreaCheck("CVSHA7")
AreaCheck("CVSHA8")
AreaCheck("CVSHA9")
AreaCheck("CVSH10")
AreaCheck("ar3520")
~THEN BEGIN KickSPTNoPos
SAY @0
IF ~~THEN REPLY  @1DO ~JoinParty()~EXIT
END

IF ~Global("ShauhanaJoined","GLOBAL",1) InParty("Minsc") GlobalGT("SanShauMinsc","GLOBAL",12)~THEN BEGIN KickShauMinsc
SAY @2
IF ~~THEN REPLY  @3DO ~JoinParty()~EXIT
IF ~~THEN REPLY  @4DO~
SetGlobal("ShauhanaJoined","GLOBAL",4)
ActionOverride("Minsc",LeaveParty())
ActionOverride("Minsc",SetDialog("MINSCP_"))
ActionOverride("Minsc",EscapeAreaMove("CVSHA8",578,721,13))
EscapeAreaMove("CVSHA8",478,748,13)~EXIT
END

IF ~Global("ShauhanaJoined","GLOBAL",1)~THEN BEGIN KickSPT1
SAY @5
IF ~~THEN REPLY @6GOTO PT11
IF ~~THEN REPLY  @7GOTO GoCopper
IF ~~THEN REPLY  @3DO ~JoinParty()~EXIT
END

IF ~~THEN BEGIN PT11
SAY @8
IF ~~THEN DO ~SetGlobal("ShauhanaJoined","GLOBAL",3)~
EXIT
END

IF ~Global("ShauMeetAmn","GLOBAL",1) ~THEN BEGIN Amn1
SAY @9
IF~~THEN REPLY @10
DO ~SetGlobal("ShauhanaJoined","GLOBAL",1) JoinParty()~EXIT
END

IF ~Global("ShauMeetAmn","GLOBAL",2) ~THEN BEGIN Amn2
SAY @11
IF~~THEN REPLY @12DO ~SetGlobal("ShauhanaJoined","GLOBAL",1) JoinParty()~EXIT
IF~~THEN REPLY @13EXIT
END

IF WEIGHT #-1 ~Global("ShauhanaJoined","GLOBAL",4) ~THEN BEGIN RetClanLand
SAY @14
IF~~THEN REPLY @15DO ~SetGlobal("ShauhanaJoined","GLOBAL",1) ActionOverride("Minsc",JoinParty()) ActionOverride("CVShau",JoinParty())~EXIT
IF~~THEN REPLY @16EXIT
END

IF ~Global("ShauhanaJoined","GLOBAL",2) Global("SanShauOrcStaff","GLOBAL",11) ~THEN BEGIN Shauresc1
SAY@17
IF ~~THEN REPLY @18GOTO PT21
END

IF~~THEN BEGIN PT21
SAY @19
= @20
IF ~~THEN REPLY @21DO ~SetGlobal("ShauhanaJoined","GLOBAL",1) JoinParty()~EXIT
END

IF ~Global("ShauhanaJoined","GLOBAL",3) ~THEN BEGIN return1
SAY @11
IF~~THEN REPLY @12DO ~SetGlobal("ShauhanaJoined","GLOBAL",1) JoinParty()~EXIT
IF~~THEN REPLY @13EXIT
END

IF ~~THEN BEGIN GoCopper
SAY @22
IF ~~THEN DO ~SetGlobal("ShauhanaJoined","GLOBAL",0) SetGlobal("ShauMeetAmn","GLOBAL",1) EscapeAreaMove("AR0406",1215,1459,11)~EXIT
END

APPEND MINSCP_
IF WEIGHT #-9  ~Global("ShauhanaJoined","GLOBAL",1) InParty("CVShau") GlobalGT("SanShauMinsc","GLOBAL",12)~THEN BEGIN KickShauMinsc
SAY @23
IF ~~THEN REPLY  @3DO ~JoinParty()~EXIT
IF ~~THEN REPLY  @4DO~
SetGlobal("ShauhanaJoined","GLOBAL",4)
ActionOverride("CVShau",LeaveParty())
ActionOverride("CVShau",SetDialog("CVShauP"))
ActionOverride("CVShau",EscapeAreaMove("CVSHA8",578,721,13))
EscapeAreaMove("CVSHA8",478,748,13)~EXIT
END

IF WEIGHT #-11 ~Global("ShauhanaJoined","GLOBAL",4) ~THEN BEGIN RetClanLandM
SAY @14
IF~~THEN REPLY @15DO ~SetGlobal("ShauhanaJoined","GLOBAL",1) ActionOverride("Minsc",JoinParty()) ActionOverride("CVShau",JoinParty())~EXIT
IF~~THEN REPLY @16EXIT
END
END

