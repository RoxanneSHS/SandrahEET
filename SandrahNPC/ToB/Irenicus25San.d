CHAIN
IF~Global("SanJon25","GLOBAL",2)~THEN BJonel25 MystraInv
~ Strangely enough you have remained silent to <CHARNAME>'s decision to take me with you.~
DO~SetGlobal("SanJon25","GLOBAL",3)~
==BSandr25~Had you expected my rejection, mage?~
==BJonel25~You are not afraid of me, you never was. You might think you have it all under control since you overwhelmed me once before...~
==BSandr25~Twice.~
==BJonel25~I know well who dealt the blows to my previous existence...~
==BSandr25~...and your previous plans.~ DO~ClearAllActions() StartMovie("CVJonde")~EXIT

CHAIN
IF~Global("SanJon25","GLOBAL",3)~THEN BJonel25 MystraInv2
~ I had understood the gods were not to interfere with the Bhaalspawn matters in any way.~
DO~SetGlobal("SanJon25","GLOBAL",4)~
==BSandr25~I can only stress the point that the Prime is our plane, the plane of the mortals, and not the playground of some more powerful creatures to misuse it.~
==BJonel25~Still you are her, the servant of one who has always had an interest in the Bhaal matter, even when still in her human incarnation. Are you trying to tell me that Mystra does not play her role here?~
==BSandr25~Exactly that, believe it or not. My interest is to prevent the return of Bhaal - on behalf of what he has done to the creatures of Faerun before and what he will cause again should he be restored.~
==BJonel25~And not to prevent the revenge he will take on your goddess?~
==BSandr25~I am not standing here today by <CHARNAME>'s side due to Mystra's command.~
=~I have followed and still follow the trace of the Bhaalchild that was implanted into my mother and caused her early death. I have found the one I love during this search and I want my beloved to come out of this struggle alive - Surviving but definitely not as the new God of Murder.~
==BJonel25~Why do I believe you? Mh, maybe because you have never hid your intentions and actions behind any scheming. Maybe because you have proven your point when descending with your deadly hammer into the abyss to face your foe eye to eye?~
=~Yes, I think that's what makes you so strong, honesty and truth, not in the way of those babbling good-doer priest...in the way a straight arrow is aimed at the enemy's weakest point.~EXIT

CHAIN
IF~Global("SanJon25","GLOBAL",6)~THEN BJonel25 SanJon1
~ I admit I have underestimated your role before, concentrating on the Bhaalspawns you accompany. Now an insider to this group I see your counselling of <CHARNAME> and the power <PRO_HESHE> gets from the companions.~
DO~SetGlobal("SanJon25","GLOBAL",7)~
==BSandr25~I have often found that our foes in their hunger for power oversee the virtues of true friends, companions and followers. Armies of thralls and mercenaries have fallen before our united will and capability.~
==BJonel25~The only one I could trust finally was the one bound to me by blood, Bodhi. In that respect you may be right.~
==BSandr25~The eyes in the upcoming events will all be on the Bhaalspawns. It is a mistake to forget the other players in the game.~
==BJonel25~In the game I lost it was neither Queen nor King that dealt the blow but a pawn - well, maybe not a pawn but a Knight...~
==BSandr25~Learn from it. Or better let us learn from it. We are warned already this time about a hidden traitor. He or she even tried to get your support first, someone who tries to pull the strings while all eyes are on the Spawns.~
==BJonel25~I give you my word, Sandrah, if I knew who the hooded one you refer to was, I would tell you.~
==BSandr25~(Laughs shortly.) I even believe you, Joneleth.~EXIT

CHAIN
IF~Global("SanHealJon","LOCALS",2)~THEN BJonel25 SanJonHeal
~ I had never anticipated to receive a healing spell from a priestess of Mystra.~
DO~SetGlobal("SanHealJon","LOCALS",3)~
==BSandr25~We are companions now even if that thought shocks you, Joneleth. We support each others with our various skills and abilities. ~
==BJonel25~Eh..~
==BSandr25~(Shrugs her shoulders while turning away to her next task.) Learn to live with it or learn to heal yourself, whatever.~EXIT

CHAIN
IF~Global("SanJon25","GLOBAL",8)~THEN BJonel25 SanJonPel
~ Priestess, I like to ask you about your cat.~
DO~SetGlobal("SanJon25","GLOBAL",9) RealSetGlobalTimer("SanJonT","LOCALS",2600)~
==BSandr25~ The *priestess'* name is Sandrah - the *cat's* name is Pelligram. Our party is led by <CHARNAME> and our companions are <PLAYER2>, <PLAYER3>, <PLAYER4>, <PLAYER5>, and <PLAYER6>. You are in this group, act accordingly, you may need one or the other of them sooner or later.~
==BJonel25~You need not to remind me of my frail new existence. I suffer from it constantly.~
==BSandr25~It was not my intention to belittle you. I wanted to help you find the alternative mindset you may need in your new life. We were enemies once but we are no more. You trusted only yourself but now you are among companions, they may even become friends over time. Admit it.~
==BJonel25~So what about your cat...I mean what about Pelligram? Do you mind telling me *Sandrah*?~
==BSandr25~ She is a true and loyal companion who accompanies me since my late childhood. We saved each other's life many times.~
==BJonel25~I still have enough of my abilities to feel that she is no being of this plane. You told me that Mystra does not intervene in this Bhaalspawn war. Can you solve that dilemma for me...Sandrah?~
==BSandr25~Even if Pelligram were a servant of Mystra she is with me because of my own mission and task, not because of the Bhaal case.~
==BJonel25~I see and I have learned to believe you. So what is that task other than to stop Bhaal's return?~
==BSandr25~To find the one to succeed Mystra when the time has come.~EXIT

CHAIN
IF~Global("SanJonPwr","LOCALS",1)~ THEN BJonel25 SanJonPwr
~Sandrah, concerning myself I may have found some answers - concerning you...mh...more questions than answers have appeared before me.~
DO~SetGlobal("SanJonPwr","LOCALS",2)RealSetGlobalTimer("SanJonT","LOCALS",2000)~
==BSandr25~ Why should you start to contemplate about me anyway?~
==BJonel25 ~I have learned that your heritage, even if different from <CHARNAME>'s or my own, puts you in a similar position with respect to power.~
==BSandr25~ I am not a godchild, someone must have told you a misleading story.~
==BJonel25 ~ No, you are no godchild - you are far more. You are from the blood that have killed gods in the past and according to your own confession you would be willing yourself to do such a deed. I know quite well that the idiot Cyric was just a tool used to kill the previous God of Murder - the true executioner had been the one you call your grandmother.~
==BSandr25~ You are right, Joneleth, and you are also right that I follow Midnight's example where I can map it to my own situation.~
==BJonel25 ~ Yes, you do - but do you consider the ultimate consequences, Sandrah? The women of your bloodline have not only killed gods. They are among the few mortals who were chosen by the Overlord Ao and found worth to become goddesses themselves. Does such a perspective not raise ambitions in one as capable and superior as yourself?~
==BSandr25~ I do not estimate myself superior to anyone, Joneleth. And have you ever thought clearly about what it really means to have the power of a god? Do you only see the possibilities of bloodshed and destruction in it? What about the responsibility that comes with the power?~
==BJonel25 ~Responsibility of a god? For the dirt crawling mob of worthless mortals, the blind lemmings rushing to their death with open eyes while drooling from greed...Why should a goddess care about them?~
==BSandr25~What makes a god a god if not the belief of those who follow him? Is it not the role to be an example and a guidance to those who seek the truth? I see the goddess I follow with such eyes.~
==BJonel25 ~...and the goddess you follow was once a mortal priestess of Mystra just like you...keep following your grandmother's step - prevent the new rising of the murderous god she herself once defeated - follow the logic of this to the end, Sandrah.~
==BSandr25~Listen, I am human and I am mortal. It is the primary plane where I live and where I try to help shaping a Toril that I enjoy living in. If I had the power to do it I would use it to improve the everyday life of the *drooling mob of lemmings* - I am one of them.~EXIT

CHAIN
IF~Global("IrSanWK","LOCALS",1)~ THEN BJonel25 WKadv
~I heard that you counselled <CHARNAME> to go to Watcher's Keep just like I did.~
DO~SetGlobal("IrSanWK","LOCALS",2) RealSetGlobalTimer("SanJonT","LOCALS",2000)~
==BSandr25~ Based on the same facts we come to the same conclusions, not a big mystery. However it is telling that it reveals the honesty in the advice we both give to <CHARNAME>.~
==BJonel25 ~Correct. Does it make you trust me a bit more?~
==BSandr25~Yes.~
==BJonel25 ~..~
=~Well, good to know anyway.~EXIT

CHAIN
IF~Global("SanIrClk","LOCALS",1)~ THEN BJonel25 SanIrClk
 ~There are good old grannys who knit pullovers for their grandchildren...~
DO~SetGlobal("SanIrClk","LOCALS",2) RealSetGlobalTimer("SanJonT","LOCALS",2000)~
==BSandr25~ ...(laughs) and there are some who are a bit different than that.~
==BJonel25 ~Even among those different ones there are not many who are able to give a cloak of almost godlike power to their beloved heirs.~
==BSandr25~Their heirs?~
==BJonel25 ~My studies on you are almost finished. My new *comrades* were not withholding the information about certain events I would have otherwise not be able to learn about.~
==BSandr25~Certain events?~
==BJonel25 ~I heard - in all confidence among *comrades* - about some visits by the grandmother to her grandchild...AND - I also learned about your visit to a certain archive not long ago.~
==BSandr25~I heard you were denied this access, Joneleth.~
==BJonel25 ~And so what? You see that I now possess the information that the Book Which Writes Itself had to deliver to you.~
==BSandr25~What significance does it have for you? You gain nothing by it?~
==BJonel25 ~I have no intention to return to the Abyss voluntarily, be assured. However, the perspective to be reliant on the whimpering god of snivelling slaves is all but inspiring. Maybe I just found an alternative solution.~
==BSandr25~You stay a mageling regardless of your experience. You pay much respect to mere artefacts. A simple coat will not restore your soul for you.~
==BJonel25 ~Not the coat, which is all but simple, but probably the wearer. You have not been given that thing without a definite implication, even if you are still too weak to accept it.~
==BSandr25~You call it weakness, Joneleth. Consider that it may require even more strength to reject what you think is so desireable.~EXIT

CHAIN
IF~Global("SanIrDeava","LOCALS",1)~ THEN BJonel25 SanIrDeva
~ What does that inquisitory look mean, pries...Sandrah?~
DO~SetGlobal("SanIrDeava","LOCALS",2) RealSetGlobalTimer("SanJonT","LOCALS",2000)~
==BSandr25~I was wondering if it were mere scientific curiosity that made you advocate on behalf of Ybdiel, or whether there might be something more. ~
==BJonel25 ~Would it really matter to you?~
==BSandr25~I remember your recommendation to <CHARNAME> to come here. You spent time in the Abyss with those creatures that tricked the Deva. Coincidence?~
==BJonel25 ~You advised to come here as well, didn't you?~
==BSandr25~I doubt that our reasons to do so were the same. Anyway - WE are all here and in agreement to help the celestial. Just in case you can provide the group with any additional helpful information on the case it would now be the right moment to do so.~
==BJonel25 ~You impress me with the clarity of your actions and words. Maybe it is part of why <CHARNAME> was able to defeat so many and be successful until this day...~
=~Other than to provide my skills against the creatures of the Abyss that we will face shortly, there is nothing I can contribute to the case at the moment, honestly.~
==BSandr25~(Smiles.) This is already worth more than you think.~
=~Maybe we will find the answer by saving both Ybdiel and Abaia from their fate.~
==BJonel25 ~(Mumbles) It is good to know there is at least one person here who never seems to give up on hopeless cases.~EXIT

CHAIN
IF~Global("SanIrDeava","LOCALS",3)~ THEN BJonel25 SanIrDeva2
~ Sandrah, I was slightly amazed by your lack of counselling to <CHARNAME> in the Deva Demon question?~
DO~SetGlobal("SanIrDeava","LOCALS",4) RealSetGlobalTimer("SanJonT","LOCALS",2000)~
==BSandr25~Had you expected me to oppose your opinions, Joneleth?~
==BJonel25 ~Bluntly speaking, yes. I would have been interested in your intellectual challenges you would set up against me.~
==BSandr25~Really? I had the feeling you understood a bit more from all of it. I think you fight very hard the lesson you have already learned.~
==BJonel25 ~What do you mean?~
==BSandr25~This quest was not an intellectual challenge, my friend, and you very well know it. You also know <CHARNAME>'s choice and you are still with us after all. Ask yourself why, answer for yourself what would be your attitude towards us had <CHARNAME> taken the spark for the own purpose.~
==BJonel25 ~Baah, if you approve to that choice you're just as weak and pathetic!~
==BSandr25~Any fool could feel fit to face the challenges we are up against with the help of the celestial aids. Can you not see the confidence and inner strength that is expressed by the choice made? We rely on ourselves and our means to shape Toril to our design. ~
==BJonel25 ~To reject the celestial power means strength for you, not weakness?~
==BSandr25~The answer is within you already, Joneleth. You will sooner or later find it.~EXIT

CHAIN
IF~Global("SendaiDoorXP","AR6100",3)~THEN BJonel25 SanJonCannbl
~I was expecting some comment from your side about that drow Bhaalspawn and, well, yes, her...soul.~
DO~SetGlobal("SendaiDoorXP","AR6100",4)IncrementGlobal("JonRedemptionCounter","GLOBAL",3)~
==BSandr25~Yestereve I read in my tome about the rituals of some Cannibals in Chult.~
==BJonel25 ~What a silly way to avoid the topic, I am disappointed, Sandrah.~
==BSandr25~They claim that by consuming the mightiest of their foes they absorb his strength and vigour. If you are still *anything*, than it is elf - natural enemy to the drow.~
==BJonel25 ~Bah, you compare me to some flesh eating savages having the need to gain strength in such a way?~
=~Should I need the soul of a drow Bhaalspawn there is one even more powerful than Sendai if I am not mistaken...~
==BSandr25~If that was an attempted joke, it was a lousy one, Joneleth. If not, even you will have enough insight to see that with all your power you will NEVER be able to overcome the combined power of Elminster's two daughters.~
==BJonel25 ~Don't tease me to try it...anyway, logic would prevent such a move.~
==BSandr25~In the Cannibal story there was another interesting aspect. The chieftains and the most powerful fighters of the clan never participated in the ritual.~
==BJonel25 ~Why should they - they had nothing to gain that was not already theirs, they had defeated the opponent so they were already stronger...~
==BSandr25~I wonder why one of the strongest personalities I know is so fixated on gaining the soul of a defeated opponent - he should be able to fill even the poorest soul in the multiverse with immense strength himself.~EXIT

CHAIN
IF~Global("SanJon25","GLOBAL",10)~THEN BJonel25 SanJonPel
~ Sandrah, I have asked myself how powerful your soul must be compared to the Bhaalspawn you accompany.~
DO~SetGlobal("SanJon25","GLOBAL",11) IncrementGlobal("JonRedemptionCounter","GLOBAL",5)RealSetGlobalTimer("SanJonT","LOCALS",2600)~
==BSandr25~ Are you on the prowl for another victim? You have definitely a large problem, Joneleth?~
==BJonel25 ~Oh, relax, I am not after your sweet soul, child, even if the prospect may be inviting. I feel more and more the powerful being you become.~
==BSandr25~Give me a moment to discuss this issue with you.~
==BJonel25 ~I would appreciate that. I have little chance for learned and scientific intercourse in this company these days.~
==BSandr25~You could be one of the most powerful and learned mages of the Realms, Joneleth, a beacon of wisdom. You could influence politics and history through your knowledge and counselling...~
==BJonel25 ~I AM THE MOST...sorry, continue. What were you aiming for?~
==BSandr25~I ask myself about your fixation to the power of another being's soul. You have had one and have encountered the pros and cons of it. On the other hand I have got to know and respect an intellectual mind who could be the person I described before just by own means.~
==BJonel25 ~Are you suggesting that I would come out of this adventure as a Power of the Realms if I would accept that wheeping slavegod's offer of an ersatz soul?~
==BSandr25~I am saying you could be such a power just by your own means, yes, and with a soul of your own. Why is it so important to add another's stolen power to your own when you are so much already by yourself? You experienced the slayer personally - you had his power but at the same time you lost yourself. The same will be true with any other soul you assimilate. You will loose yourself.~
==BJonel25 ~ I loose in order to gain more.~
==BSandr25~A high price if what you loose is already precious and what you gain is more than you ever need.~
==BJonel25 ~I respect your attitude, Sandrah. Other than those babbling nitwits that try to influence my decisions you are one who knows what she is talking about. I will reflect your words, hm, *counsellor*.~EXIT

CHAIN
IF~Global("SanAtSeal","LOCALS",1)~ THEN BJonel25 SanJonSeal
~So - what will <CHARNAME>'s self declared counsellor advise now? Will you make <PRO_HIMHER> walk into the trap below?~
DO~SetGlobal("SanAtSeal","LOCALS",2) IncrementGlobal("JonRedemptionCounter","GLOBAL",3)~
==BSandr25~I will not *make* <CHARNAME> do anything as our leader is quite capable of making the right decisions. My advice would be indeed to move ahead. The fact we seem to agree upon is that the so-called Helmites were not as truthful as one would expect from those paladins.~
==BJonel25 ~So you would move on into the trap with seeing eyes?~
==BSandr25~If what is down there fulfils my expectations I see no other way. The watchers are not able to prevent the escape of the Imprisoned One. We cannot allow him to free himself and endanger the Primary Plane again.~
==BJonel25 ~It seems you feel more responsibility for the Prime than most - a strange motivation but you are determined. I am long past taking you for a blue-eyed fool, Sandrah, so let us compare notes. Just like me you hate to consider yourself as a pawn in someone else's game, be it a god or a demon. Who do you think is down there?~
==BSandr25~During the times of trouble when this incarceration took place, gods and other creatures walked the prime in their mortal avatars. Only Helm was allowed to keep his godly powers and he used it on this prisoner.~
==BJonel25 ~A captured god, you assume?~
==BSandr25~We know about the fate of the gods that came to Faerun. We know only little about some other visitors...~
==BJonel25 ~Ha, my recent insight into Demogorgon's realms may be helpful. There are rumours about his avatar venturing to the Prime in the Times of Trouble - but the outcome of the adventure seems to be a topic that is strictly avoided down there.~
=~We will not find out by spending more talk - lead us on, <CHARNAME>, I agree with your counsellor in this.~EXIT

ADD_TRANS_TRIGGER Balth 24
~!InParty("CVSandr")~

EXTEND_BOTTOM Balth 24
IF ~ InParty("CVSandr") Alignment(Player1,MASK_GOOD) ReputationGT(Player1,18) ~ THEN REPLY ~But I am not evil!  I am a force of good and justice!~ GOTO 31
IF ~ InParty("CVSandr") !Alignment(Player1,MASK_GOOD)ReputationGT(Player1,18)~ THEN REPLY ~But I am not evil!  I am a force of good and justice!~ GOTO 32
IF ~ InParty("CVSandr") Alignment(Player1,MASK_GOOD) !ReputationGT(Player1,18) ~ THEN REPLY ~But I am not evil!  I am a force of good and justice!~ GOTO 33
IF ~ InParty("CVSandr") !Alignment(Player1,MASK_GOOD)!ReputationGT(Player1,18)ReputationGT(Player1,6) ~ THEN REPLY ~But I am not evil!  I am a force of good and justice!~ GOTO 34
IF ~InParty("CVSandr")~ THEN REPLY ~You sound like a hypocrite to me, sentencing those you have no right to judge!~ GOTO 35
IF ~InParty("CVSandr")~ THEN REPLY~You won't be the first to try and kill me...and probably not the last!~ GOTO 36
IF ~InParty("CVSandr")~ THEN REPLY ~How noble.  I'll enjoy spilling your pretentious guts all over the floor.~ GOTO 37
IF ~ InParty("CVSandr") Alignment(Player1,MASK_EVIL)!ReputationGT(Player1,6)~ THEN REPLY ~But I am not evil!  I am a force of good and justice!~ GOTO 38
IF ~InParty("CVSandr") Global("lrascbalt1","GLOBAL",0) InParty("lrirenic") G("AcceptIlmater",0) ~ THEN DO ~SetGlobal("lrascbalt1","GLOBAL",1)~ EXTERN JONEL25J SanIn
END

CHAIN
IF~~THEN JONEL25J SanIn
~Enough of this. <CHARNAME>, you have already wasted too much time listening to the mad monk's drivel. Now your half-brother would try to convince you to join him in his glorious death. Little does he realize that in doing so he would only release Bhaal's essence back into cosmos where it will be collected and utilized by your *protectress* Melissan.~ DO ~IncrementGlobal("ConvinceBalth","GLOBAL",2)~ 
==JONEL25J IF ~ G("lrHasSoulStone",0)G("AcceptIlmater",0)G("lrBaltSoul",1)~THEN~I, on the other hand, have a much better use for your half-brother's divine spirit. Get ready for battle, godchild. It's time for this to end.~ ~I, on the other hand, have a much better use for your half-brother's divine spirit. Get ready for battle, godchild. It's time for this to end.~
==BALTH~<CHARNAME>, does the masked sorcerer that you have brought in my presence have a hold on your spirit? He sounds like a convincing liar, and I can feel a connection between you two. I pity you, my <PRO_BROTHERSISTER>. Yet his presence makes it even more urgent that I destroy your vileness. Verily, I shall wipe out two great evils with one strike.~
==CVSan25J~Have you all not realised by now that here is another glitch in Alaundo's prophesy? A Bhaalspawn would be the only to be able to prevent Bhaal's return, we learned. Does it really say it has to be just a single one and all others are by design evil?~
==BALTH~<CHARNAME>, your company is truely a mixed troupe...the priestess compensates for the exile, I guess.~
==CVSan25J~Balthazar, try not to judge us as we do not judge you - too much is at stake. Consider the possibility that after all you are not alone in your attempt and your suicide solution is not the only way out.~
==BALTH~It is true.  You are a good advisor, and your stance against evil is without question.  Your assistance in <CHARNAME>'s fight against the taint of our evil father is worthy of praise.~ 
END
++~Can we not explore our possibilities, common possibilities on this basis?~EXTERN Balth 39

EXTEND_BOTTOM LRGODEMO 13
IF~InParty("CVSandr")~THEN REPLY~ How about your counselling, Sandrah, riddles are your domain?~EXTERN CVSan25J Sancheatdemo
END

CHAIN
IF~~THEN CVSan25J Sancheatdemo
~For Joneleth? Well, he is a comrade now and I give for him what I can.~
=~Ask away, Demogorgon.~
==LRGODEMO~(right head) 
That is cheating, you cannot name a substitute.~
=~(left head) Why not? Now that mighty soul is in the bargain as well.~
==CVSan25J ~So be it - just let us get over this quickly.~
==LRGODEMO~Very well, I shall ask you the first riddle.~
=~What is it that is greater in wickedness and more powerful demon than us; the dead eat it; and yet if the living eat it, they die?~ 
==CVSan25J ~This riddle has no answer. Nothing can be more vile than you are, and it is preposterous to give another answer.~
==LRGODEMO~(right head) 
I knew that couple would cheat! Why did you let the priestess in?~
=~(left head) 
Fool. Her arrogance will make her fail and our gain will be double.~
==CVSan25J ~We are still here and waiting. We have a deal and you will stick to it. Go on.~
==LRGODEMO~The second challenge will NOT be not as simple.~
=~Each of our heads has a personal name: one is known as Aameul, the other's name is Hethradiah. One of the heads will tell you a story with a riddle in it. You should answer the riddle and then ask us one question and tell which head you have spoken to.~
==CVSan25J~Now it is you who is trying to cheat, demon!~
==JONEL25J~Does this come as a surprise to you, Sandrah? The demons always lie. But you can use this fact to your advantage, and solve his puzzle.~
DO~IncrementGlobal("JonRedemptionCounter","GLOBAL",6)~
==LRGODEMO~Silence, petitioner! You shall pay for this! We think he just made your task too easy, priestess. Therefore, we swear by our position as the superior Demon Lord that one of us will tell the truth.~
==CVSan25J~Not even Volo would be as long winded as you are. Let us continue without further delay.~
==LRGODEMO ~(right head) 
A certain tanar'ri had two ten gallon jars. Six gallons of blood was in one, and six gallons of wine in another.~
= ~(right head) 
The demon proceeded in preparing for his feast and poured three gallons of wine into blood and stirred; then poured three gallons of mixture back into wine jar and stirred, then three gallons of mixture now in the wine jar back into the blood jar and stirred, and so on back and forth, until the concentration of wine in two jars was the same. I am telling the truth! What is my name and how many pourings were necessary?~
==CVSan25J~This task cannot be completed in any finite number of pourings! ~
==LRGODEMO ~Ah, wicked mortal, you are correct. ~
==CVSan25J~So, now it is my turn to ask.~
=~Left head, is it true that your name is Aameul?~
==LRGODEMO ~Yes.~
==CVSan25J~You have told the truth, and your name is Aameul.~
==LRGODEMO ~(left head)
You and your greed, fool, see how she escapes our grip!~
=~(right head)
No price without risk, shut up! The third riddle is not going to be that easy. And it must be answered by <CHARNAME> this time to fulfil the contract!~
END
++~Dealing with demons...~EXTERN LRGODEMO 39

EXTEND_BOTTOM Jonel25J 162
IF~InParty("CVSandr") ~THEN REPLY~ None in this party will suffer such fate as long as I can prevent it. This includes you, Irenicus. We need to get you a soul, forgot?~DO~SetGlobal("lrdemoquestion","LOCALS",2)IncrementGlobal("JonRedemptionCounter","GLOBAL",3)~ GOTO JonelDemogSan
END

APPEND Jonel25J
IF~~THEN BEGIN  JonelDemogSan
SAY~Fine, you are fool enough to attempt it, I am fool enough to trust you - for the time being. In the choice against Demogorgon you are my preference today.~
IF~Global("DemogorgonChange","GLOBAL",0)~ THEN DO~ ActionOverride("demogor1",ReallyForceSpell(Myself,DEMOGORGON_CHANGE)) SetGlobal("DemogorgonChange","GLOBAL",1)TriggerActivation("DemoGorgonInfo",FALSE) ~EXIT
IF~Global("DemogorgonChange","GLOBAL",1)~THEN EXIT
END
END

INTERJECT Jonel25J 304  SanDealSoul1
==Jonel25J IF~InParty("CVSandr") GlobalGT("JonRedemptioncounter","GLOBAL",10)~THEN~Maybe there are more perspectives than you can see, celestial moth.~END CVSan25J SanDealSoul

INTERJECT Jonel25J 305  SanDealSoul2
==Jonel25J IF~InParty("CVSandr") GlobalGT("JonRedemptioncounter","GLOBAL",10)~THEN~But - maybe there are more perspectives than you can see, celestial moth.~END CVSan25J SanDealSoul

INTERJECT Jonel25J 319 SanDealSoul3
==CVSan25J IF~InParty("CVSandr") ~THEN~The possibilities a new goddess may offer?~END CVSan25J SanDealSoul

CHAIN
IF~~THEN CVSan25J SanDealSoul
~Much has happened in our common travel since the day the agreement was made, Joneleth. Much has changed, especially within ourselves.~
DO~SG("lrFinale",2)~
==Jonel25J~You have counselled a minor Bhaalspawn stumbling half blind over the surface of the Prime to the doorstep of godhood, quite some achievement. (Chuckles) Not to forget the fact that you accomplished the same for yourself, even if the position of the goddess of minor spellcasting and dilettante magic is a bit below your true abilities.~
==CVSan25J~(Laughs) I read you well, my friend - you still do not want this minor goddess as an opponent, right? You may want to consider Mystra's sympathy for an elven mage having learned enough to accept the crippled god's offer.~
==Jonel25J~Just her sympathy? Put a bit more into the offer, my young goddess. The whole Weave is now at your command.~
==CVSan25J~You will find your laboratory in Athkatla a playground for endless magical research should you decide to return to it with your new-found soul.~
==Jonel25J~Hm...quite some bait. Some interesting favourites of your predecessors come to my mind, Larloch just to mention one. Or even Azuth who claimed godhood for himself in the end. Well, I will not make any vow, Sandrah...Mystra...to you what I will do, should I accept your offer.~
==CVSan25J~I did not ask for anything, Joneleth, I was just showing you a new possibility for your consideration.~
==Jonel25J~You know well it's an offer that I cannot refuse.~
=~(Turns to the Solar) I had enough disappointing experience with soiled Bhaalspawn souls, celestial moth, I think I'm ready to try something new and fresh.~
==Finsol01~It has become clear how you made it that far, <CHARNAME>, and I understand why Midnight has made her choice regarding the question of her successor.~
=~<CHARNAME>, you are not even a true deity on your own... yet you have accomplished your first true miracle, possibly the hardest and the most astonishing feat in the long list of your exalted deeds. I am proud to have guided a spirit as bright and compassionate as yours. ~
=~Exile, your part of the bargain with <CHARNAME> is complete. In return, you shall be granted a mortal soul of your own, and the lifting of your curse. I shall inform the Elven Gods that part of your debt to the Godchild, whom you have once robbed of <PRO_HISHER> soul, has been repaid.~
=~The Seldarine have heard your plea, Exile. Now you shall listen to their answer.~DO~ClearAllActions()
StartCutSceneMode()
StartCutScene("lrfijon1")~EXIT

EXTEND_BOTTOM FinSol01 8
IF~InParty("CVSandr")  Dead("lrirenic") Global("lrFinSolJon","LOCALS",0)~ THEN DO~SetGlobal("lrFinSolJon","LOCALS",1)~GOTO 5
END

EXTEND_TOP FinSol01 4 #3
IF~InParty("CVSandr")  Dead("lrirenic") Global("lrFinSolJon","LOCALS",0)~ THEN DO~SetGlobal("lrFinSolJon","LOCALS",1)~GOTO 5
IF~InParty("CVSandr") InParty("lrirenic") Global("lrFinSolJon","LOCALS",0)~ THEN DO~SetGlobal("lrFinSolJon","LOCALS",1)~GOTO 46
END

I_C_T LRElle1 42 SanLRMaskAccept
==CVSan25J IF~InParty("CVSandr")~THEN~How could I refuse? I see that it must be done, do no longer worry, Ellesime~
==LRElle1 IF~InParty("CVSandr")~THEN~You learned about responsibility already and you will learn a lot more. Hopefully you learn about love as well.~
==CVSan25J IF~InParty("CVSandr")~THEN~I have experienced twice already what can be the result of betrayed love and how many may suffer from the consequences. Midnight and Cyric are my grandparents.~
END
