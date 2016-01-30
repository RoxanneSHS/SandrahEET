BEGIN CVXEP2
BEGIN Sankhelb

IF~ NumTimesTalkedTo(0)~ THEN BEGIN 1
SAY~ This must be a joke! Not even Elminster himself takes the time to come and rescue his goddess but this ragged band of adventurers.~
IF~~THEN REPLY~ You make a mistake, Xephistagoras. The gods receive their powers not only from the Weave but also from the beliefs and actions of their followers. Mystra is not weak as she has us to act on her behalf. You cannot win, you have only yourself and your minions.~GOTO 2
END

IF~~ THEN BEGIN 2
SAY~Pathetic fools. You will not have time enough to grieve for your destroyed goddess as you will go down as quickly as her.~
IF~~THEN DO~ ReallyForceSpell(Myself,DRYAD_TELEPORT)~EXIT
END

BEGIN CVXEP3

IF~ NumTimesTalkedTo(0)~ THEN BEGIN 1
SAY~ Well, you made it farther than was to be expected. Search for the exit and you will be granted the pleasure to see your goddess' destruction with your own eyes, hahahaha....~
IF~~THEN DO~ ReallyForceSpell(Myself,DRYAD_TELEPORT)~EXIT
END


BEGIN CVXEPH
IF~Global("SanXephRet","GLOBAL",12)~THEN BEGIN 1
SAY~Look around you to see the scenery of your last stand. Die!~
IF~~THEN DO~ SetGlobal("XSTART","GLOBAL",1)Enemy()~EXIT
END

CHAIN
IF~ Global("SanXephRet","GLOBAL",3)~ THEN Elminsa XephQ1
~ A threat to the Weave itself and our goddess. <CHARNAME>, I am most relieved that we have thee and thy steadfast companions to care about the assault.~
DO~SetGlobal("SanXephRet","GLOBAL",4)~
==CVSandrJ~ When we heard that Mystra is in distress we came immediately.~
==Sankhelb~ Many attempts have been made in the past by sorcerers led astray by the sheer idea of gaining the power of the Weave for themselves.~
==IF_FILE_EXISTS Wardmaga~ The sorcerer we deal with this time has used the chance that Mystra came to the Prime to deal with your father. ~
==IF_FILE_EXISTS Wardmagb~ Since the Times of Trouble it is Ao's verdict that the gods that come to our plane leave part of their abilities and powers behind and become vulnerable down here.~
==Elminsa~Relatively vulnerable, my friend. He could capture her with his undeniable powers but has still not reached his goal to access the Weave through her.~
==CVSandrJ~ Is it known who this sorcerer is or where he may be?~
==Sankhelb~ It is best that we show you the message we received. (He holds up a small bust of the goddess Mystra.)~
==CVSandrJ~ Just that artefact?~
== Elminsa~Take it, mine daughter and it will activate for thee as you have not seen the message before.~DO~ ClearAllActions() StartCutSceneMode()StartCutScene("CVmyskid")~EXIT

CHAIN
IF~Global("SanXephRet","GLOBAL",4)~ THEN CVXEPH Cutscenetalk1
~ Well, family bonds are a nice thing but only dangerous if you by chance are a goddess.~
DO~SetGlobal("SanXephRet","GLOBAL",5)~
==Sanmyst~ Xephistagoras, your supporters among the evil gods of the pantheon have so far shielded you from my full wraith. I doubt they have yet knowledge about your current actions - you have overstepped anything that was tolerable until now.~
==CVXEPH~ I doubt that your insight is correct in this. You are in their way to access fully the Weave as you are in mine. ~
==Sanmyst~ None of them would be foolish enough to give YOU that access and be content with the crumbs from your table of what you would grant them.~
==CVXEPH~ Isn't that so different with the situation as it was, with you holding the reigns. AO chose a mortal for some reason and made him immortal to administer the Weave's powers and energies. I am just another mortal to succeed you in the long line of those who served that obligation before.~
==Sanmyst~ The difference is that you want the power for yourself while any incarnation of Mystra was always chosen to guarantee the use by all entitled to it. None of us wanted the power for purposes others than those required by our task.~
==CVXEPH~ Bah, weak and vulnerable as a goddess as you are down here on the material plane.~
==Sanmyst~ Still strong enough to withstand you.~
==CVXEPH~ Not long anymore. Your disciples know I have you in custody. They will send out their mighty mages to rescue you...to be trapped just like you. As my thralls they will provide the remaining powers I need to make the final step - and replace you.~
==Sanmyst~ YOU have no idea whom they will sent for you, Xephistagoras. It will be one who has crossed your plans twice already.~
==CVXEPH~ NOBODY HAS EVER...except...that girl...~
DO~ClearAllActions() StartCutSceneMode()
Wait(2)
CreateVisualEffectObject("spattck1","Sanmysx")
Wait(2)
CreateVisualEffectObject("sppolymp","Sanmysx")
CreateVisualEffectObject("spportal","Sanmysx")
CreateVisualEffect("raiser",[1050.800])
Wait(2)
CreateVisualEffectObject("SPDEATH3","Sanmysx")
Wait(2)
ActionOverride("Sanmysx",ReallyForceSpellRES("sppr429",Myself))
Wait(4)
StartDialogueNoSet(Player1)
EndCutSceneMode()~EXIT

CHAIN
IF~Global("SanXephRet","GLOBAL",5)~ THEN CVXEPH Cutscenetalk2
~ I do not even know her name.~
DO~SetGlobal("SanXephRet","GLOBAL",6)~ 
==CVSandrJ~ Sandrah, Elminster's daughter, Midnight's granddaughter.~
DO~ClearAllActions() StartCutSceneMode() StartCutScene("CVmyskir")~EXIT

CHAIN
IF~Global("SanXephRet","GLOBAL",6)~ THEN CVSandrJ SanAkaVisXen1
~Xephistagoras. Is that the reason, father, why you have called for us?~
==Elminsa~ One of the reasons, my daughter. Thou hath truely cancelled two of his cunning plans already and thou hath the courage required to face him again.~
==Sankhelb~Our divination has told us he operates from a place that only you know well enough.~
==CVSandrJ~The Academy of Legencase? It must have been vacated since we last visited it.~
==Sankhelb~Visited and left victorious, Sandrah. But not just you but also <CHARNAME> and your friends.~
==IF_FILE_EXISTS Wardmagb~It is such a force we need against this foe. Yours is the most powerful troupe in the Realms, <CHARNAME>, as you know yourself that the Academy cannot be stormed by an army but just by a handful of skilled experts.~
==Elminsa~Xephistagoras is expecting us mages to come to the rescue and he needs our arcane abilities for his plan. His traps and defences will be aimed at us.~
END
++~Once more we will have the surprise factor on our side. This and our determination to rescue Sandrah's goddess.~+ SanAkaVisXen2

CHAIN
IF~~ THEN CVSandrJ SanAkaVisXen2
~I assume you have the means to get us to Legencase, father.~
==Elminsa~We can transfer thee to the outside of it. From there thou wouldst be again on thy own as the sorcerer's defences are unpenetrable from the distance.~
=~ <CHARNAME>?~
END
++~ We are ready to leave right now, Elminster.~DO~ SetGlobal("SanXephRet","GLOBAL",8)~EXIT
++~We will need a few moments to prepare ourselves before we go.~EXTERN Elminsa DepLegDeff

CHAIN
IF~~ THEN Elminsa DepLegDeff
~The services of the Temple are at thine disposal. Just tell Sandrah when thou arst ready, she will activate this fibula for thine transport.~DO~ GiveItemCreate("SANAKAK","CVSandr",0,0,0) SetGlobal("SanXephRet","GLOBAL",7)~EXIT

CHAIN
IF~Global("SanXephRet","GLOBAL",13)~THEN CVSANDRJ SanMysNotThisTime2
~ Mystra - grandmother, I see your statue here but it is not really you standing there. Have we finished the threat to your reign over the Weave?~
DO~SetGlobal("SanXephRet","GLOBAL",14)~
==SANMYST~ The threat was to the Realms as well as we all depend on the Weave. It is you and <CHARNAME> who deserve the thanks of the gods for what you did.~
==CVSANDRJ ~ So Xephistagoras was a real danger for you, Mystra?~
==SANMYST~ You know well by now that we need the aid and the faith of the mortals to aid us in all we do on the Prime Plane, Sandrah. I am no longer Midnight, I need you and your father, as well as <CHARNAME> when a danger arises from Toril. And dangerous, old and corrupt he was.~
==CVSANDRJ ~And did he act aided by your evil competitors as he has claimed?~
==SANMYST~ You know your lore better than any, granddaughter. You know that Cyric backstabbed Bhaal with the weapon which was really Mask in disguise. Mask never forgave AO for raising Cyric and me to be gods afterwards. Xephistagoras was Mask's avatar down here.~
==CVSANDRJ ~Then we have slain a god today?~
==SANMYST~ No. You killed the sorcerer only because Mask had retreated his prime shell when it became apparent to him whom he was facing.~
==CVSANDRJ ~The mighty Bhaalspawn <CHARNAME>!~
==SANMYST~ No, I was referring to you, Sandrah.~
==CVSANDRJ ~Really....?~
==CVSANDRJ IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN~ If such is our deed, may I humbly ask for a favour from my goddess then.~
==SANMYST IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN~ You may ask. Whether it is mine to give will be seen.~
==CVSANDRJ IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN~You know that I seek answers...I always do and will continue to do. So, what would have happened if we had failed? If Xephistagoras or Mask had succeeded to eliminate you?~
==SANMYST IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN~ This question had to come sooner or later, child. You know the answer, AO would have inthroned the next incarnation of Mystra, as the Weave requires a guardian.~
==CVSANDRJ IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN~Yes, and it will be one of your human bloodline, the female line I mean.~
==SANMYST IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN~This is correct.~
==CVSANDRJ IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN~Can you tell me what would be my role in this case?~
==SANMYST IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN~ Your role is the most crucial - for all of us, the Realms and the Weave. A moment ago you called yourself a seeker, Sandrah. That is your role.~
==SANMYST~ Now use my symbol which you find around here to return. Farewell, Sandrah.~DO~AddexperienceParty(140000)~
EXIT
