CHAIN
IF WEIGHT #-3~Global("SanDaceB","GLOBAL",4)~THEN BT#Dace DaceSan1
~You're not one to be tracked down so easily, Sandrah-kid.~
DO~SetGlobal("SanDaceB","GLOBAL",5) RealSetGlobalTimer("SanDaceTime","LOCALS",1640)~
==BSandr~Am I subject to bounty hunting?~
==BT#Dace~I'm sure your head will be worth a little sum to someone out there, kinda like you step on some's toes all the time. But, nay, that's not what I meant. Just like to know a bit about the fellows I travel with, kid, and you...well you evade my screening in a way.~
==BSandr~You are an experienced woman, Linton, you know that people are not just black and white. Some are hard to categorize.~
==BT#Dace~You've a point there, kid. Anyway - on the road and on the hunt you must make your judgement quickly, ain't I right, hesitation can kill ya. ~
==BSandr~We are company of <CHARNAME>, not enemies. Nobody is pushing us for a quick assessment. Me, I think you are a woman who has seen much, good and bad - each experience has left a mark. I can take my time to learn about you and from you.~
==BT#Dace~Now, enough of that heady talk, kid. 'tis one thing I observed about you 'tis you ain't one of those priestesses that can't have her fun when time allows. The next round is on me, kid.~
==BSandr~Fine, they serve an Alurlyath Wine here that is not too bad.~EXIT

CHAIN
IF WEIGHT #-3~Global("SanDaceB","GLOBAL",6)~THEN BT#Dace DaceSan2
~Hey, Sandrah-kid, say - you and <CHARNAME> 've been hunted by quite a few folks for some while?~
DO~SetGlobal("SanDaceB","GLOBAL",7) RealSetGlobalTimer("SanDaceTime","LOCALS",1640)~
==BSandr~You might as well say that we have been the hunters in as many cases as well. And often, we may have been prey and hunter at the same time.~
==BT#Dace~But now, with that Irenicus mage you're the hunters and it's quite approriate you've got me in your ranks.~
==BSandr~I am sure it is a good think to team with you. I am not sure about the role of hunter and prey in this case. It was Irenicus who was hunting us. He made some strange offers to <CHARNAME> that obviously have to do with the Bhaal heritage. He knows we need to persue him to free Imoen. He counts on that.~
==BT#Dace~It's a trap then, that whatcha think, kid?~
==BSandr~He still wants something from <CHARNAME>. He was interrupted down there beneath Athkatla before he could finish his work. All he has to do is wait.~
==BT#Dace~Hm...if we want to rescue that Imoen-girl we must move, there's no way 'round that.~
==BSandr~We have been in such situations before, and more than once. A trap has been laid for us and we entered it fully prepared. As we still are here today you can take as the proof that we always took our advantage out of these situations.~
=~Still, it is too early to make decisions. In order to prepare ourselves well, we still need to find more facts.~
==BT#Dace~Looks like you're the clever kid that <CHARNAME> needs to avoid such traps, fine, fine.~EXIT

CHAIN
IF WEIGHT #-3~Global("SanDaceB","GLOBAL",8)~THEN BT#Dace DaceSan3
~Hey, Sandrah-kid, have some time, he?~
DO~SetGlobal("SanDaceB","GLOBAL",9) RealSetGlobalTimer("SanDaceTime","LOCALS",1640)~
==BSandr~Sure.~
==BT#Dace ~It hasn't taken me that long to find how things are really between you and <CHARNAME>.~
==BSandr~We have no reason to hide our love from anyone.~
==BT#Dace ~Hey, no, listen, kid, it wasn't my idea to propose that...~
==BT#Dace IF~Global("SanRomPath","GLOBAL",1)~THEN~ I mean...he's smart and attractive and all - not a bad choice, oh, no.~
==BSandr IF~Global("SanRomPath","GLOBAL",1)~THEN~Hm, I know by now that you are not so easily to be satisfied by the avarage male yourself.~
==BT#Dace IF~Global("SanRomPath","GLOBAL",1)~THEN~ (Sigh) Ah, the good ones are so rarely sown, kid, better grab and hold on to one if you're lucky...well, I mean you ARE lucky.~
==BT#Dace IF~Global("SanRomPath","GLOBAL",2)~THEN~ I mean...she's smart and attractive and all - not a bad choice, oh, no.~
==BSandr IF~Global("SanRomPath","GLOBAL",2)~THEN~I have found you are not one who is beset by prejudice - love often finds its own mysterious ways.~
==BT#Dace IF~Global("SanRomPath","GLOBAL",2)~THEN~ (Sigh) You say it and, ah, good lovers are so rarely sown, kid, better grab and hold on to one if you're lucky...well, I mean you ARE lucky.~
EXIT

CHAIN
IF WEIGHT #-3~Global("SanDaceB","GLOBAL",10)~THEN BT#Dace DaceSan4
~Say, Sandrah-kid, you always seem to be so in control and thinking and reading and such...~
DO~SetGlobal("SanDaceB","GLOBAL",11) RealSetGlobalTimer("SanDaceTime","LOCALS",1640)~
==BSandr~Oh, no, you know me better than that by now. I always take a chance to enjoy myself when the moment and occasion is right.~
==BT#Dace ~Well, yes, that's not what I meant. I meant, I mean...well, did you ever do something utmost stupid in your life?~
==BSandr~The problem with doing completely stupid things is that yourself are the last person to recognise it, am I right? Your deed seems to be the completely logical and right thing to do at that moment. Only in hindsight you recognise the utter fool you have been - if at all.~
==BT#Dace ~Oh, my...you mean that I may have done more stupid things in my life than I've already found out about yet? More trouble may be hiding around the next corner.~
==BSandr~You are a very spontaneous and impulsive woman, Dace. The good thing about it may be that you have done some clever and caring deeds that helped some people in the past and you are just as unaware about them as you are about some possible mistakes.~
==BT#Dace ~Comforting. I sure like your positive attitude t'wards life, kid.~EXIT

CHAIN
IF WEIGHT #-3~Global("SanDaceB","GLOBAL",12)~THEN BSandr DaceSan5
~Wait a minute, Ducky...~
DO~SetGlobal("SanDaceB","GLOBAL",13) RealSetGlobalTimer("SanDaceTime","LOCALS",1640)~
END
++~Yes, Dace...eh? Hey, Sandrah, that's not funny!~EXTERN BT#Dace DaceSan6

CHAIN
IF~~THEN BT#Dace DaceSan6
~Hey, Sandrah-kid, that's not funny!~
==BSandr~Ooops?~
==BT#Dace~He's Ducky for me - exclusively, aren't you, darlin'?~
=~You sure have your own kid-talk name for him, I betcha have.~
==BSandr~Yes, I call him...~
==BT#Dace~Sshh, dontcha tell me, I don't needa know. Keep it for yours and him 'n' let me keep *Ducky* between him and me, got me?~
==BSandr~Fine, I think you are right in your typical Dace way. We both have our own unique relationship with that special man, and our own names to make it private and precious.~
==BT#Dace~Brilliant, kid, I knew you had the stomach for this. Alright with you, Ducky?~
END
++~Whatever you say, Dace - whatever you say, Sandrah.~EXIT

CHAIN
IF WEIGHT #-3~Global("SanDaceB","GLOBAL",14)~THEN BT#Dace DaceSan7
~What's that all-knowin' smile ya display, Sandrah-kid?~
DO~SetGlobal("SanDaceB","GLOBAL",15) RealSetGlobalTimer("SanDaceTime","LOCALS",1640)~
==BSandr~You look like a happy cat who just had her mouse...or was it a ducky?~
==BT#Dace~There's no denying and you sure knew it had to come, clever kid that you are. I thought we had some kinda gentlewomen's agreement on the issue.~
==BSandr~Yes. I just wanted to make sure I do not hurt someone too badly when I come into <CHARNAME>'s bedroll with a big jump.~
==BT#Dace~Sandrah-kid, you oughta know this ol' cat's got nine lives - or was it seven? (Grin)~EXIT