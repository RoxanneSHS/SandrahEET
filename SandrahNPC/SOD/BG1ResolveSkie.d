I_C_T Boanaste 4 SanSoDSkie
==Boanaste IF~InParty("CVSandr")~THEN~As a teaser of what my mistress has to offer, she has entitled me to give you this little present.~DO ~GiveItemCreate("CVSkiDa",Player1,1,0,0)~
==CVSandrJ IF~InParty("CVSandr")~THEN~A soultaker dagger...a strange gift from a strange woman...but wait - this dagger has been used...~
==Boanaste IF~InParty("CVSandr")~THEN~My mistress claims that the soul it contains may be of some value to you.~
==CVSandrJ IF~InParty("CVSandr")~THEN~(Whispers) Skie...Skie Silvershield.~END

CHAIN
IF WEIGHT #-4~Global("SanSodEntrap","Global",1)~THEN BSandr Entrap1
~An expertise on magical entrapments - my love, we should keep this book for me to study when this battle is over.~ 
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