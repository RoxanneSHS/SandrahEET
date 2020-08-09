BEGIN CVSandrP

IF ~Global("SandrahJoined","GLOBAL",1) GlobalLT("Chapter","Global",22)~ THEN BEGIN KickSPT1
SAY @0
IF ~~ THEN REPLY @1 GOTO PT11
IF ~!Global("ENDOFBG1","GLOBAL",2) GlobalLT("SanEndBG1Plot","GLOBAL",5)~ THEN REPLY  @2 GOTO PT12
IF ~Global("ENDOFBG1","GLOBAL",2) ~ THEN REPLY  @2 GOTO PT12
IF~!Global("ENDOFBG1","GLOBAL",2) GlobalGT("SanEndBG1Plot","GLOBAL",4)~ THEN REPLY  @2 GOTO PT13
IF ~~ THEN REPLY  @3 DO ~JoinParty()ReallyForceSpellRES("CVSanam",Myself)~
EXIT
END

IF~~THEN BEGIN PT13
SAY@4
IF~~THEN REPLY@5 DO ~SetGlobal("SandrahJoined","GLOBAL",52) ActionOverride("CVSandr",MoveBetweenAreas("AR0602",[3057.657],0))~ EXIT
END

IF ~~ THEN BEGIN PT11
SAY@4
IF~~THEN REPLY@5 DO~ SetGlobal("SandrahJoined","GLOBAL",2) EscapeAreaDestroy(90)~ EXIT
IF~~THEN REPLY@6 DO~ SetGlobal("SandrahJoined","GLOBAL",2) EscapeAreaDestroy(90)~ EXIT
END

IF ~~ THEN BEGIN PT12
SAY @7
IF ~!Global("ENDOFBG1","GLOBAL",2) GlobalLT("CHAPTER","GLOBAL",4)~ THEN DO ~SetGlobal("SandrahJoined","GLOBAL",2) EscapeAreaMove("BG3402",270,497,0)~ EXIT
IF ~ !Global("ENDOFBG1","GLOBAL",2) GlobalGT("CHAPTER","GLOBAL",3)~ THEN DO ~SetGlobal("SandrahJoined","GLOBAL",2) EscapeAreaMove("BG0705",794,489,0)~ EXIT
IF ~ Global("ENDOFBG1","GLOBAL",2) ~ THEN DO ~ SetGlobal("SandrahJoined","GLOBAL",7)EscapeAreaMove("AR0319",522,312,3)~ EXIT
END

IF ~Global("SandrahJoined","GLOBAL",2)~ THEN BEGIN KickSPT2
SAY @8
IF ~~ THEN REPLY  @9 DO ~SetGlobal("SandrahJoined","GLOBAL",1) JoinParty() ReallyForceSpellRES("CVSanam",Myself)~ EXIT
IF ~~ THEN REPLY  @10 DO ~SetGlobal("SandrahJoined","GLOBAL",1) JoinParty() ReallyForceSpellRES("CVSanam",Myself)~ EXIT
IF ~~ THEN REPLY @11 EXIT
END

IF ~Global("SandrahJoined","GLOBAL",3)~ THEN BEGIN KickSPT3
SAY @12
IF ~~ THEN REPLY  @13 GOTO Anew1
END

IF ~~ THEN BEGIN Anew1
SAY @14
IF ~~ THEN REPLY  @15 GOTO Anew2
END

IF ~~ THEN BEGIN Anew2
SAY @16
IF ~~ THEN REPLY  @17 GOTO Anew3
END

IF ~~ THEN BEGIN Anew3
SAY @18
IF ~~ THEN REPLY  @19GOTO OnlyCompanion
IF ~~ THEN REPLY  @20 GOTO PCAfraid
IF ~~ THEN REPLY  @21 DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO PCAfraid
IF ~~ THEN REPLY  @22 DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO OnlyCompanion
END

IF ~~ THEN BEGIN PCAfraid
SAY @23
IF ~~ THEN REPLY @24 DO~SetGlobal("SandrahJoined","GLOBAL",1) JoinParty()ReallyForceSpellRES("CVSanam",Myself)~ EXIT
IF ~~ THEN REPLY @25 DO~ SetGlobal("SandrahJoined","GLOBAL",1) JoinParty()ReallyForceSpellRES("CVSanam",Myself)~ EXIT
END

IF ~~ THEN BEGIN OnlyCompanion
SAY @26
IF ~~ THEN REPLY @27 DO~ SetGlobal("SandrahJoined","GLOBAL",1) JoinParty()~ EXIT
IF ~~ THEN REPLY @28 DO~ SetGlobal("SandrahJoined","GLOBAL",1) JoinParty()ReallyForceSpellRES("CVSanam",Myself)~ EXIT
END

IF ~Global("SandrahJoined","GLOBAL",4)~ THEN BEGIN KickSPT4
SAY @29
IF ~~ THEN REPLY @30DO~ IncrementGlobal("Sanpoints","GLOBAL",-3)~ EXIT
IF ~~ THEN REPLY @31 GOTO KickSPT40
END

IF ~~ THEN BEGIN KickSPT40
SAY @32
IF ~~ THEN REPLY @33 DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO KickSPT41
IF ~~ THEN REPLY @34DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~ GOTO KickSPT42
END

IF ~~ THEN BEGIN KickSPT41
SAY @35
IF ~~ THEN REPLY @36 DO ~ SetGlobal("SanPidPack","GLOBAL",8) SetGlobal("SanBranSearch","GLOBAL",6)SetGlobal("SandrahJoined","GLOBAL",1) JoinParty()ReallyForceSpellRES("CVSanam",Myself)~ EXIT
END

IF ~~ THEN BEGIN KickSPT42
SAY @37
= @38
IF ~~ THEN REPLY @39 GOTO KickSPT41
IF ~~ THEN REPLY @40 GOTO KickSPT41
END

IF ~Global("SandrahJoined","GLOBAL",44)!InParty("Dynaheir")~ THEN BEGIN KickSPT441
SAY @41
IF~~ THEN REPLY @42GOTO KickSPT443
IF~~ THEN REPLY @43 DO~ IncrementGlobal("Sanpoints","GLOBAL",-1)~GOTO KickSPT443
END

IF~~ THEN BEGIN KickSPT443
SAY @44
IF~PartyHasItem("Sanwi2")~ THEN REPLY @45 DO ~SetGlobal("SandrahJoined","GLOBAL",1) JoinParty()~ EXIT
IF~!PartyHasItem("Sanwi2")~ THEN DO ~SetGlobal("SandrahJoined","GLOBAL",1) JoinParty()ReallyForceSpellRES("CVSanam",Myself)~ EXIT
END


IF ~Global("SandrahJoined","GLOBAL",5)!InMyArea("Elminsa")~ THEN BEGIN KickSPT51
SAY @46
IF ~~ THEN REPLY @47 GOTO KickSPT52
END

IF ~~ THEN BEGIN  KickSPT52
SAY @48
= @49
IF ~~ THEN REPLY @50 GOTO KickSPT53
END

IF ~~ THEN BEGIN  KickSPT53
SAY @51
= @52
= @53
IF ~~ THEN REPLY @54GOTO KickSPT54
END

IF ~~ THEN BEGIN  KickSPT54
SAY @55
IF ~~ THEN REPLY @56GOTO KickSPT55
END

IF ~~ THEN BEGIN  KickSPT55
SAY @57
= @58
IF ~~ THEN REPLY @59GOTO KickSPT56
END

IF ~~ THEN BEGIN KickSPT56
SAY @60
IF~~ THEN REPLY @61 DO ~SetGlobal("SandrahJoined","GLOBAL",1) JoinParty()ReallyForceSpellRES("CVSanam",Myself)~ EXIT
END


IF ~Global("SandrahJoined","GLOBAL",5)InMyArea("Elminsa")Global("ElminGaveNarQ","GLOBAL",4)~ THEN BEGIN KickSPT32
SAY @62
IF ~~ THEN REPLY  @63 DO ~ SetGlobal("SandrahJoined","GLOBAL",1) JoinParty() ReallyForceSpellRES("CVSanam",Myself)~ EXTERN Elminsa GaveNarQ2
END

IF ~Global("SandrahJoined","GLOBAL",6)!Global("Sanrompa","Global",2)~ THEN BEGIN BG2Rejoin1l
SAY @64
=@65
= @66
IF~~THEN REPLY @67 DO ~ SetGlobal("SandrahJoined","GLOBAL",1) JoinParty() SetGlobal("San0602Reunite","LOCALS",1) RealSetGlobalTimer("San0602Int","LOCALS",EIGHT_MINUTES)~ GOTO BG2Rejoin2
END

IF ~Global("SandrahJoined","GLOBAL",6)Global("Sanrompa","Global",2)~ THEN BEGIN BG2Rejoin1
SAY @64
=@68
= @69
IF~~THEN REPLY @70 DO ~ SetGlobal("SandrahJoined","GLOBAL",1) JoinParty() SetGlobal("San0602Reunite","LOCALS",1) RealSetGlobalTimer("San0602Int","LOCALS",EIGHT_MINUTES)~ GOTO BG2Rejoin2
END

IF~~ THEN BEGIN BG2Rejoin2
SAY@71
IF~~THEN REPLY @72
GOTO BG2Rejoin3
END

IF~~THEN BEGIN BG2Rejoin3
SAY @73
IF~~THEN REPLY @74 GOTO BG2Rejoin4
IF~~THEN REPLY @75 GOTO BG2Rejoin4
END

IF~~THEN BEGIN BG2Rejoin4
SAY @76
IF~~ THEN REPLY @77 EXIT
END

IF ~ Global("SandrahJoined","GLOBAL",7) ~THEN BEGIN AmnReun
SAY @78
IF~~THEN REPLY @79 EXIT
IF~~THEN REPLY @80 DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO AnmOncM
IF~~THEN REPLY @81 DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO AnmOncM
END

IF~~THEN BEGIN AnmOncM
SAY @82
= @83
IF ~~ THEN DO ~ SetGlobal("SandrahJoined","GLOBAL",1) JoinParty()ReallyForceSpellRES("CVSanam",Myself)~ EXIT
END

IF ~ Global("SandrahJoined","GLOBAL",15) AreaCheck("BG1804") See(Player1) ~ THEN BEGIN ClckWMines
SAY@84
IF~~THEN REPLY@85 DO ~SetGlobal("SandrahJoined","GLOBAL",1) JoinParty()ReallyForceSpellRES("CVSanam",Myself)~ EXIT
END

IF ~Global("SandrahJoined","GLOBAL",44) InParty("Dynaheir")~ THEN BEGIN KickSPT442
SAY@86
IF~~THEN DO ~SetGlobal("SandrahJoined","GLOBAL",1) JoinParty()ReallyForceSpellRES("CVSanam",Myself)~EXIT
END

IF~ Global("SandrahJoined","GLOBAL",20) !Global("CbPartyIsInSoubarMilitia","GLOBAL",1) ~THEN BEGIN SanIsNoSoldR1
SAY@87
IF~~THEN DO~
SetGlobal("SanNoSold","LOCALS",0) SetGlobal("SandrahJoined","GLOBAL",1) JoinParty() ReallyForceSpellRES("CVSanam",Myself)~EXIT
END


IF~ Global("SandrahJoined","GLOBAL",20) Global("CbPartyIsInSoubarMilitia","GLOBAL",1) ~ THEN BEGIN SanIsNoSoldR2
SAY@88
IF~~ THEN REPLY @89 GOTO SanIsNoSoldR3
END

IF~~ THEN BEGIN SanIsNoSoldR3
SAY@90
IF~~ THEN REPLY @91
DO~
SetGlobal("SanNoSold","LOCALS",3) SetGlobal("SandrahJoined","GLOBAL",1) JoinParty() ReallyForceSpellRES("CVSanam",Myself)~EXIT
END

IF ~Global("SandrahJoined","GLOBAL",52)~ THEN BEGIN BG2Rejoin51
SAY @64
=@68
= @69
IF~~THEN REPLY @92 DO ~ SetGlobal("SandrahJoined","GLOBAL",1) JoinParty()ReallyForceSpellRES("CVSanam",Myself)~ GOTO BG2Rejoin52
END

IF~~ THEN BEGIN BG2Rejoin52
SAY@93
IF~~THEN REPLY @94 DO ~SetGlobal("SanSentBelt","GLOBAL",1)~
GOTO BG2Rejoin3
END

IF~Global("SandrahJoined","GLOBAL",16)~THEN BEGIN TalosRejun1
SAY@95
IF~~THEN REPLY@96DO ~ SetGlobal("SandrahJoined","GLOBAL",1) JoinParty()ReallyForceSpellRES("CVSanam",Myself)~ GOTO TalosRejun2
IF~~THEN REPLY@97DO ~ SetGlobal("SandrahJoined","GLOBAL",1) JoinParty()ReallyForceSpellRES("CVSanam",Myself)~ GOTO TalosRejun2
END

IF~~ THEN BEGIN TalosRejun2
SAY@98
=@99
IF~~THEN REPLY@100EXIT
END



