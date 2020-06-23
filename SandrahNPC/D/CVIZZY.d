BEGIN CVIZZY

CHAIN
IF ~Global("OrcPrison","GLOBAL",30) ~THEN CVIZZY  BereIzzy1
~Heya, how'd ya like my new dress. It's so pinky pink, just got it today.~
DO ~SetGlobal("OrcPrison","GLOBAL",31) ~
== BIMOEN ~Great, pink is just the colour for you.~
== CVIZZY ~You say it! You musta know, you're all pretty pink yourself.~
== BIMOEN ~Pink is the bestest of all colours, I say it all the time.~
== CVIZZY ~I like you lady, hey, my name's Izzy. Mmh, well, the sisters here say I should't say that 'cos really it's Isobel, like my poor mama. But mama died and Izzy now is here.~
== BIMOEN ~You like it here? Well, my name is...~
== CVIZZY ~Heya, now listen to this. You know who the greatest great of all pink women is on this Sword Coast? Nay, listen, you slowpokes, never heard of Imoen the Magnificent, what?~
== BSANDR ~Of course we know her, every bard sings of the famous heroine in every inn.~
== CVIZZY ~She's the mostest fearless of all heroes, killing all the nasty orc like ones that killed mama, and kills bandits and kills dragons...~
== BSANDR ~Dragons as well?~
== CVIZZY ~You say it, dozens of 'em. 'tis nothing Imoen the Fearless fears ever. She and her sidekicks like the famous Sandrah and the clever <CHARNAME>.~
END
++ ~The clever <CHARNAME>, <PRO_HESHE> is a hero as well?~+ BereIzzy2

CHAIN
IF~~THEN CVIZZY BereIzzy2
~Sort of, yes. But no one compares to Imoen herself. Tell ya my secret, one day soon I'm gonna be like her.~
== BSANDR ~And you will fight dragons?~
== CVIZZY ~Mmh, maybe not at first, maybe just start with Wyverns at first, but don't think I'm afraid, just first need to get myself a hero sword. When you think of Imoen you never have fear ever, jus' like her. Hey, you look like the travellin' kind, keep you eyes open - maybe you meet her one day.~DO ~MoveToPointNoInterrupt([195.440]) DestroySelf()~EXIT

