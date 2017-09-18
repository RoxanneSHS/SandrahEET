BEGIN BSandr25

IF~Global("SanTOBanter","GLOBAL",1)~THEN BEGIN SanToBStart1
SAY~ The final chapter of our common journey has begun. The path we need to take side by side seems to become clearer.~
IF~~THEN REPLY~Clearer? What is clear is that I probably do good to keep my lovely advisor with me.~GOTO SanToBStart2
IF~~THEN REPLY~All that is clear to me at the moment is how good it feels you are here with me, Sandrah.~ GOTO SanToBStart2
IF~~THEN REPLY~All that is clear to me at the moment is I need my companions now more than ever, Sandrah.~ GOTO SanToBStart2a
END

IF~~THEN BEGIN SanToBStart2
SAY~ Consult me whenever you feel the need for my advice. And kiss me whenever you feel the need for my love.~
IF~~THEN REPLY~ (Take her in your arms and kiss her passionately.)~DO~SetGlobal("SanTOBanter","GLOBAL",2)~EXIT
END

IF~~THEN BEGIN SanToBStart2a
SAY~ Consult me whenever you feel the need for my advice. ~
IF~~THEN REPLY~ Sure.~DO~SetGlobal("SanTOBanter","GLOBAL",2)~EXIT
END

IF~Global("SanSerBha","GLOBAL",1)~ THEN BEGIN SanSearchServ1
SAY~I have thought a bit about our current situation and I have found an issue that we need to pay more attention to.~
IF~~THEN REPLY~What do you mean?~ DO~ SetGlobal("SanSerBha","GLOBAL",2)~ GOTO SanSearchServ2
IF~~THEN REPLY~Yes?~ DO~ SetGlobal("SanSerBha","GLOBAL",2)~ GOTO SanSearchServ2
IF~~THEN REPLY~Anything I haven't thought of myself?~ DO~ SetGlobal("SanSerBha","GLOBAL",2)~ GOTO SanSearchServ2
END

IF~~THEN BEGIN SanSearchServ2
SAY~ We learned about this Allience of Five and their harvesting of Bhaal's essence by killing other spawns on a large scale. This siege here is most likely a part of that campagne. But there is another player to be observed, we heard about him or her in the Elven Grove already.~
IF~~THEN REPLY~ Sure, it's me.~ GOTO SanSearchServ3
IF~~THEN REPLY~ There was a servant of Bhaal mentioned.~ GOTO SanSearchServ3
IF~Global("TalkedToRielev","GLOBAL",2)~THEN REPLY~ The hooded figure that approched Irenicus with the offer?~ GOTO SanSearchServ3
END

IF~~THEN BEGIN SanSearchServ3
SAY~ A *Servant of Bhaal* the stone heads said and also a *traitor in their midst*. So I assume it is one and the same person.~
IF~ Global("TalkedToRielev","GLOBAL",2)~ THEN GOTO SanSearchServ4a
IF~!Global("TalkedToRielev","GLOBAL",2)~ THEN GOTO SanSearchServ4
END

IF~~ THEN BEGIN SanSearchServ4a
SAY~ I would say the hooded one with his offer to Jon was the same.~
IF~~ THEN GOTO SanSearchServ4
END

IF~~ THEN BEGIN SanSearchServ4
SAY~ Someone trying to pull the strings here, one of the Five who is more cunning and planning than the rest of them.~
IF~~THEN REPLY ~ To guess who that might be we first must know who the five are. ~ GOTO SanSearchServ5
IF~~THEN REPLY ~ If it's one of the five than we can exclude Illasera already. Who are the other four?~ GOTO SanSearchServ5
IF~~THEN REPLY~ Illasera was one of them. Another one must be one of the parties of this siege, either Gromnir or this Yaga-Shura.~ GOTO SanSearchServ5
END

IF~~ THEN BEGIN SanSearchServ5
SAY~Yaga-Shura is most probably one of the allies, as we heard that this Gromnir has already gone to a kind of madness, and it is most unlikely that the fight inside of the group has already begun.  The other three, mmh...it may be too early to issue a suspicion already...~
IF~~THEN REPLY ~ Hey, hey, don't weasel out of it like that. Share it with me, even if we agree it was pure nonsense.~GOTO SanSearchServ6
IF~~THEN REPLY ~Unless you tell me we cannot share valuable information or put it aside as an error.~GOTO SanSearchServ6
END

IF~~ THEN BEGIN SanSearchServ6
SAY~ This Melissan we met seems to know a lot about the Bhaalspawns, she even knew you although you never met. She claims to have brought a lot of weaker Bhaalspawns to the safety of this place. Maybe she brought a herd of sheep to the slaughterhouse. ~
=~We know little, <CHARNAME>, and I do not want to discredit possible friends but we must be careful as we know there is a traitor infiltrating all who are involved here. Do not trust anyone who does not deserve it.~
IF~~THEN REPLY~ At least I know of one whom I can always trust. (You kiss her.)~EXIT
IF~~THEN REPLY~ We must be very careful and I know that you are no doomsayer. I will keep my eyes open - and you continue to bring every observation that may help to my attention.~ EXIT
IF~~THEN REPLY~I found this Melissan quite attractive, wow. I am not going hysterical to see a traitor and foe in every new face I see from now on.~EXIT
IF~~THEN REPLY~ At least I know of one whom I can always trust. (You nod to her.)~EXIT
END

IF~ Global("SanBaltMelis","GLOBAL",4)~ THEN BEGIN AmaSanBalt1
SAY~In this affair there is betrayal and lies whereever we come and the deeper we get involved.~
IF~~THEN REPLY~ It is indeed confusing.~ GOTO AmaSanBalt2
IF~~THEN REPLY~ You have mistrusted Melissan from the beginning, didn't you?~ GOTO AmaSanBalt2
IF~~THEN REPLY~ What are you referring to now?~ GOTO AmaSanBalt2
END

IF~~ THEN BEGIN AmaSanBalt2
SAY~This Melissan - she seems to pull a lot of strings here and make a lot of people act to her plans, whatever they are. ~
IF~~THEN REPLY~Yaga-Shura is an example, now we heard about Balthazar's change caused probably by her visits...~DO~SetGlobal("SanBaltMelis","GLOBAL",5)~ GOTO AmaSanBalt3
END

IF~~ THEN BEGIN AmaSanBalt3
SAY~...and even <CHARNAME> is manipulated by her, as we follow more or less a plan provided by her.~
IF~~THEN REPLY~The main difference may be that this <CHARNAME> you speak of is aware of it - or at least the ever watchful counselor is.~ GOTO AmaSanBalt4
IF~~THEN REPLY~Can you provide any alternative?~ GOTO AmaSanBalt4
END

IF~~ THEN BEGIN AmaSanBalt4
SAY~We are used and we know it, only I see no other method to get to the heart of this matter other than by this way - our recent visit to my father and my sister have confirmed that. We must get inside of this conspiracy or we will become victims ourself.~
IF~~THEN REPLY~ This method is one we do not use for the first time. I count on you to notify me when we should let our masks fall.~EXIT
IF~~THEN REPLY~ We successfully acted like that before. The surprise of our foe has always delighted me.~ EXIT
IF~~THEN REPLY~ You can trust the mightiest and cleverest of the Bhaalspawns to use the situation to our advantage.~EXIT
END

IF~Global("SanKevl","GLOBAL",1)~THEN BEGIN SanKeve1
SAY~(Sandrah had been quite silent and thoughtful since the meetings with Cyric.)~
IF~~THEN REPLY~Another love story gone bad, Ellesime and Jon, Cyric and Mystra... ~GOTO SanKeve2
END

IF~~THEN BEGIN SanKeve2
SAY~ Only that Ellesime would have forgiven Jon had he only found a way of redemption instead of the road of revenge he chose.~
IF~~THEN REPLY~ Your goddess is not that forgiving?~ GOTO SanKeve3
IF~~THEN REPLY~ You never told me what really separated your grandparents.~ GOTO SanKeve3
END

IF~~THEN BEGIN SanKeve3
SAY~Soon after Cyric and Mystra were elevated to gods by AO, Mystra found out the truth about Kelemvor, who became a god himself...~
IF~~THEN REPLY~Kelemvor, god of the dead. How is he involved here?~ GOTO SanKeve4
IF~~THEN REPLY~Kelemvor? He was a dead hero and still became a god - of course the god of the dead.~ GOTO SanKeve4
END

IF~~THEN BEGIN SanKeve4
SAY~If you recall your lore, <CHARNAME>, Kelemvor was one of the adventurers who set out in AO's name at the time of trouble, the others being Adon, Cyric, and Midnight. They had travelled over Toril together already for a number of years and Kelemvor was Midnight's true love at the time.~
IF~~THEN REPLY~But she ended up with Cyric in the end and Kelemvor was dead?~DO~SetGlobal("SanKevl","GLOBAL",2)~GOTO SanKeve5
IF~~THEN REPLY~How did she end up with Cyric while Kelemvor was dead?~DO~SetGlobal("SanKevl","GLOBAL",2)~GOTO SanKeve5
END

IF~~THEN BEGIN SanKeve5
SAY~ Cyric fell in love with Midnight during their adventures. As her heart belonged to Kelemvor Lyonsbane, the later-to-become Prince of Lies decided to get rid of his rival by betrayal. He arranged an ambush on the whole group and used the turmoil of the battle to kill him with the sword Godsbane, the same one he later used on Bhaal.~
=~Afterwards he played the caring and soothing companion to help Midnight in her grief and by that won her heart.~
=~ Mask as Godsbane hid Kelemvor's soul from Cyric and when the adventurers finally succeeded in their final mission, Ao judged it fair to elevate Kelemvor to godhood and give him the Realm of the Dead. Only then and after she had given birth to their son, Mystra found out the truth about the death of her former lover.~
IF~~THEN REPLY~And she never forgave Cyric, who had become the Mad God by that time anyway.~EXIT
IF~~THEN REPLY~Thus the two became archenemies among the gods and we have to suffer the consequences.~EXIT
END

IF~Global("SanGorp","CVUMO6",1)~ THEN BEGIN  SanGorp1
SAY~So ends the story the story of Gorpel Hind and his Band of Merry Fools. Lost without a cause in the depth of Undermountain.~
IF~~THEN REPLY~To think that such a fate might have been ours...~DO~SetGlobal("SanGorp","CVUMO6",2)~ GOTO SanGorp2
IF~~THEN REPLY~A band of fools indeed, what did they search down here other than death?~ DO~SetGlobal("SanGorp","CVUMO6",2)~ GOTO SanGorp2
END

IF~~ THEN BEGIN  SanGorp2
SAY~ Once they thought us to be just an adventuring band like themselves. Well, we never were and we surely will not end like this.~
IF~~THEN REPLY~I was forced to this life and it was always more than gold or fame we were persuing, so much is true. But our end...?~GOTO SanGorp3
END

IF~~ THEN BEGIN  SanGorp3
SAY~ We have become a major power in the Realms by now and we should act accordingly. Once we have finished our quests - and I am confident we will as long as we stay together - we will alter the face of our world to the better.~
IF~~THEN REPLY~You have never believed in a fate different from the one we create for ourselves, Sandrah. I slowly start to accept your vision.~EXIT
IF~~THEN REPLY~You have never believed in a fate different from the one we create for ourselves, Sandrah. I still can't believe that we ever reach the power that lets us decide like we want.~EXIT
END

IF~Global("SanGodInvolve","GLOBAL",4)~THEN BEGIN SanCyrMis1
SAY~So, a number of Gods have selected a champion in th Bhaalspawn struggle. But where is Cyric?~
IF~~THEN REPLY~I don't miss him much.~ GOTO SanCyrMis2
IF~~THEN REPLY~The current God of Murder, yes, he should have more interest than anyone else.~GOTO SanCyrMis2
IF~~THEN REPLY~A good question, I was already wondering a bit myself.~ GOTO SanCyrMis2
END

IF~~THEN BEGIN SanCyrMis2
SAY~The acting god with Bhaal's portefolio has a large interest in the outcome of the Bhaal war. Any successor will threaten him immediately.~
IF~!Dead("Balth")~THEN REPLY~ Hard to imagine he favours Balthazar.~GOTO SanCyrMis3
IF~~THEN REPLY~ He has a granddaughter of sorts...~ GOTO SanCyrMis4
IF~~THEN REPLY~ His interest must be that they kill each other without anyone strong enough to finish the race.~ GOTO SanCyrMis5
END

IF~~THEN BEGIN SanCyrMis3
SAY~Maybe not...~
IF~~THEN DO~SetGlobal("SanGodInvolve","GLOBAL",5)~GOTO SanCyrMis6
END

IF~~THEN BEGIN SanCyrMis4
SAY~It is really a wonder how you survived for so long, idiot...but, wait, there is a bit of truth in it.~
IF~~THEN DO~SetGlobal("SanGodInvolve","GLOBAL",5)~GOTO SanCyrMis6
END

IF~~THEN BEGIN SanCyrMis5
SAY~Hm, either that...or...~
IF~~THEN DO~SetGlobal("SanGodInvolve","GLOBAL",5)~GOTO SanCyrMis6
END

IF~~THEN BEGIN SanCyrMis6
SAY~Cyric would favour a combatant who has no interest to adopt Bhaal's portefolio should he or she be successful in the end. The Bhaalspawn to stop the return of Bhaal.~
IF~~THEN REPLY~Would that not be me?~ GOTO SanCyrMis7
IF~!Dead("Balth")~THEN REPLY~That's either me or Balthazar.~ GOTO SanCyrMis7
END

IF~~THEN BEGIN SanCyrMis7
SAY~I still wonder what Cyric has in mind. The spawn who would stop the return of Bhaal would have the power required to ascend to godhood. We have encountered a number of celestials predicting this already. ~
=~Even if the God of murder is not returning, the outcome of the Bhaal war may be the birth of a new god...~
IF~~THEN EXIT
END

//__===================================================================================
//Return to Faerun
//_===================================================================================

IF~ Global("RtFWait","cvrtf2",1)~ THEN BEGIN StartRtF1
SAY~ This stuff you litter all around reminds me of those adventuring days we had together - and our former comrads as well.~
IF~~THEN REPLY~ You have never changed for me, Sandrah, and I keep calling you by that name even if you are Mystra now.~DO~SetGlobal("RtFWait","cvrtf2",1) RealSetGlobalTimer("RtFWaitDel","cvrtf2",70)~ GOTO StartRtF2
END

IF~~  THEN BEGIN StartRtF2
SAY~(Smiles) You still feel like my wonderful cmpanion you ever were, my *God*. It is one of those little privileges I made AO grant us for our services.~
IF~~THEN REPLY~ You have a lot of power up here and we do much together that I never thought was possible - if you were not a goddess. Was it part of your deal with the Overlord that despite that all I have retained much of my human feelings - including my urge for roaming and adventuring?~GOTO StartRtF3
END

IF~~  THEN BEGIN StartRtF3
SAY~ AO understood that for our reign in the primary plane we had to maintain our ability to feel and think like the creatures in the Realms. But with respect to adventuring, well, that may happen again. I await the reports of our assistants soon about the latest evolution of events in Amn and the Clan Orc land.~
IF~~THEN REPLY~ According to Solar's reports there are disturbances there. He should arrive with news shortly.~EXIT
END
