I_C_T C0Sirene 5 SanC0SirB
==CVSandrJ IF~InParty("CVSandr")~THEN~We have been travelling the Realms for a bit.~
==CVSandrJ IF~InParty("CVSandr") InParty("Viconia") !InParty("CVJenlig")~THEN~Does the presence of a drow in our party give you the impression we are prejudiced just because of someone's origin?~
==CVSandrJ IF~InParty("CVSandr") !InParty("Viconia") InParty("CVJenlig")~THEN~Does the presence of a githyanki in our party give you the impression we are prejudiced just because of someone's origin?~
==CVSandrJ IF~InParty("CVSandr") InParty("Viconia") InParty("CVJenlig")~THEN~Does the presence of a drow and a githyanki in our party give you the impression we are prejudiced just because of someone's origin?~
==CVSandrJ IF~InParty("CVSandr") !InParty("Viconia") !InParty("CVJenlig")~THEN~Does our rather mixed party give you the impression we are prejudiced just because of someone' origin?~
==C0Sirene IF~InParty("CVSandr")~THEN~(Smiles for a second) A remark that gives me a glimpse of hope. I will be open with you.~END

CHAIN
IF~Global("SanC0SirB","Global",1) AreaCheck("CVNar2")~THEN C0SirenJ Demo1
~Demons...~
DO~ SetGlobal("SanC0SirB","Global",2) ~
==CVSandrJ ~No one would know that better than you. And this is not meant to be an insult.~
==C0SirenJ ~It is not my kin I can feel around here but the evil my Lord Ilmater warns me of.~
==CVSandrJ ~Thank you for clarification, Sirene. I am the last person to doubt your honesty.~
EXIT