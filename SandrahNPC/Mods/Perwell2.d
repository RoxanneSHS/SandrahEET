APPEND ACQ60002

IF WEIGHT #-1~ Global("SeePellig","LOCALS",1)~ THEN BEGIN Pell1
SAY~ I have never seen such an enormous cat in my life.~
IF~~THEN REPLY~ Better shut up before she swallows you whole.~ EXTERN ACQ60002 Pell3
IF~~THEN REPLY~ It's a panther and it belongs to Sandrah there.~ EXTERN ACQ60002 Pell2
END
END

CHAIN
IF~~ THEN ACQ60002 Pell2
~ It's the pet of the wonderful goddess? Wow.~
DO~SetGlobal("SeePellig","LOCALS",2)~
==PELLIG~ Purr...~
==BSANDR~ You do not have to be afraid of Pelligram, she is friendly and she is my loyal companion.~
== ACQ60002~ I can't wait to get home where mama is waiting and Kitty. Kitty is my cat.~
==PELLIG~ Purr...~
== ACQ60002~ I like you, Sandrah, you and Pelligram. You are the most powerful I have ever seen but you use it only against the bad ones.~
==BSANDR~ Such are all of <CHARNAME>'s companions here. But let us not tarry as your folks and your cat await you.~
EXIT

CHAIN
IF~~ THEN ACQ60002 Pell3
~ Bah. you can't scare me none. I bet it's the pet of the wonderful goddess there. (He points at Sandrah.)~
DO~SetGlobal("SeePellig","LOCALS",2)~
==PELLIG~ Purr...~
==BSANDR~ You do not have to be afraid of Pelligram, she is friendly and she is my loyal companion.~
== ACQ60002~ I can't wait to get home where mama is waiting and Kitty. Kitty is my cat.~
==PELLIG~ Purr...~
== ACQ60002~ I like you, Sandrah, you and Pelligram. You are the most powerful I have ever seen but you use it only against the bad ones.~
==BSANDR~ Such are all of <CHARNAME>'s companions here. But let us not tarry as your folks and your cat await you.~
EXIT