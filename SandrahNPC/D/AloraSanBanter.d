CHAIN
IF WEIGHT #-3~Global("Sanalora","GLOBAL",3)~THEN Balora Stuffy
~Priests're a pretty stuffy class of peoples, if you'd ask me.~
DO~SetGlobal("Sanalora","GLOBAL",4)RealSetGlobalTimer("SanBantT","LOCALS",3200)~
==Bsandr~I am not asking you - and the *stuffiness* of a priestess is related to the *stuffiness* of the god or goddess she serves.~
==Balora~Sounds reasonable. On a scale of one to ten, how stuffy's your ol' Mystra.~
==Bsandr~Look at me and make up your mind.~
==Balora~Wouldn't even guess you're a priestess if it weren't for your skills.~
==Bsandr~Sound like a four, or maybe just a three for *stuffiness*.~
==Balora~Okay, let Helmits have the ten.~
==Bsandr~And Mask?~
==Balora~Have to think a bit about it...are there priests of Mask anyway?~EXIT

CHAIN
IF WEIGHT #-3~Global("Sanalora","GLOBAL",5)~THEN Balora Cyric
~Mystra when she used to go as Midnight still, heard she loved a thief?~
DO~SetGlobal("Sanalora","GLOBAL",6)RealSetGlobalTimer("SanBantT","LOCALS",3200)~
==Bsandr~We all have our weaknesses, upcoming goddesses included.~
==Balora~Isn't that some excuse for yourself, he? I know quite well how much you like that heroine Midnight, don't fool me.~
==Bsandr~She was my grandmother - and what I learned from her in that respect is not to judge a lover by profession.~
==Balora~Even if that guy's name's for example *Cyric*?~
==Bsandr~It does not matter what profession that man had, thief, mage, druid...the only problem was that he always was the Prince of Lies, even before AO gave him the power to live that at grand style.~
==Balora~You got a point there, I saw honest thieves (see one every morning in my mirror) and saw lying wardens and thieving politicians just as well.~EXIT

CHAIN
IF WEIGHT #-3~Global("Sanalora","GLOBAL",7)~THEN Balora Funtime
~You really know to have some fun, girl, I must say.~
DO~SetGlobal("Sanalora","GLOBAL",8)RealSetGlobalTimer("SanBantT","LOCALS",3200)~
==Bsandr~What was my *stuffiness* index last time? Three, four?~
==Balora~Going down on a landslide, really. Probably your Mystra rescued a lot of her human nature over to Celestia.~
==Bsandr~You have a sharp eye, Alora. It is one aspect of how I can relate to my goddess.~
==Balora~Too bad I never met that Midnight, she must have been fun to have around.~
==Bsandr~You have me instead.~
==Balora~(Laughs) Guess you'll need to suffice...~DO~ActionOverride("CVSandr",AddSpecialAbility("CVKnok"))~EXIT