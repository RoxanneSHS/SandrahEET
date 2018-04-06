APPEND CVSANDRJ

//Soubar Join Army
IF~ Global("SanNoSold","LOCALS",1) ~THEN BEGIN SanIsNoSold
SAY~ Please excuse me for a minute, <CHARNAME>, I will wait for you outside. I have a certain antipathy for these soldier attitudes.~
IF~~THEN DO~
SetGlobal("SanNoSold","LOCALS",2)
SetGlobal("SandrahJoined","GLOBAL",20)
LeaveParty()
EscapeAreaMove("AR4230",4718,3008,9)~EXIT
END
END

INTERJECT_COPY_TRANS CBSOUMJ1 27 SanCouns
==CBSOUMJ1 IF~ InParty("CVSandr")~ THEN~ YOUNG LADY!! WHO MIGHT YOU BE AND WHY ARE YOU NOT IN ARMOUR ACCORDING TO THE REGULATIONS?~
== CVSANDRJ IF~ InParty("CVSandr")~ THEN~ Major, Sir, may I remind you of regulation 425-9-8 point 41, Sir. It exempts counsellors of wearing army supplied equipment.~
==CBSOUMJ1 IF~ InParty("CVSandr")~ THEN~ A counsellor. Well, in this case...NO, WAIT!! Counsellors may be engaged by commanding officers only, not by a simple private.~
== CVSANDRJ IF~ InParty("CVSandr")~ THEN~ (Smiles gently at the major) Sir, were you not just about to promote <CHARNAME>?~
==CBSOUMJ1 IF~ InParty("CVSandr")~ THEN~ (The major's grim face shows a slight smile as well.) You are in deed a clever little counsellor, girl. The city needs helpers like you at the moment. PRIVATE, THE ARMY WILL NOT COMPENSATE FOR YOUR counsellor NOR EQUIP HER BY ANY MEANS. KEEPING HER IS AT YOUR OWN EXPENSE!~
END

INTERJECT_COPY_TRANS CBSOUMJ3 6 SanCounsG
==CBSOUMJ3 IF~ InParty("CVSandr")~ THEN~ (The major smiles at Sandrah) I am quite aware, young lady, that the quick progress of our new captain has a bit to do with the support by his counsellor.~
== CVSANDRJ IF~ InParty("CVSandr")~ THEN~ (Smiles gently at the major) Thank you for this compliment, Sir. Do not forget the rest of our companions who have each contributed their share.~
==CBSOUMJ3 IF~ InParty("CVSandr")~ THEN~ It is easy to forget about much everything in the presence of a lovely lady such as you, Sandrah.~
== CVSANDRJ IF~ InParty("CVSandr")~ THEN~ (Sandrah secretly slips away the folded note the major has let drop into her hand while shaking it.)~
==CBSOUMJ3 IF~ InParty("CVSandr")~ THEN~ I hope to see you soon, my lady.~
END

INTERJECT_COPY_TRANS CBSOUMJ3 34 SanCounsHT
==CBSOUMJ3 IF~ InParty("CVSandr")~ THEN~ (The major winks at Sandrah) You will surely come up with the best decision having such a lovely counsellor to assist you. (Sighs) How I envy you for that.~
== CVSANDRJ IF~ InParty("CVSandr")~ THEN~ (Whispers to the major) Do not complain, Sergio, be happy with what has been so far - and what will be when we return triumphant.~
==CBSOUMJ3 IF~ InParty("CVSandr")~ THEN~ (Blows Sandrah a secret kiss.) ~
END

INTERJECT_COPY_TRANS CBISSON2 1  SanMeetIss0n1
== CVSANDRJ IF~ InParty("CVSandr") Global("SanMeetIss0n2","GLOBAL",0)~ THEN~ So now we meet the guy who has caused us so much headache with all the open issues he left us to resolve all over the Realms.~
== CBISSON2 IF~ InParty("CVSandr") Global("SanMeetIss0n2","GLOBAL",0)~ THEN~ Beautiful lady, if I am not completely mistaken you have enjoyed yourself quite a bit on each of my little riddles.~
== CVSANDRJ IF~ InParty("CVSandr") Global("SanMeetIss0n2","GLOBAL",0)~ THEN~ Keep on setting them up for us and you will find a capable party to deal with them. A pleasure to meet you.~
END

INTERJECT_COPY_TRANS CBISSON2 7  SanMeetIss0n2
== CVSANDRJ IF~ InParty("CVSandr") Global("SanMeetIss0n1","GLOBAL",0)~ THEN~ So now we meet the guy who has caused us so much headache with all the open issues he left us to resolve all over the Realms.~
== CBISSON2 IF~ InParty("CVSandr") Global("SanMeetIss0n1","GLOBAL",0)~ THEN~ Beautiful lady, if I am not completely mistaken you have enjoyed yourself quite a bit on each of my little riddles.~
== CVSANDRJ IF~ InParty("CVSandr") Global("SanMeetIss0n1","GLOBAL",0)~ THEN~ Keep on setting them up for us and you will find a capable party to deal with them. A pleasure to meet you.~
END

EXTEND_BOTTOM CBSouMJ1 2
IF~Global("SandrahJoined","GLOBAL",20) Global("SoubarStuffWarning","GLOBAL",1)~THEN REPLY~I'm here to help the town according to my best abilities, sir. For that purpose I need mine and my companions full equipment and facilities.~GOTO 77a
END

EXTEND_BOTTOM CBSouMJ1 34
IF~Global("SanSoubarPLC","GLOBAL",1)~THEN GOTO 78a
END

APPEND  CBSouMJ1
IF~~THEN BEGIN 77a
SAY~Young man...~
IF~~THEN REPLY~Sir, with all respect, sir, my most valuable companion, Elminster's own daughter, already has chosen to stay outside for just such reasons. We are REALLY dedicated to help Soubar and I will follow any reasonable commands you have for us but I will not waste our time on useless military drill.~GOTO 77b
END

IF~~THEN BEGIN 78a
SAY~Sergeant, as your last duty commanding these fine soldiers, would you please complete the paperwork for their promotion?~
IF~~THEN DO~ AddexperienceParty(15000) SetGlobal("CbFarmPatrolDuty","AR4286",6) SetGlobal("CbPartyIsInSoubarMilitia","GLOBAL",2)~EXIT
END

IF~~THEN BEGIN 77b
SAY~Elminster's daughter...hm...and your own reputation from the Sword Coast...hm...~
=~Well, young man, I see the major was erring when he thought we could fit you into the militia's ranks just like that. Probably it's even more reasonable for the tasks at hand to let you NOT wear official uniforms...~
=~Now, I realize that you are much more skilled than some of the other members of the Soubar militia, and I apologize for the orders which I need to give to you if they seem below your skill, but you must realize that you need to work your way through the ranks, and as you gain promotions, your orders will reflect your rank within the guard. ~
=~We will need to keep up a minimum of discipline regardless of your status. First rule, you will address me as *Sir*. Second rule, you will wear the Soubar militia uniform on official occasions.~
=~Third rule, you will hold the rank of private - unless the execution of your duties values a promotion later on.~
IF~~THEN REPLY~ Yes, Sir!~DO~GiveItemCreate("cbmilt01",Player1,1,0,0) ~ GOTO 77c
IF~~THEN REPLY~ That's fine with me, eh...I mean, eh...yes,Sir!~DO~GiveItemCreate("cbmilts1",Player1,1,0,0) ~ GOTO 77c
END

IF~~THEN BEGIN 77c
SAY~As a private, you are not particularly valuable to me, so your orders may be difficult and dangerous, but I'm sure that a skilled adventurer like yourself can pull through with little trouble.~
=~With that said, I will start you off with a simple and boring mission.  Road patrol on the northern outskirts of Soubar.~
=~I'll have Sergeant bring you up to the north road, and all I'll need you to do is patrol it.  Watch for bandits, and if any come, sound the alert.  I will instruct Sergeant to remain close by, along with reinforcements if needed there.  If bandits do attempt to enter the town, you should defend yourselves and the town until the reinforcements come to your aid.~
=~Try not to let anyone die, as it will not reflect well on your record.  Above all, do not let any townsfolk be slaughtered by bandit incursions.  If any citizens are killed, the Mayor will force me to remove you from the militia.  So don't let that happen.~
=~Sergeant!  Come here! ~
=~(Winks) Don't let me down, Private.  Dismissed!~
IF~~THEN REPLY~SIR, YES, SIR!~DO~ CreateCreatureObjectOffset("CBSOUSGT",Myself,[-20.-25]) SetGlobal("CbPartyIsInSoubarMilitia","GLOBAL",1) SetGlobal("SanSoubarPLC","GLOBAL",1) ~EXIT
END
END

EXTEND_BOTTOM CBSouMJ2 54
IF~Global("SanSoubarPLC","GLOBAL",1)~THEN GOTO 54a
END

APPEND CBSouMJ2
IF~~THEN BEGIN 54a
SAY~As a commissioned officer, you have now officially the rights to your own equipment and uniform, though I would appreciate it if you did wear something appropriate for your rank. ~ 
IF~~THEN DO~SetGlobal("CbPartyIsInSoubarMilitia","GLOBAL",5) SetGlobal("CbDeactivateOtherCaptains","GLOBAL",1) SetGlobal("CbPartyHuntsSpy","GLOBAL",3) SetGlobal("CbASpyEscaped","GLOBAL",1) CreateCreatureOffScreen("CB287CPT",0)~EXIT
END
END

APPEND CB287CPT
IF WEIGHT #-1~Global("SanSoubarPLC","GLOBAL",1) Global("CbPartyIsInSoubarMilitia","GLOBAL",5) Global("CbCaptainPromotion","LOCALS",0) ~THEN BEGIN San1
SAY~ You should be pleased with yourself, Sergeant.  This is a big step forward for any soldier!  Welcome to the ranks of commissioned officer, Captain!~
IF~~THEN DO~SetGlobal("CbCaptainPromotion","LOCALS",1)~EXIT
END
END

ADD_TRANS_TRIGGER CBSirrus 79
~Global("SanSoubarPLC","GLOBAL",0)~

EXTEND_BOTTOM CBSirrus 79
IF ~Global("SanSoubarPLC","GLOBAL",1)~ THEN REPLY ~Yes, Your Honor.~ GOTO 80s
IF ~Global("SanSoubarPLC","GLOBAL",1)~ THEN REPLY ~No, Mayor Melandor.  I cannot take that appointment.  I am sorry, but I must return to Athkatla.  I have much work to do there, and I must go.~EXTERN CVSandrJ 80N
END

APPEND CBSirrus
IF~~THEN BEGIN 80s
SAY~Most excellent. Then without further ado, I hereby appoint you to Chief Lieutenant of Soubar.  Perform your duties well, Lieutenant, and you shall be rewarded.~
IF~~THEN DO~SetGlobal("CbPromotePartyLieutenant","GLOBAL",2) AddexperienceParty(12000) SetGlobal("CbPartyIsInSoubarMilitia","GLOBAL",7)~EXIT
END
END

CHAIN
IF~~THEN CVSandrJ 80N
~<CHARNAME>, we are no deserters. We are here and we have taken responsibility. The return to Athkatla may wait a day or three still, right?~
==CBSirrus~Most excellent. Then without further ado, I hereby appoint you, <CHARNAME> of Candlekeep to Chief Lieutenant of Soubar.  Perform your duties well, Lieutenant, and you shall be rewarded.~
DO~SetGlobal("CbPromotePartyLieutenant","GLOBAL",2) AddexperienceParty(12000)SetGlobal("CbPartyIsInSoubarMilitia","GLOBAL",7)~EXIT

ADD_TRANS_TRIGGER CBgaius1 11
~Global("SanSoubarPLC","GLOBAL",0)~

EXTEND_BOTTOM CBgaius1 11
IF ~Global("SanSoubarPLC","GLOBAL",1)~ THEN REPLY ~Yes, Your Honor.~ GOTO 80t
IF ~Global("SanSoubarPLC","GLOBAL",1)~ THEN REPLY ~No, Mayor Melandor.  I cannot take that appointment.  I am sorry, but I must return to Athkatla.  I have much work to do there, and I must go.~EXTERN CVSandrJ 80G
END

APPEND CBgaius1
IF~~THEN BEGIN 80t
SAY~Most excellent. Then without further ado, I hereby appoint you to Chief Lieutenant of Soubar.  Perform your duties well, Lieutenant, and you shall be rewarded.~
IF~~THEN DO~SetGlobal("CbPromotePartyLieutenant","GLOBAL",2) AddexperienceParty(12000)SetGlobal("CbPartyIsInSoubarMilitia","GLOBAL",7)~EXIT
END
END

CHAIN
IF~~THEN CVSandrJ 80G
~<CHARNAME>, we are no deserters. We are here and we have taken responsibility. The return to Athkatla may wait a day or three still, right?~
==CBgaius1~Most excellent. Then without further ado, I hereby appoint you, <CHARNAME> of Candlekeep to Chief Lieutenant of Soubar.  Perform your duties well, Lieutenant, and you shall be rewarded.~
DO~SetGlobal("CbPromotePartyLieutenant","GLOBAL",2) AddexperienceParty(12000)SetGlobal("CbPartyIsInSoubarMilitia","GLOBAL",7)~EXIT

ADD_TRANS_TRIGGER CBSirrus 88
~Global("SanSoubarPLC","GLOBAL",0)~

EXTEND_BOTTOM CBSirrus 88
IF ~Global("SanSoubarPLC","GLOBAL",1)~ THEN GOTO 89S
END

ADD_TRANS_TRIGGER CBSirrus 90
~Global("SanSoubarPLC","GLOBAL",0)~

EXTEND_BOTTOM CBSirrus 90
IF ~Global("SanSoubarPLC","GLOBAL",1)~ THEN GOTO 89S
END

APPEND CBSirrus
IF~~THEN BEGIN 89S
SAY~Very well, <CHARNAME>, I hereby appoint you to the position of Mayor of Soubar.  Perform your function well, your honor!~
IF~~THEN DO~SetGlobal("CbPartyLeaderBecomesMayor","GLOBAL",3) AddexperienceParty(200000)AddXPObject(Player1,100000) SaveGame(0)~EXIT
END
END

ADD_TRANS_TRIGGER CBSoumj3 60
~Global("SanSoubarPLC","GLOBAL",0)~

EXTEND_BOTTOM CBSoumj3 60
IF ~Global("SanSoubarPLC","GLOBAL",1)~ THEN DO ~ SetGlobal("CbPartyLeaderBecomesMayor","GLOBAL",3) AddexperienceParty(200000)AddXPObject(Player1,100000) SaveGame(0)~EXIT
END
