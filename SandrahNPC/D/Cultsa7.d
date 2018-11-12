BEGIN Cultsa7

IF~Global("SanDestBeastCult","GLOBAL",3)~THEN BEGIN CultVictimSaved1
SAY ~Dear <PRO_LADYLORD>, you have ended it, you have ended this terror. We are free.~
IF~~THEN REPLY~It had to be done, girl, yes you are free now, leave with your people from here.~GOTO CultVictimSaved2
IF~~THEN REPLY~Another useless brat saved, get moving, girl, leave with your people from here before I change my mind.~GOTO CultVictimSaved2
END

IF~~THEN BEGIN CultVictimSaved2
SAY~You are so powerful - even more than the nasty priest was. Are...are you a god?~
IF~~THEN REPLY~What? Do not be silly, girl!~DO~SetGlobal("SanDestBeastCult","GLOBAL",4)~GOTO CultVictimSaved3
END

IF~~THEN BEGIN CultVictimSaved3
SAY~Ah, maybe you're not. But the beautiful lady there (she points towards Sandrah), she surely is a goddess. Well, bye bye.~
IF~~THEN DO ~AddexperienceParty(24000)AddXPObject("CVSandr",15000)~EXIT
END

IF~Global("PaladQ","LOCALS",1)~THEN BEGIN CaravanVictimSaved1
SAY~You have ended that red robed devil, <PRO_LADYLORD>. He killed mama and papa and many other children's' parents. He wanted to take us far away. Poor Lanita was sick and fell down but he would not let us help her. He was a monster.~
IF~~THEN REPLY~You all go back this road you came. Take all the food and the gold you can get from your torturers and go to Ilmather's temple, will you.~GOTO CaravanVictimSaved2
IF~~THEN REPLY~The thief who was with them, did she also mistreat you or any other child?~GOTO CaravanVictimSaved3
END

IF~~THEN BEGIN CaravanVictimSaved2
SAY~Yes, we go home now. What should we tell them who has saved us?~
IF~InParty("Keldorn")~THEN REPLY~Tell them that Torm and Mystra send you help.~GOTO CaravanVictimSaved4
IF~InParty("Anomen")~THEN REPLY~Tell them that Helm and Mystra send you help.~GOTO CaravanVictimSaved4
IF~~THEN REPLY~Tell them the mightiest Bhaalspawn on Toril saved you!~GOTO CaravanVictimSaved4
END

IF~~THEN BEGIN CaravanVictimSaved3
SAY~She was strange, very much afraid of the red devil herself. She was weeping when Lanita died.~
IF~~THEN REPLY~I see, it looks like she told us the truth after all. Now, you all go back this road you came. Take all the food and the gold you can get from your torturers and go to Ilmather's temple, will you.~GOTO CaravanVictimSaved2
END

IF~~THEN BEGIN CaravanVictimSaved4
SAY~You are so powerful - even more than the nasty red robe. Are...are you a god?~
IF~~THEN REPLY~What? Do not be silly, girl!~GOTO CaravanVictimSaved5
END

IF~~THEN BEGIN CaravanVictimSaved5
SAY~Ah, maybe you're not. But the beautiful lady there (she points towards Sandrah), she surely is a goddess. Well, bye bye.~
IF~~THEN DO ~SetGlobal("PaladQ","LOCALS",2) AddexperienceParty(24000) EscapeArea()~EXIT
END

APPEND CVSandrJ
IF~Global("SanEntrCult","ra5501",1)~THEN BEGIN EntrCult1
SAY~Please trust me, <CHARNAME>, we are at one of the most evil places we have ever been together. Still I would ask you to pretend to enter this cult for the moment.~
IF~~THEN REPLY~Of course I trust you, my counsellor.~GOTO EntrCult2
IF~~THEN REPLY~You act a bit strange, Sandrah. You are very much concerned about this cult, are you?~GOTO EntrCult2
IF~~THEN REPLY~I had already decided to infiltrate these beasts - let us get to the bottom of it...and destroy it from inside.~GOTO EntrCult2
END

IF~~THEN BEGIN EntrCult2
SAY~All of what we see here is illusion, my love. Do not be afraid of their tests they will surely demand to gain trust in you. They will surely ask evil deeds of you, just to see your action and reaction.~
IF~~THEN REPLY~Like killing innocents and such, you mean?~GOTO EntrCult3
END

IF~~THEN BEGIN EntrCult3
SAY~Probably - but it will not be real in this place. Mystra will tell me when to end it, until then you can play your role without fear of soiling your hands in blood.~
IF~~THEN DO~SetGlobal("SanEntrCult","ra5501",2)~EXIT
END
END




