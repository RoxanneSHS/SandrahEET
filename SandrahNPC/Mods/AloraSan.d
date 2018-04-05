CHAIN
IF WEIGHT #-2~Global("AlorPel","GLOBAL",4)~THEN BCMALOR Heali
~Your tiny fingers are quite dexterous in your tasks of healing - for a big one. Did you ever consider to use them for other skills?~
DO~SetGlobal("AlorPel","GLOBAL",5)~
==BSandr~You mean something like picking other people's valuables out of their pockets without being caught?~
==BCMALOR~Hey, you need not to know the whole repertoire right away. Opening locks for the group could be helpful.~
==BSandr~I can do that sometimes with my hammer or a spell. I prefer to stick to one profession and do that one well. For other skills it is not a problem for me to rely on my trusted friends.~
==BCMALOR~That's a good attitude, girl, I'll stick to my thieving and consult you for healing and you may just ask me if you ever need a heavy lock to be opened.~EXIT

CHAIN
IF~InMyArea("Pellig") See("Pellig") Global("AlorPel","GLOBAL",5)~THEN BCMALOR Pelli
~Hey, don't look at me like you're a big meany, there's not too much of me for you to really saturate your hunger.~
DO~SetGlobal("AlorPel","GLOBAL",6)~
==Pellig~Purr.~
==BCMALOR~Maybe you're not nasty at all - or not hungry.~
==Pellig~Purr.~
==BCMALOR~Nice pussycat.~
==Pellig~Growl.~
==BCMALOR~Uh, maybe I shouldn't stress my luck before it runs out.~EXIT

CHAIN
IF~InParty("CVSandr") See("CVSandr") Global("AlorPel","GLOBAL",6)~THEN BCMALOR Thivi
~Hey, I always dreamed of going to Waterdeep, the big big City of Splendour.~
DO~SetGlobal("AlorPel","GLOBAL",7)~
==BSandr~You are aware of the fact that the Shadow Thieves have been driven out from my home town, are you?~
==BCMALOR~Oh, come on, they would not object to one single halfling thief, those big meanies. If I tell them I'm an honest thief and a best friend of Elminster's daughter they MUST let me in, don't you think.~
==BSandr~Oh, yes, I am sure you will find your way to talk your admission into town by such means.~EXIT

CHAIN
IF~InMyArea("Pellig") See("Pellig") Global("AlorPel","GLOBAL",0)~THEN BALORA Pelli
~Hey, don't look at me like you're a big meany, there's not too much of me for you to really saturate your hunger.~
DO~SetGlobal("AlorPel","GLOBAL",1)~
==Pellig~Purr.~
==BALORA~Maybe you're not nasty at all - or not hungry.~
==Pellig~Purr.~
==BALORA~Nice pussycat.~
==Pellig~Growl.~
==BALORA~Uh, maybe I shouldn't stress my luck before it runs out.~EXIT

CHAIN
IF~InParty(Myself) RandomNum(2,1)~THEN  BCMALOR Random1
~Puuh, all day marching's not for little feet.~EXIT

CHAIN
IF~InParty(Myself) RandomNum(2,2)~THEN  BCMALOR Random2
~Look for an honest thief and find - me, of course.~EXIT