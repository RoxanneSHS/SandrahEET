BEGIN CVREVI

IF ~ Global("OrcPrison","GLOBAL",31) ~ THEN BEGIN ImoRevi1
SAY ~ Hello, I am Sister Revianel, you have met our little Isobel already. The poor child has lost her mother to an orc attack just a few days ago. And with her father killed by bandits just last winter she is now with us, the poor darling.~
IF~~THEN REPLY ~ She seemed to be quite cheerful nonetheless.~ GOTO ImoRevi2
IF~~THEN REPLY ~ It is wonderful to see how everything has been set up here. Without you and this home, the poor girl would be begging out on the streets today.~ GOTO ImoRevi2
END

IF~~THEN BEGIN  ImoRevi2
SAY ~ Yes, it is all due to the wonderful Imoen of Candlekeep. She has set up this home for the little ones like Izzy, I mean Isobel. And Imoen is also a great inspiration for our children in how she keeps up her positive attitude even in the darkest perils she has to face. Our children just love her. And her steadfast companion Henning, of course.~
IF ~~ THEN REPLY ~ She is a great woman for sure. I think we can afford to contribute a bit to the success of this home.~ GOTO ImoRevi3
IF~~ THEN REPLY ~ She sure has her good sides, but please keep an eye on the language your children learn - let them not follow the famous Imoen in her endless babbling. ~DO ~ SetGlobal("OrcPrison","GLOBAL",32)~ EXIT
END

IF~~THEN BEGIN  ImoRevi3
SAY ~ If you want to make a donation to us, the temple nearby will gladly accept that. Meanwhile feel free to look at everything here. Have a good day.~
IF ~~ THEN DO ~ SetGlobal("OrcPrison","GLOBAL",32)~ EXIT
END

IF ~ GlobalGT("OrcPrison","GLOBAL",31) AreaCheck("BG3320") ~ THEN BEGIN ImoRevi4
SAY ~ Hello and welcome again.~
IF~~THEN EXIT
END

