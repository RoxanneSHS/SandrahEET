BEGIN CVTalos
BEGIN CVTalop1

IF~Global("TalosKnow","CVElm6",1)~THEN BEGIN WDLive1
SAY~Talos knows where you live, <CHARNAME>.~
IF~~THEN REPLY~ Neither Talos nor any of his brigants will ever enter my home. Take that message to your temple, fiend.~DO~SetGlobal("TalosKnow","CVElm6",2)~GOTO WDLive2
IF~~THEN REPLY~ Who are you?~ DO~SetGlobal("TalosKnow","CVElm6",2)~GOTO WDLive2
END

IF~~ THEN BEGIN WDLive2
SAY~ We know where to hit you.~
IF~~THEN DO~Enemy()~EXIT
END

IF~Global("SantalosDec","GLOBAL",6)~THEN BEGIN Visit1
SAY~Hihihi...lost your bearings, sailor?~
IF~~THEN REPLY~What do you want from us again? We have not lost our bearings as far as our course through this quest is concerned.~DO~SetGlobal("SantalosDec","GLOBAL",7)~ GOTO Visit2
END

IF~~ THEN BEGIN Visit2
SAY~I will introduce you to someone who may object to this point of view.~
IF~~THEN DO~StartCutSceneMode()
StartCutScene("CVcut215") EscapeArea()~EXIT
END

IF~Global("SanNWTalV","GLOBAL",1) ~THEN BEGIN VisitBG1end1
SAY~ You are very lucky, my *friends*. You deserve a little vacation after all your labour for the *good* you had to do.~
IF~~THEN REPLY~Oh, no, not HIM again!!~DO~SetGlobal("SanNWTalV","GLOBAL",2)~GOTO VisitBG1end2
END

IF~~ THEN BEGIN VisitBG1end2
SAY~ You are good at making friends, allies - and enemies, <CHARNAME>.~
IF~~THEN DO~StartCutSceneMode()
StartCutScene("CVcut216") EscapeArea()~EXIT
END

CHAIN
IF~ Global("SantalosDec","GLOBAL",8)~THEN CVTalos TalosFirst1
~ Fleshlings, you have begun to anger me!!~ 
DO~SetGlobal("SantalosDec","GLOBAL",11)~
==CVSandrJ~ Do you claim to be Talos himself by the way?~
== CVTalos~ I have received reports about your impertinence, Sandrah of Waterdeep, priestess of haha Mystra. You will soon see who I am.~
==CVSandrJ~Do you accuse us of anything specific, Lord of Destruction, or is it just that we rather repair where you try to destroy?~
== CVTalos~Is that not enough already if done on a grand scale like you attempt to do?~
=~Still - the <PRO_RACE> who leads you has a heritage that allows for hope to find the right way if not counselled anymore by the stupid granddaughter of a doomed goddess.~
==CVSandrJ~And you have come in person to show the *right way* and make use of the chaos you anticipate to follow in its wake?~
== CVTalos~A perspective too beautiful to be ignored - you have a clear mind, priestess. With that it should be obvious to you that YOU are in the way to let <CHARNAME> become a great player in the story of the Sword Coast.~
==CVSandrJ~Only if your version of the script would be alluring, otherwise I am only in YOUR way, Talos.~
== CVTalos~<CHARNAME>, give her up before she drags you down with her. Do not dream of withstanding powers that can overwhelm you with a sleight of the hand.~
==CVSandrJ~You will not trust this Lord of Deception who just wants another tool added to his army of chaos, <CHARNAME>. This god has always disposed of everyone after he has used and misused them. His offers are as empty as are his threats.~
== CVTalos~Empty? You will be the one to be blown into the void by my forces!~
END
++~We have given your lackeys the answer once before already.~+ TalosFirst2
++~Are you just treading water or do you have an offer for me?~+ TalosFirst2b

CHAIN
IF~~THEN CVTalos TalosFirst2b
~Are you interested? But no! As long as SHE is with you, there will be no deal possible for us.~
END
++~We have given your lackeys the answer once before already.~+ TalosFirst2

CHAIN
IF~~THEN CVTalos TalosFirst2
~Stupid mortals.~
=~Learn!!~DO~Enemy() ReallyForceSpell(Myself,CLERIC_SHIELD_OF_THE_ARCHONS) ReallyForceSpell(Myself,CLERIC_IRONSKIN)~ EXIT

CHAIN
IF~ Global("SantalosRang","GLOBAL",4)~THEN CVTalos TalosRanger1
~ Fleshlings, are you unwilling to learn??~
DO~SetGlobal("SantalosRang","GLOBAL",5)Enemy() ReallyForceSpell(Myself,CLERIC_SHIELD_OF_THE_ARCHONS) ReallyForceSpell(Myself,CLERIC_IRONSKIN)~ EXIT

CHAIN
IF~Global("SanBHTalos","GLOBAL",4)~THEN CVTalos AdaSteal
~Congratulations, my dear priestess. You and the Bhaalspawn never miss a chance to cross the Storm Lord's path!~
==CVSandrJ~Another of your little intrigues has been destroyed. I am *glad* we have added once again to the Storm Lord's amusement.~
==CVTalos~You got that right, girl. You amuse me. I care little about the outcome of my schemings - and the bloodshed your party has caused among those scaly beasts is as much a pleasure for me than any other result of this plot.~
==CVSandrJ~We care as little about that as you do. But we care about the fishermen we have helped.~
==CVTalos~Hihihi, a nice girl like you deserves a present for your good deeds...~
DO~SetGlobal("SanBHTalos","GLOBAL",5) Enemy() ReallyForceSpell(Myself,CLERIC_SHIELD_OF_THE_ARCHONS) ReallyForceSpell(Myself,CLERIC_IRONSKIN)~ EXIT

CHAIN
IF~ Global("TalOnIsl","ar90pb",1)~THEN CVTalos TalosMeand
~ Mystra's child, are you still unwilling to learn?? I find you again out at sea in my domain and following a quest that's not for you.~
==CVShPri~Make clear to her that outsider's intrusion cannot be permitted, oh mighty Talos.~
==CVSandrJ~I was not sure whether we should intervene with the activities here in the north. Thank you for your confirmation, Storm Lord.~
== CVTalos~Aah, you have understood, my dear?~
==CVSandrJ~Yes, I am sure now that this will be of interest for us - I am convinced just because YOU took the trouble to try and convince us otherwise.~
== CVTalos~Clever reasoning, but dumb to reveal your intentions, little priestess!~
DO~SetGlobal("TalOnIsl","ar90pb",2)Enemy() ReallyForceSpell(Myself,CLERIC_SHIELD_OF_THE_ARCHONS) ReallyForceSpell(Myself,CLERIC_IRONSKIN) ReallyForceSpellPointRES("SPPR425",[650.340])~ EXIT

CHAIN
IF~Global("SanNWTalV","GLOBAL",5)~ THEN CVTalos Talossare
~Congratulations, dumb fools!! Round one clearly goes to you. The chaos foreseen for the Sword Coast will only be a limited one due to your interventions.~
==CVSandrJ~You were not in league with the forces acting, do not try to fool us, Talos.~
== CVTalos~Can you be so sure of that, little priestess. So many have by now found <CHARNAME> to be an intersting actor on the prime plane...~
==CVSandrJ~Just in case you plan to manipulate <CHARNAME> in the future, Storm Lord, be warned. You will have to face a strong opposition.~
== CVTalos~Hihihi, opposition from you and your playground goddess??? A very interesting challenge. I can hardly await the next round to begin...hihihi...~
DO~SetGlobal("SanNWTalV","GLOBAL",6) Enemy() ReallyForceSpell(Myself,CLERIC_SHIELD_OF_THE_ARCHONS) ReallyForceSpell(Myself,CLERIC_IRONSKIN)~ EXIT

CHAIN
IF~Global("SantalIdl","GLOBAL",1)~THEN CVTalos Idolsteal1
~Mortal fools!! You carry the relict of the Storm Lord over the surface with no care but you do not follow Talos in faith.~
==CVSandrJ~(Sigh) Kozah...~
== CVTalos~I see that Mystra's disciples know their lore well. Mortals had many names throughout time for the Lord of Destruction.~
==CVSandrJ~Your symbol was found in a hidden place for a good reason, Talos. The priests of Nesseril tried to protect their people from you.~
== CVTalos~ See your error, priestess - Nesseril has suffered badly for it - it is destroyed. As will be you!~ DO~ SetGlobal("SantalIdl","GLOBAL",2) ReallyForceSpell(Myself,DRYAD_TELEPORT)~ EXIT

CHAIN
IF~Global("SantalosDec","GLOBAL",20)~THEN CVTalos AdaSteal
~Congratulations, my dear. You never miss a chance to cross the Storm Lord's path!~
DO~SetGlobal("SantalosDec","GLOBAL",21)~
==CVSandrJ~This time the situation may be quite amusing for you, Talos, even if we had to steal a little useless nothing from your Storm Mistress Ada.~
== CVTalos~ Ah - your little theft is irrelevant and serves that fool well if she cannot guard her valuables any better. But, oh, the disrespect it reveils for the god she serves!~
==CVSandrJ~Then know that the revenge on the one who ordered the theft is already looming over his unknowing head. The intrigue just started will be Mae'Var's downfall in the end including a bit of bloodshed on his guild.~
== CVTalos~ Hihi, you were right, Sandrah. The intrigue and the chaos sown already amuses me.~
=~May it be that Mystra's grandchild cannot fully deny another of her anchestor's? Maybe that unmentionable grandpa, hihihi...~ DO~ ReallyForceSpell(Myself,DRYAD_TELEPORT)~ EXIT



CHAIN
IF~Global("Talosangr","BG1200",2) ~THEN CVTalop1 Waterq1
~ You have angered the Storm Lord before and you do it again, foolish heathens.~
DO~SetGlobal("Talosangr","BG1200",3) ~
==CVSandrJ~ Your master must have a good network, priest. It did not take you long to detect that we help where he seeks to seed destruction.~
==CVTalop1~ Ha, a silly baby priestess of Mystra - don't interfere in matters too big for you or your weak goddess. Stay out of his ways is what the Storm Lord demands or you will vanish in his turmoils without a trace.~
==CVSandrJ~ Neither my goddess nor her priestess will retreat from the threats of the Lord of Destruction, so much should even be clear to one whose mind is *fogged* and *frozen* by the god he follows.~
==CVTalop1~ Some just need to learn their lessons the hard way, it seems.~ DO~ Enemy() ~EXIT

CHAIN
IF~Global("Mecorima","ars002",4)~THEN CVTalop1 GiveBack1
~In the name of the Mighty Storm Lord, stand and deliver your theft, unbelievers!~
DO~SetGlobal("Mecorima","ars002",5) ~
==CVSandrJ~ Your master must have a good network, priest. It did not take you long to detect that we now have Mecorima's Chain Mail - the very one YOU robbed by killing its wearer.~
==CVTalop1~ Ha, a silly baby priestess of Mystra - don't interfere in matters too big for you or your weak goddess. Hand over what the Storm Lord demands or you will vanish in this wilderness without a trace.~
==CVSandrJ~ You have no right to ask for something you came to possess only through criminal acts. What is so important about that item for you?~
==CVTalop1~That is none of your business and nothing to be discussed with outsiders.~
=~(He turns to you.) You seem to be the leader of this ragged party and hopefully more reasonable than this blinded good doer of Mystra. What is your answer?~
==CVSandrJ~ <CHARNAME>, this item seems to be of significance to Talos' followers. As such its foreseen use cannot be a good one. Even if we do not know yet, I beg you not to give it to them.~
==CVTalop1~Shut up, girl, let your leader speak now.~
END
++~ We must avoid this bloodshed, Sandrah. I will not risk the wraith of the Storm Lord upon our company. Take it, priest.~ DO~SetGlobal("Mecorima","ars002",5) ~ EXIT
++~ I agree with my counselor, you have murdered and stolen once before for this item already, your intention now is not to be trusted.~ DO~ SetGlobal("Mecorima","ars002",6) ~EXIT
++~We don't have what you ask for, priest. We left the booty on some slain *brothers* of yours not far from here. Pick it up there or just decide you want to join their fate.~ DO~ SetGlobal("Mecorima","ars002",6) ~EXIT
++~ What you search is with some dead brothers of your faith a bit to the south of here. Just let us pass, we have nothing to do with you.~ DO~SetGlobal("Mecorima","ars002",5) ~ EXIT

CHAIN
IF~Global("SantalosDec","GLOBAL",2)~ THEN CVTalop1 IslVis1
~ One who quarrels with the Storm Lord is ill advised to go far out to sea, my silly little Mystra priestress!!~
==CVSandrJ~Always a pleasure to meet Talos' disciples. It is  a good training for me and my friends to fight your stupid hordes time and time again.~
==CVTalop1~You have underestimated and angered the Lord of Destruction before. You were idiotic enough to come out here where Umberlee and Talos are strong and the servant of the Weave is weak.~
==CVSandrJ~Mystra is as strong out here as are those who follow her. Before you go on threatening us endlessly tell us if your visit has any purpose other than to receive a bloody nose for you and your croonies?~
==CVTalop1~The Storm Lord wants only you, Sandrah, priestess of Mystra. Your companions are free to go unmolested.~
END
++~(Stay silent and let Sandrah handle the case.)~+ IslVis2
++~We are companions, priest. Act against one of us and you have to face us all.~DO~IncrementGlobal("Sanpoints","GLOBAL",1)~ + IslVis2
++~What are your intentions with our companion, priest?~ + IslVis2

CHAIN
IF~~ THEN CVTalop1 IslVis2
~Your whole course of action is crossing Talos' plans again and again, Sandrah.~
==CVSandrJ~You make me laugh, priest. We do what anyone who follows a righteous path would do. If followers of your god are the ones who oppose us it is at their own peril. We do not actively seek the fight with Talos. ~
==CVTalop1~This is as much of a confession as was needed!! You have heard it all. We will take you to Talos' temple to pay for it to our Lord.~
=~Your companions may repent and go free once their 'counselor' is out of the way. After a bit of compensation is payed, that is.~
==CVSandrJ~What does that mean?~
==CVTalop1~<CHARNAME>, you will pay 20000 gold to the treasure of the Storm Lord's temple and hand over Sandrah to us. Otherwise none of you will ever leave this island and you will perish with her under the wrath of Talos.~
END
++~(Laugh) You are nothing but a bunch of bandits waylaying travellers. You do not threaten us.~ DO~AddXPObject(Player1, 10000) SetGlobal("SantalosDec","GLOBAL",3)~ EXIT
++~The life of one to rescue the life of many...Sandrah, as a leader I have no choice here as you will surely admit. It is for Mystra to aid you now.~ DO~ SetGlobal("SantalosDec","GLOBAL",10)~ EXIT
++~I do not have that money - and if I had you would not get it anyway from us.~ DO~AddXPObject(Player1, 10000) SetGlobal("SantalosDec","GLOBAL",3)~ EXIT
IF~PartyGoldLT(20000)~THEN REPLY~ I do not have that money - but I will give you all I have if you let us go...~ DO~SetGlobal("SantalosDec","GLOBAL",10)~ EXIT

CHAIN
IF~Global("SantalosRang","GLOBAL",1) ~THEN CVTalop1 Ranger1
~ A Bhaalspawn having lost its bearing due to a do-good offspring of Mystra! The Storm lord is not pleased by the developments, to say the least.~
DO~SetGlobal("SantalosRang","GLOBAL",2) ~
==CVSandrJ~ We grow tired of Talos' continuing threats. Why do you priests seek us out all the times? We have no dealings with the Lord of Destruction.~
==CVTalop1~You and <CHARNAME> are perversions in your sole existence that my god will not tolerate. And now you even appear as these peasant's protectors where they should shudder in fear from the shadow forces that were set free.~
==CVSandrJ~ The Storm Lord set those shadows of old free? I see. ~
=~Your god does not tolerate anything but pure chaos. Even the existence of an organised fellowship including priests like yourself cannot please him.~
==CVTalop1~Heresy!! But what would have to be expected from the likes of you. Aah, I can feel Talos anger growing - the Storm is approaching.~EXIT

CHAIN
IF~Global("SanTalWar","GLOBAL",2)~THEN CVTalos Adakill
~So once again, my dear. You never miss a chance to cross the Storm Lord's path! But open aggression - you have to admit you overstepped the possible line of what I can accept from Mystra's minions.~
DO~SetGlobal("SanTalWar","GLOBAL",3)~
==CVSandrJ~Laughable excuse, Lord of Destruction, you let your temple plan an assault on Lathander while you were quite aware of <CHARNAME>'s involvement with them.~
==CVTalos~Clever advocat, YOU have to admit that you used murder first, hihi.~
==CVSandrJ~Prevention, just like you could have foreseen. You let your lambs been slaughtered blindly.~
==CVTalos~We Gods are not to interfere with the actions of the mortals...~
==CVSandrJ~A rule you bend and use or misuse just like it pleases you.~
==CVTalos~YOU are not one to issue accusations, my dear little agent. Yes, an agent of Mystra you are rather than a priestess. You work for her just like you chose and you play your own game - with her knowledge - just like it suits you. And then you dare to talk about the bending of rules, hahaha.~
==CVSandrJ~If that is how you feel, Talos, raise the case in your celestial circles but do not appear before us as judge for your own case.~
==CVTalos~Hihihi, mortals, a judge? Not at all. I will be a kind teacher to you. I'll show my childeren my kindness and care by administering a punishment for them to contemplate and learn from.~
=~My anger is growing - the Storm is approaching.~ DO~ StartCutSceneMode() Wait(2) ScreenShake([577.451],20) ApplyDamagePercent(Player1,70,CRUSHING) Wait(2) ApplyDamagePercent(Player2,70,CRUSHING) Wait(2) ApplyDamagePercent(Player3,70,CRUSHING) Wait(2) ApplyDamagePercent(Player4,70,CRUSHING) Wait(2) ApplyDamagePercent(Player5,70,CRUSHING) Wait(2) ApplyDamagePercent(Player6,70,CRUSHING) Wait(2) EndCutSceneMode()~EXIT

CHAIN
IF~Global("Umberbowl","GLOBAL",3)~THEN CVTalop1 Tenya
~In the name of the Mighty Storm Lord, stand, unbelievers!~
DO~SetGlobal("Umberbowl","GLOBAL",4)~
==CVSandrJ~ Your master must have a good network, priest. How come that he mingles so closely with the activities of the mortals?~
==CVTalop1~ Ha, a silly baby priestess of Mystra - don't interfere in matters too big for you or your weak goddess. Try to interfere and you will vanish in this wilderness without a trace.~
==CVSandrJ~ You have no right to ask for something when your god has trespassed into our plane with his acts against the Water Queen.~
==CVTalop1~That is none of your business and nothing to be discussed with outsiders.~
=~(He turns to you.) You seem to be the leader of this ragged party and hopefully more reasonable than this blinded good doer of Mystra. What is your answer?~
==CVSandrJ~ <CHARNAME>, the gods have no right to misuse us mortals for their internal quarrels. We HAVE A RIGHT to defend ourselves against such!~
==CVTalop1~Shut up, girl, let your leader speak now.~
END
++~ We must avoid this bloodshed, Sandrah. I will not risk the wraith of the Storm Lord upon our company. ~ + Tenya2
++~ I agree with my counselor, you were the ones to violate the laws of the prime and the gods.~  + Tenya3
++~We will hear first what this priestess' child up north has to say to this case.~ + Tenya4

CHAIN
IF~~THEN CVTalop1 Tenya2
~Fine, we will help you remember this lesson better. ~EXIT

CHAIN
IF~~THEN CVTalop1 Tenya3
~Then your fate will be the same as hers.~EXIT

CHAIN
IF~~THEN CVTalop1 Tenya4
~We will not allow you any further intervention in the affair. Your course ends here.~EXIT