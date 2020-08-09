EXTEND_TOP NTPRIHEL 0 #1
IF ~OR(2) GlobalGT("TalkedToSatos","GLOBAL",0) GlobalGT("NTTalkedToSatos","GLOBAL",0)  Global("SanDauroQ","GLOBAL",6)InParty("CVSandr")~THEN REPLY@0GOTO Daurep2
IF ~OR(2) GlobalGT("TalkedToSatos","GLOBAL",0) GlobalGT("NTTalkedToSatos","GLOBAL",0) Global("SanDauroQ","GLOBAL",7)InParty("CVSandr")~THEN REPLY @1GOTO Daurep1
END

APPEND NTPRIHEL
IF~~THEN BEGIN Daurep1
SAY@2
IF~~THEN DO~SetGlobal("SanDauroQ","GLOBAL",8)~EXTERN BSandr SanDaurep1
END


IF~~THEN BEGIN Daurep2
SAY@3
IF~~THEN DO~SetGlobal("SanDauroQ","GLOBAL",8)~EXTERN BSandr SanDaurep2
END
END

CHAIN
IF~~THEN BSandr SanDaurep1
@4
==IF_FILE_EXISTS NTPRIHEL@5
==BSandr@6
==IF_FILE_EXISTS NTPRIHEL@7DO~AddexperienceParty(1200) ReputationInc(1)~EXIT

CHAIN
IF~~THEN BSandr SanDaurep2
@8
==IF_FILE_EXISTS NTPRIHEL@9
==BSandr@6
==IF_FILE_EXISTS NTPRIHEL@10
==BSandr@11
==IF_FILE_EXISTS NTPRIHEL@12DO~AddexperienceParty(1200) ReputationInc(1)~EXIT