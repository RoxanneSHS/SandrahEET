APPEND BSANDR
// Shauhana

IF ~ Global("Shamyrkfound","GLOBAL",7) ~ THEN BEGIN ShauHer1
SAY~ Our new friend Shauhana is a real strong personality, do you not think so?~
IF~~THEN REPLY~ She must be, with all she has already been through.~ DO ~ SetGlobal("Shamyrkfound","GLOBAL",8)~ GOTO ShauHer2
END

IF ~~ THEN BEGIN ShauHer2
SAY ~ That is what made her strong. That and her belief to be orc.~
IF~~THEN REPLY~ The way you say that sounds, as if you do not believe her.~ GOTO ShauHer3
END

IF ~~ THEN BEGIN ShauHer3
SAY ~ Oh, I do believe her - I mean I believe she tells truely all she knows about herself. My doubt is that she herself knows who she is. Even with a possible grandfather like General Ghotal, her strength, her intelligence and her outer appearance are not explainable.~
IF~~THEN REPLY~ Sounds like you fall for that godchild thing. Well, you seem to attract them, my love.~ GOTO ShauHer4
END

IF ~~ THEN BEGIN ShauHer4
SAY ~ (Laughs with you.) Something must be there, otherwise I see no reason why such a creature like the Guardian should sense it. Then take her strength - it is not orcish strength like she thinks herself it is. Observe her, see her act and move, and tell me that is orc.~
= ~ Her intelligence then. I agree not all orcs are stupid, but her willingness to learn and her ability to follow her own thoughts go way beyond what I found in any orc so far.~
IF~~THEN REPLY~ Except maybe her grandfather, Ghotal.~ GOTO ShauHer5
END

IF ~~ THEN BEGIN ShauHer5
SAY ~ Hm, yes. The godchild Ghotal, Myrkul's spawn. But it is not Myrkul that one sees when it comes to Shauhana...~
IF~~THEN REPLY~ Nor is it Bhaal that one sees when it comes to me - at least that is my deepest hope.~ GOTO ShauHer6
END

IF ~~ THEN BEGIN ShauHer6
SAY ~ (She has taken your hand and pulls you close to her now.) That is correct, my sweetest wonderful love. I have to confess, I am stuck with my research at the moment. I just see that another godchild needs my attention right now.~
IF ~~THEN REPLY~ And how! (Embrace her tightly and cover her lips with kisses.)~
EXIT
END

IF~Global("ShauUnd","CVSh11",4)~THEN BEGIN Sharktafake1
SAY~ Now we see it with our own eyes, <CHARNAME>. Shauhana's old mentor whom we delivered personally to Sharkta Fai has been turned to this undead creature. The portal to the Other World is a lie.~
IF~~THEN REPLY~ Who would do such a thing? What is the purpose of this installation producing undead creatures from slain warriors?~DO~SetGlobal("ShauUnd","CVSh11",5)~GOTO Sharktafake2
END

IF~~THEN BEGIN Sharktafake2
SAY~I will not deliver half-baked assumptions to you, too much is at a stake here. Let us go ahead with our investigation until more facts are in our hands.~
IF~~THEN REPLY~ (You nod silently in approval.)~EXIT
IF~~THEN REPLY~ You seem to have some idea already, well, let me know as soon as you think they are ripe for discussion.~EXIT
END
END

APPEND CVSandrJ

IF~Global("SanSacroll","GLOBAL",5)~ THEN BEGIN Sanfreehend20
SAY~ (Mumbles) A heavily guarded compound in the temple district...what do they have to hide?~
IF~!InParty("CVSHAU")~THEN REPLY ~ (Ignore her.)~ DO~ IncrementGlobal("Sanpoints","GLOBAL",-2) SetGlobal("SanSacroll","GLOBAL",6)~ EXIT
IF~ InParty("CVShau")~ THEN REPLY ~ (Ignore her.)~ DO~ IncrementGlobal("Sanpoints","GLOBAL",-2) SetGlobal("SanSacroll","GLOBAL",6)~ EXTERN CVShauJ Shautempslav
IF~~THEN REPLY ~ The slaver's other hideout, you guess?~ DO ~SetGlobal("SanSacroll","GLOBAL",6)~ GOTO Sanfreehend21
END

IF~~ THEN BEGIN Sanfreehend21
SAY~ We will not find out by standing outside of it all day.~
IF~!InParty("CVSHAU")~THEN REPLY ~ You need to say nothing more, my love. Let us pay them a visit they won't forget.~ DO ~ IncrementGlobal("Sanpoints","GLOBAL",3) EraseJournalEntry(@458)~ EXIT
IF~InParty("CVShau")~THEN REPLY ~ You need to say nothing more, my love. Let us pay them a visit they won't forget.~DO ~ IncrementGlobal("Sanpoints","GLOBAL",3) EraseJournalEntry(@458)~ EXTERN CVShauJ Shautempslav
END
END

//_____________________________________
//CHAINS
//_____________________________________

//Slavers in Athkatla
CHAIN
IF~~THEN CVShauJ Shautempslav
~ Slaves? I thought here is law and civilisation...or is this an orc compound?~
==CVSandrJ~ I told you that this city has its light and its dark sides, Shauhana. Enslaving others and misusing them for labour or arena entertainment is not limited to orcs.~
==CVShauJ~ But your words tell me you are determined to destroy these bastards, right.~
==CVSandrJ~ Yes, I do not hesitate a minute to go against such people regardless of race, number and fortification.~
==CVShauJ~ You will find me as determined as yourself in this crusade, Sandrah!~
END
++~I will not let two girls rush into that danger unaccompanied. We will use utmost caution but we will go and destroy them.~EXIT

// Shauhana Meets Minsc
CHAIN
IF~ Global("SanShauMinsc","GLOBAL",8) ~ THEN BSANDR ShauMeetCopp1
~ Shauhana! <CHARNAME!>! Look!~
DO~ SetGlobal("SanShauMinsc","GLOBAL",11)~
== BSHAUHA ~ What is it, my friend?~
= ~ Oh, the large bald fighter over there talking to his little animal friend, it  must be him. Minsc!~
== BSANDR ~ Yes, you are right, our old friend Minsc and Boo are here.~
== MINSCP ~ What do you say, Boo? An orc whom we not fight? We always kick bad orc's butts!...An orc girl who is different...?~
== BSANDR ~ Hello, Minsc, my sweet hero, so we meet again.~
== MINSCP ~ Boo says you travel with orcs today, Sandrah?~
== BSANDR ~ Not any orc, Minsc, but a very special half-orc girl we have rescued. This is Shauhana.~
== BSHAUHA ~ (Shauhana looks expectantly at Minsc and tries a shy smile.)~
== MINSCP ~ Friends of my sweet Sandrah are friends of Boo and Minsc, orc or no orc, full or half...yes, yes, Boo,...I know my manners...Nice to meet you, Shauhana,...eh...you look not much orcish, I must say. ~
== BSHAUHA ~ Hello, Minsc. We must not judge anyone too quickly from just a short look. I hope we will find time in <CHARNAME>'s party to get to know each other.~
== MINSCP ~ Shauhana...a nice name for a nice girl...~ DO ~ ActionOverride("Minsc",JoinParty())~EXIT

CHAIN
IF~ Global("SanShauMinsc","GLOBAL",10) ~ THEN BSANDR ShauMeetCopp2
~ Shauhana, I see you have met our old companion Minsc already.~
DO~ SetGlobal("SanShauMinsc","GLOBAL",11)~
== BSHAUHA ~ I have found and acquainted with the large fighter hero we have talked about. Minsc!~
== BSANDR ~ I was a bit worried about you meeting him without our company. Minsc kicks orc butts whenever he finds them.~
== MINSCP ~ Friends of my sweet Sandrah are friends of Boo and Minsc, orc or no orc, full or half...yes, yes, Boo,...I know my manners...An orc girl who is different, Shauhana,...eh...even if she looks not much orcish, I must say. ~
== BSHAUHA ~ I hope we will find time in <CHARNAME>'s party to get to know each other even better.~
== MINSCP ~ Shauhana...a nice name for a nice girl...~ DO ~ ActionOverride("Minsc",JoinParty())~EXIT

CHAIN
IF~Global("SanShauMinsc","GLOBAL",24)~ THEN BSANDR ShauNowMinsc
~You have changed quite a bit recently, Minsc, my friend.~
DO~ SetGlobal("SanShauMinsc","GLOBAL",25)RealSetGlobalTimer("SanShauMinTi","GLOBAL",180)~
== BMINSC~ I feel so new, Sandrah, like I see so much clearer now every day. Things get more and more confusing around me but still I see my way and my actions before me like I never did before.~
== BSANDR ~ You have found someone who was missing from your life until now...~
== BMINSC~ You are my best friend, Sandrah, and once I foolishly thought you would also be my girl, even when you said that you would just be a substitute until - ah, yes, like always you were right.~
== BSANDR ~ Shauhana...~
== BMINSC~ I know you understand it, don't you? You will not be angry or jealous?~
== BSANDR ~How could I! I am and will always be your friend, yours and Shauhana's. I was sure it would happen to you and I am glad it is her. She is wonderful and she has seen the real Minsc right from the start.~
== BMINSC~ She is wonderful - and so are you. This is for all you have done for us and it will be the last one (He kisses Sandrah dearly.)~
=~From now on all my kisses are for Shauhana.~
== BSANDR ~(Sandrah smiles at Minsc and then turns away and comes up to you a while later.) And he needed not a single line from Boo to tell me all this...~
END
++~You need not to convince me about what the power of love can do, my sweetheart.~EXIT
