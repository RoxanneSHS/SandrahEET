APPEND CVSANDRJ
END

//Yikari
INTERJECT_COPY_TRANS SDNPC 11 SanConcYik
== CVSANDRJ IF ~InParty("CVSandr") Global("SanSacroll","GLOBAL",8)~THEN~We have found and eliminated a terrific force of slave traders in that compound over there. The sword was there and the monk you mentioned is defeated.~
==  SDNPC IF ~InParty("CVSandr") Global("SanSacroll","GLOBAL",8)~THEN~In some way that is good news, the thief has found his fate and the sword taken from him. ~
== CVSANDRJ IF ~InParty("CVSandr") Global("SanSacroll","GLOBAL",8)~THEN~As we are a well equipped troupe I cannot imagine our leader <CHARNAME> to withhold your item. May I ask you for any information you may provide us about that slaver organisation in return.~
==  SDNPC IF ~InParty("CVSandr") Global("SanSacroll","GLOBAL",8)~THEN~As much as I am grateful for your kind words, mylady priestess, I am utterly sad to disappoint you. I was just following the trail of the thief to this installation. I could not get inside all by myself. I have seen guarded groups come in and out, the traffic of large cargo boxes as well but I have been warded off by the guards every time before I could get close enough to find out what is really going on. Now that you mention slave trade, my observations begin to make sense, but I know no more.~
== CVSANDRJ IF ~InParty("CVSandr") Global("SanSacroll","GLOBAL",8)~THEN~I believe you, Yikari, I am sure you would tell us everything if you knew more. (Sigh) It was just my silly hope that we could get more information to deal those slavers of Athkatla another blow.~
END

APPEND SDNPC
IF WEIGHT #-9~ InParty("CVSandr")
Global("SDNPCQuest","GLOBAL",0)
!IfValidForPartyDialogue(Myself)
OR(2)
PartyHasItem("c2sw1h02")
PartyHasItem("sw1h51")
~THEN BEGIN SanFury
SAY ~Excuse me, is that sword... Celestial Fury? And you would be <CHARNAME>?~
IF ~~THEN REPLY ~Yes. Who are you and what do you want?~GOTO 7
IF ~~THEN REPLY ~Maybe... Who are you?~GOTO 7
END  
END