BEGIN SANGITH

CHAIN
IF ~ Global("SanGithVS","GLOBAL",1)~ THEN SANGITH Vs1
~ The Githyanki demand! You have the relic of holies!~
== BSANDR ~ This is a githyanki knight, <CHARNAME>, maybe one of the *Sword Stalkers*. ~
== SANGITH~ The Blade belonging to the Githyanki is with you! Detection does not lie! All will perish for this insult!~
== BSANDR ~ It must be a stalker, really, and a strong troup is with him. Their task is to recover any swords that fall into the hands of the unworthy, which in their eyes is any non githyanki.~
== SANGITH~ You have trespassed and taken what is not yours!~
== BSANDR ~We must give the vorpal Silver Sword to them, <CHARNAME>, we are not thieves, we have just found it. ~
==CVJenliJ IF~InParty("CVJenlig")~THEN~(Psionic) *Manlings will deliver, captain. Offer them good reward as not are thieves. Githyanki honor.*~
== SANGITH IF~InParty("CVJenlig")~THEN~(Psionic) *Supreme Planewalker with them, your word is my command, Jen'lig Tother-Ka. Manlings should obey you.*~
END
++ ~ Listen, we are no thieves. We have killed the one who stole it from you. Take what is your relic. ~ DO ~ SetGlobal("SanGithVS","GLOBAL",2)~ +  Vs2
++ ~ We may give it to you peacefully, knight, but we have fought for it risking our lives. Make us a fair offer and do not treat us as thieves.~ DO ~ SetGlobal("SanGithVS","GLOBAL",3)~ +  Vs3
++ ~ We have just found this sword and not stolen it from you. It is your mistake if you do not care for what you claim as yours. It is now ours by any right.~ DO ~ SetGlobal("SanGithVS","GLOBAL",4)~ +  Vs4

CHAIN
IF ~~ THEN SANGITH Vs2
~ Wise <PRO_RACE>. Take this from the Githyanki who know. *Among you is one destined to rise to the Weave*. Our kin will greet her on that day.~ DO ~ TakePartyItem("Sw2h15")~ EXIT

CHAIN
IF ~~ THEN SANGITH Vs3
~ Good. Here is our gift for you as we know when we travel the spheres: *Among you is one destined to rise to the Weave*. Our kin will greet her on that day.~ 
END
++ ~ A strange gift, knight. But I sense it has much worth from your view. Take your relic.~ DO ~ TakePartyItem("Sw2h15") DestroyItem("Sw2h15")~ EXIT

CHAIN
IF ~~ THEN SANGITH Vs4
~ Stubborn thieves! Examples must be set! None must tempt such a crime again! Destroy them all!~
EXIT

CHAIN
IF ~ Global("SanGithVS","GLOBAL",6)~ THEN SANGITH Vs1
~ The Githyanki demand once again! You still have the relic of holies!~
== BSANDR ~I beg you, <CHARNAME>, we must give the vorpal Silver Sword to them, we do not need more enemies and we are well equipped without it already. ~
END
++ ~ Listen, we are no thieves. We have killed the one who stole it from you. Take what is your relic. ~ DO ~ SetGlobal("SanGithVS","GLOBAL",7)~ +  Vs2
++ ~ We may give it to you peacefully, knight, but we have fought for it risking our lives. Make us a fair offer and do not treat us as thieves.~ DO ~ SetGlobal("SanGithVS","GLOBAL",7)~ +  Vs3




