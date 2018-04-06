BEGIN CVSan25J

IF ~ IsGabber(Player1) Global("SanPidPack","GLOBAL",16) ~ THEN BEGIN SanPCInit16
SAY ~ (Her enigmatic smile is invitation and challenge at the same moment.)~
IF~~THEN REPLY~ (Smile back at her. Her presence alone gives you back your confidence once again.)~EXIT
IF~AreaCheck("ar4500") Global("LeavingPocketPlane","AR4500",0) Global("SanPoPla","LOCALS",0)GlobalLT("BeginChallenge1","GLOBAL",9) ~THEN REPLY~Has my counsellor any advice for me right now?~ GOTO SanPoPla1
IF~GlobalGT("BeginChallenge1","GLOBAL",9) GlobalLT("SanPoPla","LOCALS",2)~THEN REPLY~Has my counsellor any advice for me right now?~ GOTO SanPoPla4
IF~!AreaCheck("ar4500") Global("SanPoPla","LOCALS",2)~THEN REPLY~ What is your idea about the enemy we are now facing? ~DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~ GOTO SanPoPla10
IF~InParty("Sarevok") GlobalGT("SanSarev","GLOBAL",8) Global("SarevPid","LOCALS",0)~ THEN REPLY~You talk with Sarevok quite intensely - how do you think he's faring?~ GOTO SanSarevPid1
IF ~RandomNum(5,1)~THEN REPLY~It is really a long road we have taken together by now, Sandrah.~ GOTO SanLongPid11
IF~Global("Talos25R","GLOBAL",3) GlobalLT("SanGodInvolve","GLOBAL",3)~THEN REPLY~It seems the damned gods mingle with my affairs more than AO has allowed - and more than I like.~ DO~SetGlobal("Talos25R","GLOBAL",4)IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanMinglGod1
IF ~RandomNum(5,2)~THEN REPLY~ It is really a long road we have taken together by now, Sandrah.~ GOTO SanLongPid12
IF ~RandomNum(5,3)~THEN REPLY~It is really a long road we have taken together by now, Sandrah.~ GOTO SanLongPid13
IF ~RandomNum(5,4)~THEN REPLY~It is really a long road we have taken together by now, Sandrah.~ GOTO SanLongPid14
IF ~RandomNum(5,5)~THEN REPLY~It is really a long road we have taken together by now, Sandrah.~ GOTO SanLongPid15
IF~Global("SanMystApToB","GLOBAL",4) Global("SanCyrInvolve","LOCALS",0)~THEN REPLY~ What did Mystra mean when she talked about Cyric's interest in the Bhaalspawn war?~GOTO SanCyricwar1
IF~Global("CVAR3001","GLOBAL",1) Global("CVAR3020","GLOBAL",0) Global("WhoImpr","LOCALS",0)~ THEN REPLY~ Do you have an idea what awaits us down there in Watcher's Keep, counsellor.~DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanWKStory1
IF~ Global("SanDesTroll","LOCALS",2) NumItemsPartyLT("arow04",5) AreaType(FOREST)  ~ THEN REPLY~ Sandrah, we are quickly running out of acid arrows. Can you provide us with some once again?~ GOTO SanAcArF25
IF~ Global("SanDesTroll","LOCALS",2) NumItemsPartyLT("arow04",5) !AreaType(FOREST)  ~ THEN REPLY~ Sandrah, we are quickly running out of acid arrows. Can you provide us with some once again?~ GOTO SanAcArNF25
IF~PartyHasItem("plot04j") AreaCheck("Ar3017") Range("Belljar",12)~ THEN REPLY~Sandrah, do you have an idea how this machine can open the door to the level below?~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanOpenLum1
IF~PartyHasItem("plot04j") AreaCheck("Ar3017") !Range("Belljar",12)~THEN REPLY~Sandrah, do you have an idea how this machine can open the door to the level below?~DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanOpenLum3
IF~Global("CVGodag","GLOBAL",13) !Global("San25ChiQuest","GLOBAL",0)~THEN REPLY~You remember those initials on Gorion's dagger?~DO~SetGlobal("CVGodag","GLOBAL",14)~GOTO GodagTob1
IF~~THEN REPLY~Your hammer seems to be stuck.~GOTO SanHamCltob
IF~~THEN REPLY~ Never mind.~EXIT
END

IF~~THEN BEGIN GodagTob1
SAY~A...like Alianna, not K like Khalindra. ~
IF~~THEN REPLY~She was not Gorion's lover like he wrote to me in his Candlekeep letter but he knew her and she was my mother.~GOTO GodagTob2
IF~~THEN REPLY~Gorion loved a Bhaalist of the worst type, he killed her and kept her child. I don't believe he could have lied to me like that.~GOTO GodagTob2
END

IF~~THEN BEGIN GodagTob2
SAY~She was your mother and he killed her. Would you be here today if he had told you that story in the letter instead?~
IF~~THEN REPLY~Who knows...~ GOTO GodagTob3
IF~~THEN REPLY~Sure, it is my destiny after all,~ GOTO GodagTob3
IF~~THEN REPLY~Would you be? I guess you would...~ GOTO GodagTob3
END

IF~~THEN BEGIN GodagTob3
SAY~That dagger Gorion preserved for you was the weapon to sacrifice you with, to make your essence return to Bhaal. Do you remember what Sarevok said at your encounter in hell before the battle with Irenicus?~
IF~~THEN REPLY~Not in enough detail to see what you are aiming at.~ GOTO GodagTob4
IF~~THEN REPLY~Something about his essence having returned to our *father*, wasn't it.~ GOTO GodagTob4
END

IF~~THEN BEGIN GodagTob4
SAY~I think it explains why all these Bhaalspawns in Saradush had to die...a large harvest...~
IF~~THEN REPLY~Did we not assume, like Alaundo had promised, they would eliminate each other until the strongest would fight over Bhaal's throne?~ GOTO GodagTob5
END

IF~~THEN BEGIN GodagTob5
SAY~Viekang and all those others in the town, even Gromnir - <CHARNAME>, none of them was a match for you or those Five. Those were not aspirants for the next God of Murder.~
IF~~THEN REPLY~ Fuel - their essence is required.~ GOTO GodagTob6
IF~~THEN REPLY~ Those streams of blood I dreamed about on the Sword Coast.~ GOTO GodagTob6
END

IF~~THEN BEGIN GodagTob6
SAY~Who needs that fuel? The essence that was gathered did not make you as one of the remaining Bhaalspawns any stronger. I doubt that it did anything for the ones remaining from the Five.~
IF~~THEN REPLY~A traitor in your midst, the one who pulls the strings?~GOTO GodagTob7
IF~~THEN REPLY~Who needs the essence to return to Bhaal's Realm? ~ GOTO GodagTob7
END

IF~~THEN BEGIN GodagTob7
SAY~Has Bhaal really created all these spawns and distributed his essence in loving care for a potential successor? Gods are not known to accept the fact that they may NOT be eternal,~
=~What do we get if all the essence of Bhaal would return to his former Realm again?~
IF~~THEN REPLY~(What would we get? The answer you give yourself is disturbing) Are we all nothing but fuel for HIM?~DO~AddexperienceParty(15000)IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
IF~~THEN REPLY~They tried to harvest my essence with this dagger - as long as it remains in my possession no one will make use of MY essence.~ DO~AddexperienceParty(15000) IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
END

IF~~THEN BEGIN SanHamCltob
SAY~Let me check it.~
IF~~THEN DO~ReallyForceSpellRES("SanHamCL",Myself)~EXIT
END

IF~~THEN BEGIN SanOpenLum1
SAY~I have made notes of all the scribbled madness we found in this Keep, let me look at Carson's book again...Hmm, yes,....I see...~
=~She starts to manipulate the different devices of the machine while the humming and vibration increases steadily.~
IF~~THEN REPLY~ STOP - stop it before you blow us all to the abyss.~EXIT
IF~~THEN REPLY~(Let her continue.)~GOTO SanOpenLum2
END

IF~~THEN BEGIN SanOpenLum2
SAY~(She pulls the last lever and steps back a bit.) That should be it.~
=~You hear the crackle of energy and the pop of power from the formerly inactive magical gate in the north-east corner of the room. The way down to the next level is now open.~
IF~~THEN DO~EraseJournalEntry(63824)
SetGlobal("StairButton","GLOBAL",1)
SetGlobal("circle","GLOBAL",0)
SetGlobal("square","GLOBAL",0)
SetGlobal("triangle","GLOBAL",0)
SetGlobal("red","GLOBAL",0)
SetGlobal("blue","GLOBAL",0)
SetGlobal("green","GLOBAL",0)
SetGlobal("short","GLOBAL",0)
SetGlobal("medium","GLOBAL",0)
SetGlobal("long","GLOBAL",0)
SetGlobal("counter","GLOBAL",0)
AddXP2DA("PLOT6D")~ EXIT
END

IF~~THEN BEGIN SanOpenLum3
SAY~We need to get closer to the machine so I can reach the levers and knobs.~
IF~~THEN EXIT
END

IF~~THEN BEGIN SanAcArF25
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

IF~~THEN BEGIN SanAcArNF25
SAY ~ We need some material for it, <CHARNAME>, which is not available around here. We will find it in the next forest on our way. I will produce us some arrows then.~
IF~~THEN REPLY~ I see, not everything you can do is by magic, it's alchemy and handicraft this time.~ DO~ SetGlobal("SanDesTroll","LOCALS",3) ~EXIT
END

IF~ Global("SanDesTroll","LOCALS",4)~THEN BEGIN SanAcArNF225
SAY~ You asked me for some acid arrows some time ago, <CHARNAME>. Around here is all I would need to produce us some.~
IF~~THEN REPLY~ Thank you, but our quivers are filled at the moment. I will ask you again if we need some.~ DO~ SetGlobal("SanDesTroll","LOCALS",2)~EXIT
IF~~THEN REPLY~ Very good, I almost forgot it, but my sweet counsellor did not. Go ahead, Sandrah.~  GOTO SanAcArF25
END

IF~~THEN BEGIN  SanWKStory1
SAY~ As Odren has told you, the imprisonment of the evil creature goes back to the Time of Troubles. Unconfirmed lore has it that not only gods walked on Faerun in their avatars but also creatures of the Abyss including Demogorgon himself. Only Helm was allowed to maintain his status as a god by Ao's verdict. It is therefore a plausible assumption that the Keep holds such an avatar.~
IF~~THEN REPLY~You mean the Prince of Demons waits for us down there?~ GOTO SanWKStory2
IF~~THEN REPLY~We are to fight the Overlord of the Abyss? That is sheer madness!~ GOTO SanWKStory2
END

IF~~THEN BEGIN  SanWKStory2
SAY~ It would be *just* his mortal avatar - probably still the most dangerous and evil creature imaginable. And remember that it is not confirmed yet, even the members of the order do not know the identity of the Imprisoned One. ~
=~ Still Helm's personal dealing with the case is an indication that the Imprisoned One is indeed Demogorgon's avatar.~
IF~~THEN REPLY~ His *mortal* avatar as you stated. ~DO~SetGlobal("WhoImpr","LOCALS",1)~EXIT
END

IF~~THEN BEGIN SanMinglGod1
SAY~I hope you do not let Talos' words bring mistrust to our union. Should my presence at your side allow the interpretation that Mystra is involved, others may indeed use this as a loophole. I just hope my aid compensates for that.~
IF~~THEN REPLY~It surely does.~ GOTO SanMinglGod2
IF~~THEN REPLY~Go on.~ GOTO SanMinglGod2
IF~~THEN REPLY~Ah, those who have an interest in the Bhaalwar are those that would have found this or any other excuse to mingle in our affairs.~ GOTO SanMinglGod2
END

IF~~THEN BEGIN SanMinglGod2
SAY~(Sigh) Once this quest is over we should really deal with those constant interferences of the celestials on the Prime. This is our plane!~
IF~~THEN REPLY~Are you trying to declare a war to the gods, Sandrah?~ GOTO SanMinglGod3
END

IF~~THEN BEGIN SanMinglGod3
SAY~*Her expression is impenetrable as she gives you one of her long thoughtful looks.* ~
=~We do not need another war, definitely not. My hope is that you and I come out of this whole mess as a force powerful enough to improve the situation here on the Prime permanently. The mortals must emancipate themselves from those power hungry meddlers that call themselves *gods*~
IF~~THEN REPLY~Who else may have their champion in this game?~GOTO SanMinglGod4
IF~~THEN REPLY~Sounds like you think more gods play a role in this game?~GOTO SanMinglGod4
END

IF~~THEN BEGIN SanMinglGod4
SAY~It is hard to tell until we know who all of the Five really are. We can only make a guess about Illasera as her patron never showed up.~
=~A hasty attack, based on surprise and backstabbing, not very well planned...a typical handwriting I would say...~
IF~~THEN REPLY~The mad prince of lies.~EXIT
IF~~THEN REPLY~Your *beloved* grandfather.~EXIT
IF~~THEN REPLY~Cyric, who else.~EXIT
END

IF~~THEN BEGIN SanCyricwar1
SAY~ Is that not apparent, <CHARNAME>? Ao appointed Bhaal's role as the god of murder to my grandfather, among his other tasks. Any form of restoration of his predecessor means a stab at Cyric's domain.~
IF~~THEN REPLY~ In this case he must be an opponent to our foe - and a possible ally for us.~ GOTO SanCyricwar2
IF~~THEN REPLY~ I will never NEVER cooperate with the mad God of Lies!~ GOTO SanCyricwar2
END

IF~~THEN BEGIN SanCyricwar2
SAY~ (She looks baffled for a second.) I think you misunderstood me, my lovely Bhaalspawn. The most powerful of the Bhaalspawns involved in this war would be his natural enemy, regardless of <PRO_HISHER> alignment or plan. YOU are his topmost enemy.~
IF~~THEN REPLY~ But Ao has forbidden any involvement of the Gods in this struggle has he not?~DO~SetGlobal("SanCyrInvolve","LOCALS",1)~GOTO SanCyricwar3
END

IF~~THEN BEGIN SanCyricwar3
SAY~ I would not be surprised if the cunning secret thief would not find a hidden loophole through which he can intrigue in the affair.~
IF~~THEN REPLY~ (Sigh) When will the list of our opponents ever end?~ EXIT
IF~~THEN REPLY ~ I trust my watchful counsellor to issue a warning should she detect the slightest sign of his machinations.~EXIT
IF~~THEN REPLY~ A valid warning and one more thing to keep our eyes open for.~EXIT
END

IF~~THEN BEGIN SanLongPid11
SAY~And it has taken me deep into your heart - so every step of it was worth it.~
IF~~THEN REPLY~ (You take her in your arms and kiss her.)~EXIT
IF~~THEN REPLY~ (You nod in silent agreement.)~EXIT
IF~~THEN REPLY~ (You smile and shake your head about the banalities your normally clever counsellor sometimes can come up with.) ~ EXIT
END

IF~~THEN BEGIN SanLongPid12
SAY ~I would not miss a single day of it, my dear.~
IF~~THEN REPLY~ (You take her in your arms and kiss her.)~EXIT
IF~~THEN REPLY~ (You nod in silent agreement.)~EXIT
IF~~THEN REPLY~ (You smile and shake your head about the banalities your normally clever counsellor sometimes can come up with.) ~ EXIT
END

IF~~THEN BEGIN SanLongPid13
SAY ~In my wildest dreams I could not have imagined our common story.~
IF~~THEN REPLY~ (You take her in your arms and kiss her.)~EXIT
IF~~THEN REPLY~ (You nod in silent agreement.)~EXIT
IF~~THEN REPLY~ (You smile and shake your head about the banalities your normally clever counsellor sometimes can come up with.) ~ EXIT
END

IF~~THEN BEGIN SanLongPid14
SAY ~I am willing to take any detour with you that may still lie ahead.~
IF~~THEN REPLY~ (You take her in your arms and kiss her.)~EXIT
IF~~THEN REPLY~ (You nod in silent agreement.)~EXIT
IF~~THEN REPLY~ (You smile and shake your head about the banalities your normally clever counsellor sometimes can come up with.) ~ EXIT
END

IF~~THEN BEGIN SanLongPid15
SAY ~We may have swerved once or twice but our overall course is steady.~
IF~~THEN REPLY~ (You take her in your arms and kiss her.)~EXIT
IF~~THEN REPLY~ (You nod in silent agreement.)~EXIT
IF~~THEN REPLY~ (You smile and shake your head about the banalities your normally clever counsellor sometimes can come up with.) ~ EXIT
END


IF~~THEN BEGIN SanSarevPid1
SAY~ The idea of power and godhood is still fascinating him. He thinks about that a lot.~
IF~~THEN REPLY ~That's not really redemption. How far will he go?~ GOTO SanSarevPid2
IF~~THEN REPLY ~It was a mistake then to take him with us? ~ GOTO SanSarevPid2
END

IF~~ THEN BEGIN SanSarevPid2
SAY~ Maybe I have not expressed myself quite clearly, <CHARNAME>. Sarevok is fascinated by the topic but he has not expressed in any way that he still seeks it for himself. Remember him at Candlekeep where he studied Alaundo's scrolls so thoroughly. He studies his subject further but I would say rather as a scientist or explorer.~
IF~~THEN REPLY ~You make that former beast sound quite harmless.~ DO ~ SetGlobal("SarevPid","LOCALS",1)~GOTO SanSarevPid3
END

IF~~ THEN BEGIN SanSarevPid3
SAY~ I would not call him harmless in the same way I would not call you such.~
IF~~THEN REPLY ~Are you referring to the blood we have in common?~ GOTO SanSarevPid4
IF~~THEN REPLY ~Are you trying to insult me?~ GOTO SanSarevPid4
END

IF~~ THEN BEGIN SanSarevPid4
SAY~ You are both similar in the way that you have this heritage that is part of yourself and will always be inside you. It can always come out like in your own transformation to the Slayer once. You are similar now as you both control the beast and I know it is not an easy task.~
=~I have always tried to help you in your internal battle, <CHARNAME>...~
IF~~THEN REPLY ~Will you do the same for him?~GOTO SanSarevPid5
END

IF~~ THEN BEGIN SanSarevPid5
SAY~ I am a healer by choice and oath. I will not deny him if I can help him.~
IF~~THEN REPLY ~Well, it gives me some assurance that as long as you care for him in this way he is also under your observation. I consider you his guardian in a way.~ EXIT
IF~~THEN REPLY ~As long as you care for him in this way he is also under your observation. I trust you to alert me should you sense any betrayal from him.~ EXIT
END

IF~~THEN BEGIN SanPoPla1
SAY~ Your fate and that of all of us - even the fate of the Realms - is waiting for us outside of this Plane of Bhaal. But first we must solve the test set up to gain the exit.~
IF~~THEN REPLY ~ How do we achieve the first step?~ GOTO SanPoPla2
IF~~THEN REPLY ~ Yes, yes, a number of riddles and battles just like before. I was referring to the task that waits for us beyond those doors.~GOTO SanPoPla3
END

IF~~THEN BEGIN SanPoPla2
SAY~ Agree to Sarevoks proposal, he appears to be the key for our departure. Let us complement the party and check our equipment and health. Then see what challenges the good Solar has set for us.~
IF~~THEN REPLY ~Fine. We have done these things before - together.~DO~SetGlobal("SanPoPla","LOCALS",1)~EXIT
IF~~THEN REPLY ~Not so new for us, isn't it. And once we're done with that?~ GOTO SanPoPla3
END

IF~~THEN BEGIN SanPoPla3
SAY~ First things first. Let us talk about that when we finished the first step.~
IF~~THEN DO~SetGlobal("SanPoPla","LOCALS",1)~EXIT
END

IF~~THEN BEGIN SanPoPla4
SAY~ It appears from all the messages we have received that the final war of the Bhaalspawns has now begun. And you, <CHARNAME>, are at the very centre of it all.~
IF~~THEN REPLY~ I'm afraid that is the case. Can you be a bit more specific, Sandrah?~ DO~SetGlobal("SanPoPla","LOCALS",2)~GOTO SanPoPla5
IF~~THEN REPLY~ Do you have some information that are less pbvious than what you just stated, Sandrah?~ DO~SetGlobal("SanPoPla","LOCALS",2)~GOTO SanPoPla5
END

IF~~THEN BEGIN SanPoPla5
SAY~ What we have learned in the past is that the strongest of the remaining Bhaalspawns will be the one to grab for the Throne of Bhaal. Only another of his own kind can stand in the way of that.~
IF~~THEN REPLY~ Please, go on.~ GOTO SanPoPla6
IF~~THEN REPLY~ That last one probably being me, else I must be defeated by the one who's aspiring the Throne.~ GOTO SanPoPla6
END

IF~~THEN BEGIN SanPoPla6
SAY~ But I have made a mistake in my assumptions and my interpretation of Alaundo in the past, in thinking that the new rising god would have to defeat all the others to reach the goal. It now appears that this is not really the case.~
IF~~THEN REPLY~ You must explain that to me.~ GOTO SanPoPla7
IF~~THEN REPLY~ The mysterious assassin in Tethir? What was her role?~  GOTO SanPoPla7
END

IF~~THEN BEGIN SanPoPla7
SAY~ It is this Army of the Five we learned about in Tethir and also the words of the stone head about the *most unlikely allies*. Add to this the hunt of Bhaalspawns that has recently started by some unknown power. It seems that the big ones start to feed on the small to get bigger. Your godly father spawned them richly enough - his essence is much divided this way.~
IF~~THEN REPLY~ You begin to get as mysterious as those stone heads - only your face is much lovelier.~ GOTO SanPoPla8
IF~~THEN REPLY~ You begin to get as mysterious as those stone heads.~ GOTO SanPoPla8
END

IF~~THEN BEGIN SanPoPla8
SAY~ There is a bloody harvest going on, <CHARNAME>. Someone collects the essence of Bhaalspawns. Your father could not anticipate that all of them would survive until the day of his return. So he bred them in excess, but most probably only some amount of the evil essence he left within them is finally needed. You, <CHARNAME>, seem to possess more of it than anyone else - most likely Bhaal's gift to Khalindra - to make you strong enough for your mission to eliminate me.~
IF~~THEN REPLY~Does that mean I am the preferred prey in this hunt?~ GOTO SanPoPla9
IF~~THEN REPLY~Then the rising god would be able to do without my essence provided he or she gathers enough of the remaining ones.~ GOTO SanPoPla9
END

IF~~THEN BEGIN SanPoPla9
SAY~ Yes and no. The new god may rise from a certain amount of Bhaal's essence regardless of your own portion being among it or not. Still Alaundo speaks of the one who could prevent it all and who needs to be defeated as well. I guess that is what the Army of Five has been established for.~
IF~~THEN REPLY~Let us continue with that new topic at the next rest, Sandrah, I have much to contemplate at the moment.~ EXIT
END

IF~~THEN BEGIN SanPoPla10
SAY~ The Army of Five - more adequately now Army of Four as we have already decimated their ranks. The *most unlikely allies*.~
IF~~THEN REPLY~The one we killed was a Bhaalspawn herself. What sense does that make to you?~ GOTO SanPoPla11
END

IF~~THEN BEGIN SanPoPla11
SAY~ It makes very much sense, <CHARNAME>. The most unlikely allies in the fight for Bhaal's throne would indeed be - five Bhaalspawns. However if my recent analysis is correct and a certain amount of Bhaal's essence is required to start the ritual of his recall then it does make sense that five strong ones work together and start to eliminate the weaker ones to *harvest* what they need.~
IF~~THEN REPLY~Why did they never try to approach me to join them?~ GOTO SanPoPla12
IF~~THEN REPLY~They avoid me by all means. The one in Tethir for some reason attacked me alone.~GOTO SanPoPla12
END

IF~~THEN BEGIN SanPoPla12
SAY~ Even if they work together on a temporary basis, in the end it will be only one who can become the rising god. Once they have reached their initial goal the fight among them will start. You - you are the common enemy. On the one hand you possess much of what they need - hence the single attempt of Illasera on you, on the other hand only their combined power may be able to defeat you.~
IF~~THEN REPLY~ All of this seems to make sense, counsellor.~DO~SetGlobal("SanPoPla","LOCALS",3)~ EXIT
IF~~THEN REPLY~ It seems our goal will be to meet them one by one but never face them together, counsellor.~DO~SetGlobal("SanPoPla","LOCALS",3)~ EXIT
IF~~THEN REPLY~ You were right long ago, when you told me that there is no way to escape my destiny.~ DO~SetGlobal("SanPoPla","LOCALS",3)~ EXIT
END

IF~Global("SanSerBha","GLOBAL",3)~ THEN BEGIN SanTraitAssu1
SAY~The stone heads reciting Alaundo's words to us mentioned the Five but also a traitor in their midst. Initially I thought that this traitor would use all the others to finally eliminate them one by one and remain as Bhaal's heir. But on second thought I found that they all would do just that and in such a constellation you would not call any a traitor.~
IF ~~THEN REPLY~Interesting how your deduction works. What is your conclusion?~ GOTO SanTraitAssu2
IF ~~THEN REPLY~I follow your reasoning, Sandrah, go on.~ GOTO SanTraitAssu2
END

IF~~ THEN BEGIN SanTraitAssu2
SAY~A traitor to such a party may have two different origins. For both is common that he or she wants to destroy the Alliance from the inside however the motives would be different. In both cases it may be feasible to seek the support of other potent enemies of the Alliance. By which I clearly mean us.~
IF ~~THEN REPLY~And what are the two possibilities you talk about, Sandrah?~ DO~ SetGlobal("SanSerBha","GLOBAL",4)~ GOTO SanTraitAssu3
END

IF~~ THEN BEGIN SanTraitAssu3
SAY~One is that the traitor - traitor from the perspective of the Bhaalspawns - actually wants to prevent Bhaal's return. The other is that the traitor is not himself a Bhaalspawn but still needs the possession of the Essence that is gathered by the Alliance.~
IF ~~THEN REPLY~The first is clear. But the second?~ GOTO SanTraitAssu4
IF ~~THEN REPLY~This traitor, Sandrah, would he not try to establish a contact with us?~ GOTO SanTraitAssu5
END

IF~~ THEN BEGIN SanTraitAssu4
SAY~*The Servant of Bhaal*. Do not look so questioningly, I do not know more about this figure than this expression used by the prophesy. Did Bhaal himself plan his own return by dispersing his essence and installing a Servant to recollect it when the time has come?~
IF ~~THEN REPLY~Better keep our eyes open then.~EXIT
IF ~~THEN REPLY~The bad guy is this mysterious Servant, what about the other one, would he not try to establish a contact with us?~ GOTO SanTraitAssu7
END

IF~~ THEN BEGIN SanTraitAssu5
SAY~ Maybe he already did. Before he would openly reveal himself to you would he not try to gain more information about us and our motives and plans? Would he not make sure that you are neither in league with the Five nor aspiring the Throne on your own?~
IF ~~THEN REPLY~Better keep our eyes open then.~EXIT
IF ~~THEN REPLY~The good guy is clear now, what about the other one?~ GOTO SanTraitAssu6
END

IF~~ THEN BEGIN SanTraitAssu6
SAY~*The Servant of Bhaal*. Do not look so questioningly, I do not know more about this figure than this expression used by the prophesy. Did Bhaal himself plan his own return by dispersing his essence and installing a Servant to recollect it when the time has come?~
IF~~THEN EXIT
END

IF~~ THEN BEGIN SanTraitAssu7
SAY~ Maybe he already did. Before he would openly reveal himself to you would he not try to gain more information about us and our motives and plans? Would he not make sure that you are neither in league with the Five nor aspiring the Throne on your own?~
IF ~~THEN REPLY~Better keep our eyes open then.~EXIT
END

IF~Global("SanDoubtKhalTOB","LOCALS",1)!Global("SanRompa","Global",2)~THEN BEGIN DoubtMothPC1
SAY ~*You have observed that your beloved Sandrah has been pondering some issue for a while now.*~
IF~~THEN REPLY~Do I really have to tell you I'm here whenever you need me?~GOTO DoubtMothPC2
IF~~THEN REPLY~Spit it out before it swallows you!~GOTO DoubtMothPC2
IF~~THEN REPLY~*You decide not to bother her and give her time to speak if she wants to.* ~GOTO DoubtMothPC2a
END

IF~Global("SanDoubtKhalTOB","LOCALS",1)Global("SanRompa","Global",2)~THEN BEGIN DoubtMothPC1c
SAY ~*You have observed that your counsellor Sandrah has been pondering some issue for a while now.*~
IF~~THEN REPLY~Do I really have to tell you I'm here whenever you need me?~GOTO DoubtMothPC2
IF~~THEN REPLY~Spit it out before it swallows you!~GOTO DoubtMothPC2
IF~~THEN REPLY~*You decide not to bother her and give her time to speak if she wants to.* ~GOTO DoubtMothPC2a
END

IF~~THEN BEGIN DoubtMothPC2a
SAY~*She has seen your inquiring look and you know that she knows that you know...*~
IF~~THEN GOTO DoubtMothPC2
END

IF~~THEN BEGIN DoubtMothPC2
SAY~(Smiles) You know me just too well, <CHARNAME>. Yes, I have been thinking about a mistake we both have made long, long time ago...~ 
IF~~THEN REPLY~Probably...there were some we made, even if we tried to avoid to do something intentionally wrong most of the time. Is it still that relevant today?~DO~SetGlobal("SanDoubtKhalTOB","LOCALS",2)~GOTO DoubtMothPC3
END

IF~~THEN BEGIN DoubtMothPC3
SAY~The relevance of it is for you to decide...for me nothing much changes.~
=~You remember the time when we first discovered about your heritage and I told you about my search for my mother's second child.~
IF~Global("SanRomPath","GLOBAL",1)~THEN REPLY~From the evidence we gathered we finally concluded it was me, even if that does not really make me your brother.~GOTO DoubtMothPC4
IF~Global("SanRomPath","GLOBAL",2)~THEN REPLY~From the evidence we gathered we finally concluded it was me, even if that does not really make me your sister.~GOTO DoubtMothPC4
END

IF~~THEN BEGIN DoubtMothPC4
SAY~Right. At that time we started to learn about Sarevok, another Bhaalspawn, and I had a knowledge that one or another existed somewhere else...but...~
IF~~THEN REPLY~Go on.~GOTO DoubtMothPC5
IF~~THEN REPLY~You don't have doubts about my so-called father all of a sudden?~GOTO DoubtMothPC5
IF~~THEN REPLY~Oh, my, we were so young and innocent and unknowing back then.~GOTO DoubtMothPC5
END

IF~~THEN BEGIN DoubtMothPC5
SAY~We had no idea about the large number of spawns the former God of Murder has left all over Toril.~
IF~~THEN REPLY~I guess I see where you're heading. You were searching a Bhaalspawn. You found me, Imoen and Sarevok. We decided I would fit the best...~GOTO DoubtMothPC6
IF~~THEN REPLY~The idea of Khalindra as my mother was always soothing to my mind. Are you saying I tried very hard to believe what I wanted to believe - and you wanted to believe as well?~GOTO DoubtMothPC6
END

IF~~THEN BEGIN DoubtMothPC6
SAY~If our judgement back then was premature, I want to avoid today a repetition of that error. We were making conclusions based on the facts we had. Today we find, we had not all the facts at hand. Now, let us not rush to new conclusions based on insufficient evidence once again.~
IF~~THEN REPLY~There is more than just facts, Sandrah. My dreams, my visions about OUR mother, do you remember them?~GOTO DoubtMothPC7
IF~~THEN REPLY~Facts aside, there is also what my heart tells me all the time. Khalindra was OUR mother.~GOTO DoubtMothPC7
IF~~THEN REPLY~Even if it's an error, it has hurt nobody, no, it even gave me strength for a long time to have a vision of OUR mother in my heart.~GOTO DoubtMothPC7
END

IF~~THEN BEGIN DoubtMothPC7
SAY~You are right, <CHARNAME>, the idea of Khalindra being your mother as well as mine has given you some strength that you surely needed. It is...I still have the feeling that the search I set out for when I left Waterdeep is not over yet.~
IF~~THEN REPLY~I hope we have not met that child already - and probably killed her or him.~ GOTO DoubtMothPC8
IF~!Global("SanRompa","Global",2)~THEN REPLY~If that child was not me, then chances get thinner every day that he or she is still alive.~GOTO DoubtMothPC8
IF~!Global("SanRompa","Global",2)~THEN REPLY~Still assuming that the spawn placed next to your cradle was one of the strongest of the breed - are you saying it may be one of those Five we are now up against?~GOTO DoubtMothPC8
IF~Global("SanRompa","Global",2)~THEN REPLY~If that child was not me, then chances get thinner every day that he or she is still alive.~GOTO DoubtMothPC8a
IF~Global("SanRompa","Global",2)~THEN REPLY~Still assuming that the spawn placed next to your cradle was one of the strongest of the breed - are you saying it may be one of those Five we are now up against?~GOTO DoubtMothPC8a
END

IF~~THEN BEGIN DoubtMothPC8
SAY~*She takes your hand and presses it hard.* Whatever the outcome may be, one decision we have made long ago is undoubtable - I love you.~
IF~~THEN DO ~IncrementGlobal("Sanpoints","GLOBAL",1)StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~EXIT
END

IF~~THEN BEGIN DoubtMothPC8a
SAY~*She takes your hand and presses it hard.* Whatever the outcome may be, one decision we have made long ago is undoubtable - we will face this together.~
IF~~THEN DO ~IncrementGlobal("Sanpoints","GLOBAL",1)StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~EXIT
END

//Watcher's Keep

IF~Global("SanChoices","ar6400",2)~THEN BEGIN SanYagChoic1
SAY~ It seems we have several options to go from here once we cleaned out this area and made it save for travellers once again.~
IF ~~THEN REPLY~I guess we need to find they key to Yaga-Shura's immortality.~ GOTO SanYagChoic2
IF~InParty("LRIrenic")~THEN REPLY~Irenicus proposed to pay Watcher's Keep a visit.~GOTO SanIrProp
IF ~~THEN REPLY~Please help me to keep an overview, counsellor.~GOTO SanYagChoic2
END

IF~~THEN BEGIN SanIrProp
SAY~(Laughs gently) A strange coincidence as I fully agree with him in that assessment. I was about to suggest likewise.~
IF~~THEN REPLY~May this harmony between my advisers be a good or a bad sign?~ GOTO SanYagChoic2
IF~~THEN REPLY~What would be the alternatives?~ GOTO SanYagChoic2
END

IF~~THEN BEGIN SanYagChoic2
SAY~ We can either go to the Marching Mountains or the Mir Forest to find Yaga's secret. However, we may also use the time to explore Watcher's Keep now, as we had previously planned.~
IF ~~THEN REPLY~But Saradush is still under siege? ~ DO~ SetGlobal("SanChoices","ar6400",3)~GOTO SanYagChoic3
END

IF~~THEN BEGIN SanYagChoic3
SAY~ That is true, but with the internal hindrances removed since we dealt with Gromnir, Errard and Melissan are in a good position to hold the town for some while. We might well use our time like proposed, I am not sure if future events will grant us many more chances to do so.~
IF ~~THEN REPLY~Thank you, Sandrah, I see your arguments and will consider them.~DO~RevealAreaOnMap("ar3000")~EXIT
END

IF~Global("SanMadJou","LOCALS",1)~THEN BEGIN SanLabymap1
SAY~<CHARNAME>, this looks like a roadmap through this teleportation labyrinth to me.~
IF~~THEN REPLY~ The madman's journal? What do you make out of it?~ GOTO SanLabymap2
IF~~THEN REPLY~ You honestly advise us to follow mad babbling, if he knew the way he would have used it himself.~ GOTO SanLabymap2
END

IF~~THEN BEGIN SanLabymap2
SAY~It seems to start in the room with the compass rose..."...meet the rising sun..." means use the eastern portal..."pillar of stone...continue as before..." so again the eastern portal.~
=~Go south repeatedly to a rune covered obelisk..."setting sun" which is west...north to a tree...further north to the exit.~
IF~~THEN REPLY~ It's as good a clue as any we have, I guess.~DO~SetGlobal("SanMadJou","LOCALS",2)~
EXIT
END

IF~Global("SanDream25","LOCALS",1)~ THEN BEGIN SanSleephell1
SAY~ (Sandrah gives you a seductive smile.) A hellish place to spend the night - it might bring out some darker sides in me, mmh.~
IF~~THEN REPLY~Maybe there is more of Qilue Veladorn's blood in you than you are aware of. ~ GOTO SanSleephell2
IF~~THEN REPLY~However thin the drow blood may flow in your veins, sometimes I think you cannot deny it.~ GOTO SanSleephell2
END

IF~~ THEN BEGIN SanSleephell2
SAY~ If we can learn how to please the one we love most from the drow than there is a lot of hope for Faerun still. (Laughs) There is always something good to be found in everything.~
=~Do not start a discussion now, my dear, otherwise I get the impression you want to avoid going to the bedchamber with me.~
=~(She glides into your arms dressed only in one of her almost transparent negligees and demandingly takes one of your earlobes between her teeth.)~
IF~~THEN REPLY~ Ouch...~ GOTO SanSleephell3
END

IF~~ THEN BEGIN SanSleephell3
SAY~ (You have no choice but to follow her steady pull on you ear to your chamber, the path behind you cluttered with the pieces of your clothing that she has started to remove one by one...)~
IF~~THEN DO~SetGlobal("SanDream25","LOCALS",2) RestParty()~EXIT
END

IF~Global("SanDream25","LOCALS",2)~ THEN BEGIN SanSleephell4
SAY~ (Can the innocent smiling cleric girl really be the same who was in your bed last night? You still feel exhausted and hurting in numerous places, but the pleasures she gave you are worth it all.)~
IF~Global("SanNitePh","LOCALS",3)~THEN REPLY~ I never did regret that I denied Phaere's offer. It was worth waiting to receive such treatment from one I really care for.~GOTO SanSleephell5
IF~~THEN REPLY~ (Silently kiss her.)~ DO ~ SetGlobal("SanDream25","LOCALS",3)~EXIT
IF~Global("SanNitePh","LOCALS",4)~THEN REPLY~ And I thought Phaere taught me what drow passion is. Why did I fall for that novice when I have the master by my side all the time?~ GOTO SanSleephell5
END

IF~~ THEN BEGIN SanSleephell5
SAY~ You still dare to compare me with that drow slut. Grrr, wait until tonight, I will let you forget her in the pains I will prepare for you. (Her sweet smile betrays her words and promises the most pleasant joys awaiting you.)~
IF~~THEN DO ~ SetGlobal("SanDream25","LOCALS",3)~EXIT
END

//Gorion Wraith
IF ~Global("SanGoriWraith","Global",2) ~ THEN BEGIN Sangoriwr1
SAY~He was correct, I still seek revenge for the murder of my mother Khalindra.~
IF~~THEN REPLY~I cannot believe what you say!~ GOTO Sangoriwr2
IF~~THEN REPLY~You do not accuse me, you can't!~ GOTO Sangoriwr2
IF~~THEN REPLY~You sound as crazy as this crazy whatever-it-was!~ GOTO Sangoriwr2
END

IF~~THEN BEGIN Sangoriwr2
SAY~I seek revenge and I seek justice and I know I will be able to claim it. Not from you, <CHARNAME>, but from the one who really did it. I will be by your side when he faces his verdict.~
IF~~ THEN REPLY~Now I understand. You talk of Bhaal...~DO~SetGlobal("SanGoriWraith","Global",3) ~EXIT
END

//Nyalee
IF~Global("SanTempGard","ar5202",1)~ THEN BEGIN SanGarWD1
SAY~This must once have been a lovely forest with a sacred temple before evil took possession of it.~
IF~~THEN REPLY~ It resembles a place I have visited many times before and which holds very dear memories for me.~GOTO SanGarWD2
IF~~THEN REPLY~ If the darkness was not present everywhere I would swear I am in Waterdeep once again.~ GOTO SanGarWD2
END

IF~~ THEN BEGIN SanGarWD2
SAY~ My father has told me that the area in our garden at Waterdeep around the little seaside pavilion was build after the archetype of a holy temple in the Mir forest, a place where once Mystra was worshipped.~
IF~~THEN REPLY~ This must be the place then. Not much of your goddess is around any more.~
GOTO SanGarWD3
END

IF~~ THEN BEGIN SanGarWD3
SAY~ The gods are dependent on their worshippers down here. This place has none who follows Mystra's path any more.~
IF~~THEN DO~ SetGlobal("SanTempGard","ar5202",2)~ EXIT
END

//Dead Monk
IF~Global("SanMonkD","ar6002",1)~THEN BEGIN Bazmonk1
SAY~Now and then a healer needs to be reminded of her limits and has to accept that death comes to all of us mortals of the primary plane. It is good if you can end it with the knowledge that you have achieved something during your existence.~
IF~~THEN REPLY~What makes you say that on such a day, counsellor?~GOTO Bazmonk2
IF~~THEN REPLY~Even if you die in the end lost in such a hole like this?~ GOTO Bazmonk2
END

IF~~THEN BEGIN Bazmonk2
SAY~All the creatures we have encountered recently are full of ambitions for immortality, godhood, rule of the Realms and more. We are but humble mortals, <CHARNAME>, with the goal to provide meaning to our life here and now. We must end this Bhaalwar soon, where people like us are sacrificed by those aiming at goals that are not for them as if we were mere insects that can be squashed.~
IF~~THEN REPLY~I know at least of a couple of wasps that will sting back.~DO~SetGlobal("SanMonkD","ar6002",2)~EXIT
END

//Sandrah's TOB Quest

IF~Global("San25ChiQuest","GLOBAL",1) ~ THEN BEGIN SanWronassumpt1
SAY~ Do you know the feeling when all of a sudden the fog clears as if a veil has been removed from across your eyes, <CHARNAME>?~
IF~~THEN REPLY~ I truely cannot say I feel like that at the moment. Even what seemed to be clear for an instant is now clouded once again in this enduring mist.~ DO~SetGlobal("San25ChiQuest","GLOBAL",3) ~ GOTO SanWronassumpt2
END

IF~~ THEN BEGIN SanWronassumpt2
SAY~ Khalindra was not your mother as we had assumed for so long nor were you the killer placed by Bhaal next to Mystra's heiress. I admit that even if we know that now it raises a number of new questions - at least for me.~
IF~~THEN REPLY~ The thought of my *mother* Khalindra has given me confidence and strength for a long time now. A fanatic priestess who wanted to sacrifice me at the first instance is a real shock. Still...~ GOTO SanWronassumpt3
IF~~THEN REPLY~ If your mother's second child was neither me nor Imoen...~GOTO SanWronassumpt4
IF~~THEN REPLY~ It is a kind of relief to me that I do not have to grieve her. Gorion did me a favour even greater than I had imagined till this day.~GOTO SanWronassumpt4
END

IF~~THEN BEGIN SanWronassumpt3
SAY~ (She has already taken you in her arms.) Still...<CHARNAME> has stripped the own self from his fatherly heritage and become a personality of own choice. Your mother' influence in that does not matter at all, <CHARNAME>, she was just a willing toy of Bhaal, do not dwell on her.~
IF~~THEN REPLY~ It is a kind of relief to me that I do not have to grieve her. Gorion did me a favour even greater than I had imagined till this day.~ GOTO SanWronassumpt5
IF~~THEN REPLY~ If your mother's second child was neither me nor Imoen...~GOTO SanWronassumpt5
END

IF~~THEN BEGIN SanWronassumpt4
SAY~ (She has already taken you in her arms.) Still...<CHARNAME> has stripped the own self from his fatherly heritage and become a personality of own choice. Your mother' influence in that does not matter at all, <CHARNAME>, she was just a willing toy of Bhaal, do not dwell on her.~
IF~~THEN REPLY~ If your mother's second child was neither me nor Imoen...~GOTO SanWronassumpt5
IF~~THEN REPLY~ I can't believe that your own father did betray us so all the time, Sandrah.~ GOTO SanWronassumpt5
END

IF~~THEN BEGIN SanWronassumpt5
SAY~ It was me who was so blind all the time and maybe wanted to believe what had suited my feelings so well.~
=~ Remember that my father never confirmed you were Khalindra's child. It was our very own conclusion from the discoveries we had made. We have only to blame ourselves.~
IF~~THEN REPLY~ The question still remains what became of that child.~ GOTO SanWronassumpt6
IF~~THEN REPLY~ Do you remember the scene we saw of Gorion, Elminster and Winthrop, we have missed something there...~ GOTO SanWronassumpt6
END

IF~~THEN BEGIN SanWronassumpt6
SAY~ That scene Mystra showed us with the three Harpers making their plans for the children - Winthrop with Imoen and Gorion with you of whom we falsely thought it was Khalindra's child but now know it was the one he saved from Alianna.~
IF~~THEN REPLY~ (You close your eyes and the scene reappears from your memory) Gorion said *We only talked about our wards so far, good friends, you carry a burden as well, Elminster.*...~ GOTO SanWronassumpt7
END

IF~~THEN BEGIN SanWronassumpt7
SAY~ You are a genius once again, <CHARNAME>. How could we have missed that?~
IF~~THEN REPLY~ Your father replied *Do not worry about the little one, the Realm of Undermountain is not accessible to our foe.*~ GOTO SanWronassumpt8
END

IF~~THEN BEGIN SanWronassumpt8
SAY~ (Sandrah almost shouts now) Undermountain!! The child was in Waterdeep all the time - in that mysterious realm that is said to be the home of those who follow Eilistraee and her High Priestess, the Dark Sister. ~
IF~~THEN REPLY~ And so the circle closes back to your family's heritage it seems.~ GOTO SanWronassumpt9
IF~~THEN REPLY~ And that would mean?~ GOTO SanWronassumpt9
END

IF~~THEN BEGIN SanWronassumpt9
SAY~I have to - we have to...I beg you <CHARNAME>, I must know the answer. It was this question that made me leave Waterdeep and led me to find you. I have found my love in the process but I now see I still have not found what I set out to find.~ 
IF~~THEN REPLY~ We need to go to Waterdeep once again?~ GOTO SanWronassumpt10
END

IF~~THEN BEGIN SanWronassumpt10
SAY~ Yes, please, <CHARNAME>, I still have Mystra's gift to take us there. The sooner the better. Up to now our paths have been the same. The answer we may find may be really relevant to the way that lies ahead of us.~
IF~~THEN REPLY~ Hm, the Solar might have revealed my mother's name for some purpose just now...~ EXIT
IF~~THEN REPLY~ The starting point would be your father once again.~EXIT
IF~~THEN REPLY~ We must still do a thing or two here before we can find the time for that trip.~ EXIT
END

IF~Global("San25ChiQuest","GLOBAL",5) ~ THEN BEGIN SanQuestForce
SAY~ We have postponed our return to my father long enough now, <CHARNAME>. Now is a good time to let me take us there. Not just for my own benefit but for yours as well.~
IF~~THEN REPLY~ Let us go.~ DO~ SetGlobal("SANWDho","GLOBAL",1) SetGlobal("San25ChiQuest","GLOBAL",6)~EXIT
IF~~THEN REPLY~ Just another minute...~ DO~ SetGlobal("SANWDho","GLOBAL",1) SetGlobal("San25ChiQuest","GLOBAL",6)~EXIT
IF~~THEN REPLY~ I have outgrown your father's involvement by now...~ DO~ SetGlobal("SANWDho","GLOBAL",1) SetGlobal("San25ChiQuest","GLOBAL",6)~EXIT
END

IF~ Global("San25ChiQuest","GLOBAL",9)~ THEN BEGIN SanWantsSeeQi1
SAY~<CHARNAME>, I definitely want to meet my sister. You know my feelings for you - but we only met because I set out to find the second child of Khalindra. This has been my mission all the time and still is.~
IF~~THEN REPLY~ I am much interested in her myself, so let us go and ask your father where she is.~ GOTO SanWantsSeeQi2
IF~~THEN REPLY~ We will not blindly rush into Undermountain to search for her, won't we?~GOTO SanWantsSeeQi2
IF~~THEN REPLY~ What did your father mean with his last words?~ GOTO SanWantsSeeQi2
END

IF~~ THEN BEGIN SanWantsSeeQi2
SAY~ Should you have any ambition to aid your father's return and have the vague hope to participate from his power then my sister would be the obstacle to overcome and the key to gather the essence you need. My father will protect her by all means - as will I.~
IF~~THEN REPLY~ Quite some new opportunity neither I nor the Five had any idea about by now.~  GOTO SanWantsSeeQi3
IF~~THEN REPLY~ Do you really have doubts in me. If your sister is what your father claims her to be she is the assurance that we will defeat those Bhaalists once and for all. I cannot imagine a better ally.~ GOTO SanWantsSeeQi5
END

IF~~ THEN BEGIN SanWantsSeeQi3
SAY~ Are you so blind for power. Can you not see that all those who partake in Bhaal's resurrection are just his disposable tools and his first victims should he return. This god will never share his power with anyone.~
IF~~THEN REPLY~ I have learned today something else - your sister has no intention to follow Bhaal and can be ignored. So there is only one more competitor left and I will defeat him.~ GOTO SanWantsSeeQi4
IF~~THEN REPLY~ Do you really have doubts in me. If your sister is what your father claims her to be she is the assurance that we will defeat those Bhaalists once and for all. I cannot imagine a better ally.~ GOTO SanWantsSeeQi5
END

IF~~ THEN BEGIN SanWantsSeeQi4
SAY~This will never happen.~
IF~~THEN DO~ ActionOverride("CVSandr",LeaveParty()) ActionOverride("CVSandr",EscapeArea())
SetGlobal("SandrahSummoned","GLOBAL",2) SetGlobal("SandrahJoined","GLOBAL",25) ClearAllActions()
FadeToColor([30.0],0)
CutSceneId(Player1)
RestorePartyLocations()
EndCutSceneMode()
FadeFromColor([30.0],0)~EXIT
END

IF~~ THEN BEGIN SanWantsSeeQi5
SAY~ Can I give my father our oath that you have no intention to partake in your father's resurrection nor to harm my sister in any way?~
IF~~THEN REPLY~ Yes, I swear it. By my love for you.~ DO~ SetGlobal("San25ChiQuest","GLOBAL",10)~GOTO SanWantsSeeQi6
IF~~THEN REPLY~ Yes, I swear it. I owe you as much for your loyalty.~ DO~ SetGlobal("San25ChiQuest","GLOBAL",10)~GOTO SanWantsSeeQi6
IF~~THEN REPLY~ I am not willing to give you such an oath.~ GOTO SanWantsSeeQi7
END

IF~~ THEN BEGIN SanWantsSeeQi6
SAY~ I am so glad to hear that, let us go to see my father.~
IF~~THEN REPLY~ (You kiss her.)~EXIT
END

IF~~ THEN BEGIN SanWantsSeeQi7
SAY~Any further word will be wasted.~
IF~~THEN DO~ ActionOverride("CVSandr",LeaveParty()) ActionOverride("CVSandr",EscapeArea())
SetGlobal("SandrahSummoned","GLOBAL",2) SetGlobal("SandrahJoined","GLOBAL",25) ClearAllActions()
FadeToColor([30.0],0)
CutSceneId(Player1)
RestorePartyLocations()
EndCutSceneMode()
FadeFromColor([30.0],0)~EXIT
END

IF~Global("San25ChiQuest","GLOBAL",12)~ THEN BEGIN SanWantsSeeQi8
SAY~ <CHARNAME>, I am glad I share this great day of my life with you - my sister and me will meet.~
IF~~THEN REPLY~ How do we get to Undermountain. I have learned at Candlekeep that it is a vast labyrinth and uncharted dungeon.~ GOTO SanWantsSeeQi9
IF~Global("CVUmo1","GLOBAL",1)~THEN REPLY~ Your mother's grave at the temple is the entrance?~GOTO SanWantsSeeQi9
IF~!Global("CVUmo1","GLOBAL",1)~THEN REPLY~ What is the use of that key your father gave you?~ GOTO SanWantsSeeQi9
END

IF~~ THEN BEGIN SanWantsSeeQi9
SAY~I have always guessed that Khalindra's grave at the Temple served some special purpose as it holds no corpse.~
IF~~THEN REPLY~ I thought my family history was weird - yours seem to be no less.~ GOTO SanWantsSeeQi10
IF~~THEN REPLY~ What?~ GOTO SanWantsSeeQi10
IF~~THEN REPLY~ It is an entrance to Undermountain?~ GOTO SanWantsSeeQi10
END

IF~~ THEN BEGIN SanWantsSeeQi10
SAY~ My mother's misused body was given to the flames as she had wished herself before her death. Elminster threw the ashes to the wind from the tower of our house - part to remain in Waterdeep, part to be blown to Innarlith and part to be everywhere her husband and daughter would roam.~
=~The grave therefore is the entrance from Mystra's temple in town to the one below Mount Waterdeep that serves Eilistraee.~
IF~~THEN REPLY~ After all I have read about it, I assume it will not be as easy as walking in there and saying hello to your sister.~ DO~SetGlobal("San25ChiQuest","GLOBAL",13)~GOTO SanWantsSeeQi11
END

IF~~ THEN BEGIN SanWantsSeeQi11
SAY~ Given the location of the Temple at the slope of the mountain and using what little knowledge is available about the wast tunnels and caves the Meairkyn Clan dwarves have constructed so many ages ago, I deduct that the entrance will be high above the area called *Skullport*. ~
=~It is reported that Qilue Veladorn herself founded the first temple for Eilistraee down there and it has developed into a temple complex called *The Promenade* which has become the home for many who have fled the Underdark and follow the Dark Sister now.~
IF~~THEN REPLY~ It would be the appropriate place for your sister according to your father's report.~ GOTO SanWantsSeeQi12
END

IF~~ THEN BEGIN SanWantsSeeQi12
SAY~ Still you are right - the temple will only be a small peaceful enclave in an otherwise haunted and hostile surrounding. Let us prepare ourselves to meet some ugly creatures on our path.~
IF~!InParty("Sola") ~ THEN EXIT
IF~InParty("Sola")~ THEN DO~SetGlobal("SanSolUM1","GLOBAL",1)~ EXIT
END

// Shar-Teel's second child
IF~Global("SanSharInt","GLOBAL",38)~THEN BEGIN SanShSecCh1
SAY~<CHARNAME>, it is time for me to remind you of something very beautiful and encouraging today - and a little journey once more to Waterdeep.~
IF~~THEN REPLY~Eh, can we not do...do that here as well?~ GOTO SanShSecCh2
IF~~THEN REPLY~Well, it's only a spell away, isn't it. A little surprise you prepared for me?~GOTO SanShSecCh2
IF~~THEN REPLY~My counsellor, you must surely have a reason for this completely inadequate timing, I presume.~GOTO SanShSecCh2
END

IF~~THEN BEGIN SanShSecCh2
SAY~Last time we were there I took the opportunity - and of course my healer's responsibility - to examine our beloved Wildcat thoroughly. Your stays after Gorion's birth with her were short but intensive.~
IF~~THEN REPLY~You mean...?~ GOTO SanShSecCh3
END

IF~~THEN BEGIN SanShSecCh3
SAY~ Yes, I mean. And according to the results of my inspection and the notes in my calendar the due date is round about now.~
IF~~THEN REPLY~Oh, my - what if it's a son again. Not even will Shar-Teel boil me for it, I haven't found the time to think of a name so far...~ GOTO SanShSecCh4
END

IF~~THEN BEGIN SanShSecCh4
SAY~ Then pray it is a girl and it is her turn to name the newborn. Otherwise think quickly as I understood you just said *Yes, Sandrah take us to Waterdeep immediately*.~
IF~~THEN DO~ SetGlobal("SanSharInt","GLOBAL",39) ~EXIT
END

IF~Global("SanWhichWay","ar4500",1)~THEN BEGIN EvilPrincFin1
SAY~A lot of essence from your dead father has now been set free. If our analysis is correct, then it will soon be enough to raise a god.~
IF~~THEN REPLY~You mean, enough to raise the God of Murder again.~GOTO EvilPrincFin2
IF~~THEN REPLY~You mean, enough to raise the new God of Murder.~  GOTO EvilPrincFin2
END

IF~~THEN BEGIN EvilPrincFin2
SAY~No, I meant exactly what I was saying, *enough to raise a god*. The choices may be more than those you listed.~
IF~~THEN REPLY~Well, there is our possibility to prevent anyone from rising at all.~ GOTO EvilPrincFin3
IF~~THEN REPLY~You mean...there is a way to use that essence for another purpose?~ GOTO EvilPrincFin3
END

IF~~THEN BEGIN EvilPrincFin3
SAY~I say, it is us - no, in this final case it will be you, you alone - who will be the final obstacle for anyone to use the essence that Bhaal left behind.~
=~Which ultimately will mean, this essence will be in your hands, should we succeed. It will be at your disposal.~
IF~Alignment(Player1,MASK_EVIL)~THEN REPLY~Are you implying that I...that I will have the choice to raise Bhaal or to replace him?~DO~SetGlobal("SanWhichWay","ar4500",2)~GOTO EvilPrincFin4
IF~!Alignment(Player1,MASK_EVIL)~THEN REPLY~Are you implying that I...that I will have the choice to raise Bhaal or to replace him?~DO~SetGlobal("SanWhichWay","ar4500",2)~GOTO EvilPrincFin8
END

IF~~THEN BEGIN EvilPrincFin4
SAY~We knew that for a long time already, did we not?~
=~No, what I pointed out is that you have more options than just those two.~
=~You could destroy the essence and prevent any ursurper of Bhaal's Throne to succeed, including your dead *father* himself...~
IF~~THEN REPLY~And return to a normal life afterwards - forget this whole nightmare and live forever peaceful with you?~ GOTO EvilPrincFin5
IF~~THEN REPLY~And return to a normal life afterwards - forget this whole nightmare and live forever peaceful?~ GOTO EvilPrincFin5
IF~~THEN REPLY~And become a power of the Realms myself, different from the heritage that has haunted me for so long?~GOTO EvilPrincFin6
END

IF~~THEN BEGIN EvilPrincFin8
SAY~We knew that for a long time already, did we not?~
=~No, what I pointed out is that you have more options than just those two.~
=~You could destroy the essence and prevent any ursurper of Bhaal's Throne to succeed, including your dead *father* himself...~
IF~~THEN REPLY~And return to a normal life afterwards - forget this whole nightmare and live forever peaceful with you?~ GOTO EvilPrincFin9
IF~~THEN REPLY~And return to a normal life afterwards - forget this whole nightmare and live forever peaceful?~ GOTO EvilPrincFin9
IF~~THEN REPLY~And become a power of the Realms myself, different from the heritage that has haunted me for so long?~GOTO EvilPrincFin10
END

IF~~THEN BEGIN EvilPrincFin5
SAY~This may be an option, but would it satisfy you? Would you not wish forever for the power to change the Realms to your liking?~
IF~~THEN GOTO EvilPrincFin6
END

IF~~THEN BEGIN EvilPrincFin9
SAY~This may be an option, but would it satisfy you? Would you not wish forever for the power to change the Realms to your liking?~
IF~~THEN GOTO EvilPrincFin10
END

IF~~THEN BEGIN EvilPrincFin6
SAY~What the Prime needs is Love and Hope - murder and war will exist without the aid of a God.~
=~Who could be a better symbol for Love and Hope than one who is condemned as *Evil* by those who consider themselves superior and *Good*!!~
IF~~THEN REPLY~Oh, no, you're not really asking me to become some Ilmater type deity with the power I may gain!~EXIT
IF~~THEN REPLY~Oh, no, I'm surely fed up with all this celestial circus - all I want is a peaceful life for my own.~EXIT
IF~~THEN REPLY~Become a deity of Love and Hope. Hm, I am afraid it will not be so easy. I can think of many that will oppose to that.~DO~ChangeAlignment(Player1,CHAOTIC_NEUTRAL)SetGlobal("PPEvilChoices","GLOBAL",0) SetGlobal("PPGoodChoices","GLOBAL",1) SetGlobal("ConvinceBalth","GLOBAL",4) ~EXIT
IF~~THEN REPLY~Sounds like you want to talk me out of the opportunity to seize what is rightfully mine - the Throne of Bhaal.~EXIT
IF~~THEN REPLY~I count on my counsellor to help me find the adequate solution should any of these options really be within my reach.~ DO~ChangeAlignment(Player1,CHAOTIC_NEUTRAL)SetGlobal("PPEvilChoices","GLOBAL",0) SetGlobal("PPGoodChoices","GLOBAL",1) SetGlobal("ConvinceBalth","GLOBAL",4) ~EXIT
END

IF~~THEN BEGIN EvilPrincFin10
SAY~What the Prime needs is Love and Hope - murder and war will exist without the aid of a God.~
=~Who could be a better symbol for Love and Hope than one who is condemned as *Evil* by those who consider themselves superior and *Good*!!~
IF~~THEN REPLY~Oh, no, you're not really asking me to become some Ilmater type deity with the power I may gain!~EXIT
IF~~THEN REPLY~Oh, no, I'm surely fed up with all this celestial circus - all I want is a peaceful life for my own.~EXIT
IF~~THEN REPLY~Become a deity of Love and Hope. Hm, I am afraid it will not be so easy. I can think of many that will oppose to that.~DO~SetGlobal("ConvinceBalth","GLOBAL",4)~EXIT
IF~~THEN REPLY~Sounds like you want to talk me out of the opportunity to seize what is rightfully mine - the Throne of Bhaal.~EXIT
IF~~THEN REPLY~I count on my counsellor to help me find the adequate solution should any of these options really be within my reach.~ DO~SetGlobal("ConvinceBalth","GLOBAL",4)~EXIT
END

//Sided with Balthasar
CHAIN
IF~Global("SanSidedBalt","LOCALS",1)~THEN CVSan25J WithBalt1
~I am glad it has turned out this way, that you were able to convince Balthazar of your good intentions.~
DO~SetGlobal("SanSidedBalt","LOCALS",2)~
==IF_FILE_EXISTS BLK#IYL IF~InParty("Iylos")~THEN~counsellor, my respect. You have surely had your influence on this unexpected outcome.~
==CVSan25J IF~InParty("Iylos")~THEN~Unexpected? Was it not what you had hoped for all the time yourself?~
==IF_FILE_EXISTS BLK#IYL IF~InParty("Iylos")~THEN~Hoped for, yes, but I had expected worse...or maybe...my hopes had been rising all the time observing your counselling of <CHARNAME>.~
==CVSan25J IF~InParty("Iylos")~THEN~Do not belittle your own deeds in this matter, my friend.~
END
++~It's one less Bhaalspawn to fight now - and one mighty ally added.~+ WithBalt2

CHAIN
IF~~THEN CVSan25J WithBalt2
~One more time we have taken fate into our own hands and not blindly followed a vague prophesy. None of the actors had foreseen this kind of alliance against the one of Melissan and the Five.~EXIT

//Bad Ending
CHAIN
IF~Global("StartEndBios","cvrtf1",9)~THEN CVSan25J SanBadEnd
~This is never to be, <CHARNAME>. Bhaal's evil seed will not bloom and corrupt Faerun further. To prevent this from happening has been my sworn goal since I left my father's home.~
DO~SetGlobal("StartEndBios","cvrtf1",10)~
== sanmyst~What has failed in the past will now be corrected. There will be no return of the God of Murder.~
==CVQidr~The evil taint could have been turned into a positive power, <CHARNAME>, it has been done in me and it could have been done in you. You have failed to take this chance.~
==Elminsa~In Mystra's name and in the name of the blessed Gorion - it will end here and now.~DO~ClearAllActions() StartCutSceneMode() StartCutScene("cut233s4") ~EXIT

CHAIN
IF~Global("SanAfterJon","GLOBAL",8)~THEN CVSan25J AloundoToB1
~ *The Lord of Murder Shall Perish, but in his doom he shall spawn a score of mortal progeny. Chaos shall be sown from their passage ...*~
DO~SetGlobal("SanAfterJon","GLOBAL",9)~
==IF_FILE_EXISTS BSAREV25 IF~InParty("Sarevok")~THEN~*During the days of the Avatars, the Lord of Murder will spawn a score of mortal progeny. These offspring will be aligned good and evil, but chaos will flow through them all. When the Beast's bastard children come of age, they will bring havoc to the lands of the Sword Coast. One of these children must rise above the rest and claim their father's legacy. This inheritor will shape the history of the Sword Coast for centuries to come...*~
==IF_FILE_EXISTS BJonel25 IF~!InParty("Sarevok") InParty("LRIrenic")~THEN~*During the days of the Avatars, the Lord of Murder will spawn a score of mortal progeny. These offspring will be aligned good and evil, but chaos will flow through them all. When the Beast's bastard children come of age, they will bring havoc to the lands of the Sword Coast. One of these children must rise above the rest and claim their father's legacy. This inheritor will shape the history of the Sword Coast for centuries to come...*~
==CVSan25J IF~!InParty("Sarevok") !InParty("LRIrenic")~THEN~*During the days of the Avatars, the Lord of Murder will spawn a score of mortal progeny. These offspring will be aligned good and evil, but chaos will flow through them all. When the Beast's bastard children come of age, they will bring havoc to the lands of the Sword Coast. One of these children must rise above the rest and claim their father's legacy. This inheritor will shape the history of the Sword Coast for centuries to come...*~
==CVSan25J~*The spawn of the Lord of Murder are fated to come into their inheritance through bloodshed and misery. It is the hope of their father that only one shall remain alive to inherit his legacy. I foresee that the children of Bhaal shall kill each other in a bloody massacre.*~
END
++~Alaundo's prophesy as I heard chanted daily back at Candlekeep. Now it gets some meaning.~+ AloundoToB2
++~Alaundo's prophesy as I heard it chanted daily back at Candlekeep. Why do you recite it now?~+ AloundoToB2

CHAIN
IF~~THEN CVSan25J AloundoToB2
~Did you ever consider how Alaundo receive that insight into future events?~
END
++~I guess that seers receive their visions from some god or other, don't they?~+ AloundoToB3

CHAIN
IF~~THEN CVSan25J AloundoToB3
~Most likely - the question is which God found it necessary to spread Bhaal's plan to the mortals and how did that God know about the plan in the first place...~
END
++~Alaundo was a follower of the God Savras, the Third Eye, the Lord of Divination.~+ AloundoToB4
++~At Candlekeep, Oghma was served, The Lord of Knowledge.~+ AloundoToB5
++~Let me guess, your own goddess - Mystra?~+ AloundoToB6
++~I think you have some candidate in mind, am I right.~ + AloundoToB7

CHAIN
IF~~THEN CVSan25J AloundoToB4
~Savras was serving Azuth and by that way would also have been in Mystra's service.~
END
++~And?~+ AloundoToB6

CHAIN
IF~~THEN CVSan25J AloundoToB5
~Oghma preserves knowledge but how should he receive knowledge about something that has not yet happened?~
END
++~I think you have some candidate in mind, am I right.~ + AloundoToB7

CHAIN
IF~~THEN CVSan25J AloundoToB6
~Mystra has no interest to have Bhaal's plan known at all. A self-fulfilling prophesy ending in a new God of Murder is not of her interest - she did everything to defeat the former one.~
END
++~Her intention was to warn us and allow us to prevent it from happening.~+ AloundoToB7

CHAIN
IF~~THEN CVSan25J AloundoToB7
~As always we have to ask ourself, who would gain the most, who has the largest interest that the story would be widely known?~
END
++~Someone who wants to prevent the events to happen.~+ AloundoToB8
++~The story seems to happen exactly like prophesied, at least until now.~+ AloundoToB8

CHAIN
IF~~THEN CVSan25J AloundoToB8
~What if it was Alaundo's prophesy that set the current events in motion? The notion of becoming a God based on the blood he found within himself made Sarevok start his plan in Baldur's Gate. Other's embarked on a similar path when they found out about their heritage. Alaundo's words told them what to do and what the goal could be.~
END
++~You mean...Bhaal himself published his plan in order for others to follow it?~+ AloundoToB9
++~You are really thinking of Bhaal himself. He made sure that the strongest of his children would reactivate the Throne of Bhaal through the blood of all others.~ + AloundoToB9

CHAIN
IF~~THEN CVSan25J AloundoToB9
~There is only one issue about Bhaal having made his plan known to his progeny. It is a lie!~
END
++~What do you mean now?~+ AloundoToB10
++~*You were not born to replace, you are fuel for the return.* These were Bhaal's words to me during Irenicus' ritual to steal my soul.~+ AloundoToB10

CHAIN
IF~~THEN CVSan25J AloundoToB10
~Saradush and the harvest of Bhaalspawn essence...the killing of all those who never had a chance to even dream of the promised power. Bhaal himself set the plan in motion but he lied about the end. Gods do not care to provide a legacy, their concept is immortality.~
END
++~I will not accept that! I know you won't either!~+ AloundoToB11
++~I am not fuel, you hear that, Bhaal, I am FIRE!!~+ AloundoToB11

CHAIN
IF~~THEN CVSan25J AloundoToB11
~Bhaal may have had another ending of the story in mind when he revealed the vision to Alaundo - but until now all of Alaundo's other prophesies have come true - why not this one as well. ~
=~*In turning she mumbles*:(Even if it may require some extra effort from our side to come to that end.)~EXIT

I_C_T Hgwra01 18 SanGoriWraith
==HGwra01 IF~InParty("CVSandr")~ THEN ~I turned YOU away! (His finger darts out to Sandrah.) I tried to keep Cyric's poison from my ward, the deceiver Mystra, the false helper. All combined in the blood that you let into your heart and your bed, <CHARNAME>.~
==CVSan25J IF~InParty("CVSandr")~ THEN ~If you were really Gorion, you would mention your friend Elminster, his beloved Khalindra - my parents whom you knew - instead of spitting out such insults. Who are you really, imposter?~
==HGwra01 IF~InParty("CVSandr")~ THEN ~Yes, Khalindra...You are a fool, <CHARNAME>, to think a spawn of Cyric and Mystra would ever forgive or even love a Bhaalspawn. Revenge is all she ever thinks about.~
==CVSan25J IF~InParty("CVSandr")~ THEN ~Were it true, we surely would not stand here today side by side - to face you and afterwards face the one who sent you...and defeat both.~
END

