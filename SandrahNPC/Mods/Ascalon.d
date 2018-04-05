// Ascalon
CHAIN
IF ~~ THEN BSANDR AscSan2
~ No magic involved when you seem to read my mind for my wishes?~
== ACASC ~ No magic, just lifelong experience with even the most exquisite of customers.~
END
++ ~ And you just won a new one, it seems. ~ EXTERN ACASC 3

CHAIN
IF~~THEN  ACASC Ascjen1
~A challenge. For Jen'lig it has to be a Baldur's Gate Planewalker. Freshly ground pepper, half a dried chilli mixed with one third cup vodka , half a cup tomato juice, a cup of fresh lime juice, a cup of fresh lemon juice, a pinch of horseradish - pickled okra and celery stalks for garnish. Ready to leave this Plane.~
==CVJenliJ~(Hiss) Good spicy, make good head spin, make Jen'lig want mate.~
END
++~They probably fulfil such wishes as well in this establishment.~EXTERN ACASC 3

EXTEND_TOP ACASC 3 #1
IF ~InParty("CVSandr") ~ THEN REPLY ~ What would you serve Elminster's own daughter?~ GOTO AscSan1
IF ~InParty("CVJenlig") ~ THEN REPLY ~ Did you ever mix a drink for a githyanki lady? ~GOTO Ascjen1
END

APPEND ACASC
IF ~~ THEN BEGIN AscSan1
SAY ~ The beautiful Sandrah, disciple of the goddess Mystra as well as follower of the heroine Midnight.~
= ~ Consequently we serve * Mystra's Midnight Kiss*, taking the juice from half an Orange, 2 dashes Cognac, 1 dash Cointreau, and fill up with Champagne. No magic involved but a blessed drink nonetheless.~
IF ~~ THEN EXTERN BSANDR AscSan2
END
END