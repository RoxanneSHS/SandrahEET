BEGIN BSandr25

IF~Global("SanTOBanter","GLOBAL",1)~THEN BEGIN SanToBStart1
SAY@0
IF~~THEN REPLY@1GOTO SanToBStart2
IF~~THEN REPLY@2GOTO SanToBStart2
IF~~THEN REPLY@3GOTO SanToBStart2a
END

IF~~THEN BEGIN SanToBStart2
SAY@4
IF~~THEN REPLY@5DO~SetGlobal("SanTOBanter","GLOBAL",2)~EXIT
END

IF~~THEN BEGIN SanToBStart2a
SAY@6
IF~~THEN REPLY@7DO~SetGlobal("SanTOBanter","GLOBAL",2)~EXIT
END

IF~Global("SanSerBha","GLOBAL",1)~THEN BEGIN SanSearchServ1
SAY@8
IF~~THEN REPLY@9DO~SetGlobal("SanSerBha","GLOBAL",2)~GOTO SanSearchServ2
IF~~THEN REPLY@10DO~SetGlobal("SanSerBha","GLOBAL",2)~GOTO SanSearchServ2
IF~~THEN REPLY@11DO~SetGlobal("SanSerBha","GLOBAL",2)~GOTO SanSearchServ2
END

IF~~THEN BEGIN SanSearchServ2
SAY@12
IF~~THEN REPLY@13GOTO SanSearchServ3
IF~~THEN REPLY@14GOTO SanSearchServ3
IF~Global("TalkedToRielev","GLOBAL",2)~THEN REPLY@15GOTO SanSearchServ3
END

IF~~THEN BEGIN SanSearchServ3
SAY@16
IF~Global("TalkedToRielev","GLOBAL",2)~THEN GOTO SanSearchServ4a
IF~!Global("TalkedToRielev","GLOBAL",2)~THEN GOTO SanSearchServ4
END

IF~~THEN BEGIN SanSearchServ4a
SAY@17
IF~~THEN GOTO SanSearchServ4
END

IF~~THEN BEGIN SanSearchServ4
SAY@18
IF~~THEN REPLY @19GOTO SanSearchServ5
IF~~THEN REPLY @20GOTO SanSearchServ5
IF~~THEN REPLY@21GOTO SanSearchServ5
END

IF~~THEN BEGIN SanSearchServ5
SAY@22
IF~~THEN REPLY @23GOTO SanSearchServ6
IF~~THEN REPLY @24GOTO SanSearchServ6
END

IF~~THEN BEGIN SanSearchServ6
SAY@25
=@26
IF~~THEN REPLY@27EXIT
IF~~THEN REPLY@28EXIT
IF~~THEN REPLY@29EXIT
IF~~THEN REPLY@30EXIT
END

IF~Global("SanBaltMelis","GLOBAL",4)~THEN BEGIN AmaSanBalt1
SAY@31
IF~~THEN REPLY@32GOTO AmaSanBalt2
IF~~THEN REPLY@33GOTO AmaSanBalt2
IF~~THEN REPLY@34GOTO AmaSanBalt2
END

IF~~THEN BEGIN AmaSanBalt2
SAY@35
IF~~THEN REPLY@36DO~SetGlobal("SanBaltMelis","GLOBAL",5)~GOTO AmaSanBalt3
END

IF~~THEN BEGIN AmaSanBalt3
SAY@37
IF~GlobalGT("San25ChiQuest","GLOBAL",14)~THEN REPLY@38GOTO AmaSanBalt4
IF~GlobalGT("San25ChiQuest","GLOBAL",14)~THEN REPLY@39GOTO AmaSanBalt4
IF~GlobalLT("San25ChiQuest","GLOBAL",15)~THEN REPLY@38GOTO AmaSanBalt4b
IF~GlobalLT("San25ChiQuest","GLOBAL",15)~THEN REPLY@39GOTO AmaSanBalt4b
END

IF~~THEN BEGIN AmaSanBalt4
SAY@40
IF~~THEN REPLY@41EXIT
IF~~THEN REPLY@42EXIT
IF~~THEN REPLY@43EXIT
END

IF~~THEN BEGIN AmaSanBalt4b
SAY@90
IF~~THEN REPLY@41EXIT
IF~~THEN REPLY@42EXIT
IF~~THEN REPLY@43EXIT
END

IF~Global("SanKevl","GLOBAL",1)~THEN BEGIN SanKeve1
SAY@44
IF~~THEN REPLY@45GOTO SanKeve2
END

IF~~THEN BEGIN SanKeve2
SAY@46
IF~~THEN REPLY@47GOTO SanKeve3
IF~~THEN REPLY@48GOTO SanKeve3
END

IF~~THEN BEGIN SanKeve3
SAY@49
IF~~THEN REPLY@50GOTO SanKeve4
IF~~THEN REPLY@51GOTO SanKeve4
END

IF~~THEN BEGIN SanKeve4
SAY@52
IF~~THEN REPLY@53DO~SetGlobal("SanKevl","GLOBAL",2)~GOTO SanKeve5
IF~~THEN REPLY@54DO~SetGlobal("SanKevl","GLOBAL",2)~GOTO SanKeve5
END

IF~~THEN BEGIN SanKeve5
SAY@55
=@56
=@57
IF~~THEN REPLY@58EXIT
IF~~THEN REPLY@59EXIT
END

IF~Global("SanGorp","CVUMO6",1)~THEN BEGIN  SanGorp1
SAY@60
IF~~THEN REPLY@61DO~SetGlobal("SanGorp","CVUMO6",2)~GOTO SanGorp2
IF~~THEN REPLY@62DO~SetGlobal("SanGorp","CVUMO6",2)~GOTO SanGorp2
END

IF~~THEN BEGIN  SanGorp2
SAY@63
IF~~THEN REPLY@64GOTO SanGorp3
END

IF~~THEN BEGIN  SanGorp3
SAY@65
IF~~THEN REPLY@66EXIT
IF~~THEN REPLY@67EXIT
END

IF~Global("SanGodInvolve","GLOBAL",4)~THEN BEGIN SanCyrMis1
SAY@68
IF~~THEN REPLY@69GOTO SanCyrMis2
IF~~THEN REPLY@70GOTO SanCyrMis2
IF~~THEN REPLY@71GOTO SanCyrMis2
END

IF~~THEN BEGIN SanCyrMis2
SAY@72
IF~!Dead("Balth")~THEN REPLY@73GOTO SanCyrMis3
IF~~THEN REPLY@74GOTO SanCyrMis4
IF~~THEN REPLY@75GOTO SanCyrMis5
END

IF~~THEN BEGIN SanCyrMis3
SAY@76
IF~~THEN DO~SetGlobal("SanGodInvolve","GLOBAL",5)~GOTO SanCyrMis6
END

IF~~THEN BEGIN SanCyrMis4
SAY@77
IF~~THEN DO~SetGlobal("SanGodInvolve","GLOBAL",5)~GOTO SanCyrMis6
END

IF~~THEN BEGIN SanCyrMis5
SAY@78
IF~~THEN DO~SetGlobal("SanGodInvolve","GLOBAL",5)~GOTO SanCyrMis6
END

IF~~THEN BEGIN SanCyrMis6
SAY@79
IF~~THEN REPLY@80GOTO SanCyrMis7
IF~!Dead("Balth")~THEN REPLY@81GOTO SanCyrMis7
END

IF~~THEN BEGIN SanCyrMis7
SAY@82
=@83
IF~~THEN EXIT
END

//__===================================================================================
//Return to Faerun
//_===================================================================================

IF~Global("RtFWait","cvrtf2",1)~THEN BEGIN StartRtF1
SAY@84
IF~~THEN REPLY@85DO~SetGlobal("RtFWait","cvrtf2",1) RealSetGlobalTimer("RtFWaitDel","cvrtf2",70)~GOTO StartRtF2
END

IF~~ THEN BEGIN StartRtF2
SAY@86
IF~~THEN REPLY@87GOTO StartRtF3
END

IF~~ THEN BEGIN StartRtF3
SAY@88
IF~~THEN REPLY@89EXIT
END
