APPEND CVSANDRJ
END

//Yikari
INTERJECT_COPY_TRANS SDNPC 11 SanConcYik
== CVSANDRJ IF ~InParty("CVSandr") Global("SanSacroll","GLOBAL",8)~THEN@0
==  SDNPC IF ~InParty("CVSandr") Global("SanSacroll","GLOBAL",8)~THEN@1
== CVSANDRJ IF ~InParty("CVSandr") Global("SanSacroll","GLOBAL",8)~THEN@2
==  SDNPC IF ~InParty("CVSandr") Global("SanSacroll","GLOBAL",8)~THEN@3
== CVSANDRJ IF ~InParty("CVSandr") Global("SanSacroll","GLOBAL",8)~THEN@4
END

APPEND SDNPC
IF WEIGHT #-9~ InParty("CVSandr")
Global("SDNPCQuest","GLOBAL",0)
!IfValidForPartyDialogue(Myself)
OR(2)
PartyHasItem("c2sw1h02")
PartyHasItem("sw1h51")
~THEN BEGIN SanFury
SAY @5
IF ~~THEN REPLY @6GOTO 7
IF ~~THEN REPLY @7GOTO 7
END  
END