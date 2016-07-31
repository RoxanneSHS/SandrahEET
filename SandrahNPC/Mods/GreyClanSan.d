BEGIN  SANLIND

CHAIN
IF ~ NumTimesTalkedTo(0) ~ THEN SANLIND 1
~ Foolish as before, the spy dares to return.~
==BSANDR ~ Ah, it is only you, Lyndy, the worst apprentice sorceress in the academy.~
==SANLIND ~ High Sorceress Lyndy by now. Times have changed a bit. I have gained some skills by now, other than you, dilletante spy and dilletante priestess.~
==BSANDR ~ We will see. At least our skills have brought us into here. And by the front door.~
==SANLIND ~ You have destroyed my latest creation? My myconide watcher? You will pay for that!~
DO ~ ChangeEnemyAlly("sanlind",ENEMY) ChangeAIScript("CVAkaWiz",OVERRIDE)~ EXIT

BEGIN SANRENA

CHAIN
IF ~ NumTimesTalkedTo(0) ~ THEN SANRENA 1
~ My pretty little favourite enemy! What a nice surprise.~
== BSANDR ~ Surprise - yes ~
= ~ Enemy - yes ~
= ~ Nice - no ~
= ~ Congratulations, Renata, two out of three correct! You have really improved.~
== SANRENA ~ Little Miss Arrogance. Always the best in the classroom, always the teacher's pet. Until the nasty spy was found out. You must have a nerve to appear here once again.~
== BSANDR ~ It was a mistake to leave here while there was still unfinished business. We have come back to correct this mistake.~
== SANRENA ~ This time Miss Know-it-all has failed the test. Sorry, but your comeback is the mistake here, and it cannot be corrected anymore.~
DO ~ ChangeEnemyAlly("sanrena",ENEMY) ChangeAIScript("CVAkaWiz",OVERRIDE) ~ EXIT

APPEND  CVSANDRJ

IF~Global("SanJey","LOCALS",1)~THEN BEGIN SanJeyTakeQ1
SAY~ General Jeydan is an acquaintance of my father whom I saw in Waterdeep quite often. He is a largely respected man and leader, especially in troubled times like these.~
IF~~THEN REPLY~ To have him as ally would be of advantage for us, is that what you mean?~DO~SetGlobal("SanJey","LOCALS",2)~ GOTO SanJeyTakeQ2
IF~~THEN REPLY~ We have gained quite a reputation if a man like him searches our support, don't you think so?~ DO~SetGlobal("SanJey","LOCALS",2)~ GOTO SanJeyTakeQ3
END

IF~~ THEN BEGIN SanJeyTakeQ2
SAY~ Exactly. At least it would not hurt us to look for his man near the Hall of Wonders and learn more about this Grey Clan.~
IF~~THEN REPLY~ Hm, the Hall of Wonders is just around the corner. I'm just afraid that the story will not end there and may lead us far away from our current quest. Let's find out, we're not yet commited to support them.~EXIT
END

IF~~ THEN BEGIN SanJeyTakeQ3
SAY~ He did not ask directly for our support and would probably be able to handle the case with his elite fists alone. It is us who may gain their respect and support - if we help them now they may help us later against our foe.~
IF~~THEN REPLY~ I see. At least it would not hurt us to look for his man near the Hall of Wonders and learn more about this grey clan.~EXIT
IF~~THEN REPLY~ Hm, the Hall of Wonders is just around the corner. I'm just afraid that the story will not end there and may lead us far away from our current quest. Let's find out, we're not yet commited to support them.~EXIT
END

// Academy Mission

IF ~ Global("SanGCE","GLOBAL",1)~ THEN BEGIN SanGCELi1
SAY ~ So, so, the Sorceress Linda. Or by now *High* Sorceress Linda, as it seems.~
IF~~THEN REPLY ~ Obviously someone from your past. According to your tone, not someone you are really happy to meet again.~ GOTO SanGCELi2
END

IF ~~ THEN BEGIN SanGCELi2
SAY ~ You are absolutely right, <CHARNAME>. And I smell more trouble here than just an organisation of some bandit groups. Still it is too early to tell. Linda may just be here on her own and may no longer be a member of the Academy.~
IF ~~ THEN REPLY ~ And what will one or the other mean for us?~ DO ~ SetGlobal("SanGCE","GLOBAL",1)~ GOTO SanGCELi3
END

IF ~~ THEN BEGIN SanGCELi3
SAY ~ We met at the Academy of Legencase, once a renown institution for the magic skills. But it came into a corrupted leadership and more and more involved in criminal activities.~
IF ~~ THEN REPLY ~ A strange place to study, I mean - for Elminster's daughter.~ DO ~ SetGlobal("SanGCE","GLOBAL",2)~GOTO SanGCELi4
END

IF ~~ THEN BEGIN SanGCELi4
SAY ~ You are right. I was there more or less on a secret mission. My father had heard rumours about some strange activities in which the academy was involved. I was there to study but also to keep my eyes open for him.~
IF ~~ THEN REPLY ~ A little spy. And your father really let you go on such a dangerous mission? Well, I guess he must have known you and your abilities.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanGCELi5
IF ~~ THEN REPLY ~ And did you find out something?~ GOTO SanGCELi5
END

IF ~~ THEN BEGIN SanGCELi5
SAY ~ I did not find out enough at the time before I was unmasked and had to flee with the help of my father's magic. But simply the case that they were afraid of a spy already confirmed the suspicions.~
IF ~~ THEN REPLY ~ So this sorceress might just have finished her education and is hired by the Grey Clan now or the Academy itself might be involved here.~ EXIT
IF ~~ THEN REPLY ~ Interesting, but we do not know enough to draw any conclusion yet.~ EXIT
END

IF ~ Global("SanGCE","GLOBAL",3) ~ THEN BEGIN SanGCExe1
SAY ~ Xephistagoras? ~
IF ~~ THEN REPLY ~ Uuh, what a monster. Did your father really send his little girl to spy against such a creature. It is hard to believe.~ GOTO SanGCExe2
END

IF ~~ THEN BEGIN SanGCExe2
SAY ~ No, <CHARNAME>, this necromancer is of a different category. At least during my time at the Academy he was not there. I need to consult my book about him, as soon as we find a quiet moment later on.~
IF ~~ THEN REPLY ~ Fine. Let us continue to explore what is going on here.~DO ~ SetGlobal("SanGCE","GLOBAL",4)~ EXIT
END

IF ~ Global("SanAcadMission","GLOBAL",1)~ THEN BEGIN AcadMi1
SAY ~ *Sandrah looks expectantly at you.*~
IF~~THEN REPLY ~ You are right, the risk is high. But on the other hand the chances to strike against a cunning opponent like that will never be better. They are weakened already and surely do not expect us to be able to follow them to their lair. What do you think, Sandrah?~  DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO  AcadMi2
IF~~THEN REPLY ~ You are right, the risk is high and we have already gone as far as we could in assisting the Dukes with this affair. There is still my own quest that I have to think of. Would you agree to that, Sandrah?~ GOTO AcadMi2
END

IF~~THEN BEGIN AcadMi2
SAY ~ <CHARNAME>, the decision will finally be yours. I would counsel you not to take it prematurely. In any way we would need to go to Waterdeep to see my father as we cannot accomplish the trip without his help. So why not go to Waterdeep on this and our other issues and seek for my father's advice as well. When you have listened to all possibilities and arguments, you will come to an educated decision.~
IF~~THEN REPLY ~ Isn't it time anyway to take a trip to Waterdeep once again. We will do as you say, Sandrah. Let us hear Elminster on the case and then make a common decision in the group.~ DO ~ SetGlobal("SanAcadMission","GLOBAL",2) IncrementGlobal("Sanpoints","GLOBAL",1) RealSetGlobalTimer("SanAcadMissionT","GLOBAL",6000)~ EXIT
IF~~THEN REPLY ~ You are right. Now is the chance to strike down these evil fiends before they have time to regather forces and start the whole thing again. We should urgently return to Waterdeep and convince your father to send us to Legencase.~  DO ~ SetGlobal("SanAcadMission","GLOBAL",2) IncrementGlobal("Sanpoints","GLOBAL",1) RealSetGlobalTimer("SanAcadMissionT","GLOBAL",6000)~ EXIT
IF~~THEN REPLY~ You all said, that our foe will need quite some time to lick their wounds from the blow we dealt them. So it is not so pressing to follow them right now. We may consider it, should our way by chance lead us to Waterdeep again.~DO ~ SetGlobal("SanAcadMission","GLOBAL",2) RealSetGlobalTimer("SanAcadMissionT","GLOBAL",6000)~ EXIT
END

IF ~ Global("SanAkadMistake","GLOBAL",1)~ THEN BEGIN AkadMist1
SAY ~ *Sandrah looks disturbed as the realises where you have materialised.* ~
= ~ This is the Academy entrance over there. Something must have gone wrong.~
IF~~THEN REPLY ~ Yes, your father has fooled us! He sent us on this mission without our consent.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",-2)~ GOTO AkadMist2
IF~~THEN REPLY ~ Do you have any idea. I do not believe your father has sent us here against our will. Something else has led us here.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO AkadMist3
END

IF~~THEN BEGIN  AkadMist2
SAY ~ <CHARNAME>, please! I understand that you are upset. But do not doubt my father like this. You should know him better by now. Please.~
IF~~THEN REPLY ~ Mh. Yes. Sorry...but do you have a better explanation? ~GOTO AkadMist3
END

IF~~THEN BEGIN  AkadMist3
SAY ~ I think it is me who has to take the full blame here. I still carry the fibula on me. It must have used my fathers teleportation energy for the destination it was supposed to carry its owner to. Which is the Academy.~
IF~~THEN REPLY~ Who could have thought of this? I guess you cannot be blamed, Sandrah. I do not blame you, so please do not be too hard with yourself about it. We need your full strength now to get through here and out again.~ DO ~ IncrementGlobal("Sanpoints","GLOBAL",1) SetGlobal("SanAkadMistake","GLOBAL",2)~ EXIT
END

END

//Grey Clan Academy

INTERJECT_COPY_TRANS BW05BL02 1 FaceLinda
== CVSandrJ IF ~ InParty("CVSandr") ~ THEN ~ Looks like a bad day for the wannabe sorceress Linda.~
== BW05LIND IF ~ InParty("CVSandr") ~ THEN ~ Heavens, the mage's spying daughter. You dare to cross the Academy's ways once again, foolish little girl?~
== CVSandrJ IF ~ InParty("CVSandr") ~ THEN ~ So it is not just you hiring out to this Grey Clan but the Academy itself. ~
== BW05LIND IF ~ InParty("CVSandr") ~ THEN ~ Whom do you spy for this time, Sandrah of Waterdeep? You seem to have forgotten all the lessons Legencase taught you.~
== BW05BL02 IF ~ InParty("CVSandr") ~ THEN ~ This must be <CHARNAME>'s party then. You have a talent to cross Sarevok's path always at the wrong time. He will be very grateful if I report your death to him today.~
== CVSandrJ IF ~ InParty("CVSandr") ~ THEN ~ Do not forget to include into the report the fact, that the plans for the alliance between the Grey Clan and the Iron Throne have failed.~
== BW05LIND IF ~ InParty("CVSandr") ~ THEN ~ Now let us see which of us has learned her lessons better, the disciple of the glorious Academy or the pupil of that archfool Elminster.~
END


INTERJECT_COPY_TRANS BW05MONI 3 Acaspy
== BW05MONI IF ~ InParty("CVSandr") ~ THEN ~ Crazy charade. You have this little apprentice spy with you. Sandrah, you are foolish enough to stand up against the Acedemy of Legencase once again. But daddy cannot help you this time, this place is hidden even from him. He will not even know when you are dead in a few moments.~
== CVSandrJ IF ~ InParty("CVSandr") ~ THEN ~ This group of <CHARNAME> has crossed all your plans on the Sword Coast by now. Such silly magelings like Linda, Octavia and Petrarca will not be able to stop us.~
== BW05MONI IF ~ InParty("CVSandr") ~ THEN ~Sad. Our academy is known for its splendid results. You should have learned your lesson there. You cannot stop us, foolish little girl. You did not listen to the lecture then, you will learn the hard way now.~
== CVSandrJ IF ~ InParty("CVSandr") ~ THEN ~ You will see how much you err, when we personally will deliver what will be left of your intrigue against Baldur's Gate to your own doorstep. I will bring you the remains of your lackeys to Legencase.~
== BW05MONI IF ~ InParty("CVSandr") ~ THEN ~A madness that runs in the family and which will be the end of father and daughter alike.~
END

INTERJECT_COPY_TRANS BW05TERG 26 Acaspy2
== CVSandrJ IF ~ InParty("CVSandr") PartyHasItem("SANAKAK") ~ THEN ~ There may exist another possibility to get to the source of this evil.~
== BW05TERG IF ~ InParty("CVSandr") ~ THEN ~ I have noticed you before, little priestess, but we were too busy to rightly introduce ourselves. You are Elminster's child if I am not mistaken.~
== CVSandrJ IF ~ InParty("CVSandr") ~ THEN ~ Yes, I am Sandrah. You must know that I have been to Legencase and the Academy already two summers passed.~
== BW05TERG IF ~ InParty("CVSandr") ~ THEN ~ Really? Pray tell us more about that. Let us see if we really have a chance to persue this evil further.~
== CVSandrJ IF ~ InParty("CVSandr") ~ THEN ~ The Academy was once renowned for its excellent education in the magic arts, especially focussed on priests and healing spells. Some summers ago however the current head mistress, Monica, whom we met briefly inside this trap, took over responsibility. Alarming news reached my father's ear, there was talk about a shift in focus to educate battle mages and the like now.~
= ~ One source provided us with the report that the Academy had even provided a batallion of battle mages to a local war in Suzail. After a long discussion my father finally agreed to send me to the Academy disguised as a novice. He provided me with an emergency spell for escape in case of danger and an endless fatherly advice of how to tread careful as a spy.~
== BIMOEN IF ~InParty("Imoen2") InParty("CVSandr")~ THEN ~ Oh, how thrilling, a real spy! How I envy you, Sandrah!~
== CVSandrJ IF ~ InParty("CVSandr") ~ THEN ~ I gathered a lot of information way then, but I was finally found out by Monica when I overheard her negotiations with an ambassador trying to hire the new services of the academy for a revolt against his Duke. I could just escape with the device from my father.~
== BW05TERG IF ~ InParty("CVSandr") ~ THEN ~ You are a remarkably brave young girl, Sandrah, althought you made yourself a mighty enemy. Was it really worth the hugh risk you took?~
== CVSandrJ IF ~ InParty("CVSandr") ~ THEN ~ We may find the worth of my venture right now. Even when my father and his friends could do little to stop Monica and her dealings back then, I gathered enough insider information that could help us now. But more important is that we found this fibula on one of the sorceresses we had to defeat.~
== BW05TERG IF ~ InParty("CVSandr") ~ THEN ~ And you know what it is and how we may use it for our advantage.~
== CVSandrJ IF ~ InParty("CVSandr") ~ THEN ~ It is an identification symbol but also a transportation keystone of some sorts. Even though we cannot locate the exact location of the Academy, I assume that my father can imitate the recall spell with help of Mystra's shard.~
== BW05TERG IF ~ InParty("CVSandr") ~ THEN ~ What would that mean, Sandrah?~
== CVSandrJ IF ~ InParty("CVSandr") ~ THEN ~ It means that my father could transport a limited party (She looks thoughtfully at you) of brave fighters to the Academy entrance. With the knowledge of someone who had been there already, it may be possible to put an end to the machinations of the Academy's head mistress.~
== BW05TERG IF ~ InParty("CVSandr") ~ THEN ~ <CHARNAME> and you have already proven your worth in this matter and have done much more than could be expected from anyone in the Realms. I would not dare to ask you to agree to such a risky mission.~ DO ~ SetGlobal("SanAcadMission","GLOBAL",1) ~
END

APPEND BW05TERG
IF ~ Global("SanMoniAka","GLOBAL",2) ~ THEN BEGIN  tergMoniAka1
SAY ~ Elminster's daughter and <CHARNAME> have returned and it seems unharmed. Good news is written on your faces, my friends.~
IF ~~THEN REPLY ~ We were indeed successful. The academy and its head mistress Monica are destroyed.~GOTO tergMoniAka2
IF ~~ THEN REPLY ~ Another little victory for the Sword Coast has been accomplished. The intrigue of Legencase has been ended.~ GOTO tergMoniAka3
END

IF ~~ THEN BEGIN  tergMoniAka2
SAY ~ Splendid. Did you find out what was behind it?~
IF~~THEN REPLY ~ We found parts of a journal kept by the high sorceresses of Legencase. They had a plan to replace major figures in Baldur's Gate, ultimately the Dukes themselves.~ DO ~ TakePartyItem("SanAkJo")AddexperienceParty(32500) ~  GOTO tergMoniAka4
END

IF ~~ THEN BEGIN  tergMoniAka3
SAY ~ Splendid. Did you face the head mistress herself? Was she involved in the plot?~
IF~~THEN REPLY ~ The academy and its head mistress Monica are destroyed. We found parts of a journal kept by the high sorceresses of Legencase. They had a plan to replace major figures in Baldur's Gate, ultimately the Dukes themselves.~ DO ~ TakePartyItem("SanAkJo") AddexperienceParty(32500) ~ GOTO tergMoniAka4
END

IF ~~ THEN BEGIN  tergMoniAka4
SAY ~ We will study the evidence thoroughly. Only in this way we can prevent similar events in the future.~
IF ~~ THEN EXTERN CVSANDRJ TergMoniXe
END
END

APPEND BW05MONI
IF WEIGHT #-2~ Global("MoniExitPlat","LOCALS",1)~ THEN BEGIN ExitPlat
SAY~ Ha, trapped at last, you fools. The transport platform to leave this place only activates by my blood. You cannot escape this place.~
IF~~THEN REPLY ~ With this you have pronounced your own death sentence, sorceress. We will wet our weapons with your blood, end all this academy spook, and escape. ~ DO~SetGlobal("MoniExitPlat","LOCALS",2)Enemy()~EXIT
END
END

// Starting the Quest
CHAIN
IF WEIGHT #-2~NumTimesTalkedTo(0) InParty("CVSandr")~THEN BW05FFGE JeyNoticeSan
~ Hello, my not-so-little-girl-anymore, would you recognise your old growler, as you liked to call me?~
==CVSANDRJ~ Good day to you, old...(Laughs), General Jedyan.~
==BW05FFGE~ (The general turns to you.) I recognise you! You are the ones who dealt with the bandit threat. Even though your deeds were invaluable, peace were only temporarily. Another threat has risen, and if nothing is done the streets will run red with the blood of innocents.~
==CVSANDRJ~ More than the one we currently already deal with, which is the intrigue of the Iron Throne against Baldur's Gate and Amn?~
==BW05FFGE~ There are always such that seek a turmoil like this to make use of the situation to their benefit. ~
=~Listen carefully! A new threat is afoot, they are the Grey Clan. According to the latest reports of our spies, they are much more dangerous than we ever thought.~
END
++~Please continue.~EXTERN BW05FFGE 2
++~(Nod silently for the general to continue.)~ EXTERN BW05FFGE 2

//Legencase Showdown

CHAIN
IF ~Global("SanMoniAka","GLOBAL",1)~ THEN CVSANDRJ  MoniAka1
~ May I introduce you to the head mistress of the Academy, <CHARNAME>. ~
DO ~ SetGlobal("SanMoniAka","GLOBAL",2)~
== BW05MONI ~ Elminster's daughter, the greatest disappointment of this glorious academy. The only student that was ever expelled by us. It would be a lie to say we are honored by your visit.~ DO~ ActionOverride("BW05MONI",CreateItem("ImoSlHP1",0,0,0)) ActionOverride("BW05MONI",FillSlot(SLOT_AMULET))~
==CVSANDRJ ~ I was really glad when we found out about your involvement with the Grey Clan. It gave me the chance to meddle with one of your sinister plans once again.~
END
++ ~ It is time to talk with us reasonable, head mistress. The *us* you are referring to no longer exists. You are alone, except you have Xephistagoras hidden here somewhere.~ + MoniAka2

CHAIN
IF~~THEN CVSANDRJ  MoniAka2
~ Have you become puppets on the string of Xephistagoras by now, Monica?~
== BW05MONI ~ It makes me glad somehow to see that even the worst of our students are better than the whole rest of this uncivilized place called the Sword Coast. So you know about Xephistagoras, little priestess. Then you know your journey and your infiltration has come to an end. Even your father trembles when this name is mentioned.~
==CVSANDRJ ~ Isolation really produces wild mindcapes. You are so cut off here from any reality that you have not noticed whom you were really working for. As your little intrigue has failed already, your mighty puppeteer has cut the strings and has gone to his next cunning plot. You are sadly alone against us now. Your only chance is cooperation.~
== BW05MONI ~ XEPHISTAGORAS! I call you to destroy these intruders. Get your revenge on Elminster today, crush his beloved daughter and bring our mission to a glorius end!~
END
++ ~ (Laugh) Impressive. Only - it seems you are still alone. Your mighty ally does not seem to like losers.~ + MoniAka3
++ ~ Nice try. We will surely not wait until the big evil guy finds some time to care for his failed project. Come with us to Baldur's Gate and you will receive a fair trial from the Dukes.~ + MoniAka3

CHAIN
IF~~THEN CVSANDRJ  MoniAka3
~ Listen to <CHARNAME> and come with us to Baldur's Gate. Only once in your life take responsibility for your deeds.~
== BW05MONI ~ Incredible fools. This place holds more surprises for you than you can imagine.~
DO ~StartCutSceneMode()
Wait(2)
CreateCreatureObjectOffset("BW05grs2","BW05MONI",[100.100])
CreateCreatureObjectOffset("BW05grz2","BW05MONI",[-100.100])
CreateCreatureObjectOffset("BW05grs2","BW05MONI",[100.-100])
CreateCreatureObjectOffset("BW05grz2","BW05MONI",[-100.-100])
Wait(2)
EndCutSceneMode()
Spell(LastSeenBy(Myself),WIZARD_CONFUSION)
ChangeEnemyAlly("BW05MONI",ENEMY)
RealSetGlobalTimer("MonfiFight","CVAKA2",90)~
EXIT


// Academy Tergius Report

CHAIN
IF~~THEN  CVSANDRJ TergMoniXe
~ One thing remains open nonetheless. Xephistagoras did not appear in the hour of need of the academy. He seemed to have dropped his allies when their failure became apparent.~
== ELMINSA ~ This arch fiend. Looks like him, to leave the battlefield in the hour of dispair.~
== BW05TERG~ We have destroyed his basis here on the Sword Coast and with your daughter's success we have also cut off his retreat in Legencase. Agreed, he himself is not destroyed, but it will take him a long, long time to build up a similar force against us again.~
==CVSANDRJ ~ Mind it, father, <CHARNAME> has destroyed a large number of fierce opponents that were in league against us. Those will not be so easily replaced like bandits and mercenaries. The whole network does no longer exist.~
== ELMINSA ~ Thou has become truely a major force here, mine young friend <CHARNAME>. I advise thee to be more careful henceforth. Thine enemies will be more powerful from now on as well. A great one rarely goes unnoticed.~
== BW05TERG~ I agree with Elminster. Your role in this episode is played for the moment. We will hear of Xephistagoras again, but not in the near future. You have gained a lot of experience that will help you with your own quest surely. Good luck to you all.~ DO ~ EscapeArea()~
== ELMINSA ~ Once again, I welcome thee all to Waterdeep. Enjoy thine stay here. The old mage will retire now and clear the field for the young heroes. (Kisses his daughter dearly before he retires to his study.)~ DO ~ EscapeArea()~
EXIT