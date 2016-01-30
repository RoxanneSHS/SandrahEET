BEGIN PelligT

IF~Global("SandrahSummoned","GLOBAL",1)~THEN BEGIN PellMess1
SAY~*The power of the telepathic voice in your head takes you once again by surprise.* <CHARNAME>, you call now for the one you left to seek her own fate?~
IF~~THEN REPLY~ Where is Sandrah, has she send you?~GOTO PellMess2
END

IF~~THEN BEGIN PellMess2
SAY~ *The goddess we both serve has granted me to answer the Fate Spirit's call before I return to my service again. I have only little time for you, just as little as the time you had for Sandrah when she needed you.~
IF~~THEN REPLY~ What are you talking about, Pelligram?~DO~SetGlobal("SandrahSummoned","GLOBAL",2)~ GOTO PellMess3
END

IF~~THEN BEGIN PellMess3
SAY~*Sandrah is not by your side today neither am I - even as such should have been the case. She was willing to aid you in your quest until the very end but you were not doing the same for her. She is now out there to solve it on her own.~
IF~~THEN REPLY~ Is there not any chance to see her again and clarify it face to face?~ GOTO PellMess4
END

IF~~THEN BEGIN PellMess4
SAY~ *Your path and hers run together - they have in the past and they do in the future. How you will meet her once again will depend now on your choices alone. Make the wrong decisions, <CHARNAME>, and you may wish to never see her again as she will be your greatest foe. Solve your quest adequately and you will find the strongest ally in her in the hour of greatest need.* ~
=~There is nothing more to say. Your fate is in your hands alone.~
IF~~THEN DO~ MoveToPoint([1926.792]) EscapeArea()~EXIT
END

CHAIN
IF WEIGHT #-1~Global("MinscSpawnPlane","GLOBAL",1)AreaCheck("ar4500")~ THEN Sanboy1 SumMinsc
~Hello, Miss Sandrah, <CHARNAME>.~
DO~ SetGlobal("MinscSpawnPlane","GLOBAL",5)~
== BSANDR25 ~ Giran! the bringer of *expensive* messages. How much would you demand this time, my friend?~
== Sanboy1 ~ Oh, those times are over for *prince* Giran. And actually you cannot give me any coin as I am not really here, just my image.~
== BSANDR25 ~<CHARNAME> was expecting your stepfather Minsc. I assume you are here to tell  us he will not appear.~
== Sanboy1 ~You know, he and mama, I mean he and Shauhana,  have much responsibility in their reign over the Clan Orcs. They are just now in conference with the southern cities in Amn and the Sword Coast to establish lasting peace.~ DO~MoveToPoint([1926.792]) EscapeArea()~
END
++~Greet your parents and deliver our best wishes for success.~EXIT
++~I should have thought of Minsc's obligation myself, sorry for that.~ EXIT