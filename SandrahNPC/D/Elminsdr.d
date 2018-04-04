BEGIN Elminsdr


CHAIN
IF ~ Global("Mothdream1","GLOBAL",2) ~ THEN  Elminsdr MothDream
~(Elminster is standing in front of a wonderful picture of a young woman.)~
== Sanpre2 ~Oh, father! (Embraces the old man) You have now been here almost half this day. Come, you need to eat something. Take this glass of wine, please.~
== Elminsdr ~Indeed, mine daughter, half a day? Where Khalindra dwells exists no time, and I am not prisoner of time when I visit her. ~
== Sanpre2 ~ It makes me sad when I see you this way - but at the same time happy. You still love her as you have always done.~
==  Elminsdr ~And thou art living proof of that love, Sandrah, before HE destroyed all that!~
== Sanpre2 ~ Your wraith against that dead god will never lessen...~
==  Elminsdr ~Dead he is - but harm though he still can do. His spawns and those who follow false beliefs will cause trouble in Faerun long after the Time of Troubles.~
== Sanpre2 ~ I know, father. He killed your beloved wife from beyond his own grave by implanting the spawn in her and he grieves you ever since that day.~
==  Elminsdr ~ Not all is bad, Sandrah, when I look at thee I see it every time. And I see her - thou becometh more like her with every day you grow. Her, whom thou have not really known...~
== Sanpre2 ~ Come now, father, we will eat. Will you tell me of the other one today, the one that caused her end while still being innocent?~
==  Elminsdr ~ Is that how thou see the spawn, are thou so wise not to blame the newborn for its heritage? 'tis thine belief that one sprung from the God of Murder is not guilty himself from the day of birth?~
== Sanpre2 ~ That is what I learned from you and I have no reason to doubt it.~ DO~ EscapeArea()~
==  Elminsdr ~ Good. Whatever comes out of that belief, who knows. (Turns to the painting:) Good night, Khalindra.~ DO ~ SetGlobal("Mothdream1","GLOBAL",3) EscapeArea() ~
EXIT

CHAIN
IF ~ Global("Mothdream2","GLOBAL",2) ~ THEN  Elminsdr MothDream2
~ Sandrah, thou art now almost of the age thine mother had when first I lay mine eyes on her.~
==Sanpre2 ~ I know that it both hurts you and delights you that I remind you so much of her.~
== Elminsdr ~ Thou art a caring soul, just like Khalindra was. - Sigh - but thou wanted to talk about the spawn again.~
== Sanpre2 ~ Yes, my brother or sister, I know nothing of that child.~
==Elminsdr ~ Child, do not think of the child as thine brother or sister ever. It was not of me but of Bhaal - and it was not of thine mother either.~
= ~ The wicked god implanted his seed into her without her knowing. She was a mere vessel, misused for it to grow in her and destroy her when the time for birth had come. It was in her but never of her flesh and blood.~
== Sanpre2 ~ So it was neither your child nor hers and thus is not brother or sister to me either. I pity the poor creature for having no mother - and no sister.~
==  Elminsdr ~ Thou dost well to show pity and mercy, dear Sandrah, the child itself is without blame. It had no say in its own creation and heritage, yet it carries the seed of the black blood further.~
== Sanpre2 ~ Then it is innocent and not bad by heritage alone?~
==  Elminsdr ~ Thou art correct in thine assumption. The child is master of its own fate and its way - good or bad. But many of those who find out about its blood will be prejudiced and will by this feed the black seed to evolve.~ 
== Sanpre2 ~ It is not a child any more, by now it will be just one year younger than me...~ DO ~ EscapeArea()~
==  Elminsdr ~ Oh, Khalindra, thine daughter is ready to go her own way soon. I pray to thee, I have done all to prepare our poor girl for what awaits her. ~  DO ~ SetGlobal("Mothdream2","GLOBAL",3) EscapeArea()~
EXIT



