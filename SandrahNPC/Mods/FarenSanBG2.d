CHAIN
IF WEIGHT #-21~Global("SanHealFaren","GLOBAL",1)~THEN BFHFRN SanHeal1
~You are just the companion I need at this moment, lovely healer.~
DO~SetGlobal("SanHealFaren","GLOBAL",2)~
==BSandr~This is the most direct attempt I have encountered ever. (Laughs.)~
==BFHFRN~Oh, hahaha, I see what you mean - no...I was talking about your healing skills.~
==BSandr~(Smiles) This time, Faren, this time. So what can I do for you?~
==BFHFRN~That time in the jail was not an improvement to my health. You know how old war wounds can get. My right knee gets a bit sore if I push it too hard. ~
==BSandr~If it is an older injury it may require a bit more care than just a healing spell quickly cast. We must invest in a bit of time for an in depth examination.~
==BFHFRN~Ah, your words show me the serious and experienced healer. I can easily limp along to the next tavern or inn our leader guides us. I will remind you of your promise when we reach a suitable location.~
==BSandr~I do not easily forget a *patient* who requires my help, be assured, Faren.~ EXIT

CHAIN
IF WEIGHT #-22~Global("SanHealFaren","GLOBAL",3)~THEN BFHFRN SanHeal2
~So we finally reached the place where the lovely healer can take the time to inspect my old wounds.~
DO~SetGlobal("SanHealFaren","GLOBAL",4) RealSetGlobalTimer("SanFarenT","LOCALS",1800)~
==BSandr~ (Smiles.) A promise is a promise, so where is the spot that needs my attention?~
==BFHFRN~Well, we may want to leave the public area for that, Sandrah, you understand - I mean...I have to let down my trousers for that.~
==BSandr~ Ah, yes, I remember you mentioned your knee...~
==BFHFRN~Well, actually it's a bit further up on my leg...you will see yourself in a minute.~
==BSandr~A bit further up?~
==BFHFRN~Oh, no no no, not what you may be thinking...eh, everything is okay there, at least it was last time I had a chance to give it a try...~
==BSandr~(Laughs) I guess that was not ages ago. Anyway, we will not advance much unless I get my eyes and hands on the wounded area - wherever it may be located exactly.~DO~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~ EXIT

CHAIN
IF WEIGHT #-23~Global("SanHealFaren","GLOBAL",5)~THEN BFHFRN SanHeal3
~Sandrah, you have advised me to remind you when the time is due for exchanging my bandages.~
DO~SetGlobal("SanHealFaren","GLOBAL",6) RealSetGlobalTimer("SanFarenT","LOCALS",1800)~
==BSandr~ You are right, Faren, they are due right now. A patient like you makes a healer's work easy.~
==BFHFRN~Your recent examination has probably reveiled to you that other parts of my body are in good shape and, eh, well developped.~
==BSandr~(Laughs) I am used to men who appreciate and react to my presence. Rarely I get a chance to see SUCH an obvious reaction to my nearness.~
==BFHFRN~You see that even if I would deny it, that little traitor down there has already given my secret away.~
==BSandr~*Little* traitor is obviously not the right expression - and before you think of delivering an apology - no, I do not feel insulted by such obvious appreciation.~
==BFHFRN~Ah, I had no intention to apologize. My body is as honest as I am, mylady.~
==BSandr~Talking of your body - let us not neglect your wound any longer.~ DO~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~ EXIT

CHAIN
IF WEIGHT #-24~Global("SanHealFaren","GLOBAL",7)~THEN BFHFRN SanHeal4
~You are a girl who knows what she wants and takes what she desires without hesitation, Sandrah.~
DO~SetGlobal("SanHealFaren","GLOBAL",8)RealSetGlobalTimer("SanFarenT","LOCALS",1800)~
==BSandr~ It was offered to me on a golden platter, so to say, and sometimes directness can be really refreshing.~
==BFHFRN~Don't think I'm not capable of the more delicate and sensible aspects of romance. You just gave me little time for that.~
==BSandr~ Shame on me then and I deserve the loss. But who says that everything needs to follow a predesigned order of events, Faren. We may well agree to make your next conquer a bit more challenging. I anticipate you can make a lady of the City of Splendor fall for you in more than one way.~
==BFHFRN~An interesting proposal. You will not be disappointed, mylady.~EXIT

CHAIN
IF WEIGHT #-25~Global("SanHealFaren","GLOBAL",10)~THEN BFHFRN SanHeal5
~Sticking your lovely nose into that thick tome once more, Sandrah?~
DO~SetGlobal("SanHealFaren","GLOBAL",11)RealSetGlobalTimer("SanFarenT","LOCALS",1800)~
==BSandr~ The brain gets as hungry as the body at times.~
==BFHFRN~ I hope I have met a lady who can appreciate the intellectual qualities in a man in the same way as the exterior.~
==BSandr~ Ooops - I thought that would be my line not yours, good thief.~
==BFHFRN~ Aren't you among those who prove to us males all the time which one is the stronger gender after all?~
==BSandr~(Smiles) By which we both have proven how useless this concept of one gender having to dominate the other really is. ~
==BFHFRN~I would very much agree, Sandrah, were there not those situations where a clarification about who gets the upper position is required.~
==BSandr~Actually a question to be solved on a case to case basis rather than by rule - thus allowing flexibility - and increased fun.~
==BFHFRN~It is getting late - I suggest to throw a coin tonight rather than to settle it by intellectual discourse.~
==BSandr~Agreed.~ DO~ RestParty()~ EXIT