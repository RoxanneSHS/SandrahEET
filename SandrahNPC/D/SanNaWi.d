BEGIN SanNaWi

CHAIN
IF ~ Global("SanImoNashRaid","GLOBAL",1)~ THEN SanNaWi SanNaWi1
~ Have you heard about the raid on Nashkel? The bandit forces strike back.~
DO ~ SetGlobal("SanImoNashRaid","GLOBAL",2)~
== BSANDR~ A raid on the town. What has happened? ~
==BIMOEN~ Oh gosh, let's go there quickest, let's check if we can help. Say me, good man, has anything happened to the shopkeeper there in Nashkel?~
==SanNaWi ~ Dunno, m'lady, they came at night. Looks like they targeted the store especially. Seemed to be no casualties elsewhere in town.~
==BIMOEN~ HENNING! Whatcha stand there open mouthed, <CHARNAME>. We gotta move to Nashkel quickest, you dumb nut.~
END
++ ~ Calm down, Imoen, of course we need to look into this quickly. Sandrah has warned us already that our activities with the mines might stir up something.~ + SanNaWi2

CHAIN
IF~~ THEN SanNaWi SanNaWi2
~ Dig that you're the folk that stirred those rascals up, hey? Better take care of what you did to dem fine citizens of Nashkel. Got some friends there.~ DO~ EscapeArea()~
== BSANDR~ Imoen is right, we need to look for Henning and also we are obliged to care for the rest of the town as well.~
END
++ ~ We will check on Nashkel right away.~DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~ EXIT
++ ~ The guard is heavy in Nashkel. The raid cannot have done much harm. But we are obliged to make sure anyway. ~DO~ IncrementGlobal("Sanpoints","GLOBAL",3)~ EXIT
++ ~ We will check Henning if we pass Nashkel eventually. Imoen, we cannot run just on this weird man's vague report alone.~ EXIT