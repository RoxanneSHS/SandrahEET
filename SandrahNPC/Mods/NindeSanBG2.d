CHAIN
IF WEIGHT #-3~Global("SanHealNinde","GLOBAL",3)~THEN BLK#Nind KnowWD
~You have made the expected progress from the fledgling young priestess under your mighty father's wing to a powerful cleric, Sandrah.~
DO~SetGlobal("SanHealNinde","GLOBAL",4)RealSetGlobalTimer("SanNindeT","LOCALS",3500)~
==BSandr~Your words imply you hail from Waterdeep and knew me way back then. To be honest, I do not recall to ever have met you.~
==BLK#Nind~We have never been introduced to each other, that is right. I left the higher circles of the City of Splendour's high society before you made your overwhelming appearance there. Still, you were too prominent a personality to be overlooked.~
==BSandr~We have at least another thing in common then, Ninde, I never really took pleasure in Waterdeep's hollow society activities, it just came as part of my heritage and my position at the temple.~
==BLK#Nind~(Laughs) Who would have expected differently, given your origins. But let us move on, all that stuff is topic for quieter moments.~EXIT

CHAIN
IF WEIGHT #-3~Global("SanHealNinde","GLOBAL",5)~THEN BLK#Nind KnowWD
~Sandrah, you may be the only one for half a kingdom around to have some sophisticated conversation with from time to time.~
DO~SetGlobal("SanHealNinde","GLOBAL",6)RealSetGlobalTimer("SanNindeT","LOCALS",3500)~
==BSandr~Are you trying to be charming, necromancer?~
==BLK#Nind~I was the product of Waterdeep's priciest finishing schools. Long ago. You do not appreciate my current nature.~
==BSandr~I am reluctant to trust you, Ninde - I am generally not that fond of your kind.~
==BLK#Nind~You do not reject Bhaalspawns.~
==BSandr~You have a point there, Ninde. Yes, I judge the individual by their deeds and intentions rather than by their blood - or should I say, the lack of it?~
==BLK#Nind~I'm not *that* kind of necromancer. I prefer the men and women to have pleasure with alive and kicking.~
==BSandr~There may be a reasonable story behind your transition from Waterhavian belle to soulless vampire servant.~
==BLK#Nind~We do silly things for love - we do silly things to escape the ennui of a pre-described course of life. You among all should agree to that.~
==BSandr~There are different ways to accomplish such... ~
==BLK#Nind~Some have more luck than others, some suffer more, some suffer less.~
=~Let us keep the rest of that tale for another evening...~EXIT