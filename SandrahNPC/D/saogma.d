BEGIN saogma

IF ~ NumTimesTalkedTo(0) ~ THEN BEGIN saogma1
SAY ~ Please, <PRO_SIRMAAM>, I am so alone. Take me to mama, please,please.~
IF~~THEN REPLY ~ Poor little one, how did you get here? Where is your mama?~  GOTO saogma12
IF~~THEN REPLY ~ A little girl alone out here, far away from any settlement, how is that?~ GOTO saogma12
IF~~THEN REPLY ~ Fiend, this trap is too obvious for us! ~ GOTO saogma13
END

IF ~~ THEN BEGIN saogma12
SAY~ I ran into here when the big, bad ogres started to come. Mama is out there still. She has not come. Please, <PRO_SIRMAAM>, we must find her.~
IF~~THEN REPLY ~ Sure we will find her and rescue her. Wait here until we return with her.~ GOTO saogma15
IF~~THEN REPLY ~ We will find her. Come into our middle where you are safe.~ GOTO saogma14
END

IF ~~ THEN BEGIN saogma15
SAY~ Please, please, do not leave me here. I am so afraid those ogres will smell me in here any minute. Let me come with you, I will hide in your shadows and be save.~
IF~~THEN REPLY ~ Come into our middle. But run and hide behind the nearest tree if you see us fighting. And be quiet, psst, or the ogres will hear you. ~GOTO saogma14
END

IF ~~ THEN BEGIN saogma13
SAY~ You are not helping a little girl in need. You deserve death and I will bring it to you!~
IF~~ THEN DO ~ StartCutSceneMode()
SmallWait(7)
CreateVisualEffectObject("SPFLESHS",Myself)
Enemy()
Polymorph(OGRE_MAGE)
SmallWait(7)
EndCutSceneMode()~ EXIT
END

IF ~~ THEN BEGIN saogma14
SAY~ You are good people, come let us go seek mama immediately.~
IF~~ THEN DO ~ EscapeAreaMove("BG4400",2736,2771,9)~ EXIT
END

IF ~ NumTimesTalkedToGT(0) !Global("SaOgmaIn","GLOBAL",2) ~ THEN BEGIN saogma20
SAY ~ Please, we must find mama. I fear for her, she is no fighter.~
IF ~~ THEN EXIT
END


