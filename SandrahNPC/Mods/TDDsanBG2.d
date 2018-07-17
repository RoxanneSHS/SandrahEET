APPEND CVSANDRJ

IF~~THEN BEGIN SanEntAgain
SAY~ Ha, and once again he has found some corrupt sorcerer to revive him. I am no prophet, <CHARNAME>, but I assure you this - if he behind this we will find a trace of his buddy Jarlaxle as well, sooner or later.~
IF~~THEN REPLY~ I am no prophet myself, Sandrah, but I assure you this - we will beat down the two scoundrels time and time again until we finally lay them to eternal rest, these trolls.~ DO~SetGlobal("TDDSanJarlAgain","LOCALS",1)~ EXIT
END

IF ~Global("SanOrgotrp","LOCALS",1)~ THEN BEGIN SanOrgo1
SAY~ Now we have two choices, <CHARNAME>, to let that sorcerer rot here further or to pretend we fall into the trap so we can see what his real plan is and to destroy him permanently.~
IF~~THEN REPLY~ You are fuelling my own suspicion, counsellor, I did not really believe that trapped elf story myself. After all this is a mighty sorcerer's former tower. Proposals?~ DO~SetGlobal("SanOrgotrp","LOCALS",2)~  GOTO SanOrgo2
IF~~THEN REPLY~ What? You think there is a trap hidden here, the poor elf is but a bait for us?~DO~SetGlobal("SanOrgotrp","LOCALS",2)~ GOTO SanOrgo2
END

IF ~~ THEN BEGIN SanOrgo2
SAY~ We were warned of Orgoth's faible for contingency plans. I suspect the elf is one of those. Give him the cure and he will surely reveal himself as this tower's owner. Knowing this, I still propose we will play his little game as only by this we will find out about his plan and the demons he summoned.~
=~Our party is strong enough to cope with any demonic foe and it is the only way I see how we can remove the threat on Riativin permanently.~
IF~~THEN REPLY~Thanks for the advice but I'd rather not unbottle this djinn, if you know what I mean.~ EXIT
IF~~THEN REPLY~Fine, we will be well prepared when he attempts to escape.~EXIT
IF~~THEN REPLY~I hate unsolved problems...we started this quest and we will finish it.~EXIT
END

IF ~Global("SanOrgotrp","LOCALS",3)~ THEN BEGIN SanOrgo3
SAY~ This was the final evidence if we needed some more. How would he know about the laboratory or its functions if he were not Orgoth himself?~
IF~~THEN REPLY~ He may have been his close assistant, but you are right, chances are thin that he really is what he pretends to be - this seems to be a well arranged trap.~ DO~SetGlobal("SanOrgotrp","LOCALS",4)~  EXIT
IF~~THEN REPLY~ If you want to see a ghost, my stubborn little priestess, you are incurable by even the best healer - which is yourself anyway, hihi.~DO~SetGlobal("SanOrgotrp","LOCALS",4)~EXIT
END

IF~Global("SanTDDCali","LOCALS",1)~THEN BEGIN SanCaliHOut1
SAY~We have always found a way to avoid such cruel deeds and reach our goal without murder. I rely on your good leadership in this case, <CHARNAME>.~
IF~~THEN REPLY~ We will go to that jailer and figure out a way to betray that dumb pasha, fear not.~ DO~SetGlobal("SanTDDCali","LOCALS",2)~ EXIT
IF~~THEN REPLY~ I will only do it if it cannot be avoided. In the end the higher goal your father and the others have set may require some sacrifice.~ DO~SetGlobal("SanTDDCali","LOCALS",2)~ EXIT
IF~~THEN REPLY~ We follow a higher goal here, Sandrah, one set by your own father. In the end it is only the life of some corrupt desert villain we talk about here.~ DO~SetGlobal("SanTDDCali","LOCALS",2)~ GOTO SanCaliHOut2
END

IF~~ THEN BEGIN SanCaliHOut2
SAY~The reason the pasha wants him dead is exactly that he is not what you just called him. It seems he cares for those who are unjustly incarcerated and tortured. The bloodshed and killing we see each day and even the harsh environment we find ourselves in right here should never let us forget our own beliefs and justifications.~
IF~~THEN REPLY ~Well, if there is an alternative I swear we will find and take it.~EXIT
END

IF~Global("SanTDDjarlhunt","LOCALS",1)~ THEN BEGIN SanJarlhunt1
SAY~ Our suspicion is now confirmed, Entreri and his drow companion are once again at the heart of a murderous large scale operation, like we already guessed.~
IF~!InParty("Driz2")~THEN REPLY~Drizzt Do'Urden, how strange? ~GOTO SanJarlhunt2
IF~~THEN REPLY~ Jarlaxle had to come up sooner or later like a bad coin.~ GOTO SanJarlhunt3
IF~~THEN REPLY~I can't wait to pay this nasty pair an uninvited visit.~ GOTO SanJarlhunt3
END

IF~~ THEN BEGIN SanJarlhunt2
SAY~ Dummy! Get out of the sun, it dries your brain out.~
IF~~THEN REPLY~ (Laugh) Gotcha! ~ GOTO SanJarlhunt3
END

IF~~ THEN BEGIN SanJarlhunt3
SAY~ We are lucky that those two never seem to learn. They know we are on their trail but seem to await us nevertheless.~
IF~~THEN REPLY~ A trap like already before? The operation is only second priority, but we are the main catch.~ DO~SetGlobal("SanTDDjarlhunt","LOCALS",2)~ EXIT
IF~~THEN REPLY~ We know it's a trap and are prepared. But again we have to play along their lines as otherwise the consequences for Amn and the Sword Coast would be grave.~ DO~SetGlobal("SanTDDjarlhunt","LOCALS",2)~ EXIT
END

IF~Global("SanTDDjarlhunt","LOCALS",3)~ THEN BEGIN SanJarlhunt4
SAY~ Jarlaxle has escaped once again leaving the devastation behind him. He will unite with his buddy Entreri I suppose, as he has no other place left to go at the moment with the blow we have dealt to his operation.~
IF~~THEN REPLY~ A good moment to finish off those two bastards - if we knew where to search them. Let us return to Riativin.~ GOTO SanJarlhunt5
IF~~THEN REPLY~ Before we start to chase them it may be a good moment to use our deductive skills together and try to figure out where he may have gone.~ GOTO SanJarlhunt5
END

IF~~ THEN BEGIN SanJarlhunt5
SAY~ Riativin is no longer an option for them, Athkatla's forces have surely cleaned the town of the remaining bandits. The mysterious Gith traveller told us they are in none of the big towns but near some village.~
IF~~THEN REPLY~ A small village with the possibility to hide drow on the surface...hm...that narrows it down a bit.~ DO~SetGlobal("SanTDDjarlhunt","LOCALS",4)~GOTO SanJarlhunt6
END

IF~~ THEN BEGIN SanJarlhunt6
SAY~ They need to keep in touch with what is going on, but Jarlaxle and his remaining drow may not want to show up in public and in the open. A small village not too far from Amn's cities with probably some caves to hide the drow.~
IF~~THEN REPLY~ Imnesvale and the Umar caves come to my mind immediately with this description.~ EXIT
IF~~THEN REPLY~ Purskal and the mine we cleared may be such an option.~ EXIT
IF~~THEN REPLY~ The Windspear Hills are a good hiding place for criminals.~ EXIT
END

IF~Global("SanTDDjarlhunt","LOCALS",5)~ THEN BEGIN SanJarlhunt7
SAY~ OH NO!! This cannot be true!~
IF~~THEN REPLY~What's the matter, we have just won a glorious fight with one of the most evil and powerful criminals in the Realms?~DO~SetGlobal("SanTDDjarlhunt","LOCALS",6)~ GOTO SanJarlhunt8
END

IF~~ THEN BEGIN SanJarlhunt8
SAY~ Oh, have you not heard his *famous last words*? But they really were not intended to be last words...What will he have this time to resurrect him from the Nine Hells, where he would rightfully belong.~
IF~Global("SanRomPath","GLOBAL",1)~THEN REPLY~ (Laugh) Maybe he hopes that even the Abyss will spit him out again. Anyway, should he really return we will be ready to send him down again.~GOTO SanJarlhunt9
IF~Global("SanRomPath","GLOBAL",1)~THEN REPLY~ (Concerned) We have solved the problem he constituted this time as well as in the past. Should he really have a way to come again we will just do the same thing again.~GOTO SanJarlhunt9
IF~Global("SanRomPath","GLOBAL",2)~THEN REPLY~ (Laugh) Maybe he hopes that even the Abyss will spit him out again. Anyway, should he really return we will be ready to send him down again.~GOTO SanJarlhunt10
IF~Global("SanRomPath","GLOBAL",2)~THEN REPLY~ (Concerned) We have solved the problem he constituted this time as well as in the past. Should he really have a way to come again we will just do the same thing again.~GOTO SanJarlhunt10
END

IF~~ THEN BEGIN SanJarlhunt9
SAY~ My wonderful hero. You are right, we will not give up ever. I love you.~
IF~~THEN EXIT
END

IF~~ THEN BEGIN SanJarlhunt10
SAY~ My wonderful heroine. You are right, we will not give up ever. I love you.~
IF~~THEN EXIT
END

IF~ Global("SanAlust","DD6001",2)~THEN BEGIN Alus1
SAY~We are really going to meet Endue Alustriel, <CHARNAME>.~
IF~~THEN REPLY~Who is that again?~ GOTO Alus2
IF~~THEN REPLY~A kind of family meeting in a remote sense, isn't it.~ GOTO Alus2
END

IF~~THEN BEGIN Alus2
SAY~Being one of the seven sisters, the daughters of Mystra, she is indeed sibling of Qilue Veladorn in my ancestry. She is the Defender of Silverymoon and also became the protector of Drizzt when he came to the surface.~
=~I am afraid much more of my so-called *family* may be involved in here according to those words we have heard.~
IF~~THEN REPLY~...some grandfather you are not particularly fond of...~DO ~SetGlobal("SanAlust","DD6001",3) ~EXIT
END

END

APPEND BSandr

IF~Global("Sanprick","dd9400",1)~ THEN BEGIN sanertring1
SAY~Eeek, that pricks, <CHARNAME>.~
IF~~THEN REPLY~ What?~ DO~ SetGlobal("Sanprick","dd9400",2) ~ GOTO  sanertring2
END

IF~~ THEN BEGIN sanertring2
SAY~ I just wanted to kiss you but that mouth is full of ugly thorns. You have nice wings but I cannot get accustomed to that face.~
IF~~THEN REPLY~ You're right, my feet start to hurt already as I'm much too heavy. Do you think it will be safe to take off that ring?~ GOTO  sanertring3
IF~~THEN REPLY~ You have to live with it for the moment, darling, start to love your monster otherwise Errtu will probably kill us all.~ GOTO  sanertring3
END

IF~~ THEN BEGIN sanertring3
SAY~ I guess this charade has served its purpose already. Next time we face Errtu we will have to let down our masks anyway - unless he sees through our disguise first.~
IF~~THEN EXIT
END

IF~Global("SanTDDCoward","LOCALS",1)~THEN BEGIN JarlCow1
SAY~If I had not suspected it all the time it would surprise me to find out Jarlaxle is nothing but another coward.~
IF~~THEN REPLY~ Either that or a magnificent manipulator.~DO~SetGlobal("SanTDDCoward","LOCALS",2)~ GOTO JarlCow2
END

IF~~THEN BEGIN JarlCow2
SAY~ One may be the reason for the other. He manipulates so he does not have to face creatures like those dragons here by himself. As he is someone to trust nobody his only reason to let us do it is his cowardice.~
IF~~THEN REPLY~ We were never afraid of him, just as we're not afraid of the monsters he makes us face.~ EXIT
IF~~THEN REPLY~Even if he's a coward we should not underestimate his dangerous powers.~EXIT
END
END


EXTEND_BOTTOM 3336TAV 7
IF~ InParty("CVSandr")~ THEN REPLY ~But Entreri is dead, we have killed him ourselves!~ EXTERN CVSANDRJ SanEntAgain
END

EXTEND_BOTTOM ORGOTH01 0
IF~ InParty("CVSandr")~ THEN REPLY ~ We had anticipated to meet the former owner of this tower right here. This is not a surprise for us.~ DO~ AddexperienceParty(5500)~ GOTO 2
END

INTERJECT RIATMOV1 1  RecSan
==RIATMOV1 IF~InParty("CVSandr")~THEN~ But wait, if my eyes don't deceive me I recognise a little girl who has grown into a beautiful lady - Sandrah?~
==CVSANDRJ IF~InParty("CVSandr")~THEN~  Your eyes are still intact, yes it is me.~
==RIATMOV1 IF~InParty("CVSandr")~THEN~ Then I will take you to the quarter immediately, your father is present there, as well as Khelben and other high rank magicians. Maybe you can help them with a recent problem.~ DO~
SetGlobal("tz_mageriatward","GLOBAL",1)
SetGlobalTimer("tz_riatwardback","GLOBAL",3)
StartCutSceneMode()
ClearAllActions()
FadeToColor([20.0],0)
Wait(2)
StartCutScene("newwardr") ~EXIT


EXTEND_BOTTOM Priscali 2
IF~InParty("CVSandr") !Dead("Caliprig") GlobalGT("tz_caliprisonspawn","GLOBAL",0)~THEN REPLY~ The way out is cleared. Be quick to get out and hide yourself until you receive news that the town ifs free of the tyrant.~ DO~ AddexperienceParty(2000) ActionOverride(Nearest("priscali"),EscapeArea())~EXIT
END

EXTEND_BOTTOM Priscali 3
IF~InParty("CVSandr") !Dead("Caliprig") GlobalGT("tz_caliprisonspawn","GLOBAL",0)~THEN REPLY~ The way out is cleared. Be quick to get out and hide yourself until you receive news that the town ifs free of the tyrant.~ DO~ AddexperienceParty(2000) ActionOverride(Nearest("priscali"),EscapeArea())~EXIT
END

EXTEND_BOTTOM Priscali 4
IF~InParty("CVSandr") !Dead("Caliprig") GlobalGT("tz_caliprisonspawn","GLOBAL",0)~THEN REPLY~ The way out is cleared. Be quick to get out and hide yourself until you receive news that the town ifs free of the tyrant.~ DO~ AddexperienceParty(2000) ActionOverride(Nearest("priscali"),EscapeArea())~EXIT
END

EXTEND_BOTTOM Pibble2 3
IF~InParty("CVSandr") ~THEN REPLY~ I have one of the best healers in the Realms in my party, fear not. We will find the girl and you will live on.~ DO~ SetGlobal("tz_dinquest2","GLOBAL",4) SetGlobal("Sanresc","LOCALS",0) StartCutSceneMode() Wait(1) ActionOverride("CVSandr",MoveToObject("Pibble2")) Wait(2)  Wait(2) ActionOverride("CVSandr",ForceSpell("Pibble2",CLERIC_HEAL)) Wait(8)  ActionOverride("Pibble2",Polymorph(FIGHTER_MALE_GNOME)) EndCutSceneMode() ~EXIT
END

APPEND  Pibble2
IF~Global("Sanresc","LOCALS",0)~THEN BEGIN  Sanrescu
SAY~ Your heart is golden, my lady, and this gnome owes you his life. I cannot repay you but I am sure you would not even accept anything from me but my thanks. I will leave this cursed place for a more peaceful dwelling. Good luck on your mission, my friends.~
IF~~THEN DO ~ AddexperienceParty(5500) EscapeArea()~EXIT
END
END

INTERJECT_COPY_TRANS Alust02 1 SanKnownAlust
==Alust02 IF~ InParty("CVSandr") ~THEN ~ Greetings as well to you, Sandrah of Waterdeep. It is well known that you have become <CHARNAME>'s steady companion and counsellor. Mayhap some turns that the recent events have taken can be accounted to you in some way.~
==CVSandrJ IF~ InParty("CVSandr") ~THEN ~ Or rather to the goddess I serve, Mylady.~
==Alust02 IF~ InParty("CVSandr") ~THEN ~ (Smiles) The two are not far apart and coming closer almost daily. ~
END

INTERJECT_COPY_TRANS Alust02 14 SanKnownAlust1
==CVSandrJ IF~ InParty("CVSandr") ~THEN ~ It seems that our ancestors have left a lot for us to repair on the material plane, <CHARNAME>.~
==Alust02 IF~ InParty("CVSandr") ~THEN ~ I do not think you call the Mad God your grandfather more often than <CHARNAME> relates to Bhaal as father.~
==CVSandrJ IF~ InParty("CVSandr") ~THEN ~ You are right, Lady Alustriel, but it will not keep me from regarding their deed as some kind of family business that needs to be cleaned up.~
END

ADD_TRANS_ACTION Bendalis BEGIN 0 END BEGIN 0 1  END
 ~SetGlobal("SanAlust","DD6001",1)~
 
 CHAIN
IF~Global("SanMystApp","arpo31",1)~ THEN SanMyst SanMysCyric
~ <CHARNAME>, granddaughter, you have done well to destroy this deadly threat to our Realms.~
DO~SetGlobal("SanMystApp","arpo31",2)~
==CVSANDRJ ~ The threat was from the Realms to the celestials as well, was it not?~
==SANMYST~ Cyric has remembered the ancient truth how to gain strength from the mortals to aid to his powers. It is you and <CHARNAME> who deserve the thanks of the gods for what you did.~
==CVSANDRJ ~ So the attempt of your former lover was a real danger for you, Mystra?~
==SANMYST~ You know well by now that we need the aid and the faith of the mortals to aid us in all that happens on the Prime Plane, Sandrah. I am no longer Midnight, I need you and your father, as well as <CHARNAME> when a danger arises from Toril. ~
==CVSANDRJ ~He would have turned against you next, Mystra, the power who stands in his way. Then we have slain a god today?~
==SANMYST~ No. You killed or rather freed a poor elven woman who was misused much to her despair. The cunning weaselling Cyric had left his prime shell when it became apparent to him whom he was facing.~
==CVSANDRJ ~The mighty Bhaalspawn <CHARNAME>!~
==SANMYST~ No, I was referring to you, Sandrah.~
==CVSANDRJ ~Really....?~
==CVSANDRJ IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN~ If such is our deed, may I humbly ask for a favour from my goddess then.~
==SANMYST IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN~ You may ask. Whether it is mine to give will be seen.~
==CVSANDRJ IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN~You know that I seek answers...I always do and will continue to do. So, what would have happened if we had failed? If Cyric had succeeded to gain the power he was after by destroying you?~
==SANMYST IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN~ This question had to come sooner or later, child. You know the answer, AO would have inthroned the next incarnation of Mystra, as the Weave requires a guardian.~
==CVSANDRJ IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN~Yes, and it will be one of your human bloodline, the female line I mean.~
==SANMYST IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN~This is correct.~
==CVSANDRJ IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN~Can you tell me what would be my role in this case?~
==SANMYST IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN~ Your role is the most crucial - for all of us, the Realms and the Weave. A moment ago you called yourself a seeker, Sandrah. That is your role.~
==SANMYST ~ Farewell, Sandrah.~
EXIT
 



