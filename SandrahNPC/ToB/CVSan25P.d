BEGIN CVSan25P

IF ~Global("SandrahJoined","GLOBAL",1)GlobalGT("Chapter","Global",19)~THEN BEGIN KickSPT251
SAY @0
IF ~~THEN REPLY @1GOTO PT2513
IF~~THEN REPLY  @2GOTO PT2513
IF ~~THEN REPLY  @3DO ~JoinParty()ReallyForceSpellRES("CVSanam",Myself)~
EXIT
END

IF~Global("SandrahJoined","GLOBAL",25)AreaCheck("CVUMO5")~THEN BEGIN MeetUM1
SAY@4
IF~~THEN REPLY @5DO~AddexperienceParty(18000) AddXPObject("CVSandr",22000)~GOTO MeetUM2
IF~~THEN REPLY @6DO~AddexperienceParty(18000) AddXPObject("CVSandr",22000)~GOTO MeetUM2
IF~~THEN REPLY @7DO~AddexperienceParty(4000) AddXPObject("CVSandr",22000)~GOTO MeetUM2

END

IF~~THEN BEGIN MeetUM2
SAY@8
IF~~THEN DO~SetGlobal("SandrahJoined","GLOBAL",1) JoinParty() ReallyForceSpellRES("CVSanam",Myself)~EXIT
END

IF~~THEN BEGIN PT2513
SAY@9
IF~~THEN REPLY@10DO ~SetGlobal("SandrahJoined","GLOBAL",0) ActionOverride("CVSandr",MoveBetweenAreas("CVRtf1",[803.624],2)) SetGlobal("SandrahSummoned","GLOBAL",2)~EXIT
END

IF~Global("SandrahJoined","GLOBAL",26)~THEN BEGIN MeetUM3
SAY@11
IF~~THEN DO~ChangeAIScript("CVSanUM",OVERRIDE) Enemy()~EXIT
END


