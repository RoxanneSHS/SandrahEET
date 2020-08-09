//Neh'taniel
INTERJECT_COPY_TRANS SK#Neht 22 SanKnowAmau
== CVSANDRJ IF ~InParty("CVSandr")~THEN@0
== SK#Neht IF ~InParty("CVSandr")~THEN@1
== CVSANDRJ IF ~InParty("CVSandr")~THEN@2
== SK#Neht IF ~InParty("CVSandr")~THEN@3
== CVSANDRJ IF ~InParty("CVSandr")~THEN@4
== SK#Neht IF ~InParty("CVSandr")~THEN@5
== CVSANDRJ IF ~InParty("CVSandr")~THEN@6
END

CHAIN
IF ~Global("SanNeth","GLOBAL",1) ~THEN BSK#NEHT Sandrah1
@7
DO~SetGlobal("SanNeth","GLOBAL",6) ~
==BSandr@8
==BSK#NEHT@9
==BSandr@10
==BSK#NEHT@11
==BSandr@12
=@13
==BSK#NEHT@14
==BSandr@15
==BSK#NEHT@16EXIT

CHAIN
IF~Global("SanNeth","GLOBAL",5) ~THEN BSK#NEHT Sandrah2
@17
DO~SetGlobal("SanNeth","GLOBAL",6) RealSetGlobalTimer("SanNetInt","LOCALS",2760)~
==BSandr@18
==BSK#NEHT@19
==BSandr@20
==BSK#NEHT@21
==BSandr@22
==BSK#NEHT@23
==BSandr@24
==BSK#NEHT@25
==BSandr@26
==BSK#NEHT@27
=@28EXIT

CHAIN
IF~Global("SanNeSlav","LOCALS",1)~THEN BSK#NEHT SanSlaves
@29
DO ~SetGlobal("SanNeSlav","LOCALS",2)RealSetGlobalTimer("SanNetInt","LOCALS",2760)~
==BSandr@30
==BSK#NEHT@31
==BSandr@32
==BSK#NEHT@33
==BSandr@34
==BSK#NEHT@35EXIT

CHAIN
IF~Global("SanNeSlav","LOCALS",3)~THEN BSK#NEHT SanSlaves2
@36
DO ~SetGlobal("SanNeSlav","LOCALS",4)RealSetGlobalTimer("SanNetInt","LOCALS",2760)~
==BSandr@37
==BSK#NEHT@38
==BSandr@39
==BSK#NEHT@40
==BSandr@41
==BSK#NEHT@42EXIT

CHAIN
IF~Global("SanNeth","GLOBAL",7) ~THEN BSK#NEHT Sandrah3
@43
DO~SetGlobal("SanNeth","GLOBAL",8) RealSetGlobalTimer("SanNetInt","LOCALS",2760)~
==BSandr@44
==BSK#NEHT@45
==BSandr@46
==BSK#NEHT@47
==BSandr@48
==BSK#NEHT@49EXIT

CHAIN
IF~Global("SK#Stronghold","GLOBAL",3)~THEN BSandr SanNethWhyTh1
@50
DO~SetGlobal("SK#Stronghold","GLOBAL",4)~
== BSK#NEHT@51
== BSandr @52
== BSK#NEHT@53
== BSandr @54
== BSK#NEHT@55
== BSandr @56
== BSK#NEHT@57
EXIT
