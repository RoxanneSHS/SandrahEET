CHAIN
IF WEIGHT #-4 ~Global("SanHealXul","GLOBAL",1)~THEN BLK#XUL XulSandra1
 ~This is strange for a priestess to heal a wounded in battle.~
 DO ~SetGlobal("SanHealXul","GLOBAL",2)~
== BSandr ~The fighting power of this party is to be maintained.~
== BLK#XUL ~A valid point even if I have never encountered it with any of the priestesses in Ust Natha.~
== BSandr ~You will find a number of slight differences in our behaviour in Ched Nasad. Get accustomed to it if you continue in our party.~
== BLK#XUL ~(Hiss) I will draw my own conclusions, you will not tell me what to think.~
== BSandr ~You are here by your own choice or by someone's command, whatever. Still, while you are here you follow our rules, is that clear?~
== BLK#XUL IF~Global("LK#XulayeKnows","GLOBAL",0)~THEN~We will see...~
== BLK#XUL IF~!Global("LK#XulayeKnows","GLOBAL",0)~THEN~You walk on thin ice still you do it with skill, courage and grace. There is more to you than meets the eye.~
EXIT

CHAIN
IF WEIGHT #-5 ~Global("LK#XulSandrah","LOCALS",1)~THEN BLK#XUL XulSandra2
 ~I have observed you, Sandrah, with your combat and magical skills and I wonder why you are not leading this group openly.~
 DO ~SetGlobal("LK#XulSandrah","LOCALS",2)~
== BSandr ~(Sandrah's hand weights her deadly hammer meaningful.) You better follow <CHARNAME> same way I do, Xulaye. Dare not to question my actions unless you want to suffer for your impertinence. I will not allow your intrigues while you are with us.~
== BLK#XUL ~Well, as long as you will not forget that you depend on me while in Ust Natha, I may chose to ignore your words. You are too useful for me at the moment to question you.~
== BSandr ~Good. Now proof YOUR worth as second rate mage to <CHARNAME> and do not test my patience further.~
== BLK#XUL ~Hiss (Wait until you face a mother matron and HER magical powers...)~
== BSandr ~You still had something to issue?~
== BLK#XUL ~Not at the moment, eh...Mistress. (Who, by Lolth, is she?)~
== IF_FILE_EXISTS BYASRAEN IF~InParty("Yasraena")~THEN~(As Xulaye retreats from Sandrah, her drow friend has approached.) Well, done, it's the language she understands. She surely takes you for a Handmaiden or even a Matron from Ched Nasad now.~
== BSandr IF~InParty("Yasraena")~THEN~ Not a very desirable prospect for me, sorry my friend.~      
==IF_FILE_EXISTS BYASRAEN IF~InParty("Yasraena")~THEN~(Sighs) If you could keep that disguise you could change many things down here.~
== BViconi IF~!InParty("Yasraena") InParty("Viconia")~THEN~(As Xulaye retreats from Sandrah, her drow friend has approached.) Well, done, it's the language she understands. She surely takes you for a Handmaiden or even a Matron from Ched Nasad now.~
== BSandr IF~!InParty("Yasraena")InParty("Viconia")~THEN~ Not a very desirable prospect for me, sorry my friend.~      
==BViconi IF~!InParty("Yasraena")InParty("Viconia")~THEN~(Sighs) If you could keep that disguise you could change many things down here.~
END
IF~!InParty("Yasraena")!InParty("Viconia")~THEN REPLY~(As Xulaye retreats from Sandrah, you remark:) Well, done, it's the language she understands. She surely takes you for a Handmaiden or even a Matron from Ched Nasad now.~EXTERN BSandr NoXulJa
IF~OR(2)InParty("Yasraena")InParty("Viconia")~THEN REPLY~Maybe, but I would never leave her down here.~EXIT

CHAIN
IF~~THEN  BSandr NoXulJa
~Not a very desirable prospect for me, sorry, <CHARNAME>.~
END
++~(Sigh) If you could keep that disguise you could change many things down here.~EXIT

CHAIN
IF WEIGHT #-5 ~Global("LK#XulSandrah","LOCALS",4)~THEN BLK#XUL XulSandra3
 ~I know that Veldrin is a surfacer and I know that you know it, too, priestess.~
 =~His being here is part of whatever YOUR plan is. Why are YOU here? Why do you use surfacers in your plans?~
 DO ~SetGlobal("LK#XulSandrah","LOCALS",5)RealSetGlobalTimer("SanDelayt","LOCALS",800)~
== BSandr~Your position here is as dangerous as mine, Xulaye, so do not waste your breath in attempts to threaten me. Your ambitions go beyond the downfall of your sister Phaere - they threaten your matron mother as well.~
==BLK#XUL~Ha, who would believe you, a no name from Ched Nasad who sneaks in here with her pale slaves in a foolish disguise...~
== BSandr~Seems we have reached a stalemate here. You are intelligent enough to understand this yourself. I will not reveal my plans to you as I do not further investigate yours. All we need to agree on is that we have a common goal in the removal of your sister and the matron. Having succeeded I will not stand in your way to take reign of this city as long as you do not hinder me to fulfil my mission here.~
==BLK#XUL~How am I to accept this without knowing your goal?~
== BSandr~We have no interest in who rules Ust Natha and you will not see us again once we have left. What will you gain from exposing us other than to draw all questioning eyes onto yourself as well? Even if our outsider's accusations cannot prove your guilt against your matron they will leave a large stain of doubt on your loyalty.~
==BLK#XUL~Your coming here coincides with the appearance of that mysterious mage and his pale sister recently...it's those you are after, right?~
== BSandr~We are natural allies for the time being, accept this as a fact. Anything else would only harm both of us.~
==BLK#XUL~You're powerful enough to be useful...and...I can still use the emergency break if I need it.~EXIT

CHAIN
IF WEIGHT #-10 ~NumTimesTalkedTo(0) OR(2)Dead("Solaufein")Global("SolaufeinJob","GLOBAL",7) InParty("Xulaye") !StateCheck("Xulaye",CD_STATE_NOTVALID) InParty("CVSandr")~THEN UDSvir08 SanOveruleXul
~Drow, od golver d'tanyon! Da sugden os tera!~
==LK#Xulj~Orior ulu el, waela yingilin! Dosst streea orn morfeth zhaunus l'ilythiiri ilstar ultrin whol drasven ulu doer!~
==UDSvir08~Alarm!! De ston fall duth nada!! ~
==CVSandrJ~Silence! You have done your duty to Lolth, Xulaye, now let us apply the solution that is best for all.~
==LK#Xulj~You dare to...~
==CVSandrJ~No further discussion in front of those gnomes. Let Veldrin handle the case of this inferior race, it is beyond our skills to deal with such trifles.~
==LK#Xulj~Servant, deal with this gnome scum!~
END
++~Stand, gnomes!~EXTERN UDSvir08 3

CHAIN
IF WEIGHT #-6~Global("LK#XulayeWins","GLOBAL",4) InParty("CVSandr") PartyHasItem("Misc9t")~THEN LK#XULX SanWinsToo
~Respect - You played your role well, priestess, I never saw the surfacer in you until now. Neither did I get the idea what your plan was.~
==CVSandrJ ~You were blinded only by your own mind, Xulaye, unable to see that there was no deceit from my side but just the truth. We had no interest in who rules Ust Natha and you will not see us again once we have left, just like I told you. We have gained what we came for.~
== LK#XULX ~And you intend to leave me in the dark like that?~
==CVSandrJ ~It is in the dark where you rule and you belong. I will not congratulate you to your victory as it is completely irrelevant for us who is the winner down here today.~
== LK#XULX ~You're more drow than any surfacer I have ever encountered and I see that I will learn nothing from you. Anyway you played your part in my plan and that's enough, whoever you are.~
END
++~Just in case you wonder, she is Sandrah of Waterdeep...~+2
