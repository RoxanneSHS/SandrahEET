CHAIN
IF WEIGHT #-88~Global("SanFadeBa","LOCALS",2) ~ THEN BE3Fade San1
~ You seem to travel with <CHARNAME> for a long time already, Sandrah?~
DO~SetGlobal("SanFadeBa","LOCALS",3)~
==BSandr~Ever since he was forced to leave Candlekeep. We met over Gorion's dead body.~
==BE3Fade~A strange occasion to meet, but why were you there? You had nothing to do with Gorion's death I guess?~
==BSandr~I came too late to prevent anything. I had just set out from Waterdeep to investigate of my own family's past and Bhaal's involvement in it which led me to <CHARNAME> and Imoen...~
=~(Sandrah tells some of your early common history to Fade.)~
==BE3Fade~I see...you seem to have quite some influence on him, I guess...you have dealt together with comrads of all races and alignments...~
==BSandr~Are you asking because of your own exotic heritage? You are Fey'ri, a Sun elves with a demonic ancestor, right?~
==BE3Fade~You see and know a lot, Sandrah, yes, I come from Hellgate in the High Forest and my grandfather is a Cambion.~
==BSandr~Be assured that both <CHARNAME> and me always judge people by their deeds, ambitions and personality - not by their heritage.~
==BE3Fade~Thank you, you have assured what I needed to hear.~EXIT

CHAIN
IF WEIGHT #-88~Global("SanFadeBa","LOCALS",5) ~ THEN BE3Fade San2
~ Sandrah, your upbringing must have be quite different from mine, I assume.~
DO~SetGlobal("SanFadeBa","LOCALS",6)~
==BSandr~I would guess, growing up in Hellgate must have been a fight for survival against your own kin and family at all times.~
==BE3Fade~ Exactly, your lore is quite deep I must say. Your youth certainly was much happier.~
==BSandr~...one could say that. I love my father dearly and he is a large part of what and how I am today.~
==BE3Fade~Hm, I observed that little hesitation, my friend, and the fact you did not mention your mother ever.~
==BSandr~I have not known her conciously as she died before my first birthday. However she was a part of our family life through the constant rememberance of my father. He made me to see and feel her as if she were alive.~
==BE3Fade~How did she die?~
==BSandr~She was raped by Bhaal and died giving birth to the spawn.~
==BE3Fade~I see - that is what brought you and <CHARNAME> together...~EXIT

CHAIN
IF WEIGHT #-88~Global("SanFadeBa","LOCALS",8) ~ THEN BE3Fade San3
~ You immediately identified me as Fey'ri when I joined this group, Sandrah - very few have met one of my kind before, so I'm faced with bigotry all the time which based on hearsay about tieflings and nothing more. ~
DO~SetGlobal("SanFadeBa","LOCALS",9)~
==BSandr~ I never judge by race, Fade, and this is especially true for tieflings. I have never met two that were alike given the variety of possible demonic ancestors as well as for the non-demonic partner. ~
==BE3Fade~You are right, our parents can manifest themselves in such variety of ways, you are not likely to find two Fey'ri with exactly similar appearances and abilities. ~
==BSandr~ Neither have I ever met two tieflings with the same character. Their demonic anchestors are not apparent in some of them just like Bhaal does not make <CHARNAME> a mindless killer.~
==BE3Fade~Could you imagine...oh, no...forget it.~
==BSandr~Whatever you wanted to ask...<CHARNAME>'s reactions to you will be guided by what you say and do not by who your parents were.~
==BE3Fade~You told me before already but It's good to hear it again. The same is true for you, I know that - I hope you can agree to my conduct ( displays a shy smile.)~EXIT

CHAIN
IF WEIGHT #-88~Global("SanFadeBa","LOCALS",11) ~ THEN BE3Fade San4
~ Sandrah, you seem to have an ultimately strong disgust for slavery? ~
DO~SetGlobal("SanFadeBa","LOCALS",12)~
==BSandr~ Disgust? To call it hatred would be more appropriate. I would imagine it is the same for you, you have felt yourself what it means to be mistreated in this way.~
==BE3Fade~Like usually you are right. For me it's clear, but for a rich girl from society...it's mostly the rich and nobles that get their pleasures and profit from slavery.~
==BSandr~ Yes, having them fight for their so-called *amusement*, raping them in their harems, building their wealth on their unpaid labour.~
==BE3Fade~I hope I have not injured you - surely you are far from being one of them in that respect...it's just that I wonder how you come to such a strong opinion that is not the usual one where you come from.~
==BSandr~I was not only raised and educated in a way to respect all my fellow-beings, I also have encountered the dark side of our society many times. My father did not spare me the experience to see with my own eyes the fate of those that were not on the lucky side of life like I was.~
==BE3Fade~Well, yes, it's hard to imagine you sipping sweet wine in your satin cushions and giggling over small talk with some empty headed beauties from Waterdeep (smiles).~
==BSandr~Fade, I can very much enjoy the pleasures of fine food, good wine, and beautiful dresses , yes, and satin cushions as well - but I work and labour for them and do not gain them by exploit or deceit or misuse of others.~
==BE3Fade~And you fight those who do with even more vigour.~EXIT

CHAIN
IF WEIGHT #-88~Global("SanfadeUD","LOCALS",1)  ~ THEN BE3Fade SanUD
~In a number of ways the Underdark reminds me of Hellgate.~
DO~SetGlobal("SanfadeUD","LOCALS",2) ~
==BSandr~There is probably a great difference today for you. I cannot imagine you were in the company of friends that love and care for you like you are today.~
==BE3Fade~ You can't imagine how much your kind words mean to me, Sandrah. Life has really changed all to the best since I travel with <CHARNAME> and you.~
=~ (She embraces the young cleric enthusiastically and kisses her on the cheek.)~EXIT

