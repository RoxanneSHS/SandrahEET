APPEND CVSANDRJ

// PID Package 13 - Starting in Amn

IF ~ IsGabber(Player1) Global("SanPidPack","GLOBAL",13) ~ THEN BEGIN SanPCInit13
SAY ~ (Sandrah awaits you with her lovely smile.) What can I do for you, my love?~
IF ~RandomNum(3,1)~THEN REPLY~ Kiss me, darling, don't ask why, just do it. (No answer can come from her as you have already sealed her mouth with your hungry lips.)~ EXIT
IF ~RandomNum(3,2)~THEN REPLY~ When I look at you I am convinced for a short moment that Toril is wonderful place.~ EXIT
IF ~RandomNum(3,3)~THEN REPLY~ Even after all we've been through together I discover each day anew how much I love you.~EXIT
IF~OR(22) 	Global("AerieRomanceActive","GLOBAL",2)
		Global("AnomenRomanceActive","GLOBAL",2)
		Global("JaheiraRomanceActive","GLOBAL",2)
		Global("ViconiaRomanceActive","GLOBAL",2)
		Global("M#AmberRomanceActive","GLOBAL",2)
		Global("ChloeRomanceActiveCR","GLOBAL",2)
		Global("E3FadeRomanceActive","GLOBAL",2)
		Global("B!GavinRomanceActive","GLOBAL",2)
		Global("imoenromanceactive","GLOBAL",2)
		Global("J#KelseyRomanceActive","GLOBAL",2)
		Global("KiaraRomanceActive","GLOBAL",2)
		Global("P#KivanRomanceActive","GLOBAL",2)
		Global("PGNaliaRomanceActive","GLOBAL",2)
		Global("NathRomanceActive","GLOBAL",2)
		Global("LK#NindeRomanceActive","GLOBAL",2)
		Global("SaerilethRomanceActive","GLOBAL",2)
		Global("SarahRomanceActive","GLOBAL",2)
		Global("SimeRomanceActive","GLOBAL",2)
		Global("SolaSleep","GLOBAL",3)
		Global("TsujathaRomanceActive","GLOBAL",2)
		Global("TashiaRomanceActive","GLOBAL",2)
		Global("O#XanRomanceActive","GLOBAL",2) ~THEN REPLY~ Regardless of the experiences we make you are the one closest to my heart - forever.~GOTO SanOtherLove
IF~		OR(11)
		Global("PlayerHasStronghold","GLOBAL",1)
		Global("PCKeepOwner","GLOBAL",1)
		GlobalGT("Rangerprotector","GLOBAL",1)
		Global("PCSphere","GLOBAL",1)
		Global("PlayerThiefGuild","GLOBAL",1)
		Global("PlayerHasPlayhouse","GLOBAL",1)
		Global("PaladinOrder","GLOBAL",1)
		Global("JoinHelm","GLOBAL",1)
		Global("JoinLathander","GLOBAL",1)
		Global("JoinTalos","GLOBAL",1)
		Global("Druidstronghold","GLOBAL",1)~THEN REPLY~ Are we on the way to find a place for settling down after all our wandering the Realms, my counselor?~ GOTO SanStronghold
IF~RandomNum(2,1) !TimeOfDay(DAY) AreaType(OUTDOOR)~ THEN REPLY~ Look, the stars are out again, Sandrah. I wish I could read your mind now.~GOTO SanStarBG2PID1
IF~RandomNum(2,2) !TimeOfDay(DAY) AreaType(OUTDOOR)~ THEN REPLY~ The stars are out again, Sandrah. I wish I could read your mind now.~GOTO SanStarBG2PID2
IF~TimeOfDay(DAY) AreaType(OUTDOOR)~ THEN REPLY~ (As you come close you smell the light fragrance of her daytime perfume.)~GOTO SanStarBG2PID3
IF~ AreaType(DUNGEON)~ THEN REPLY~ (Lingering lightly above all the staleness of the dungeon air your nose catches a breeze of Sandrah's perfume - fresh as a sunlit meadow full of flowers.) ~GOTO SanStarBG2PID4
IF~!TimeOfDay(DAY) !AreaType(OUTDOOR)!AreaType(DUNGEON)~ THEN REPLY~ (As you come close you smell the tempting refined perfume Sandrah has put on together with her shimmering evening gown.)~GOTO SanStarBG2PID5
IF~!AreaCheck("ar0602") Global("SanNotCapt","LOCALS",0)Global("SanSentBelt","GLOBAL",0) ~ THEN REPLY~ Sandrah, how did it happen that you were not captured by Irenicus' roustabouts in that ambush.~ GOTO SanNotCapt1
IF~!AreaCheck("ar0602") Global("SanNotCapt","LOCALS",0)Global("SanSentBelt","GLOBAL",1) ~ THEN REPLY~ Sandrah, how did it happen that you were sent to find us here in this dungeon.~ GOTO SanNotCapt11
IF ~Global("SanNotCapt","LOCALS",1)~ THEN REPLY~ Please continue with your report about our kidnapping and your finding us.~ GOTO SanNotCapt3
IF ~Global("SanMysRise","GLOBAL",2)~ THEN REPLY ~ Sandrah, are you familiar with the studies of Narvantial of Soubar?~ GOTO SanMysSucc11
IF ~ GlobalGT("SanFlirt","GLOBAL",19) Global("SanMysRise","GLOBAL",3)~THEN REPLY ~ We were talking about children the other day, Sandrah, and about my heritage in this context.~ GOTO SanBLine11
IF~Global("Chapter","GLOBAL",16) Global("SanAmnAdv1","LOCALS",0) ~ THEN REPLY ~ You have already taken a look around town, beloved counselor. Where do we start our search for our *besta friend*, you think?~ GOTO SanAmnAdvA
IF ~Global("SanHendak","GLOBAL",2) !AreaCheck("ar0406")~ THEN REPLY~ Those slavers in the Copper Coronet have angered you deeply, Sandrah, especially what they did to the children.~ GOTO SanHendls1
IF~GlobalGT("SanAdrianL","Global",5) Global("SanAskAdrian","LOCALS",0)InParty("RH#Adrian")~ THEN REPLY ~Adrian?~DO~SetGlobal("SanAskAdrian","LOCALS",1)~GOTO SanAdri1
IF~GlobalGT("SanAranH","GLOBAL",9) Global("SanAskAran","LOCALS",0)InParty("C-Aran")~ THEN REPLY ~Aran?~DO~SetGlobal("SanAskAran","LOCALS",1)~GOTO SanAranL1
IF~GlobalGT("SanHintFactory","GLOBAL",9) !See("CVShauq") Global("SanSharkTru","LOCALS",0)~THEN REPLY~You have not told our orc princess the whole truth about Sharkta Fai, right?~ GOTO SharkTru1
IF~Global("PoolHealT","CVSHA7",4)~THEN REPLY~ (You take a deep breath) Let us enter that pool now, Sandrah.~DO~SetGlobal("PoolHealT","CVSHA7",5)~GOTO PoolTalk17
IF~ Global("FreeSlaves","GLOBAL",1) Global("SanHendak","GLOBAL",3)~ THEN REPLY ~ (You take a quiet moment to embrace Sandrah kindly.) The freeing of those slaves, especially the children has both agitated and relieved you, Sandrah.~ GOTO SanHendls5
IF~ Global("ys_FindElminster","GLOBAL",1) Global("SanAskLief","LOCALS",0) ~ THEN REPLY ~ Sandrah, have you ever heard or met this mage Lief. Is he to be trusted or may this be another trap misusing your father's name?~ GOTO SanAskLief1
IF~GlobalGT("GettingApprentices","GLOBAL",0) Global("SanPCHassphere","GLOBAL",0) ~ THEN REPLY~ Sandrah, as a priestess of Mystra you are probably the best suitable counselor in matters of this planar sphere.~ GOTO SanSphereAdv1
IF~ Global("KangaxxQuest","GLOBAL",1) Global("SanKangAdv","LOCALS",0)~ THEN REPLY ~ This talking skull, Kangaxx, he's a lich, right, Sandrah?~ GOTO SanKanAdv1
IF~ GlobalGT("SanDrizBG2","LOCALS",10) GlobalLT("Chapter","GLOBAL",18) Global("SanPCvsDriz","LOCALS",0) InParty("Driz2")~ THEN REPLY ~ Sandrah, I have thought long about your relationship to Drizzt and your will to help him in his quest.~ GOTO SanPCvsDriz1
IF~ GlobalGT("waukleofree","GLOBAL",3) InMyArea("Pellig") Global("SanPelltru","LOCALS",0)~THEN REPLY~ Who - or what - do you think Pelligram really is?~ GOTO SanPelltru1
IF ~ Global("SanPelltru","LOCALS",1)~ THEN REPLY~We talked about Pelligram recently and I remember we made the assumption that your Goddess Mystra arranged for the two of you to meet.~ GOTO SanPelltru4
IF~Global("SANSHARINT","GLOBAL",26)GlobalGT("Chapter","GLOBAL",15) Global("SanBabewait","LOCALS",0)!AreaType(CITY)~ THEN REPLY~ How may our wildcat Shar-Teel be faring these days?~ GOTO SanBabewait1
IF~ Global("PurskInf","LOCALS",0) OR(2) PartyHasItem("DDPkMap") AreaCheck("dd1900") ~ THEN REPLY~ My counselor, can you tell me something about Purskal?~GOTO SanPurskTalk1
IF~ Global("SanDesTroll","LOCALS",2) NumItemsPartyLT("arow04",5) AreaType(FOREST)  ~ THEN REPLY~ Sandrah, we are quickly running out of acid arrows. Can you provide us with some once again?~ GOTO SanAcArF2
IF~ Global("SanBrynAltern","LOCALS",2) GlobalLT("B!alternatives","GLOBAL",3)~THEN REPLY~ So murderous thieves or deadly vampires, those are the two choices we have to deal with to help Imoen. What do you think is the better one, counselor?~ GOTO TrySthNew2
IF~ Global("SanDesTroll","LOCALS",2) NumItemsPartyLT("arow04",5) !AreaType(FOREST)  ~ THEN REPLY~ Sandrah, we are quickly running out of acid arrows. Can you provide us with some once again?~ GOTO SanAcArNF2
IF~Global("SanHintFactory","GLOBAL",35)Global("SanDarkMatter","LOCALS",0)~THEN REPLY~ Sandrah, can you elaborate a bit on the machinations of that Szass Tam? I don't think I have fully understood the threat to Toril and beyond.~ GOTO SanSzassPid1
IF~Global("SanHintFactory","GLOBAL",35)Global("SanDarkMatter","LOCALS",1)~THEN REPLY~I think we should continue our talk about Szass Tan's experiments and his use of the dead heroes.~ GOTO SanSzassPid9
IF ~Global("EshpkInf","LOCALS",0) PartyHasItem("DDMap01")~ THEN REPLY~ Say, my counselor, do you know any lore about Eshpurta?~GOTO  SanEshpTalk1
IF~ Global("SanNewArm","GLOBAL",5)~ THEN REPLY~ Sandrah, I have dreamt of you and Mystra last night...~ GOTO SanmysarmDream1
IF~Global("CbPartyIsInSoubarMilitia","GLOBAL",7) Global("SanCbCasAdv","LOCALS",0)~ THEN REPLY~ Sandrah, you have heard our options how to get access to Lyrars. I'd like to hear my counselor's advice on it.~ GOTO SanLyarTyp1
IF~ Global("SankangFull","LOCALS",2) GlobalLT("UsedCrypt0331","GLOBAL",2)~ THEN REPLY~ Let us talk about what to do with the Lich parts we have found, Sandrah.~ GOTO SanTombkanEnt32
IF~ Global("SanMekCurse","GLOBAL",1)~ THEN REPLY~ This mage Mekrath...has he really transported to the Nine Hells with his last spell as you have cursed him?~ GOTO MekCurse2
IF~Global("C#SB_Auftraggeber","GLOBAL",1) Global("SanSilvAdl","LOCALS",0)~ THEN REPLY~ I really want to find out about that crazy tanner and especially about the people that employ such a beast.~ GOTO SanTanner21
IF~ Global("SanNecroHa","LOCALS",2)~ THEN REPLY~ A while ago you declared your concerns about Necromancy. I understood that Mystra and thus her priestess oppose to those practices.~ EXTERN BSANDR SanNecrohate4
IF~  Global("BeholderPlot","GLOBAL",1) !Dead("UnseeingEye")Global("SanUnseen","LOCALS",0) ~ THEN REPLY ~ Sandrah, have you ever heard about this *Cult of the Unseeing Eye*? ~ GOTO SanUnsee1
IF~Global("SanVampWDQuest","GLOBAL",16)~ THEN REPLY~ Let us now enter that portal.~ GOTO DoWDVampQ6
IF~ Global("SanSharInt","GLOBAL",37) AreaType(OUTDOOR) Global("SanBabeToo","LOCALS",0)~ THEN REPLY ~ Sandrah, I wonder, when all of this adventuring will be finished one day, have you ever imagined yourself as a mother of your own children?~ GOTO SanBabeHave1
IF~ GlobalGT("C#AjantisRitterSuche","GLOBAL",0) Global("SanGoldBall","LOCALS",0) PartyHasItem("C#Ajgk")~ THEN REPLY~ How can we go about this mystery of the missing knights, my counselor?~ GOTO SanGlobAjanMiss1
IF~InParty("ADAngel") !AreaCheck("ar0800") Global("CVAngelRev","LOCALS",0)~THEN REPLY~What had that Angelo to tell you so urgently?~GOTO SanAdSarD
IF~InParty("Zaiya") GlobalLT("ZaiyaCursed","GLOBAL",8) Global("SanZaiyaPid","LOCALS",0)~THEN REPLY~Did you have the time already to acquaint yourself with the affliction of our new comrade Zaiya - a challenge for your healing skills?~DO~SetGlobal("SanZaiyaPid","LOCALS",1)~GOTO SanZaiyaHeal1
IF~Global("WorkingForBodhi","GLOBAL",1) Global("SanOnBohWork","LOCALS",0)~THEN REPLY~Do you think it was a mistake to accept Bodhi's offer to reach Brynlaw?~DO~SetGlobal("SanOnBohWork","LOCALS",1)~GOTO SanonBoh1
IF~!Global("SanCanTravel","GLOBAL",2) AreaCheck("CVDre1")~ THEN REPLY ~I think it's time again to retutn to Amn, Sandrah.~ DO ~SetGlobal("SanTravel","GLOBAL",62)~ EXIT
IF~~THEN REPLY~Your hammer seems to be stuck.~GOTO SanHamCl2
END

IF~~THEN BEGIN SanonBoh1
SAY~You made that choice out of love, out of loyalty...for Imoen. You are not becoming an evil person by this alliance (not if I can prevent it).~
IF~~THEN REPLY~I had hoped you would understand it, your words lift a burden from my soul.~ DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanonBoh2
IF~~THEN REPLY~I don't think it makes much difference compared to the Shadow Thieves, a bunch of murderers and criminals, doesn't it?~ DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanonBoh2
END

IF~~THEN BEGIN SanonBoh2
SAY~Whether we fight with vampires against murderers or vice versa - it makes little difference. Anyway we clean the town from some subjects it can do without.~
=~Bodhi is closer to Irenicus than anyone else we have met yet. We may get a chance to gain a bit more insight to who our mighty opponent really is. She thinks you are on her leash now...but by this we always will know where SHE is and what her plans are.~
IF~~THEN REPLY~Sigh, I'm afraid not all our comrades look at it in this cold analytic way, still I agree with your view.~EXIT
IF~~THEN REPLY~(Smile) This is my counselor through and through...you see the light even in the darkness of these tombs and graves surrounding the vampire.~EXIT
IF~~THEN REPLY~I'm glad, we are in agreement. Those were exactly my considerations when choosing her side.~EXIT
END

IF~~THEN BEGIN SanZaiyaHeal1
SAY~You may have noticed she is a wild mage. Her affliction is not so much an illness to be cured by a healer but rather the effect of the use of wild magic as such.~
IF~~THEN REPLY~I have not often heard you reject a patient in need of help, Sandrah.~ GOTO SanZaiyaHeal2
IF~~THEN REPLY~Do you declare her a helpless case already?~ GOTO SanZaiyaHeal2
IF~~THEN REPLY~Does your goddess condemn the wild mages so you reject her in that way?~ GOTO SanZaiyaHeal2
END

IF~~THEN BEGIN SanZaiyaHeal2
SAY~It seems you misunderstand the issues of wild magic, <CHARNAME>. It is the purest and oldest form of arcane skills, once wielded by Mystril herself with powerful but also with radical effects.~
=~While all arcanists accept the fact that magic is a powerful and often unpredictable force, most believe that through the proper training and diligence it is something that one can learn to control. Wild mages, however, reject this precept, believing instead that controlling arcane magic is a futile goal that only limits one's potential to preconceived ideas of order.~
IF~~THEN REPLY~Are they so wrong in that?~GOTO SanZaiyaHeal3
END

IF~~THEN BEGIN SanZaiyaHeal3
SAY~No, they are not. My goddess did likewise before she became the more *civilized* Mystra and Keeper of the Weave. See, a wild mage embraces the randomness of unrefined wild magic, channeling it through the own body like an electrical current, rather than trying to contain or control it. In many cases, this gives wild mages a degree of power uncommon to other mages.~
=~At other times, however, the forces with which a wild mage dabbles backfire, a risk that all wild mages accept as a natural consequence of playing with fire.~
=~This lesson was learned at a high prize by Mystra and her dark counterpart Shar long ages ago.~
IF~~THEN REPLY~If the side-effects are such chaotic I understand your difficulty in finding a cure for Zaiya.~ GOTO SanZaiyaHeal4
END

IF~~THEN BEGIN SanZaiyaHeal4
SAY~I may even worsen her conditions if I tried to meddle with symptoms that evade me completely as they have their source in the unpredictable. However - I may be able to give her a bit of relieve and extra time should our quests delay our finding of help for her. I cannot guarantee success and I hope we must not make use of that last straw.~
IF~~THEN EXIT
END

IF~~THEN BEGIN SanAdSarD
SAY~He witnessed Sarevok's death only pretending to be dead himself, knowing we would not pay the minions too much attention once they were out of our way.~
IF~~THEN DO~ SetGlobal("CVAngelRev","LOCALS",1) ClearAllActions() StartMovie("CVSarde")~EXIT
END

IF~~THEN BEGIN SanHamCl2
SAY~Let me check it.~
IF~~THEN DO~ReallyForceSpellRES("SanHamCL",Myself)~EXIT
END

IF~~THEN BEGIN SanStronghold
SAY~I am sorry if I look at it more pessimistic, <CHARNAME>. Your stronghold and the related responsibility is just a temporary thing, not yet a home. It is a step on our road even if it is an important one.~
IF~~THEN REPLY~For me it is important and I will do my best to fulfill my duties with the stronghold.~DO~IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
END

IF~~THEN BEGIN SanStarBG2PID1
SAY~Do you remember the two new constellations we first saw on the Sword Coast?~
IF~~THEN REPLY~One was related to Mystra the other you associated with an old symbol for Hope.~ EXIT
IF~~THEN REPLY~Some still believe in the birth of new gods that is signaled by it.~EXIT
END

IF~~THEN BEGIN SanStarBG2PID2
SAY~My mother comes to my mind and what Bhaal did to her. The mystery is still to be solved - by me...by us.~
IF~~THEN REPLY~We cannot be sure if the second child of Khalindra wasn't me after all...~EXIT
IF~~THEN REPLY~Bhaal looms over our relationship and he will until we have solved the riddle contained in Alaundo's prophesies.~EXIT
END

IF~~THEN BEGIN SanOtherLove
SAY~The more we learn and the more we experience the closer we seem to get. You cannot betray me with another lover, you can only betray me by changing the foundation of our relationship.~
IF~~THEN REPLY~ I will never do that - I will never follow Bhaal's calling.~DO~IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
IF~~THEN REPLY~Like what, starting to follow the example of a dead god who claims to be my *father*?~EXIT
END

IF~~THEN BEGIN SanStarBG2PID3
SAY~(The fruity notes are so much different from the tempting and seductive smell she wears at nightime.)~
IF~~THEN REPLY~(Lost for words you just smile at her.)~ EXIT
IF~~THEN REPLY~(You blow her a kiss.)~ EXIT
END

IF~~THEN BEGIN SanStarBG2PID4
SAY~There is a light at the end of every tunnel, my love. ~
IF~~THEN REPLY~There can be a light even within the darkest dungeon if one travels with you, sweetheart.~ EXIT
END

IF~~THEN BEGIN SanStarBG2PID5
SAY~Any ideas of what to do with this lovely evening, my love? ~
IF~~THEN REPLY~(Quickly kiss her.) I have to get my eyes off you, sweetheart, otherwise I wouldn't be able to concentrate on my task just another minute~ EXIT
IF~~THEN REPLY~I'm sure we both have the same thing in mind.~GOTO SanBedPid12
END

IF ~~THEN BEGIN SanGlobAjanMiss1
SAY~*Sandrah seems to follow her own thoughts already.*~
IF~GlobalGT("SanHelmDogmas","GLOBAL",11)~THEN GOTO  SanGlobAjanMiss1a
IF~GlobalLT("SanHelmDogmas","GLOBAL",12)~THEN GOTO  SanGlobAjanMiss1b
END

IF ~~THEN BEGIN SanGlobAjanMiss1a
SAY~Please, do not call me counselor in this matter which is so dear to my heart as well. Or maybe you should...I have to keep my mind clear in order to be helpful for poor Ajantis. He is not dead!~
IF~~THEN REPLY~ Is your mind clear enough to contribute an idea about what to do, my dear?~ DO ~SetGlobal("SanGoldBall","LOCALS",1)~ GOTO SanGlobAjanMiss2
END

IF ~~THEN BEGIN SanGlobAjanMiss1b
SAY~Sorry, I was just remembering Ajantis and was irritated by the sudden news that he is not dead!~
IF~~THEN REPLY~ Is your mind clear enough to contribute an idea about what to do, my dear?~ DO ~SetGlobal("SanGoldBall","LOCALS",1)~ GOTO SanGlobAjanMiss2
END

IF ~~THEN BEGIN SanGlobAjanMiss2
SAY~ The next step will be to find out about the nature of this mysterious globe. Where my own knowledge fails and my reasoning is blurred by emotions I would propose to seek advice from those who hold knowledge and wisdom as their domain.~
IF~~THEN REPLY~ That would be Oghma's priests - the temple in the dock area of Athkatla.~EXIT
END

IF~~THEN BEGIN SanBabeHave1
SAY ~ (Smiles) No, I have not. I do not have many ideas about how life will really be for me when...if we ever finish the last of our quests. Many changes are yet to come, dear.~
IF~~ THEN REPLY~ You sound like you think this lifestyle will endure for a significant time for us?~ DO~ SetGlobal("SanBabeToo","LOCALS",1)~ GOTO SanBabeHave2
END

IF~~THEN BEGIN SanBabeHave2
SAY ~ This is indeed what I anticipate, <CHARNAME>. Even if we finish the tasks we can see today, I think our role on this material plane will not allow us to lead a *normal* life ever. We both have a heritage that bears consequences for us we have not yet fully explored. Some of that may require choices we are unaware of today.~
IF~~ THEN REPLY~ Hm. My counselor once taught me that we always have our own choices and no fate is written in granite.~ DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanBabeHave3
END

IF~~THEN BEGIN SanBabeHave3
SAY ~ That is true and I do not think I have contradicted myself here. All I am saying is that the whole perspective of who we are and who we may become is not yet clear to me. There may be quite different opportunities for the both of us than to retire one day and settle down and raise children. It does not mean that I reject this thought - we are still so very young and so much can happen still.~
IF~~ THEN REPLY~One can have wishes and dreams nonetheless I think. But let us discuss this issue at another time.~ EXIT
IF~~ THEN REPLY~You would be a wonderful mother, teacher and companion should you chose it one day - I do not have to tell you who wishes to be by your side in that.~ EXIT
IF~~ THEN REPLY~I have never found you so evasive before. But maybe you're just true to yourself in that you do not make choices before the options and consequences are clear.~ EXIT
END


IF~~THEN BEGIN SanLyarTyp1
SAY~ I would recommend the underground passage, <CHARNAME>. We have seen the resources those bandits obviously have and a hidden attack here is more efficient than an open assault. Even though, be prepared to meet some unknown dangers down in the tunnels.~
IF~~THEN DO~SetGlobal("SanCbCasAdv","LOCALS",1) TriggerActivation("Tran5000",TRUE)~EXIT
END

IF~~THEN BEGIN SanBabewait1
SAY~ Your eyes are full of love when you talk of her, <CHARNAME>. You will be so happy when the baby comes, I know you as much.~
IF~~ THEN REPLY~ (Sigh) I wish I could see her and be there with her. I know she will manage everything on her own, no doubt, but this is something for both partners, isn't it?~ GOTO SanBabewait2
IF~~ THEN REPLY~ Oh, this wildcat will growl and fight her way through, that's for sure. I care for the baby, Sandrah, she may forget her new role as a mother too easily.~ GOTO SanBabewait2
END

IF~~THEN BEGIN SanBabewait2
SAY~ Shar-Teel has grown into a very responsible and caring woman following a high code of honor. We will get the notice when to come to Waterdeep in due time. You can be assured that she, my father and Landrel will find us and provide a means to be there when we are supposed to. In this case here, no news means good news.~
IF~~ THEN REPLY~ Counselor, again you are fully right. We have to be here and she has to be there for the moment. It will come to a good end. Still- hm, I simply miss her a bit. ~ GOTO SanBabewait3
END

IF~~THEN BEGIN SanBabewait3
SAY~ So do I. (She embraces you and kisses you dearly.)~
IF~~ THEN REPLY~ Do you remember how our wildcat....(You continue your way arm in arm with Sandrah exchanging happy episodes from your time together with Shar-Teel.)~ DO~ SetGlobal("SanBabewait","LOCALS",1)~EXIT
END

IF~~THEN BEGIN SanTanner21
SAY ~ I admire your restraint to kill this merchant Fael right there. Now we have a chance to pretend we play their game and destroy the whole malicious organization.~
IF~~THEN REPLY~ Provided we can get our hands on the blood of a Silver Dragon...~ DO~ SetGlobal("SanSilvAdl","LOCALS",1)~ GOTO SanTanner22
END

IF~~THEN BEGIN SanTanner22
SAY ~ Swear to me, my love, that we will never do such a deed as to kill an old Silver One!! If we want to prove our heroism against Dragons there are evil ones for us, but never a Silver Dragon.~
IF~~THEN REPLY~ I had no intention to do such a thing, I don't even have an idea where to find one. I hope my clever counselor knows of a way how to trick those bastards.~ GOTO  SanTanner23
IF~~THEN REPLY~ Looks to me it's either the blood of a Silver One or those slayers may escape undetected.~ GOTO SanTanner23
IF~~THEN REPLY~A dragon is a dragon for me, I care little. I just want to solve this riddle, that's all.~DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~ EXIT
END

IF~~THEN BEGIN SanTanner23
SAY~ I do not have the answer yet, <CHARNAME>, but I am convinced we will find it at the right time. We will destroy this killer gang for sure.~
=~ Maybe on our travels we really find a Silver Dragon - but not to kill it. Those ageless wise creatures have the knowledge of anything that happened on Faerun since the days of creation, I would  be astonished if together we could not find a way to end these perverted criminals.~
IF~~THEN REPLY~ You are right. Fael knows that it will take long to find the blood he requires. There is no urgency to act. If everything fails, we can still come back and get the information out of him by force.~EXIT
END

IF~~ THEN BEGIN MekCurse2
SAY~ Yes.~
IF~~THEN REPLY ~ You can really...I confess I am a bit scared by you and how strict you can be at times.~DO ~ SetGlobal("SanMekCurse","GLOBAL",2)~GOTO MekCurse3
END

IF~~ THEN BEGIN MekCurse3
SAY~ Long time ago we have discussed about my goddess, <CHARNAME>, and you assumed she was sometimes weak as she is forced by the other gods to grant her gifts to their disciples, even if they are evil. I told you back then that it is one of the tasks of her priests and other followers like the Harpers to intervene in her name if the misuse exceeds acceptable limits.~
IF~~THEN REPLY ~ I see. So once again I have witnessed such a case today.~ GOTO MekCurse4
END

IF~~ THEN BEGIN MekCurse4
SAY~ Do not confuse the true followers of Mystra with those cowled wizards that allow any use of magic if you just bribe them enough. We may not be as obvious as they are but very efficient.~
IF~~THEN REPLY ~ Hm, now that you mention it - are those cowles acting in Mystra's name as well?~
GOTO MekCurse5
END

IF~~ THEN BEGIN MekCurse5
SAY~ How can you think that, <CHARNAME>? The assumption is almost an insult...No, they are not! They are tolerated at the moment to keep the balance in Athkatla, which is a corrupt city through and through as you have experienced yourself by now. The downfall of the cowled wizards will come for sure and we may be witnesses of it ourselves.~
IF~~THEN EXIT
END

IF~~THEN BEGIN SanAcArF2
SAY ~ Let me get this small bottle of extract from acid slime out. Puuh, what a smell.~
=~ The remaining material is around, here is wood and over there are a lot of feathers where a buzzard has devoured his prey. It will not take long.~
IF~~THEN DO~ StartCutSceneMode()
SmallWait(4)
ForceSpell(Myself,CLERIC_SPIRITUAL_HAMMER)
SmallWait(4)
GiveItemCreate("arow04",Player1,80,0,0)
EndCutSceneMode()
SetGlobal("SanDesTroll","LOCALS",5) ~EXIT
END

IF~~THEN BEGIN SanAcArNF2
SAY ~ We need some material for it, <CHARNAME>, which is not available around here. We will find it in the next forest on our way. I will produce us some arrows then.~
IF~~THEN REPLY~ I see, not everything you can do is by magic, it's alchemy and handicraft this time.~ DO~ SetGlobal("SanDesTroll","LOCALS",3) ~EXIT
END

IF~ Global("SanDesTroll","LOCALS",4)~THEN BEGIN SanAcArNF22
SAY~ You asked me for some acid arrows some time ago, <CHARNAME>. Around here is all I would need to produce us some.~
IF~~THEN REPLY~ Thank you, but our quivers are filled at the moment. I will ask you again if we need some.~ DO~ SetGlobal("SanDesTroll","LOCALS",2)~EXIT
IF~~THEN REPLY~ Very good, I almost forgot it, but my counselor did not. Go ahead, Sandrah.~  GOTO SanAcArF2
END

IF~~ THEN BEGIN SanUnsee1
SAY~ There is no lore about this cult yet, <CHARNAME>, we have heard that it just appeared here in town recently. All we have is the information we have received from the priests and prophets here in the temple district.~
IF~~THEN REPLY ~  You're right, it is too new to have gone into your encyclopedia already. But maybe there was something similar somewhere else before?~  DO~ SetGlobal("SanUnseen","LOCALS",1)~ GOTO SanUnsee2
IF~~THEN REPLY ~ Bad luck. It was just a guess there might be something in your tome. Anyway, we will just find it out by ourselves then.~ DO~ SetGlobal("SanUnseen","LOCALS",1)~ GOTO SanUnsee3
END

IF~~ THEN BEGIN SanUnsee2
SAY~ A good point, <CHARNAME>...Well, there is nothing directly of that strange name, but...~
IF~~THEN REPLY ~ But...Even if it is just a guess, Sandrah, please tell us.~ GOTO SanUnsee4
END

IF~~ THEN BEGIN SanUnsee3
SAY~ Just a second...Well, there is nothing directly of that strange name, but...~
IF~~THEN REPLY ~ But...Even if it is just a guess, Sandrah, please tell us.~ GOTO SanUnsee4
END

IF~~ THEN BEGIN SanUnsee4
SAY~ The name itself...an eye that does not see. A creature that just gazes, it is unsafe to look at it so the believers take out their eyes to survive in its presence.~
IF~~THEN REPLY ~ What would that mean, counselor?~  GOTO SanUnsee5
END

IF~~ THEN BEGIN SanUnsee5
SAY~ Such a creature could be a Medusa or a Beholder, creatures that can petrify or even kill you with their gaze. I would guess it could be a beholder, as there have been such cults to worship these creatures from time to time. Beholders tend to bring people under their control and establish some kind of realm around their habitat. None of such is reported about medusas, they just seem to kill.~
IF~~THEN REPLY ~ Sounds plausible to me. We should prepare ourselves then accordingly.~ DO~IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
END

IF~~ THEN BEGIN SanmysarmDream1
SAY ~ YOU have dreamt of me and Mystra...but...~
IF~~THEN REPLY~Are you angry about that, my love?~ GOTO SanmysarmDream2
IF~~THEN REPLY~ Are you puzzled by that? Am I not supposed to dream of you, or your grandmother?~ GOTO SanmysarmDream2
END

IF~~ THEN BEGIN SanmysarmDream2
SAY ~ Sorry, <CHARNAME>, I did not mean to be rude - I was just completely confused because I met Mystra in what I think was a dream last night. Tell me more about your dream if you can still recall it, please.~
IF~~THEN REPLY~ You and her were standing near the altar in your father's garden. You were talking about your relationship and how your path with me leads you closer and closer to her. And then she gave you some kind of blessing.~ GOTO SanmysarmDream3
END

IF~~ THEN BEGIN SanmysarmDream3
SAY ~ That is exactly what happened in my dream, <CHARNAME>, if it was a dream indeed. I believe it was more since when I woke up I found that my armor had been altered somehow. So the blessing Mystra gave me in that dream has some impact on reality.~
IF~~THEN REPLY~ It was so intense that I felt like being there as well. I wonder what that means...~DO~ SetGlobal("SanNewArm","GLOBAL",6)~EXIT
END

IF~~THEN BEGIN SanEshpTalk1
SAY~ That is a a larger town to the East, to Riatavin, <CHARNAME>. It had some importance in the past due to its location at the foot of the Troll Mountains. Time and time again the city had to defend itself against all kinds of beastly intruders from that region. Is there any current trouble there that you have got notice of, my dear?~
IF~~THEN REPLY~ We have received this strange map from the Kender and the town is marked on it. I don't know if that has any significance for us - but then...some opportunity for an adventurer may lie where it is least expected.~DO ~ SetGlobal("EshpkInf","LOCALS",1)IncrementGlobal("Sanpoints","GLOBAL",1)~ EXIT
END

IF~~THEN BEGIN SanPurskTalk1
SAY~ Purskal is a small mining town, just half a day's travel out of Athkatla. It lies on the caravan road to Trademeet but is not especially significant. Many of the miners there are Half-Orcs but they are peaceful laborers in the mines. Not much more of interest that I can tell you about that town. But trouble can befall any place of which rumor or lore has not reached us yet.~
IF~~THEN REPLY~ It is just that we have got that map mentioning the town and I did not know it even existed. But maybe it is worth exploring, some opportunity for an adventurer may lie where it is least expected.~DO ~ SetGlobal("PurskInf","LOCALS",1)IncrementGlobal("Sanpoints","GLOBAL",1)~ EXIT
END

IF~~ THEN BEGIN SanPelltru1
SAY ~ I told you where I found her, on a mission with my father to the Planesland of Ormoth. I rescued her and we grew up together. In hindsight it seems that our meeting may have been arranged, I was supposed to free her and accept her as my companion.~
IF~~ THEN REPLY~ You think your father took you on that mission just for the purpose of meeting Pelligram?~ GOTO SanPelltru2
IF~~THEN REPLY~ Did your father do that, I mean to provide you with a kind of guardian to protect you in the times to come? ~ GOTO SanPelltru2
IF~~THEN REPLY~ Maybe your father is so powerful to create a creature like her to protect his daughter on the missions he knew she would have later on.~ GOTO SanPelltru2
END

IF~~ THEN BEGIN SanPelltru2
SAY ~ A valid assumption and I thought likewise when I initially discovered some of Pelligram's abilities and found she was surely something more than just a magnificent animal.~
=~ However, discovering and learning more over time, I have now come to believe that my father was just an instrument used to make me meet Pelligram. Even the mighty Elminster would not be able to create a creature like her - I mean she is not a golem or a summoned being. She is a real personality on her own.~
IF~~THEN REPLY~ Hmm. For me it sounds like you suspect someone even mightier than your father to be responsible. Your Goddess? Mystra herself?~ GOTO SanPelltru3
END

IF~~ THEN BEGIN SanPelltru3
SAY ~ It will take a bit of time to provide you with my interpretation, my dear. Do you want to converse about it now or should we postpone the issue to a quiet moment later on? ~
IF~~THEN REPLY~ Right, we will talk about it one of those evenings, provided you allow me the time for a bit of conversation before your desire overwhelms us (Smile at her and give her a kiss.)~ DO~ SetGlobal("SanPelltru","LOCALS",1)~EXIT
IF~~THEN REPLY~ There is no urgent task at hand, Sandrah, so we may as well continue with this topic.~GOTO SanPelltru4
END

IF~~ THEN BEGIN SanPelltru4
SAY ~ You are right, <CHARNAME>, I assume that Pelligram is a creature serving Mystra in some way, just like I think Boo, the hamster, was given to Minsc for some equivalent purpose?~
IF~ InMyArea("Haiass")~ THEN REPLY~ Maybe even Haiass? Why would your Goddess do such a thing - not all of her priests are supplied with such a companion? ~ GOTO SanPelltru5
IF~ !InMyArea("Haiass")~ THEN REPLY~ Why would your Goddess do such a thing - not all of her priests are supplied with such a companion? ~ GOTO SanPelltru5
IF~~THEN REPLY ~ Boo? A special creature, no doubt. But Minsc is no follower of Mystra as far as I know.~ GOTO SanPelltru5
END

IF~~ THEN BEGIN SanPelltru5
SAY ~ (Laughs nervously) I am afraid I may sound silly or self-centered, darling, but I think it has nothing to do with being a priestess of Mystra or not. My goddess seems to have specific interests and even some kind of plan for some mortals of this plane. She provides those people with this kind of sendling to accompany their ways.~
IF~~THEN REPLY~ It is not silly, Sandrah. I think it has become obvious by now that Mystra's interest in you is a very special one, be it because of your father or because you are her grandchild - or maybe just because you are...yourself.~ GOTO SanPelltru6
END

IF~~ THEN BEGIN SanPelltru6
SAY ~ Thank you for not laughing. Even if Mystra is responsible for Pelligram's presence with me, it does not mean she is a spy or tool or similar for the goddess. Her task is to accompany me and maybe make sure I have the right support at a given time. Still she remains an individual, a caring and feeling being with thoughts and wishes of her own.~
IF~~THEN REPLY~ Sounds like you think of her as almost human?~ DO~ SetGlobal("SanPelltru","LOCALS",2)~GOTO SanPelltru7
END

IF~~ THEN BEGIN SanPelltru7
SAY ~ Oh, no, I would not insult her with such a comparison. She is of her own kin and loyal to me as much as she is to Mystra. We will never separate and so our way is together - maybe to that goal that Mystra has in mind for us. Still it will be us to make the decisions, not the Goddess.~
IF~InMyArea("Haiass")~THEN REPLY~ I have much to think about for now, darling. I think I will keep a more open eye on Haiass as well from now on. Thank you.~EXIT
IF~!InMyArea("Haiass")~THEN REPLY~ I have much to think about for now, darling. I think I will keep a more open eye on Pelligram as well from now on. Thank you.~ EXIT
END

IF~~THEN BEGIN SanPCvsDriz1
SAY~ My love, have you not consented to aid him just the same? Or have you changed your mind about that, now that the full scope of that intrigue against him becomes visible?~
IF~~THEN REPLY ~ You know I am no coward, Sandrah, but I have to weight the interest of one companion against the interest of the rest of our party?~ GOTO SanPCvsDriz2
END

IF~~THEN BEGIN SanPCvsDriz2
SAY~ The missing companions of Drizzt versus Imoen that is?~
IF~~THEN REPLY ~ Yes, if you want to put it that way...Your own besta friend Imoen.~ GOTO SanPCvsDriz3
IF~~THEN REPLY ~ Imoen and more, do not forget that Imoen's fate and our mysterious capturer are related and that he was after me as well.~ GOTO SanPCvsDriz3
END

IF~~THEN BEGIN SanPCvsDriz3
SAY~ You are right, <CHARNAME>, I have no way other than to accept your arguments. I dearly hope that we can find a way to solve both quests without the need to split up our forces.~
IF~~THEN REPLY ~ It is clear to me that Drizzt has no other way than to follow his quest on his own, should it become apparent that we will need to make such a decision. I cannot blame him for his loyalty to his friends and I am sure he understands that I feel the same about Imoen.~ DO~ SetGlobal("SanPCvsDriz","LOCALS",6)~ EXIT
IF~~THEN REPLY ~ Mh. You are right, there is no use to discuss this issue of loyalty and love unless we find evidence that we cannot solve both problems as a group.~ DO~ SetGlobal("SanPCvsDriz","LOCALS",6)~ EXIT
IF~~THEN REPLY ~ Will you...Sandrah, will you follow Drizzt when the moment comes?~ DO~IncrementGlobal("Sanpoints","GLOBAL",-2)~ GOTO SanPCvsDriz4
END

IF~~THEN BEGIN SanPCvsDriz4
SAY~ You fool...(Sandrah's eyes are wet with tears as she turns and stumbles away.)~
IF~~THEN DO ~SetGlobal("SanPCvsDriz","LOCALS",2) SetGlobal("SanPidPack","GLOBAL",113)~ EXIT
END

IF~~THEN BEGIN SanSzassPid1
SAY~I can provide you with what I know myself about the topic but be aware that much of it is scientific theory still and either you will find it utterly fascinating or rather boring.~
IF~~THEN REPLY~ Thanks for the warning, darling. I will rely on your knowledge should we ever need it again in the future but I might want to keep your mouth occupied with sweeter things at the moment. ~GOTO SanSzassPid2
IF~~THEN REPLY~I am willing to give it a try, we can stop anytime and, hm, change to lighter and practical things should it really become that theoretical. ~DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanSzassPid3
IF~~THEN REPLY~ It seems important enough for your goddess to make an appearance, which I take partly as a proof for the correctness of that theory. ~DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanSzassPid3
END

IF~~THEN BEGIN SanSzassPid2
SAY~(As you start to kiss her, you soon realise that her mind seems to be elsewhere and her reaction is a bit restrained compared to her usual passion. The topic you have started obviously still bothers her.)~
IF~~THEN DO~SetGlobal("SanDarkMatter","LOCALS",3)~EXIT
END

IF~~THEN BEGIN SanSzassPid3
SAY~ You have probably read a lot back in Candlekeep about Toril and the other planes we know about and how they interact and hang together.~
IF~~THEN REPLY~ Well, yes, not implying that I understood it all or even believe in it fully. ~GOTO SanSzassPid4
END

IF~~THEN BEGIN SanSzassPid4
SAY~Our world and the other planes including Celestia have one thing in common, <CHARNAME>. They are all manifestations of the matter and energy that surrounds them and is intervoven with them. All we are and see and touch is part of the Weave.~
= ~ When I use the power of the Weave in my healing tasks I repair a damage of some part by using a bit of the energy from another part, if you get the picture.~
=~But what is outside of that sphere the Weave creates for us - or is there even an *outside* of some kind.~
IF~~THEN REPLY~I see what you meant with your warning - this seems to become rather scientific or speculative. Hence we started it, let's get on.~ GOTO SanSzassPid5
END

IF~~THEN BEGIN SanSzassPid5
SAY~ Maybe it was theory only - until I got a glimpse of it with my own eyes down under Sharkta Fai.~
=~ Some philosophers tell us that there is not such an *outside* and that where the Weave does not exist there is nothing.~
=~Some say that nothing would be defined as the abscence of anything while others would express it as the negation of anything that is...~
IF~~THEN REPLY~Woo, I guess I see where that would lead us to...this dark matter stuff, right?~ GOTO SanSzassPid6
END

IF~~THEN BEGIN SanSzassPid6
SAY~ Exactly. This *nothing* for our senses and perception is actually *something* - the exact opposite of all we define as being. A negative energy and the complimentary matter.~
IF~~THEN REPLY~If the two meet they eliminate each other, like you and Mystra had anticipated.~GOTO SanSzassPid7
IF~~THEN REPLY~The control of that dark stuff would be the ultimate weapon on our planes, it would just make everything it is aimed at disappear.~GOTO SanSzassPid7
IF~~THEN REPLY~ But what holds the two apart, I mean there must be some kind of boundary between them?~ GOTO SanSzassPid7
END

IF~~THEN BEGIN SanSzassPid7
SAY~ Under normal circumstances the two repel each other like the equal poles of a magnet. In the cases where they really come together on a small scale the result is a kind of black hole in our continuum, a real non-existence.~
IF~~THEN REPLY~ What did Szass Tam do with those dead and undead then?~ GOTO SanSzassPid8
END

IF~~THEN BEGIN SanSzassPid8
SAY~ You know that I do not believe in any afterlife. The reason for that has to do with what we just discussed. But maybe this is a good time to make a break for this day and continue another time.~
IF~~THEN REPLY~ Right, my head already spins from all the nothing that is something and vice versa. We may continue another time.~DO~SetGlobal("SanDarkMatter","LOCALS",1)~EXIT
IF~~THEN REPLY~Oh, I am not tired yet of it, please continue.~ GOTO SanSzassPid9
END

IF~~THEN BEGIN SanSzassPid9
SAY~ We found that normally the Dark Weave and the True Weave are separated naturally. One of the regular cases the boundary is passed is when the soul essence and the life energy of the dead are transferred to the dark side.~
IF~~THEN REPLY~You mean that this is how we all end and become nothing? ~GOTO SanSzassPid10
IF~~THEN REPLY~But only if we had the dark side and evil in us already in our lifetime?~GOTO SanSzassPid10
END

IF~~THEN BEGIN SanSzassPid10
SAY~ At that point in the process we have already ceased to exist, my love. Good or bad or other aspects of our personality have become irrelevant. What happens is just a transfer of energy.~
=~ And that short moment that normally happens unnoticed was used by Szass Tam. As the boundary between the two Weaves opened for the exchange he took that slight moment to transfer some dark matter into his installation. For that purpose he needed  much and highly energised material. The reanimated corpses he could not use and provided to Vennegrat.~
IF~~THEN REPLY~ He would need a real slaughterhouse to force a larger opening into the boundary between the Weaves.~DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanSzassPid11
END

IF~~THEN BEGIN SanSzassPid11
SAY~ Either that - or the essence of specific creatures...~
IF~~THEN REPLY~ Are you referring to a godchild, Sandrah?~GOTO SanSzassPid12
END

IF~~THEN BEGIN SanSzassPid12
SAY~ Even more. You heard his words, he would sacrifice our gods for his own ascension. First of all the one who is connected directly to the True Weave herself.~
IF~~THEN REPLY~Mystra!~DO~SetGlobal("SanDarkMatter","LOCALS",2)~ EXIT
END

IF~~THEN BEGIN SanKanAdv1
SAY ~ Yes, he is, one of the most dangerous in the Realms. The only method the paladins of the joint churches found to end him was to tear his torso apart and hide the parts at distributed places. They could not destroy him permanently, as we have witnessed ourselves.~
IF~~THEN REPLY ~ What do you think we should do, counselor?~ GOTO SanKanAdv2
END

IF~~THEN BEGIN SanKanAdv2
SAY~ A difficult question, my love, and one we must consider thouroghly. There is no necessity for an answer unless we should discover all the missing parts of his body somehow.~
IF~~THEN REPLY ~ And what if we did? - He promised us unbelievable rewards. Even if I do not trust him to give them to us without a fight, we may gain much from defeating a such a lich.~ GOTO SanKanAdv3
END

IF~~THEN BEGIN SanKanAdv3
SAY~ <CHARNAME>, his present state is not such for no reason. If we would restore him, his evil power will once again be greater than it ever was before as such is the nature of liches unless you find a way to destroy them permanently. You would risk all of our lives and our future for such an adventure. There is only one argument I can see why we should ever consider such a deed.~
IF~~THEN REPLY ~ Which is? ~ DO~SetGlobal("SanKangAdv","LOCALS",1)~GOTO SanKanAdv4
END

IF~~THEN BEGIN SanKanAdv4
SAY~ Somebody else might find the skull just by chance, like we did. He or she might succeed in finding the pieces which are still existing right here in town and restore Kangaxx. Can you imagine what will happen if such a hateful creature is set free right here in the middle of a Capital?~
IF~~THEN REPLY ~ We could try to find the pieces of the body without returning them to the lich. In this way we would prevent his restoration by some unlucky greedy fool. ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~ EXIT
IF~~THEN REPLY ~ If we find just one single piece of the lich's body and keep it secure, nobody else would be able to do something foolish, even if they had all the other parts.~DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
IF~~THEN REPLY ~ If we should find a method to destroy the creature forever we would free the Realms permanently from this threat. Anyway we would need to get the pieces first. Until then we will have much time to think and decide about this case.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~EXIT
END

IF~ ~ THEN BEGIN SanAskLief1
SAY ~ I vaguely remember that I have seen his face in my father's house before. A harper and a messenger now and then. I confess I have not paid overly much attention to him, but I think his story is to be believed.~
IF~~THEN REPLY ~ But we cannot get to Waterdeep to deliver the message, can't we?~ DO ~ SetGlobal("SanAskLief","LOCALS",1)~ GOTO SanAskLief2
END

IF~ ~ THEN BEGIN SanAskLief2
SAY ~ You know my father's tendency to appear at all times and odd places. We will probably meet him in Athkatla or Trademeet one of these days. I suggest we keep the message for him safely. ~
IF~~THEN REPLY ~ Fine. Thank you, sweetest counselor of the Realms.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
END

IF~ ~ THEN BEGIN SanHendls1
SAY~ Angered? That is too small a word for it, <CHARNAME>. I already regret that I killed that bastard innkeeper so mercifully fast. I should have captured him and given him to Shar-Teel and Viconia for punishment. I would have restored him every time those two finished a session with him and then we would start again so he could pay for each and every innocent who had to suffer for this so-called *entertainment*~
IF~~THEN REPLY ~ Sandrah!~ DO~ SetGlobal("SanHendak","GLOBAL",3)~ GOTO SanHendls2
END

IF~ ~ THEN BEGIN SanHendls2
SAY ~ Are you shocked by my reaction, my love, or by the deeds that even our worst fantasies may not be capable of imagining?~
IF~~THEN REPLY ~ I think you are right...yes...those people have known no scruples to misuse the helpless and defenseless victims to suffer for their so-called entertainment. They deserve no mercy as they had none for their slaves.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~ GOTO SanHendls3
IF~~THEN REPLY ~ I hate slavery just as much as you do, Sandrah. It is just...in all the time we are together now, with the hundreds of foe I have seen you kill, this is the first time I have ever seen you being satisfied by taking another one's life.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SanHendls3
END

IF~ ~ THEN BEGIN SanHendls3
SAY ~ I will kill the next of those slave drivers with the same merciless satisfaction, <CHARNAME>, that you have seen today with me. I will tell you the story of it some time, when my emotions have calmed down a bit. It has to do with one of my early missions I ventured on with my father, the one where I also freed Pelligram.~
IF~~THEN REPLY ~ Her - but also some children?~ GOTO SanHendls4
END

IF~ ~ THEN BEGIN SanHendls4
SAY ~ ...yes...some...(She hides her face on your shoulder sobbing noiseless. You have never before seen her so agitated.)~
IF~~THEN REPLY ~ (There is nothing for you to do but take her in your arms and caress her head until the sobbing stops. After a while she lifts her head and gives you a kiss before she wordlessly motions you to move on.)~ EXIT
END

IF~ ~ THEN BEGIN SanHendls5
SAY ~ (She smiles at you.) You are a kind and caring observer, my love. I think I owe you a story about the background of my behaviour by now.~
IF~~THEN REPLY ~ Sandrah, it is not curiousity but something I have learned from one of the best healers I know - it helps to heal a wounded soul to talk about your sorrows to someone who cares for you.~ DO~ SetGlobal("SanHendak","GLOBAL",4)IncrementGlobal("Sanpoints","GLOBAL",1)~ GOTO SanHendls6
END

IF~ ~ THEN BEGIN SanHendls6
SAY ~ Who might that clever healer be...(She smiles again at you but then her face becomes a stony mask.) When I had just celebrated my fifteenth birthday, my father took me once again with him on one of his missions. He prepared me this time by telling me I would see probably some of the darker sides of Faerun's reality and even some bloodshed and death. He was certain I was mature enough to face it, and it had to happen at one point in time anyway. ~
IF~~THEN REPLY ~ (You take her hand that is slightly trembling and continue to listen.)~ GOTO SanHendls7
IF~~THEN REPLY ~ Should a caring father really do such a thing to his daughter?~ GOTO SanHendls7
END

IF~ ~ THEN BEGIN SanHendls7
SAY ~ He wanted to be by my side when the rough truth and cruelty of the Realms would end my childhood dreams of a fairytale world as he was certain it would happen sooner or later. I am sure even he was unaware and shocked by what we really found on that mission.~
= ~ We teleported to a space outside of the village that had pleaded for help. There was an unnatural quietness around the area, no bird singing, no dog barking. As we moved slowly into the village we soon found out why. Dead bodies lay strewn in the streets and in every house, barn and building we examined. The intruders had killed men, women, animals, many obviously in their sleep or before they could even grab their weapons to defend themselves. It had not been a fight but rather a slaughter, eliminating the whole population. Only after some time and when we overcame the initial shock of having come too late, we recognised that among all the dead there where no children and no younger women.~
IF~~THEN REPLY ~ ...oh, my, I fear the worst...~  GOTO SanHendls8
END

IF~ ~ THEN BEGIN SanHendls8
SAY ~ Rightfully so, <CHARNAME>. It was not so hard to find the trail of the slavers and their victims as their number was large and the nearby desert to where it led showed it well. Also the occasional dead body of a young woman or a child that had either tried to escape or collapsed from exhaustion lined the way. By nightfall we caught sight of the caravan as they were about to stop for the night. I will never forget the sound of hundreds of weeping children and the wailing of the desperate women that were raped by their capturers - not just for their fun but also to breed just right away a new generation to be born directly into slavery...~
= ~ My father struggled hard to remain patient himself but he feared that a direct attack with even our whole magical power would cause many victims among the captured, as the capturers themselves had a number of wizards among them. He knew they would use their fireballs and summoned monsters remorselessly not caring how many of their prisoners would die through that.~
= ~ While we were still planning our next steps, a young girl of my age had suddenly taken her chance to try an escape and came running directly to the point where we were hiding in the dunes. She was already bleeding and her clothes were torn. More than a dozend of the slavers were on her trail while she came running towards us, running for her life.~
= ~ All I remember is that an instant later the first of her persuers lay dead before my feet while my hammer was already targeted at the next one. Within seconds hell broke loose around us. All I know is that I felt neither pain nor fear, I was just fighting and destroying the monsters that had done what I had seen in that village.~
IF~~THEN REPLY ~ (You remain silent as Sandrah seems to experience the pain of that battle once again.)~  GOTO SanHendls9
END

IF~ ~ THEN BEGIN SanHendls9
SAY ~ ...all of a sudden everything was quiet around me - too quiet. As I looked around, the ground was covered by human bodies as far as I could see in the dimming light. Then one of the bodies next to me began to stir - my father slowly got up to his feet, unhurt but pale as a ghost and trembling like an old man. Blood was dripping from my hammer onto the face of the girl I had tried to rescue, mixing with her own blood there. But - she slowly began to move and her hand swept the blood from her eyes to look around.~
= ~ More and more of the bodies around us began to move and creep and get up to their feet. But many did not...~
=~ (She sighs heavily.) We rescued seven hundred children that eve but more than a hundred and all of the slavers were killed. My father told me later that I reaped most of that bloody harvest among our foe...It was the first time I ever had to take another ones life.~
IF~~THEN REPLY ~ And you found Pelligram there.~ GOTO SanHendls10
END

IF~ ~ THEN BEGIN SanHendls10
SAY ~ I found the poor kitten in a cage moaning beside her dead mother. The bastards had killed the mother and left the mangled body for the small one to feed on. We have been companions since that day.~
= ~ Thank you for listening. That healer you mentioned was right, it helps to part the pain with a caring soul.~
= ~ (She is about to move away but turns around again for one last remark.) The slavers were Red Wizards of Thay with their troups.~
IF~~THEN DO~IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
END


IF ~~ THEN BEGIN SanAmnAdvA
SAY~ <CHARNAME>, you know well how much I love our Imoen, so do not be disturbed when I say, her rescue is our important goal but not ultimately urgent.~
IF ~~ THEN REPLY ~ Not urgent? If I knew you not so well I would call you mad. But I am sure you have a good reason for your statement. So?~  GOTO  SanAmnAdvB
IF ~~ THEN REPLY ~ A strange remark, counselor. Is there some tension between you and my little sister of which I was unaware?~ GOTO  SanAmnAdvB
IF ~~ THEN REPLY ~ What? Sandrah!~  GOTO  SanAmnAdvB
END

IF~~ THEN BEGIN SanAmnAdvB
SAY ~ Imoen's rescue, my beloved <CHARNAME> will be a long term operation to be well planned and organised, not one of those missions to rush into with drawn weapons to save the damsel in distress. And, by the way, if you have not noticed yet, being so close to her, Imoen is far from being the helpless damsel waiting for our immediate appearance. So my advice is to go about with a cool mind in order to succeed.~
IF ~~ THEN REPLY ~ Sorry, if I have sounded like I doubted your loyalty. Please, go on.~ GOTO  SanAmnAdvC
IF ~~ THEN REPLY ~ Maybe it is good that you have not got swept away by an immediate impulse to rush to the rescue. I will listen to your reasoning carefully, Sandrah.~ GOTO  SanAmnAdvC
END

IF~~ THEN BEGIN SanAmnAdvC
SAY ~ I have gained a bit of insight into this city's situation while searching for you after your kidnapping. There is a large turmoil of powers, including the Shadow Thieves, the cowled  wizards and Irenicus and his allies. It looks like for the moment, the cowles have reached a slight advantaged by arresting that strange mage and our friend with their famous *unsanctioned use of magic* law with which they control the town. I have heard rumors of some mysteriuos prison where they lock away those who violate this law. Where this place is seems to be unknown - sure is that it is not in this town and not reachable by common means.~
IF ~~ THEN REPLY ~ Disturbing news, in deed. So how do we find this place then?~ GOTO  SanAmnAdvD
END

IF~~ THEN BEGIN SanAmnAdvD
SAY ~ We need more information and we need probably some allies here in town. Through this man Gaylan, it looks like the Shadow Thieves have already contacted us in a way. Before we blindly take up their offer, I suggest we take some time to investigate for alternatives and make our choice when we have a clearer view on the possible options.~
IF ~Global("SanRomPath","GLOBAL",1)~ THEN REPLY ~And how do you think we should do this?~ GOTO  SanAmnAdvEm
IF ~Global("SanRomPath","GLOBAL",2)~ THEN REPLY ~And how do you think we should do this?~ GOTO  SanAmnAdvEf
END

IF~~ THEN BEGIN SanAmnAdvEm
SAY ~ Our appearance here in town was quite explosive, was it not? We have surely stirred the interest of all those playing a role in this plot already. Add to this your own reputation, Hero of the Sword Coast, and you can be sure that we do not have to search very hard. We do not need to find them, they will find us. Meanwhile we should use our time to gather as much background information around town as we can and also try to make acqaintances that might be helpful.~ 
IF ~~ THEN REPLY ~And what about our little red head?~ GOTO  SanAmnAdvF
END

IF~~ THEN BEGIN SanAmnAdvEf
SAY ~ Our appearance here in town was quite explosive, was it not? We have surely stirred the interest of all those playing a role in this plot already. Add to this your own reputation, Heroine of the Sword Coast, and you can be sure that we do not have to search very hard. We do not need to find them, they will find us. Meanwhile we should use our time to gather as much background information around town as we can and also try to make acqaintances that might be helpful.~ 
IF ~~ THEN REPLY ~And what about our little red head?~ GOTO  SanAmnAdvF
END

IF~~ THEN BEGIN SanAmnAdvF
SAY ~ Imoen is strong, do not forget she is a Bhaalspawn as well and she has grown significantly during our common adventures. Her personality has developped and she can defend herself quite well for the moment. Her situation is maybe not extremely pleasant but her life is not in imminate danger. If either Irenicus or the cowls had intended to kill her, she would not be alive anymore.~
IF ~~ THEN REPLY ~Thank you, my darling counselor. This conversation has helped me a lot to order my own thoughts and disrupted feelings. I know that your words are not cold analysis but full of love and care for Imoen - and for me. (You kiss her intensively)~ DO ~ SetGlobal("SanAmnAdv1","LOCALS",1)~EXIT
END

IF~~ THEN BEGIN SanNotCapt11
SAY~Shortly after you left Baldur's Gate a messenger reached Duke Belt telling him about strange things going on in Athkatla and also that the contact you should meet had been murdered under mysterious circumstances probably involving vampires.~
IF~~ THEN REPLY ~ Ah, that's how we ran into that trap where we were nauseated and kidnapped - but go on with your report, dear.~ GOTO SanNotCapt12
END

IF~~ THEN BEGIN SanNotCapt12
SAY~ Belt immediately asked my father for help who confirmed that he might teleport a small party along the same trail through the spheres you had taken not so long ago to either warn or search you. As I was with my father at their meeting their gaze immediately fell on me and of course they did not even had to ask me before I volunteered.~
IF~~ THEN REPLY ~I may not deserve this loyalty but I'm glad even more you did it.~GOTO SanNotCapt13
IF~~ THEN REPLY ~I imagine you couldn't withstand the chance to get your hooks into me again, my vulture.~ GOTO SanNotCapt13
END

IF~~ THEN BEGIN SanNotCapt13
SAY~ The small party that jumped to your landing place in Amn consisted of Pelligram and me. And we found Haiass at the scene of the crime still were the capturers had left him wounded.~
IF~~ THEN REPLY ~Haiass is here too? What a loyal friend..~GOTO SanNotCapt14
END

IF~~ THEN BEGIN SanNotCapt14
SAY~ With the animals' help I quickly found the trail that your kidnappers had left not anticipating someone might persue them. I followed them to the town and their hideout in the Docks. It were Shadow Thieves that laid the ambush and they nauseated you all with a magic cloud spell.~
= ~ Pelligram and me observed the building from a hiding place and we had not to wait long until a party left there with suspiciously looking boxes, big enough to hold a body. They moved to a secret and well locked entrance beneath the merchant's arcades.~
IF~ AreaCheck("ar0603") ~THEN REPLY ~ And that is where we are now. Please continue. ~ GOTO SanNotCapt3
IF~!AreaCheck("ar0603")~THEN REPLY ~ And that is where we found each other again. Please continue. ~GOTO SanNotCapt3
IF~!AreaCheck("ar0603")~THEN REPLY ~ And that is where we found each other again. But we better move on now and listen to the rest later.~ DO~ SetGlobal("SanNotCapt","LOCALS",1)~ EXIT
IF~ AreaCheck("ar0603") ~THEN REPLY ~ And that is where we are now. But we better move on now and listen to the rest later.~ DO~ SetGlobal("SanNotCapt","LOCALS",1)~ EXIT
END

IF~~ THEN BEGIN SanNotCapt1
SAY ~ It were Shadow Thieves that laid the ambush and they nauseated you all with a magic cloud spell to which Mystra has given me immunity.~
= ~ I started to fight and together with Pelligram I killed many of them. But there were enough of them to snatch your helpless bodies and transport you from the scene. When I noticed that, I stopped the fighting pretending to flee their overwhelming forces.~
IF~~ THEN REPLY ~ It's good they did not know you, otherwise they would never have believed that you would run away from a fight.~  GOTO SanNotCapt2
END

IF~~ THEN BEGIN SanNotCapt2
SAY~ Thank you for these merits. So - as soon as I was out of their sight, I sneaked back to the scene, just in time to see the last of them retreat, carrying the dead and wounded I had caused. I followed them to the town and their hideout in the Docks.~
= ~ Pelligram and me observed the building from a hiding place and we had not to wait long until a party left there with suspiciously looking boxes, big enough to hold a body. They moved to a secret and well locked entrance beneath the merchant's arcades.~
IF~ AreaCheck("ar0603") ~THEN REPLY ~ And that is where we are now. Please continue. ~ GOTO SanNotCapt3
IF~!AreaCheck("ar0603")~THEN REPLY ~ And that is where we found each other again. Please continue. ~GOTO SanNotCapt3
IF~!AreaCheck("ar0603")~THEN REPLY ~ And that is where we found each other again. But we better move on now and listen to the rest later.~ DO~ SetGlobal("SanNotCapt","LOCALS",1)~ EXIT
IF~ AreaCheck("ar0603") ~THEN REPLY ~ And that is where we are now. But we better move on now and listen to the rest later.~ DO~ SetGlobal("SanNotCapt","LOCALS",1)~ EXIT
END

IF~~ THEN BEGIN SanNotCapt3
SAY ~ When your capturers had vanished into this lair, I decided that you were not in immediate danger, as obviously they had no intention to kill you - at least not right away. I also thought, that a direct assault from me alone against an unknown enemy would not only be dangerous for myself but also for you, who seemed to be still unconcious and helpless.~
= ~ I thus spent the next days with cautiously trying to acquire informations about the situation and your possible capturer. I soon found that this was not so easy, as the Shadow Thieves are extremely secretive in their moves - and I soon found they were even more alert, because they found themselves under a kind of siege from some unknown enemy within the city limits.~
IF~~ THEN REPLY~ Looks to me we have come into the middle of some epic struggle that is just starting in this town. ~ GOTO SanNotCapt4
END

IF~~ THEN BEGIN SanNotCapt4
SAY ~ Anyway, this Irenicus seems to be part of that new emerging force threatening Amn, if he is not even the source itself. Those people seem to be interested to strengthen themselves in some way by gaining access to your Bhaal power. This is about all I can tell at the moment. Just the rest of my story then, as it is quickly told.~
= ~ While doing my secret inquiries about the situation, I simply hired a handful of street childs to keep their eyes on the dungeon entrance as well as on the thieves hideout in the docks, so I was notified right away when another guild than the one that had captured you made their move against the dungeon.~
= ~ The entrance went up in a big explosion and the Shadow Thieves and Assassins made it into the dungeon. I followed them, hiding from them and also from the menagerie of creatures Irenicus had to defend the prison - well, and then I found you.~
IF ~~THEN REPLY ~ Yes, you did, my bravehearted lover, and just in time. (You embrace and kiss her.)~ DO~ SetGlobal("SanNotCapt","LOCALS",3)~EXIT
END

IF ~~ THEN BEGIN SanMysSucc11
SAY ~ There are many aspects about my Goddess Mystra that are dealt with by Narvantial. The most widely accepted of his theories is the human origin of Mystra since the very beginning.~
IF ~~ THEN REPLY ~ And?~ GOTO SanMysSucc12
IF ~~ THEN REPLY ~ Since the very beginning...?~  GOTO SanMysSucc12
IF ~~ THEN REPLY ~ You must have an opinion on that issue yourself, I guess.~ GOTO SanMysSucc12
END

IF ~~ THEN BEGIN SanMysSucc12
SAY ~ We both know that this is true for the current incarnation of Mystra, as Midnight is my own grandmother and she was a human priestess and adventurer before Ao elevated her to the Weave.~
= ~ What Narvantial claims to have found out is the fact that there has been a succession of incarnations of the Goddess of All Magic and that all of them had been humans before Ao made them wear the godly mantle.~
IF ~~ THEN REPLY ~ Why should Ao do such - I mean if anyone can guess at all why gods act the way they do?~ GOTO SanMysSucc13
END

IF ~~ THEN BEGIN SanMysSucc13
SAY ~ Hm. Remember that Ao chose humans during the Times of Trouble to aid him against the renegade gods. With Mystra's role to rule over the Weave while all the gods in one way or another require access to that source of power at the same time, Ao might have followed a similar concept. Instead of giving one of the other celestials that advantage over all the others, he tasked a *mere* human with it, trusting her more than any other god.~
IF ~~ THEN REPLY ~ But why?~ GOTO SanMysSucc14
IF~~THEN REPLY~He did well in that, after all I learned about those corrupt creatures calling themselves *gods*.~GOTO SanMysSucc14
END

IF ~~ THEN BEGIN SanMysSucc14
SAY ~ Maybe because a human elevated to such power would not so easily join the everlasting competition for more power that seems to continue among the other gods.~
IF ~~ THEN REPLY ~ I found something else of interest in a book about Narvantial's studies. I mean the way he made his choices among the human candidates for the task...~ GOTO SanMysSucc15
END

IF ~~ THEN BEGIN SanMysSucc15
SAY ~ (She remains silent and thoughtful for a moment.)~
= ~ I think I know what you mean, <CHARNAME>. His thesis that a specific human bloodline has been chosen by Ao and that all incarnations of Mystra have come from that line - up to my grandmother.~
IF ~~ THEN REPLY ~ And is that true, Sandrah?~ GOTO SanMysSucc16
END

IF ~~ THEN BEGIN SanMysSucc16
SAY ~ (Again Sandrah seems to hesitate.) You can imagine that I have thought quite a bit about that issue, my darling. If it were true, it would mean with both Midnight and my father being the only spawns left from that bloodline...~
IF ~~ THEN REPLY ~ ...then you and your children if you would have them one day are the sole heirs of that blood!~ GOTO SanMysSucc17
END

IF ~~ THEN BEGIN SanMysSucc17
SAY ~ Provided that Narvantial's theorie was true?~ 
IF ~~ THEN REPLY ~ Are you saying it is not true?~ GOTO SanMysSucc18
END

IF ~~ THEN BEGIN SanMysSucc18
SAY ~ (This time Sandrah does not hesitate to answer.) To be honest, I do not know.~
= ~ See, Narvantial's original studies and papers have not been seen since the Times of Trouble. Nothing of the evidence he may have had for his theory is known. All that is left is the fact that in conclusion from his findings he could foresay that my grandmother Midnight would be the next incarnation of Mystra. Why and how he came to that conclusion is unknown, as well as it remains unknown if the same thing had in deed ever happened in previous times. Which of course means that we have no evidence that it will happen again in the future.~
IF ~~ THEN REPLY ~ What about your father or the priests of Mystra's temple? Would they hide such things from you for some reason?~ GOTO SanMysSucc19
END

IF ~~ THEN BEGIN SanMysSucc19
SAY ~ (Smiles) I do not think so. All I know about this whole story comes from my father and the priests and I am pretty sure that it is all that any living person on Toril knows about it. Why this Narvantial should really have known more about it or even once held some evidence in his hand remains a mystery.~
IF ~~ THEN REPLY ~ So the whole story - true or not true - has no influence on you in some way?~ GOTO SanMysSucc20
END

IF ~~ THEN BEGIN SanMysSucc20
SAY ~ Definitely not. You know me well enough by now. We are responsible for our lives and deeds and it lies in our hands to shape Toril to be the reality we want it to be. I think my grandmother knew that - my father surely knows it - and I believe and act according to that credo too. ~ 
IF ~~ THEN DO ~ SetGlobal("SanMysRise","GLOBAL",3)~EXIT
END

IF~~ THEN BEGIN SanBLine11
SAY~ Hm, I have stirred up something there, it seems.~
IF ~~ THEN REPLY ~ You have given me a lot of hope with your knowledge, darling. It is a precious thought that the terrible heritage ends with my generation of Bhaalspawns - unless one of them would raise to godhood.~ GOTO SanBLine12
END

IF~~ THEN BEGIN SanBLine12
SAY~ Which is something that we will prevent!~
IF ~~ THEN REPLY ~The reason I started this conversation was actually aimed at your own heritage and especially your own relationship to godly blood.~ GOTO SanBLine13
END

IF~~ THEN BEGIN SanBLine13
SAY~ Do I need to remind you, that my grandparents, although Gods by now, where of human origin and my father was received while both where still in their human form. My father is blessed by Mystra with special abilities but he and my mother are mortal humans, and so am I.~
IF ~~ THEN REPLY ~ Yes, yes, I know all of that. But other than the blood of a god in my veins that ends with me, your bloodline continues through the generations - and it is a very special one.~ GOTO SanBLine14
END

IF~~ THEN BEGIN SanBLine14
SAY~ What are you aiming at, my love?~
IF ~~ THEN REPLY ~ We have the evidence that from the same blood that runs in your veins at least two gods - Mystra and Cyric - have been elevated in the past. I say at least, because according to the scriptures of Narvantial there were even more in the past - and there will be future gods coming from that line you represent.~ DO ~ SetGlobal("SanMysRise","GLOBAL",4)~ GOTO SanBLine15
END

IF~~ THEN BEGIN SanBLine15
SAY~ Oh, no, <CHARNAME>, that is just too much! Shall I think of myself as the possible mother or grandmother of future gods just based on some vague and lost studies of an obscure historian? ~
IF ~~ THEN REPLY ~ Forgive me for bringing this topic up. You are right, it's really very vague - and you are surely not the woman to base your decisions on rumors like that.~ EXIT
IF ~~ THEN REPLY ~ It is vague, I agree. But what if there was a grain of truth in the whole story...?~ EXIT
IF ~~ THEN REPLY ~ I should have known it, Sandrah, you would draw your own conclusions and make your own fearless decisions nonetheless...~ EXIT
END

// PID Package 113 - (Interlude Drizzt quarrel)

IF ~ IsGabber(Player1) Global("SanPidPack","GLOBAL",113) ~ THEN BEGIN SanPCInit113
SAY ~ (Sandrah sees you approaching her and quickly moves out of your way.)~
IF ~~THEN REPLY~ (It is apparent that you have hurt her deeply with your behaviour concerning Drizzt. You decide to think some more about your relationship and what she really means to you.)~ DO~ SetGlobal("SanPidPack","GLOBAL",114) ~EXIT
END

IF ~ IsGabber(Player1) Global("SanPidPack","GLOBAL",114) ~ THEN BEGIN SanPCInit114
SAY ~ (Sandrah looks up sadly to you as she recognises your attempt to start a conversation.) <CHARNAME>?~
IF ~~THEN REPLY~ Sandrah, please give me chance to apologize for my doubt in your loyalty to me and to Imoen. If there is a way to solve both our quest and Drizzt's quest without parting we will find it - together.~ GOTO SanPCvsDriz5
IF ~~THEN REPLY~ Sandrah, please let me explain something you might have misunderstood. If really the situation should arise that we cannot support Drizzt's quest anymore because of Imoen, I will understand that you will aid him nonetheless. I am sure you two would find a way to rejoin us a quickly as possible and we would continue together once again.~ GOTO SanPCvsDriz6
END

IF~~THEN BEGIN SanPCvsDriz5
SAY~ Yes, we will. It is me who has to apologize, <CHARNAME>, I should have known that by  myself. (Sandrah kisses you on the mouth.)~
IF~~THEN DO ~SetGlobal("SanPCvsDriz","LOCALS",3) SetGlobal("SanPidPack","GLOBAL",13)~ EXIT
END

IF~~THEN BEGIN SanPCvsDriz6
SAY~ This is good to know, <CHARNAME>. If there is a way to solve both our quest and Drizzt's quest without parting your counselor will find it, I swear. Let me tell the news to Drizzt. (Sandrah kisses you on the mouth.)~
IF~~THEN DO ~SetGlobal("SanPCvsDriz","LOCALS",3) SetGlobal("SanPidPack","GLOBAL",13)~ EXIT
END

// PID Package 14 - Reaching Brynnlaw

IF ~ IsGabber(Player1) Global("SanPidPack","GLOBAL",14) ~ THEN BEGIN SanPCInit14
SAY ~ (Your trusted and beloved companion raises her gaze as you approach. You know that there is nothing she will not share with you.) <CHARNAME>?~
IF ~RandomNum(2,1)TimeGT(12)~THEN REPLY~Share my bed with me tonight and soothe my soul with your love, Sandrah.~ GOTO SanBedPid1
IF ~RandomNum(2,2)TimeGT(12)~THEN REPLY~ Share my bed with me tonight and soothe my soul with your love, Sandrah.~ GOTO SanBedPid2
IF ~TimeLT(13)~THEN REPLY~ Share my bed with me tonight and soothe my soul with your love, Sandrah.~ GOTO SanBedPid3
IF ~RandomNum(4,1)~THEN REPLY~Sandrah, I did never regret my trust in you since the day of our first meeting.~ GOTO SanCompliMeet1
IF ~RandomNum(4,2)~THEN REPLY~Sandrah, I did never regret my trust in you since the day of our first meeting.~ GOTO SanCompliMeet2
IF ~RandomNum(4,3)~THEN REPLY~Sandrah, I did never regret my trust in you since the day of our first meeting.~ GOTO SanCompliMeet3
IF ~RandomNum(4,4)~THEN REPLY~Sandrah, I did never regret my trust in you since the day of our first meeting.~ GOTO SanCompliMeet4
IF~GlobalGT("SanHintFactory","GLOBAL",9) !See("CVShauq") Global("SanSharkTru","LOCALS",0)~THEN REPLY~You have not told our orc princess the whole truth about Sharkta Fai, right?~ GOTO SharkTru1
IF~Global("PoolHealT","CVSHA7",4)~THEN REPLY~ (You take a deep breath) Let us enter that pool now, Sandrah.~DO~SetGlobal("PoolHealT","CVSHA7",5)~GOTO PoolTalk17
IF ~Global("SanMysRise","GLOBAL",2)~ THEN REPLY ~ Sandrah, are you familiar with the studies of Narvantial of Soubar?~ GOTO SanMysSucc11
IF ~ GlobalGT("SanFlirt","GLOBAL",19) Global("SanMysRise","GLOBAL",3)~THEN REPLY ~ We were talking about children the other day, Sandrah, and about my heritage in this context.~ GOTO SanBLine11
IF~Global("SanVampWDQuest","GLOBAL",16)~ THEN REPLY~ Let us now enter that portal.~ GOTO DoWDVampQ6
IF~ Global("FreeSlaves","GLOBAL",1) Global("SanHendak","GLOBAL",3)~ THEN REPLY ~ (You take a quiet moment to embrace Sandrah kindly.) The freeing of those slaves, especially the children has both agitated and relieveed you, Sandrah.~ GOTO SanHendls5
IF~ Global("ys_FindElminster","GLOBAL",1) Global("SanAskLief","LOCALS",0) ~ THEN REPLY ~ Sandrah, have you ever heard or met this mage Lief. Is he to be trusted or may this be another trap misusing your father's name?~ GOTO SanAskLief1
IF~GlobalGT("GettingApprentices","GLOBAL",0) Global("SanPCHassphere","GLOBAL",0) ~ THEN REPLY~ Sandrah, as a priestess of Mystra you are probably the best suitable counselor in matters of this planar sphere.~ GOTO SanSphereAdv1
IF~ Global("KangaxxQuest","GLOBAL",1) Global("SanKangAdv","LOCALS",0)~ THEN REPLY ~ This talking skull, Kangaxx, he's a lich, right, Sandrah?~ GOTO SanKanAdv1
IF ~ Global("SanPelltru","LOCALS",1)~ THEN REPLY~We talked about Pelligram recently and I remember we made the assumption that your Goddess mystra arranged for the two of you to meet.~ GOTO SanPelltru4
IF~ GlobalGT("C#AjantisRitterSuche","GLOBAL",0) Global("SanGoldBall","LOCALS",0) PartyHasItem("C#Ajgk")~ THEN REPLY~ How can we go about this mystery of the missing knights, my counselor?~ GOTO SanGlobAjanMiss1
IF~GlobalGT("SanAdrianL","Global",5) Global("SanAskAdrian","LOCALS",0)InParty("RH#Adrian")~ THEN REPLY ~Adrian?~DO~SetGlobal("SanAskAdrian","LOCALS",1)~GOTO SanAdri1
IF~GlobalGT("SanAranH","GLOBAL",9) Global("SanAskAran","LOCALS",0)InParty("C-Aran")~ THEN REPLY ~Aran?~DO~SetGlobal("SanAskAran","LOCALS",1)~GOTO SanAranL1
IF~Global("CVGodag","GLOBAL",9) Global("CVGodagJon","GLOBAL",1)~THEN REPLY~I still try to understand your talk with Irenicus concerning Gorion's dagger. ~DO~SetGlobal("CVGodag","GLOBAL",10)~GOTO GodagBG22
IF~Global("SANSHARINT","GLOBAL",26)GlobalGT("Chapter","GLOBAL",15) Global("SanBabewait","LOCALS",0)!AreaType(CITY)~ THEN REPLY~ How may our wildcat Shar-Teel be faring these days?~ GOTO SanBabewait1
IF~ Global("PurskInf","LOCALS",0) OR(2) PartyHasItem("DDPkMap") AreaCheck("dd1900") ~ THEN REPLY~ My counselor, can you tell me something about Purskal?~GOTO SanPurskTalk1
IF~ Global("SanDesTroll","LOCALS",2) NumItemsPartyLT("arow04",5) AreaType(FOREST)  ~ THEN REPLY~ Sandrah, we are quickly running out of acid arrows. Can you provide us with some once again?~ GOTO SanAcArF2
IF~ Global("SanDesTroll","LOCALS",2) NumItemsPartyLT("arow04",5) !AreaType(FOREST)  ~ THEN REPLY~ Sandrah, we are quickly running out of acid arrows. Can you provide us with some once again?~ GOTO SanAcArNF2
IF ~Global("EshpkInf","LOCALS",0) PartyHasItem("DDMap01")~ THEN REPLY~ My counselor, do you know any lore about Eshpurta?~GOTO  SanEshpTalk1
IF~ Global("SanNewArm","GLOBAL",5)~ THEN REPLY~ Sandrah, I have dreamt of you and Mystra last night...~ GOTO SanmysarmDream1
IF~Global("CbPartyIsInSoubarMilitia","GLOBAL",7) Global("SanCbCasAdv","LOCALS",0)~ THEN REPLY~ Sandrah, you have heard our options how to get access to Lyrars. I'd like to hear my counselor's advice on it.~ GOTO SanLyarTyp1
IF~ Global("SankangFull","LOCALS",2) GlobalLT("UsedCrypt0331","GLOBAL",2)~ THEN REPLY~ Let us talk about what to do with the Lich parts we have found, Sandrah.~ GOTO SanTombkanEnt32
IF~ Global("SanMekCurse","GLOBAL",1)~ THEN REPLY~ This mage Mekrath...has he really transported to the Nine Hells with his last spell as you have cursed him?~ GOTO MekCurse2
IF~Global("C#SB_Auftraggeber","GLOBAL",1) Global("SanSilvAdl","LOCALS",0)~ THEN REPLY~ I really want to find out about that crazy tanner and especially about the people that employ such a beast.~ GOTO SanTanner21
IF~GlobalGT("SolaufeinJob","GLOBAL",4) Global("SanRomPath","GLOBAL",1) Global("SanDrwCompl","LOCALS",0)~THEN REPLY~ You are beautiful, my love, even as a drow - or maybe the exotic appearance attracts me even more.~GOTO SanDrwCompl1
IF~Global("SanProph","GLOBAL",3)~ THEN REPLY~ Will you share with me what this fish priestess had to tell you?~ GOTO FishPrie1
IF~Global("SanProph","GLOBAL",7) GlobalGT("udMind","GLOBAL",39)~ THEN REPLY~ Will you share with me what this Githyanki had to tell you?~ GOTO FishPrie11
IF~ Global("SanNecroHa","LOCALS",2)~ THEN REPLY~ A while ago you declared your concerns about Necromancy. I understood that Mystra and thus her priestess oppose to those practices.~ EXTERN BSANDR SanNecrohate4
IF~ Global("SanSlayHelp","LOCALS",3)~THEN REPLY~ Was I Bhaal himself for a time when I turned into the slayer creature?~ GOTO SanPCWasSlayer22
IF~  Global("BeholderPlot","GLOBAL",1) !Dead("UnseeingEye")Global("SanUnseen","LOCALS",0) ~ THEN REPLY ~ Sandrah, have you ever heard about this *Cult of the Unseeing Eye*? ~ GOTO SanUnsee1
IF~ Global("SanSharInt","GLOBAL",37) AreaType(OUTDOOR) Global("SanBabeToo","LOCALS",0)~ THEN REPLY ~ Sandrah, I wonder, when all of this adventuring will be finished one day, have you ever imagined yourself as a mother of your own children?~ GOTO SanBabeHave1
IF~AreaCheck("AR2400") !Dead("udmaster") PartyHasItem("Misc9x")~THEN REPLY~We need a mind flayer to open the door. Any idea, counselor?~GOTO Flayeropen
IF~InParty("ADAngel") !AreaCheck("ar0800") Global("CVAngelRev","LOCALS",0)~THEN REPLY~What had that Angelo to tell you so urgently?~GOTO SanAdSarD
IF~!Global("SanCanTravel","GLOBAL",2) AreaCheck("CVDre1")~ THEN REPLY ~I think it's time again to retutn to Amn, Sandrah.~ DO ~SetGlobal("SanTravel","GLOBAL",62)~ EXIT
IF~~THEN REPLY~Your hammer seems to be stuck.~GOTO SanHamCl2
END

IF~~THEN BEGIN Flayeropen
SAY~We should wait for one in the machinery room in the north with one of the control collars ready. They should occasionally come to inspect the machinery there.~
IF~~THEN DO~ SetGlobalTimer("SpawnIllTimer","GLOBAL",TWELVE_MINUTES)SetGlobal("spawnIll","AR2400",0)~ EXIT
END

IF~~ THEN BEGIN SanDrwCompl1
SAY~ (Laughs) You are lucky, <CHARNAME>, I am drow only on the outside. Such an impertinent behaviour from a male, I would assure you would learn your lesson very well - and long.~
IF~~THEN REPLY~ And how would my cruel mistress punish me?~ DO~SetGlobal("SanDrwCompl","LOCALS",1)~ GOTO SanDrwCompl2
END

IF~~ THEN BEGIN SanDrwCompl2
SAY~ First a bit of squeeze torture...like this. (She embraces you and her squeeze is harder than you would imagine from her gracile build but her closeness is welcome in this loveless environment.)~
=~Next comes the agony of suffocation. (Her lips cut off your breathing and her tongue enters between your lips to steal the last bit of air from you.)~
=~And last comes the torture you fear the most. (You feel her hand gripping hard but experienced for the treasure in your loins which she claims her own.)~  
IF~~THEN REPLY~ Oooh,...Mistress, you have to blame yourself for your unruly slave. With a treatment like this to endure you invite him to fail as often as possible.~ EXIT
IF~~THEN REPLY~ Poor me. If your type of punishment becomes known among the poor males down here I will not live long as they would all try to replace me for sure.~ EXIT
IF~~THEN REPLY~You take your disguise quite seriously - or is that your true nature after all (grin)?~EXIT
END

IF~~ THEN BEGIN FishPrie1
SAY~ The *fish priest's* name was Sallinithyl, <CHARNAME>, devoted to her faith and her people even if very different from us.~
IF~~THEN REPLY~ Well...yes. We helped them out, so I was not that bad to them, Sandrah.~ DO~ SetGlobal("SanProph","GLOBAL",4)~ GOTO FishPrie2
END

IF~~ THEN BEGIN FishPrie11
SAY~ Simyaz is devoted to her faith and her people even if very different from us.~
IF~~THEN REPLY~ Well...yes. We helped them out, so I was not that bad to them, Sandrah.~ DO~ SetGlobal("SanProph","GLOBAL",8)~ GOTO FishPrie12
END

IF~~ THEN BEGIN FishPrie12
SAY~ You did well under your rough surface, my heroic adventurer. Maybe the different races will understand each other a bit better for some time. By the way, this warrior and priestess actually was a female of her race.~
=~ So, Simyaz knew who I am and that I come from Mystra's blood from the *Book That Writes Itself*.~
IF~~THEN REPLY~ Wow, another of those prophesies that somehow have to do with your grandmother?~ GOTO FishPrie3
IF~~THEN REPLY~ A book writing itself - sounds like its keeping record of something.~ GOTO FishPrie3
END

IF~~ THEN BEGIN FishPrie2
SAY~ You did well under your rough surface, my heroic adventurer.~
=~ So, Sallinithyl knew who I am and that I come from Mystra's blood from the *Book That Writes Itself*.~
IF~~THEN REPLY~ Wow, another of those prophesies that somehow have to do with your grandmother?~ GOTO FishPrie3
IF~~THEN REPLY~ A book writing itself - sounds like its keeping record of something.~ GOTO FishPrie3
END

IF~~ THEN BEGIN FishPrie3
SAY~ Your brain works clear under the unkempt shell, It sounded like it was the record of the celestial and the priests *since the very beginning*. If that is true it would contain the record of all of my bloodline - as well as probably yours.~
IF~~THEN REPLY~ We both know about all of that just too well. We should have read it earlier, but now it seems to be of not much worth for us.~ EXIT
IF~~THEN REPLY~ Will that book reveal anything we do not know by now?~ GOTO FishPrie4
IF~~THEN REPLY~ Yours I understand, priestess, but mine?~ GOTO FishPrie4
END

IF~~ THEN BEGIN FishPrie4
SAY~ You will be in it as a child of Bhaal I assume. I am in it because of my being a priestess as well as coming from Mystra's blood.~
IF~~THEN REPLY~ SANDRAH! If that is true all of the other Bhaalspawns will be in it as well. All those like Sarevok that may want my life because I stand between them and Bhaal's Throne. We must find and read it.~ GOTO FishPrie5
IF~~THEN REPLY~ Would it contain anything you want to know about yourself that makes it worth finding it?~ GOTO FishPrie7
END

IF~~ THEN BEGIN FishPrie5
SAY~ A valid idea, even if I have not received its location. She said there is a different one for each seeker.~
IF~~THEN REPLY~ Who would know about such a place, you think? Oghma's priests perhaps?~ GOTO FishPrie8
END

IF~~ THEN BEGIN FishPrie6
SAY~ She did not read it careful enough, it seems, as she took me as a descendent of Mystra by the motherly bloodline. We know this is not the case.~
IF~~THEN REPLY~ Will it reveal anything else we do not know by now?~ GOTO FishPrie4
IF~~THEN REPLY~ Would the book contain anything you want to know about yourself that makes it worth finding it?~ GOTO FishPrie7
END

IF~~ THEN BEGIN FishPrie7
SAY~ Nothing I can think of at the moment. Still it is good to have knowledge of the existence of such a thing.~
IF~~THEN REPLY~ If another Bhaalspawn would read in it he or she will know about me...~ GOTO FishPrie5
IF~~THEN REPLY~ Who would know about the place where it is kept, you think? Oghma's priests perhaps?~ GOTO FishPrie8
END

IF~~ THEN BEGIN FishPrie8
SAY~ Those - or Elminster.~
IF~~THEN DO~IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
END

IF~~ THEN BEGIN SanBedPid1
SAY~ Oh, how much I have longed for that suggestion. (She licks her lips seductively.)~
IF~~THEN EXIT
END

IF~~ THEN BEGIN SanBedPid2
SAY~ Oh, why do I hear that wonderful suggestion not more often? (She blows you a kiss.)~
IF~~THEN EXIT
END

IF~~ THEN BEGIN SanBedPid3
SAY~ Tonight? This is about a lifetime ahead still. I need some proof of your love much earlier than that.~
IF~~THEN REPLY~ Well, then...~ DO~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~ EXIT
END

IF~~ THEN BEGIN SanCompliMeet1
SAY~ Neither did I. And a long journey is still ahead of us, my love. ~
IF~~THEN REPLY~ A common journey.~ EXIT
END

IF~~ THEN BEGIN SanCompliMeet2
SAY~ Why do you not show me the truth of your words with some action? (Before you can do anything, she lets herself fall into your arms which instictively embrace her and keep her from tumbling. Her eyes are half closed and her mouth is ready to be kissed.)~
IF~~THEN REPLY~ (You touch her lips softly with your index finger to which she responds with her tongue. You lean forward and kiss her.)~ EXIT
END

IF~~ THEN BEGIN SanCompliMeet3
SAY~ I will never forget that day which has changed my whole life. An unrevertable change.~
IF~~THEN REPLY~ You wouldn't want to change it anyway, would you. (You do not wait for an answer but embrace and kiss her. Her willing response is your answer.)~EXIT
END

IF~~ THEN BEGIN SanCompliMeet4
SAY~ Since that day we have accomplished it to produce something good out of the most hopeless and dreadful situations - time and time again.~
IF~~THEN REPLY~ It is our joint strength and love that makes such possible.~ EXIT
END

//Meeting everybody in Irenicus' Dungeon

IF~Global("San0602Reunite","LOCALS",2)~ THEN BEGIN BG2Reunion1
SAY ~ What has happened to you, <CHARNAME>? Do you have any idea why you were kidnapped and taken to this place?~
IF~~THEN REPLY ~ Imoen reports about experiments done to us. All I can remember is a lot of pain.~ DO~ SetGlobal("San0602Reunite","LOCALS",3)~ GOTO BG2Reunion2
END

IF~~THEN BEGIN BG2Reunion2
SAY~ Experiments on you two? That can only mean one thing, the reason for your kidnapping are your Bhaal powers. We were warned already that you would become the target for those who seek to use them for dark purposes. Once we are out of here we should decide about our next steps against your capturer.~
IF ~ InParty("Imoen2")~ THEN GOTO BG2Reunion3
IF ~ !InParty("Imoen2") InParty("Jaheira") ~ THEN GOTO BG2Reunion4
IF~ !InParty("Imoen2") !InParty("Jaheira") InParty("Minsc") ~ THEN GOTO BG2Reunion5
IF~ !InParty("Imoen2") !InParty("Jaheira") !InParty("Minsc") InParty("ACBre")~ THEN GOTO BG2Reunion6
IF~ !InParty("Imoen2") !InParty("Jaheira") !InParty("Minsc") !InParty("ACBre") InParty("Wulfg2")~ THEN GOTO BG2Reunion7
IF~ !InParty("Imoen2") !InParty("Jaheira") !InParty("Minsc") !InParty("ACBre") !InParty("Wulfg2") InParty("RChloe")~ THEN GOTO BG2Reunion8
IF~ !InParty("Imoen2") !InParty("Jaheira") !InParty("Minsc") !InParty("ACBre") !InParty("Wulfg2") !InParty("RChloe")~ THEN REPLY~ I have met some of our comrades already inside here, I have send them ahead to find an exit on their own. I thought it would be easier to sneak out individually then to draw much attention by moving as a group.~ GOTO BG2Reunion9
END

IF~~THEN BEGIN BG2Reunion3
SAY ~ (Sandrah takes Imoen in her arms.) My besta friend, what have they done to you? We will find the monster who did that and he will pay for it. I am so glad to see you again.~
IF~~ THEN EXTERN  IMOENJ  BG2ReunionImo
END

IF~~THEN BEGIN BG2Reunion4
SAY~ (Sandrah's face is very grave as she faces Jaheira. You see how she struggles to find the right words for the druid.) Jaheira, at least you are well...I am so...(She dearly embraces the older woman and hides her face in her hair. Only you can see that Sandrah's eyes are full of tears.)~
IF~~ THEN EXTERN  JAHEIRAJ  BG2ReunionJah
END

IF~~THEN BEGIN BG2Reunion5
SAY~ My fearless guardian, I see you have rescued Boo as well. Pelligram and me have missed you, too. But where is our beloved witch?~
IF~~ THEN EXTERN  MINSCJ  BG2ReunionMinsc
END

IF~~THEN BEGIN BG2Reunion6
SAY~ Breagar, you made it as well. Good to see you, old comrade.~
IF~~ THEN EXTERN  ACBreJ  BG2ReunionBre
END

IF~~THEN BEGIN BG2Reunion7
SAY~ Looks like our capturer has kidnapped others as well. Nice to meet you, I am Sandrah of Waterdeep.~
IF~~ THEN EXTERN  Wulfg2J  BG2Reunionwul
END

IF~~THEN BEGIN BG2Reunion8
SAY~ Hello, I have seen you in the Seven Dens the other day. Had I known you had similar interests to mine, it would have been advantageous to venture in here together. But anyway, the way out will be challanging as well. I am Sandrah of Waterdeep.~
IF~~ THEN EXTERN  RCHLOEJ  BG2Reunionchlo
END

IF ~~THEN BEGIN BG2Reunion9
SAY ~ My poor fool, you really needed the company of your counselor. I hope we will soon find all of them again and well.~
= ~ My poor, lovely, adorable fool. (She shakes her head in disbelief about your decision, but a second later she embraces and kisses you.)~
IF ~~ THEN GOTO BG2Reunion16
END

IF ~~THEN BEGIN BG2Reunion10
SAY~ When you see the city outside, I am sure all will be forgotten, Imoen.~
IF ~ InParty("Jaheira") ~ GOTO BG2Reunion4
IF~ !InParty("Jaheira") InParty("Minsc") ~ THEN GOTO BG2Reunion5
IF~ !InParty("Jaheira") !InParty("Minsc") InParty("ACBre")~ THEN GOTO BG2Reunion6
IF~ !InParty("Jaheira") !InParty("Minsc") !InParty("ACBre") InParty("Wulfg2")~ THEN GOTO BG2Reunion7
IF~ !InParty("Jaheira") !InParty("Minsc") !InParty("ACBre") !InParty("Wulfg2") InParty("RChloe")~ THEN GOTO BG2Reunion8
IF~ !InParty("Jaheira") !InParty("Minsc") !InParty("ACBre") !InParty("Wulfg2") !InParty("RChloe")~ THEN GOTO BG2Reunion16
END

IF ~~THEN BEGIN BG2Reunion11
SAY~ You must be strong, Jaheira...I mean, you are strong. You will see for yourself, my friend. It is best that you see it yourself when we find the way to get upstairs.~
IF~  InParty("Minsc") ~ THEN GOTO BG2Reunion5
IF~  !InParty("Minsc") InParty("ACBre")~ THEN GOTO BG2Reunion6
IF~  !InParty("Minsc") !InParty("ACBre") InParty("Wulfg2")~ THEN GOTO BG2Reunion7
IF~ !InParty("Minsc") !InParty("ACBre") !InParty("Wulfg2") InParty("RChloe")~ THEN GOTO BG2Reunion8
IF~  !InParty("Minsc") !InParty("ACBre") !InParty("Wulfg2") !InParty("RChloe")~ THEN GOTO BG2Reunion16
END

IF ~~THEN BEGIN BG2Reunion12
SAY~ (The mighty warrior weeps in Sandrah's arms like a hurt little boy) Psst, my love, it is not your fault, psst. We will find him and he will pay for that. But now be strong, Minsc. If we fail, he will be out there to harm others like he harmed our Hathran. We will not allow that.~
= ~ (Minsk straightens himself to his full height again and nods silently.)~
IF~  InParty("ACBre")~ THEN GOTO BG2Reunion6
IF~ !InParty("ACBre") InParty("Wulfg2")~ THEN GOTO BG2Reunion7
IF~ !InParty("ACBre") !InParty("Wulfg2") InParty("RChloe")~ THEN GOTO BG2Reunion8
IF~  !InParty("ACBre") !InParty("Wulfg2") !InParty("RChloe")~ THEN GOTO BG2Reunion16
END

IF ~~THEN BEGIN BG2Reunion13
SAY~ Count on that.~
IF~ InParty("Wulfg2")~ THEN GOTO BG2Reunion7
IF~ !InParty("Wulfg2") InParty("RChloe")~ THEN GOTO BG2Reunion8
IF~ !InParty("Wulfg2") !InParty("RChloe")~ THEN GOTO BG2Reunion16
END

IF ~~THEN BEGIN BG2Reunion14
SAY~ A friend of my beloved Drizzt. That makes you a friend of mine as well. I look ahead to travel and fight at your side, Wulfgar.~
IF~  InParty("RChloe")~ THEN DO ~ SetGlobal("SanMetChloe","LOCALS",1)~ GOTO BG2Reunion8
IF~ !InParty("RChloe")~ THEN GOTO BG2Reunion16
END

IF ~~THEN BEGIN BG2Reunion15
SAY~ You have an interesting heritage, Chloe. I can sense something very special about you. I hope we get a chance to get to know each other better. But first let us make it out of this dungeon together.~
IF~~THEN GOTO BG2Reunion16
END

IF~Global("SanHeardIren","GLOBAL",1)~ THEN BEGIN SanremIren1
SAY ~ Jon Irenicus!~
IF~Global("CentPC","GLOBAL",0)~THEN REPLY ~ Someone you know?~ GOTO SanremIren2
IF~GlobalGT("CentPC","GLOBAL",1) ~THEN REPLY ~ The man who cursed this spider creature - Centeol - we encountered in the Cloakwood Forest?~ GOTO SanremIren3
END

IF ~~THEN BEGIN SanremIren2
SAY~ The context in which I remember his name had to do with something done to an elf community. But like all these things, the elves hide it in the mist they love to surround what they consider their internal affairs.~
IF~ Global("SanIreHint","LOCALS",2)~ THEN REPLY~ Do you remember that scroll we found in the Doom Mountain when we fought that mysterious hooded creature. It was signed "I." - like Irenicus.~ DO ~ SetGlobal("SanHeardIren","GLOBAL",2)~ EXIT
IF~ !Global("SanIreHint","LOCALS",2)~ THEN REPLY~ It really must be someone of great potential and resources to build up a complex like this below a capital city. foe are getting mightier since we defeated Sarevok, just like you warned me.~ DO ~ SetGlobal("SanHeardIren","GLOBAL",2)~ EXIT
END
                     
IF ~~THEN BEGIN SanremIren3
SAY~ Yes, we heard that name there. The context in which I remember his name had to do with something done to an elf community. But like all these things, the elves hide it in the mist they love to surround what they consider their internal affairs.~
IF~ Global("SanIreHint","LOCALS",2)~ THEN REPLY~ Do you remember that scroll we found in the Doom Mountain when we fought that mysterious hooded creature. It was signed "I." - like Irenicus.~ DO ~ SetGlobal("SanHeardIren","GLOBAL",2)~ EXIT
IF~ !Global("SanIreHint","LOCALS",2)~ THEN REPLY~ It really must be someone of great potential and resources to build up a complex like this below a capital city. foe are getting mightier since we defeated Sarevok, just like you warned me.~ DO ~ SetGlobal("SanHeardIren","GLOBAL",2)~ EXIT
END

IF ~ Global("SanYoshDun","GLOBAL",2) ~ THEN BEGIN SanYoshDunNoYosh1
SAY ~ We are indeed in Athkatla in Amn, <CHARNAME>, very much beneath the center of town. I followed the Shadow Thieves from the merchant's promenade into this dungeon to find you.~
IF~~THEN REPLY~ But strange, how come the Shadow Thieves attack this prison, I thought they are in league with our capturers? ~ DO ~ SetGlobal("SanYoshDun","GLOBAL",3)~ GOTO SanYoshDunNoYosh2
END

IF~~ THEN BEGIN SanYoshDunNoYosh2
SAY~ Yes and no. You were taken here by one group of Shadow Thieves while another group today assaulted this place. As far as I can tell from the little information I could secretly gather, there are different guildes of the thieves operating here, as well as other strange creatures at war with both sides. It is really confusing.~
IF~~THEN REPLY ~ You did well to operate most secretly, Sandrah, out there alone in a foreign city with what seems to be several parties of power at work. The Shadow Thieves, regardless which guild, are no fun to deal with.~ GOTO SanYoshDunNoYosh3
END

IF~~ THEN BEGIN SanYoshDunNoYosh3
SAY~ <CHARNAME>, we are close to the surface and the exit now. There are still dangers ahead, as I tried to avoid fighting when I sneaked into this place. I did not want to endanger you by stirring up our foe with battle noises.~
IF~~THEN REPLY ~ It's time to face them together now.~  EXIT
IF~~THEN REPLY ~ Fear not, my little girl, we are by your side now (Laugh). Let us beat them.~ EXIT
END

IF ~ Global("SanHeardIren","GLOBAL",3) ~ THEN BEGIN Sanremwdoom
SAY ~ Vampires! I heard rumors outside in Athkatla that there was a third party somehow trying to get power in the underworld of the city besides the Shadow Thieves and Cowled Wizards. But they were just rumors as those creatures operated only at night.~
IF~~THEN REPLY~ First Irenicus as the scroll signed "I." and now the kind of vampires we encountered in his trap in the Mountain of the Dead, what do you make out of that?~ GOTO Sanremwdoom2
END

IF~~ THEN BEGIN Sanremwdoom2
SAY~ This Irenicus has observed you since quite some time already. Your kidnapping has been planned thouroughly. Only the fact that he has stepped on too many toes here in town has given you the chance to escape.~
IF~~THEN REPLY~ Mmh. I will take this chance and use it well. We are warned of him and he will not get us again unaware.~ DO~ SetGlobal("SanHeardIren","GLOBAL",5) ~EXIT
END

IF~  Global("SanHeardIren","GLOBAL",4) ~ THEN BEGIN Sanremnodoom
SAY ~ Vampires! I heard rumors outside in Athkatla that there was a third party somehow trying to get power in the underworld of the city besides the Shadow Thieves and Cowled Wizards. But they were just rumors as those creatures operated only at night.~
IF~~THEN REPLY~ Wow, we have really arrived at an interesting scene at a time of turmoil. You were right, Sandrah, my heritage does not seem to allow us much rest between adventures, whether we chose it or not.~ GOTO Sanremwdoom2
END

//Free Hendak
IF ~Global("SanHendak","GLOBAL",1)~THEN BEGIN Sanfreehend1
SAY~ Even children! The cruelty of these slavers knows no limit. This exceeds anything that is tolerable! ~
IF~~ THEN DO ~
ClearAllActions()
SmallWait(2) 
StartCutSceneMode()
ActionOverride("CVSandr",JumpToPoint([412.1216]))
MoveViewPoint([412.1216],INSTANT)
EndCutSceneMode()
SetGlobal("SanHendak","GLOBAL",2)
~ EXIT
END

// Slaver Hunt
IF~Global("SanSacroll","GLOBAL",2)~ THEN BEGIN Sanfreehend10
SAY~ (Sandrah has taken the message you have found on the dead slaver captain Haegan and reads it once again.) ~
IF~~THEN REPLY~ Anything you want to share with me, my love?~ DO ~ SetGlobal("SanSacroll","GLOBAL",3)IncrementGlobal("Sanpoints","GLOBAL",1)~ GOTO  Sanfreehend11
IF~~THEN REPLY~I don't like that look on your face - you want to enroll me for one of your silly crusades for goodness again...~DO~SetGlobal("SanSacroll","GLOBAL",3)IncrementGlobal("Sanpoints","GLOBAL",-1)~ GOTO Sanfreehend11
END

IF~~ THEN BEGIN Sanfreehend11
SAY ~ Have you read this carefully, dear? There seems to be another slaver's installation here in town. These bastards, it must be right under the nose of the churches in the temple district. Not even Helm's ever watchful eye seems to be aware of it.~
IF~~THEN REPLY ~ But you expect us to find what the officials of this town can't find?~ GOTO Sanfreehend12
IF~~THEN REPLY ~ I have seen the scrupelous deeds of these slavers in the Coronet and on their ship-house. If there is another one we will search and destroy it likewise.~ GOTO Sanfreehend13
END

IF~~ THEN BEGIN Sanfreehend12
SAY~ Or what they decide to ignore, <CHARNAME>. If you have not noticed it yet, this capitale is corrupt and evil through and through.~
IF~~THEN REPLY ~ This seems to be the case for any assembly of humans that grows beyond a certain size (Sigh). Even if we have our own tasks, Sandrah, we will never ignore such kind of evil that we can correct. We will find and destroy those slavers whereever we find them.~GOTO Sanfreehend13
END

IF~~ THEN BEGIN Sanfreehend13
SAY~ Yes, we will, I am glad to follow a leader like you - and to love <PRO_HIMHER> dearly. ~
IF~~THEN REPLY ~ (You need no further invitation to embrace your beloved and kiss her passionately.)~DO~ AddJournalEntry(@458,QUEST)~ EXIT
END

IF~ Global("SanSacroll","GLOBAL",7)~ THEN BEGIN Santemlslav1
SAY ~ (Sigh) Sometimes I am proud of what we accomplish, even with the dead it has cost.~
IF~~THEN REPLY ~You refer to those slavers? I am glad myself we have destroyed them.~ DO~ SetGlobal("SanSacroll","GLOBAL",8)~ GOTO Santemlslav2
END

IF~ ~ THEN BEGIN Santemlslav2
SAY ~ I do not like this city and the corruption that allows such an installation to exist right in sight of the so-called authorities. I am glad we were able to do just a tiny bit to improve things. I am proud of my companions - and their wonderful leader.~
IF~~THEN REPLY~ You make me blush, my heroine. Just for such a compliment I will crush on any such evil installation we may find.~ EXIT
IF~~THEN REPLY~ There is not a temple of Mystra in this district - still, your goddess has been tolerating the situation as much as Helm. There were even some spellcasters among their ranks using Mystra's gift - or shall I say misusing them.~ DO~ AddexperienceParty(12000)~ GOTO Santemlslav3
END

IF~ ~ THEN BEGIN Santemlslav3
SAY ~ No, Mystra did not tolerate these misdeeds. She has her faithful priestess and her friends to rely on. We have changed things in her favour.~
IF~~THEN REPLY~ That is one possible way of interpretation. ~EXIT
IF~~THEN REPLY~ If that is so, I understand this as one example of how you do Mystra's work here on our plane.~EXIT
END

// Beholder Cult
IF~Global("SanBehCult","LOCALS",1)~ THEN BEGIN SanUnsee6
SAY~ A beholder's lair, <CHARNAME>, there is no doubt.~
IF~ Global("SanUnseen","LOCALS",0) ~ THEN REPLY~ Uh?~ DO~ SetGlobal("SanBehCult","LOCALS",2)~ GOTO SanUnsee7
IF~ Global("SanUnseen","LOCALS",1)~ THEN REPLY~ Your analysis was correct then, counselor...once again.~ DO~ SetGlobal("SanBehCult","LOCALS",2)~GOTO SanUnsee11
END

IF~~ THEN BEGIN SanUnsee7
SAY ~ The strange name should have told me that already...an eye that does not see. A creature that just gazes, it is unsafe to look at it so the believers take out their eyes to survive in its presence.~
IF~~THEN REPLY ~ What would that mean, counselor?~  GOTO SanUnsee8
END

IF~~ THEN BEGIN SanUnsee8
SAY~ Such a creature could be a Medusa or a Beholder, creatures that can petrify or even kill you with their gaze. From these tunnels it looks like it really is a beholder, as there have been such cults to worship these creatures from time to time. Beholders tend to bring people under their control and establish some kind of realm around their habitat. None of such is reported about medusas, they just seem to kill.~
IF~~THEN REPLY ~ Sounds plausible to me. We should prepare ourselves then accordingly.~ GOTO SanUnsee11
END   

IF~~ THEN BEGIN SanUnsee11
SAY~ And it is a big one if you look at the size of those tunnels. Furthermore this Unseeing Eye is not alone.~
IF~ OR(2) InParty("Yasraena") InParty("Viconia")~ THEN REPLY~ Any advice on our tactics then, Sandrah?~ GOTO SanUnsee12
IF~ !InParty("Yasraena") !InParty("Viconia")~ THEN REPLY~ Any advice on our tactics then, Sandrah?~ GOTO SanUnsee13
END

IF~~ THEN BEGIN SanUnsee12
SAY~ Let me go ahead with the drow while the rest of you wait here in safety. Drow are resistant against the gazes of beholders and I am protected by Mystra. Do not endanger the others uncessesarily. We will return when all is safe for you.~
IF~~THEN REPLY~ Good luck - be very careful please, my love.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~ EXIT
IF~~THEN REPLY ~ Oh, don't play that lonely heroine role, Sandrah, it's all for one and one for all or something like this...~ DO~ IncrementGlobal("Sanpoints","GLOBAL",-1)~ EXIT
END

IF~~ THEN BEGIN SanUnsee13
SAY~ Let me go ahead while the rest of you wait here in safety. I am protected by Mystra against the gazes of beholders. Do not endanger the others uncessesarily. I will return when all is safe for you.~
IF~~THEN REPLY~ Good luck - be very careful please, my love.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~ EXIT
IF~~THEN REPLY ~ Oh, don't play that lonely heroine role, Sandrah, it's all for one and one for all or something like this...~ DO~ IncrementGlobal("Sanpoints","GLOBAL",-1)~ EXIT
END

// The Thumb
IF~ Global("SanPirThumb","ar0310",1)~ THEN BEGIN Santhethumb1
SAY ~ A pirate grove in the middle of town below a renowned inn...hm.~
IF~~THEN REPLY ~What do you make out of that, Sandrah?~ GOTO Santhethumb2
IF~~THEN REPLY ~A town so lawful and clean on the surface, but scratch just a little...~  GOTO Santhethumb2
END

IF ~~ THEN BEGIN Santhethumb2
SAY~In a large town like this nearly everything is possible? It is also some ideal place to hide as it is the least reasonable place the authorities will suspect you to be. If you have friends to protect you, that is.~
IF~~THEN REPLY~ The innkeeper, the *Thumb*?~  GOTO Santhethumb3
END

IF ~~ THEN BEGIN Santhethumb3
SAY~ Maybe one of them at one time. Now a respectable citizen in a town where not too many questions are asked if you have the coin for it.~
IF~~THEN REPLY~ And then he harbours his old mates, you mean?~ GOTO Santhethumb4
END

IF ~~ THEN BEGIN Santhethumb4
SAY~ Maybe he did not volunteer to do so, they may just have used the right arguments to persuade him - like giving his past occupation to the guards.~
IF~~ THEN DO~ SetGlobal("SanPirThumb","ar0310",2)~ EXIT
END

//Harpers

IF~ Global("Sanharpers","ar0309",1)~THEN BEGIN SanHarpstrange1
SAY~ My father is a Harper and Gorion was one. Did you ever see such a sign of identification on him?~
IF~~THEN REPLY~ No, he knew all the visitors he wanted to speak with and those he avoided as well.~ GOTO SanHarpstrange2
IF~~THEN REPLY~ What do you suggest with that?~ GOTO SanHarpstrange2
END

IF~~ THEN BEGIN SanHarpstrange2
SAY~Harpers know each other and they try to avoid any signs visible for others. Athkatla is not bigger than Waterdeep so that such a thing would be necessary. The pomp of this building is a strange thing as well.~
IF~~THEN REPLY~ Let us see what else we may find.~DO~SetGlobal("Sanharpers","ar0309",2)~EXIT
END

//Tirdir
IF ~ Global("SanTirdir","LOCALS",2)~ THEN BEGIN SanTirdirhunt1
SAY~ See. <CHARNAME>, the guy over there in that brigh red cloak. We have seen that colour before, remember? By the way, it seems his cloak is torn at the right sleeve...~
IF~~THEN REPLY~ You are right, Sandrah, the same red cloth that Tirdir tore off from one of his capturers. Well, I think we will ask this man a few questions...not too kindly. I suggest you have your hammer ready just in case he will not cooperate.~ DO ~ SetGlobal("SanTirdir","LOCALS",3)~ EXIT
END

// Kangaxx Parts
IF ~ Global("SankangTors","GLOBAL",1)~ BEGIN SanTombkanEnt1
SAY ~ A very strange place for a tomb, do you not think so, <CHARNAME>?~
IF~!Global("SankangLegs","LOCALS",3)~THEN REPLY ~ This town has its secrets almost everywhere. No finding can astonish me here anymore.~  GOTO SanTombkanEnt2
IF~!Global("SankangLegs","LOCALS",3)~THEN REPLY ~ Even in a weird town like Athkatla that is true. What do you make out of it, my counselor?~ DO~IncrementGlobal("Sanpoints","GLOBAL",1)~ GOTO SanTombkanEnt2
IF ~ Global("SankangLegs","LOCALS",3)~ THEN REPLY ~ Another part of Kangaxx?~ GOTO SanTombkanEnt7
END

IF~~BEGIN SanTombkanEnt2
SAY ~ Whoever or whatever is buried here was intended to be hidden from a possible discovery.~
IF~ Global("SanKangAdv","LOCALS",1)~ THEN REPLY ~ Like what?~ GOTO SanTombkanEnt3
IF~ !Global("SanKangAdv","LOCALS",1)~ THEN REPLY ~ Like what?~ GOTO SanTombkanEnt4
END

IF~~BEGIN SanTombkanEnt3
SAY ~ Like that golden skull that has talked to us. He mentioned his parts being close to his tomb but well hidden. This may well be one of those places.~
IF~~THEN REPLY ~ I remember your advice, Sandrah. We can do no harm unless we retrieve all his parts and bring them to him. We may as well explore this grave then.~ DO~ SetGlobal("SankangTors","GLOBAL",2)~GOTO SanTombkanEnt6
IF~~THEN REPLY ~ Hm, we will not find out unless we take the next step forward.~ DO~ SetGlobal("SankangTors","GLOBAL",2)~EXIT
IF~~THEN REPLY ~Thank you for the warning, Sandrah. Let us retreat silently before we wake up that beast.~ DO~ SetGlobal("SankangTors","GLOBAL",2)~GOTO SanTombkanEnt6
END

IF~~BEGIN SanTombkanEnt4
SAY ~ Like something ancient and evil, something that Helm's paladins would not admit to the graveyard. <CHARNAME>, we have gathered enough experience by now through our adventures to know a Lich's place when we see one.~
IF~~THEN REPLY ~ A Lich...you are probably right. But now that we have opened the door it is our duty to destroy it before some poor fool encounters the creature by bad luck.~ DO~ SetGlobal("SankangTors","GLOBAL",2)~EXIT
IF~~THEN REPLY ~ Hm, we will not find out unless we take the next step forward.~ DO~ SetGlobal("SankangTors","GLOBAL",2)~EXIT
IF~~THEN REPLY ~Thank you for the warning, Sandrah. Let us retreat silently before we wake up that beast.~ DO~ SetGlobal("SankangTors","GLOBAL",2)~GOTO SanTombkanEnt5
END

IF~~BEGIN SanTombkanEnt5
SAY ~ I am afraid, my hero, that we cannot do that. It would be irresponsible to leave this place open for any poor citizen to enter and be killed. And once it becomes awake just imagine the beast to run free in a crowded town like this.~
IF~~THEN DO ~ SetGlobal("SankangTors","GLOBAL",3)~ EXIT
END

IF~~BEGIN SanTombkanEnt6
SAY ~ I am afraid, my hero, that we need to do just that. It would be irresponsible to leave this place open for any poor citizen to enter and be killed. And once it becomes awake just imagine the beast that guards this tomb to run free in a crowded town like this.~
IF~~THEN DO ~ SetGlobal("SankangTors","GLOBAL",3)~ EXIT
END

IF~~BEGIN SanTombkanEnt7
SAY ~ I guess just that from the design we have seen in the other place. <CHARNAME>, we have gathered enough experience by now through our adventures to know a Lich's place when we see one.~
IF~~THEN REPLY ~ A Lich...you are probably right. But now that we have opened the door it is our duty to destroy it before some poor fool encounters the creature by bad luck.~ DO~ SetGlobal("SankangTors","GLOBAL",2)~EXIT
IF~~THEN REPLY ~ Hm, we will not find out unless we take the next step forward.~ DO~ SetGlobal("SankangTors","GLOBAL",2)~EXIT
IF~~THEN REPLY ~Thank you for the warning, Sandrah. Let us retreat silently before we wake up that beast.~ DO~ SetGlobal("SankangTors","GLOBAL",2)~GOTO SanTombkanEnt5
END

IF ~ Global("SankangLegs","LOCALS",1)~ BEGIN SanTombkanEnt11
SAY ~ Another tomb, hidden in an unlikely location, do you not think so, <CHARNAME>?~
IF~~THEN REPLY ~ This town has its secrets almost everywhere. No finding can astonish me here anymore.~  GOTO SanTombkanEnt12
IF~~THEN REPLY ~ Even in a weird town like Athkatla that is true. What do you make out of it, my counselor?~ DO~IncrementGlobal("Sanpoints","GLOBAL",1)~ GOTO SanTombkanEnt12
END

IF~~THEN BEGIN SanTombkanEnt12
SAY ~ Whoever or whatever is buried here was intended to be hidden from a possible discovery.~
IF~ ~ THEN REPLY ~ Another part of that golden skull lich?~ DO~ SetGlobal("SankangLegs","LOCALS",3)~ GOTO SanTombkanEnt14
END

IF~~THEN BEGIN SanTombkanEnt14
SAY ~ Kangaxx, yes, that is what I suspect. Do you want my advice at the moment, <CHARNAME>?~
IF~~THEN REPLY ~ Always, my counselor.~ DO~IncrementGlobal("Sanpoints","GLOBAL",2) ~ GOTO SanTombkanEnt15
IF~~THEN REPLY ~ I guess I know what to do but let me hear your opinion - probably it is the same.~ DO~IncrementGlobal("Sanpoints","GLOBAL",1)~ GOTO SanTombkanEnt15
IF~~THEN REPLY ~ Thank you, but I guess we know what to do.~ DO~IncrementGlobal("Sanpoints","GLOBAL",-3)~ EXIT
END

IF~~THEN BEGIN SanTombkanEnt15
SAY ~ We should not endanger those blind fools by opening the sarcophag right now and waking its guardian. Let us deal with the cultist task first and then return to this tomb when we have got everybody else out of here.~
IF~~THEN REPLY ~ A good proposal, Sandrah. Let's do it that way.~ EXIT
IF~~THEN REPLY ~ Good to hear that we both have the same idea about this, my counselor.~ EXIT
IF~~THEN REPLY ~ As much as I love the sound of your voice, I see no need to spare those dumb idiots down here. I will do what I think is right.~ EXIT
END

IF ~ Global("SankangLegs","LOCALS",2)~ BEGIN SanTombkanEnt21
SAY ~ A very strange place for a tomb, do you not think so, <CHARNAME>?~
IF~~THEN REPLY ~ This town has its secrets almost everywhere. No finding can astonish me here anymore.~ DO~ SetGlobal("SankangLegs","LOCALS",3)~ GOTO SanTombkanEnt22
IF~~THEN REPLY ~ Even in a weird town like Athkatla that is true. What do you make out of it, my counselor?~ DO~IncrementGlobal("Sanpoints","GLOBAL",1)~ DO~ SetGlobal("SankangLegs","LOCALS",3)~GOTO SanTombkanEnt22
END

IF~~BEGIN SanTombkanEnt22
SAY ~ Whoever or whatever is buried here was intended to be hidden from a possible discovery.~
IF~ Global("SanKangAdv","LOCALS",1)~ THEN REPLY ~ Like what?~ GOTO SanTombkanEnt23
IF~ !Global("SanKangAdv","LOCALS",1)~ THEN REPLY ~ Like what?~ GOTO SanTombkanEnt24
END

IF~~BEGIN SanTombkanEnt23
SAY ~ Like that golden skull that has talked to us. He mentioned his parts being close to his tomb but well hidden. This may well be one of those places.~
IF~~THEN REPLY ~ I remember your advice, Sandrah. We can do no harm unless we retrieve all his parts and bring them to him. We may as well explore this grave then.~ GOTO SanTombkanEnt26
IF~~THEN REPLY ~ Hm, we will not find out unless we take the next step forward.~ GOTO SanTombkanEnt14
IF~~THEN REPLY ~Thank you for the warning, Sandrah. Let us retreat silently before we wake up that beast.~ GOTO SanTombkanEnt26
END

IF~~BEGIN SanTombkanEnt24
SAY ~ Like something ancient and evil, something that Helm's paladins would not admit to the graveyard. <CHARNAME>, we have gathered enough experience by now through our adventures to know a Lich's place when we see one.~
IF~~THEN REPLY ~ A Lich...you are probably right. But now that we have opened the door it is our duty to destroy it before some poor fool encounters the creature by bad luck.~ GOTO SanTombkanEnt14
IF~~THEN REPLY ~ Hm, we will not find out unless we take the next step forward.~ GOTO SanTombkanEnt14
IF~~THEN REPLY ~Thank you for the warning, Sandrah. Let us retreat silently before we wake up that beast.~ GOTO SanTombkanEnt25
END

IF~~BEGIN SanTombkanEnt25
SAY ~ I am afraid, my hero, that we cannot do that. It would be irresponsible to leave this place open for any poor citizen to enter and be killed. And once it becomes awake just imagine the beast to run free in a crowded town like this.~
IF~~THEN GOTO SanTombkanEnt14
END

IF~~BEGIN SanTombkanEnt26
SAY ~ I am afraid, my hero, that we need to do just that. It would be irresponsible to leave this place open for any poor citizen to enter and be killed. And once it becomes awake just imagine the beast that guards this tomb to run free in a crowded town like this.~
IF~~THEN GOTO SanTombkanEnt14
END

IF ~Global("SankangFull","LOCALS",1)~ BEGIN SanTombkanEnt30
SAY~ Now we have the control over all three parts into which the Lich Kangaxx had been disrupted long ago.~
IF~~THEN REPLY~ Three parts, Sandrah?~ DO~ SetGlobal("SankangFull","LOCALS",2) ~ GOTO SanTombkanEnt31
END

IF~~BEGIN SanTombkanEnt31
SAY ~ The legs and arms we have found in the one tomb, the torso from the other one - and we know where the skull is. Theoratically Kangaxx can be put together again. If you want to know my opinion about it I would be willing to help you find a decision of what to do with the possibilities we have in hand. You may ask me any time.~
IF~~THEN EXIT
END

IF~~BEGIN SanTombkanEnt32
SAY ~ There are many options we have but I would concentrate our talk on two alternatives. As the parts themselves cannot be destroyed by any means we can either put them into a safer place then they were before or we can actually restore Kangaxx. Let me provide you with more details on any of them.~
IF~~THEN REPLY ~ Is there such a safe place where no ambitious group of adventurers, someone like us for example, can find them incidentally?~ GOTO SanTombkanEnt33
IF~~THEN REPLY ~ What will be the consequences of *reviving* the Lich?~  GOTO SanTombkanEnt34
END

IF~~BEGIN SanTombkanEnt33
SAY~ We could take them to Waterdeep and to my father's place. Elminster and Mystra will take care of the two pieces we have found and the skull itself is of no danger in its current state.~
IF~~THEN REPLY ~ Sounds reasonable to me. Let us do that when we get a chance to revisit Waterdeep.~ DO~ SetGlobal("SankangFull","LOCALS",3) ~EXIT
IF~~THEN REPLY ~ Let us discuss the alternative then.~ GOTO SanTombkanEnt34
END

IF~~BEGIN SanTombkanEnt34
SAY~ My first assumption is that the Lich will try to destroy us the very instant he has regained his abilities again. He would not be in his current condition if that were not his nature. By all means we must defeat him - not just for our own survival but also for the safety of all of Amn. This monster will not stop his path of death and destruction ever, it feeds on it.~
IF~~THEN REPLY~ Do you think we will be able to do this?~ GOTO SanTombkanEnt35
IF~~THEN REPLY ~ Let us discuss the alternative then.~ GOTO SanTombkanEnt36
IF~~THEN REPLY ~ This is however the only way to solve the problem once and forever. We must prepare ourself for this battle.~ GOTO SanTombkanEnt37
END

IF~~BEGIN SanTombkanEnt35
SAY~ It will be a fierce battle, <CHARNAME>, as this Lich is more powerful than any foe we have met so far. His spell potential may kill more than one of our companions before we could even strike a single blow against him. We need at least one holy weapon to strike the final blow against him. Is it really worth it in the end? Consider it well, we are in no hurry to solve the issue today.~
IF~~THEN REPLY~ If even you think it is not worth the risk, I don't know. Your courage exceeds that of any person I have ever met and if you hesitate than it is simply that the alternative is the better choice.~ DO~ SetGlobal("SankangFull","LOCALS",3) ~EXIT
IF~~THEN REPLY ~ We may think about it again once we have equipped ourselves well enough. You are right, the decision needs not to be made right here and now.~ DO~ SetGlobal("SankangFull","LOCALS",3) ~EXIT
IF~~THEN REPLY~ (Wink at her) Someone I know very well and trust in every respect always says *Do what must be done*.~ GOTO SanTombkanEnt37
END

IF~~BEGIN SanTombkanEnt36
SAY~ We could take them to Waterdeep and to my father's place. Elminster and Mystra will take care of the two pieces we have found and the skull itself is of no danger in its current state.~
IF~~THEN REPLY ~ Sounds reasonable to me. Let us do that when we get a chance to revisit Waterdeep.~ DO~ SetGlobal("SankangFull","LOCALS",3) ~EXIT
IF~~THEN REPLY ~ I think I prefer the alternative then to solve the problem once and forever.~ GOTO SanTombkanEnt37
END

IF~~BEGIN SanTombkanEnt37
SAY~ I see you are determined to do it. Well, I do not have to stress that you can count on me. I recommend that you study this book again before we set off to do it and make sure we have everything we need.~
IF~~THEN DO ~ GiveItemCreate("cbbk7554",Player1,0,0,0) SetGlobal("SankangFull","LOCALS",3)~EXIT
END

//Firkraag
IF~Global("SanFierk","ar1201",1)~ THEN BEGIN SanFirkDung1
SAY~This Firkraag has assembled a weird troupe of followers and supporters around him, whoever he might be in reality.~
IF~~THEN REPLY~ Have you come to some conclusion already, my counselor?~ DO~ SetGlobal("SanFierk","ar1201",2) ~GOTO SanFirkDung2
IF~~THEN REPLY~ He is surely not a ruler of a land like we would expect to find somewhere else.~ DO~ SetGlobal("SanFierk","ar1201",2) ~GOTO SanFirkDung2
IF~~THEN REPLY~Spit it out already, woman!~DO~ IncrementGlobal("Sanpoints","GLOBAL",-1)~GOTO SanFirkDung2
END

IF~~ THEN BEGIN SanFirkDung2
SAY~ Remember your history lessons, <CHARNAME>. Such a combination of all odd races, creatures, and mercenairies has existed once before, led by an outcasted twin couple.~ 
IF~~THEN REPLY~ I am not sure what you are referring to now.~  GOTO SanFirkDung3
IF~~THEN REPLY~ Are you referring to the Chimera Legion in the north?~ GOTO SanFirkDung3
IF~~THEN REPLY~ The famous *Maulers* you mean? ~ GOTO SanFirkDung3
END

IF~~ THEN BEGIN SanFirkDung3
SAY~ The Chimera Legion that haunted the Icewind Dale long ago. It was lead by half-breeds with a hatred against everyone and the pure will to destroy. They used the discontent of the outcast breeds to gather a large troup that threatened to whole North at their time.~
IF~~THEN REPLY~Historically interesting, but can we learn anything from that?~ GOTO SanFirkDung4
END

IF~~ THEN BEGIN SanFirkDung4
SAY~ Firkraag may not be a human even if he disguised as such when we first met him. It is not clear to me against whom of us he bears some grudge but I assume it is very old - maybe not even us personally but Gorion or Elminster, or both.~
IF~~THEN REPLY~Even if you were right, does it help us in any way to find a strategy against him?~GOTO SanFirkDung5
END

IF~~ THEN BEGIN SanFirkDung5
SAY~ (Laughs short.) Actually just to be prepared for quite some surprises. We have seen part of his strange forces already here on the parameter of his realm. They will surely become fiercer the more we advance and consist of creatures that may be new to us. And in the end the guy himself. Who can he be?~
IF~~THEN REPLY~The best we can do at the moment is to stock up our armor and spells and make sure we can face all sorts of strange enemies that require different combat styles and weapons to be used by us. I'd like to see that Firkraag myself eagerly.~EXIT
END

IF~ Global("SanMaze","ar1202",1)~ THEN BEGIN SanFirkDung6
SAY~It is a weird assembly of all types of monsters and creatures this Firkraag has gathered around him but not a real defence of any sorts.~
IF~~THEN REPLY~And what does my counselor make out of it?~DO~ SetGlobal("SanMaze","ar1202",2)~GOTO SanFirkDung7
END

IF~~ THEN BEGIN SanFirkDung7
SAY~ Remember that he even sent you an invitation of sorts. Surely he wants us to overcome his defenses and face him in person.~
IF~~THEN REPLY~So all of this maze is maybe some kind of test of our abilities?~ GOTO SanFirkDung8
END

IF~~ THEN BEGIN SanFirkDung8
SAY~ Not even that. My assumption is that he knows well that we will be able to get to him. Most probably he set up this challenge to spur your interest to persue him and at the same time get a chance to study you in how you defeat the obstacles in your way. And last but not least he may get some entertainment from watching our progress.~
IF~~THEN REPLY~ He is so very sure of himself and his trap. That attitude shall be his downfall.~ GOTO SanFirkDung9
END

IF~~ THEN BEGIN SanFirkDung9
SAY~ Please stay careful, my darling. Even if he is arrogant beyond any means he may have a reason to feel so superior.~
IF~~THEN REPLY~ Mh, what is he, a Lich?~ GOTO SanFirkDung10
IF~~THEN REPLY~ May he be a mischievous old dragon?~ GOTO SanFirkDung10
IF~~THEN REPLY~ Is it a Bhaalspawn again who is waiting for me?~ GOTO SanFirkDung10
IF~~THEN REPLY~ Have I angered some minor deity to persue us this way?~ GOTO SanFirkDung10
END

IF~~ THEN BEGIN SanFirkDung10
SAY~ It is a creature with a lot of patience and enough time to wait for the right moment. He has prepared the dungeon and the land around it outside for just this pupose. In addition, he was able to take on a human form and come to Athkatla for you. He plans ahead on long terms to take his ancient revenge.~
IF~~THEN REPLY~ The planning excludes the Lich and a god would not spent that amount of time to punish a mortal but strike more directly.~ GOTO SanFirkDung11
IF~~THEN REPLY~A bhaalspawn would not have known about me until recently. This trap and Firkraag's grudge is against me personally and older than my career in the Realms.~ GOTO SanFirkDung12
END

IF~~ THEN BEGIN SanFirkDung11
SAY~ A valid deduction I would say.~
IF~~THEN REPLY~A bhaalspawn would not have known about me until recently. This trap and Firkraags grudge is against me personally and older than my career in the Realms.~ GOTO SanFirkDung13
END

IF~~ THEN BEGIN SanFirkDung12
SAY~ A valid deduction I would say.~
IF~~THEN REPLY~ The planning excludes the Lich and a god would not spent that amount of time to punish a mortal but strike more directly.~ GOTO SanFirkDung13
END

IF~~ THEN BEGIN SanFirkDung13
SAY~ That would leave us with the dragon option, <CHARNAME>. Those deep wells and precipices we passed point in the same direction. His grudge however seems to be much older than our relatively young encounters with his kin.~
IF~~THEN REPLY~Counselor, you have taught me pretty well how to use my logic thinking in riddles like the present one. It is probably nothing any of us has done to him personally. It must be what I represent for him.~ GOTO SanFirkDung14
END

IF~~ THEN BEGIN SanFirkDung14
SAY~ (She nods thoughfully) Either you being Gorion's step son, the warden of a Harper - or you being of Bhaal's blood. As he is focussed on you and not interested in Imoen at all the arguments for the first option are weighting heavier, I think.~
IF~~THEN REPLY~ Let us be prepared to face an old and angry dragon then, my friends.~EXIT
END

// Innershade
IF ~ Global("SanINNERMAP","LOCALS",1) ~ THEN BEGIN SanMoveInShad
SAY~ Look at that solemn pathway, <CHARNAME>, may this be the road mentioned on the mysterious map we have received, the place called Innershade?~
IF~~THEN DO~ 
ClearAllActions()
                 SmallWait(2)
                 StartCutSceneMode()
                FadeToColor([30.0],0)
		Wait(2)
		ActionOverride(Player1,LeaveAreaLUA("arish1","",[2397.114],12))
		ActionOverride(Player2,LeaveAreaLUA("arish1","",[2397.114],10))
		ActionOverride(Player3,LeaveAreaLUA("arish1","",[2397.114],11))
		ActionOverride(Player4,LeaveAreaLUA("arish1","",[2397.114],12))
		ActionOverride(Player5,LeaveAreaLUA("arish1","",[2397.114],11))
		ActionOverride(Player6,LeaveAreaLUA("arish1","",[2397.114],10))
		ActionOverride("Pellig",LeaveAreaLUA("arish1","",[2397.114],11))
		ActionOverride("Haiass",LeaveAreaLUA("arish1","",[2397.114],10))
                FadeFromColor([30.0],0)
                EndCutSceneMode()
                SetGlobal("SanINNERMAP","LOCALS",2)~
EXIT
END


//Shar-Teel is Mother
IF~Global("SanSharInt","GLOBAL",35)~THEN BEGIN SanExtraDuty1
SAY ~ Now I have even more responsibility for your health and survival than before, <CHARNAME>. Our beloved Wildcat would skin me alive if I allow anything to happen to you while we travel on our quest.~
IF~~THEN REPLY ~ (Sigh) You are right, Sandrah, it is wonderful to see the next generation that will follow us one day, but there is also an added responsibility - not just for you. I will have to take my family's well being into account from now on as well.~ GOTO  SanExtraDuty2
IF~~THEN REPLY ~ Yes and no. Nothing much has changed, as Shar-Teel is not the helpless little housewife awaiting her hero husband to return. She will raise Gorion wonderfully - even if she would have to do it without me, which hopefully will not happen.~ GOTO  SanExtraDuty3
IF~~THEN REPLY ~ I will have my family on my mind as well as my companions when decisions have to be made. I have learned a bit about responsibility and leadership by now, I guess.~ GOTO  SanExtraDuty4
END

IF~~THEN BEGIN SanExtraDuty2
SAY~ You have learned a bit about responsibility and leadership by now, I guess. And you know you can always count on a couselor that loves you and Shar-Teel dearly.~
= ~ Using my new spell ability we may return to our quest once again. If your heart desires, I can take us on a trip to Waterdeep anytime from now on.~
IF~~THEN REPLY ~ (You kiss her and feel the strength you receive from her nearness.) Let us go then.~DO ~ SetGlobal("SanSharInt","GLOBAL",36)~EXIT
IF~~THEN REPLY ~ (You kiss her and feel the strength you receive from her nearness.) Before we go,  let us go to the town and temple for some shopping.~DO ~ SetGlobal("SanSharInt","GLOBAL",36)~EXIT
END

IF~~THEN BEGIN SanExtraDuty3
SAY~ No doubt about that - in the same way she made Waterdeep a safer place even before the child was born. But there are other necessities than just the material ones, like having the beloved father of her child near her often. You know you can always rely on a couselor that loves you and Shar-Teel dearly.~
= ~ Using my new spell ability we may return to our quest once again. If your heart desires, I can take us on a trip to Waterdeep anytime from now on.~
IF~~THEN REPLY ~ (You kiss her and feel the strength you receive from her nearness.) Let us go then.~DO ~ SetGlobal("SanSharInt","GLOBAL",36)~EXIT
IF~~THEN REPLY ~ (You kiss her and feel the strength you receive from her nearness.) Before we go,  let us go to the town and temple for some shopping.~DO ~ SetGlobal("SanSharInt","GLOBAL",36)~EXIT
END


IF~~THEN BEGIN SanExtraDuty4
SAY~ No doubt about that - and you can always count on a couselor that loves you and Shar-Teel dearly.~
= ~ Using my new spell ability we may return to our quest once again. If your heart desires, I can take us on a trip to Waterdeep anytime from now on.~
IF~~THEN REPLY ~ (You kiss her and feel the strength you receive from her nearness.) Let us go then.~DO ~ SetGlobal("SanSharInt","GLOBAL",36)~EXIT
IF~~THEN REPLY ~ (You kiss her and feel the strength you receive from her nearness.) Before we go,  let us go to the town and temple for some shopping.~DO ~ SetGlobal("SanSharInt","GLOBAL",36)~EXIT
END

//Fishing for Trouble
IF~ Global("SanCeren","LOCALS",1)~ THEN BEGIN SanReqCeren1
SAY~ Cerendor Hold stands against the Cloudpeak Mountains, north of Crimmor on the north bank of the Alandor River. It is near the caravan town of Crimmor.~
IF~~THEN REPLY~ Were we not out to help this town on request of your father, my dear?~ GOTO SanReqCeren2
IF~~THEN REPLY~ Are you suddenly keen to get a lot of gold, my dear? ~GOTO SanReqCeren3
END

IF~~THEN BEGIN SanReqCeren2
SAY~ Yes, sure, and I guess we did - but now that we know of it, we should not let four wagons of the Black Lotus fall into the hands of the underworld who would use it to make unwitting addicts of people. ~
IF~~THEN REPLY~ Then onwards to a new quest. ~ DO~ SetGlobal("SanCeren","LOCALS",2)~EXIT
END

IF~~THEN BEGIN SanReqCeren3
SAY~ Of course it is not the gold - but now that we know of it, we should not let four wagons of the Black Lotus fall into the hands of the underworld who would use it to make unwitting addicts of people. ~
IF~~THEN REPLY~ Then onwards to a new quest. ~ DO~ SetGlobal("SanCeren","LOCALS",2)~EXIT
END

IF~Global("SanCeren","LOCALS",3)~ THEN BEGIN SanReqCerenSC1
SAY ~ Ah, the fresh air of the Sword Coast. It feels good to breath it again.~
IF~~THEN REPLY~ I never thought I would say that, but, yes, it has some feeling of home to me.~ GOTO SanReqCerenSC2
IF~~THEN REPLY~ The dull old Sword Coast with its evenly dull peasants - forget it, Sandrah, we're of a larger scale right now.~ GOTO SanReqCerenSC3
END

IF~~ THEN BEGIN SanReqCerenSC2
SAY ~ We have come a long way together, <CHARNAME>, but one should never forget the own roots and where we hail from. It defines part of our self.~
IF~~THEN REPLY~ It was this very air I was breathing when I had my first glance of you on that mournful day long ago. The paths we have shared together since then and the way how we did it give me strength each day again. With that we can move on in confidence. (Your hands meet automatically to walk for a while side by side.) ~ DO~ SetGlobal("SanCeren","LOCALS",4)~ EXIT
END

IF~~ THEN BEGIN SanReqCerenSC3
SAY ~ We may be outwardly changed but we have not left ourselves behind. We have gained experience in many ways, <CHARNAME>, but one should never forget the own roots and where we hail from. It defines part of our self.~
IF~~THEN REPLY~ It was this very air I was breathing when I had my first glance of you on that mournful day long ago. The paths we have shared together since then and the way how we did it give me strength each day again. With that we can move on in confidence. (Your hands meet automatically to walk for a while side by side.) ~ DO~ SetGlobal("SanCeren","LOCALS",4)~ EXIT
END

IF~ Global("SanCeren","LOCALS",5) ~ THEN BEGIN SanPolyReady1
SAY~ The time has come that Garalial Geltarath has announced for his preparations for the release spell on Portpentyrch. We should check the village and report to my good old father then.~
IF~~THEN REPLY~ Oh, yes, thanks for the reminder, counselor. Hopefully we will see the results of that quest by now.~ GOTO SanPolyReady2
IF~~THEN REPLY~ We have invested quite a bit to rescue that village. Let's go and gain our reward, Sandrah.~  GOTO SanPolyReady2
IF~~THEN REPLY~ We have already spent too much time for that miserable fishing village. The spell will work without us and your all-knowing daddy will get the news soon enough from one of his many informants.~  GOTO SanPolyReady3
END

IF~~THEN BEGIN SanPolyReady2
SAY ~ Here is a first taste of your reward, great hero. (She kisses you tenderly.)~
IF~~THEN DO~ SetGlobal("SanCeren","LOCALS",6) ~ EXIT
END

IF~~THEN BEGIN SanPolyReady3
SAY ~ (She wordlessly turns away and ignores you for the rest of the day - and the night.)~
IF~~THEN DO~ SetGlobal("SanCeren","LOCALS",6) ~ EXIT
END

// Alternatives to Brynnlaw
IF~ Global("SanBrynAltern","LOCALS",1)~ THEN BEGIN TrySthNew1
SAY~ So we know at least two ways now to get to Brynnlaw.~
IF~~THEN REPLY~ At least. So it may be too early to make a decision already...(Maybe you should ask your counselor whether you may have overlooked a detail she can help you with.)~ DO~ SetGlobal("SanBrynAltern","LOCALS",2)~ EXIT
IF~~THEN REPLY~ (You shake your head wondering why your counselor needs to state the obvious.)~ DO~ SetGlobal("SanBrynAltern","LOCALS",2)~ EXIT
IF~~THEN REPLY~ (Maybe your counselor has some good arguments for one or the other if you decide to ask her.)~ DO~ SetGlobal("SanBrynAltern","LOCALS",2)~ EXIT
END

IF~~ THEN BEGIN TrySthNew2
SAY~ Those are the two we know so far, <CHARNAME>. The two dark and illegal forces that are at war here in Athkatla. But surely not the only powers in this town that may offer access to that island.~
IF~~THEN REPLY~ The cowled wizards can be excluded, that's for sure. And the council of eight members are unknown, so we can't access them.~ DO~ SetGlobal("SanBrynAltern","LOCALS",3)~ GOTO TrySthNew3
END

IF~~ THEN BEGIN TrySthNew3
SAY~ <CHARNAME>, a choice for the vampires will make all other powers in this town our enemies be it the legal ones or the illegal. But we are sure that Bodhi is the sister of the man we are hunting and therefore knows more about our enemy than anyone else. We do not know what this information is worth and we do not know what we will be required to do to gain it. But in the end, will we not be willing to pay any price for our Imoen?~
IF~~THEN REPLY~ Sure, if we must - but is that the best choice?~ GOTO TrySthNew4
IF~~THEN REPLY~ Any price, Sandrah? To become allies with the bloodsuckers and the undead - not as long as there are other ways.~ GOTO TrySthNew4
IF~~THEN REPLY~ Fine, those are the arguments for that party, let's weight them against the other choice.~ GOTO TrySthNew4
END

IF~~ THEN BEGIN TrySthNew4
SAY~ Even if the Shadow Thieves are almost *accepted* as one of the powers in this town and they decorate their activities with the moniker of a *guild* we should not forget that the name itself is a lie. The *Thieves* are merciless killers who torture their victims, deal with slaves or the black lotus...any crime and misdeed you can imagine will be done by them as long as they can gain a profit for that. If you think they are better than vampires just because of their human appearance, you err, <CHARNAME>, they are no better than the beasts.~
IF~~THEN REPLY~If I follow your arguments it would be neither of the two, Sandrah. Not a very helpful advice in this situation.~ GOTO TrySthNew5
IF~~THEN REPLY~Sounds like you recommend none of the two. You sounded like there may be another possibility that may not have shown up yet?~ GOTO TrySthNew5
END

IF~~ THEN BEGIN TrySthNew5
SAY~ The information both parties who have approached us so far offer, is not their own, <CHARNAME>, but known to the officials of this town. If the illegal forces have accessed the information it can only be through some *leakage* somewhere in the government. If they have found it maybe we should take a bit of a deeper investigation there. The money our self-appointed friends have required for their aid maybe can open the same door or mouth for us as for them?~
IF~~THEN REPLY~Hm, yes, why not take a look at the government district again. It's on our route anyhow.~EXIT
END

IF~Global("SanBrynAltern","LOCALS",4)~THEN BEGIN TrySthNew6
SAY~ You see, it does not take long in this town until someone knows about your situation and is willing to show her face.~
IF~~THEN REPLY ~ So you think this will be another offer to bring us to Brynnlaw? Any idea who that Asten might be?~ GOTO TrySthNew7
IF~~THEN REPLY~ Hm, a claim to *take me where I want to go* sounds just like that. Have you heard that name during your stay in town?~ GOTO TrySthNew7
END

IF~~THEN BEGIN TrySthNew7
SAY~ Probably that lady Asten is just a contact person. If my assumptions I mentioned earlier were correct, the real originator of the new offer will remain hidden if ever possible.~
IF~~THEN REPLY~ You think it's a traitor in the government, if I understood you correctly?~ DO~ SetGlobal("SanBrynAltern","LOCALS",5)~GOTO TrySthNew8
END

IF~~THEN BEGIN TrySthNew8
SAY~ I would not call that person a traitor, even if he or she or they provide us with a government secret. The motivation may as well be a just one, to use us to act against the Cowled wizards, the Shadow Thieves and the vampire guild that play their game for power here in town. Someone or some group may act out of responsibility and loyalty to the people of Athkatla.~
IF~~THEN REPLY~ I take your words as an advice to hear that lady Asten out.~ EXIT
IF~~THEN REPLY~ We can only find out what's behind this by talking to said lady. I will keep your words in my mind when talking to her.~ EXIT
END

IF~Global("SanBrynAltern2","LOCALS",1)~THEN BEGIN TrySthNew16
SAY~ You see, it does not take long in this town until someone knows about your situation and is willing to show her face.~
IF~~THEN REPLY ~ So you think this will be another offer to bring us to Brynnlaw? Any idea who that Malficus might be?~ GOTO TrySthNew17
IF~~THEN REPLY~ Hm, a claim to *take me where I want to go* sounds just like that. Have you heard that name during your stay in town?~ GOTO TrySthNew17
END

IF~~THEN BEGIN TrySthNew17
SAY~ Probably that Malficus is just a contact person. If my assumptions I mentioned earlier were correct, the real originator of the new offer will remain hidden if ever possible.~
IF~~THEN REPLY~ You think it's a traitor in the government, if I understood you correctly?~ DO~ SetGlobal("SanBrynAltern2","LOCALS",2)~GOTO TrySthNew18
END

IF~~THEN BEGIN TrySthNew18
SAY~ I would not call that person a traitor, even if he or she or they provide us with a government secret. The motivation may as well be a just one, to use us to act against the Cowled wizards and their corruption, the Shadow Thieves and the vampire guild that play their game for power here in town. Someone or some group may act out of responsibility and loyalty to the people of Athkatla.~
IF~~THEN REPLY~ I take your words as an advice to hear that Malficus out.~ EXIT
IF~~THEN REPLY~ We can only find out what's behind this by talking to him. I will keep your words in my mind when talking to her.~ EXIT
END

//Bodhi First Battle
IF~Global("BoIrSibl","ar0800",1)~ THEN BEGIN SanBodLassl
SAY~Another of our suspicions has been proven correct, they are brother and sister.~
IF~~THEN REPLY~Bodhi and Irenicus you mean?~DO~SetGlobal("BoIrSibl","ar0800",2)~GOTO SanBodLassl2
END

IF~~THEN BEGIN SanBodLassl2
SAY~A brother and a sister capture two other *siblings*, two Bhaalspawns, Imoen and you. They are interested in your powers - they want something of it - or maybe all of it.~
IF~~THEN REPLY~Then Imoen is in greater danger than we suspected, they cannot have all of her power without...~ EXIT
IF~~THEN REPLY~The experiments, the dreams...they want the power but have not yet found the way how to get to it...~EXIT
END

//Bodhi' Abduction Attempt + Defeat
IF~ Global("SanBodAttmpt","AR0800",2) ~ THEN BEGIN SanBodAbdu1
SAY~ She does not give up easily - but then she has nothing to loose anymore. Do not worry, we will get your beloved back from her, we have seen her weakness already.~
IF~~ THEN REPLY ~ Her weakness? She has abducted what she assumed was dearest to my heart.~ DO~SetGlobal("SanBodAttmpt","AR0800",3) ~GOTO SanBodAbdu2
END

IF~~ THEN BEGIN SanBodAbdu2
SAY~ And she made a triple mistake in that.~
IF~ ~THEN REPLY~ In which way?~ GOTO SanBodAbdu3
IF~OR(11)
GlobalGT("KiaraVampire","GLOBAL",0)
GlobalGT("K#SarahVampire","GLOBAL",0)
GlobalGT("VP_SimeVampire","GLOBAL",0)
GlobalGT("JaheiraVampire","GLOBAL",0)
GlobalGT("AerieVampire","GLOBAL",0)
GlobalGT("ViconiaVampire","GLOBAL",0)
GlobalGT("M#AmberVampire","GLOBAL",0)
GlobalGT("KimVampire","GLOBAL",0)
GlobalGT("LK#NindeAbducted","GLOBAL",0)
GlobalGT("G#TF.TyrisVampire","GLOBAL",0)
GlobalGT("PGNaliaVampire","GLOBAL",0)
~THEN REPLY~ I wonder why she took her and not you, Sandrah?~ GOTO SanBodAbdu3
IF~ OR(9)
GlobalGT("ValygarVampire","GLOBAL",0)
GlobalGT("FHFVampire","GLOBAL",0)
GlobalGT("AnomenVampire","GLOBAL",0)
GlobalGT("C#AjantisVampire","GLOBAL",0)
GlobalGT("ADAngelVampire","GLOBAL",0)
GlobalGT("B!GavVampire","GLOBAL",0)
GlobalGT("EdwinVampire","GLOBAL",0)
GlobalGT("J#KelseyVampire","GLOBAL",0)
GlobalGT("Solavampire","GLOBAL",0)
~THEN REPLY~ I wonder why she took him and not you, Sandrah?~ GOTO SanBodAbdu3
END

IF~~ THEN BEGIN SanBodAbdu3
SAY~ She first tried to take me but found me too strong. Instead of giving up her attempt she now has both of us against her plus our task to get the Lanthorne from her. This will be her end.~
IF~~THEN REPLY~ You are right, we now have a threefold reason to defeat her urgently.~EXIT
IF~~THEN REPLY~ Her first attack was to you? She knows my heart's feelings better than anyone.~ EXIT
END

IF~ Global("SanBodAttmpt","AR0800",4) ~ THEN BEGIN SanBodAbdu4
SAY~ Elven law and justice sometimes appears very strict to me.~
IF~~THEN REPLY~ Are you feeling some kind of sypathy for that vampire all of a sudden?~ GOTO  SanBodAbdu5
IF~~THEN REPLY~ So it is finally confirmed that our enemies are or were elves, even if not much of that was left in Bodhi.~ GOTO  SanBodAbdu5
END

IF~~ THEN BEGIN SanBodAbdu5
SAY~ We have long suspected that some internal elven affair has caused Jon and Bodhi to be expelled from their society. We do not know the circumstances and the crimes they have done to justify their punishment - it does not matter anymore as the deeds they have done afterwards, especially to you and Imoen make them our enemies as well.~
IF~~THEN REPLY~ You still seem to be far from happy about our victory.~DO~SetGlobal("SanBodAttmpt","AR0800",5) ~ GOTO  SanBodAbdu6
END

IF~~ THEN BEGIN SanBodAbdu6
SAY~Oh - I am more than happy that my *besta friend* is hale again and your own restoration is just a matter of time by now. Still, I feel uncomfortable with this being used like a tool in a scheme that is still hidden from us. (Sigh) We need Elhan to access Suldanessalar where Irenicus hides your soul. I really would like to get the truth out of them. We are treated like any other *outsiders* even though they need us desperately in their darkest hour.~
IF~~THEN REPLY~ It is a deal and anyway, Irenicus deserves the worst of punishment for the hundreds of crimes he has committed.~ GOTO  SanBodAbdu7
END

IF~~ THEN BEGIN SanBodAbdu7
SAY~ I fully agree with you, <CHARNAME>, Bodhi and her brother have long ago lost their way and any chance to escape their final verdict. Still I am puzzled how any creature can be driven into such behaviour. What did they do and what did the elves do to them that has caused this havoc where thousands of innocent have lost their lives or were otherwise damaged - including my most beloved friends?~
IF~~THEN REPLY~ Ever the searcher, Sandrah. We will go on as we must and eventually find those answers.~ EXIT
IF~~THEN REPLY~ If the elves want their Lanthorne and our further assistance they will have to answer those questions.~EXIT
IF~~THEN REPLY~ Even if the elves of Suldanessalar may not be completely innocent in this situation it is Irenicus that has drawn ourselves into it and I cannot but fight him to get back what he took from me.~EXIT
END

// Sharkta Fai

IF~ Global("Homesail","GLOBAL",13)~ THEN BEGIN SanBHBrag1
SAY~ So it was Brage who was scaring the pirate Monteelah on the Sword Coast.~
IF~~THEN REPLY ~ What are you talking about now?~ GOTO SanBHBrag2
IF~~THEN REPLY ~ You mean...we were suspecting all during this mysterious hunt by Montelaah that some third party was involved. Brage?~ GOTO SanBHBrag2
END

IF~~THEN BEGIN SanBHBrag2
SAY ~ You remember those missing final pieces from the Sharkta Fai papers? We did not know then whether they were taken from the stack or had never been in it from the beginning. Now we know, it was this book that Brage obtained from a pirate, probably one escaped from the pirate's crew. In all his desperate attempts to cure his state of mind he must have found someone who translated it for him.~
IF~~THEN REPLY ~ Like Shauhana told us, he came here to finally find a cure - or death.~ DO ~ SetGlobal("Homesail","GLOBAL",14) AddexperienceParty(5500)~ EXIT
END

IF~ Global("SanOtherWorld","GLOBAL",1)~ THEN BEGIN SanOWWorried1
SAY~ (While everyone in your party seems to be happy about the ending of the Sharkta Fai adventure, Sandrah has remained silent for quite a while.)~ 
IF~~THEN REPLY ~ There are still a lot of open questions, Sandrah, even if today we can celebrate Shauhana's restoration. Is there something that worries you especially, my love?~ GOTO SanOWWorried2
IF~~THEN REPLY ~ (You remain silent and take Sandrah's hand with a smile. She knows you are always there to talk to if she feels the need for it.)~ GOTO SanOWWorried2
END

IF~~THEN BEGIN SanOWWorried2
SAY ~ It is a happy day and it feels wonderful that we have been able to help our new half-orc friend...~
IF~~THEN REPLY~ But still...? ~ DO ~ SetGlobal("SanOtherWorld","GLOBAL",2)~GOTO SanOWWorried3
END

IF~~THEN BEGIN SanOWWorried3
SAY ~ Oh, it has nothing to do with Shauhana and her healing. That is indeed wonderful. It is more the creature, this Guardian, and his assigned duty as well as the mysterious hints he gave about the godchilds that worries me.~
IF~~THEN REPLY~ What about that Guardian, Sandrah?~ GOTO SanOWWorried4
END

IF~~THEN BEGIN SanOWWorried4
SAY ~ (She stops and turns to you.) <CHARNAME>, you know about my believes and motivation by now - and you know that I do not believe in an afterlife and *Other World* at all. Consequently a creature like the Guardian should not exist. Or, to be more precicse, his duty to guard the *portal* is something that I cannot believe in.~
IF~~THEN REPLY~ Hm, we have been there ourselves, Sandrah! Shauhana has been restored, the Sharkta Fai pool is reality, her orc mentor has been taken by the Guardian. We both have witnessed all of it with our own eyes. Do you think we have been tricked in some way?~ GOTO SanOWWorried5
END

IF~~THEN BEGIN SanOWWorried5
SAY ~ Yes and no.~
= ~ I mean, yes, we have witnessed everything you have mentioned, the healing power of that pool, the creature calling himself Guardian, the disappearing of the dead priest's body. We also know from our research that all of that is very old and mentioned in the oldest documents found on Toril. But that is all, such are the facts we have seen.~
IF~~THEN REPLY~ You mean, we have not seen the portal itself and we have no evidence as to where the shaman's body really disappeared?~  GOTO SanOWWorried6
IF~~THEN REPLY~ You do not accept what we have seen as a proof for the Other World?~ GOTO SanOWWorried7
END

IF~~THEN BEGIN SanOWWorried6
SAY ~ Exactly. What we have in addition is the knowledge of the Guardian about your heritage and an additional hint that Shauhana somehow has a similar origin.~
IF~~THEN REPLY~ So again one puzzle starts where another one just has been finished.~EXIT
END

IF~~THEN BEGIN SanOWWorried7
SAY ~ No, the shaman's body may have been transferred to about everywhere, there was not a trace of that so-called *Portal*. What we have found out in addition is the knowledge of the Guardian about your heritage and an additional hint that Shauhana somehow has a similar origin.~
IF~~THEN REPLY~ So again one puzzle starts where another one just has been finished.~EXIT
END

IF~Global("SanHintFactory","GLOBAL",2)~THEN BEGIN EssFactry1
SAY~(Sandrah has stood long over the remains of the defeated lich. You could swear you have seen your fearless counselor shudder for a moment.)~
IF~~THEN REPLY~ (You kindly lay your arm around her.) You seem to be worried by whatever you have found, my love.~ DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO EssFactry2
IF~~THEN REPLY~ Those liches were terrible, I hope there won't be more of that type around here.~ GOTO EssFactry2
END

IF~~THEN BEGIN EssFactry2
SAY~ You heard what I heard, I suppose. That Vennegrat and those second rate apprentice liches were referring to the *master*. The large scale *production* of undead, the talk of us, respectively our remains, as material...~
IF~~THEN REPLY~ (You look questioningly at her - you have never seen her so desperate.)~DO~SetGlobal("SanHintFactory","GLOBAL",3)~GOTO EssFactry3
END

IF~~THEN BEGIN EssFactry3
SAY~ Let us act quickly, <CHARNAME>, this may otherwise mean the end for Shauhana and the Clan Orcs.~
IF~~THEN REPLY~ Before we do anything I insist that you share your assumptions with us. We must know what is going on here.~ GOTO EssFactry5
IF~~THEN REPLY~ Well, we did what we could for them. We will not sacrifice our lives for unwashed stupid orcs - Clan or no Clan.~ GOTO EssFactry4
END

IF~~ THEN BEGIN EssFactry4
SAY~ (It seems she has not even heard your words.)~
IF~~THEN GOTO EssFactry5
END

IF~~ THEN BEGIN EssFactry5
SAY~Let us go back to the graveyard, please. I want to check one thing before I share my assumptions - and my nightmares - with you. (The smile she attempts is meant to be reassuring but you see that it is really forced.)~
IF~~THEN REPLY~ Yes, let us go, there is nothing to be learned here anymore.~EXIT
END

IF~Global("SanHintFactory","GLOBAL",4)~ THEN BEGIN EssFactry6
SAY~ (Sandrah has taken out her sketchbook and starts to draw always scanning the surrounding in between. You are sure she will not try to capture the gloom of the landscape at the graveyard.)~
IF~~THEN REPLY~ (You move behind her and see that she is sketching a map).~ DO~SetGlobal("SanHintFactory","GLOBAL",5)~ GOTO EssFactry7
END

IF~~ THEN BEGIN EssFactry7
SAY~ (She wordlessly pulls you down to your knees so you can both examine her map now.)~
=~ See, we are here...up here the orc village...the crossroads leading to Sharkta Fai...this mountain ridge you see over there...~
=~(She leans a bit forward to get another view of the inside of that open grave. Then she draws an arrow from that point to show the direction of the tunnel visible below.)~
IF~~THEN REPLY~ I think I see the same, Sandrah. Forgetting all these cliffs, glaciers and valleys on the surface, this tunnel leads directly to...Sharkta Fai.~GOTO EssFactry8
END

IF~~ THEN BEGIN EssFactry8
SAY~ If my calculation is right, the cave is just on the opposite slope of those mountains. If the tunnels go in a straight line it would be just a four hour walking distance between here and the mysterious pool.~
IF~~THEN REPLY~ So Sharkta Fai and those emerging undead are connected!~ GOTO EssFactry9
IF~~THEN REPLY~ And in between them is this strange *factory*?~ GOTO EssFactry9
END

IF~~ THEN BEGIN EssFactry9
SAY~ They are connected and in between lies a factory producing undead, yes. Remember how we and the orcs were referred to as material.~
IF~~THEN REPLY~ The orcs deliver their dead heroes at one end and they emerge as undead on the other end. But what is the purpose of such a transformation?~ GOTO EssFactry10
END

IF~~ THEN BEGIN EssFactry10
SAY~ None, <CHARNAME>. Those undead are just a by-product, the waste this factory produces. They are what is left when *the master* has taken from the fallen what he really needs...~
IF~~THEN REPLY~ Ha, and he lets that fool Vennegrat use his leftovers to start a war that will produce more dead heroes - more *material*.~ GOTO EssFactry11
END

IF~~ THEN BEGIN EssFactry11
SAY~Let us go to Shauhana. We need something from her to enter Sharkta Fai. We must stop this *master*.~
IF~~THEN REPLY~ You know who it is, don't you?...ah, there comes the next wave.~ EXIT
END

IF~Global("SanHintFactory","GLOBAL",20)~THEN BEGIN Beattam1
SAY~I am glad you acted cool headed, <CHARNAME>. Violence helps us little against Szass Tam the way he currently assimilates the Dark Energy.~
IF~~THEN REPLY~ Do you see a way to cut him off from his supplies?~ GOTO Beattam2
IF~~THEN REPLY~ We must destroy these outlets that provide the kernel with a new boost regularly.~ GOTO Beattam2
END

IF~~THEN BEGIN  Beattam2
SAY~ I see no way to destroy them - yet if we could block the way from the outlets to the middle somehow...~
IF~~THEN REPLY~ What could probably block the energy boosts - they traverse our bodies, shields and armor without a trace?~GOTO Beattam3
IF~~THEN REPLY~ Shall we build a wall now around the kernel, we have no material at hand down here? ~GOTO Beattam3
IF~~THEN REPLY~The energy stops at the rocky walls around...~GOTO Beattam3
END

IF~~THEN BEGIN  Beattam3
SAY~ See here, <CHARNAME>! The rocks themselves are not penetrated by the flow. Massive stone material stops it.~
IF~~THEN REPLY~ If we pile up some boulders in front of each it cannot get on to the middle, I guess.~DO~SetGlobal("SanHintFactory","GLOBAL",21)~ EXIT
IF~~THEN REPLY~ There's a lot of boulders on those fithy duergars outside, we must transport some inside of here and build a barricade.~DO~SetGlobal("SanHintFactory","GLOBAL",21)~ EXIT
IF~~THEN REPLY~ Don't you have a spell to tear down the roof on this guy?~DO~SetGlobal("SanHintFactory","GLOBAL",21)~ EXIT
END

// Spellhold
IF~Global("SanSlayHelp","LOCALS",1)~THEN BEGIN SanPCWasSlayer1
SAY~(Sandrah with a pale face lets her deadly hammer fall to the ground. Slowly her tense face relaxes and she throws her arms around you.) ~
=~ Have you truly returned to be yourself, <CHARNAME>? Has Bhaal's avatar left?~
IF ~~ THEN REPLY ~ That is how it feels? That is what Irenicus wants out of me and Imoen? A deadly killing machine?~GOTO SanPCWasSlayer5
IF ~~ THEN REPLY ~ I had no control, by the gods, no one was friend or foe - I could have killed you, Sandrah! ~GOTO SanPCWasSlayer2
END

IF~~ THEN BEGIN SanPCWasSlayer2
SAY~ (Her voice is icy cold) Mystra would have prevented that.~
IF ~~ THEN REPLY ~ The hammer? You were determined to strike...had I not been able to recover and stayed that way?~ GOTO SanPCWasSlayer3
END

IF~~ THEN BEGIN SanPCWasSlayer3
SAY~ We would not be here talking to each other. One of us would have to live on with the fact of having killed the most beloved of all.~
IF ~~ THEN REPLY ~If you had done it, you would have freed me from an existence that would not have been me at all. An act of mercy that only the truest lover would be able to perform. You would have done this for me.~ GOTO SanPCWasSlayer4
IF ~~ THEN REPLY ~ To have killed you and live on with the knowledge of my deed even if I were not responsible of it. Rather I wished you had the strength to prevent this creature from existing on Faerun.~ GOTO SanPCWasSlayer7
END

IF~~ THEN BEGIN SanPCWasSlayer4
SAY~ Yes. (She kisses you and turns away. There is no need for further words.)~
IF~~THEN DO~ SetGlobal("SanSlayHelp","LOCALS",5)~ EXIT
END

IF~~ THEN BEGIN SanPCWasSlayer5
SAY~The avatar of Bhaal. Yours is the most powerful that has ever been seen on the primary plane, <CHARNAME>.~
IF ~~ THEN REPLY ~ The hammer? You were determined to strike...had I not been able to recover and stayed that way?~ GOTO SanPCWasSlayer3
IF~~THEN REPLY~ Does that imply I may be the strongest of the Bhaalspawns on Faerun?~ GOTO SanPCWasSlayer6
IF~~THEN REPLY~ I have the power to follow him and take his vacated throne! All of that is mine!~
GOTO SanPCWasSlayer7
IF~~THEN REPLY~ If that were true I would be the one that can prevent all the other Bhaalspawns on Faerun to take the throne of Bhaal?~ GOTO SanPCWasSlayer9
END

IF~~ THEN BEGIN SanPCWasSlayer6
SAY~ (She nods silently.)~
IF~~THEN REPLY~ I have the power to follow him and take his vacated throne! All of that is mine!~
GOTO SanPCWasSlayer7
IF~~THEN REPLY~ If that were true I would be the one that can prevent all the other Bhaalspawns on Faerun to take the throne of Bhaal??~ GOTO SanPCWasSlayer9
END

IF~~ THEN BEGIN SanPCWasSlayer7
SAY~ (Her voice is icy cold) Mystra will prevent that, just as before.~
IF~~THEN REPLY~As before...as a priestess of Mystra set out to defeat the God of Murder...you would do the same, Sandrah?~ GOTO SanPCWasSlayer8
END

IF~~ THEN BEGIN SanPCWasSlayer8
SAY~ Yes.~
IF~~THEN DO~ SetGlobal("SanSlayHelp","LOCALS",5)~ EXIT
END

IF~~ THEN BEGIN SanPCWasSlayer9
SAY~ That throne has to be left vacated, <CHARNAME>, or, at least not be used the same as it was before.~
IF~~THEN REPLY~That sounds like the throne may be taken by the last surviving spawn to become a god himself but turn this power into something different than murder?~ GOTO SanPCWasSlayer8
IF~~THEN REPLY~As the most powerful of the spawns and given I survive all rivals i could reject to take the role fate has foreseen for me? And stay...me.~ GOTO SanPCWasSlayer8
END

IF~Global("SanSlayHelp","LOCALS",2)~THEN BEGIN SanPCWasSlayer11
SAY~(Sandrah with a pale face lets her deadly hammer fall to the ground. Slowly her tense face relaxes and she picks up her weapon ready for the next foe.) ~
=~ Have you truly returned to be yourself, <CHARNAME>? Has Bhaal's avatar left?~
IF ~~ THEN REPLY ~ (You nod. Something tells you she was really prepared to slaughter the avatar if necessary.)~ DO~ SetGlobal("SanSlayHelp","LOCALS",3)~ EXIT
IF ~~ THEN REPLY ~ (You nod. You will seek her counselling once you are out of this imminate danger.)~ DO~ SetGlobal("SanSlayHelp","LOCALS",3)~ EXIT
END

IF~Global("SanSlayHelp","LOCALS",4)~THEN BEGIN SanPCWasSlayer21
SAY~Now you have encountered yourself what so many who are after you seek to find. Bhaalspawn. ~
IF ~~ THEN REPLY ~ That is how it feels? That is what Irenicus wants out of me and Imoen? A deadly killing machine?~GOTO SanPCWasSlayer5
IF ~~ THEN REPLY ~ I had no control, by the gods, no one was friend or foe - I could have killed you, Sandrah! ~GOTO SanPCWasSlayer2
END

IF~~THEN BEGIN SanPCWasSlayer22
SAY~Now you have encountered yourself what so many who are after you seek to find. Bhaalspawn. ~
IF ~~ THEN REPLY ~ That is how it feels? That is what Irenicus wants out of me and Imoen? A deadly killing machine?~GOTO SanPCWasSlayer5
IF ~~ THEN REPLY ~ I had no control, by the gods, no one was friend or foe - I could have killed you, Sandrah! ~GOTO SanPCWasSlayer2
END

IF~Global("SanElleRef","LOCALS",1)~ Suldahint1
SAY~ Suldanessalar, that is why none of the elves I asked knew Irenicus and Bodhi.~
IF~~THEN REPLY~ What is that?~ GOTO Suldahint2
IF~~THEN REPLY~ The hidden town of the elves? Do you think they come from there?~ GOTO Suldahint2
END

IF~~THEN BEGIN Suldahint2
SAY~ It becomes clearer now for me, <CHARNAME>. All of this around here is the machinery of an enourmous revenge.~
IF~~THEN REPLY~ Of Irenicus? But against whom?~ GOTO Suldahint3
END

IF~~THEN BEGIN Suldahint3
SAY~ Against Ellesime, the queen of the elves in Suldanessalar.~
=~ You remember when you told me about Jon's bright blue eyes behind the mask of your torturer? The eyes of an elf. He and Bodhi must have committed a crime larger than any against their own folk. They have not been sentenced to death but to an even more severe punishment - to live on in their current state...~
IF~~THEN REPLY~ Me and Imoen and the souls they have stolen from us are to be their tools of revenge against an elvish town then?~ DO ~SetGlobal("SanElleRef","LOCALS",2)~ GOTO Suldahint4
END

IF~~THEN BEGIN Suldahint4
SAY~ Exactly. If we only had the means to warn those elves. But the town has vanished from the knowledge and the surface of Toril some time ago. I can only imagine now that it had to do with the events that led to the exile of our opponents.~
IF~~THEN REPLY~ Well, if all of that is true, the only way to help the elves is to persue Jon. Which we must do anyhow for Imoen's an my own sake.~EXIT
IF~~THEN REPLY~ We must follow the two creatures that stole Imoen's and my souls. If that leads us to the target of their revenge...fine, we can surely need those elves to our assistance.~EXIT
END

IF~Global("SanresearIr","LOCALS",2)~ THEN BEGIN SansearchJItm1
SAY~ Before we continue we maybe should return to the inside and search Irenicus' quarters there for additional hints on his further plans.~
IF~~THEN REPLY~ Fine. A valid proposal and it will not delay us too much.~DO ~SetGlobal("SanresearIr","LOCALS",3) IncrementGlobal("Sanpoints","GLOBAL",1)~ EXIT
IF~~THEN REPLY~ Nope. It will delay us too much and we already know what to do.~DO ~SetGlobal("SanresearIr","LOCALS",3) IncrementGlobal("Sanpoints","GLOBAL",-1)~ EXIT
END

IF~Global("SanPCCanSlay","GLOBAL",1) ~ THEN BEGIN SanDangeIns1
SAY~ There is a great new danger for us now, <CHARNAME>, unlike any we had to face in the past.~
IF~~THEN REPLY~ Ah, Irenicus may be powerful but we have already spoilt his plans more than once. And Bodhi? We have fought great vampires in the past.~ GOTO SanDangeIns2
IF~~THEN REPLY~ With you by my side and our loyal companions as well - what is there to fear?~GOTO SanDangeIns2
IF~~THEN REPLY~ You and talking like that. Has my counselor and main fighter suddenly discovered the word *fear* in her tome, hahaha?~ GOTO SanDangeIns2
IF~~THEN REPLY~ What are you talking about now, Sandrah?~ GOTO SanDangeIns2
END

IF ~~ THEN BEGIN SanDangeIns2
SAY~ I refer to a danger that is different from any other as we cannot fight it with weapons or spells but just with our will - your will. The enemy inside.~
IF~~THEN REPLY~ (Tell her of your slayer's dream.)~ GOTO SanDangeIns3
IF~~THEN REPLY~ Well, I have discovered this strange new ability. Like in the past when I found new skills after a strange dream at night.~ GOTO SanDangeIns3
END

IF ~~ THEN BEGIN SanDangeIns3
SAY~ This is what I mean, my love. You had controlled Bhaal with your will and the goodness of your soul so far. Now Irenicus has taken something from you and left a void. A space that the Bhaalpower will try to occupy - if we do not prevent it.~
IF~~THEN REPLY~ How do WE prevent that? It is inside of ME?~ DO~ SetGlobal("SanPCCanSlay","GLOBAL",2) ~ GOTO SanDangeIns4
END

IF ~~ THEN BEGIN SanDangeIns4
SAY~ Sadly enough that is true. It is you that is alone with it at the moment of decision. No one can take that from you. All my love can provide to you is to give you the necessary strength and confidence you need. All I can do is love you.~
IF~~THEN REPLY~ That is so much, nothing else is needed.~ EXIT
IF~~THEN REPLY~ That and a bit of good advice on the side.~ GOTO SanDangeIns5
IF~~THEN REPLY~ I must not use the ability come what may.~ GOTO SanDangeIns5
END

IF ~~ THEN BEGIN SanDangeIns5
SAY~ That is true. Whatever comes for us, do not use the power again. It will only grow stronger until nothing can control it anymore. Let it starve on your neglegtance.~
IF~~THEN EXIT
END

//Underdark
IF~Global("UcmMatronDrow","GLOBAL",2)~THEN BEGIN UDWelcome1
SAY~Just the warm welcome we had to expect in this place - even worse in our persuit of Irenicus and Bodhi.~
IF~~THEN REPLY~ How can it be that they are in alliance with the Drow?~ GOTO UDWelcome2
IF~~THEN REPLY~ Why do the drow not treat those elves with the same hostility?~ GOTO UDWelcome2
END

IF~~THEN BEGIN UDWelcome2
SAY~A common interest, <CHARNAME>, one that make the worst of oponents to allies all of a sudden.~
=~We have learned already that our foe are most likely elves who have committed a crime against Suldanessalar and its queen Ellesime. They have been exiled from their former home and been punished with the loss of their elven longivity.~
IF~~THEN REPLY~They have stolen Imoen's and my souls to compensate for that.~DO~SetGlobal("UcmMatronDrow","GLOBAL",3)~ GOTO UDWelcome3
END

IF~~THEN BEGIN UDWelcome3
SAY~Absolutely correct. With that regained power their goal is now revenge on their former hometown.~
=~The ones that share this deadly hatred for the surface elves can be found down here in abundance.~
IF~~THEN REPLY~Those traitors use the drow against their own folk!!~ GOTO UDWelcome4
END

IF~~THEN BEGIN UDWelcome4
SAY~ With the same logic this makes the elves of Suldanessalar our allies in our fight against Irenicus and Bodhi.~
IF~~THEN REPLY~First we must get out of these caves to notify them.~ EXIT
IF~~THEN REPLY~A doubtful ally from a town that hides itself to all non-elves.~ EXIT
END

IF~Global("SanFLead","ar2200",1)~THEN BEGIN SanFemDrow1
SAY~<CHARNAME>, not to question your leadership...but we are now drow and facing other drow on their terrain...~
IF~~THEN REPLY~...my counselor has some advice for me?~DO~SetGlobal("SanFLead","ar2200",2)~GOTO SanFemDrow2
END

IF~~THEN BEGIN SanFemDrow2
SAY~Even if male drow can gain some position within their society it is a rare case for very clever and persistent fighters only. Maybe we would draw a bit less of unwanted attention if one of our females would pose as our group leader while we are here.~
IF~~THEN REPLY~Well...it's a rare case for a male to lead down here - Veldrin of Ched Nassad is such a man...Thanks for the hint anyway.~DO~IncrementGlobal("Sanpoints","GLOBAL",1)~ EXIT
IF~~THEN REPLY~Veldrin of Ched Nassad is such a man, just in case you doubt it. Never question my leadership again, my love. Accept your place in this party.~DO~IncrementGlobal("Sanpoints","GLOBAL",-2)~ GOTO SanFemDrow3
IF~InParty("Yasraena")~THEN REPLY~How about Yasraena, she is even a drow by nature?~ GOTO SanFemDrow4
IF~InParty("Viconia")~THEN REPLY~How about Viconia, she is even a drow by nature?~ GOTO SanFemDrow5
IF~InParty("Imoen2")~ THEN REPLY~How about Imoen, she has proven her strength in her time alone in Spellhold?~GOTO SanFemDrow6
IF~InParty("M#Amber")~ THEN REPLY~How about Amber, disguises are a thief's second nature?~GOTO SanFemDrow7
IF~InParty("Kiyone")~ THEN REPLY~How about Kiyone, she takes on duties just naturally?~ GOTO SanFemDrow7
IF~InParty("Jaheira")~ THEN REPLY~How about Jaheira, our *secret leader* anyway?  ~GOTO SanFemDrow7
IF~InParty("Aerie")~ THEN REPLY~How about Aerie, a chance to improve her self-assurance?~ GOTO SanFemDrow8
IF~InParty("kim")~ THEN REPLY~How about Kim, disguises are a thief's second nature?~GOTO SanFemDrow7
IF~InParty("Saerileth")~ THEN REPLY~How about Saerileth, our *secret leader* anyway?  ~GOTO SanFemDrow7
IF~InParty("Nalia")~ THEN REPLY~How about Nalia, the perfect role for a born noble anyway?  ~GOTO SanFemDrow9
IF~InParty("RChloe")~ THEN REPLY~How about Chloe, the perfect role for a half-god anyway?  ~GOTO SanFemDrow7
IF~InParty("CVShau")~ THEN REPLY~How about Shauhana, the perfect role for a future orc-queen?  ~GOTO SanFemDrow7
IF~InParty("MWAriena")~ THEN REPLY~How about Ariena, the perfect role for one as blood-thirsty as a drow?  ~GOTO SanFemDrow10
IF~InParty("k#sheena")~ THEN REPLY~How about Sheena, the perfect role for one who changes personality at will?  ~GOTO SanFemDrow7
IF~~THEN REPLY~How about yourself - a counselor should easily adopt to the leading role as well?~DO~IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SanFemDrow11
END

IF~~THEN BEGIN SanFemDrow3
SAY~ I follow you with all my loyalty and you know that. I am not claiming leadership, I was just advising you how to improve our drow charade.~
IF~~THEN REPLY~Fine, I'm sorry if I sounded harsh.~EXIT
IF~~THEN REPLY~I hope I made myself clear.~EXIT
IF~~THEN REPLY~Whatever, let's move on.~EXIT
END

IF~~THEN BEGIN SanFemDrow4
SAY~Mind that she was raised more as a male herself and despises the drow's ways.~
IF~~THEN REPLY~Good point. Then you just have to accept the role - for the time.~GOTO SanFemDrow11
IF~~THEN REPLY~Still she will do it better than anyone else.~EXIT
END

IF~~THEN BEGIN SanFemDrow5
SAY~Mind that she is an outcast and may be still wanted by Lolth's disciples. We should rather keep her hidden than expose her.~
IF~~THEN REPLY~Good point. Then you just have to accept the role - for the time.~GOTO SanFemDrow11
IF~~THEN REPLY~Still she will do it better than anyone else.~EXIT
END

IF~~THEN BEGIN SanFemDrow6
SAY~Mind that she may get us in a mess with her talkative ways. Her words slip a bit to easy out of her mouth for such a disguise.~
IF~~THEN REPLY~Good point. Then you just have to accept the role - for the time.~GOTO SanFemDrow11
IF~~THEN REPLY~Still she will do it better than anyone else.~EXIT
END

IF~~THEN BEGIN SanFemDrow7
SAY~A brilliant idea, she will love to *boss* you around a bit.~
IF~~THEN REPLY~On second thoughts, why not you - you just have to accept the role - for the time.~GOTO SanFemDrow11
IF~~THEN REPLY~Still she will do it better than anyone else.~EXIT
END

IF~~THEN BEGIN SanFemDrow8
SAY~Hm, a risky time for such training - she might easily give us away by being just too kind to you and other drow male.~
IF~~THEN REPLY~On second thoughts, why not you - you just have to accept the role - for the time.~GOTO SanFemDrow11
IF~~THEN REPLY~Still she will do it better than anyone else.~EXIT
END

IF~~THEN BEGIN SanFemDrow9
SAY~A brilliant idea, just make it clear to her that a drow female does not provide charity to the weak.~
IF~~THEN REPLY~On second thoughts, why not you - you just have to accept the role - for the time.~GOTO SanFemDrow11
IF~~THEN REPLY~Still she will do it better than anyone else.~EXIT
END

IF~~THEN BEGIN SanFemDrow10
SAY~Mind that her urge to fight might get us more attention than we require for our mission.~
IF~~THEN REPLY~On second thoughts, why not you - you just have to accept the role - for the time.~GOTO SanFemDrow11
IF~~THEN REPLY~Still she will do it better than anyone else.~EXIT
END

IF~~THEN BEGIN SanFemDrow11
SAY~ (Laughs) A dangerous choice, my dear. You know what drow female require most from their love-slaves.~
IF~~THEN REPLY~(Wink) That was exactly why I asked you for it.~ DO~IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
IF~~THEN REPLY~Ha, between the sheets I will still lead.~ EXIT
IF~~THEN REPLY~Fine with me as long as you allow me to maintain enough strength to persuit our quest.~DO~IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
END

IF~Global("SanUsePrevi","AR2200",1)~THEN BEGIN UseDrowPriv1
SAY~We can use our new privileges gained from the mother matron to improve some things down here during our brief stay.~
IF~~THEN REPLY~What do you suggest, counselor? ~DO~IncrementGlobal("Sanpoints","GLOBAL",1)~ GOTO UseDrowPriv2
IF~~THEN REPLY~The tavern should give us bargain prices by now. ~DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~GOTO UseDrowPriv2
IF~~THEN REPLY~We can check out what those *experienced* drow lovers can do for us. ~DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~GOTO UseDrowPriv2
IF~~THEN REPLY~We should still keep our profile as low as possible.~GOTO UseDrowPriv2
END

IF~~THEN BEGIN UseDrowPriv2
SAY~Just north of the tavern were those slave cages. Our status and our useless money will buy the freedom for those poor captives.~
IF~~THEN REPLY~We cannot load ourselves with the responsibility for those exhausted slaves - our own position here is instable enough.~DO~SetGlobal("SanUsePrevi","AR2200",2) ~ GOTO UseDrowPriv3
IF~~THEN REPLY~I respect your attitude towards slavery but those creatures will have no chance to survive more than some hours on their own. And we cannot protect them with the mission we have to perform.~DO~SetGlobal("SanUsePrevi","AR2200",2) ~ GOTO UseDrowPriv3
END

IF~~THEN BEGIN UseDrowPriv3
SAY~I fully agree with your analysis, <CHARNAME>.~
IF~~THEN REPLY~But?...I know there is a *but*.~ GOTO UseDrowPriv4
END

IF~~THEN BEGIN UseDrowPriv4
SAY~Solaufein mentioned Eilistraee when we saved him. I am sure there are followers of the Dark Maiden in Ust Natha who will help them back to the surface. All we need to do is get them out of the cages.~
=~Please.~
IF~~THEN REPLY~If it is just that...I trust you know what you are doing.~EXIT
END

IF~Global("SanProph2","ar2100",1)~THEN BEGIN SanErrGith
SAY~I am sorry for my error, <CHARNAME>, I have endangered you and our comrades unnecessarily.~
IF~~THEN REPLY~ A strange reaction, Sandrah, you could not have foreseen that they would attack so senselessly.~ DO~SetGlobal("SanProph2","ar2100",2)~GOTO SanErrGith2
END

IF~~THEN BEGIN SanErrGith2
SAY~It appears that according to their codex someone had to pay with his life for the theft - and Saemon Havarian was not available.~
IF~~THEN REPLY~ He had any reason not to be here. I wonder if that idiot knew what he was hiding.~EXIT
IF~~THEN REPLY~ Saemon, we will find you! This is not over yet.~ EXIT
IF~~THEN REPLY~ I guess he simply misused us and our abilities to get rid of those persuers.~ GOTO SanErrGith3
END

IF~~THEN BEGIN SanErrGith3
SAY~If so we will surely see him again. He will appear to retrieve the blade sooner or later.~
IF~~THEN REPLY~A warm welcome is guaranteed for him. Warm?...No,hot!~EXIT
END

IF~Global("SanDrowSleep","LOCALS",1)~ THEN BEGIN SanDrwLuv1
SAY~(As you lay down a shimmering dark naked body glides onto the sheet beside you.)~
IF~Global("SanRomPath","GLOBAL",1)~THEN REPLY~ Who are...Sandrah?~DO~SetGlobal("SanDrowSleep","LOCALS",2)~ GOTO SanDrwLuv2
IF~Global("SanRomPath","GLOBAL",2)~THEN REPLY~ Who are...Sandrah?~DO~SetGlobal("SanDrowSleep","LOCALS",2)~ GOTO SanDrwLuv4
END

IF~~THEN BEGIN SanDrwLuv2
SAY~ (Slapp) Male, did you not learn to use your mouth better on me than with talk? (She lightly slapps your behind to motivate you.)~
IF~~THEN REPLY~ The mistress will not be disappointed.~ GOTO SanDrwLuv3
IF~~THEN REPLY~ You play your role very well, harsh mistress.~ GOTO SanDrwLuv3
END

IF~~THEN BEGIN SanDrwLuv3
SAY~ (Slapp) Last warning.~
=~(The night that follows is one you will not easily forget. Sandrah really does not hold back the *dark side* of her passion and thus brings you to let out the beast that slumbers beneath your civilised behaviour in the daytime.)~
IF~~THEN DO~ RestParty()~EXIT
END

IF~~THEN BEGIN SanDrwLuv4
SAY~ I cannot resist this inviting dark skin, <CHARNAME>, how will it taste? (She bites your naked breast - *ouch* - just to have an excuse to soothe it again with her kisses.)~
IF~~THEN REPLY~ Aaah, this dragon transformed more than just our skin colour. Let me feel what a drow mistress would feel from her love slave.~GOTO SanDrwLuv5
IF~~THEN REPLY~ Yes...bite me, mistress, teach your love slave her lesson.~GOTO SanDrwLuv6
END

IF~~THEN BEGIN SanDrwLuv5
SAY~ (Willingly your girl friend adopts the role you assigned her with ever new attacks on the sensitive spots on your body.)~
=~(The night that follows is one you will not easily forget. Sandrah really does not hold back the *dark side* of her passion and thus brings you to let out the beast that slumbers beneath your civilised behaviour in the daytime.)~
IF~~THEN DO~ RestParty()~EXIT
END

IF~~THEN BEGIN SanDrwLuv6
SAY~ (Slapp) Slave, did you not learn to use your mouth better on me than with talk? (She lightly slapps your behind to motivate you.)~
IF~~THEN REPLY~ The mistress will not be disappointed.~ GOTO SanDrwLuv3
IF~~THEN REPLY~ You play your role very well, harsh mistress.~ GOTO SanDrwLuv3
END

IF~Global("SanDrowSleep","LOCALS",3)~ THEN BEGIN SanDrwLuv7
SAY~ This transformation surely has its advantage as well. (She kisses you passionately).~
IF~~THEN REPLY~ I would not reject another night like this.~ GOTO SanDrwLuv8
IF~~THEN REPLY~ I only hope our quests will not require us to change into a fiery salamander next time.~ GOTO SanDrwLuv9
IF~~THEN REPLY~ The drow have at least this compensation for the live they otherwise have to endure.~ GOTO SanDrwLuv8
END

IF~~THEN BEGIN SanDrwLuv8
SAY~ I can see no reason why our normal skin should prevent us from enjoying ourselves like this again. (She gently bites your earlobe.)~
IF~~THEN DO~ SetGlobal("SanDrowSleep","LOCALS",4)~ EXIT
END

IF~~THEN BEGIN SanDrwLuv9
SAY~ We can burn the sheets together any time without that transformation, my sweet vulcano.~
IF~~THEN DO~ SetGlobal("SanDrowSleep","LOCALS",4)~ EXIT
END

IF~Global("SanSola","GLOBAL",1)~ THEN BEGIN SanWarnIntr1
SAY~Do you have the same feeling, <CHARNAME>, someone is using us as pawns in a game here - the game being a drow intrigue of course.~
IF~~THEN REPLY~ Just because we are send to fight some underdark gnomes?~ GOTO SanWarnIntr2
IF~~THEN REPLY~ Us and Solaufein as well, I guess, but who and why? ~GOTO SanWarnIntr2
IF~~THEN REPLY~ This Phaere surely has some plans with us. Wait and see.~ GOTO SanWarnIntr2
END

IF~~ THEN BEGIN SanWarnIntr2
SAY~ These errands she sends us to do - and always with Solaufein - she just tests our abilities.~
IF~~THEN REPLY~ For the bigger purpose she has in mind, I guess.~ DO~SetGlobal("SanSola","GLOBAL",2)~GOTO SanWarnIntr3
END

IF~~ THEN BEGIN SanWarnIntr3
SAY~  Surely. She does not even care to hide her ambitions to succeed her dead mother at the head of her house and of Ust Natha.~
IF~~THEN REPLY~ I thought her mother is still alive?~ GOTO SanWarnIntr4
IF~~THEN REPLY~ Her mother is still in the way of her ambitions then.~GOTO SanWarnIntr4
END

IF~~ THEN BEGIN SanWarnIntr4
SAY~ You say it, *still*. Not a great issue in a drow society, especially not for one like Phaere. But she surely cannot acquaint a large fellowship inside the town without the Matron noticing it. So a group of outsiders comes in handy, I guess, provided they prove themselves capable.~
IF~~THEN REPLY~ We can do little against this being used, can we?~ GOTO SanWarnIntr6
IF~~THEN REPLY~ I do not want us to get involved in such an internal affair. What can we do, counselor? Maybe warn the Matron and get her trust this way?~GOTO SanWarnIntr5
END

IF~~ THEN BEGIN SanWarnIntr5
SAY~Not a very good idea, <CHARNAME>. Why should she listen to suspicious outsiders trying to compromite her favourite daughter?~
IF~~THEN GOTO SanWarnIntr6
END

IF~~ THEN BEGIN SanWarnIntr6
SAY~ Knowing the situation we can take our advantage from it. They prepare for war with the surface elves and at the same time they steer towards an internal power struggle. It is a dangerous game but if we play it carefully it may work for our goals. A city in turmoil may serve our purpose well.~
=~ By the way, we should pay attention to Solaufein. He serves Phaere only as long as he must but my assesment is that he will take his chance out of her claws as soon as he sees his chance.~
IF~Global("SanRomPath","GLOBAL",1)~THEN REPLY~You like that dark fighter - and lover - don't you?~GOTO SanWarnIntr8
IF~Global("SanRomPath","GLOBAL",2)~THEN REPLY~ You like that dark fighter - and lover - don't you?~ GOTO SanWarnIntr7
END

IF~~ THEN BEGIN SanWarnIntr7
SAY~ (Laughs) If my dark mistress allows me. But maybe you like him as well. As we are not drow females, we might let the male make his own choice I suppose.~
IF~~THEN REPLY~ He is trained to accept our commands so he will serve the one he's assigned to...But, no, I do not want a pet but a man who really wants me.~EXIT
IF~~THEN REPLY~ I have no interst in him at all.~EXIT
IF~~THEN REPLY~ Interesting - even at the risk that he may not choose any of us.~EXIT
END

IF~~ THEN BEGIN SanWarnIntr8
SAY~ He is an interesting man, yes. But I am not drow, just in case you forgot, so I do not command males to my service. It will be his choice - and yours.~
IF~~THEN REPLY~ Oh, thank you, *Mistress*.~EXIT
IF~~THEN REPLY~ I will *convince* him to make the right *choice* should he cast his dark eyes on you.~EXIT
END

IF~Global("SanSola","GLOBAL",3) ~THEN BEGIN SanWarnIntr11
SAY~ The time for the small errands is over. This time that witch really wants to know it.~
IF~~THEN REPLY~ I had not anticipated that turn of events. What does my counselor propose?~ GOTO SanWarnIntr13
IF~~THEN REPLY~ This is then the end of that arrogant fool. I am not unhappy about that, I confess.~GOTO SanWarnIntr13
IF~Global("SanRomPath","GLOBAL",1)~THEN REPLY~ The drow method to get rid of a rival. And we even advance further in the appreciation of the Matron and her daughter.~ GOTO SanWarnIntr14
IF~ Global("SanRomPath","GLOBAL",2)~THEN REPLY~ The question of whom of us he would chose is answered in an unexpected way - none.~ GOTO SanWarnIntr19
IF~~THEN REPLY~ Last time it was a helmet, this time it's a coat - provided we can convince Solaufein to hand it to us without a fight.~ GOTO SanWarnIntr12
END

IF~~ THEN BEGIN SanWarnIntr12
SAY~ Good to hear that, <CHARNAME>, and a good moment to tell you how much I love you.~
IF~~THEN DO~ SetGlobal("SanSola","GLOBAL",4) IncrementGlobal("Sanpoints","GLOBAL",6)~EXIT
END 

IF~~ THEN BEGIN SanWarnIntr13
SAY~ Solaufein is a threat even to one who thinks of herself as the next Matron Mother. She does not dare to act against him herself. And we have no reason to kill him or to help her. All she requires of us is a coat and our secret will be save.~
IF~~THEN REPLY~ I hope we can convince Solaufein to hand it to us without a fight.~ GOTO SanWarnIntr12
IF~~THEN REPLY~ Will it really be so easy. What if Solaufein is found alive afterwards?~GOTO
SanWarnIntr15
END

IF~~ THEN BEGIN SanWarnIntr14
SAY~ <CHARNAME>, stop your childish jealousy immediately. Listen, Solaufein is a threat even to one who thinks of herself as the next Matron Mother. She does not dare to act against him herself. And we have no reason to kill him or to help her. All she requires of us is a coat and...~
IF~~THEN REPLY~ ...and?~ GOTO SanWarnIntr17
END

IF~~ THEN BEGIN SanWarnIntr15
SAY~ A man like him who has acted such openly again a female like Phaere down here must have seen this coming sooner or later. I should be very wrong if he had not planned an escape.~
IF~~THEN REPLY~ Mmh. I have listened to what you had to say, Sandrah. Now listen to me - it will not work. It's either him or us.~ GOTO SanWarnIntr16
IF~~THEN REPLY~ I hope we can convince Solaufein to hand what is needed to us without a fight.~ GOTO SanWarnIntr12
END

IF~~ THEN BEGIN SanWarnIntr16
SAY~ The drow have a good reason to have the strongest female rule their fate, <CHARNAME>. Think well about the next step you will take before you regret it infinitely.~
=~ (The stony black face Sandrah displays tells you more than a thousand words.)~
IF~~THEN REPLY~ Sandrah...(In vain - she has turned away and no longer listens to you.)~DO~ SetGlobal("SanSola","GLOBAL",4) IncrementGlobal("Sanpoints","GLOBAL",-10)~EXIT
END

IF~~ THEN BEGIN SanWarnIntr17
SAY~ Now you are really ignorant, little boy. Of course she wants you.~
IF~~THEN REPLY~ Hm, I'm a grown up man enough to see what this drow beauty has...~GOTO SanWarnIntr18
END

IF~~ THEN BEGIN SanWarnIntr18
SAY~ ...anything I do not have?~
IF~~THEN REPLY~ Hey, who's a jealous little girl now? (You kiss her to settle the case.)~ DO~ SetGlobal("SanSola","GLOBAL",4) IncrementGlobal("Sanpoints","GLOBAL",4)~EXIT
IF~~THEN REPLY~ And what about your own intentions with Solaufein, he?~ GOTO SanWarnIntr16
IF~~THEN REPLY~ The joke's on you, who's a jealous little girl now, hahaha?~DO~ SetGlobal("SanSola","GLOBAL",4) IncrementGlobal("Sanpoints","GLOBAL",4)~EXIT
END

IF~~ THEN BEGIN SanWarnIntr19
SAY~ Since when have you become such a doomsayer, my darling?~
IF~~THEN GOTO SanWarnIntr13
END

IF~Global("SanSola","GLOBAL",5)~ THEN BEGIN SanWarnIntr21
SAY~ Finally Phaere will reveal to us why she really wants us and what her plot is. If all my analysis of the facts is correct, this will be our big chance to end this adventure gloriously.~
IF~~THEN REPLY~ She still wants more than Solaufein's death?~ GOTO SanWarnIntr22
IF~~THEN REPLY~ Let me know what my couselor thinks about it and compare it to my own guesses.~ GOTO SanWarnIntr22
IF~~THEN REPLY~It's all obvious for me as well, we need not to waste more time with talking. ~ DO~ SetGlobal("SanSola","GLOBAL",6) IncrementGlobal("Sanpoints","GLOBAL",-4)~EXIT
END

IF~~THEN BEGIN SanWarnIntr22
SAY~ The eggs of the silver dragon are part of a ritual to get House Despana the absolute power over Ust Natha. Hence the closing of the city gates by now. We must prevent the success of that ritual under all circumstances as the eggs are our key out of here and to follow the path Irenicus and Bodhi have taken.~
=~ And Phaere and her ambitions work for us. ~
IF~~THEN REPLY~ That's how I see it as well, Sandrah, the two most powerful females of the city both want that power and both want to rule the leading house? Do you think Phaere will ask me to kill her mother for her?~ DO~ SetGlobal("SanSola","GLOBAL",6) IncrementGlobal("Sanpoints","GLOBAL",2)~ GOTO SanWarnIntr23
END

IF~~THEN BEGIN SanWarnIntr23
SAY~ Not in such a direct way as by means of murder. As her mother guards the eggs that are the key issue here, I would rather assume she needs us to change the foreseen course of the ritual in a way that destroys the Matron and puts herself in the place.~
IF~~THEN REPLY~ But how?~ GOTO SanWarnIntr24
END

IF~~THEN BEGIN SanWarnIntr24
SAY~ It is useless to make guesses as we will surely hear from her own lips in a few moments. I just wanted to recommend to you to agree to whatever she askes of you. Open objection will not help us - we should rather fuel the power struggle between mother and daughter. We cannot defend them both and the city that is behind them, but we can probably deal with the remainder once they have clashed. Even the winner afterwards will have been weakened enough so we can deal with her.~
IF~~THEN REPLY~ Fine...did I already tell you how beautiful you are, drow lady? But I think it's necessary you change back soon as your mind starts to work like theirs, my counselor. (Smile)~EXIT
END

// PID Package 15 - Leaving Underdark

IF ~ IsGabber(Player1) Global("SanPidPack","GLOBAL",15) ~ THEN BEGIN SanPCInit15
SAY ~ (She is the steady beacon in this journey through light and darkness. Your step lightens as you approach her.) <CHARNAME>?~
IF ~RandomNum(4,1) !AreaType(DUNGEON)~THEN REPLY~I need a sign of your love right here and now, Sandrah.~ GOTO SanBedPid11
IF ~RandomNum(4,2)!AreaType(DUNGEON)~THEN REPLY~ I need a sign of your love right here and now, Sandrah.~ GOTO SanBedPid12
IF ~RandomNum(4,3)!AreaType(DUNGEON)~THEN REPLY~ I need a sign of your love right here and now, Sandrah.~ GOTO SanBedPid13
IF ~RandomNum(4,4)!AreaType(DUNGEON)~THEN REPLY~I need a sign of your love right here and now, Sandrah.~ GOTO SanBedPid14
IF ~RandomNum(2,1)!AreaType(DUNGEON)~THEN REPLY~ Are you hungry, my darling?~ GOTO SanPdHung1
IF ~RandomNum(2,2)!AreaType(DUNGEON)~THEN REPLY~ Are you hungry, my darling?~ GOTO SanPdHung2
IF~ RandomNum(2,1) AreaType(DUNGEON)~THEN REPLY~I so wish to see some light again soon.~ GOTO SanPdLiDung1
IF~ RandomNum(2,2) AreaType(DUNGEON)~THEN REPLY~I so wish to see some light again soon.~ GOTO SanPdLiDung2
IF ~Global("SanMysRise","GLOBAL",2)~ THEN REPLY ~ Sandrah, are you familiar with the studies of Narvantial of Soubar?~ GOTO SanMysSucc11
IF~ GlobalGT("C#AjantisRitterSuche","GLOBAL",0) Global("SanGoldBall","LOCALS",0) PartyHasItem("C#Ajgk")~ THEN REPLY~ How can we go about this mystery of the missing knights, my counselor?~ GOTO SanGlobAjanMiss1
IF ~ GlobalGT("SanFlirt","GLOBAL",19) Global("SanMysRise","GLOBAL",3)~THEN REPLY ~ We were talking about children the other day, Sandrah, and about my heritage in this context.~ GOTO SanBLine11
IF~GlobalGT("SanHintFactory","GLOBAL",9) !See("CVShauq") Global("SanSharkTru","LOCALS",0)~THEN REPLY~You have not told our orc princess the whole truth about Sharkta Fai, right?~ GOTO SharkTru1
IF~Global("CVGodag","GLOBAL",9) Global("CVGodagJon","GLOBAL",1)~THEN REPLY~I still try to understand your talk with Irenicus concerning Gorion's dagger. ~DO~SetGlobal("CVGodag","GLOBAL",10)~GOTO GodagBG22
IF~Global("PoolHealT","CVSHA7",4)~THEN REPLY~ (You take a deep breath) Let us enter that pool now, Sandrah.~DO~SetGlobal("PoolHealT","CVSHA7",5)~GOTO PoolTalk17
IF~ Global("ys_FindElminster","GLOBAL",1) Global("SanAskLief","LOCALS",0) ~ THEN REPLY ~ Sandrah, have you ever heard or met this mage Lief. Is he to be trusted or may this be another trap misusing your father's name?~ GOTO SanAskLief1
IF~ Global("KangaxxQuest","GLOBAL",1) Global("SanKangAdv","LOCALS",0)~ THEN REPLY ~ This talking skull, Kangaxx, he's a lich, right, Sandrah?~ GOTO SanKanAdv1
IF ~ Global("SanPelltru","LOCALS",1)~ THEN REPLY~We talked about Pelligram recently and I remember we made the assumption that your Goddess mystra arranged for the two of you to meet.~ GOTO SanPelltru4
IF~GlobalGT("GettingApprentices","GLOBAL",0) Global("SanPCHassphere","GLOBAL",0) ~ THEN REPLY~ Sandrah, as a priestess of Mystra you are probably the best suitable counselor in matters of this planar sphere.~ GOTO SanSphereAdv1
IF~Global("SanVampWDQuest","GLOBAL",16)~ THEN REPLY~ Let us now enter that portal.~ GOTO DoWDVampQ6
IF~Global("SANSHARINT","GLOBAL",26)GlobalGT("Chapter","GLOBAL",15) Global("SanBabewait","LOCALS",0)!AreaType(CITY)~ THEN REPLY~ How may our wildcat Shar-Teel be faring these days?~ GOTO SanBabewait1
IF~ Global("PurskInf","LOCALS",0) OR(2) PartyHasItem("DDPkMap") AreaCheck("dd1900") ~ THEN REPLY~ Say, my counselor, can you tell me something about Purskal?~GOTO SanPurskTalk1
IF~ Global("SanDesTroll","LOCALS",2) NumItemsPartyLT("arow04",5) AreaType(FOREST)  ~ THEN REPLY~ Sandrah, we are quickly running out of acid arrows. Can you provide us with some once again?~ GOTO SanAcArF2
IF~ Global("SanDesTroll","LOCALS",2) NumItemsPartyLT("arow04",5) !AreaType(FOREST)  ~ THEN REPLY~ Sandrah, we are quickly running out of acid arrows. Can you provide us with some once again?~ GOTO SanAcArNF2
IF ~Global("EshpkInf","LOCALS",0) PartyHasItem("DDMap01")~ THEN REPLY~ My counselor, do you know any lore about Eshpurta?~GOTO  SanEshpTalk1
IF~ Global("SanNewArm","GLOBAL",5)~ THEN REPLY~ Sandrah, I have dreamt of you and Mystra last night...~ GOTO SanmysarmDream1
IF~Global("CbPartyIsInSoubarMilitia","GLOBAL",7) Global("SanCbCasAdv","LOCALS",0)~ THEN REPLY~ Sandrah, you have heard our options how to get access to Lyrars. I'd like to hear my counselor's advice on it.~ GOTO SanLyarTyp1
IF~ Global("SankangFull","LOCALS",2) GlobalLT("UsedCrypt0331","GLOBAL",2)~ THEN REPLY~ Let us talk about what to do with the Lich parts we have found, Sandrah.~ GOTO SanTombkanEnt32
IF~ Global("SanMekCurse","GLOBAL",1)~ THEN REPLY~ This mage Mekrath...has he really transported to the Nine Hells with his last spell as you have cursed him?~ GOTO MekCurse2
IF~Global("SanProph","GLOBAL",3)~ THEN REPLY~ Will you share with me what this fish priestess had to tell you?~ GOTO FishPrie1
IF~Global("SanProph","GLOBAL",7) GlobalGT("udMind","GLOBAL",39)~ THEN REPLY~ Will you share with me what this Githyanki had to tell you?~ GOTO FishPrie11
IF~ Global("SanNecroHa","LOCALS",2)~ THEN REPLY~ A while ago you declared your concerns about Necromancy. I understood that Mystra and thus her priestess oppose to those practices.~ EXTERN BSANDR SanNecrohate4
IF~ Global("SanKhalBlood","GLOBAL",1)~ THEN REPLY ~If what we think about our aiding Mystra and AO to defend the Weave is correct, then...~ EXTERN CVSANDRJ SanAneWeavTh7
IF~Global("SanSaerFight","GLOBAL",8)InParty("Saerileth")~ THEN REPLY~ (You clear your throat several times before your voice seems to return.) Sandrah, about Saerileth's attack...~GOTO SansaeFiTlk1
IF~GlobalGT("SanAdrianL","Global",5) Global("SanAskAdrian","LOCALS",0)InParty("RH#Adrian")~ THEN REPLY ~Adrian?~DO~SetGlobal("SanAskAdrian","LOCALS",1)~GOTO SanAdri1
IF~GlobalGT("SanAranH","GLOBAL",9) Global("SanAskAran","LOCALS",0)InParty("C-Aran")~ THEN REPLY ~Aran?~DO~SetGlobal("SanAskAran","LOCALS",1)~GOTO SanAranL1
IF~Global("SanKhalBlood","GLOBAL",3)~ THEN REPLY ~ What did your grandmother, I mean, your goddess refer to when she said your role is the *seeker*.~ GOTO SanMysSeekr1
IF~ Global("SanSharInt","GLOBAL",37) AreaType(OUTDOOR) Global("SanBabeToo","LOCALS",0)~ THEN REPLY ~ Sandrah, I wonder, when all of this adventuring will be finished one day, have you ever imagined yourself as a mother of your own children?~ GOTO SanBabeHave1
IF~ Global("SanKhalBlood","GLOBAL",5) !AreaCheck("CVElm1") !AreaCheck("CVElm2")!AreaCheck("CVElm3")!AreaCheck("CVElm4")~THEN REPLY ~Did the information we received on the self-writing book help you some?~ GOTO FindSRBook1
IF~Global("SanKhalBlood","GLOBAL",13) ~ THEN REPLY~ Shall we continue our analysis of our discoveries at the Archive?~ GOTO SanHeriMyst7
IF~Global("SanKhalBlood","GLOBAL",12) RealGlobalTimerExpired("SanDreamTalkTime","GLOBAL")~ THEN REPLY~ It must be a heavy burden that you feel with our discovery in the Archive. Do you know what it really means for us?~ GOTO SanHeriMyst1
IF~Global("SanKhalBlood","GLOBAL",14) ~ THEN REPLY~ Why had Bhaal chosen Khalindra for one of his spawns if not for the reasons we had anticipated until recently?~ GOTO SanHeriMyst13
IF~ OR(2) Global("SanIntEllesInt1","GLOBAL",1) Global("SanIntEllesInt1","GLOBAL",1) ~ THEN REPLY ~ Who is Quilue Veladorn, Sandrah?~ GOTO SanQuilBef1
IF~GlobalGT("SanKhalBlood","GLOBAL",9) Global("SanIntEllesInt1","GLOBAL",0)~ THEN REPLY ~ Who is Quilue Veladorn, Sandrah?~ GOTO SanQuilBef11
IF~GlobalGT("SheinaTalk","GLOBAL",0)OR(3) AreaCheck("ARPO05")AreaCheck("ARPO06")AreaCheck("ARPO07")~ THEN REPLY ~ My healer, what can you do to help these people?~ GOTO SanHealTDD1
IF~Global("SanXephRet","GLOBAL",7)PartyHasItem("SANAKAK")~ THEN REPLY ~ Well, looks like we are ready to go to Legencase now.~DO~ SetGlobal("SanXephRet","GLOBAL",8)~EXIT
IF~Global("SaerilethBetrothed","GLOBAL",1)Global("SanSaerMarry","LOCALS",0)~THEN REPLY~ Sandrah, I must talk to you about Saerileth, please.~ GOTO Marrysaer1
IF~InParty("ADAngel") !AreaCheck("ar0800") Global("CVAngelRev","LOCALS",0)~THEN REPLY~What had that Angelo to tell you so urgently?~GOTO SanAdSarD
IF~~THEN REPLY~Your hammer seems to be stuck.~GOTO SanHamCl2
END

IF~~THEN BEGIN SanAdri1
SAY~An interesting man...~
=~Yes, he comes into my bedroll now and then.~
IF~~THEN REPLY~That is all?~DO~IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SanAdri2
END

IF~~THEN BEGIN SanAdri2
SAY~That is all - we have some mutual fun together but none of us would call this a romance.~
IF~~THEN REPLY~Little bitch.~EXIT
IF~~THEN REPLY~I need not to know more.~EXIT
IF~~THEN REPLY~You won't get me jealous with such minor affairs.~EXIT
END

IF~~THEN BEGIN SanAranL1
SAY~An interesting man...~
=~Yes, he comes into my bedroll now and then.~
IF~~THEN REPLY~That is all?~DO~IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SanAdri2
END

IF~~THEN BEGIN SanHealTDD1
SAY~ As a healer Sheina provides all that can be done for the suffering villagers. I would be more helpful to assist you in finding the source of that desease and try to get into that cursed castle with you.~
IF~~THEN REPLY~ I am glad you say that, Sandrah.~EXIT
END

IF~~THEN BEGIN FindSRBook1
SAY~ As I said earlier, I do not see it as an urgent task for us, rather something we may investigate when *your* quest allows it.~
IF~~THEN REPLY~ How about doing it in our trusted way - that is put all the facts we have in front of us and see if our combined genius can reveal us something?~DO~ SetGlobal("SanKhalBlood","GLOBAL",6)~ GOTO FindSRBook2
IF~~THEN REPLY~ I will come back to the issue another time then.~EXIT
END

IF~~ THEN BEGIN FindSRBook2
SAY~ If it is really a *book* in our standard terms it will be as old as any of the Gods .~
IF~~ THEN REPLY~ It was mentioned that it is in a sacred place, so I guess it would be in a temple.~ GOTO FindSRBook3
END

IF~~THEN BEGIN FindSRBook3
SAY~ A temple of one of the gods that were from the beginning.~
IF~~ THEN REPLY~ Probably not Mystra as we would know about that by now.~ GOTO FindSRBook4
IF~Global("GodGuess3","LOCALS",0)~ THEN REPLY~ Tyr is as old as one can imagine.~GOTO FindSRBook5
IF~Global("GodGuess1","LOCALS",0)~ THEN REPLY~ How about Selune, she is one of the oldest deities?~ GOTO FindSRBook6
IF~~ THEN REPLY~ Someone like Amaunator, ancient but forgotten today.~GOTO FindSRBook10
IF~Global("GodGuess2","LOCALS",0)~ THEN REPLY~ How about Tymora who was from the beginning?~ GOTO FindSRBook7
IF~Global("GodGuessE","LOCALS",0)~THEN REPLY~ We probably can excempt the evil Gods like Bane or Talos.~ GOTO FindSRBook8
END

IF~~THEN BEGIN FindSRBook4
SAY~ I agree with you. Let us see who the other candidates are.~
IF~~THEN GOTO FindSRBook3
END

IF~~THEN BEGIN FindSRBook5
SAY~ Should we seek a book on all crimes ever done and the justice applied I would agree - but bloodlines? Let us see if their is a more likely candidate.~
IF~~THEN DO~ SetGlobal("GodGuess3","LOCALS",1)~ GOTO FindSRBook3
END

IF~~THEN BEGIN FindSRBook6
SAY~ I cannot see such a task within her nightly domain, even if she is also associated with prophesy. Let us see if their is a more likely candidate.~
IF~~THEN DO~ SetGlobal("GodGuess1","LOCALS",1)~ GOTO FindSRBook3
END

IF~~THEN BEGIN FindSRBook7
SAY~ (Smiles) We surely need some good fortune to find that book, but I think she is not the one. Let us see if their is a more likely candidate.~
IF~~THEN DO~ SetGlobal("GodGuess2","LOCALS",1)~ GOTO FindSRBook3
END

IF~~THEN BEGIN FindSRBook8
SAY~ They would rather destroy such knowledge than to preserve it. Let us look at the  more likely candidates.~
IF~~THEN DO~ SetGlobal("GodGuessE","LOCALS",1)~ GOTO FindSRBook3
END

IF~~THEN BEGIN FindSRBook10
SAY~ I declare you Genius!! Once again you have proven it  - or once again you blindly hit the right spot.~
IF~~THEN REPLY~ Thank you, but why do you think it's him?~ GOTO FindSRBook11
END

IF~~THEN BEGIN FindSRBook11
SAY~ The mighty ancient sun god, you know his domain was such that several gods were needed to succeed him.~
IF~~THEN REPLY~ Helm and Lathander...~GOTO FindSRBook12
END

IF~~THEN BEGIN FindSRBook12
SAY~ *...not Oghma but one who was before...*. Amaunator was the bringer of light to Faerun, but also in the sense that he brought light for the mortal strive for truth and wisdom and such preceeded Oghma and Deneir.~
IF~~THEN REPLY~ We know where we need to search, I guess.~ GOTO FindSRBook13
IF~~THEN REPLY~ We found his old temples already but no sign of such a book in any.~ GOTO FindSRBook13
END

IF~~THEN BEGIN FindSRBook13
SAY~ I need to study my lore again - now that I have a trace of what to look for.~
IF~~THEN DO~ RealSetGlobalTimer("GodGuessT","LOCALS",1800)~EXIT
END

IF~~ THEN BEGIN SanMysSeekr1
SAY~ My role is to find the one who will succeed her in the line of incarnations of Mystra one day.~
IF~~THEN REPLY~ It sounds like her own reign will not be that long anymore...I mean for a goddess...if a successor has to be found during your own human lifespan.~ GOTO SanMysSeekr2
IF~~THEN REPLY~ Have you any idea - despite that strange self-writing book - of how to go about that task?~ GOTO SanMysSeekr2
END

IF~~ THEN BEGIN SanMysSeekr2
SAY~ Mystra has maintained a lot of her human aspects from the time she was Midnight. My feelings tell me that she has always seen her role as Guardian of the Weave as an interim - both for the celestial as for herself. She agreed to AO when need was after the incident that killed Mystra in the Times of Trouble to serve to maintain the balance - until her real successor was found - or will be ready to accept her task. ~
IF~~THEN REPLY~You mean...there is a kind of deal between your grandmother and AO for her to guard the Weave until the real new Mystra would be ready for her task. One that was born at the Time of Troubles but could not yet become the goddess when the unforeseen death of the old Mystra occured?~
DO~SetGlobal("SanKhalBlood","GLOBAL",4)~ GOTO SanMysSeekr3
END

IF~~ THEN BEGIN SanMysSeekr3
SAY~(Smiles) I thank you for bringing some clarity into my own confused thoughts. Your theory at least aligns with all the facts we have found so far. There was a moment when I was misled to think that what happened to me where tests of my own abilities. Now I see clearer. Somehow my grandmother's agreement with AO seems to forbid that she adresses that woman to become Mystra herself.~
IF~~THEN REPLY~So her trusted priestess and granddaughter needs to do that for her. What will you do?~ GOTO SanMysSeekr4
IF~~THEN REPLY~So her trusted priestess and granddaughter needs to do that for her. Will you leave me then to follow your own quest or do you invite me come with you?~ GOTO SanMysSeekr4
IF~~THEN REPLY~So her trusted priestess and granddaughter needs to do that for her. But how, as you have sworn to follow me and my quest already?~ GOTO SanMysSeekr4
END

IF~~ THEN BEGIN SanMysSeekr4
SAY~ (She embraces you tenderly and gives you a warm kiss before she continues.) One thing this seeker has found already is - YOU. Not only the love I have found in you, my darling, but also the fact that your fate and mine have always been one since the day we have met.~
=~The answer I must find, the woman I must find, it is the quest of a lifetime and I must not rush.~
IF~~THEN REPLY~You hope to find some clue during our time together? ~ GOTO SanMysSeekr5
IF~~THEN REPLY~What we surely can do is to investigate about that strange self-writing book at several locations we will hit anyway.~ GOTO SanMysSeekr5
END

IF~~ THEN BEGIN SanMysSeekr5
SAY~ The only trail I know of at the moment is the bloodline of Mystra that is recorded in that *Book which Writes Itself.* If we come by an Temple of Oghma or maybe Mystra's Temple at Waterdeep we could investigate there about that book. Another possibility would be the Bloomwhiffler Bookshop or even my father.~
IF~~THEN REPLY~Well, fine, we will just do that.~EXIT
IF~~THEN REPLY~I am so very happy that your task and mine will not separate us...I could never had let you go.~DO~IncrementGlobal("Sanpoints","GLOBAL",2)~EXIT
END

IF~~THEN BEGIN GodagBG22
SAY~Irenicus chose that dagger among all your possessions to keep it for himself. It appeared to me that it must have some significance for his studies.~
IF~~THEN REPLY~You saw it as a key to my mother's identity.~GOTO GodagBG23
END

IF~~THEN BEGIN GodagBG23
SAY~HE saw it as a key to your mother's identity. Why he should have an interest in her I do not know - but it appears he knew not more about her than we know.~
IF~~THEN REPLY~But all WE know is that the dagger belonged to a female Bhaalist and that Gorion might have known that woman.~GOTO GodagBG24
IF~~THEN REPLY~As I'm a child of Bhaal it is obvious that I'm of interest to those remaining Bhaalists. This *A* may have been one sent after me.~GOTO GodagBG24
IF~~THEN REPLY~*A* is not *K* - like in Khalindra. You always had your doubts that our mother is really the same, right?~GOTO GodagBG24
END

IF~~THEN BEGIN GodagBG24
SAY~Gorion laid out hints to your past for you in digestable bits. He may not have told you the whole truth about that woman in his letter back at Candlekeep, have you considered that?~
IF~~THEN REPLY~Do you accuse Gorion of a lie now?~ GOTO GodagBG25
IF~~THEN REPLY~If his letter were a lie he must have had his reason for it.~ GOTO GodagBG25
END

IF~~THEN BEGIN GodagBG25
SAY~I am not calling your stepfather a liar. However it may be possible that he tried to make the revelation about your *father* more bearable by giving you an acceptable mother in return. His intention may have been to give you enough strength to continue your quest.~
IF~~THEN REPLY~Which means we know as much about my mother once again than we did before - nothing. Until we find Gorion's dagger once again.~DO~AddexperienceParty(4700)~EXIT
END

IF~Global("CVGodag","GLOBAL",12)~THEN BEGIN GodagBG31
SAY~Sarevok and Gorion's dagger - an unexpected relation.~
IF~~THEN REPLY~After all I'm glad to have it back.~ GOTO GodagBG32
IF~~THEN REPLY~We have a common heritage, remember that.~ GOTO GodagBG32
IF~~THEN REPLY~If there is any hidden meaning to that, I miss it.~ GOTO GodagBG32
END

IF~~THEN BEGIN GodagBG32
SAY~He said something interesting even if it was not related to the dagger.~
=~If his words were true, it means that the essence of a dead Bhaalspawn in some way returns to the Realm of your *father*.~
IF~~THEN REPLY~Following the trace of the dagger provides us with information - maybe that was Gorion's intention with it.~DO~AddexperienceParty(4700) SetGlobal("CVGodag","GLOBAL",13)~EXIT
IF~~THEN REPLY~Gorion, Sarevok, the dagger, and *A* - somehow there is a connection between all of them and me. ~DO~AddexperienceParty(5700) SetGlobal("CVGodag","GLOBAL",13)~EXIT
END

IF~~ THEN BEGIN SanAneWeavTh7
SAY~ You seem concerned, <CHARNAME>, but, yes, this is not a trivial task we have in our responsibility.~
IF~~THEN REPLY~ I was pondering something else, Sandrah, with all those hints and bloodline relations...I mean what if we fail? What if Mystra is defeated like in our vision?~ GOTO SanAneWeavTh9
IF~~THEN REPLY~ If even the gods set their trust in us, we should not fail. Let us move on.~ GOTO SanAneWeavTh8
END

IF~~ THEN BEGIN SanAneWeavTh8
SAY~ You had something else on your mind. Let me hear it, please.~
IF~~THEN REPLY~ It is about your role...should we fail.~ GOTO SanAneWeavTh9
IF~~THEN REPLY~ It was too absurd what came to my mind. Please forget it, I would just make a fool of myself otherwise. (You kiss her quickly, knowing she just *pretends* to believe you.)~ EXIT
END

IF~~ THEN BEGIN SanAneWeavTh9
SAY~ The Weave would be without a guardian then. I doubt that it can be controlled by any sorcerer regardless how powerful. But worse things would happen, <CHARNAME>. Without Mystra in control the other gods would attempt to each claim their stake on the power source - especially the *evil* gods. A new power struggle would commence.~
IF~~THEN REPLY~ The return of the *Times of Trouble*.~ GOTO SanAneWeavTh10
IF~~THEN REPLY~ AO could only prevent that by appointing a successor for Mystra.~GOTO SanAneWeavTh10
END

IF~~ THEN BEGIN SanAneWeavTh10
SAY~ Again our knowledge of history is comforting here, as that has happened in the past as well. There would be a solution this time again. Of course, like in the past, it would not be an easy one.~
IF~~THEN REPLY~ Especially not for one who comes from the bloodline from which the incarnations of Mystra have been chosen in the past. One who receives constant indications that she follows her grandmother's path...~ DO~SetGlobal("SanKhalBlood","GLOBAL",2)~ GOTO SanAneWeavTh11
END

IF~~ THEN BEGIN SanAneWeavTh11
SAY~ I have to stop you here, <CHARNAME>. Whatever you may assume, do not forget that my relation to Mystra is through Elminster and the line of Mystra is from MOTHER to daughter...But I cannot completely ignore all the evidence that points to my involvement. ~
=~ Maybe it is my role to find the one who will follow my grandmother as Mystra. To find her and to help her succeed to her role.~
IF~~THEN REPLY~ Hm, if it cannot be you...the candidates should be in this *Book that Writes Itself* .~ EXIT
IF~~THEN REPLY~ I have the strong feeling that we miss one crucial link in our reasoning here. We are too blind to see something that maybe is too obvious.~ EXIT
IF~~THEN REPLY~ What if Elminster was your mo...oh, no, maybe Khalindra was...ah, it's all confusion, I am just babbling, forget it..~ EXIT
END

IF~~THEN BEGIN SansaeFiTlk1
SAY~ (At first it seems she will start to laugh - but her expression changes quickly to a grave one.) Yes?~
IF~~THEN REPLY~ You were not really in danger - I mean with your skills...she had no real chance to harm you?~ GOTO SansaeFiTlk2
IF~~THEN REPLY~ You stopped it right in time before any of you could really be harmed. I admire your self-control.~ GOTO SansaeFiTlk2
IF~~THEN REPLY~ When you fought back - did you even think for an instance of killing her?~ GOTO SansaeFiTlk2
END

IF~~ THEN BEGIN SansaeFiTlk2
SAY~ (She remains silent for a painful while.)~
=~ Well - I do not feel very comfortable with your question as any answer I may give you can be interpreted as coming from a jealous girl trying to disparage her rival...~
IF~~THEN REPLY~ Be assured that will not be the case. I really care for your feelings in this matter...you were the attacked here, even if the attempt was nothing but a farce.~ DO~ SetGlobal("SanSaerFight","GLOBAL",9)~ GOTO SansaeFiTlk3
END

IF~~ THEN BEGIN SansaeFiTlk3
SAY~ Your self-righteous baby paladin really intended to kill me. Forget about my feelings, <CHARNAME>, so many want our lives these days. Rather ask yourself what it tells you about her.~
IF~~THEN REPLY~ I know what you mean...but I forgive her, she is still so young and she never had a chance to learn about life other than from her paladin teachers. In our company she will learn that there is so much more than just black and white.~ GOTO SansaeFiTlk4
IF~~THEN REPLY~ I have asked myself the same questions already. She must learn to accept that her strict views from here paradise homeplane cannot be applied to the life on Toril.~GOTO SansaeFiTlk4
END

IF~~ THEN BEGIN SansaeFiTlk4
SAY~You know that I love you, more than anything else and I stand by your side through thick and thin. But, please, I cannot be your counselor in your relation to other women. You must decide and follow your heart alone.~
IF~~THEN REPLY~You are right - I should never have brough the topic up. (You kiss her passionately.)~EXIT
IF~~THEN REPLY~ I love you, too. (You kiss her tenderly.)~EXIT
IF~~THEN REPLY~ If any proof were required for your love you have just given it to me again, light of my life. (You embrace her and hide your face in her locks that smell of spring flowers today. She tenderly motions your head up so she can kiss you.)~EXIT
END

IF~~THEN BEGIN Marrysaer1
SAY~ She seems to explode almost of pride and happiness. You must have fulfilled her deepest wish.~
IF~~THEN REPLY~ Eh, actually...not yet.~ DO~SetGlobal("SanSaerMarry","LOCALS",1) ~ GOTO Marrysaer2
END

IF~~THEN BEGIN Marrysaer2
SAY~ (Sandrah bursts into unstoppable laughter until tears come to her eyes.) Oh, my...she has you on the hook, hehehehe,...Men!...(She shakes her head and burst into laughter again).~
IF~~THEN REPLY~ This should have been a serious talk about our future, my dear. Can you stop making a joke out of it!~ GOTO Marrysaer3
IF~~THEN REPLY~I have expected all kinds of reactions from you but not this!~ GOTO Marrysaer3
END

IF~~THEN BEGIN Marrysaer3
SAY~ How can I not laugh when the greatest hero of the Realms tumbles into the child paladin's marriage trap like a blind schoolboy? Am I right, my love? She wants to be yours - but only when she holds the deed of ownership in her little hands - sealed by the priest of Tyr that is.~
IF~~THEN REPLY~I understand that you are not utterly happy about that - but do you need to paint her as cunning as that?~ GOTO Marrysaer4
IF~~THEN REPLY~You make it sound like I am a fool for my decision. It is true love that deserves such a price.~ GOTO Marrysaer5
END

IF~~THEN BEGIN Marrysaer4
SAY~ You are right, I should rather admire her for the clearness and directness of her goals and how she achieves them.~
IF~~THEN REPLY~Not every one can be as complicated as you are, my sweet seeker. Your goal was never marriage - maybe you do not even know yet what your own goal is.~ GOTO Marrysaer6
IF~~THEN REPLY~ At least your laughter shows that I have not hurt your feelings with my decision.~ GOTO Marrysaer6
END

IF~~THEN BEGIN Marrysaer5
SAY~You are right. I should not belittle your decision - actually I accept it like it is. If you are willing to pay her price there is nothing for me to critisize. My problem will be to find the right present for your great day - oh, and the right dress... (Another attack of laughter drowns her words.)~ 
IF~~THEN REPLY~Not every one can be as complicated as you are, my sweet seeker. Your goal was never marriage - maybe you do not even know yet what your own goal is.~ GOTO Marrysaer6
IF~~THEN REPLY~ At least your laughter shows that I have not hurt your feelings with my decision.~ GOTO Marrysaer6
END

IF~~THEN BEGIN Marrysaer6
SAY~ Neither you nor me are among those who should marry. Anyway you have made your decision, so be it.~
=~It changes nothing between you and me, <CHARNAME>. I do not know where we will finally end - but I know and I have sworn to it that our way to whatever is a common one. I will be by your side as I have been all the time. And I will love you.~
IF~~THEN REPLY~(You wordlessly kiss her.)~ EXIT
IF~~THEN REPLY~I hope my future wife will understand that. She must. I love you, Sandrah.~EXIT
IF~~THEN REPLY~Nothing will ever change what is between us, Sandrah. (You embrace and kiss her.)~ EXIT
END

IF~Global("SaeWait","Ar0900",2)~THEN BEGIN SanSaeragainTemp
SAY~ Look, there is that paladin girl Saerileth again. She seems to be still looking for help.~
IF~~THEN REPLY~ Where? We might help her this time.~DO~ CreateCreatureObjectOffScreen("Saerilet",Myself,0,0,0) SetGlobal("SaeWait","Ar0900",0) ~EXIT
IF~~THEN REPLY~ Ah, but we have no room for her in the party right now.~ DO~SetGlobal("SaeWait","Ar0900",1) RealSetGlobalTimer("AR0900SaerRetry","GLOBAL",1500)~ EXIT
IF~~THEN REPLY~Oh, no, not again! I need no bigoted paladin at my side.~ DO~SetGlobal("SaeWait","Ar0900",1) RealSetGlobalTimer("AR0900SaerRetry","GLOBAL",1500)~EXIT
END

IF~~THEN BEGIN SanPdLiDung1
SAY~ Lucky me, I just have to turn my head and look at you - and I see light and love in the darkest of places.~
IF~~THEN EXIT
END

IF~~THEN BEGIN SanPdLiDung2
SAY~ The sound of your voice alone has made this dungeon a lighter place for a moment.~
IF~~THEN EXIT
END

IF~~THEN BEGIN SanPdHung1
SAY~ Hungry for a lunch of kisses - your kisses.~
IF~~THEN EXIT
END

IF~~THEN BEGIN SanPdHung2
SAY~ I am never satiated when it comes to love - your love that is.~
IF~~THEN EXIT
END

IF~~THEN BEGIN SanBedPid11
SAY~My whole body craves for you, beloved. Let us get away from other eyes immediately, hmmm.~
IF~~THEN REPLY~(You move her to a nearby place hidden from inquisite eyes...)~ DO~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~ EXIT
END

IF~~THEN BEGIN SanBedPid12
SAY~There is only one solution then.~
IF~~THEN DO~ SetGlobal("SanTwrLo","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("CVTwrLo")~ EXIT
END

IF~~THEN BEGIN SanBedPid13
SAY~(She leans towards you and blows a kiss in your ear) There are so many things I would like to do with you and in so many places. (Laughs) I cannot make up my mind at this moment.~
IF~~THEN REPLY~Then you surely will not object to what I do to you now...~DO~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~ EXIT
END

IF~~THEN BEGIN SanBedPid14
SAY~Expect the unexpected.~
IF~~THEN DO~ SetGlobal("SanTwrLo","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("CVTwrLo")~ EXIT
END

IF~~THEN BEGIN SanQuilBef1
SAY~ Qilue Veladorn, or Eresseae Qilue Silverhand, is the youngest of the Seven Sisters, a daughter of an earlier incarnation of Mystra herself. Some legends have it that her mortal avatar is drow, but probably that is just annecdote because she became the High Priestess of Elistraee, the Dark Maiden.~
IF~~THEN REPLY~ I see. I thought by mistake that she may be more closely related to you.~ DO~ SetGlobal("SanIntEllesInt1","GLOBAL",2)  SetGlobal("SanIntEllesInt2","GLOBAL",2)~GOTO SanQuilBef2
END

IF~~THEN BEGIN SanQuilBef2
SAY~ She is considered as one of the Chosen of Mystra, just like my father is - even if their respective mothers are different ones with only their later rise to godhood in common.~
=~Still, she is as well from Mystra's bloodline and also one of my major influences besides Midnight.~
IF~~THEN REPLY~ I can imagine that. She left the place beside her godly father to become a beacon for the drow who would wish to return one day from the Underdark. A great task to make our plane a better one.~ EXIT
IF~~THEN REPLY~ You chose your heroines quite well and without restrictions to race or tennant. Like them you seem to know what you want Toril to be.~EXIT
END

IF~~THEN BEGIN SanQuilBef11
SAY~ Qilue Veladorn, or Eresseae Qilue Silverhand, is the youngest of the Seven Sisters, a daughter of an earlier incarnation of Mystra herself. Some legends have it that her mortal avatar was drow, but probably that is just annecdote because she became the High Priestess of Elistraee, the Dark Maiden.~
IF~~THEN REPLY~ I see. That means that your mother as well was a descendant of Mystra, not only your father.~ DO~ SetGlobal("SanIntEllesInt1","GLOBAL",2)  SetGlobal("SanIntEllesInt2","GLOBAL",2)~GOTO SanQuilBef2
END

IF~Global("SanTwrLo","GLOBAL",1) ~ THEN BEGIN SanTowrLo1
SAY~ (During the short mystical travel Sandrah has changed into a silvery diaphanous gown that clings to every part of her wonderful body. As the light breeze of the Sword Coast embraces your body you realise that you are completely nude yourself.)~
IF~~THEN REPLY~ (You move up to her and your naked skin is attracted by her gown like by some magnetism. You feel her hands on your shoulder and your behind pulling you even closer to her.)~ GOTO SanTowrLo2
END

IF~~ THEN BEGIN SanTowrLo2
SAY~ (She slowly sinks to her knees pulling you down with her. You find your head directly beween her soft breasts and only need to open your lips to grasps a protruding nipple and feel the arousal in both of your bodies building up higher...)~
IF~~THEN REPLY~ ....~  GOTO SanTowrLo3
END

IF~~ THEN BEGIN SanTowrLo3
SAY~ .....~
IF~~THEN REPLY~ ...yes...YES...~  GOTO SanTowrLo4
END

IF~~ THEN BEGIN SanTowrLo4
SAY~ ...aaah...~
IF~~THEN REPLY~ ...mmh...~  GOTO SanTowrLo5
END

IF~~ THEN BEGIN SanTowrLo5
SAY~ ...I love you...~
IF~~THEN REPLY~ ...mmh...~  DO~  ClearAllActions() StartCutSceneMode() StartCutScene("CVTwrLoR")~ EXIT
END

IF~Global("SanTwrLo","GLOBAL",2) ~ THEN BEGIN SanTowrLo11
SAY~ (When your eyes steady you see a wonderful white deer standing in front of you but facing away to the sea. Suddenly the creature turns her head and the sparkling eyes that look at you are very familiar.)~
IF~~THEN REPLY~ (Only now you realise your own metamorphosis - you are a roebuck of stately stature.)~ GOTO SanTowrLo12
END

IF~~ THEN BEGIN SanTowrLo12
SAY~ (The white deer wiggles her short tail invitingly and moves a bit away from you.)~
IF~~THEN REPLY~ (You have no control of your *hoofs* as you follow her, nor can you object the intense animalistic desire that steers your body to hers.)~GOTO SanTowrLo13
END

IF~~ THEN BEGIN SanTowrLo13
SAY~ (You feel her silken fur against your stomach as you jump with your forelegs onto her delicate back.) ~
IF~~THEN REPLY~ (Your strong hindlegs move rhymically as you penetrate her without hinderance or hesitation.)~ GOTO SanTowrLo14
END

IF~~ THEN BEGIN SanTowrLo14
SAY~ (A small snortlike sound is all you receive from her but that is enough to indicate that you give her exactly what she needs.)~
IF~~THEN REPLY~ (The violence of your climax lets your animal body shudder and you glide exausted from her back.)~ GOTO SanTowrLo15
END

IF~~ THEN BEGIN SanTowrLo15
SAY~ (When the blur from your eyes is gone you see Sandrah standing in front of you with a smile.) I love you, <CHARNAME>.~
IF~~THEN REPLY~ *Snort* (Hey, I need my voice back.)~  DO~  ClearAllActions() StartCutSceneMode() StartCutScene("CVTwrLoR")~ EXIT
END

//The Book That Writes Itself
IF~Global("SanKhalBlood","GLOBAL",7)~ THEN BEGIN FindSRBook21
SAY~(Sandrah has her mighty tome on her knees and studies certain pages intensely.)~
IF~~THEN REPLY~ (You adore her silently. In her concentrated reading she represents for you the beauty that can lie in knowledge. Actually, if your comparison was right knowledge was one of the most beautiful things imaginable.)~ GOTO FindSRBook22
IF~~THEN REPLY~ Are you making some progress in your search for the mysterious book?~ GOTO FindSRBook22
END

IF~~THEN BEGIN FindSRBook22
SAY~ With our idea of an Amaunator temple to be the residence of the Book that Writes Itself we were on the right track.~
IF~~THEN REPLY~ Please let me know your findings.~ DO~ SetGlobal("SanKhalBlood","GLOBAL",8)~ GOTO FindSRBook23
END

IF~~THEN BEGIN FindSRBook23
SAY~ It is written here, that each Amaunator temple had an area only accesible to the priests that was called *The archive*. Sounds like a place were records and such are kept, does it not?~
IF~Global("CVAR1402","GLOBAL",1)~THEN REPLY~ Good and bad news, I guess. The one in the Umar Temple probably was destroyed by the Shadow Dragon. His lair would have been that archive before he moved in violently.~ GOTO FindSRBook24
IF ~~THEN REPLY~Amaunator's temples are only ruins nowadays...~ GOTO FindSRBook24
END

IF~~THEN BEGIN FindSRBook24
SAY~ Again you probably are right, my lovely genius, please go on.~
IF~~THEN REPLY~ The temple below Athkatla was more or less intact, even if the worshipers of the forgotten god had no idea what they were preserving. Unless there is another temple that we have not even found yet I would propose to give this one a try.~ GOTO FindSRBook25
IF~~THEN REPLY~ The only alternative we know so far is below Athkatla, but we have explored that one already. Either we need to look again with our current knowledge of what might be there or it is in another temple that we have not even found yet.~ GOTO FindSRBook25
IF~~THEN REPLY~ The one below Athkatla holds no secrets for us anymore, so - dead end until we find another installation during our travels.~ GOTO FindSRBook25
END

IF~~THEN BEGIN FindSRBook25
SAY~ It would not take us too far off from our quest to check the one below the Temple District once again with our enhanced knowledge. If it is not the one we can at least eliminate it from the list of possibilities.~
IF~~THEN REPLY~ I have no objections. ~ DO~RestParty()~EXIT
IF~~THEN REPLY~ There is no need to hurry but we can probably find some time for the short excursion.~DO~RestParty()~ EXIT
IF~~THEN REPLY~ Time will tell. Maybe we will find the missing temple some day.~DO~RestParty()~EXIT
END

IF~Global("SanKhalBlood","GLOBAL",11)~BEGIN SanWHoIam1
SAY~(You feel Sandrah's hand glide into yours, a sign that at other times fills you with hope and strength - this time it seems that she is in need of your support.)~
IF~~THEN REPLY~ (You squeeze her hand reassuringly, trying to show that you understand and care for her. She surely needs a bit of time to fully understand what she has learned in the Archive.)~ GOTO SanWHoIam2
IF~~THEN REPLY~ Yes, I am here for you to talk and to listen when you are ready for it. I love you.~ GOTO SanWHoIam2
END

IF~~THEN BEGIN SanWHoIam2
SAY~ I love you forever, <CHARNAME>. (She continues to walk beside you hand in hand, silently but relaxing more and more with each step.)~
IF~~THEN DO~ SetGlobal("SanKhalBlood","GLOBAL",12) RealSetGlobalTimer("SanDreamTalkTime","GLOBAL",TWENTY_MINUTES) StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~ EXIT
END

IF~~THEN BEGIN SanHeriMyst1
SAY~ In the end it will mean what I decide to make out of it - sorry, what WE make out of it, my love. You know best what a heritage of that sort means and you also know that in the end it it ourselves who shape what we become.~
IF~~THEN REPLY~ You have certainly contemplated about the revelation same as I did. Let us sit down together and see if we share the view so far.~ GOTO SanHeriMyst2
END

IF~~THEN BEGIN SanHeriMyst2
SAY~ You are wonderful, again and again. Yes, let us recapitulate what we have learned - to express it in our own words will let our minds grab the meaning and impact of it all.~
IF~~THEN REPLY~ Up to now we have always seen in you Midnight's granddaughter through your father's line. Now we have learned about a similar but even more significant connection to Mystra through your mother's bloodline.~ GOTO SanHeriMyst4
IF~~THEN REPLY~ As it seems you are the only remaining mortal on Faerun that can continue Mystra's bloodline and succeed the goddess yourself or through your daughters, should you ever have them.~ GOTO SanHeriMyst3
END

IF~~THEN BEGIN SanHeriMyst3
SAY~ Please, let us not jump to conclusions just now. In our proven manner let us put piece beside piece so we do not oversee any important detail.~
IF~~THEN REPLY~ Fine. For the moment I suggest to forget about anything we knew before of your heritage and your grandmother and focus on the motherly line.~ GOTO SanHeriMyst4
END

IF~~THEN BEGIN SanHeriMyst4
SAY~ (Almost as a whisper:) *Our* mother's bloodline, even if Khalindra was just misused in your case.~
IF~~THEN REPLY~ Do you see a significance in that or is it just coincidence?~ GOTO SanHeriMyst5
END

IF~~THEN BEGIN SanHeriMyst5
SAY~ We never believed it to be by accident but rather by Bhaal's evil plan. Now I think, that we have just erred in his motivation to implant a Bhaalspawn into Khalindra. It was more than just revenge on Midnight and her son - but I will come to that later.~
=~ So the facts. My mother never had shown any magical skills or interests, nothing that made any connection to Mystra apparent.~ 
IF~~THEN REPLY~ But still her bloodline is one of most ancient on the primary plane and through Qilue Veladorn reaches back directly to Mystra. (Smile) Maybe that explains your knack for drow companions and some of your skills in the bedchamber.~ GOTO SanHeriMyst6
END

IF~~THEN BEGIN SanHeriMyst6
SAY~ Oh, my, silly. Even if Qilue Veladorn really was drow - which I doubt - it would be almost onehundred and ten generations between her and me. I have as much elvish or orc blood within me than drow, which is about the same mixture you will find in any of us if you just take enough generations into account.~
=~ But jokes aside, I have to accept that I descended from Mystra both through my father and my mother.~
IF~~THEN REPLY~ This is the first part of what we learned. I propose to continue another time to deal with the consequences this has when we add the rest of our findings to it.~ DO~SetGlobal("SanKhalBlood","GLOBAL",13)~ EXIT
IF~~THEN REPLY~ This is the first part of what we learned. Now let us look at the consequences this has when we add the rest of our findings to it.~ DO~SetGlobal("SanKhalBlood","GLOBAL",14)~ GOTO SanHeriMyst7
END

IF~~THEN BEGIN SanHeriMyst7
SAY~ This is when I asked the Book about the other decendents of Mystra in my belief that I was the one assigned to find the successor of Midnight in her role as Goddess of All Magic.~
IF~~THEN REPLY~ Well you found her, didn't you?~ GOTO SanHeriMyst8
END

IF~~THEN BEGIN SanHeriMyst8
SAY~This remains to be seen, <CHARNAME>. Much can happen and I always denied that our fate is written without our having a say in it and the possibilities to shape it.~
IF~~THEN REPLY~ Back to the facts. We were told that in the generation before us there were two descendants of Mystra left. The book did not tell us the names because they had been delivered before - but we know who they were - Midnight and Khalindra.~ GOTO SanHeriMyst9
END

IF~~THEN BEGIN SanHeriMyst9
SAY~ One a priestess of the goddess herself, well aware of her duties, her heritage and courageous enough to pick up a fight even with gods. The other a merchant's daughter, beautiful, young and intelligent winning many hearts but seemingly unaware of the blood she carried. Thus was the situation when unexpectedly Mystra was killed in the Times of Trouble and AO had to urgently find a new guardian for the Weave.~
IF~~THEN REPLY~ Combine those two personalities and we get - you!~GOTO SanHeriMyst10
END

IF~~THEN BEGIN SanHeriMyst10
SAY~ (Blushes) Oh, charmer. How can we work earnestly if you come up with such. At least there is a grain of truth in your words. Midnight's line ended when she gave birth to Elminster and afterwards ascended to Mystra. But still the two remaining bloodlines were united as Elminster without knowing this fact fell in love with Khalindra.~
IF~~THEN REPLY~ And you are the result of that love and that union and the only one of Mystra's bloodline who is left.~ GOTO SanHeriMyst11
END

IF~~THEN BEGIN SanHeriMyst11
SAY~ A fact that destroyed my mother as it was known to another god as well - Bhaal.~
IF~~THEN REPLY~ You already allured to the fact that I was sired with Khalindra for a different reason than we had assumed until now?~ GOTO SanHeriMyst12
IF~~THEN REPLY~ You already allured to the fact that the bhaalspawn was sired with Khalindra for a different reason than we had assumed until now?~ GOTO SanHeriMyst12
IF~~THEN REPLY~ His plan was more than mere revenge - but in which way?~  GOTO SanHeriMyst12
END

IF~~THEN BEGIN SanHeriMyst12
SAY~ We have completely lost our sense of time over the topic, my love. Let us continue this another time.~
IF~~THEN DO~SetGlobal("SanKhalBlood","GLOBAL",14)~EXIT
END

IF~~THEN BEGIN SanHeriMyst13
SAY~ Not just any spawn, but one of the strongest, one to grow from the essence of the weaker ones and become a major power and maybe even aspiring to the Throne of Bhaal. ~
=~By the time Bhaal was seeding his spawns he knew how the Times of Trouble would end - for him but also for the ones who would bring him down. And even if the final backstab was done by Cyric - and Mask was involved as the deadly weapon - it was Midnight that had lead and concluded the mission in AO's name. The priestess of Mystra, later reincarnate as the goddess herself, was the real enemy for the God of Murder.~
=~With his plan to live on through his spawns who would grow and each of them hold part of his essence so enough would be maintained to restore his power one day, there was one opponent to be eliminated who could spoil the plan once again - Mystra.~
IF~~THEN REPLY~ When Khalindra died at the bhaalspawn's birth, the possibility for another daughter from the only remaining bloodline was eliminated. Hm, but you were born already, and a daughter as would be required.~ DO~SetGlobal("SanKhalBlood","GLOBAL",15)~GOTO SanHeriMyst14
IF~~THEN REPLY~ When Khalindra died at the bhaalspawn's birth - my birth, the possibility for another daughter from the only remaining bloodline was eliminated. Hm, but you were born already, and a daughter as would be required.~ DO~SetGlobal("SanKhalBlood","GLOBAL",15)~GOTO SanHeriMyst14
END

IF~~THEN BEGIN SanHeriMyst14
SAY~(She hesitates for a moment.) I know you will understand my next words correctly as an innocent baby cannot be blamed for its father's cunning plan. With insaminating Khalindra Bhaal not only prevented the birth of further children from her line - he also placed the killer for the last remaining one right into the same cradle.~
IF~~THEN REPLY~ You are mad! The second child was to be your killer?...oh, Sandrah...No, you are not mad, it's Bhaal who is wicked beyond human reasoning.~ GOTO SanHeriMyst17
IF~~THEN REPLY~ You are mad! I was to be your killer?...oh, Sandrah...No, you are not mad, it's Bhaal who is wicked beyond human reasoning.~ GOTO SanHeriMyst16
IF~~THEN REPLY~ The wolf grows up beside the lamb until one day the wolf gets the lust for meat...~GOTO SanHeriMyst15
END

IF~~THEN BEGIN SanHeriMyst15
SAY~ Only that the lamb was not so sheepish and the good shepherd was watchful enough.~
IF~~THEN REPLY~ So in Bhaal's plan we would grow up as siblings with your full trust in me. But my calling of the blood would commence and grow inside of me until one day I would become aware of who I really am. And my first victim would be the one who would otherwise become my strongest opponent.  Mystra would be dead before she even had an idea who she was.~ EXIT
END

IF~~THEN BEGIN SanHeriMyst16
SAY~ I am glad you do not blame the messenger for the news she brings.~
IF~~THEN REPLY~ So in Bhaal's plan we would grow up as siblings with your full trust in me. But my calling of the blood would commence and grow inside of me until one day I would become aware of who I really am. And my first victim would be the one who would otherwise become my strongest opponent.  Mystra would be dead before she even had an idea who she was.~ EXIT
END

IF~~THEN BEGIN SanHeriMyst17
SAY~ Only that the lamb was not so sheepish and the good shepherd was watchful enough.~
IF~~THEN REPLY~ So in Bhaal's plan the two would grow up as siblings with your full trust in him or her. But the calling of the blood would commence and grow inside until one day the younger would become aware of its true nature. And the first victim would be the one who would otherwise become the strongest opponent.  Mystra would be dead before she even had an idea who she was.~ EXIT
END

IF~~THEN BEGIN SharkTru1
SAY~Honestly I do not know the whole truth - yet, <CHARNAME>.~
IF~~THEN REPLY~ In which respect?~DO~SetGlobal("SanSharkTru","LOCALS",1)~ GOTO SharkTru2
END

IF~~THEN BEGIN SharkTru2
SAY~ Sharkta Fai itself and the legends about it are much older than the current misuse by  Szass Tam. The pool and the Watcher must have been there before.~
IF~~THEN REPLY~ You told us that even the Elves and other folk know about that entrance to the other world.~ GOTO SharkTru3
IF~~THEN REPLY~ You have seen Shauhana's healing with your own eyes there. Not likely to be the work of that hyper lich.~ GOTO SharkTru4
END

IF~~THEN BEGIN SharkTru3
SAY~ The legend is old and Szass Tam is one who has studied every piece of information about necromancy, prolonging ones existence and other related issues thoroughly. I would be astonished if he had not come across the legend at one time or other. You know well that I myself do not believe in it - and Szass Tam has found that out himself, provided he ever believed in it himself...~
IF~~THEN REPLY~ Ha, but he found a good use for it with superstitous orcs that would freely deliver him *material* right to his doorstep.~GOTO SharkTru5
END

IF~~THEN BEGIN SharkTru5
SAY~ Yes and no. He makes use of the orc's habit and believe as they always have done so - for the watcher. However Szass Tam has a much greater hunger than the watcher ever had.~
IF~~THEN REPLY~The factory is a perpetuum mobile, a thing I read about in Candlekeep once. It produces undead that he gives to Vennegrat to fight a war that produces new dead heroes for Szass that are turned to new undead...and so on and on...~GOTO SharkTru6
IF~~THEN REPLY~But what about Shauhana's healing?~ GOTO SharkTru4
END

IF~~THEN BEGIN SharkTru4
SAY~ Szass is not the only one to make use of old legends.~
IF~~THEN REPLY~ What?...oh, I see...you did that somehow, didn't you? But how?~DO~SetGlobal("SanSharkTru","LOCALS",2)~ GOTO SharkTru7
END

IF~~THEN BEGIN SharkTru7
SAY~ I will tell you about it when we come to the pool again. It is nothing supernatural or faked, just the knowledge every potent healer should have.~
IF~~THEN REPLY~ Fine. I have learned from you that everything will be reveiled in due time. So what about the legend that is so old and widespread?~GOTO SharkTru8
END

IF~~THEN BEGIN SharkTru8
SAY~ The legend is old and Szass Tam is one who has studied every piece of information about necromancy, prolonging ones existence and other related issues thoroughly. I would be astonished if he had not come across the legend at one time or other. You know well that I myself do not believe in it - and Szass Tam has found that out himself, provided he ever believed in it himself...~
IF~~THEN REPLY~ Ha, but he found a good use for it with superstitous orcs that would freely deliver him *material* right to his doorstep.~GOTO SharkTru10
END

IF~~THEN BEGIN SharkTru10
SAY~ Yes and no. He makes use of the orc's habit and believe as they always have done so - for the watcher. However Szass Tam has a much greater hunger than the watcher ever had.~
IF~~THEN REPLY~The factory is a perpetuum mobile, a thing I read about in Candlekeep once. It produces undead that he gives to Vennegrat to fight a war that produces new dead heroes for Szass that are turned to new undead...and so on and on...~GOTO SharkTru6
END

IF~~THEN BEGIN SharkTru6
SAY~Unless someone disrups this vicious circle.~
IF~~THEN REPLY~We know well who that someone is.~EXIT
IF~GlobalLT("SanSharkTru","LOCALS",2)~THEN REPLY~ But what about Shauhana's healing?~ GOTO SharkTru11
END

IF~~THEN BEGIN SharkTru11
SAY~ Szass is not the only one to make use of old legends.~
IF~~THEN REPLY~ What?...oh, I see...you did that somehow, didn't you? But how?~DO~SetGlobal("SanSharkTru","LOCALS",2)~ GOTO SharkTru12
END

IF~~THEN BEGIN SharkTru12
SAY~ I will tell you about it when we come to the pool again. It is nothing supernatural or faked, just the knowledge every potent healer should have.~
IF~~THEN REPLY~ Fine. I have learned from you that everything will be reveiled in due time. ~EXIT
END

IF~ Global("PoolHealT","CVSHA7",1) ~ THEN BEGIN PoolTalk1
SAY~ I think I owe you a bit of an explanation about what I found out so far about this place here.~
IF~Global("SanSharkTru","LOCALS",2)~THEN REPLY~ You promised to tell me about Shauhana's healing.~ GOTO PoolTalk8
IF~!Global("SanSharkTru","LOCALS",2)~ THEN REPLY~Sharkta Fai itself and the legends about it are much older than the current misuse by  Szass Tam. The pool and the Watcher must have been there before. You told us that even the Elves and other folk know about that entrance to the other world.~ GOTO PoolTalk2
END

IF~~THEN BEGIN PoolTalk2
SAY~ The legend is old and Szass Tam is one who has studied every piece of information about necromancy, prolonging ones existence and other related issues thoroughly. I would be astonished if he had not come across the legend at one time or other. You know well that I myself do not believe in it - and Szass Tam has found that out himself, provided he ever believed in it himself...~
IF~~THEN REPLY~ Ha, but he found a good use for it with superstitous orcs that would freely deliver him *material* right to his doorstep.~GOTO PoolTalk3
END

IF~~THEN BEGIN PoolTalk3
SAY~ Yes and no. He makes use of the orc's habit and believe as they always have done so - for the watcher. However Szass Tam has a much greater hunger than the watcher ever had.~
IF~~THEN REPLY~The factory is a perpetuum mobile, a thing I read about in Candlekeep once. It produces undead that he gives to Vennegrat to fight a war that produces new dead heroes for Szass that are turned to new undead...and so on and on...~GOTO PoolTalk4
IF~~THEN REPLY~But what about Shauhana's healing?~ GOTO PoolTalk5
END

IF~~THEN BEGIN PoolTalk4
SAY~Unless someone dirsrups this vicious circle.~
IF~~THEN REPLY~We know well who that someone is.~GOTO PoolTalk8
IF~GlobalLT("SanSharkTru","LOCALS",2)~THEN REPLY~ But what about Shauhana's healing?~ GOTO PoolTalk5
END

IF~~THEN BEGIN PoolTalk5
SAY~ Szass is not the only one to make use of old legends.~
IF~~THEN REPLY~ What?...oh, I see...you did that somehow, didn't you? But how?~DO~SetGlobal("SanSharkTru","LOCALS",2)~ GOTO PoolTalk8
END

IF~~THEN BEGIN PoolTalk8
SAY~(Sandrah grabs deep into the mysterious pool and comes up with a handful of green slimy material. She holds it to your nose and you smell a faint odour like those you know from your healing potions.)~
IF~~THEN REPLY~ What is it?~ GOTO PoolTalk9
IF~~THEN REPLY ~ They pour healing stuff inside to produce the effect? ~GOTO PoolTalk9
END

IF~~THEN BEGIN PoolTalk9
SAY~ It is an algae which has some healing effects, <CHARNAME>, a bit like a small healing potion. A natural resource and probably the origin to the legends that surround this pool.~
IF~~THEN REPLY~ But is that enough to restore the fallen or to heal a wound like Shauhana's?~GOTO PoolTalk10
END

IF~~THEN BEGIN PoolTalk10
SAY~No, it is just enough to give this pool a special reputation. Priests have done their share to grow a legend out of it and the mysterious watcher has found this place later on as it provided him with the *food* he needed. Until our mighty foe occupied the place and causes the current problem.~
IF~~THEN REPLY ~ If the Watcher consumed the fallen orcs, then who...ah, I start to understand...you did...~GOTO PoolTalk11
IF~~THEN REPLY~ Still Shauhana was restored from the wound you said you could not restore yourself...~ GOTO PoolTalk11
END

IF~~THEN BEGIN PoolTalk11
SAY~ <CHARNAME>, all higher races on Toril have one thing in common - our body and our mind form a union where one part influences the other. Our mind, the feelings and emotions as well as our beliefs can let our body achieve things it would not be capable alone.~
IF~~THEN REPLY ~Like fear makes us run faster than we otherwise would?~ GOTO PoolTalk12
END

IF~~THEN BEGIN PoolTalk12
SAY~ A valid example. Now, for a healer that is essential knowledge. Often you loose a patient because he has already given up himself mentally - vice versa you can use the will of the patient to fuel the healing process.~
=~In Shauhana's case the various ingrediences came together, the water of the pool, her will to become hale and her strong belief in Sharkta Fai - and a healer's knowledge and skill to make use of those ingrediences.~
IF~~THEN REPLY ~So in the end it was you - by knowing all of this and being able to use it. Probably that makes you the best healer I have ever encountered.~ GOTO PoolTalk13
END

IF~~THEN BEGIN PoolTalk13
SAY~ <CHARNAME>, that was the most wonderful compliment you could have made me. My healing skills are the most important value to me. (She kisses you dearly).~
IF~~THEN DO~SetGlobal("PoolHealT","CVSHA7",2) AddexperienceParty(18000) RealSetGlobalTimer("Entershar","CVSha7",60) ~EXIT
END

IF~Global("PoolHealT","CVSHA7",3)~THEN BEGIN PoolTalk14
SAY~ I propose we prepare ourselves well and rest before we continue into the lair below.~
IF~~THEN REPLY ~Do you know how to accomplish that?~ GOTO PoolTalk15
IF~~THEN REPLY ~The watcher has not appeared this time, what are we going to do?~ GOTO PoolTalk15
IF~~THEN REPLY ~There is no turning back now, I guess. What is our plan?~ GOTO PoolTalk15
END

IF~~THEN BEGIN PoolTalk15
SAY~ The watcher has not appeared this time as he does not get the scent of the fallen body that usually attracts him - time to use Ghotal's key.~
=~Come here, <CHARNAME>, touch that emblem of Myrkul, but only lightly, please.~
IF~~THEN REPLY ~Ouch, it is freezing cold...~ GOTO PoolTalk16
END

IF~~THEN BEGIN PoolTalk16
SAY~Exactly, and by this it will open the gate through the pool.~
IF~~THEN REPLY~ Wait, Sandrah, we need to rest and heal before we go on. I will tell you when we are ready to go.~DO~SetGlobal("PoolHealT","CVSHA7",4)~EXIT
IF~~THEN REPLY~ (You take a deep breath) Let us enter that pool now, Sandrah.~DO~SetGlobal("PoolHealT","CVSHA7",5)~GOTO PoolTalk17
END

IF~~THEN BEGIN PoolTalk17
SAY~ (Sandrah cautiosly takes Myrkul's emblem in her gloved hand and steps up to the pool.)~
=~(As the symbol touches the water, the whole pool freezes within seconds. Sandrah gives all of you a sign to step onto the frozen surface with her...~
IF~~THEN EXIT
END


//Waterdeep Vampire Quest
IF~Global("SanVampWDQuest","GLOBAL",6)~ THEN BEGIN ForgotWDVampQ1
SAY~ Please, <CHARNAME>, you should allow me to transport us to Waterdeep and to talk to Ringhontal at the Temple. They would not send for me if I were not urgently required.~
IF~~THEN REPLY~ I am sorry I let you wait with this. It's good to remind me now, we will go right away.~ GOTO ForgotWDVampQ2
IF~~THEN REPLY~ Oh, the mighty Temple of Mystra can surely solve a problem without their little priestess' help for once.~ GOTO ForgotWDVampQ3
END

IF~~ THEN BEGIN ForgotWDVampQ2
SAY~ I fully understand, my love. There is so much you have to think of and decide. I will prepare the spell now.~
IF~~THEN DO~ SetGlobal("SanVampWDQuest","GLOBAL",7) IncrementGlobal("Sanpoints","GLOBAL",-1) SetGlobal("SANWDho","GLOBAL",1)~EXIT
END

IF~~ THEN BEGIN ForgotWDVampQ3
SAY~ They would not ask me if that were the case. Remember I serve the Temple exactly for these special purposes and I am granted so much freedom otherwise. It is in our all interest if you now listen to your consellor in this matter.~
IF~~THEN DO~ SetGlobal("SanVampWDQuest","GLOBAL",7) IncrementGlobal("Sanpoints","GLOBAL",-3) SetGlobal("SANWDho","GLOBAL",1)~EXIT
END

IF~Global("SanVampWDQuest","GLOBAL",15)~ THEN BEGIN DoWDVampQ1
SAY~ Look! What is this?~
IF~~THEN REPLY~ (You come closer and see that a part of the ships planks shimmer and blur in a strange blue light. The wall seems almost transparent. This must be where the vampires have come in a moment ago.)~ DO~SetGlobal("SanVampWDQuest","GLOBAL",16)~
GOTO DoWDVampQ2
END

IF~~ THEN BEGIN DoWDVampQ2
SAY~ A kind of portal between the planes, that is why the former inspections have found no traces on the ship itself. They must come and go through this connection.~
IF~~THEN REPLY~ I guess we best report back to the temple so they can use Mystra's aid to seal it.~ DO~IncrementGlobal("Sanpoints","GLOBAL",-3)~ GOTO DoWDVampQ3
IF~~THEN REPLY~ As long as it is accessible from yonder it will be a threat to Waterdeep and beyond. I see no way other than to pay those creatures a visit at their home base.~ DO~IncrementGlobal("Sanpoints","GLOBAL",5) ~ GOTO DoWDVampQ4
END

IF~~ THEN BEGIN DoWDVampQ3
SAY~ <CHARNAME>, you have Mystra's representative standing already right beside you. All they would tell us at the temple is that this here is my mission and duty - and send us back to here again.~
IF~~THEN REPLY~ I see. Well, there is no way than to let you go ahead at your discretion.~ GOTO DoWDVampQ4
END

IF~~ THEN BEGIN DoWDVampQ4
SAY~Your reputation as a leader is well deserved, my love. Even I must confess I adore you for it.~
IF~~THEN REPLY~ With a counselor like yourself at my side that is easy. But say, what is our option to return once we enter to wherever this may lead us?~GOTO DoWDVampQ5
END

IF~~ THEN BEGIN DoWDVampQ5
SAY~ If they can use it to visit us we can use the same way to return.~
IF~~THEN REPLY~ Fine, onwards then.~ DO~SetGlobal("SanVampWDQuest","GLOBAL",17)~ GOTO DoWDVampQ6
IF~~THEN REPLY~ Fine. Let us just heal and restore everybody before we move on.~ EXIT
END

IF~~ THEN BEGIN DoWDVampQ6
SAY~ Onwards.~
IF~ !Global("SanVampWDQuest","GLOBAL",17)~THEN DO~ SetGlobal("SanVampWDQuest","GLOBAL",17) ClearAllActions() SetInterrupt(FALSE) Wait(4) TextScreen("VampVis") ~EXIT
IF~Global("SanVampWDQuest","GLOBAL",17)~THEN DO~ ClearAllActions() SetInterrupt(FALSE) Wait(4) TextScreen("VampVis") ~EXIT
END

IF~Global("SanVampWDQuest","GLOBAL",23)~ THEN BEGIN DoWDVampQF
SAY~ Now, my love, I propose to go to the Temple to bring them the news. I anticipate that the priests will perform some cleansing on the *Harare* to prevent any further use of that portal.~
IF~~THEN REPLY~ Probably the temple will also be the right place to preserve or destroy this strange crystal that made the dimension fold possible.~ DO~ SetGlobal("SanVampWDQuest","GLOBAL",24)~EXIT
END

IF~~THEN BEGIN SanSphereAdv1
SAY~Thank you, my love, of course I will do my best to assist you in this. First of all let me say I am quite content that you accepted the sphere to our responsibility.~
IF~~THEN REPLY~ Even if we have to cooperate with the damned cowls for it?~DO~ SetGlobal("SanPCHassphere","GLOBAL",1)~GOTO SanSphereAdv2
END

IF~~THEN BEGIN SanSphereAdv2
SAY~ The cowled wizards are part of the fragile balance that keeps Athkatla peaceful for the time being and as such even Mystra accepts their actions although their use of her gifts are far from being what they should be. The sphere in their hands would give them too much power as it would to any other user. You correctly spoke of responsibility, darling. This is what it will mean for us.~
IF~~THEN REPLY~ It's a powerful thing, isn't it? And very dangerous if it fell into the wrong hands?~GOTO SanSphereAdv3
IF~~THEN REPLY~ I do not see much use in it for our goals, even if it's a powerful stronghold.~ GOTO SanSphereAdv3
END

IF~~THEN BEGIN SanSphereAdv3
SAY~ Even if we have no direct use for it ourselves I would declare our party as its guardian in Mystra's name. We have seen what damage it can cause in the hands of such as the Necromancer Lavok and I do not expect the cowled wizards to use it for the wealth of all in Amn. It is here and it has made its final voyage I think. We cannot destroy it and we cannot remove it. So my counsel to you is that we defend it against all that want it as a tool to gain power.~
IF~~THEN REPLY~ Fine. I will play along the lines of Teos and his buddies. This way we know what's going on and we control them as much as they observe us.~ GOTO SanSphereAdv4
IF~~THEN REPLY~ Sounds like it will be cumbersome but necessary.~ GOTO SanSphereAdv4
END

IF~~THEN BEGIN SanSphereAdv4
SAY~Just a final word of warning, <CHARNAME>. The sphere is like a beacon for those who attempt to gain power through the misuse of magic. It will attract them like a candle attracts moths.~
IF~~THEN REPLY~ Ha, and like moths they will burn their wings when they provoke our combined forces.~EXIT
END

IF~Global("SanMaltese","LOCALS",1)~THEN BEGIN Ybgirq1
SAY~I am glad you accepted Eleanor Ybgir's quest. I am saying that on behalf of my goddess and everybody who has a glimpse of an idea what this mage is seeking to do.~
IF~~THEN REPLY~Do you know this Khaddyr by any chance?~ GOTO Ybgirq2
IF~~THEN REPLY~Can you give me any details about this thing called permatration?~ GOTO Ybgirq2
IF~~THEN REPLY~I observed how you tried to keep calm in Eleanor's presence. You are REALLY concerned by that mysterious threat?~ GOTO Ybgirq2
END

IF~~THEN BEGIN Ybgirq2
SAY~I neither know that mage Khaddyr nor is now the time to bother you with details about the ritual he is obviously attempting. Even if our elven lady erred deeply about Mystra's involvement with permatration, one thing remains true - it is the sacrifice of many for the sake of one power hungry miscreant. Mystra and me will not allow such a deed. The example of Karsus remains a warning for all ages.~
IF~Global("Sanrompath","GLOBAL",1)~THEN REPLY~It's enough for me to have your agreement even if I see that the story of everything that may be involved here may be quite long - given the time that has passed since Karsus' fall.~DO~SetGlobal("SanMaltese","LOCALS",2)~ GOTO Ybgirq3m
IF~Global("Sanrompath","GLOBAL",2)~THEN REPLY~It's enough for me to have your agreement even if I see that the story of everything that may be involved here may be quite long - given the time that has passed since Karsus' fall.~DO~SetGlobal("SanMaltese","LOCALS",2)~ GOTO Ybgirq3f
END

IF~~THEN BEGIN Ybgirq3m
SAY~As much as I would like to correct some misinterpretation of Mystra's role here, especially by the Helmits, it is rather time to act than to talk...my hero.~
IF~~THEN EXIT
END

IF~~THEN BEGIN Ybgirq3f
SAY~As much as I would like to correct some misinterpretation of Mystra's role here, especially by the Helmits, it is rather time to act than to talk...my heroine.~
IF~~THEN EXIT
END

IF~Global("SanMaltese","LOCALS",3)~THEN BEGIN Ybgirq11
SAY~More than before I am convinced we are obliged to solve Eleanor Ybgir's quest. In a city like this it should be possible to gather the parts for that proposed forged crown.~
IF~~THEN REPLY~ Wihout her help what will we do with the parts?~DO~SetGlobal("SanMaltese","LOCALS",4)~GOTO  Ybgirq12
IF~~THEN REPLY~ I've seen that murderous mage with my own eyes now - He needs to be stopped. Only how? ~DO~SetGlobal("SanMaltese","LOCALS",4)~GOTO  Ybgirq12
END

IF~~THEN BEGIN Ybgirq12
SAY~ Our old friend in the docks should be able to help us with his skills if we bring him the ingrediences that Eleanor has listed for us.~
IF~~THEN REPLY~ Ah, Cromwell! I should have thought of him myself.~EXIT
IF~~THEN REPLY~ You're right, Cromwell should be able to put together such an item from the things we bring to him.~EXIT
END

//========================================================================
// SHADOW OF Amn Interjects
END
//========================================================================


// Yoshimo
INTERJECT_COPY_TRANS YOSHIMO 42 SanYoshDun
== CVSandrJ IF ~ InParty("CVSandr") ~ THEN ~ We are indeed in Athkatla in Amn, <CHARNAME>, very much beneath the center of town. I followed the Shadow Thieves from the merchant's promenade into this dungeon to find you.~
== YOSHIMO IF ~ InParty("CVSandr") ~ THEN ~ You come from outside, Lady? But strange, how come the Shadow Thieves attack this prison, I thought they are in league with our capturers? ~
== CVSandrJ IF ~ InParty("CVSandr") ~ THEN ~ Yes and no. My friends were taken here by one group of Shadow Thieves while another group today assaulted this place. As far as I can tell from the little information I could secretly gather, there are different guildes of the thieves operating here, as well as other strange creatures at war with both sides. It is really confusing.~
== YOSHIMO IF ~ InParty("CVSandr") ~ THEN ~ You did well to operate most secretly, mylady. The Shadow Thieves, regardless which guild, are no fun to deal with.~
== CVSandrJ IF ~ InParty("CVSandr") ~ THEN ~ <CHARNAME>, we are close to the surface and the exit now. There are still dangers ahead, as I tried to avoid fighting when I sneaked into this place. I did not want to endanger you by stirring up our foe with battle noises.~
END

INTERJECT_COPY_TRANS YOSHIMO 6 SanYoshDunNoImo
== CVSandrJ IF ~ InParty("CVSandr") ~ THEN ~ We are indeed in Athkatla in Amn, <CHARNAME>, very much beneath the center of town. I followed the Shadow Thieves from the merchant's promenade into this dungeon to find you.~
== YOSHIMO IF ~ InParty("CVSandr") ~ THEN ~ You come from outside, Lady? But strange, how come the Shadow Thieves attack this prison, I thought they are in league with our capturers? ~
== CVSandrJ IF ~ InParty("CVSandr") ~ THEN ~ Yes and no. My friends were taken here by one group of Shadow Thieves while another group today assaulted this place. As far as I can tell from the little information I could secretly gather, there are different guildes of the thieves operating here, as well as other strange creatures at war with both sides. It is really confusing.~
== YOSHIMO IF ~ InParty("CVSandr") ~ THEN ~ You did well to operate most secretly, mylady. The Shadow Thieves, regardless which guild, are no fun to deal with.~
== CVSandrJ IF ~ InParty("CVSandr") ~ THEN ~ <CHARNAME>, we are close to the surface and the exit now. There are still dangers ahead, as I tried to avoid fighting when I sneaked into this place. I did not want to endanger you by stirring up our foe with battle noises.~
END

// Drizzt
INTERJECT DRIZ2 0 SanDriMA
==  CVSandrJ IF ~ InParty("CVSandr") GlobalGT("SanDrizzt","GLOBAL",7)~ THEN ~ Drizzt!!~
==  DRIZ2 IF ~ InParty("CVSandr") GlobalGT("SanDrizzt","GLOBAL",7)~ THEN ~ Sandrah, how unexpected and how wonderful!~
= ~ (They embrace and kiss each other like in a whirlwind.)~
==  CVSandrJ IF ~ InParty("CVSandr") GlobalGT("SanDrizzt","GLOBAL",7)~ THEN ~Yes, unexpected and wonderful and just like we knew it was going to happen. Let us talk about what happened to each of us once we have escaped this hole.~
END DRIZ2 7


// Freeing Tabitha
INTERJECT BEAST 0 SanPelligFreeTab
==  PELLIG IF ~ InParty("CVSandr") InMyArea("Pellig")~ THEN ~ GROWWWLLL~
=~ (A wave of enourmous anger and power seems to emerge from Pelligram as she sees the misused creatures surrounding the beastmaster.)~
== BEAST IF ~ InParty("CVSandr") InMyArea("Pellig")~ THEN ~ What an addition to my menagerie would that cat be. Fights like you have never seen before would make us rich.~
== CVSandrJ IF ~ InParty("CVSandr") InMyArea("Pellig")~ THEN ~ You will see only one of those fights, slaver, right here and now, and I doubt you will enjoy it.~
== BEAST IF ~ InParty("CVSandr") InMyArea("Pellig")~ THEN ~ What? Damned intruders!~
==  PELLIG IF ~ InParty("CVSandr") InMyArea("Pellig")~ THEN ~ (The telepathic message that Pelligram seems to send out to her fellow being is so strong that it appears to you as if her mighty voice explodes right in your brain.)~
= ~ Fear nothing, Tabitha, the day of freedom for you has come.~
END BEAST 77

// Sandrah and Hendak
INTERJECT HENDAK 33 SanHendR1
== CVSandrJ IF~ InParty("CVSandr") Global("SanHendAff","GLOBAL",1) ~ THEN ~ It is so wonderful to see you and your companions free once again. Have you made plans for the future already?~
==HENDAK IF~ InParty("CVSandr") Global("SanHendAff","GLOBAL",1) ~ THEN ~ Mylady, you have played a very important role in our release. My heartfelt thanks go to the <CHARNAME>'s whole group but to you and your courage especially.~
== CVSandrJ IF~ InParty("CVSandr") Global("SanHendAff","GLOBAL",1) ~ THEN ~ I will fight slavery with all my might wherever I encounter it, Hendak.~
==HENDAK IF~ InParty("CVSandr") Global("SanHendAff","GLOBAL",1) ~ THEN ~ This is good to hear from a friend as powerful as you are, beautiful lady. You are a strong, courageous, and very impressive person...As to our plans...well, you will find myself here whenever your path leads you to the *New* Copper Coronet. We are about to convert the arena into something better. The Copper Coronet is a nest of inhuman slave drivers no longer!~
== CVSandrJ IF~ InParty("CVSandr") Global("SanHendAff","GLOBAL",1) ~ THEN ~ Then I hope that <CHARNAME> will steer our ways to here frequently, my friend.~
==HENDAK IF~ InParty("CVSandr") Global("SanHendAff","GLOBAL",1) ~ THEN ~ I dearly hope he will, so that I may show my fearless heroine my gratitude for her intervention. Maybe you would be interested to get to know the one you have freed a bit closer.~
== CVSandrJ IF~ InParty("CVSandr") Global("SanHendAff","GLOBAL",1) ~ THEN ~ I am sure that I will reveal quite some qualities in the man who is now free to develop according to his formerly subdued talents.~
END HENDAK 210

INTERJECT HENDAK 33 SanHendR2
== CVSandrJ IF~ InParty("CVSandr") Global("SanHendAff","GLOBAL",3) ~ THEN ~ Hendak, I have really anticipated seeing you again - and well restored as the man you have a right to be.~
==HENDAK IF~ InParty("CVSandr") Global("SanHendAff","GLOBAL",3) ~ THEN ~ I was, for many years, a slave in the hands of those wretched barbarians, and the only people I encountered were either scared fellow slaves or brutal torturers...  ~
== CVSandrJ IF~ InParty("CVSandr") Global("SanHendAff","GLOBAL",3) ~ THEN ~ (Sandrah has moved close to the aging fighter and has gently taken his hand in the comforting way you know so well.)~
==HENDAK IF~ InParty("CVSandr") Global("SanHendAff","GLOBAL",3) ~ THEN ~ And now you stand before me... in all your beauty, the heroine who freed the slaves, and gave me back my own life. I...~
= ~ Oh, hells! Forgive this tired, stammering soldier! I feel your gentle caring eyes upon me, and I cannot find the right words. Now, since I already betrayed myself, let me put my feelings into words. ~
== CVSandrJ IF~ InParty("CVSandr") Global("SanHendAff","GLOBAL",3) ~ THEN ~ (Sandrah's smile is inviting the former slave to continue.)~
==HENDAK IF~ InParty("CVSandr") Global("SanHendAff","GLOBAL",3) ~ THEN ~ Sandrah, I have dreamed of being close to you... to lie with you, a strong, beautiful woman in my arms... as a man, and to forget for a while the terrible visions of the past.~
== CVSandrJ IF~ InParty("CVSandr") Global("SanHendAff","GLOBAL",3) ~ THEN ~ To be a man once again and with woman...~
==HENDAK IF~ InParty("CVSandr") Global("SanHendAff","GLOBAL",3) ~ THEN ~ ...and to serve her as well as this maltreated body can. A voluntary slave to the heart of the woman who deserves such commitment.~
== CVSandrJ IF~ InParty("CVSandr") Global("SanHendAff","GLOBAL",3) ~ THEN ~ I will not be a mistress to command anyone, Hendak, but willing to a partner who is my equal.~
END HENDAK 211

INTERJECT HLKETTA 0 SanSlavHuntAnk
== CVSandrJ IF~ InParty("CVSandr") Global("SanSacroll","GLOBAL",6) ~ THEN ~Your game play is useless on us. We have found the evidence on your companion - your dead companion - that you slavers follow your business right here under the eyes of Athkatla's temples.~
== HLSION IF~ InParty("CVSandr") Global("SanSacroll","GLOBAL",6) ~ THEN ~Our dead...you killed the captain...ha, that's why the *ware* has not arrived yet, hear that, Ketta?~
== HLKETTA IF~ InParty("CVSandr") Global("SanSacroll","GLOBAL",6) ~ THEN ~You idiot! Now you have revealed it to that little cleric girl...Dontcha see she was just fishing in the dark with her accusation.~
== CVSandrJ IF~ InParty("CVSandr") Global("SanSacroll","GLOBAL",6) ~ THEN ~I can confirm to you, that your so-called *ware* will not arrive at all. The well has been dried by us. Same as this installation will be in just a few minutes.~
== HLSion IF~ InParty("CVSandr") ~ THEN ~ Ho, ho! How bold! Ketta, shall we?~DO~SetGlobal("TalkedToHlsion","GLOBAL",2) SetGlobal("TalkedToHlketta","GLOBAL",2) ForceSpell(Myself,DRYAD_TELEPORT)~
== HLKETTA IF~ InParty("CVSandr") ~ THEN ~Of course, my dear. We should try not to make as much of a mess as with that guard.~ DO~ ActionOverride("hlketta",DestroySelf()) SetGlobal("TalkedToHlsion","GLOBAL",2)  SetGlobal("TalkedToHlketta","GLOBAL",2) ForceSpell(Myself,DRYAD_TELEPORT) ~EXIT

//Shadow Thieves
INTERJECT_COPY_TRANS RENAL 14 SanRenaTip
== CVSandrJ IF~ InParty("CVSandr")~ THEN ~ (Whispers) Try to hear him out for any detail we may learn, <CHARNAME>, but do not say yes or no yet to his proposals. The Shadow Thieves may not be the single option to find Imoen. Let us not decide until we know about the others.~
== RENAL IF~ InParty("CVSandr")~ THEN ~ Ah, the secret little advisor I heard so many reports about already.~
== RENAL IF~ InParty("CVSandr") Global("SanRomPath","GLOBAL",1)~ THEN ~ And a beauty who could steal away any thief's heart with ease. I can only hope we will get acquainted a bit better over time...(sigh.)~
== RENAL IF~ InParty("CVSandr") Global("SanRomPath","GLOBAL",2)~ THEN~ And another beauty who could steal away any thief's heart with ease. How could one possibly make a choice here...(sigh.)~
== CVSandrJ IF~ InParty("CVSandr")~ THEN ~ (Smiles) If you really knew a bit about my reputation then you would be aware that I do not reject someone because of his profession, mmh.~
END

//Neeber
INTERJECT NEEBER 3 SanKnowsfaml
== CVSandrJ IF~ InParty("CVSandr")~ THEN ~ Oh, my, this reminds me of Noober or Roober. Say, your name is by chance *Floober*?~
== NEEBER IF~ InParty("CVSandr")~ THEN ~ What? Haha, I am Neeber.~
== CVSandrJ IF~ InParty("CVSandr")~ THEN ~ And you have a widespread family?~
== NEEBER IF~ InParty("CVSandr")~ THEN ~ Wow, you met cousins Noober and Roober already...WAIT! You're that hammer girl...oh my...please, not the fountain...~
END NEEBER 16

//Keldorn
INTERJECT_COPY_TRANS KELDOR 22 SanMeetKel1
== CVSandrJ IF~ InParty("CVSandr") GlobalGT("SanHelmDogmas","GLOBAL",11) ~ THEN ~ Sir Keldorn! Ajantis' Mentor?~
== KELDOR IF~ InParty("CVSandr") GlobalGT("SanHelmDogmas","GLOBAL",11) ~ THEN ~ The very same, mylady. You have met...oh this glance in your eye when you speak his name, you must be...~
== CVSandrJ IF~ InParty("CVSandr") GlobalGT("SanHelmDogmas","GLOBAL",11) ~ THEN ~Sandrah of Waterdeep, mylord. A strange place to meet - but probably not for a paladin and a priestess of Mystra. Anyway, I am delighted to make your acquaintance finally. Ajantis mentioned your name and your deeds often.~
== KELDOR IF~ InParty("CVSandr") GlobalGT("SanHelmDogmas","GLOBAL",11) ~ THEN ~ The pleasure is mine, lady Sandrah, as Ajantis' letters were full of praise of your intelligence and your courageous deeds - and of course your loveliness and beauty, which I can only confirm right now.~
= ~ But where is Ajantis right now, his reports have ceased to come for a while?~
== CVSandrJ IF~ InParty("CVSandr") GlobalGT("SanHelmDogmas","GLOBAL",11) ~ THEN ~ (Sighs) I had dearly hoped that you could tell us. He had to leave us on the Sword Coast for a mission in Helm's name and we have not received news from him since then.~
== KELDOR IF~ InParty("CVSandr") GlobalGT("SanHelmDogmas","GLOBAL",11) ~ THEN ~ You did not? Strange enough. We should look into that once we have got out of this dungeon here successfully.~
END

INTERJECT_COPY_TRANS KELDOR 26 SanMeetKel2
== CVSandrJ IF~ InParty("CVSandr") GlobalGT("SanHelmDogmas","GLOBAL",11) ~ THEN ~ Sir Keldorn! Ajantis' Mentor?~
== KELDOR IF~ InParty("CVSandr") GlobalGT("SanHelmDogmas","GLOBAL",11) ~ THEN ~ The very same, mylady. You have met...oh this glance in your eye when you speak his name, you must be...~
== CVSandrJ IF~ InParty("CVSandr") GlobalGT("SanHelmDogmas","GLOBAL",11) ~ THEN ~Sandrah of Waterdeep, mylord. A strange place to meet - but probably not for a paladin and a priestess of Mystra. Anyway, I am delighted to make your acquaintance finally. Ajantis mentioned your name and your deeds often.~
== KELDOR IF~ InParty("CVSandr") GlobalGT("SanHelmDogmas","GLOBAL",11) ~ THEN ~ The pleasure is mine, lady Sandrah, as Ajantis' letters were full of praise of your intelligence and your courageous deeds - and of course your loveliness and beauty, which I can only confirm right now.~
= ~ But where is Ajantis right now, his reports have ceased to come for a while?~
== CVSandrJ IF~ InParty("CVSandr") GlobalGT("SanHelmDogmas","GLOBAL",11) ~ THEN ~ (Sighs) I had dearly hoped that you could tell us. He had to leave us on the Sword Coast for a mission in Helm's name and we have not received news from him since then.~
== KELDOR IF~ InParty("CVSandr") GlobalGT("SanHelmDogmas","GLOBAL",11) ~ THEN ~ You did not? Strange enough. We should look into that once we have got out of this dungeon here successfully.~
END

INTERJECT_COPY_TRANS KELDOR 18 SanMeetKel3
== CVSandrJ IF~ InParty("CVSandr") GlobalGT("SanHelmDogmas","GLOBAL",11) ~ THEN ~ Then you must be Sir Keldorn! Ajantis' Mentor?~
== KELDOR IF~ InParty("CVSandr") GlobalGT("SanHelmDogmas","GLOBAL",11) ~ THEN ~ The very same, mylady. You have met...oh this glance in your eye when you speak his name, you must be...~
== CVSandrJ IF~ InParty("CVSandr") GlobalGT("SanHelmDogmas","GLOBAL",11) ~ THEN ~Sandrah of Waterdeep, mylord. A strange place to meet - but probably not for a paladin and a priestess of Mystra. Anyway, I am delighted to make your acquaintance finally. Ajantis mentioned your name and your deeds often.~
== KELDOR IF~ InParty("CVSandr") GlobalGT("SanHelmDogmas","GLOBAL",11) ~ THEN ~ The pleasure is mine, lady Sandrah, as Ajantis' letters were full of praise of your intelligence and your courageous deeds - and of course your loveliness and beauty, which I can only confirm right now.~
= ~ But where is Ajantis right now, his reports have ceased to come for a while?~
== CVSandrJ IF~ InParty("CVSandr") GlobalGT("SanHelmDogmas","GLOBAL",11) ~ THEN ~ (Sighs) I had dearly hoped that you could tell us. He had to leave us on the Sword Coast for a mission in Helm's name and we have not received news from him since then.~
== KELDOR IF~ InParty("CVSandr") GlobalGT("SanHelmDogmas","GLOBAL",11) ~ THEN ~ You did not? Strange enough. We should look into that once we have got out of this dungeon here successfully.~
END

//Paladin Stronghold
INTERJECT HurgisF 4 SanTrickF
==CVSandrJ IF~ InParty("CVSandr")~ THEN ~Still the old grumbler and tyrant, Uncle Hurgis. The little Sandrah was always so afraid of you when you came to Waterdeep to see mummy and daddy.~
== HurgisF IF~ InParty("CVSandr")~ THEN ~Who...oh..yes, little Sandrah of Waterdeep has become quite a lady, not to be recognised that easy. But now tell that stubborn paladin who I am to speed things up here.~
==CVSandrJ IF~ InParty("CVSandr")~ THEN ~Oh, yes I will. (Whispers) That man has never seen me before nor do I know him, <CHARNAME>, this is a trick to get Tyrianna from our care.~
END
++~ I will get her now, please excuse my precaution, mylord.~ EXTERN HurgisF 13
++~ It's obviously a trap and you are not Hurgis.~ EXTERN HurgisF 14

INTERJECT HurgisR 4 SanTrickR
==CVSandrJ IF~ InParty("CVSandr")~ THEN ~Still the old grumbler and tyrant, Uncle Hurgis. The little Sandrah was always so afraid of you when you came to Waterdeep to see mummy and daddy.~
DO~SetGlobal("HurgisHere","GLOBAL",1)~
== HurgisR IF~ InParty("CVSandr")~ THEN ~You must be mistaken, mylady, but I have neither acquaintances at Waterdeep nor do I know a girl named Sandrah. Now, please, no further disturbances in this business.~
==CVSandrJ IF~ InParty("CVSandr")~ THEN ~Thank you for this confirmation, mylord, but please understand that we need to be careful. That man has never seen me before nor do I know him, <CHARNAME>, he tells the truth. An imposter would surely have declared to remember me.~
== HurgisR IF~ InParty("CVSandr")~ THEN ~Even if I can understand your caution I hope we can end these tests by now. Time is pressing.~
END HurgisR 9

//Shar-Teel in Amn
INTERJECT IF_FILE_EXISTS Sharthug 0 SharInJail
== CVSandrJ IF ~InParty("CVSandr") GlobalGT("SanSharInt","GLOBAL",20) ~ THEN~ If we would not know it better, <CHARNAME>, I would swear this sounds like our good old wildcat Shar-Teel. What do you think?~
== Sharthug IF ~InParty("CVSandr") GlobalGT("SanSharInt","GLOBAL",20) ~ THEN~ Shar-Teel! You know this crazy bloodthirsty wench? I will not say any more words to you, you must all be a buch of madmen yourself. Let me outa here...~
END Sharthug 2

//Mekrath
INTERJECT_COPY_TRANS MEKRAT 16 SanMekCurse
== CVSandrJ IF ~InParty("CVSandr")~ THEN~ Vile wizard! You enslave not only imps but also people? Take his offer, <CHARNAME>, and let the poor man free. But you, mageling, your next spell attempt shall be a transportation directly to the Nine Hells.~
==MEKRAT IF ~InParty("CVSandr")~ THEN~ A priestess of Mystra...I heard you are able to bestow Mystra's curses on magic users you find not adequate to your goddess' recommendations. Did you just curse me, girl?~
== CVSandrJ IF ~InParty("CVSandr")~ THEN~ You will find out if you ever try to use Mystra's gifts again. (Her face is stony as she turns away from Mekrath.)~
END

//Hear Dalis 1st meeting
INTERJECT_COPY_TRANS HAERDA 0 SanHaerRel1
== CVSandrJ IF ~InParty("CVSandr")~ THEN~ A bird shall be free to sing and never be anyone's slave. You will not be kept by bounds to us that you do not accept yourself.~
==HAERDA IF ~InParty("CVSandr")~ THEN~ Words of utmost delight from the lips of a girl who can only be a dream, too wonderful to be real - both the words and the girl.~
== CVSandrJ IF ~InParty("CVSandr")~ THEN~ Come back to reality, wordy poet. Yes you must be a poet of sorts, a bard maybe?~
==HAERDA IF ~InParty("CVSandr")~ THEN~ Your bard from now on, mylady, bound by voluntary slavery to a mistress so kind and ...wait, what is that?~
= ~ You are one not bound by the chains of this plane yourself! How come we have never met before?~
== CVSandrJ IF ~InParty("CVSandr")~ THEN~ What are you talking about, my confused bard? I am of this plane, a human who has never left Toril except in her dreams.~
==HAERDA IF ~InParty("CVSandr")~ THEN~ Can it be? You are and you are not. Or maybe not yet. Your bird must nest close to your heart to find that out...~
END

INTERJECT_COPY_TRANS HAERDA 25 SanHaerRel2
== CVSandrJ IF ~InParty("CVSandr")~ THEN~ A bird shall be free to sing and never be anyone's slave. You will not be kept by bounds to us that you do not accept yourself.~
==HAERDA IF ~InParty("CVSandr")~ THEN~ Words of utmost delight from the lips of a girl who can only be a dream, too wonderful to be real - both the words and the girl.~
== CVSandrJ IF ~InParty("CVSandr")~ THEN~ Come back to reality, wordly poet. Yes you must be a poet of sorts, a bard maybe?~
==HAERDA IF ~InParty("CVSandr")~ THEN~ Your bard from now on, mylady, bound by voluntary slavery to a mistress so kind and ...wait, what is that?~
= ~ You are one not bound by the chains of this plane yourself! How come we have never met before?~
== CVSandrJ IF ~InParty("CVSandr")~ THEN~ What are you talking about, my confused bard? I am of this plane, a human who has never left Toril except in her dreams.~
==HAERDA IF ~InParty("CVSandr")~ THEN~ Can it be? You are and you are not. Or maybe not yet. Your bird must nest close to your heart to find that out...~
END

INTERJECT PPireni2 19 CVGodagJon
== CVSandrJ IF ~InParty("CVSandr")Global("CVGodag","GLOBAL",9)~ THEN~ How did the theft of Gorion's dagger help you in your plan?~
==PPireni2 IF ~InParty("CVSandr")Global("CVGodag","GLOBAL",9)~ THEN ~(Laughs harshly) Is that really all that puzzles you at such a moment, priestess?~
== CVSandrJ IF ~InParty("CVSandr")Global("CVGodag","GLOBAL",9)~ THEN~ It is the only question we are not able to answer by ourselves today, your other actions are quite transparent in their shrouded ways.~
==PPireni2 IF ~InParty("CVSandr")Global("CVGodag","GLOBAL",9)~ THEN ~ Whoever you are, girl, you don't bluff me. There is much more you don't know and I'm afraid you will never have a chance to find out anyway. But...why not...it will not hurt to tell you...~
=~I cannot assume that you know anything about <CHARNAME>'s mother since you don't even know anything about his or Imoen's FATHER.~
==CVSandrJ IF ~InParty("CVSandr")Global("CVGodag","GLOBAL",9)~ THEN~Thank you for this information, Irenicus. I think we share the same assumption, even if I do not yet see why <CHARNAME>'s mother would interest you. The dagger is the key to her identity but you have not resolved the issue.~
==PPireni2 IF ~InParty("CVSandr")Global("CVGodag","GLOBAL",9)~ THEN ~(Irenicus looks perplexed for a moment.) Ah, so YOU knew about Bhaal already, your interest is to this particular Bhaalspawn's mother. Why?~
==CVSandrJ IF ~InParty("CVSandr")Global("CVGodag","GLOBAL",9)~ THEN~It is not your concern, Irenicus, you have not the information I seek, so much is obvious.~
==PPireni2 IF ~InParty("CVSandr")Global("CVGodag","GLOBAL",9)~ THEN~Nor have you - and you will never find it as you will go down with <CHARNAME>.~
END PPireni2 19


//Underdark
INTERJECT_COPY_TRANS UDSOLA01 79 SanMeetsPhaere
== CVSandrJ IF ~InParty("CVSandr") Global("SanRomPath","GLOBAL",1)~THEN~ There may be some objection against such an attempted theft, Solaufein.~
== UDSOLA01 IF ~InParty("CVSandr") Global("SanRomPath","GLOBAL",1)~THEN~ I should have guessed that one as powerful as you claims Veldrin as her own. Guard him well, priestess, but do not forget that Ust Natha is not your town (yet).~
==UDPHAE01 IF ~InParty("CVSandr") Global("SanRomPath","GLOBAL",1)~THEN~ Hm, I have observed your fight and victory, priestess, but heed this warning - whoever you are in Ched Nasad, here it is my house who rules and takes what they want. ~
=~(You cannot but notice the slight uncertainty in Phaere's voice and the questioning look she gives Sandrah. A glance at Solaufein assures you that he observed the same.)~
END

INTERJECT_COPY_TRANS UDSOLA01 104 SanSolSnif
== CVSandrJ IF ~InParty("CVSandr")~ THEN~Let me be open to you, Solaufein, even at the risk that it is a mistake. We do not have the intention to become Phaere's marionetts ourselves.~
== UDSOLA01 IF ~InParty("CVSandr")~THEN~ I note your words, priestess, even as I choose not to comment on them now.~
== CVSandrJ IF ~InParty("CVSandr")~ THEN~ Neither would you relay them to your *mistress* - do not say a word, I trust you will not. You have no reason to trust us yet but maybe our action in this case will convince you of our true nature.~
== UDSOLA01 IF ~InParty("CVSandr")~THEN~ Whoever you are in Ched Nasad and why you came to our city, you impress me each time anew. You risk a lot but you are not foolish, you seem to have the power to back up your plan. But I will not wiggle free of one bondage to exchange it with the next one, mind that. For the case at hand - all you are required to do is bring back some artefact to the witch that makes her believe you did the deed.~
END

INTERJECT_COPY_TRANS UDARDUL 65 SanMMInt1b
== UDARDUL IF ~InParty("CVSandr")~THEN~ You, priestess, wait! Is that the one you were talking about, silly girl?~
==UDPHAE01 IF ~InParty("CVSandr")~THEN~ She has shown more than once that she is far superior to this Veldrin she pretends to follow, mother.~
== UDARDUL IF ~InParty("CVSandr")~THEN~ At least to this assesment I can for once agree, daughter. I can sense her power clearly.~
=~ For the time I have use for you and your party, priestess, but you are under close observation all the time. Ust Natha is OUR city - forget that for one single moment and Lolth will be upon you - do you understand?~
== CVSandrJ IF ~InParty("CVSandr")~ THEN~ Matron Mother, I seek not the fight with you, but do not speak for the Spider Queen if you are not really sure you are her favourite.~
== UDARDUL IF ~InParty("CVSandr")~THEN~(Hiss) We will see. Tumble once and be sure House Despana will give you the push into the spider pits. Now be off.~
END

INTERJECT JARLAXLE 40 SanJarNotso2
== CVSandrJ IF ~InParty("CVSandr") ~ THEN~ Did you really expect this to work with us, Jarlaxle.~
== JARLAXLE IF ~InParty("CVSandr") ~ THEN~ Sweetest priestess - yes, yes, I see through your disguise - even more alluring in your drow incarnation, why must we always meet under the worst of circumstances?~
== JARLAXLE IF ~InParty("CVSandr") Global("SanRomPath","GLOBAL",1)~ THEN~ Your choice of men...mh, mh, the looser Drizzt, or this male caricature <CHARNAME>...~
== JARLAXLE IF ~InParty("CVSandr") Global("SanRomPath","GLOBAL",2)~ THEN~ Your choice of bed mates...mh, mh, the looser Drizzt, or now even a female like <CHARNAME>...~
== CVSandrJ IF ~InParty("CVSandr") ~ THEN~ ENOUGH! My choice would surely not let me pick a lowly drow bandit and stupid murderer.~
== JARLAXLE IF ~InParty("CVSandr") ~ THEN~ Your anger only enhances your beauty - and stirs up my lust. I was to let you all depart here as part of my good will and fairness. But now my price has increased - there will be only one way to leave this pocket plane. After a night with you, proud priestess, in which you pay the fare for your companions.~
== JARLAXLE IF ~InParty("CVSandr") Global("SanRomPath","GLOBAL",2) ~ THEN~ Or maybe your girlfriend would even like to join us in our pleasures...~
== CVSandrJ IF ~InParty("CVSandr") ~ THEN~ (Laughs out loud) Drow, you obviously never learn. You would rather spend a night under the whips of two handmaidens of Lolth than to endure my wraith. You have just said goodbye to your life.~
== JARLAXLE IF ~InParty("CVSandr") ~ THEN~ If that is your last word, you have sentenced your friends and yourself to death.~ DO~ CreateCreature("breg03",[300.427],2)CreateCreature("breg03",[340.370],2) ActionOverride("breg01",Enemy())
Enemy()~
END JARLAXLE 41

INTERJECT JARLAXLE 38 SanJarNotso1
== CVSandrJ IF ~InParty("CVSandr") ~ THEN~ Did you really expect this to work with us, Jarlaxle.~
== JARLAXLE IF ~InParty("CVSandr") ~ THEN~ Sweetest priestess - yes, yes, I see through your disguise - even more alluring in your drow incarnation, why must we always meet under the worst of circumstances?~
== JARLAXLE IF ~InParty("CVSandr") Global("SanRomPath","GLOBAL",1)~ THEN~ Your choice of men...mh, mh, the looser Drizzt, or this male caricature <CHARNAME>...~
== JARLAXLE IF ~InParty("CVSandr") Global("SanRomPath","GLOBAL",2)~ THEN~ Your choice of bed mates...mh, mh, the looser Drizzt, or now even a female like <CHARNAME>...~
== CVSandrJ IF ~InParty("CVSandr") ~ THEN~ ENOUGH! My choice would surely not let me pick a lowly drow bandit and stupid murderer.~
== JARLAXLE IF ~InParty("CVSandr") ~ THEN~ Your anger only enhances your beauty - and stirs up my lust. I was to let you all depart here as part of my good will and fairness. But now my price has increased - there will be only one way to leave this pocket plane. After a night with you, proud priestess, in which you pay the fare for your companions.~
== JARLAXLE IF ~InParty("CVSandr") Global("SanRomPath","GLOBAL",2) ~ THEN~ Or maybe your girlfriend would even like to join us in our pleasures...~
== CVSandrJ IF ~InParty("CVSandr") ~ THEN~ (Laughs out loud) Drow, you obviously never learn. You would rather spend a night under the whips of two handmaidens of Lolth than to endure my wraith. You have just said goodbye to your life.~
== JARLAXLE IF ~InParty("CVSandr") ~ THEN~ If that is your last word, you have sentenced your friends and yourself to death.~ DO~ CreateCreature("breg03",[300.427],2)CreateCreature("breg03",[340.370],2) ActionOverride("breg01",Enemy())
Enemy()~
END JARLAXLE 41

INTERJECT_COPY_TRANS Player1 33 SanTreeLife
==Player1 IF~ InParty("CVSandr") ~ THEN ~ (You feel a small hand slip into yours and you instictively return a tender squeeze.)~
== CVSandrJ IF ~InParty("CVSandr")~ THEN ~ (You look at Sandrah and she gives you one of her enigmatic smiles.) ~
==Player1 IF~ InParty("CVSandr") ~ THEN ~ (You take her hand and feel once again the power and confidence she constantly has given you since that day long ago when you had to leave Candlekeep.)~
=~ (You return her smile as with Sandrah you need no words. You have no more doubt - with her by your side Irenicus will fall.)~ DO~IncrementGlobal("Sanpoints","GLOBAL",20)~
END

//Valygar's Friends
INTERJECT_COPY_TRANS IF_FILE_EXISTS Valran01 0 Sanderrik
==CVSandrJ IF ~InParty("CVSandr")Global("SanValgyR","GLOBAL",0)~ THEN~ Derrick? The silent elf ranger, who used to watch and never talk?~
== Valran01 IF ~InParty("CVSandr")Global("SanValgyR","GLOBAL",0)~ THEN~ Sandrah!! The girl who always let me loose every thought I had for every word I might have wanted to tell her.~
== CVSandrJ IF ~InParty("CVSandr")Global("SanValgyR","GLOBAL",0)~ THEN~ You are with friends up here in the woods? You mentioned someone named Valygar.~
== Valran01 IF ~InParty("CVSandr")Global("SanValgyR","GLOBAL",0)~ THEN~ Obviously you don't know him and were not sent to persuit him.~
== Valran01 IF ~InParty("CVSandr")Global("SanValgyR","GLOBAL",0)~ THEN~ Mmh, I definitely trust you, Sandrah, maybe you and your friends may be able to help someone in trouble with the cowled wizards in Athkatla.~
== CVSandrJ IF ~InParty("CVSandr")Global("SanValgyR","GLOBAL",0)~ THEN~ They are not our friends, for sure. Actually we can need any ally against them.~
== Valran01 IF ~InParty("CVSandr")Global("SanValgyR","GLOBAL",0)~ THEN~ My friend is in his cabin nearby. (Laughs) Maybe he has more success with you, Sandrah, even if he rarely uses more words than I did.~
END

INTERJECT_COPY_TRANS Imoen2 19 SanImoReAsy
== CVSandrJ IF~ InParty("CVSandr")~THEN~ Let me heal your wounds *quickest* - at least those on your body.~ DO~ActionOverride("CVSandr",ReallyForceSpell("Imoen2",CLERIC_HEAL))~
==Imoen2 IF~ InParty("CVSandr")~THEN~ Oh, besta friend, I wish you could heal it all and make me myself again but I kinda guess my case is even beyond your skills.~
== CVSandrJ IF~ InParty("CVSandr")~THEN~ You are not one to give up yourself and I am not one to give up a patient in need, Imoen. If we travel together again we will find a way to help you and <CHARNAME> and make it all end well...If we travel together again...(She looks at you and it is clear which decision she expects from you now.)~END


//========================================================================
// CHAIN Below
//========================================================================

//Irenicus Dungeon

CHAIN
IF ~~THEN CVSandrJ BG2Reunion16
~ <CHARNAME>, your equipment has been taken, probably by those greedy Duergars. With my magic parcel I may be able to retrieve some of our valuable items, if you want me to. ~
==IF_FILE_EXISTS D#Silver IF~InParty("D#Silver")~ THEN ~ Maybe those greedy Duergars have laid their hands on Mommy!~
==CVSandrJ IF~InParty("D#Silver")~ THEN ~ Looks like our capturer has kidnapped others as well. You grieve for your lost Mommy then?~
==IF_FILE_EXISTS D#Silver IF~InParty("D#Silver")~ THEN ~We must find my Mommy. The Master has hidden her in a box. ~
==CVSandrJ IF~InParty("D#Silver")~ THEN ~ A box?...I see...An assassin would refer to her favourite weapon as *Mommy*.~
END
++ ~ Thanks for reminding me of that. We will have a lot to talk about later. For now our task is to get out of here quickly.~ EXIT


// Athkatla Promenade

CHAIN
IF ~ Global("waukleofree","GLOBAL",1)~ THEN CVSANDRJ PellFreeLeo
~ (The ground seems to shake below you, you look at Sandrah for an explanation.) ~
DO~ SetGlobal("waukleofree","GLOBAL",2)~
== PELLIG ~ GRROOOWWL!~
==  CVSandrJ ~ I see. She hates that Leopard being caged and exposed like that.~
== PELLIG ~ GRROOOWWL!~
EXIT

CHAIN
IF ~ Global("waukleofree","GLOBAL",4) ~ THEN CVSANDRJ PellFreeLeo2
~ I hope you do not get us in trouble with those cowled wizards, Pelligram.~
DO~ SetGlobal("waukleofree","GLOBAL",5)~
== PELLIG ~ Purr. (Pelligram rubs her nose at Sandrah's leg and seems to be utterly satisfied with her deed.)~
==  CVSandrJ ~ Pelligram, that was an unsanctioned use of magic within the city limits. (Laughs) Wonder if those cowls really want to incarcerate her for that. But one never knows, mind you, <CHARNAME>, magic use without their approval is strictly forbidden in Athkatla.~
END
++ ~ What was that? Did Pelligram do that?~ + PellFreeLeo3
++ ~ Use of magic os forbidden here. Is that why they took Imoen with them?~ + PellFreeLeo4

CHAIN
IF~~ THEN CVSANDRJ PellFreeLeo3
~ You know that she is a companion of Mystra to accompany me on my way. I found her in a cage like that to be trained for the arena and pit fights. (Smiles) Although I now think, that was just a charade of my goddess for me to find and free her.~ EXIT

CHAIN
IF~~ THEN CVSANDRJ PellFreeLeo4
~ The cowled wizards control all use of magic here in the city. To use those powers without penalty you need to get their approval. Like everything in a city like this, you can get that probably through bribe. We just need to find the right person for that.~ EXIT

//Cult of the Beast
CHAIN
IF ~ Global("SanDestBeastCult","GLOBAL",1) ~ THEN CVSANDRJ DestBeastCult
~ It is time to stop with this, <CHARNAME>! These children you are asked to kill are real this time. We will not spill their blood.~
DO~ SetGlobal("SanDestBeastCult","GLOBAL",2) ~
==CultBeH ~ Silly girl, who are you to interfer with this most holy ritual?~
== CVSandrJ ~ Holy? I have never encountered a gang of miscreeds worse than you and the Beast you worship. We have played along your lines until now to learn all about your cult and its belief. We know enough now and we will end it.~
==CultBeH ~ You have no idea of the holy powers you are facing.~
== CVSandrJ ~ You and your beast will scare Toril no longer. It is you who errs about whom he is facing today.~
==CultBeH ~ (The Highest priest seems to fall into a kind of trance for a minute. As he opens his eyes again you can swear you see sheer panic in his gaze at Sandrah for an instant.) ~
=~ You. you...who are you really...what amount of power...~
== CVSandrJ ~ I am Sandrah, priestess of Mystra, and I am your destructor.~
==CultBeH ~ A mere priestess...I see...not the goddess herself? Not all is lost then, my fellowers.~
END
++~ He took you for Mystra herself? It is time to end this bloody experience.~ EXTERN CULTBEH 53
++~ You are right, Sandrah, we can learn no more and must stop this cult.~  EXTERN CULTBEH 53

//SanSunRitual
CHAIN
IF~~ THEN CVSANDRJ SanSunRitual
~ Thank you for your trust, <CHARNAME>. Pose your questions, watcher.~
==SHAAVA01 ~It is the morning, oh seeker of light. What is your first task?~
== CVSandrJ ~ I will start the day with a prayer to the light.~
=~ I will then hold the holy book to the light so it will be blessed.~
= ~I will afterwards meditate on the glory of the light that defeats the darkness.~
 ==SHAAVA01 ~  So ends the morning ritual, child.~
 =~The sun is now high in the sky. The time for the noon ritual has come. What will be your action to praise your Lord, child?~
== CVSandrJ ~ I will recity a hymn in praise of Amaunator.~
=~I will continue my praise by raising my hands to the sun.~
=~ I will finally enjoy the dominance of the sun at its highest point.~
==SHAAVA01 ~ Darkness is nearing and it will be time for the evening ritual to be performed to ward off the evil. What will you do?~
== CVSandrJ ~ I will recite the rules of the faith first.~
=~ Then I will hold my children high for them to see the setting sun.~
=~ I continue with mourning the fact that the sun temporarily has to withdraw from the assault of the darkness.~
==SHAAVA01 ~ So ends the evening ritual.~
END
++~I am once again impressed by your knowledge, Sandrah.~ EXTERN SHAAVA01 12

//Survival Solaufein
CHAIN
IF~~THEN CVSANDRJ NotKillSola
~ Males! YOU WILL DROP YOUR WEAPONS IMMEDIATELY! <CHARNAME>, stand back! Solaufein, come here!~
==UDSOLA01~ Priestess, I told you already I will not exchange one of you for another tyrant.~
== CVSandrJ ~ My interest in you is not such, Solaufein, you have nothing to fear of me. I will only give you one order and you will not regret to follow it.~
==UDSOLA01~ <CHARNAME>? Mh, I guess that's *Veldrin's* real name - a rare name for a *drow*. May I ask yours too, priestess?~
== CVSandrJ ~Sandrah, and that surely is no drow name. But it is a name that stands for keeping the promises I give to anyone.~
==UDSOLA01~(Laughs harshly) You have played your role well, Sandrah, as Phaere and her mother take you as a Matron from Ched Nasad in disguise. What is it you want down here, surfacers?~
== CVSandrJ ~ The same that you want - to get out of here and maybe even prevent the war between two brother races.~
==UDSOLA01~Brother races? Do you really know what you are talking about?~
== CVSandrJ ~ There are drow whom I call my friends, Solaufein. You are not afraid of Lolth as are those drow who follow Eilistraee and dream of the two races to unite again one day.~
==UDSOLA01~You impress me once again, Sandrah, just as before already. So what is the one order you want to give me?~
==CVSandrJ ~ Give us your Piwafwi.~
==UDSOLA01~ What? That is all.~
END
++~The coat is what Phaere requires as proof for your death.~ EXTERN UDSOLA01 128

CHAIN
IF~~THEN CVSANDRJ SanUDJarlAgain
~<CHARNAME>, he has found ways already in the past to reemerge by some foolish magician's aid. We can only find out if we bite into this hook - knowing it is another of his traps.~
==BREG01~ I see you are acqauinted with Jarlaxle, mylady. Make out of it what you want, my offer stands and I know nothing more but what I told you already.~
END
++~Right, Sandrah, we must take the risk in order to find out. Man, go on but make it quick and avoid trying to fool us.~EXTERN BREG01 8

CHAIN
IF WEIGHT #-18~!InPartySlot(LastTalkedToBy,0) Gender(Player1,MALE) IsGabber("CVSandr") Global("SolaufeinJob","GLOBAL",5)Global("PhaereJob","GLOBAL",1) Global("SanRiva","LOCALS",0)~THEN UDPHAE01 sanRival
~ You make a claim on that Veldrin, priestess. Mind that you walk on thin ice here in Ust Natha. You will regret it if you try to deny him to me. He's not so important that you can't forget or replace him, he?~
DO~SetGlobal("SanRiva","LOCALS",1)~
==CVSandrJ~(Her smile looks threatening in her drow appearance.) I have no intention to fight over him with you. I know your type well enough to know you will not be interested in him very long. He will return to me full of useful information and added skills should you really let him close to you.~
==UDPHAE01~Ah, a loyal male you have. He may not return to you at all when I'm finished with him.~
==CVSandrJ~You would not be so foolish as not to return him to me unharmed. All of Ust Natha's powers will not protect you from my rage in such a case.~
==UDPHAE01~By Lolth, who are you to talk to me like that in my own place?~
==CVSandrJ~I am sure you would not like to find that out the hard way...~
==UDPHAE01~.....~EXIT

//========================================================================
// APPEND Below
//========================================================================
APPEND IMOENJ

IF ~~ THEN BEGIN BG2ReunionImo
SAY ~This monster man will pay for all, besta friend Sandrah, he'll feel your hammer and my fireball, I swear and swear it. But it's good that nothing could part us after all. ~
IF ~~ THEN EXTERN CVSANDRJ BG2Reunion10
END
END

APPEND JAHEIRAJ
IF ~~ THEN BEGIN BG2ReunionJah
SAY ~ Have you met Khalid already on the way you have come, my dearest friend? We were separated and I heard screams but we have not found a trace of him yet.~
IF ~~ THEN EXTERN CVSANDRJ BG2Reunion11
END
END

APPEND MINSCJ
IF~~ THEN BEGIN BG2ReunionMinsc
SAY ~ Uuuuaah! Sandrah, they have killed her! Minsc and Boo had to watch and could do nothing when that monster cut our witch with his knifes. Who could do such a thing and why? Uuuuaaah! We must find him and stop him. We owe this to Dynaheir.~
IF ~~ THEN EXTERN CVSANDRJ BG2Reunion12
END
END


APPEND Wulfg2J 
IF~~ THEN BEGIN BG2Reunionwul
SAY ~ Wulfgar, son of Beornegar from Icewind Dale. It is a pleasure to meet the famous Sandrah. I have heard already much in favour of you, although my witness' statements , Drizzt's words, may have been a bit tinted by his own feelings for you.~
IF ~~ THEN EXTERN CVSANDRJ BG2Reunion14
END
END

APPEND IDJinni
IF WEIGHT #-5~PartyHasItem("misc4d")Global("CVGodag","GLOBAL",8)~THEN BEGIN NotDag1
SAY~ You have the flask so we can do the exchange now.~
IF~~THEN REPLY~I would have done almost anything to get back Gorion's dagger, however you came to know of that!~GOTO NotDag2
END

IF~~THEN BEGIN NotDag2
SAY~The dagger? I am afraid that is not what I have for you. The dagger you talk about seemed to have some importance for the master himself, he took it with him, I fear. I hope you will find the item I give you of much more value in your present state.~
IF~~THEN DO~SetGlobal("CVGodag","GLOBAL",9) AddJournalEntry(@907,QUEST)~ GOTO 12
END
END


APPEND BEAST
IF~~ THEN BEGIN 77
SAY~ Come, Tabitha! Come...open the cages! Aid your master!~
  IF ~~ THEN DO ~OpenDoor("DOOR19")
OpenDoor("DOOR20")
OpenDoor("DOOR21")
OpenDoor("DOOR22")
OpenDoor("DOOR23")
OpenDoor("DOOR24")
ActionOverride("Tabitha",ChangeAIScript("Randwalk",OVERRIDE)) 
ActionOverride("Tabitha",Ally())
Enemy()
~ EXIT
END
END

APPEND HENDAK
IF~~THEN BEGIN 210
SAY~ Please, <CHARNAME> do not make the time to your next visit too long. ~
IF~~ THEN DO ~ SetGlobal("SanHendAff","GLOBAL",2)RealSetGlobalTimer("SanHendAffT","GLOBAL",1200)~ EXIT
END 

IF~~THEN BEGIN 211
SAY~ You are a wonderful woman, Sandrah. ~
IF~~ THEN DO ~ SetGlobal("SanHendAff","GLOBAL",4)RealSetGlobalTimer("SanHendAffT","GLOBAL",1200) RestParty()~ EXIT
END 
END

APPEND IF_FILE_EXISTS ACBreJ
IF~~ THEN BEGIN BG2ReunionBre
SAY ~ Mmmpf. Why do we stand around and waste our breath with talk instead of smiting those bastards? And, yes, it's good to have your hammer back again in the group. (His beard hides his smile, but not completely.) ~
IF ~~ THEN EXTERN CVSANDRJ BG2Reunion13
END
END

APPEND IF_FILE_EXISTS RCHLOEJ
IF~~ THEN BEGIN  BG2Reunionchlo
SAY ~ I am Chloe, a kensai of the Yr'kai tribe and I was hired by the Shadow Thieves to assist them in their attack against this dungeon. I am currently a sellsword, so I do not have much background about what happens here. But <CHARNAME> invited me to make it out of here together. (My, is she lovely!)~
IF ~~ THEN EXTERN CVSANDRJ BG2Reunion15
END
END

APPEND  UDPHAE01
IF~~THEN BEGIN 300
SAY~ Oh, that priestess? Who is she, a handmaiden or some Matron's daughter who's collar who have to wear? Ah, you cannot tell me anyhow as her tortures would be even greater than what I can make you fear.~
=~Poor one, but I have more urgent things to do at the moment than to start a fight with one like her.~
IF~~THEN REPLY~ I am glad you understand the dilemma. I will suffer even for this precious moment here with you.~DO~SetGlobal("PhaereInnuendo","GLOBAL",3)SetGlobal("PhaereFixMRAe","GLOBAL",1)SetGlobal("PhaereFixMRVi","GLOBAL",1) SetGlobal("PhaereFixMRJa","GLOBAL",1)~ GOTO 113
END
END

APPEND DOGHMA
IF~~THEN BEGIN 101
SAY~ This knowledge is for some only, for the chosen seekers, lore older than Oghma himself.~
IF~~THEN REPLY~ My companion Sandrah is such a seeker, it is her bloodline she investigates.~ GOTO 102
END

IF~~THEN BEGIN 102
SAY~ I see that you may have a valid reason to ask because it is the bloodlines that the book records. Only the book can decide if Sandrah has a right to know or not. Unfortunately I cannot tell you where you can find it. It is not with Oghma but with the one before.~
IF~~THEN EXIT
END
END

EXTEND_TOP SHAAVA01 4 #1
IF~InParty("CVSandr") ~THEN REPLY ~ I think, my counselor, this seems to be a task for you and and your neverending knowledge of lore.~ EXTERN CVSANDRJ SanSunRitual
END

//Dealing With Solaufein

ADD_TRANS_TRIGGER UDSOLA01 121 
~!InParty("CVSandr")~

EXTEND_BOTTOM UDSOLA01 121
IF ~InParty("CVSandr")~ THEN REPLY ~Wait! We don't have to do it!!~ EXTERN UDSOLA01 126
IF ~InParty("CVSandr")~ THEN REPLY ~Let's do it quickly, Solaufein.~ EXTERN CVSANDRJ NotKillSola
END

ADD_TRANS_TRIGGER UDSOLA01 127
~!InParty("CVSandr")~

EXTEND_BOTTOM UDSOLA01 127
IF ~InParty("CVSandr")~ THEN REPLY ~Wait! We don't have to do it!!~ EXTERN UDSOLA01 126
IF ~InParty("CVSandr")~ THEN REPLY ~Let's do it quickly, Solaufein.~ EXTERN CVSANDRJ NotKillSola
END

EXTEND_BOTTOM UDPHAE01 110
IF ~InParty("CVSandr")~ THEN REPLY ~ It's someone even you will respect, Phaere, I have no choice.~GOTO 300
END

EXTEND_BOTTOM UDPHAE01 106
IF ~InParty("CVSandr")~ THEN REPLY ~ It's someone even you will respect, Phaere, I have no choice.~GOTO 300
END

ADD_TRANS_TRIGGER UDARDUL 16
~!InParty("CVSandr")~

EXTEND_BOTTOM UDARDUL 16
IF ~InParty("CVSandr")~ THEN REPLY ~I will try to do my best, Mother Matron.~DO~ SetGlobal("MatronJob","GLOBAL",2)~ GOTO 65
IF ~InParty("CVSandr")~ THEN REPLY ~Forget it, tyrant. I have no intention to aid your course in any way.~ GOTO 66
END

EXTEND_BOTTOM BREG01 7
IF~ InParty("CVSandr")~ THEN REPLY ~But Jarlaxle is dead, we have killed him ourselves.~ EXTERN CVSANDRJ SanUDJarlAgain
END

EXTEND_BOTTOM DOGHMA 0
IF~ InParty("CVSandr") Global("SanKhalBlood","GLOBAL",4) ~ THEN REPLY ~ Have you ever heard about a book that is called *The Book that Writes Itself*?~ GOTO 101
END

EXTEND_BOTTOM Demson 74
IF~ InParty("CVSandr")~ THEN REPLY ~My companion Sandrah and I have fought the slavers whenever we caught a glimpse of their activities. We will act against them with all our force.~ GOTO 75
END

EXTEND_BOTTOM Demson 86
IF~ InParty("CVSandr")Dead("HurgisF")!Dead("Plgirl01")~ THEN REPLY ~My counselor Sandrah has demasked the villain who claimed to be Hurgis Baltezan. The child is save.~ GOTO 90
END

APPEND Hellfear
IF~~THEN BEGIN 101
SAY~ An unexpected opinion from one who is as powerful as you. No one can succeed alone. Friends and lovers form our soul like our heritage and our goals. Bhaalspawns there are many but none I have encoutered with such wisdom.~
IF~~THEN DO~ IncrementGlobal("Sanpoints","GLOBAL",5)~GOTO 15
END
END

APPEND SUELLE2
IF WEIGHT #-4 ~Global("RE_Suelle2Interject2","GLOBAL",1) InParty("CVSandr") Global("SanSecond","LOCALS",0)~ THEN BEGIN Second
SAY~ <CHARNAME>.~
IF~~ THEN DO~SetGlobal("SanSecond","LOCALS",1)~ GOTO 6
END
END

EXTEND_BOTTOM Hellfear 14
IF~ InParty("CVSandr")~ THEN REPLY ~I do not need your doubtful gift. My companion Sandrah knows no fear when it comes to destruct what is evil. I trust and rely on my companions as much as I trust myself. She will go ahead for me.~ GOTO 101
END

EXTEND_BOTTOM Rylock 25
IF~Global("TalkedToLyros","GLOBAL",1) Global("LyrosJob","GLOBAL",0) InParty("CVSandr")~THEN REPLY~ This is the Harper's headquarter here in town, isn't it?~GOTO 9
END

EXTEND_BOTTOM Rylock 9
IF~Global("TalkedToLyros","GLOBAL",1) Global("LyrosJob","GLOBAL",0) InParty("CVSandr")~THEN REPLY~A mage named Xzar told me.  He wanted to gain entry to the compound and retrieve his companion.~ GOTO 59
END

EXTEND_BOTTOM TRGyp02 2
IF~ !InPartySlot(LastTalkedToBy,0) Name("CVSandr",LastTalkedToBy) ~THEN GOTO GypSanFortn
END

CHAIN
IF~~THEN TRGyp02 GypSanFortn
~Lines of great strength and a long past is what I see in your hand even from here, young priestess...~
==CVSandrJ~ (With an amused smile playing around her lips Sandrah stretches out her hand to the fortune teller.)~
==TRGyp02~(Kveroslava, the fortuneteller, takes Sandrah's hand and looks at her palm with the eyes of an expert.)~
=~Yours is a future that is related to...powers, great powers...can it be?~
=~(Kveroslava suddenly looks from Sandrah to you, her eyes wide with horror.)~
=~Powers I cannot see and do not want to see - you will face them, you have no choice.~
==CVSandrJ~We always have a choice, mylady, it is us who shape our own fate in the end.~
==TRGyp02~(Kveroslava has suddenly calmed down again.) We must be strong to withstand fate. Maybe it is such a strength why your future escapes my sight... keep your coins, please. I... don't have the power to discern the path of one such as you.~ DO ~GiveGoldForce(10)
ActionOverride(Player1,SetDialogue("Player1"))~EXIT
