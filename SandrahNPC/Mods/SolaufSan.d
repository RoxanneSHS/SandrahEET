CHAIN
IF~Global("SanSola","GLOBAL",9)~THEN BSANDR SanSvSol
@0
DO~SetGlobal("SanSola","GLOBAL",10) RealSetGlobalTimer("SanSolaT","LOCALS",800)~
==Sola@1
==BSANDR@2
==Sola@3
==BSANDR@4
==Sola@5
EXIT

CHAIN
IF~Global("SanSola","GLOBAL",11)~THEN BSANDR SanSvSol2
@6
DO~SetGlobal("SanSola","GLOBAL",12) RealSetGlobalTimer("SanSolaT","LOCALS",800)~
==Sola@7
==BSANDR@8
==Sola@9
==BSANDR@10
==Sola@11
==BSANDR@12
==Sola@13
==BSANDR@14
EXIT

CHAIN
IF~Global("SanSola","GLOBAL",13)~THEN BSANDR SanSvSol2
@15
DO~SetGlobal("SanSola","GLOBAL",14) RealSetGlobalTimer("SanSolaT","LOCALS",800)~
==Sola@16
==BSANDR@17
==Sola@18
==BSANDR@19
==Sola@20
==BSANDR@21
EXIT

CHAIN
IF~Global("SanSola","GLOBAL",15)~THEN BSandr SanSolSing
@22
DO~SetGlobal("SanSola","GLOBAL",16)RealSetGlobalTimer("SanSolaT","LOCALS",1000)~
==BSandr IF~Global("SolaDiscussWoods","GLOBAL",2)~THEN@23
==Sola@24
==BSANDR@25
==Sola@26
==BSANDR@27
==Sola@28
= @29
==BSANDR@30
==Sola@31
==BSANDR@32
==Sola@33
==BSANDR@34EXIT

CHAIN
IF~Global("SanSola","GLOBAL",17)~THEN BSandr SanSolGods
@35
DO~SetGlobal("SanSola","GLOBAL",18)RealSetGlobalTimer("SanSolaT","LOCALS",3600)~
==Sola@36
==BSANDR@37
==Sola@38
==BSANDR@39
==Sola@40
==BSANDR@41
==Sola@42
==BSANDR@43
==Sola@44
==BSANDR@45EXIT

CHAIN
IF~Global("SanSola","GLOBAL",19)~THEN BSandr SanSolResp
@46
DO~SetGlobal("SanSola","GLOBAL",20)RealSetGlobalTimer("SanSolaT","LOCALS",1600)~
==Sola@47
==BSANDR@48
==Sola@49
==BSANDR@50
==Sola@51
==BSANDR@52
==Sola@53
==BSANDR@54
==Sola@55
==BSANDR@56EXIT

INTERJECT_COPY_TRANS SOLA 4  SanSolCoat
== CVSANDRJ IF~InParty("CVSandr") PartyHasItem("Misc9W")~THEN@57
==SOLA IF~InParty("CVSandr") PartyHasItem("Misc9W")~THEN@58
== CVSANDRJ IF~InParty("CVSandr") PartyHasItem("Misc9W")~THEN@59DO~GiveItem("Misc9W","Sola") ~
END