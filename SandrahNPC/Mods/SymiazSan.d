APPEND CVSANDRJ
END

//Simyaz if not Salinithyl
INTERJECT_COPY_TRANS UDSIMYAZ 20 SanprophGyth1
== UDSIMYAZ IF ~InParty("CVSandr") Global("SanProph","GLOBAL",0)~THEN@0
== CVSANDRJ IF ~InParty("CVSandr") Global("SanProph","GLOBAL",0)~THEN@1
== UDSIMYAZ IF ~InParty("CVSandr") Global("SanProph","GLOBAL",0)~THEN@2
==CVSANDRJ@3
==UDSIMYAZ@4
DO~SetGlobal("SanProph","GLOBAL",5) StartCutSceneMode() StartCutScene("Sahui7")~
END

INTERJECT_COPY_TRANS UDSIMYAZ 22 SanprophGyth2
== UDSIMYAZ IF ~InParty("CVSandr") Global("SanProph","GLOBAL",0)~THEN@0
== CVSANDRJ IF ~InParty("CVSandr") Global("SanProph","GLOBAL",0)~THEN@5
== UDSIMYAZ IF ~InParty("CVSandr") Global("SanProph","GLOBAL",0)~THEN@2
==CVSANDRJ@3
==UDSIMYAZ@4
DO~SetGlobal("SanProph","GLOBAL",5) StartCutSceneMode() StartCutScene("Sahui7")~
END

INTERJECT_COPY_TRANS UDSIMYAZ 36 SanprophGyth3
== CVSANDRJ IF ~InParty("CVSandr") PartyHasItem("Misc8u")~THEN@6
== UDSIMYAZ IF ~InParty("CVSandr") PartyHasItem("Misc8u")~THEN@7
END

//Simyaz if not Salinithyl
CHAIN
IF WEIGHT #-13~Global("SanProph","GLOBAL",5)~THEN UDSIMYAZ GythProf1
@8
DO~SetGlobal("SanProph","GLOBAL",6)~
==CVSANDRJ@9
==UDSIMYAZ@10
==CVSANDRJ@11
==UDSIMYAZ@12
==CVSANDRJ@13
==UDSIMYAZ@14
==CVSANDRJ@15
==UDSIMYAZ@16
==CVSANDRJ@17
==UDSIMYAZ@18
==CVSANDRJ@19
==UDSIMYAZ@20
==CVSANDRJ@21
==UDSIMYAZ@22
==CVSANDRJ@23
==UDSIMYAZ@24
DO~StartCutSceneMode() StartCutScene("Sahui6")~EXIT
 