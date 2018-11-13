I_C_T C0Sirene 5 SanC0SirB
==CVSandrJ IF~InParty("CVSandr")~THEN~We have been travelling the Realms for a bit.~
==CVSandrJ IF~InParty("CVSandr") InParty("Viconia") !InParty("CVJenlig")~THEN~Does the presence of a drow in our party give you the impression we are prejudiced just because of someone's origin?~
==CVSandrJ IF~InParty("CVSandr") !InParty("Viconia") InParty("CVJenlig")~THEN~Does the presence of a githyanki in our party give you the impression we are prejudiced just because of someone's origin?~
==CVSandrJ IF~InParty("CVSandr") InParty("Viconia") InParty("CVJenlig")~THEN~Does the presence of a drow and a githyanki in our party give you the impression we are prejudiced just because of someone's origin?~
==CVSandrJ IF~InParty("CVSandr") !InParty("Viconia") !InParty("CVJenlig")~THEN~Does our rather mixed party give you the impression we are prejudiced just because of someone' origin?~
==C0Sirene IF~InParty("CVSandr")~THEN~(Smiles for a second) A remark that gives me a glimpse of hope. I will be open with you.~END

CHAIN
IF~Global("SanC0SirB","Global",2) AreaCheck("CVNar2")~THEN C0SirenJ Demo1
~Demons...~
DO~SetGlobal("SanC0SirB","Global",3) ~
==CVSandrJ ~No one would know that better than you. And this is not meant to be an insult.~
==C0SirenJ ~It is not my kin I can feel around here but the evil my Lord Ilmater warns me of.~
==CVSandrJ ~Thank you for clarification, Sirene. I am the last person to doubt your honesty.~
EXIT

CHAIN
IF~Global("SanC0SirB","Global",4) ~THEN C0SirenJ Siri2
~Sandrah, you seem to have more insight into our quest and the foe we soon face than anyone else among us.~
DO~SetGlobal("SanC0SirB","Global",5) ~
==CVSandrJ ~We all share the same knowledge, I would say. I just try to summarise the facts from time to time to see if a change of perspective maybe reveals something we have overlooked so far. My education and knowledge of lore help me to integrate what we find out into a larger picture.~
==C0SirenJ ~Still you impress me with those analytic skills. I wish I could counsel <CHARNAME> just as well as you do.~
==CVSandrJ ~Each of us plays an important role in this group, yours is no less than mine.~
==C0SirenJ ~(Smiles) I learn to trust my skills more and more while I travel with you and <CHARNAME>. I am afraid we soon need much of that confidence to succeed.~ EXIT

CHAIN
IF~Global("SanC0SirB","Global",6) ~THEN C0SirenJ Siri3
~Sandrah, with all the good you do, I wonder why you did not become a paladin.~
DO~SetGlobal("SanC0SirB","Global",7) ~
==CVSandrJ ~A paladin of Mystra, you mean?~
==C0SirenJ ~I heard about the Knights of the Mystic Fire, are they not champions of Mystra?~
==CVSandrJ ~Maybe not in the way you think they are. Mystra herself is the Guardian of the Weave and as such stays mostly neutral. Protection of the Weave includes working against its misuse. Neither Mystra's priests nor her knights are forces of goodness like a champion of Ilmater.~
==C0SirenJ ~Maybe I judged your goddess by the deeds of her servant whom I see everyday.~
==CVSandrJ ~The Knights of the Mystic Fire are mainly protecting large temples and operations of Mystra - as such they are more fighters that have some knowledge in the arcane rather than being deeply involved with Mystra's tasks.~
=~As her priestess I study and protect the Weave, which is more of my choice than defending ber temples and priests.~
==C0SirenJ ~I must say, as a side effect you are quite able to protect yourself.~EXIT
