I_C_T Boanaste 4 SanSoDSkie
==Boanaste IF~InParty("CVSandr")~THEN~As a teaser of what my mistress has to offer, she has entitled me to give you this little present.~DO ~GiveItemCreate("CVSkiDa",Player1,1,0,0)~
==CVSandrJ IF~InParty("CVSandr")~THEN~A soultaker dagger...a strange gift from a strange woman...but wait - this dagger has been used...~
==Boanaste IF~InParty("CVSandr")~THEN~My mistress claims that the soul it contains may be of some value to you.~
==CVSandrJ IF~InParty("CVSandr")~THEN~(Whispers) Skie...Skie Silvershield.~END

CHAIN
IF WEIGHT #-4~Global("SanSodEntrap","Global",1)~THEN BSandr Entrap1
~An expertise on magical entrapments - <CHARNAME>, we should keep this book for me to study when this battle is over.~ 
DO~SetGlobal("SanSodEntrap","Global",2)~
END
++~Anything of imminent help for the tasks at hand?~+ Entrap2
++~Your hunger for wisdom lets you forget what is going on right in front of you.~+ Entrap2
++~Who knows when we need some knowledge like that...better be prepared, just in case.~+ Entrap2

CHAIN
IF~~THEN BSandr Entrap2
~There is no imminent use for this knowledge, but it seems our foe care about the subject and thus we should be prepared.~
=~We found some captured souls already during our travels, Carsa's jar or some souldagger, if I may remind you. Knowledge has often helped us in the past.~
END
++~Maybe that is why I still drag you along.~EXIT
++~(Wink) And maybe that is why I still drag you along.~EXIT

CHAIN
IF WEIGHT #-4~Global("bd_sandrah_ot","bd4100",1)~THEN CVSandrJ Killskie1
~(Sandrah's face is pale as she turns to you after having inspected Skie's corpse.)~
DO~SetGlobal("bd_sandrah_ot","bd4100",2)~
END
++~Can you do nothing for her?~+ Killskie2
++~What has happened here...is there anything to prove that things are not what they seem?~+ Killskie2

CHAIN
IF~~THEN CVSandrJ Killskie2
~I know you did not kill her, even if you are unsure about yourself. The fact that bothers me is that the killer took Skie's soul. We will have a hard time to prove your innocence since we cannot restore the only witness we have.~
=~The killer used something like a soultaker weapon, without the weapon that holds Skie's soul, I can do nothing for her.~EXIT

CHAIN
IF WEIGHT #-4~Global("SanSoDSkie","Global",1)~THEN BSandr Backlive1
~She gives us the soul of Skie Silvershield, quite some invitation.~
DO~SetGlobal("SanSoDSkie","Global",2)~
=~Whatever you decide to do with the strange mistresses' offer - we must restore Entar Silvershield's daughter. Be it for her own sake or to clean our names from the accusation of being her murderers.~
END
IF~!Global("SanSodEntrap","Global",2)~THEN REPLY~Are you able to do this, my healer?~ + Backlive2
IF~!Global("SanSodEntrap","Global",2)~THEN REPLY~How are we going to do that, some dark ritual or such?~  + Backlive2
IF~!Global("SanSodEntrap","Global",2)~THEN REPLY~Will it be possible to restore a version of Skie with some less *words per minute*?~ + Backlive2
IF~Global("SanSodEntrap","Global",2)~THEN REPLY~Are you able to do this, my healer?~ + Backlive3
IF~Global("SanSodEntrap","Global",2)~THEN REPLY~How are we going to do that, some dark ritual or such?~  + Backlive3
IF~Global("SanSodEntrap","Global",2)~THEN REPLY~Will it be possible to restore a version of Skie with some less *words per minute*?~ + Backlive3

CHAIN
IF~~THEN BSandr Backlive2
~We cannot do it right here in the road, but any nearby temple of a good deity would do, where the dagger would be destroyed and the captive soul set free.~
END
++~Fine, let's go to a temple right now.~EXIT
++~I will keep that in mind, counselor. We may do that some time.~EXIT

CHAIN
IF~~THEN BSandr Backlive3
~Remember that book we once found at Dragonspeare Castle...actually very close to where Skie's soul was entrapped. I have studied it and know what to do.~
=~We cannot do it right here in the road, but any nearby temple of a good deity would do, where the dagger would be destroyed and the captive soul set free.~
END
++~Fine, let's go to a temple right now.~EXIT
++~I will keep that in mind, counselor. We may do that some time.~EXIT

CHAIN
IF WEIGHT #-4~Global("SanSoDSkie","Global",3)~THEN BSandr Backlive7
~This is the right place to free poor Skie from her soul prison. We shall not prolong her suffering.~
=~You are present, the one who's hand was made to hold the dagger when her soul was taken, so we have all we need for the ritual.~
DO~SetGlobal("SanSoDSkie","Global",4) ClearAllActions() StartCutSceneMode() Wait(2)StartCutScene("CVSkieR")~ EXIT

CHAIN
IF WEIGHT #-4~Global("SanSoDSkie","Global",5)~THEN Skie Backlive8
~Who are you? What are you doing here? What AM I DOING HERE? Where is *here* anyway? Help! Help!~
DO~SetGlobal("SanSoDSkie","Global",6) AddexperienceParty(10500)~
==CVSandrJ~Skie Silvershield, calm down. You need not to worry, we have just helped you. Look around, this is a temple, a safe place.~
==Skie~A temple? In Dragonspear Castle? I'm a soldier of the Flaming Fist...ah, I understand, I was wounded...~
=~No, I was not wounded...~
=~I was...killed...~
=~...~
=~This face - I remember this face. YOU were there - this person there killed me, HELP.~
==CVSandrJ IF~Global("SanRomPath","Global",1)~THEN~Yes, this man, <CHARNAME>, was there when it happened, but also the other one.~
==CVSandrJ IF~Global("SanRomPath","Global",2)~THEN~Yes, this woman, <CHARNAME>, was there when it happened, but also the other one.~
==Skie~Yes, I see it again, scarface, the one with the knife, the one with the merciless blue eyes...he did it, didn't he? He killed me?~
==CVSandrJ~Yes, Irenicus. (Sandrah slowly and kindly brings the perplexed girl back to reality and tells her about the events that took place after her death.)~
==Skie~But that is incredible. They accuse YOU of my murder. But I am alive - so there isn't really any murder done - but it has been done but not by you...I need to tell my father. NOW!~
==CVSandrJ~Yes, you need to go back to Baldur's Gate and clarify things - most of all you must bring your father the news that you are alive.~
=~We cannot accompany you, however. We need to persue your killer and Imoen, and, in addition, we are escaped prisoners still in the eyes of Baldur's Gate.~
==Skie~That will change soon. I will immediately consult the Jysstevs, we have business with them since a long time. They will arrange for my return home. All will be well soon. Do not forget to visit me, should your way lead you back to our town...(she continues to babble all the way to the temple's doors.)~DO~EscapeAreaDestroy(55)~
END
++~Well done, counselor. I hope she will remember to restore our reputation when she gets to Baldur's Gate.~EXIT
++~Her appearance in Baldur's Gate will remove all accusations of murder - even if I doubt we would be celebrated heroes again, at least we are no longer criminals.~ EXIT

CHAIN
IF~Global("SanSoDSkie","Global",8)~ THEN CVSandrJ KillskieF1
~We can only hope that Skie did succeed in restoring our reputation in Baldur's Gate and we do not get into trouble entering the town.~
DO~SetGlobal("SanSoDSkie","Global",9) SetGlobal("SanSoDSkieB","Global",2)~
END
++~Entar Silvershield's daughter should be able to do as much.~ + KillskieF2
++~Once her father would have been able to extract the story from her stream of babbling, it should have become obvious that I was innocent.~ + KillskieF2
++~The accusation of murder is pointless with the victim being alive, right?~ + KillskieF2

CHAIN
IF~~ THEN CVSandrJ KillskieF2
~The mistrust against Bhaalspawns may prevail over the return of a lost daughter.~
=~Entar may even suspect this to be another intrigue of the hated breed.~
END
++~What? You lost me now...~ + KillskieF3
++~I would think to regain his daughter would be the most important fact.~ + KillskieF3

CHAIN
IF~~ THEN CVSandrJ KillskieF3
~Oh, I was referring to HER heritage...~
=~*She stops for a moment, looking at you questioningly.*~
=~I see...you never suspected...I thought you knew. Well, then - Skie is another Bhaalspawn.~
END
++~What? Are you sure?~ + KillskieF4
++~Sandrah, please, you start to see Bhaalspawns everywhere these days.~+ KillskieF4

CHAIN
IF~~ THEN CVSandrJ KillskieF4
~Please, I am not hysterical. Just look at the facts we have.~
=~The hooded man, Irenicus as we know by now, was always referring to another candidate before he finally captured you. I falsly assumed he meant Caelar, but no.~
=~Remember Skie's conduct during the Dragonspear campaign.~
END
++~A spoiled brat without any discipline, the nightmare of her superiors.~ + KillskieF5
++~Anything specific?~  + KillskieF5

CHAIN
IF~~ THEN CVSandrJ KillskieF5
~Remember when we first met her as a Flaming Fist. Out in that wood over the dead corpses of those *food thieves*. Well armed bandits and experienced fighters she claimed to have followed and defeated - single handed with her shortsword.~
=~Next her disappearance from the coalition camp. Why did she leave? There was never a sign that her disappearance was against her will.~
=~Her mother died during her birth, like mostly the mothers of a Bhaalspawn do...~
=~But finally - the fight you had when Irenicus tried to make you kill her. He had made his decision, his candidate was you - not her. So he got rid of her and at the same time discredited you in a way to force you out of Baldur's Gate. That monster you saw, Skie turned into the Avatar of Bhaal, the Slayer. Only a Bhaalspawn would have this ability.~
END
++~A lot of evidence...and your interpretation of it. I am not convinced.~EXIT
++~I am afraid that you may be just too right, my counselor.~EXIT
++~You have confirmed what I was trying not to see...I just hope that her father does not even know about her heritage.~EXIT

CHAIN
IF~Global("SanSoDSkieB","Global",1)~ THEN CVSandrJ KillskieF1B
~We can only hope that Skie did succeed in restoring our reputation in Baldur's Gate and we do not get into trouble entering the town.~
DO~SetGlobal("SanSoDSkieB","Global",2)~
END
++~Entar Silvershield's daughter should be able to do as much.~ + KillskieF2
++~Once her father would have been able to extract the story from her stream of babbling, it should have become obvious that I was innocent.~ + KillskieF2
++~The accusation of murder is pointless with the victim being alive, right?~ + KillskieF2

CHAIN
IF WEIGHT #-4~Global("SanSoDSkieB","Global",3)~THEN Skie BackHell
~This time I'm the hooded one to watch, hihi.~
DO~SetGlobal("SanSoDSkieB","Global",4)~
==Skie~Irenicus will pay, I'm sure. I know you have all reason to make him pay, <CHARNAME>.~
==CVSandrJ~Skie? I will not ask why you are here, I am just curious how you accomplished being here. But then, I guess I already know that answer as well.~
==Skie~Ha, Miss Clever, how could I've doubted you would be here as well. But even you can't prevent what will happen here, nor what will happen when Irenicus falls.~
END
++~Why are you here, Skie?~+ BackHell2
++~How can you be here, Skie?~+ BackHell2
++~Sandrah was right, you're here because you are a child of Bhaal as well.~+ BackHell2

CHAIN
IF ~~THEN Skie BackHell2
~Hey, this is as well my place as it's yours, <CHARNAME>. Entar Silvershield is not my father. I learned to accept it. You showed me, Irenicus showed me, and my new ally showed me what to do with my *potential*.~
=~Do what you must. I will not stand in your way today, dear <PRO_BROTHERSISTER>. Not this time.~
==CVSandrJ~Your new ally, Skie? Has he motivated you to follow the urge of your blood...~
==Skie~He? There is no *he*. SHE has shown me where my destiny lies. They tried to keep me away from power and lock me in a golden cage. My stupid brother was to rule in Baldur's Gate, not me, who deserved it.~
==CVSandrJ~Is this why he had to die? You were involved in Eddard's murder near Beregost?~
==Skie~I had to start somewhere, didn't I. And I have to finish somewhere. You and <CHARNAME> will do better than any to be the cherry on my cream. But first you be so nice to clean up this Irenicus mess, will you, dear?~
=~Sure you will, you need your soul. At least for a little while longer.~DO~ReallyForceSpell(Myself,DRYAD_TELEPORT)~EXIT

CHAIN
IF WEIGHT #-4~Global("SanSoDSkieB","Global",5)~THEN Skie BackYaga
~Thank you, you're the greatest, <CHARNAME>.~
DO~SetGlobal("SanSoDSkieB","Global",6)~
==CVSandrJ~Skie, are you following us?~
==Skie~I was told you would try to find a way to defeat Yaga-Shura. When I heard of it I was rejoicing, really. You must believe me.~
==CVSandrJ~I do believe you. Your new ally told you, am I right? Eliminating the fire giant creates a vacant seat among the Five. Just think of it Skie, that seat was made for a giant. It might be far too large for you.~
==Skie~You...Ha, I shouldn't have underestimated your cleverness, Sandrah. But so what...even if you think you know what's going on, you can't do anything else but play our game.~
==CVSandrJ~You are in league with Melissan. What did she promise you? A seat at your father's side, some crumbs from the Throne of Bhaal?~
==Skie~Hush, little girl. Be a good pet and help <CHARNAME> to destroy the heart.~
=~And excuse the Lady Silvershield, you know, things to do and people to meet and so on...~DO~ReallyForceSpell(Myself,DRYAD_TELEPORT)~EXIT