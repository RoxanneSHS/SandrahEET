APPEND CVSANDRJ

IF~~THEN BEGIN SanEntAgain
SAY@0
IF~~THEN REPLY@1DO~SetGlobal("TDDSanJarlAgain","LOCALS",1)~EXIT
END

IF ~Global("SanOrgotrp","LOCALS",1)~THEN BEGIN SanOrgo1
SAY@2
IF~~THEN REPLY@3DO~SetGlobal("SanOrgotrp","LOCALS",2)~ GOTO SanOrgo2
IF~~THEN REPLY@4DO~SetGlobal("SanOrgotrp","LOCALS",2)~GOTO SanOrgo2
END

IF ~~THEN BEGIN SanOrgo2
SAY@5
=@6
IF~~THEN REPLY@7EXIT
IF~~THEN REPLY@8EXIT
IF~~THEN REPLY@9EXIT
END

IF ~Global("SanOrgotrp","LOCALS",3)~THEN BEGIN SanOrgo3
SAY@10
IF~~THEN REPLY@11DO~SetGlobal("SanOrgotrp","LOCALS",4)~ EXIT
IF~~THEN REPLY@12DO~SetGlobal("SanOrgotrp","LOCALS",4)~EXIT
END

IF~Global("SanTDDCali","LOCALS",1)~THEN BEGIN SanCaliHOut1
SAY@13
IF~~THEN REPLY@14DO~SetGlobal("SanTDDCali","LOCALS",2)~EXIT
IF~~THEN REPLY@15DO~SetGlobal("SanTDDCali","LOCALS",2)~EXIT
IF~~THEN REPLY@16DO~SetGlobal("SanTDDCali","LOCALS",2)~GOTO SanCaliHOut2
END

IF~~THEN BEGIN SanCaliHOut2
SAY@17
IF~~THEN REPLY @18EXIT
END

IF~Global("SanTDDjarlhunt","LOCALS",1)~THEN BEGIN SanJarlhunt1
SAY@19
IF~!InParty("Driz2")~THEN REPLY@20GOTO SanJarlhunt2
IF~~THEN REPLY@21GOTO SanJarlhunt3
IF~~THEN REPLY@22GOTO SanJarlhunt3
END

IF~~THEN BEGIN SanJarlhunt2
SAY@23
IF~~THEN REPLY@24GOTO SanJarlhunt3
END

IF~~THEN BEGIN SanJarlhunt3
SAY@25
IF~~THEN REPLY@26DO~SetGlobal("SanTDDjarlhunt","LOCALS",2)~EXIT
IF~~THEN REPLY@27DO~SetGlobal("SanTDDjarlhunt","LOCALS",2)~EXIT
END

IF~Global("SanTDDjarlhunt","LOCALS",3)~THEN BEGIN SanJarlhunt4
SAY@28
IF~~THEN REPLY@29GOTO SanJarlhunt5
IF~~THEN REPLY@30GOTO SanJarlhunt5
END

IF~~THEN BEGIN SanJarlhunt5
SAY@31
IF~~THEN REPLY@32DO~SetGlobal("SanTDDjarlhunt","LOCALS",4)~GOTO SanJarlhunt6
END

IF~~THEN BEGIN SanJarlhunt6
SAY@33
IF~~THEN REPLY@34EXIT
IF~~THEN REPLY@35EXIT
IF~~THEN REPLY@36EXIT
END

IF~Global("SanTDDjarlhunt","LOCALS",5)~THEN BEGIN SanJarlhunt7
SAY@37
IF~~THEN REPLY@38DO~SetGlobal("SanTDDjarlhunt","LOCALS",6)~GOTO SanJarlhunt8
END

IF~~THEN BEGIN SanJarlhunt8
SAY@39
IF~Global("SanRomPath","GLOBAL",1)~THEN REPLY@40GOTO SanJarlhunt9
IF~Global("SanRomPath","GLOBAL",1)~THEN REPLY@41GOTO SanJarlhunt9
IF~Global("SanRomPath","GLOBAL",2)~THEN REPLY@40GOTO SanJarlhunt10
IF~Global("SanRomPath","GLOBAL",2)~THEN REPLY@41GOTO SanJarlhunt10
END

IF~~THEN BEGIN SanJarlhunt9
SAY@42
IF~~THEN EXIT
END

IF~~THEN BEGIN SanJarlhunt10
SAY@43
IF~~THEN EXIT
END

IF~Global("SanAlust","DD6001",2)~THEN BEGIN Alus1
SAY@44
IF~~THEN REPLY@45GOTO Alus2
IF~~THEN REPLY@46GOTO Alus2
END

IF~~THEN BEGIN Alus2
SAY@47
=@48
IF~~THEN REPLY@49DO ~SetGlobal("SanAlust","DD6001",3) ~EXIT
END

END

APPEND BSandr

IF~Global("Sanprick","dd9400",1)~THEN BEGIN sanertring1
SAY@50
IF~~THEN REPLY@51DO~SetGlobal("Sanprick","dd9400",2) ~GOTO  sanertring2
END

IF~~THEN BEGIN sanertring2
SAY@52
IF~~THEN REPLY@53GOTO  sanertring3
IF~~THEN REPLY@54GOTO  sanertring3
END

IF~~THEN BEGIN sanertring3
SAY@55
IF~~THEN EXIT
END

IF~Global("SanTDDCoward","LOCALS",1)~THEN BEGIN JarlCow1
SAY@56
IF~~THEN REPLY@57DO~SetGlobal("SanTDDCoward","LOCALS",2)~GOTO JarlCow2
END

IF~~THEN BEGIN JarlCow2
SAY@58
IF~~THEN REPLY@59EXIT
IF~~THEN REPLY@60EXIT
END
END


EXTEND_BOTTOM 3336TAV 7
IF~InParty("CVSandr")~THEN REPLY @61EXTERN CVSANDRJ SanEntAgain
END

EXTEND_BOTTOM ORGOTH01 0
IF~InParty("CVSandr")~THEN REPLY @62DO~AddexperienceParty(5500)~GOTO 2
END

INTERJECT RIATMOV1 1  RecSan
==RIATMOV1 IF~InParty("CVSandr")~THEN@63
==CVSANDRJ IF~InParty("CVSandr")~THEN@64
==RIATMOV1 IF~InParty("CVSandr")~THEN@65DO~
SetGlobal("tz_mageriatward","GLOBAL",1)
SetGlobalTimer("tz_riatwardback","GLOBAL",3)
StartCutSceneMode()
ClearAllActions()
FadeToColor([20.0],0)
Wait(2)
StartCutScene("newwardr") ~EXIT


EXTEND_BOTTOM Priscali 2
IF~InParty("CVSandr") !Dead("Caliprig") GlobalGT("tz_caliprisonspawn","GLOBAL",0)~THEN REPLY@66DO~AddexperienceParty(200) ActionOverride(Nearest("priscali"),EscapeArea())~EXIT
END

EXTEND_BOTTOM Priscali 3
IF~InParty("CVSandr") !Dead("Caliprig") GlobalGT("tz_caliprisonspawn","GLOBAL",0)~THEN REPLY@66DO~AddexperienceParty(200) ActionOverride(Nearest("priscali"),EscapeArea())~EXIT
END

EXTEND_BOTTOM Priscali 4
IF~InParty("CVSandr") !Dead("Caliprig") GlobalGT("tz_caliprisonspawn","GLOBAL",0)~THEN REPLY@66DO~AddexperienceParty(200) ActionOverride(Nearest("priscali"),EscapeArea())~EXIT
END

EXTEND_BOTTOM Pibble2 3
IF~InParty("CVSandr") ~THEN REPLY@67DO~SetGlobal("tz_dinquest2","GLOBAL",4) SetGlobal("Sanresc","LOCALS",0) StartCutSceneMode() Wait(1) ActionOverride("CVSandr",MoveToObject("Pibble2")) Wait(2)  Wait(2) ActionOverride("CVSandr",ForceSpell("Pibble2",CLERIC_HEAL)) Wait(8)  ActionOverride("Pibble2",Polymorph(FIGHTER_MALE_GNOME)) EndCutSceneMode() ~EXIT
END

APPEND  Pibble2
IF~Global("Sanresc","LOCALS",0)~THEN BEGIN  Sanrescu
SAY@68
IF~~THEN DO ~AddexperienceParty(5500) EscapeArea()~EXIT
END
END

INTERJECT_COPY_TRANS Alust02 1 SanKnownAlust
==Alust02 IF~InParty("CVSandr") ~THEN @69
==CVSandrJ IF~InParty("CVSandr") ~THEN @70
==Alust02 IF~InParty("CVSandr") ~THEN @71
END

INTERJECT_COPY_TRANS Alust02 14 SanKnownAlust1
==CVSandrJ IF~InParty("CVSandr") ~THEN @72
==Alust02 IF~InParty("CVSandr") ~THEN @73
==CVSandrJ IF~InParty("CVSandr") ~THEN @74
END

ADD_TRANS_ACTION Bendalis BEGIN 0 END BEGIN 0 1  END
 ~SetGlobal("SanAlust","DD6001",1)~
 
 CHAIN
IF~Global("SanMystApp","arpo31",1)~THEN SanMyst SanMysCyric
@75
DO~SetGlobal("SanMystApp","arpo31",2)~
==CVSANDRJ @76
==SANMYST@77
==CVSANDRJ @78
==SANMYST@79
==CVSANDRJ @80
==SANMYST@81
==CVSANDRJ @82
==SANMYST@83
==CVSANDRJ @84
==CVSANDRJ IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN@85
==SANMYST IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN@86
==CVSANDRJ IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN@87
==SANMYST IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN@88
==CVSANDRJ IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN@89
==SANMYST IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN@90
==CVSANDRJ IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN@91
==SANMYST IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN@92
==SANMYST @93
EXIT
 



