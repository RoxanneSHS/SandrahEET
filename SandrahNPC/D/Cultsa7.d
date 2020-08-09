BEGIN Cultsa7

IF~Global("SanDestBeastCult","GLOBAL",3)~THEN BEGIN CultVictimSaved1
SAY @0
IF~~THEN REPLY@1GOTO CultVictimSaved2
IF~~THEN REPLY@2GOTO CultVictimSaved2
END

IF~~THEN BEGIN CultVictimSaved2
SAY@3
IF~~THEN REPLY@4DO~SetGlobal("SanDestBeastCult","GLOBAL",4)~GOTO CultVictimSaved3
END

IF~~THEN BEGIN CultVictimSaved3
SAY@5
IF~~THEN DO ~AddexperienceParty(24000)AddXPObject("CVSandr",15000)~EXIT
END

IF~Global("PaladQ","LOCALS",1)~THEN BEGIN CaravanVictimSaved1
SAY@6
IF~~THEN REPLY@7GOTO CaravanVictimSaved2
IF~~THEN REPLY@8GOTO CaravanVictimSaved3
END

IF~~THEN BEGIN CaravanVictimSaved2
SAY@9
IF~InParty("Keldorn")~THEN REPLY@10GOTO CaravanVictimSaved4
IF~InParty("Anomen")~THEN REPLY@11GOTO CaravanVictimSaved4
IF~~THEN REPLY@12GOTO CaravanVictimSaved4
END

IF~~THEN BEGIN CaravanVictimSaved3
SAY@13
IF~~THEN REPLY@14GOTO CaravanVictimSaved2
END

IF~~THEN BEGIN CaravanVictimSaved4
SAY@15
IF~~THEN REPLY@4GOTO CaravanVictimSaved5
END

IF~~THEN BEGIN CaravanVictimSaved5
SAY@5
IF~~THEN DO ~SetGlobal("PaladQ","LOCALS",2) AddexperienceParty(24000) EscapeArea()~EXIT
END

APPEND CVSandrJ
IF~Global("SanEntrCult","ra5501",1)~THEN BEGIN EntrCult1
SAY@16
IF~~THEN REPLY@17GOTO EntrCult2
IF~~THEN REPLY@18GOTO EntrCult2
IF~~THEN REPLY@19GOTO EntrCult2
END

IF~~THEN BEGIN EntrCult2
SAY@20
IF~~THEN REPLY@21GOTO EntrCult3
END

IF~~THEN BEGIN EntrCult3
SAY@22
IF~~THEN DO~SetGlobal("SanEntrCult","ra5501",2)~EXIT
END
END




