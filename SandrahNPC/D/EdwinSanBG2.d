APPEND BSANDR

IF~Global("SanEdwinBG2","GLOBAL",1)~THEN BEGIN SanBG2EdMeetAgain1
SAY~ (Sigh.)~
IF~~THEN REPLY~ (Ignore her.)~ DO~SetGlobal("SanEdwinBG2","GLOBAL",3)~ GOTO  SanBG2EdMeetAgain2
IF~~THEN REPLY~ I really envy you for your self-discipline, Sandrah. You did not even blink when you saw the red wizard again.~ DO~SetGlobal("SanEdwinBG2","GLOBAL",3)~ GOTO  SanBG2EdMeetAgain2
IF~~THEN REPLY~ (Look at her questioningly.)~ DO~SetGlobal("SanEdwinBG2","GLOBAL",3)~ GOTO  SanBG2EdMeetAgain2
END

IF~~ THEN BEGIN SanBG2EdMeetAgain2
SAY~ I would lie if I would say I did not expect to meet Edwin again if we descended just low enough into the bowels of this dreadful town. It looks like we have accomplished to find one of the lowest companies Athkatla has to offer. And consequently he is here - just where he belongs, it is his logical and natural environment.~
IF~~THEN REPLY~ Like him or not, he has surely found his way around this town and already established some useful connections. Maybe I can find the right arguments later to make him join us again.~ GOTO  SanBG2EdMeetAgain4
IF~~THEN REPLY~ Your disgust is noted, my love. We will get this job done as fast as possible and then leave him to go down with that new master he has chosen.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~EXIT
IF~~THEN REPLY~ I see this job as a good opportunity to remove some of the worst individuals from this town. As long as we reduce the ranks of the criminals I have no problem to accept Edwin's presence momentarily.~GOTO  SanBG2EdMeetAgain3
END

IF~~ THEN BEGIN SanBG2EdMeetAgain3
SAY~ (Smiles.) You are our leader here, <CHARNAME> and I follow your decisions willingly.~
IF~~THEN DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~ EXIT
END

IF~~ THEN BEGIN SanBG2EdMeetAgain4
SAY~ (Her face is cold as ice.) You are our leader here, <CHARNAME> and I follow your decisions. ~
IF~~THEN DO~ IncrementGlobal("Sanpoints","GLOBAL",-2)~ EXIT
END

IF~Global("SanEdwinBG2","GLOBAL",2)~THEN BEGIN SanBG2EdMeet1
SAY~ (Sigh.)~
IF~~THEN REPLY~ (Ignore her.)~ DO~SetGlobal("SanEdwinBG2","GLOBAL",3)~ GOTO  SanBG2EdMeet2
IF~~THEN REPLY~ I really envy you for your self-discipline, Sandrah. You did not even blink when you saw the red wizard.~ DO~SetGlobal("SanEdwinBG2","GLOBAL",3)~ GOTO  SanBG2EdMeet2
IF~~THEN REPLY~ (Look at her questioningly.)~ DO~SetGlobal("SanEdwinBG2","GLOBAL",3)~ GOTO  SanBG2EdMeet2
END

IF~~ THEN BEGIN SanBG2EdMeet2
SAY~ I would lie if I would say I did not expect to meet such scum if we descended just low enough into the bowels of this dreadful town. It looks like we have accomplished to find one of the lowest companies Athkatla has to offer. And consequently a red wizard is there - just where he belongs, it is his logical and natural environment.~
IF~~THEN REPLY~ Like him or not, he has surely found his way around this town and already established some useful connections. Maybe I can find the right arguments later to make him join us.~ GOTO  SanBG2EdMeet4
IF~~THEN REPLY~ Your disgust is noted, my love. We will get this job done as fast as possible and then leave him to go down with that master he has chosen.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~EXIT
IF~~THEN REPLY~ I see this job as a good opportunity to remove some of the worst individuals from this town. As long as we reduce the ranks of the criminals I have no problem to accept that red wizard's presence momentarily.~GOTO  SanBG2EdMeet3
END

IF~~ THEN BEGIN SanBG2EdMeet3
SAY~ (Smiles.) You are our leader here, <CHARNAME> and I follow your decisions willingly.~
IF~~THEN DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~ EXIT
END

IF~~ THEN BEGIN SanBG2EdMeet4
SAY~ (Her face is cold as ice.) You are our leader here, <CHARNAME> and I follow your decisions. ~
IF~~THEN DO~ IncrementGlobal("Sanpoints","GLOBAL",-2)~ EXIT
END

IF~Global("SanEdPaper","LOCALS",1)~THEN BEGIN EdPaper1
SAY~ <CHARNAME>, do you mind if I inspect those papers for a few minutes? It would be wise to know what this red wizard is involved in right now.~
IF~~THEN REPLY~ Why should we care, sweetheart. Let's just do this job and then forget about the guy. Our target is Mae'Var. ~ GOTO EdPaper2
IF~~THEN REPLY~ The papers are sealed. But maybe your magic allows you to bypass that somehow.~ GOTO EdPaper3
IF~~THEN REPLY~ A brilliant idea, there is surely some benefit for us to know the ones we deal with better than they know us. Can we do it without Edwin recognising it?~ GOTO EdPaper4
END

IF~~THEN BEGIN EdPaper2
SAY~ And the red scum is Mae'Var's right hand. I am sure if there is a betrayal against the Shadow Thieves going on, the Wizard plays a hand in it. With my skills in magic and alchemy I can easily restore the seals on the papers afterwards.~
IF~~THEN REPLY~ Fine, let's do it.~ GOTO EdPaper5
IF~~THEN REPLY~ No means no, Sandrah. Let's forget it.~ EXIT
END

IF~~THEN BEGIN EdPaper3
SAY~ The red scum is Mae'Var's right hand. I am sure if there is a betrayal against the Shadow Thieves going on, the Wizard plays a hand in it. With my skills in magic and alchemy I can easily restore the seals on the papers afterwards.~
IF~~THEN REPLY~ Fine, let's do it.~ GOTO EdPaper5
IF~~THEN REPLY~ Hm, I will not risk it, Sandrah. Let's forget it.~ EXIT
END

IF~~THEN BEGIN EdPaper4
SAY~ The red scum is Mae'Var's right hand. I am sure if there is a betrayal against the Shadow Thieves going on, the Wizard plays a hand in it. With my skills in magic and alchemy I can easily restore the seals on the papers afterwards.~
IF~~THEN REPLY~ Fine, let's do it.~ GOTO EdPaper5
IF~~THEN REPLY~ Hm, on second thought I will not risk it, Sandrah. Let's forget it.~ EXIT
END

IF~~THEN BEGIN EdPaper5
SAY~ (Sandrah's manipulation on the papers is quick and skilled. As she hands them back there is no trace to be seen on the seals.) Ha, he even secured them with some warding spells that should report to him the ones who look at the papers - very clever and not without finesse I have to admit.~
IF~~THEN REPLY~ But from your satisfied smile I read that you outsmarted him. Anything interesting?~ GOTO EdPaper6
END

IF~~THEN BEGIN EdPaper6
SAY~ In a way Edwin has gained my respect, <CHARNAME>. He has a different concept of deceit and lies for every pair of eyes he meets. He will be on the winning side regardless of how things evolve. He conspires with Aran and with Renal as well as with Mae Var, and in addition with a fourth party from out of town who want to take the Shadow Thieves role in Athkatla. What a wonderfully woven net, it is almost a work of art, if it would not mean the death of many involved in this game.~
IF~~THEN REPLY~ The death of many criminals, so I don't care much. The less we get entangled ourselves the safer for us.~ GOTO EdPaper7
END

IF~~THEN BEGIN EdPaper7
SAY~ I fully agree. For now we only need to keep in mind that Edwin will betray Mae'Var at the first opportunity we show him. But if you use him, <CHARNAME>, be aware that he will be as *loyal* to you as he is to everyone else. He cares for only one man's benefit and that man is - Edwin Odesseiron.~
IF~~THEN REPLY~ I will deliver those papers now as we have nothing more to gain from them.~ DO~ SetGlobal("SanEdPaper","LOCALS",2)~EXIT
END

END

INTERJECT_COPY_TRANS EDWIN 4 SanBG2EdMeet
== EDWIN IF ~ InParty("CVSandr") GlobalGT("SanEdAnts","GLOBAL",1)~ THEN ~ (Oh, my heart! The princess of Waterdeep is still travelling with those simians...Dear, make them succeed so we can again travel together - to be near you, oh Sandrah!)~END

CHAIN
IF WEIGHT #-7~Global("SanNetScrl","LOCALS",1)~THEN Bedwin SanKnows
~I can imagine a learned scholar like you would desperately share my interest for this magnificent scroll, my dear! (That should get her!! She cannot await to enlarge her knowledge...sometimes I'm afraid her beautiful head might explode from all the useless stuff it gathers...)~
DO~SetGlobal("SanNetScrl","LOCALS",2)~
==BSandr~I think I know most of what that scroll could teach its user. I have a lifelong experience with those aspects of my personality. I surely enjoy this experience but I am afraid it will not fit you well.~
==Bedwin~Will you share this knowledge with me, be my advisor? (Share it, be my teacher and my pupil, the counsellor of the bedroom...)~
==BSandr~Some say the name *Nether Scroll* comes from Netheril, which may be an error - it rather implies the aspects of the nether regions...~
=~I have only one advice for you, Edwin, but it is of no use as you will not listen to it anyway. Do not use the scroll.~
==Bedwin~Baah, I'm not afraid of Netheril nor of any other nether regions.~
==BSandr~(Her smile is almost vicious.) You should be afraid of your own nether regions the most.~EXIT

CHAIN
IF WEIGHT #-7~Global("SanNetScrl","LOCALS",3)~THEN Bedwin SanKnows2
~You knew what would happen, didn't you?~
DO~SetGlobal("SanNetScrl","LOCALS",4)~
==BSandr~Do not say I did not try to warn you.~
==Bedwin~It sounded like girlish fear at that time and you were not very explicit.~
==BSandr~Do I hear some *girlish fear* in your quaking little voice here, Edwina? You may not yet have found the powers there are in being a woman.~
==Bedwin~I will not receive much help from you and your goddess, I assume. Do not take me for a giggling girl you can exchange your girl's talk with while holding hands (Ah, the holding hands part may be interesting.)~
==BSandr~You err, Edwina. I am really willing to help you. Let me start with your hairdo. We must do something quickly to make it match to your splendid red robe - by the way we MUST find some more stylish shoes to replace those downtrodden loafers you still wear...~
==Bedwin~THIS IS NOT HELPFUL!! I will not stay in this shell long enough to have any use of your beauty advisories...(Ah, still I adore how you use them on yourself...)~EXIT
