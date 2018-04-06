CHAIN
IF WEIGHT #-4~Global("SanTyriB","LOCALS",3)~THEN BG#Tyris Healsan1
~Gorgon's Blood! You're quite a powerful spell wielder, young priestess.~
DO~SetGlobal("SanTyriB","LOCALS",4) ~
==BSandr~Is that unfamiliar at Yuria, the world you hail from, Tyris?~
==BG#Tyris~We have mages and we have priests and shamans who can heal - under conditions.~
==BSandr~(Smiles) My conditions for healing are easy - you are in need of it and you are not my foe so I give to you what is granted to me by my goddess.~
==BG#Tyris~A simple concept...wish it was that easy back home, but Death Adder has more or less succeeded to control all spellcasters and shamans we have.~
==BSandr~And Mystra does not object to that?~
==BG#Tyris~Mystra? The goddess you serve? Guld's Teeth, is it coincidence...? The goddess of magic, Mystryl, has long been banished and forbidden on our plane by the tyrant I fight.~
==BSandr~Mystryl was before Mystra...that was many millennia ago. Is it possible that you not only come from another plane...but also another time? Finding a way back for you may prove to be harder than I had guessed.~
==BG#Tyris~Will you help me nonetheless to find such a way?~
==BSandr~Remember what I told you about my skills, Tyris. They are a gift of my goddess and I lend them to my friends best I can.~EXIT

CHAIN
IF WEIGHT #-4~Global("SanTyriB","LOCALS",5)~THEN BG#Tyris Healsan2
~Sandrah,is it possible to feel almost at home in a place you were forced to by mere coincidence? Guld's Teeth, I haven't thought of Yuria for nigh a tenday now..~
DO~SetGlobal("SanTyriB","LOCALS",6) ~
==BSandr~ You do so at this very moment, right? Anyway - we are almost in a similar situation, <CHARNAME>, you - me, even if you are a bit farther from home than any of us. Still, we find comfort in a common fate and in working and living together.~
==BG#Tyris~I was thinking as well of some bound to <CHARNAME> specifically.~
==BSandr~You let your hair grow, feminine style, as I noticed.~
=~ Jokes aside, you are talking of romance, I guess. A difficult issue in your case.~
==BG#Tyris~Because of your own feeling for the same person, I'm not blind to that fact.~
==BSandr~That was not the issue I had in mind - I was more concerned by your dilemma to decide at one time about your priorities, just in case we may discover a way for you to make it back to Yuria.~
==BG#Tyris~ Ha, you think you will get rid of me that way - but what if <CHARNAME> chooses to come with me?~ DO~RunAwayFrom("CVSandr",20)~
==BSandr~You are misinterpreting my words, Tyris. I truly meant it like I said it. I will give you the necessary quietude now to contemplate about your feelings.~EXIT

CHAIN
IF WEIGHT #-4~Global("SanTyriB","LOCALS",15)~THEN BG#Tyris Healsan3
~Sandrah,is it possible to feel almost at home in a place you were forced to by mere coincidence? Guld's Teeth, I haven't thought of Yuria for nigh a tenday now..~
DO~SetGlobal("SanTyriB","LOCALS",6) ~
==BSandr~ You do so at this very moment, right? Anyway - we are almost in a similar situation, <CHARNAME>, you - me, even if you are a bit farther from home than any of us. Still, we find comfort in a common fate and in working and living together.~
==BG#Tyris~I was thinking as well of some bound to <CHARNAME> specifically.~
==BSandr~You are talking of friendship and loyalty, I guess. A difficult issue in your case.~
==BG#Tyris~I have both in two different places, I'm not blind to that fact.~
==BSandr~I am concerned by your dilemma to decide at one time about your priorities, just in case we may discover a way for you to make it back to Yuria.~
==BG#Tyris~ Just like me - I have no idea what to do in such a case.~
==BSandr~I am short of advice fo it myself as much as I would try to help you. I suppose it will be a matter of time and experience we will share together until the possible event. Your heart will know by then what the answer is. I will give you the necessary quietude now to contemplate about your feelings.~EXIT

CHAIN
IF WEIGHT #-4~Global("SanTyriB","LOCALS",7)~THEN BG#Tyris SanretUr1
~Sandrah, long time ago we have talked about a possibility for me to return to Yuria...~
DO~SetGlobal("SanTyriB","LOCALS",8) ~
==BSandr~ (Sigh) I have not forgotten my promise but it was not easy for me to reveal my findings to you until now. Maybe it is a good moment now...(she hesitates for an instance.)~
==BG#Tyris~Yes? Be assured you cannot make anything worse for me any more.~
==BSandr~You are right, it may be a shock but it may also be a relief to you what I have to say. Clarity may be more important now than pain.~
=~You have found friends here on Faerun and even love, maybe some kind of home like you left behind on Yuria.~
=~...~
=~You cannot go back to Yuria, never. Yuria does no longer exist.~
==BG#Tyris~(Tyris remains silent for some time with her eyes cast down while Sandrah has wrapped her in her arms. When Tyris finally lifts her eyes to Sandrah's face her expression is almost joyful.)~
=~You are right, clarity is what helps me most at the moment. I'm no longer torn between my old and new life and the unbearable question if I must leave <CHARNAME> and my new friends to fulfil my obligations to my former companions. Everything is clear now. Faerun will be my home and you will be my companions, Yuria is my history and not forgotten, but history nonetheless.~
=~Still - why can I not return?~
==BSandr~Already before I found out more about your former home plane we had anticipated that you made a journey not only from plane to plane but also through time. It is  possible to travel between planes and I would have been able to find a way for you to do so, but it is not possible to send you backwards in time - not after you have left your impact on Faerun and the presence. Furthermore, even if the possibility would exist it would mean to send you to your own useless death.~
=~This is what happened. Death Adder finally achieved to get most of Yuria's magical powers under his control. Like so many power hungry mages before him this was not enough for his ambitions - he challenged Mystryl and Shar in order to raise to godhood himself. In his enourmous manipulation of energy and matter he caused Yuria to finally break apart and vapourize in a collision of Dark and True Weave matter.~
==BG#Tyris~Everything and everybody I knew is gone...since aeons of time...buuh. This is...breath taking...I am the sole survivor of a long forgotten world...~
==BSandr~You are a welcome and beloved new citizen of Faerun, Tyris.~
==BG#Tyris~Yes - I may have felt like one for some time already, but now I am assured I have no other choice but to accept it. It is not such a bitter pill to swallow.~
END
IF~Global("G#TF.TyrisMatch","GLOBAL",0)~THEN REPLY~(You have her in your arms already and lift up her chin to kiss her.) It's good to know you can no longer escape me in the way you jumped into my life. I love you.~+ SanretUr2
IF~Global("G#TF.TyrisMatch","GLOBAL",0)~THEN REPLY~ It's good to know you can no longer escape me in the way you jumped into my life. You have your place here in our company.~+ SanretUr3

CHAIN
IF~~THEN BG#Tyris SanretUr2
~I love you, you and your...OUR world to be explored by us - together.~EXIT

CHAIN
IF~~THEN BG#Tyris SanretUr3
~I am glad I have found you and your...OUR world to be explored by us - together.~EXIT

