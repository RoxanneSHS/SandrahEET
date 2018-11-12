CHAIN
IF WEIGHT #-7~Global("SanJanB","LOCALS",3)~THEN BJAN SanHealJan1
~Totally unessessary to waste your healing spells on me, Sandrah.~
DO~SetGlobal("SanJanB","LOCALS",4)~
==BSandr~You were injured and I am a healer - or can you do it yourself and just forgot it?~
==BJAN~I would have used my own brilliant mega-new invention in just a minute as soon as I had my hands free. See here, Jansen's recreational lotion, distilled from turnips and enhanced with hobgoblin urine (had to add some cauliflower extract for better taste.) Gets me hale within minutes.~
==BSandr~Oh, yes, I heard of the healing capabilities of those ingredients before, so try them if you like. I prefer my spells still - I cannot get used to the idea of having to pee on my patients on the battlefield.~
==BJAN~I'd like to see that but you needed to eat a lot of turnips before any battle.~
==BSandr~Are we not required to do that anyway, at least according to your continuous lectures on the subject?~
==BJAN~Gosh, I'd never thought I could convince any of you of the benefits of a turnip diet.~EXIT

EXTEND_BOTTOM Gerhar 13
IF~InParty("CVSandr")~THEN REPLY~Can you help the gnomes with your skills, Sandrah?~EXTERN CVSandrJ JanLisPlot1
END

CHAIN
IF~~THEN  CVSandrJ JanLisPlot1
~Those afflictions of the mind are not something that can be repaired by a simple spell without the risk of destroying more than you repair. It appears that something dark has been used in revenge on Lissa and her daughter.~
==Gerhar~To heal an innocent you must take the mind's path. Find the Hidden and perhaps he shall grant your boon. Travel soon ere the child and leaves thy conscience torn asunder!~
==CVSandrJ~The gnome is right, <CHARNAME>, a cure other than be reversing the dark spell that has been used on the girl will take more time than we may have. I suggest to pursue the one who caused the infliction to get the cure from the source.~
==Gerhar~Without focus you shall never pass, searcher...~
END
++~The Hidden?~EXTERN Gerhar 17
++~Search where...whom?~EXTERN Gerhar 17
