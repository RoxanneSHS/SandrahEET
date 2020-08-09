// Northern Tales
INTERJECT_COPY_TRANS NTOLIVIA 1 Freepotn
== CVSandrJ IF ~InParty("CVSandr")!PartyHasItem("POTN45")~THEN @0
== NTOLIVIA IF ~InParty("CVSandr")!PartyHasItem("POTN45")~THEN @1DO~AddexperienceParty(120)~
END

INTERJECT_COPY_TRANS NTDRAAGI 0 SanBlackHand
== CVSandrJ IF ~OR(2) Global("NTTalkedToHasdar","GLOBAL",5) Global("HasdarReturnToTemple","GLOBAL",1) InParty("CVSandr")~THEN@2
== NTDRAAGI IF ~OR(2) Global("NTTalkedToHasdar","GLOBAL",5) Global("HasdarReturnToTemple","GLOBAL",1) InParty("CVSandr")~THEN@3
== CVSandrJ IF ~OR(2) Global("NTTalkedToHasdar","GLOBAL",5) Global("HasdarReturnToTemple","GLOBAL",1) InParty("CVSandr")~THEN@4
== NTHASDAR IF ~OR(2) Global("NTTalkedToHasdar","GLOBAL",5) Global("HasdarReturnToTemple","GLOBAL",1) InParty("CVSandr")~THEN@5
== CVSandrJ IF ~OR(2) Global("NTTalkedToHasdar","GLOBAL",5) Global("HasdarReturnToTemple","GLOBAL",1) InParty("CVSandr")~THEN@6DO ~AddexperienceParty(11000)~
== NTDRAAGI IF ~OR(2) Global("NTTalkedToHasdar","GLOBAL",5) Global("HasdarReturnToTemple","GLOBAL",1) InParty("CVSandr")~THEN@7
END

INTERJECT_COPY_TRANS  NTGGHOTA 0 SanHasGSw
== CVSandrJ IF ~InParty("CVSandr") ~THEN @8
== NTGGHOTA IF ~InParty("CVSandr") ~THEN @9
== CVSandrJ IF ~InParty("CVSandr") ~THEN @10
== NTGGHOTA IF ~InParty("CVSandr") ~THEN @11
== CVSandrJ IF ~InParty("CVSandr") ~THEN @12
== NTGGHOTA IF ~InParty("CVSandr") ~THEN @13
== CVSandrJ IF ~InParty("CVSandr") ~THEN @14
== NTGGHOTA IF ~InParty("CVSandr") ~THEN @15
== CVSandrJ IF ~InParty("CVSandr") ~THEN @16
== NTGGHOTA IF ~InParty("CVSandr") ~THEN @17
END


INTERJECT_COPY_TRANS  NTGGHOTA 1 SanNoHasGSw
== CVSandrJ IF ~InParty("CVSandr") ~THEN @18
== NTGGHOTA IF ~InParty("CVSandr") ~THEN @19
== CVSandrJ IF ~InParty("CVSandr") ~THEN @12
== NTGGHOTA IF ~InParty("CVSandr") ~THEN @20
== CVSandrJ IF ~InParty("CVSandr") ~THEN @21
== NTGGHOTA IF ~InParty("CVSandr") ~THEN @22
== CVSandrJ IF ~InParty("CVSandr") ~THEN @16
== NTGGHOTA IF ~InParty("CVSandr") ~THEN @17
END

INTERJECT_COPY_TRANS NTKRESTI 3 SanKresti
== CVSandrJ IF ~InParty("CVSandr")~THEN @23
== NTKRESTI IF ~InParty("CVSandr")~THEN @24
== CVSandrJ IF ~InParty("CVSandr")~THEN @25
== NTKRESTI IF ~InParty("CVSandr")~THEN @26
== CVSandrJ IF ~InParty("CVSandr")~THEN @27
END

// Ordolath
INTERJECT_COPY_TRANS NTORDOL 10 SanHint17
== CVSandrJ IF ~InParty("CVSandr")~THEN @28
== NTORDOL IF ~InParty("CVSandr")~THEN @29
== CVSandrJ IF ~InParty("CVSandr")~THEN @30
== NTORDOL IF ~InParty("CVSandr")~THEN @31
END

// Haeball

INTERJECT_COPY_TRANS NTHAEBAL 0 Strangemage
== NTHAEBAL IF ~InParty("CVSandr")~THEN @32
== CVSandrJ IF ~InParty("CVSandr")~THEN @33
== NTHAEBAL IF ~InParty("CVSandr")~THEN @34DO ~IncrementGlobal("ElmHint","GLOBAL",1)~
== CVSandrJ IF ~InParty("CVSandr")~THEN @35DO~SetGlobal("9001Fi","GLOBAL",1)~
END

INTERJECT_COPY_TRANS NTHASDAR 10 SanKnowsHas
== CVSANDRJ IF~InParty("CVSandr") Global("SanKnowsHasdId","GLOBAL",4) ~THEN @36
== NTHASDAR IF~InParty("CVSandr") Global("SanKnowsHasdId","GLOBAL",4) ~THEN @37
== CVSANDRJ IF~InParty("CVSandr") Global("SanKnowsHasdId","GLOBAL",4) ~THEN @38
== NTHASDAR IF~InParty("CVSandr") Global("SanKnowsHasdId","GLOBAL",4) ~THEN @39
== CVSANDRJ IF~InParty("CVSandr") Global("SanKnowsHasdId","GLOBAL",4) ~THEN @40
== NTHASDAR IF~InParty("CVSandr") Global("SanKnowsHasdId","GLOBAL",4) ~THEN @41
== CVSANDRJ IF~InParty("CVSandr") Global("SanKnowsHasdId","GLOBAL",4) ~THEN @42
== NTHASDAR  IF~InParty("CVSandr") Global("SanKnowsHasdId","GLOBAL",4) ~THEN @43
== CVSANDRJ IF~InParty("CVSandr") Global("SanKnowsHasdId","GLOBAL",4) ~THEN @44
== NTHASDAR  IF~InParty("CVSandr") Global("SanKnowsHasdId","GLOBAL",4) ~THEN @45DO ~RevealAreaOnMap("ar60pb")~
== CVSANDRJ IF~InParty("CVSandr") Global("SanKnowsHasdId","GLOBAL",4) ~THEN @46
== NTHASDAR  IF~InParty("CVSandr") Global("SanKnowsHasdId","GLOBAL",4) ~THEN @47
END

INTERJECT_COPY_TRANS NTPANDRI 2 Pandris1
== CVSandrJ IF ~InParty("CVSandr")~THEN @48
==  NTPANDRI IF ~InParty("CVSandr")~THEN @49
== CVSandrJ IF ~InParty("CVSandr")~THEN @50DO ~SetGlobal("SanFDGGoth","GLOBAL",1) ~
==  NTPANDRI IF ~InParty("CVSandr")~THEN @51
== CVSandrJ IF ~InParty("CVSandr")~THEN @52
END

INTERJECT_COPY_TRANS NTPANDRI 3 Pandris2
== CVSandrJ IF ~InParty("CVSandr") Global("9001Fi","GLOBAL",3)~THEN @53
==  NTPANDRI IF ~InParty("CVSandr") Global("9001Fi","GLOBAL",3)~THEN @54
END
