CHAIN
IF ~Global("Altalk","BG1800",4)~ THEN CVSandrJ Clakwoodcara
~ Children to slave in the mines! <CHARNAME>, the vileness of our opponents shocks me time and time again.~
DO~SetGlobal("Altalk","BG1800",5)~
== BIMOEN IF~ InParty("Imoen2") ~ THEN ~ Nobody will search for them...We could have had such a fate if not ol' Puffguts 'n' Gorion had taken care.~
== BSHART IF~ InParty("Sharteel") ~ THEN ~ A good training ground for the fittest to survive. ~
== BVICON  IF~ InParty("Viconia") ~ THEN ~ Strange surfacer's attitude - who else but slaves are supposed to be labouring here?~
== BKIVAN  IF~ InParty("Kivan") ~ THEN ~ My heart bursts at such injustice. Let us end this at all cost. ~
== IF_FILE_EXISTS BSUFINCH  IF~ InParty("Sufinch") ~ THEN ~ Even such dark facts must be recorded by a true chronologer. People must know in order to prevent it from happening again. ~
== BAJANT  IF~ InParty("Ajantis") ~ THEN ~ Helm has led us here just at the right moment. Let us not stop until we have uprooted this whole place. ~
==BJenli IF ~InParty("CVJenlig")~THEN~Manlings make own younglings to slave? Worse than illithid. Why call they Jen'lig evil?~
== IF_FILE_EXISTS ~B!GAVINJ~ IF ~InParty("B!GAVIN")~ THEN ~ We will bring the light of Lathander into this darkest of places again.~
== IF_FILE_EXISTS ACBreB IF~ InParty("ACBre") ~ THEN  ~ Clangeddin's axe shall split the head of each of these bastards! Sandrah, let my axe sing in unison with your hammer. ~
==CVSandrJ IF~ InParty("ACBre") ~ THEN  ~ For once we agree, dwarf. Slavery is an evil that must be fought wherever we find it.~
== BBRANW  IF~ InParty("Branwen") ~ THEN ~ By Tempus, my blood will not cease to boil until we have finished this battle. ~
== BXANNN  IF~ InParty("Xan") ~ THEN ~ This whole installation must be just an illusion, no gods can exist in a world where such is possible. ~
== BSANDR IF~ InParty("Xan") ~ THEN ~ My goddess has led me here to correct this misdeed, Xan. And you alongside with me, my friend.~
== BEDWIN_  IF~ InParty("Edwin") ~ THEN ~ What is this uproar about? Anyone knows a more productive way of producing this ore? ~
== BCORAN  IF~ InParty("Coran") ~ THEN  ~ Robbing purses is one thing, robbing people's freedom and dignity is another. ~
== IF_FILE_EXISTS BRH#ISRA  IF~ InParty("RH#ISRA") ~ THEN ~ Now we are seeing the dark side of the sword coast and of thine opponents. ~
==CVSandrJ IF~ InParty("RH#ISRA") ~ THEN  ~ I am afraid this is just the beginning of our journey into much darker terrain (sigh).~
== BDYNAH  IF~ InParty("Dynaheir") ~ THEN ~ I travelled land after land just to find that Thay canst be around the next corner. (Sigh).~
== BMINSC_ IF ~InParty("Minsc") ~ THEN~ Grrrrh. Children as slaves - anyone as a slave. Butts will be kicked and heads will roll.~
== BJAHEI  IF~ InParty("Jaheira") ~ THEN ~ The utmost perversion of *civilization*. I will not rest until we have destroyed this place finally. ~EXIT