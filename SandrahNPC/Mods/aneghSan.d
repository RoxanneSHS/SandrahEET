APPEND CVSANDRJ

IF~Global("ZDreamSzene1","GLOBAL",4)~THEN BEGIN SanAneWeavTh1
SAY~ A threat to the Weave itself and my goodess. <CHARNAME>, I am most relieved that I have you and our steadfast companions to care about the assault.~
IF~~THEN REPLY~ What did we just see, a vision announcing the death of Mystra herself? ~ DO~ SetGlobal("ZDreamSzene1","GLOBAL",5) ~GOTO SanAneWeavTh2
END

IF~~ THEN BEGIN SanAneWeavTh2
SAY~I would not yet be so dramatic, my love. Many attempts have been made in the past by sorcerers led astray by the sheer idea of gaining the power of the Weave for themselves.~
IF~~THEN REPLY~ Which in itself is defended by your goddess.~ GOTO SanAneWeavTh3
IF~~THEN REPLY~ To gain the access, Sandrah, Mystra needs to be defeated.~ GOTO SanAneWeavTh3
END

IF~~ THEN BEGIN SanAneWeavTh3
SAY~ (Smiles) Like I said, <CHARNAME>, this happened again and again and I am confident that this time again Mystra will succeed in her duty to defend the Weave.~
IF~~THEN REPLY~ But...what about the vision we saw, her downfall?~ GOTO SanAneWeavTh4
END

IF~~ THEN BEGIN SanAneWeavTh4
SAY~ Remember what I taught you about Mystra's special relation to us mortals, darling. Not only she has always been one of us to be elevated to godhood for her deeds - but also she and AO have always counted on heroes from the material plane when they needed support against an agression that originates from Faerun.~
IF~~THEN REPLY~ So the dream was maybe send by Mystra herself as a request for our aid?~ GOTO SanAneWeavTh5
IF~~THEN REPLY~ This vision was telling us that the sorcerer who attacks is a mortal?~ GOTO SanAneWeavTh5
END

IF~~ THEN BEGIN SanAneWeavTh5
SAY~ That is exactly what I think myself, my competent leader. The agression is the work of mortals and we are called to aid AO and Mystra as it is our plane that is the battlefield - and down here our gods always require our strength and support as they are vulnerable in their avatars.~
IF~~THEN REPLY~ Wow, you and me aiding...like Midnight and her companions in the Time of Troubles.~GOTO SanAneWeavTh6
IF~~THEN REPLY~ Is that your role here, Sandrah, just like your grandmother before you? All these hints we have found about you following her footsteps? We must contemplate this.~ GOTO SanAneWeavTh6
END

IF~~ THEN BEGIN SanAneWeavTh6
SAY~(Her smile appears to be a bit forced, at least that is what your loving eye reveals to you.)~
=~ I think you exaggerate our role here a bit...but a nice thought in its way.~
IF~~THEN EXIT
END

IF~~ THEN BEGIN NomoTrait1
SAY~ (You take Sandrah out of earshot) You have the same concerns that I have, <CHARNAME>, the guy is more than just suspicious. Why does he know he needs a dragon protection scroll at hand when there is really a dragon waiting here? How did he know about this portal before having seen it?~
IF~~THEN REPLY~ But then again it was him who urged us to come here to defend the city he had co-founded himself.~ GOTO NomoTrait2
END

IF~~ THEN BEGIN NomoTrait2
SAY~ You noticed the little remarks concerning your blood, did you?~
IF~~THEN REPLY~ You mean he knows that I am a Bhaalspawn - so he chose me for the power he knows I possess to use me against his enemies.~ GOTO NomoTrait3
END

IF~~ THEN BEGIN NomoTrait3
SAY~ One possibility. The other is that the whole trap is constructed around you from the beginning. The siege, the invasion, all just to get you here. Your enemies have set up such bloody schemes before to trap the Bhaalspawn who probably is the most powerful remaining one.~
IF~~THEN REPLY~ I have learned that much from you and our common experience, Sandrah. Now that we know the issues we are prepared and can play along his lines to get to the core of the matter - and destroy him.~ GOTO NomoTrait4
END

IF~~ THEN BEGIN NomoTrait4
SAY~You tell him your decision and I will take the opportunity to secretly warn our companions so we will all be ready to strike when you give us the sign.~
IF~~THEN EXTERN Z_NOMO5 3
END

IF~Global("ZDreamSzene1","GLOBAL",6)~ THEN BEGIN NomoTrait5
SAY~(Mumbles in thought) Nomoran...?~
IF~~THEN REPLY~ Who is that guy, Sandrah, any idea?~ DO~SetGlobal("ZDreamSzene1","GLOBAL",7)~GOTO  NomoTrait6
END

IF~~ THEN BEGIN NomoTrait6
SAY~ No, the name recalls nothing, but who says it is not just another disguise. At least I suspect that he really is the sorcerer our vision has shown us. Who else could hold a Bhaalspawn like Marlik under control and then recruit an even more powerful one to defeat him.~
IF~~THEN REPLY~ He is not unfailable and so far has not overpowered us. I agree with your opinion that it must be a force such as us to stop his planned assault on the Realms.~EXIT
IF~~THEN REPLY~ Ha, but here we are at the inside of his operation from where we can blow him the most uninspected blows. Control Bhaalspawns? Ha, laughable!~ EXIT
END

IF~Global("ZDreamSzene1","GLOBAL",8)~ THEN BEGIN NomoTrait7
SAY~These poor misled Bhaalspawns all have something in common.~
IF~~THEN REPLY~ That is true. They do not have someone like you by their side, my love.~ DO~SetGlobal("ZDreamSzene1","GLOBAL",9)~GOTO  NomoTrait8
END

IF~~ THEN BEGIN NomoTrait8
SAY~ Sweet charmer, thank you. What I meant is that they all let someone else have control over them, even if they all try to break the chain after a while. But it is always too late, as the evil spawn inside has already developped too far.~
IF~~THEN REPLY~ If I see it right it was the same for me, just that the one who had control was a wise harper named Gorion and his influence was just the opposite to what those others experienced. And then came a priestess who never tired to get me moving along unharmed.~ DO~IncrementGlobal("Sanpoints","GLOBAL",1)~ EXIT
IF~~THEN REPLY~ Neither Gorion nor yourself would have allowed such. I know very well by now that you and your hammer would have ended my existance before I could grow into such a monster.~ EXIT
END
END

CHAIN
IF~Global("ZDreamSzene1","GLOBAL",10)~ THEN CVSANDRJ SanMysNotThisTime
~ Mystra - grandmother, you have aided us well to destroy this deadly threat to our Realms.~
DO~SetGlobal("ZDreamSzene1","GLOBAL",11)~
==SANMYST~ The threat was from the Realms to the celestials as well. It is you and <CHARNAME> who deserve the thanks of the gods for what you did.~
==CVSANDRJ ~ So the Dragon of the North was a real danger for you, Mystra?~
==SANMYST~ You know well by now that we need the aid and the faith of the mortals to aid us in all we do on the Prime Plane, Sandrah. I am no longer Midnight, I need you and your father, as well as <CHARNAME> when a danger arises from Toril. And dangerous, old and corrupt he was.~
==CVSANDRJ ~And did he kill Bhaal as he has claimed?~
==SANMYST~ You know your lore better than any, granddaughter. You know that Cyric backstabbed with the weapon which was really Mask in disguise. Mask never forgave AO for raising Cyric to be a god afterwards. Nomartyrinakor was Mask's avatar down here.~
==CVSANDRJ ~Then we have slain a god today?~
==SANMYST~ No. You killed the ancient dragon because Mask had retreated his prime shell when it became apparent to him whom he was facing.~
==CVSANDRJ ~The mighty Bhaalspawn <CHARNAME>!~
==SANMYST~ No, I was referring to you, Sandrah.~
==CVSANDRJ ~Really....?~
==CVSANDRJ IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN~ If such is our deed, may I humbly ask for a favour from my goddess then.~
==SANMYST IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN~ You may ask. Whether it is mine to give will be seen.~
==CVSANDRJ IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN~You know that I seek answers...I always do and will continue to do. So, what would have happened if we had failed? If Nomartyrinakor or Mask had succeeded to eliminate you?~
==SANMYST IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN~ This question had to come sooner or later, child. You know the answer, AO would have inthroned the next incarnation of Mystra, as the Weave requires a guardian.~
==CVSANDRJ IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN~Yes, and it will be one of your human bloodline, the female line I mean.~
==SANMYST IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN~This is correct.~
==CVSANDRJ IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN~Can you tell me what would be my role in this case?~
==SANMYST IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN~ Your role is the most crucial - for all of us, the Realms and the Weave. A moment ago you called yourself a seeker, Sandrah. That is your role.~
==SANMYST ~ Farewell, Sandrah.~
EXIT

EXTEND_BOTTOM Z_NOMO5 1
IF~ InParty("CVSandr")~ THEN REPLY ~I would like to consult with my counselor for a moment, just the two of us.~ EXTERN CVSANDRJ NomoTrait1
END

APPEND Z_Igor
IF WEIGHT #-4 ~Global("ZIgorTalk","GLOBAL",4)PartyHasItem("z_free") InParty("CVSandr") GlobalLT("ZDreamSzene1","GLOBAL",8)~THEN BEGIN SanDelay
SAY~Ah, you have the complete scroll and we could investigate the nature of the incarcerated, be it the big hero Tandos Anegh or the bad arch magician Daraknor.~
=~But I see you have a priestess of Mystra with you, the goddess currently in distress.~
IF~~THEN REPLY~You are right, we have to finish our mission first before we can help you with your investigation.~EXIT
IF~~THEN REPLY~We will return to you once we have assured Mystra's safety.~EXIT
IF~~THEN REPLY~I am still not ready, who knows what lurks there! ~EXIT
END
END

EXTEND_BOTTOM Z_Zah 0
IF ~InParty("CVSandr")~ THEN REPLY ~We still have unfinished business in Anegh. We need to return once more.~GOTO RetAnag
END

APPEND Z_Zah
IF~~THEN BEGIN RetAnag
SAY~I can take you there again but you need your own means to return. Do you possess such?~
IF~~THEN REPLY~No, we must skip it then, however what I have experienced is a part of me and will remain with me, giving it up will be giving up part of myself. Farewell.~DO~ActionOverride("Z_Zah",CreateVisualEffectObject("spdimndr",Myself)) Wait(2) ActionOverride("Z_Zah",DestroySelf())~ EXIT
IF~~THEN REPLY~My companion Sandrah's parcel will return us when we finished. Take us back.~DO~ StartCutSceneMode()
CreateVisualEffectObject("spdimndr",Myself)
CreateVisualEffectObject("spdimndr",Player1)
CreateVisualEffectObject("spdimndr",Player2)
CreateVisualEffectObject("spdimndr",Player3)
CreateVisualEffectObject("spdimndr",Player4)
CreateVisualEffectObject("spdimndr",Player5)
CreateVisualEffectObject("spdimndr",Player6)
Wait(2)
FadeToColor([20.0],0)
Wait(1)
ActionOverride(Player1,LeaveAreaLUA("ZANEGH","",[608.3364],12))
ActionOverride(Player2,LeaveAreaLUA("ZANEGH","",[571.3340],12))
ActionOverride(Player3,LeaveAreaLUA("ZANEGH","",[525.3331],12))
ActionOverride(Player4,LeaveAreaLUA("ZANEGH","",[494.3368],12))
ActionOverride(Player5,LeaveAreaLUA("ZANEGH","",[545.3385],12))
ActionOverride(Player6,LeaveAreaLUA("ZANEGH","",[578.3402],12))
DestroySelf()
FadeFromColor([20.0],0)
EndCutSceneMode()~EXIT
IF~~THEN REPLY~No, considering it again we want to forget, please sing for us. ~GOTO 1
END
END








