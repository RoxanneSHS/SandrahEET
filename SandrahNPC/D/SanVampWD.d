BEGIN CVVAMSH3

BEGIN CVVAMBO

IF~ AreaCheck("CVELS4") NumTimesTalkedTo(0)~ THEN BEGIN boss1
SAY~Intruders? You came through the portal? Who left it unattended for your entry? - Baah, it does not matter, you must have killed them already to get into here.~
=~Get into here...haha...but not out again, mortal fools.~
IF~~THEN DO~ Enemy()~EXIT
END

BEGIN CVREAG
IF~Global("SanVampWDQuest","GLOBAL",18)~ THEN BEGIN reag1
SAY~Aaah. Who are ye? You're not one of those creatures...you look normal.~
IF~~THEN REPLY~ We are send from Waterdeep to investigate what's going on here.~ GOTO reag2
IF~~THEN REPLY~ You are none of them as well. Are you from Waterdeep?~ GOTO reag2
END

IF~~THEN BEGIN reag2
SAY ~ Name's Reagan - or rather was...when I was alive, b'fore they got me.~
IF~~ THEN REPLY~ You are the fisherman from Waterdeep who is suspected to have gone too close to the ship, aren't you?~ DO~SetGlobal("SanVampWDQuest","GLOBAL",19)~GOTO reag3
END

IF~~THEN BEGIN reag3
SAY ~ Bad habit of mine 'twas, say go not near, ol' Reagan thinks that's s'pposed to be like an invitation - jus' this time I shoulda listened.~
=~Got my boat to that blasted ship at nite, is what I did. Those vamp'res got me in a second and sucked my blood outa me.~
IF~~ THEN REPLY~ But they found your body and buried you at Waterdeep?~ GOTO reag4
END

IF~~THEN BEGIN reag4
SAY ~ Sure, 'n nice funeral 'twas, everybody got drunk 'n' told tales of my deeds I never did do. Jus' when I got cozy in my coffin there - wush, a strange blue light 'n' was here. Their bossman here says I gotta be like 'em 'n part of the invasion army. Baah. me in army? Like the damned militia of Waterdeep, nay...~
IF~~ THEN EXTERN CVSANDRJ sanReag1
END

IF~ Global("SanVampWDQuest","GLOBAL",21)~ THEN BEGIN reag5
SAY~ With dat crystal in your possession we can make it back 'ome, I guess. Means, if I still gotta 'ome in my current condition.~
IF~~THEN REPLY~ We will take care of that, Reagan. Just come with us and we will see what Sandrah and her Temple can do for you.~ DO~SetGlobal("SanVampWDQuest","GLOBAL",22)~ EXIT
END



CHAIN
IF~~THEN CVSANDRJ sanReag1
~ But the transformation is not yet performed.~
==CVREAG~ Nay, that bossman's too busy with the preparations for their great invasion.~
== CVSANDRJ ~ An invasion, an army, do they want to attack Waterdeep?~
==CVREAG~ Sounds like that from what I overheard.~
== CVSANDRJ ~Listen, Reagan, we will get you out of here and to Mystra's temple where they will cure you from that state. But first we must stop these vampires before they can commence their plan.~
==CVREAG~ Hey, recognize ya, gal. You're that Mystra's leg'ndary hero priestess - looks like I'm lucky today...now listen to this...~DO~ SetGlobal("SanVampInvas","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("CVVampl1")~EXIT

CHAIN
IF~Global("SanVampWDQuest","GLOBAL",22) AreaCheck("CVELM1")~ THEN CVREAG reag6
~Waterdeep again, aye, and first thing I gotta see is that mouldy ol' face of yours...~
DO~ SetGlobal("SanVampWDQuest","GLOBAL",23)~
==CVHarbor~ If that ain't no ghost it must be Reagan alive and well and all...how's tricks?~
== CVSANDRJ ~It seems indeed that with the Vampire Eldest destroyed, your friend has been restored completely. As soon as the fresh ocean breeze got in his lungs on the ship, he was as good as new and alive once more.~
==CVREAG~ More alive than the shrivelled thing between ya legs, ol' buddy, I can tell ya.~
==CVHarbor~ Alive enough to take a keg or two 'n' give a full report to the *official harbour master*, he?~
==CVREAG~ Sure's hell...or whatever dat place I was....~ EXIT

CHAIN
IF~ Global("SanVampInvas","GLOBAL",1)~THEN CVVAMBO invplan1
~The day is very near to get to the flesh...a whole town of mortals, and beyond it...endless realms waiting for us.~
==CVVAMBO~ With the plane crystal we will open the gate permanently and our legions will walk through it.~
==CVVAMSH3~But, High Eldest, the part in the material plane where we land is surrounded by WATER. We cannot get to the flesh and the few that was on the floating thing is consumed.~
==CVVAMBO~ Yes, and those mortals have become part of our army now.~
=~ We have assimilated one of their mortal boatmen. He will be one of us soon and he has the skill to get us from the floating thing to the ground.~
==CVVAMSH3~But, High Eldest, once we have consumed the city our legions will grow and grow and with that the hunger for new flesh we need to feed...~
==CVVAMBO~ ENOUGH, your quarrels go to my nerves, doomsayer!~ DO~ StartCutsceneMode()
Wait(2)
CreateVisualEffectObject("spattck1","orgo01")
Wait(2)
CreateVisualEffectObject("sppolymp","CVVAMSH3")
CreateVisualEffectObject("spportal","CVVAMSH3")
CreateVisualEffect("raiser",[920.525])
Wait(2)
CreateVisualEffectObject("SPDEATH3","CVVAMSH3")
Wait(2)
ActionOverride("CVVAMSH3",DestroySelf())
Wait(2)
SetGlobal("SanVampInvas","GLOBAL",2)
EndCutsceneMode()~EXIT

