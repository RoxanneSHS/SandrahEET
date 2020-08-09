BEGIN CVJenHu1
BEGIN CVJENHU2
BEGIN CVJen25J

IF ~IsGabber(Player1) Global("Melissanjob","GLOBAL",1) ~THEN BEGIN JenPCInit25
SAY @0
IF~Global("Badtiming","LOCALS",0)~THEN REPLY@1DO~SetGlobal("Badtiming","LOCALS",1)~GOTO TwoOdds1
IF~~THEN REPLY@2GOTO Bestplace
IF~Global("SanJenship","GLOBAL",7)~THEN REPLY@3GOTO Nosword1
IF~Global("SanJenship","GLOBAL",8) PartyHasItem("CVJenglo") InParty("CVSandr")~THEN REPLY@4GOTO Minglo1
IF~Global("CVJenTOBRet","GLOBAL",13) Global("Mindglo2","LOCALS",0)~THEN REPLY@5DO~SetGlobal("Mindglo2","LOCALS",1)~GOTO Minglo6
END

IF~~THEN BEGIN Minglo1
SAY@6
IF~~THEN REPLY@7GOTO Minglo2
IF~~THEN REPLY@8GOTO Minglo2
END

IF~~THEN BEGIN Minglo6
SAY@9
IF~~THEN REPLY@10GOTO Minglo7
IF~~THEN REPLY@11GOTO Minglo7
END

IF~~THEN BEGIN Minglo7
SAY@12
=@13
IF~~THEN REPLY@14DO~AddexperienceParty(60000)~EXIT
END

IF~~THEN BEGIN Nosword1
SAY@15
IF~~THEN REPLY@16GOTO Nosword2
IF~~THEN REPLY@17 GOTO Nosword2
IF~~THEN REPLY@18GOTO Nosword2
END

IF~~THEN BEGIN Nosword2
SAY@19
=@20
=@21
IF~~THEN REPLY@22DO~SetGlobal("SanJenship","GLOBAL",8)~EXIT
END

IF~~THEN BEGIN Bestplace
SAY@23
IF~~THEN EXIT
END

IF~~THEN BEGIN TwoOdds1
SAY@24
IF~~THEN REPLY@25GOTO TwoOdds2
IF~~THEN REPLY@26EXIT
IF~~THEN REPLY@27EXIT
END

IF~~THEN BEGIN TwoOdds2
SAY@28
IF~~THEN EXIT
END

CHAIN
IF~~THEN CVJen25J Minglo2
@29
DO~SetGlobal("SanJenship","GLOBAL",9)~
==CVSan25J@30
==CVJen25J@31
=@32
==CVSan25J@33
==CVJen25J@34
END
++@35EXIT
++@36EXIT
++@37EXIT

CHAIN
IF~Global("SanJenship","GLOBAL",2)~THEN CVJen25J Ship1
@38
DO~SetGlobal("SanJenship","GLOBAL",3)~
==IF_FILE_EXISTS BSAREV25 IF~InParty("Sarevok")~THEN@39
==BSandr25 IF~!InParty("Sarevok")~THEN@39
==BSandr25@40
==CVJen25J@41
END
++@42+ Ship2
++@43+ Ship2
++@44+ Ship2

CHAIN
IF~~THEN CVJen25J Ship2
@45
==BSandr25@46
==CVJen25J@47
==BSandr25@48
==CVJen25J@49
END
++@50EXIT

CHAIN
IF~Global("SanJenship","GLOBAL",6)~THEN CVJen25J Ship3
@51
DO~SetGlobal("SanJenship","GLOBAL",7)~
==BSandr25 @52
==CVJen25J @53
==IF_FILE_EXISTS BSAREV25 IF~InParty("Sarevok")~THEN@54
==CVJen25J @55
==CVJen25J IF~PartyHasItem("CVJenglo")~THEN@56
==CVJen25J IF~!PartyHasItem("CVJenglo")~THEN@57
EXIT

CHAIN
IF~Global("SendaiCutScene3","ar6106",1)~THEN CVJen25J SEndMiFl1
@58
DO~SetGlobal("SendaiCutScene3","ar6106",2) AddSpecialAbility("spin727") ActionOverride("CVSandr",AddSpecialAbility("spin727"))~
==BSandr25 @59
==CVJen25J@60
=@61EXIT

CHAIN
IF~Global("SanJenship","GLOBAL",4)~THEN CVJenHu1 Found
@62
DO~SetGlobal("SanJenship","GLOBAL",5)~
==CVJENHU2@63
==CVJenHu1@64
==CVJENHU2@65
==CVJen25J@66
EXIT


INTERJECT_COPY_TRANS Bazdra03 9 CVJenGloUpgr
==CVJen25J IF~InParty("CVJenlig")PartyHasItem("CvJenGlo")~THEN@67
==Bazdra03 IF~InParty("CVJenlig")PartyHasItem("CvJenGlo")~THEN@68
==CVJen25J IF~InParty("CVJenlig")PartyHasItem("CvJenGlo")~THEN@69
==Bazdra03 IF~InParty("CVJenlig")PartyHasItem("CvJenGlo")~THEN@70DO~TakePartyItem("CvJenGlo") GiveItemCreate("CVJenGl2","CVJenlig",1,0,0)~END

ADD_TRANS_TRIGGER Finmel01 6
~!InParty("CVJenlig")~

EXTEND_BOTTOM Finmel01 6
IF ~InParty("CVJenlig")~THEN DO ~SetGlobal("CVJenTOBRet","GLOBAL",14) SetGlobal("ShesInIt","LOCALS",1) ActionOverride("cutspy",DestroySelf()) Enemy()
~EXIT
END