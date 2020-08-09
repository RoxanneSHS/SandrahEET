CHAIN
IF~Global("SanSola","GLOBAL",9)~THEN BSANDR SanSvSol
@0
DO~SetGlobal("SanSola","GLOBAL",10) RealSetGlobalTimer("SanSolaT","LOCALS",800)~
==BSOLA@1
==BSANDR@2
==BSOLA@3
==BSANDR@4
==BSOLA@5
EXIT

CHAIN
IF~Global("SanSola","GLOBAL",11)~THEN BSANDR SanSvSol2
@6
DO~SetGlobal("SanSola","GLOBAL",12) RealSetGlobalTimer("SanSolaT","LOCALS",800)~
==BSOLA@7
==BSANDR@8
==BSOLA@9
==BSANDR@10
==BSOLA@11
==BSANDR@12
==BSOLA@13
==BSANDR@14
EXIT

CHAIN
IF~Global("SanSola","GLOBAL",13)~THEN BSANDR SanSvSol2
@15
DO~SetGlobal("SanSola","GLOBAL",14) RealSetGlobalTimer("SanSolaT","LOCALS",800)~
==BSOLA@16
==BSANDR@17
==BSOLA@18
==BSANDR@19
==BSOLA@20
==BSANDR@21
EXIT

CHAIN
IF~Global("SanSola","GLOBAL",15)~THEN BSandr SanSolSing
@22
DO~SetGlobal("SanSola","GLOBAL",16)RealSetGlobalTimer("SanSolaT","LOCALS",1000)~
==BSandr IF~Global("SolaDiscussWoods","GLOBAL",2)~THEN@23
==BSOLA@24
==BSANDR@25
==BSOLA@26
==BSANDR@27
==BSOLA@28
= @29
==BSANDR@30
==BSOLA@31
==BSANDR@32
==BSOLA@33
==BSANDR@34EXIT

CHAIN
IF~Global("SanSola","GLOBAL",17)~THEN BSandr SanSolGods
@35
DO~SetGlobal("SanSola","GLOBAL",18)RealSetGlobalTimer("SanSolaT","LOCALS",3600)~
==BSOLA@36
==BSANDR@37
==BSOLA@38
==BSANDR@39
==BSOLA@40
==BSANDR@41
==BSOLA@42
==BSANDR@43
==BSOLA@44
==BSANDR@45EXIT

CHAIN
IF~Global("SanSola","GLOBAL",19)~THEN BSandr SanSolResp
@46
DO~SetGlobal("SanSola","GLOBAL",20)RealSetGlobalTimer("SanSolaT","LOCALS",1600)~
==BSOLA@47
==BSANDR@48
==BSOLA@49
==BSANDR@50
==BSOLA@51
==BSANDR@52
==BSOLA@53
==BSANDR@54
==BSOLA@55
==BSANDR@56EXIT

INTERJECT_COPY_TRANS SOLA 4  SanSolCoat
== CVSANDRJ IF~InParty("CVSandr") PartyHasItem("Misc9W")~THEN@57
==SOLA IF~InParty("CVSandr") PartyHasItem("Misc9W")~THEN@58
== CVSANDRJ IF~InParty("CVSandr") PartyHasItem("Misc9W")~THEN@59DO~GiveItem("Misc9W","Sola") ~
END