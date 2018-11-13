CHAIN
IF WEIGHT #-4~Global("SanNathB","GLOBAL",5)~THEN BFHNat SanHealNath1
~Thanks for this, priestess. May I take the opportunity for a little banter on this occasion.~
DO~SetGlobal("SanNathB","GLOBAL",6)RealSetGlobalTimer("SanSilvrInt","LOCALS",2000)~
==BSandr~We should get acquainted with each other, you are right. I have to ask for your excuse I did not start this conversation myself in all the hassle of the recent events. ~
==BFHNat~You already follow <CHARNAME> for some time - I observed you in <PRO_HISHER> company back in Baldur's Gate. Sandrah of Waterdeep, if I'm not mistaken?~
==BSandr~Correct. I have to confess I do not recall you from that time.~
==BFHNat~Understandable, for you all of the Flaming Fist must have been faceless marionettes of the Iron Throne that were chasing you and <CHARNAME>.~
==BSandr~Hm, I normally try to avoid such black and white generalisation and take each man and woman for their own. Our encounter must have been quite brief with you staying in the background.~
==BFHNat~Probably, me and Latimer were not that happy with the whole proceedings against you. I'm quite content to start our relationship from a blank sheet, so to say.~EXIT

CHAIN
IF WEIGHT #-4~Global("SanNathB","GLOBAL",7)~THEN BFHNat SanHealNath2
~You seem to have some influence on <CHARNAME> from your long time together, Sandrah?~
DO~SetGlobal("SanNathB","GLOBAL",8)RealSetGlobalTimer("SanNathInt","LOCALS",2000)~
==BSandr~I try to be <PRO_HISHER> counsellor according to my knowledge and lore best than I can. Each of our company should contribute to our common goal according to the own skills.~
==BFHNat~This type of teamwork I was missing in the Fist, that's for sure.~
==BSandr~You had your friend Latimer, did you not? You were referring to him as *my dear friend* on our initial encounter.~
==BFHNat~Well...yes.~
==BSandr~And you are searching for him even after you learned about his difficulties with the law.~
==BFHNat~You know best that a conflict with the law may not always make you a bad person, right?~
==BSandr~I will not pressure you more, Nathaniel. I am sure you will tell us what we need to know when the time is right for it.~
==BFHNat~Eh...yes...I think I begin to understand why <CHARNAME> does well to listen to your advice. (His smile shows the relief he gained from Sandrah's words).~EXIT

CHAIN
IF WEIGHT #-4~Global("SanNathB","GLOBAL",9)~THEN BFHNat SanHealNath3
~Your relationship with <CHARNAME> seems to go even deeper than I initially thought, Sandrah?~
DO~SetGlobal("SanNathB","GLOBAL",10)RealSetGlobalTimer("SanNathInt","LOCALS",2000)~
==BSandr~We are not trying to hide the fact that we are lovers, if that is what you mean. Is that a problem for you, Nathaniel?~
==BFHNat IF~GLOBAL("SanRomPath","GLOBAL",1)~THEN~Why should it? You have maybe misunderstood me and my questions to you. Not to offend you - you are a wonderful woman, Sandrah...~
==BSandr IF~GLOBAL("SanRomPath","GLOBAL",1)~THEN~(Laughs) But a woman, still. I did not talk of your possible interest in me but in him.~
==BFHNat IF~GLOBAL("SanRomPath","GLOBAL",1)~THEN~Don't worry too much yet, it will all depend on what happens once we find Latimer.~
==BFHNat IF~GLOBAL("SanRomPath","GLOBAL",2)~THEN~Why should it? Love goes its own ways and makes its own rules~
==BSandr IF~GLOBAL("SanRomPath","GLOBAL",2)~THEN~(Laughs) Like matching two women at times - or two men.~
==BFHNat IF~GLOBAL("SanRomPath","GLOBAL",2)~THEN~Don't worry too much yet, it will all depend on what happens once we find Latimer.~EXIT

