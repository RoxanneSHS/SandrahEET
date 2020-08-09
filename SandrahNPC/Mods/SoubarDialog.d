APPEND CVSANDRJ

//Soubar Join Army
IF~Global("SanNoSold","LOCALS",1) ~THEN BEGIN SanIsNoSold
SAY@0
IF~~THEN DO~
SetGlobal("SanNoSold","LOCALS",2)
SetGlobal("SandrahJoined","GLOBAL",20)
LeaveParty()
EscapeAreaMove("AR4230",4718,3008,9)~EXIT
END
END

INTERJECT_COPY_TRANS CBSOUMJ3 6 SanCounsG
==CBSOUMJ3 IF~InParty("CVSandr")~THEN@1
== CVSANDRJ IF~InParty("CVSandr")~THEN@2
==CBSOUMJ3 IF~InParty("CVSandr")~THEN@3
== CVSANDRJ IF~InParty("CVSandr")~THEN@4
==CBSOUMJ3 IF~InParty("CVSandr")~THEN@5
END

INTERJECT_COPY_TRANS CBSOUMJ3 34 SanCounsHT
==CBSOUMJ3 IF~InParty("CVSandr")~THEN@6
== CVSANDRJ IF~InParty("CVSandr")~THEN@7
==CBSOUMJ3 IF~InParty("CVSandr")~THEN@8
END

INTERJECT_COPY_TRANS CBISSON2 1  SanMeetIss0n1
== CVSANDRJ IF~InParty("CVSandr") Global("SanMeetIss0n2","GLOBAL",0)~THEN@9
== CBISSON2 IF~InParty("CVSandr") Global("SanMeetIss0n2","GLOBAL",0)~THEN@10
== CVSANDRJ IF~InParty("CVSandr") Global("SanMeetIss0n2","GLOBAL",0)~THEN@11
END

INTERJECT_COPY_TRANS CBISSON2 7  SanMeetIss0n2
== CVSANDRJ IF~InParty("CVSandr") Global("SanMeetIss0n1","GLOBAL",0)~THEN@9
== CBISSON2 IF~InParty("CVSandr") Global("SanMeetIss0n1","GLOBAL",0)~THEN@10
== CVSANDRJ IF~InParty("CVSandr") Global("SanMeetIss0n1","GLOBAL",0)~THEN@11
END

EXTEND_BOTTOM CBSouMJ1 2
IF~Global("SandrahJoined","GLOBAL",20) Global("SoubarStuffWarning","GLOBAL",1)~THEN REPLY@12GOTO 77a
END

EXTEND_BOTTOM CBSouMJ1 34
IF~Global("SanSoubarPLC","GLOBAL",1)~THEN GOTO 78a
END

APPEND  CBSouMJ1
IF~~THEN BEGIN 77a
SAY@13
IF~~THEN REPLY@14GOTO 77b
END

IF~~THEN BEGIN 78a
SAY@15
IF~~THEN DO~AddexperienceParty(15000) SetGlobal("CbFarmPatrolDuty","AR4286",6) SetGlobal("CbPartyIsInSoubarMilitia","GLOBAL",2)~EXIT
END

IF~~THEN BEGIN 77b
SAY@16
=@17
=@18
=@19
=@20
IF~~THEN REPLY@21DO~GiveItemCreate("cbmilt01",Player1,1,0,0) ~GOTO 77c
IF~~THEN REPLY@22DO~GiveItemCreate("cbmilts1",Player1,1,0,0) ~GOTO 77c
END

IF~~THEN BEGIN 77c
SAY@23
=@24
=@25
=@26
=@27
=@28
IF~~THEN REPLY@29DO~CreateCreatureObjectOffset("CBSOUSGT",Myself,[-20.-25]) SetGlobal("CbPartyIsInSoubarMilitia","GLOBAL",1) SetGlobal("SanSoubarPLC","GLOBAL",1) ~EXIT
END
END

EXTEND_BOTTOM CBSouMJ2 54
IF~Global("SanSoubarPLC","GLOBAL",1)~THEN GOTO 54a
END

APPEND CBSouMJ2
IF~~THEN BEGIN 54a
SAY@30
IF~~THEN DO~SetGlobal("CbPartyIsInSoubarMilitia","GLOBAL",5) SetGlobal("CbDeactivateOtherCaptains","GLOBAL",1) SetGlobal("CbPartyHuntsSpy","GLOBAL",3) SetGlobal("CbASpyEscaped","GLOBAL",1) CreateCreatureOffScreen("CB287CPT",0)~EXIT
END
END

APPEND CB287CPT
IF WEIGHT #-1~Global("SanSoubarPLC","GLOBAL",1) Global("CbPartyIsInSoubarMilitia","GLOBAL",5) Global("CbCaptainPromotion","LOCALS",0) ~THEN BEGIN San1
SAY@31
IF~~THEN DO~SetGlobal("CbCaptainPromotion","LOCALS",1)~EXIT
END
END

ADD_TRANS_TRIGGER CBSirrus 79
~Global("SanSoubarPLC","GLOBAL",0)~

EXTEND_BOTTOM CBSirrus 79
IF ~Global("SanSoubarPLC","GLOBAL",1)~THEN REPLY @32GOTO 80s
IF ~Global("SanSoubarPLC","GLOBAL",1)~THEN REPLY @33EXTERN CVSandrJ 80N
END

APPEND CBSirrus
IF~~THEN BEGIN 80s
SAY@34
IF~~THEN DO~SetGlobal("CbPromotePartyLieutenant","GLOBAL",2) AddexperienceParty(12000) SetGlobal("CbPartyIsInSoubarMilitia","GLOBAL",7)~EXIT
END
END

CHAIN
IF~~THEN CVSandrJ 80N
@35
==CBSirrus@36
DO~SetGlobal("CbPromotePartyLieutenant","GLOBAL",2) AddexperienceParty(12000)SetGlobal("CbPartyIsInSoubarMilitia","GLOBAL",7)~EXIT

ADD_TRANS_TRIGGER CBgaius1 11
~Global("SanSoubarPLC","GLOBAL",0)~

EXTEND_BOTTOM CBgaius1 11
IF ~Global("SanSoubarPLC","GLOBAL",1)~THEN REPLY @32GOTO 80t
IF ~Global("SanSoubarPLC","GLOBAL",1)~THEN REPLY @33EXTERN CVSandrJ 80G
END

APPEND CBgaius1
IF~~THEN BEGIN 80t
SAY@34
IF~~THEN DO~SetGlobal("CbPromotePartyLieutenant","GLOBAL",2) AddexperienceParty(12000)SetGlobal("CbPartyIsInSoubarMilitia","GLOBAL",7)~EXIT
END
END

CHAIN
IF~~THEN CVSandrJ 80G
@35
==CBgaius1@36
DO~SetGlobal("CbPromotePartyLieutenant","GLOBAL",2) AddexperienceParty(12000)SetGlobal("CbPartyIsInSoubarMilitia","GLOBAL",7)~EXIT

ADD_TRANS_TRIGGER CBSirrus 88
~Global("SanSoubarPLC","GLOBAL",0)~

EXTEND_BOTTOM CBSirrus 88
IF ~Global("SanSoubarPLC","GLOBAL",1)~THEN GOTO 89S
END

ADD_TRANS_TRIGGER CBSirrus 90
~Global("SanSoubarPLC","GLOBAL",0)~

EXTEND_BOTTOM CBSirrus 90
IF ~Global("SanSoubarPLC","GLOBAL",1)~THEN GOTO 89S
END

APPEND CBSirrus
IF~~THEN BEGIN 89S
SAY@37
IF~~THEN DO~SetGlobal("CbPartyLeaderBecomesMayor","GLOBAL",3) AddexperienceParty(200000)AddXPObject(Player1,100000) SaveGame(0)~EXIT
END
END

ADD_TRANS_TRIGGER CBSoumj3 60
~Global("SanSoubarPLC","GLOBAL",0)~

EXTEND_BOTTOM CBSoumj3 60
IF ~Global("SanSoubarPLC","GLOBAL",1)~THEN DO ~SetGlobal("CbPartyLeaderBecomesMayor","GLOBAL",3) AddexperienceParty(200000)AddXPObject(Player1,100000) SaveGame(0)~EXIT
END
