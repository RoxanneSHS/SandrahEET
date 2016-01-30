BEGIN CVCoper

CHAIN
IF~Global("Copersan","ar10pb",2)~THEN CVSandrJ SargazD1
~Look, <CHARNAME>, another of those stargazers. The Sword Coast attracts them in masses these days.~
==BIMOEN2 IF~InParty("Imoen2")~THEN~Yes, like a dead squirrel attracts green flies.~
END
++~They rarely have something of relevance to report.~+ SargazD2

CHAIN
IF~~THEN CVSandrJ SargazD2
~I tend to object - it may not reveal its significance at first sight, but we may learn in some time the true meaning...~
==CVCoper~PERFECTLY TRUE, LADY PRIESTESS!!! Some of the things the stars tell us become reality much sooner than you could imagine.~
==CVSandrJ~And you are among those who have such knowledge, good man?~
==CVCoper~PERFECTLY TRUE, LADY PRIESTESS!!! You are on the most dangerous mission of your whole life at this very moment and as close to your death as you ever were.~
==CVSandrJ~The stars seldom speak with such exactness and precision about a single fate?~
==CVCoper~BUT I DO!!! I am the death you are nearing so inescapable!~
DO~SetGlobal("Copersan","ar10pb",3) CreateCreature("aacrs066",[2732.3090],5)Kill(Myself)~ EXIT