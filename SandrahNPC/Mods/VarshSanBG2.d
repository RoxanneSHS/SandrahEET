CHAIN
IF WEIGHT #-6~Global("SanVelshB","GLOBAL",3)~THEN VxVarB ValSan1
~I cannot see you, priestess! (Varshoon's tentacles wave angrily around Sandrah's forehead.)~
DO~SetGlobal("SanVelshB","GLOBAL",4)RealSetGlobalTimer("SanValInt","LOCALS",2000)~
==BSandr~You mean to say that you cannot penetrate my thoughts and manipulate my feelings uninvited. Why should I allow you?~
==VxVarB~Few mammals have the ability to completely block my access - you and your cat both do. It is clear to me that you know about my attempts.~
==Pellig~Growl.~
==BSandr~If there is anything you want to know about us or ask us then do it openly but do not try to sneak into my innermost like a thief.~
==VxVarB~Ssssh...you insist on using your primitive verbal communication for information exchange while there are less cumbersome means to see your thoughts? Disgusting!~
==BSandr~You think it is disgusting? I would call it fair - you tried to gain without giving. I may be just as interested to learn about you than vice versa.~
==VxVarB~You want to learn what maybe you cannot comprehend...~
==BSandr~Try it before you judge. Unless you think it is not worth the attempt.~
==Pellig~Growl.~
==VxVarB~You may be a tempting subject, I will think about it.~ EXIT

CHAIN
IF WEIGHT #-6~Global("SanVelshB","GLOBAL",5)~THEN VxVarB ValSan2
~Why should one like you know how to heal our kind?~
DO~SetGlobal("SanVelshB","GLOBAL",6)RealSetGlobalTimer("SanValInt","LOCALS",2200)~
==BSandr~I had the chance to study your physique at times. I know how to repair it because I had to learn how to destoy it.~
==VxVarB~Clearly that must have been the experience you had with us until now. It explains your success in battle. Your terms of acquiring knowledge are not so remote from ours.~
==BSandr~My use of the knowledge however differs. I do not use it to destroy and enslave.~
==VxVarB~Then your knowledge and strength is rather pointless. Strangely enough you don't seem to suffer from your deficiencies.~
==BSandr~Thank you for your *concern*, I am quite happy.~EXIT

CHAIN
IF WEIGHT #-6~Global("SanVelshB","GLOBAL",7)~THEN VxVarB ValSan3
~(Varshoon's tentacles again wave angrily around Sandrah's head.) You still block all my ways to gather knowledge from you.~
DO~SetGlobal("SanVelshB","GLOBAL",8)RealSetGlobalTimer("SanValInt","LOCALS",2000)~
==BSandr~You claim you want to gain knowledge. Knowledge in your case means to know the weak points of your victims and how to overcome their strength.~
==VxVarB~You understand much for one of your kind. You are a strong protector of...The ones you should be extremely wary of are those that know the most about you and <PRO_HIMHER>.~
==BSandr~Knowledge of the weakness in a friend gives you the opportunity to shield that spot just as you may use it to hit him.~
==VxVarB~An interesting aspect. Had we known the weak spot of our colony we could have guarded it better. But you found it without this knowledge anyway.~ EXIT

CHAIN
IF WEIGHT #-6~Global("SanVelshB","GLOBAL",9)~THEN VxVarB ValSan3
~Are you with <CHARNAME> because of the hunt of that man Irenicus?~
DO~SetGlobal("SanVelshB","GLOBAL",10)RealSetGlobalTimer("SanValInt","LOCALS",600)~
==BSandr~No. We were together already before we were attacked by the mage. To persue him is just the task of this moment...I have come to realise you are interested in that mage yourself, right?~
==VxVarB~Whatever you assume is misguided as I only know about Irenicus what I can read from <CHARNAME>'s mind.~
==BSandr~I see and I see the interest you have in the man more clearly now. He and his immense power would be a great fund of knowledge for you - provided you could access his brain before we destroy him.~
==VxVarB~I wonder if you are not the hidden leader of these mammals...rrggshh. (Was that the equivalent to laughter?). But do not worry overmuch, you may destroy your foe as I can extract from him what I need even afterwards.~ 
==BSandr~Good to know - you may not be a reliable ally but at least you are not my enemy.~EXIT

CHAIN
IF WEIGHT #-6~Global("SanVelshB","GLOBAL",12)~THEN VxVarB ValSan4
~(Varshoon has moved to the corpse of the defeated beholder. He stops and pierces the thick body with his tentacles. The illithid begins to consume the beholder's brain.)~
DO~SetGlobal("SanVelshB","GLOBAL",13)RealSetGlobalTimer("SanValInt","LOCALS",600)~
==BSandr~(While most of your party turn away from the scene in disgust, Sandrah studies the event carefully.) This is how you survive, consuming your foes?~
==VxVarB~(Varshoon takes his time to finish the *meal*)~
=~Beholders are our enemies. Our races slay each other...you consume harmless prey but not the ones you fight. Your race is not prepared to fight for their survival, human girl.~
==BSandr~You still have much to learn, illithid. You do not even have an idea what are the most terrible creatures that humans have to face on this plane.~
==VxVarB~You seem to have no obvious defences against any of the other major races, no real strategy against elves, orcs or any of the other surface races or beasts - even less against undead, demons, vampires or creatures of the Underdark.~
==BSandr~We are both right. None of those are our worst enemy. It is man himself we have to fear the most. We are not hive creatures but rivals for the same resources. Nation against nation, town against town, family against family - sometimes even foe against our next of kin.~
==VxVarB~But you connect to each other by that absurd concept of love.~
==BSandr~And we fight each other by another absurd concept named hate.~
==VxVarB~Your motives are foolish. You do not behave like thinking beings. You are full of impulse and *emotion*. You are not logical, not reasonable. ~
=~Yourself are stranger even, girl. You analyse and seem to see clear - but the limits of your race have you reigned in nonetheless. (The Mind Flayer walks away.)~ EXIT