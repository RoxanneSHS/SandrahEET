// Tiax

CHAIN
IF ~Global("Sanotiax","LOCALS",1)~THEN BSANDR Sanotiax1
~(Sandrah watches Tiax suspiciously as the gnome approaches her.) ~
DO ~SetGlobal("Sanotiax","LOCALS",2) RealSetGlobalTimer("SanotiaxTa","LOCALS",1600) ~
== BO#Tiax~Even you will bow to the greatness of Tiax..eh..of Cyric - proud, over-proud priestess.~
== BSANDR ~I do not even bow to my own goddess and she surely never bowed to Cyric.~
== BO#Tiax~Hey, hey, she was his wife, his mate...fine, maybe she did not bow to him, but she followed him for sure...~
== BSANDR ~Actually it was her that was leading their common operations, even if in love they were equals.~
== BO#Tiax~Hurray, take this as an omen of Cyric...or maybe as one of Mystra, it should not matter, as long as you support my rising to rule, like your Goddess supported Cyric.~
== BSANDR ~(Mumbles.) For the benefit of <CHARNAME> - I must find a way to cure this gnome's madness...~
EXIT

CHAIN
IF ~Global("Sanotiax","LOCALS",3)~THEN BSANDR Sanotiax2
~...is utterly absurd, Tiax!~
DO ~SetGlobal("Sanotiax","LOCALS",4) RealSetGlobalTimer("SanotiaxTa","LOCALS",1600) ~
== BO#Tiax~Why? You are his granddaughter, his heiress...~
== BSANDR ~I am the granddaughter of the adventurer Cyric. My heritage goes back to the man, when he was still in his human form and before he was elevated by Ao to godhood. I am not the granddaughter of your mad god, Tiax.~
== BO#Tiax~Blablabla...what is the use of that detail, Sandrah. You are of HIS blood, and that means that fate has sent me to your side as your natural companion so we both can rise in Cyric's name to his heritage...~
== BSANDR ~God's have no heirs, Tiax. Sometimes an usurper claims their power and domain, but that is a different story.~
== BO#Tiax~Idiotic! The scheme is so clear, even a female must be able to see it - you and me, Cyric and Mystra. We will rule.~
== BSANDR ~Tread careful Tiax, neither of those gods may like your rising to their realm.~
== BO#Tiax~Baah, Cyric wants Tiax to rule. You should pray sometimes, priestess, then your goddess will surely tell you she wants you to follow her.~
== BSANDR ~I am already following her, Tiax, as well as the way set out by the woman Midnight she had been before.~
== BO#Tiax~Then how can you be so blind, Sandrah. If you follow Midnight - see what became of her, hehe, she rules, Cyric rules, Tiax will rule - The logic is infallible - Sandrah will rule.~
EXIT

CHAIN
IF~~THEN BSANDR Sanhealotiax
~Then all of our party will rise to rule, Tiax, as my healing skills are not limited to you alone.~
DO~SetGlobal("SanHealtiax","GLOBAL",5)~
== BO#Tiax~We will use the slaves as long as they serve our purpose. If you see to it that they are fit to support us that is a good thing, my heart. Guess that's how Midnight helped along Cyric in the old days.~
== BSANDR~(Sigh) Am I this mad gnome's lover by now already...?~
EXIT

APPEND BO#TIAX
IF WEIGHT #-9 ~Global("SanHealtiax","GLOBAL",4)~THEN BEGIN Sanotiaxheal
SAY ~Well done, sweetling, this is the way we will reach greatness, by supporting each other.~
IF~~THEN EXTERN BSANDR Sanhealotiax
END
END






