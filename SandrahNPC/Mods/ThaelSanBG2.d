CHAIN
IF~GlobalGT("DialogosconThael","LOCALS",1)InParty("CVSandr") Global("SanThaDro","LOCALS",0)OR(4) InParty("Viconia") InParty("Sola") InParty("Yasraena") InParty("Driz2") ~THEN BThael SanDrow1
~You seem to have no problem to befriend the drow we travel with, Sandrah.~
DO~SetGlobal("SanThaDro","LOCALS",1)~
==BSandr~I have had quite different experience with members of that race - some of them I call my friends others are deadly enemies.~
=~From what little I heard about your story, there probably is little chance for you to understand my friendly attitude.~
==BThael~I try not to become victim of my own past. I watch you deal with the drow and it somehow soothes me.~
==BSandr~I can very well understand that this will never compensate for the hatred you feel for the drow that took your beloved away from you. At least, I myself would never be so forgiving to anybody regardless of race who would have done similar to me.~
==BThael~I had not expected such understanding from you, healer.~
==BSandr~Believe it or not - I know what hatred is and I am not ashamed of it. There are boundaries for each of us where tolerance ends and we are forced into dark feelings that we may not like and that shadow our soul - but they are there...they do not go away...we have to learn to live with them.~
==BThael~(The moon elf nods but says nothing more.)~EXIT

CHAIN
IF~GlobalGT("DialogosconThael","LOCALS",3) InParty("CVSandr") Global("SanThaMid","LOCALS",0)~THEN BThael SanMidn
~A priestess of Mystra following a Bhaalspawn, Is that not something odd?~
DO~SetGlobal("SanThaMid","LOCALS",1) ~
==BSandr~Have you ever heard the story of Midnight and Cyric?~
==BThael~I cannot recall it - what about it?~
==BSandr~Why do think you know anything about priestesses of Mystra and their habbits then?~
==BThael~Elves live a long life, you know that. Learning never ends.~
==BSandr~(Smiles) An attitude I share, Thael. If you like, I will tell you the story one of these evenings at our campfire.~
==BThael~(The moon elf nods silently.)~ EXIT