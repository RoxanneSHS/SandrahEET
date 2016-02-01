ADD_TRANS_ACTION ACQ17003 BEGIN 14 END BEGIN 0 END ~ ActionOverride("CVSandr",SetGlobal("SanRetKarli","LOCALS",1))~

APPEND CVSandrJ
IF~Global("SanRetKarli","LOCALS",1)~THEN BEGIN SanKarlini1
SAY~ Hm, what about the gnomes now?~
IF ~~THEN REPLY~ Damned! We cannot get them back from that Balor's realm. Well, I guess that was the risk they were willing to take for science's sake.~GOTO SanKarlini2
IF ~~THEN REPLY~ Oh, my! Only the Balor could return them to the surface, but he is gone. I 'm afraid today we have witnessed a sacrifice for science. But will anyone ever know what the gnomes find out down there?~ DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanKarlini2
IF ~~THEN REPLY~ What a mess, Sandrah. Does my learned counselor know any way to help those poor victims of science?~ DO~IncrementGlobal("Sanpoints","GLOBAL",2)~ GOTO SanKarlini2
IF ~~THEN REPLY~What?? They are just gnomes, who cares about GNOMES, he?~ DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~ GOTO SanKarlini2
END

IF~~THEN BEGIN SanKarlini2
SAY~ Wait, <CHARNAME>, we must rescue them somehow. Let me think for a minute.~
=~ Mh...mh...yes, that may work...ah, do you remember the words Ygnatius used to summon the balor?~
IF~~THEN REPLY~ Not at all, sorry, Sandrah.~ DO~SetGlobal("SanRetKarli","LOCALS",2)~ GOTO SanKarlini3
IF~~THEN REPLY~ Wasn't it *Billirollor valla Nallavellini Neelbaballaa* or so?~ DO~SetGlobal("SanRetKarli","LOCALS",2)~GOTO SanKarlini4
IF~~THEN REPLY~ Wasn't it *Valla Nallavellini Neelbaballaa Valla* or so?~ DO~SetGlobal("SanRetKarli","LOCALS",2)~GOTO SanKarlini5
END

IF~~THEN BEGIN SanKarlini3
SAY~ What was it...valla Nallavellini...no...~
= ~ Ah, I have it...*Billirollor valla Nallavellini Neelbaballaa*~
IF~~THEN REPLY ~ Look Sandrah! Something happens as you spoke the words!~ DO~ SetGlobal("ACQ5","GLOBAL",10) CreateVisualEffect("spdimndr",[2475.1547])
Wait(1)
CreateCreature("ACQ17001",[2475.1547],0)
CreateVisualEffect("spdimndr",[2470.1527])
Wait(1)
CreateCreature("ACQ17002",[2470.1527],0)~ EXIT
END

IF~~THEN BEGIN SanKarlini4
SAY~ Yes, my genius, exactly, *Billirollor valla Nallavellini Neelbaballaa*~
IF~~THEN REPLY ~ Look Sandrah! Something happens as you spoke the words!~ DO~ SetGlobal("ACQ5","GLOBAL",10) CreateVisualEffect("spdimndr",[2475.1547])
Wait(1)
CreateCreature("ACQ17001",[2475.1547],0)
CreateVisualEffect("spdimndr",[2470.1527])
Wait(1)
CreateCreature("ACQ17002",[2470.1527],0)~ EXIT
END

IF~~THEN BEGIN SanKarlini5
SAY~ Yes...No...Not exactly...~
= ~ Ah, I have it...*Billirollor valla Nallavellini Neelbaballaa*~
IF~~THEN REPLY ~ Look Sandrah! Something happens as you spoke the words!~ DO~ SetGlobal("ACQ5","GLOBAL",10) CreateVisualEffect("spdimndr",[2475.1547])
Wait(1)
CreateCreature("ACQ17001",[2475.1547],0)
CreateVisualEffect("spdimndr",[2470.1527])
Wait(1)
CreateCreature("ACQ17002",[2470.1527],0)
~ EXIT
END
END