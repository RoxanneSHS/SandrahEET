INTERJECT_COPY_TRANS psteos 25 SanPsMysPlot
== CVSandrJ IF ~ InParty("CVSandr") ~ THEN ~ <CHARNAME>, I dearly plead to you to take this task. The artefact in question would constitute a magnificent threat to us all who depend on the Weave to be intact. My goddess has sealed it for a good reason.~
==psteos IF ~ InParty("CVSandr") ~ THEN ~ And we will unseal it to gain its power!!~
== CVSandrJ IF ~ InParty("CVSandr") ~ THEN ~ That remains to be seen - first this artefact needs to be rescued from those who stole it and be brought back into our control. In this aspect we have a common goal, Teos.~END

APPEND CVSandrJ
IF~ Global("SanPsMysPlot","GLOBAL",2) ~THEN BEGIN SanGetPSArtef1
SAY~I think I owe you an explanation about my reaction to that task.~
IF~~THEN REPLY~ I was hoping for that. I cannot imagine that you would act against the will of your goddess who has sealed this artefact for a good reason.~ DO~ SetGlobal("SanPsMysPlot","GLOBAL",3) ~GOTO SanGetPSArtef2
IF~~THEN REPLY~ (Smile) In have the feeling you do your little *secret agent* routine in Mystra's name here once again.~ DO~ SetGlobal("SanPsMysPlot","GLOBAL",3) ~GOTO SanGetPSArtef2
END

IF~~THEN BEGIN SanGetPSArtef2
SAY~ It is not so astonishing to side with Teos to regain the stolen thing. We must get it under our control - and we will only know what is really going on if we stay involved with the events. Those cowls are determined to continue their experimentations, dangerous as they are and we must be there for Mystra's benefit to be ready for intervention when necessary.~
IF~~THEN REPLY~I see your point, I only hope this power is not beyond our skills.~GOTO SanGetPSArtef3
END

IF~~THEN BEGIN SanGetPSArtef3
SAY~ I cannot guarantee this. All I know is that things can go much worse if we let those magelings try to resolve the issue without our knowledge and the possibility to step in when things go wrong.~
IF~~THEN REPLY~Your goddess can really be content with a priestess such as you.~EXIT
IF~~THEN REPLY~Mystra and the Weave may depend on our abilities. Wow - I hope your goddess will be ready to act should we need her...~GOTO SanGetPSArtef4
END

IF~~THEN BEGIN SanGetPSArtef4
SAY~ (Mumbles) At least I will be - if that appeases you.~
IF~~THEN EXIT
END

IF~Global("PsTeosRabbit","ar0410",2)~THEN BEGIN Rabbit2
SAY~I can only hope he swallowed the bait, he and his masters.~
IF~~THEN REPLY~What the hell was that? What is that rabbit really? The future of the Realms and the Multiverse rely on this rabbit? What part do you play in this madness?~GOTO Rabbit3
END

IF~~THEN BEGIN Rabbit3
SAY~Teos was right, <CHARNAME>. This rabbit is nothing but a rabbit. And this artefact was just a rabbit cage.~
=~The cowled wizards surely expected someone else to emerge from the artefact but that is not our problem.~
IF~~THEN REPLY~And you know what they expected?~GOTO Rabbit4
IF~~THEN REPLY~And you let me play my part here blindly to fool the cowls?~GOTO Rabbit4
END

IF~~THEN BEGIN Rabbit4
SAY~(Smiles enigmatic.) Does it really matter, my dear. You have what you wanted, do you not? The sphere is now your own and the cowled wizards have found that what they wanted from your cooperation, cannot be gained.~
=~(She kisses you lightly.) You have won. Mystra has won. We need not to know more.~
IF~~THEN DO~ SetGlobal("PsTeosRabbit","ar0410",3)~EXIT
END

END

CHAIN
IF~Global("SanPsMysPlot","GLOBAL",6)~THEN CVSandrJ SanMelTrap1
~Melanthium...it seems he has swallowed the bait.~
DO~SetGlobal("SanPsMysPlot","GLOBAL",7)~
==Psmystra~*The woman lies still breathing quietly. Sparks of magic occasionally jump off her, but she seems injured.*~
==CVSandrJ~Father briefed us well to trust instinct and heart and not to loose faith.~
END
++~Is that how you mourn your beloved father, priestess. Bait?~ + SanMelTrap2
++~Elminster dead, Khelben dead, Mystra lying dying at our feet, Sandrah!!??~ + SanMelTrap2

CHAIN
IF~~ THEN CVSandrJ SanMelTrap2
~Were my father really dead, <CHARNAME>, my heart would cry out in mad pain and fury, believe me. It does not and I trust it in that as you should trust me.~
=~Is it like I said, grandmother?~
==Psmystra~The risks we had to accept are really high. We are all alive but he has stripped me of my power, and imprisoned me here. He thinks it more amusing that I should die along with all the other powerless beings when he takes his revenge.~
==CVSandrJ~And now he moves on to his plot forgetting about the ones that are able to act according to the rules and laws of the Prime because it is their plane.~
==Psmystra~Once again I see that our trust in you and <CHARNAME> is well-founded. You - his remaining foes - are invisible to his arrogance.~
END
++~You said something about revenge. Surely he has already avenged himself?~ EXTERN PSMystra 5

CHAIN
IF WEIGHT #-5~Global("SanPsMysPlot","GLOBAL",4) ~  THEN PSElmin SanWarn
~Gods are only as strong on the primary plane as the fellowship is they can gather among the mortals.~
DO~ SetGlobal("SanPsMysPlot","GLOBAL",5) ~
== CVSandrJ~ Mystra can rely on hers. We know that as much as she is dependent on us, we are gaining from her protection of the Weave that is source for all of us.~
==PSElmin~Well perceived, mine beloved daughter. Now...~
=~Thou and <CHARNAME> hath found the artefact and secured it. Excellent.~
== CVSandrJ~You know what the cowled wizards are planing to do, do you not, father?~
==PSElmin~Well, let them have their feat. 'tis only by that means that we can overcome our foe once and for all.~
== CVSandrJ~It is a trap - but it challenges Mystra, maybe even endangers her.~
==PSElmin~A trap - only for those who blindly stumble into it. It hath been the case before that the celestials have to rely on the fearless deeds of the mortals to persist. Mortals of exclusive potential, I dare say.~
== CVSandrJ~What advice can you provide us with, father?~
==PSElmin~Follow only thine fine instinct, Sandrah, let thy senses not be fooled.~
== CVSandrJ~You and Mystra set your trust in me - and I set mine in <CHARNAME>.~
==PSElmin~A valid approach. Fair thee well and do not become desperate regardless of what thee think thou encounter.~DO~ ReallyForceSpell(Myself,DRYAD_TELEPORT) ~EXIT

ADD_STATE_TRIGGER PSMysEnd 0
~!InParty("CVSandr")~

CHAIN
IF WEIGHT #-1~ InParty("CVSandr")Global("psFinalQuestToKillMelCounter","GLOBAL",4)~THEN PSMysEnd  Santalk
~You have my thanks... My power is restored, as is my divinity. Know this - were it not for your ancestry, you would become the greatest of my Chosen for you are powerful, and will become even greater (perhaps too great). You have my thanks!~
==CVSandrJ~ Mystra - grandmother, it is good to see you restored. Your plan has finally led to the desired result.~
==PSMysEnd~ The threat was to the Realms and to the celestials as well. It is you and <CHARNAME> who deserve the thanks of the gods for what you did. Once more it has been shown that we all rely on your kin if the material plane is chosen as the battlefield. A mistake often made, this time again by Melanthium. Not to forget of course the mistake to underestimate <CHARNAME> - and my granddaughter.~
==CVSANDRJ ~ So this sorcerer was a real danger for the Lady of Pain - and for you, Mystra?~
==PSMysEnd~ You know well by now that we need the aid and the faith of the mortals to aid us in all we do on the Prime Plane, Sandrah. I am no longer Midnight, I need you and your father, as well as <CHARNAME> when a danger arises from Toril. And dangerous, greedy and corrupt he was.~
==CVSANDRJ ~Then we have prevented the slaying of a god today?~
==PSMysEnd~ More than one, my dear. The only fact that rescued us was that it never became apparent to Melanthium whom he was facing.~
==CVSANDRJ ~The mighty Bhaalspawn <CHARNAME>!~
==PSMysEnd~ No, I was referring to you, Sandrah.~
==CVSANDRJ ~Really....?~
==CVSANDRJ IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN~ If such is our deed, may I humbly ask for a favour from my goddess then.~
==PSMysEnd IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN~ You may ask. Whether it is mine to give will be seen.~
==CVSANDRJ IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN~You know that I seek answers...I always do and will continue to do. So, what would have happened if we had failed? If Melanthium had succeeded to eliminate you?~
==PSMysEnd IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN~ This question had to come sooner or later, child. You know the answer, AO would have inthroned the next incarnation of Mystra, as the Weave requires a guardian.~
==CVSANDRJ IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN~Yes, and it will be one of your human bloodline, the female line I mean.~
==PSMysEnd IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN~This is correct.~
==CVSANDRJ IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN~Can you tell me what would be my role in this case?~
==PSMysEnd IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN~ Your role is the most crucial - for all of us, the Realms and the Weave. A moment ago you called yourself a seeker, Sandrah. That is your role.~
==PSMysEnd ~Now only one thing remains... Farewell, Mortal, I am sure we shall meet again. And I'm sure you'll see dear Elminster again, too. ~ DO~
StartCutSceneMode()
Wait(1)
ForceSpell(Myself,CLERIC_HEAL)
Wait(1)
CreateVisualEffect("SPBASEWT",[736.1328])
CreateVisualEffect("SPBASEWT",[748.1218])
Wait(1)
CreateCreature("psElmin",[748.1218],0)
CreateCreature("psKhel",[736.1328],0)
Wait(2)
ActionOverride("psKhel",ForceSpell(Myself,DRYAD_TELEPORT))
ActionOverride("psElmin",ForceSpell(Myself,DRYAD_TELEPORT))
Wait(1)
ActionOverride("psElmin",DestroySelf())
ActionOverride("psKhel",DestroySelf())
ForceSpell(Myself,HOLY_LIGHT_FROM_ABOVE)
ReputationInc(4)
GiveItemCreate("psSPL08",Player1,1,0,0)
ApplySpellRES("SPPSMYS",Player1)
ApplySpellRES("SPPSMYS",Player2)
ApplySpellRES("SPPSMYS",Player3)
ApplySpellRES("SPPSMYS",Player4)
ApplySpellRES("SPPSMYS",Player5)
ApplySpellRES("SPPSMYS",Player6)
Wait(2)
ActionOverride("CVSandr",AddSpecialAbility("CVMyMe"))
SetGlobal("psFinalQuestToKillMelCounter","GLOBAL",5)
EndCutSceneMode()
DestroySelf()~EXIT





