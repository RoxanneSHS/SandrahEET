APPEND  CVSANDRJ
END

// Indira

INTERJECT_COPY_TRANS J#INDI 2 HealworkIndi
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ Hold still, little one, all will be good. No, no, do not attempt to rise, I will take care of you. ~
==  J#INDI IF ~ InParty("CVSandr")~ THEN ~ Ah, that feels much better already. You are the most beautiful healer I have ever seen - but I would have taken healing from even a gnoll in my current state, haha.~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ Keep lying down, this one seems to go deeper. We do not want an infection on that wound. (Expertly Sandrah opens Indira's armour and undercloth revealing the young adventurer's soft skin and rosebud nipples. She softly and carefully inspects the area beneath Indira's right breast.)~
==  J#INDI IF ~ InParty("CVSandr")~ THEN ~ (Indira's breathing gets more excited and she closes her eyes, but does not dare to move.)~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ (Sandrah moves her mouth down to Indirah's exposed breast and puts her mouth to the girl's skin.)~
==  J#INDI IF ~ InParty("CVSandr")~ THEN ~ Aaah, what are you doing...~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ (Sandrah comes up with her head quickly and spits some green slimy liquid on the ground nearby.) These kobolds use a lot of different poisons on their weapons, really nasty. ~
=~ (She takes a sip from her field flask to clean her mouth, then holds the opening to the lying girl's mouth.) Drink, you need to drink a lot of water in the next days to clean your body systems. Healer's prescription.~
==  J#INDI IF ~ InParty("CVSandr")~ THEN ~ Thank you, so I guess...~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ (Sandrah has taken a bit of cotton and a cool salve from her pack and starts to massage it onto the area beneath Indira's breast. Her medication appears to be both soothing and as well arousing to her patient.)~
==  J#INDI IF ~ InParty("CVSandr")~ THEN ~ (Indira's eyes are closed and her mouth half-opened. She is actually startled when Sandrah finishes the procedure and starts to dress her again.) I feel sooo much better now.~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ Mind you, that the wound will need regular inspection during the next days. This one is not to be neglected. Half-elf bodies are really delicate and fragile.~ DO~ RealSetGlobalTimer("HealIndiT","GLOBAL",620)~
END

APPEND BSANDR
END

// Indira

CHAIN
IF ~ Global("HealworkIndi","GLOBAL",2) ~ THEN BSANDR  HealworkIndi2
~ You have any problem with your wound, Indi?~
DO ~ SetGlobal("HealworkIndi","GLOBAL",3)RealSetGlobalTimer("HealIndiT","GLOBAL",1620)~
==J#IndiB ~ Not at all! You are a gifted healer, Sandrah. But it was yourself who said, that a body like mine needs to be constantly cared for.~
==BSANDR ~ Then let me not be accused of neglection, dear. Let us move over there to a quiet place. It would break my heart to see anyone in need when I could easily help with my *skills*. ~ DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT

CHAIN
IF ~ Global("HealworkIndi","GLOBAL",4) ~ THEN BSANDR  HealworkIndi3
~ Have I been so wrong in estimating your wound's severity?~
DO ~ SetGlobal("HealworkIndi","GLOBAL",5)RealSetGlobalTimer("HealIndiT","GLOBAL",1200)~
==J#IndiB ~ (Indira has put off her armour and her hand carefully touches the area of her breast where the wound had been.)~
= ~ It is not hurting anymore, Sandrah, but there is a strange itching.~
==BSANDR ~ Let us go to this sideroom, it is my duty to inspect that very carefully. (She smiles brightly.)~
==J#IndiB ~ (The half-elf girl has already opened her richly embroidered undergown.)~
==BSANDR ~ (Sandrah moves closer and her mouth starts to explore the area of Indira's breast again.)~
==J#IndiB ~ Is there still some bit of that poison left, sweetling?~
==BSANDR ~ Hm, impossible, this tastes much too sweet. (She sucks the young girl's buds while her fingers start to caress the half-naked body.)~
==J#IndiB ~ (Indira has lifted Sandrah's shirt at the back and gently caresses the priestess' buttocks and lower spine.)~
==BSANDR ~ Oooh, every inch of your body is worth a careful inspection.~
==J#IndiB ~ I fully trust my healer in this. It would be foolish to resist what obviously does me so much gooood.~  DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT

CHAIN
IF ~ Global("HealworkIndi","GLOBAL",7) ~ THEN BSANDR  HealworkIndi4
~ Indi, remember that we came close to each other through your being hurt and my abilities as a healer?~
DO ~ SetGlobal("HealworkIndi","GLOBAL",8)RealSetGlobalTimer("HealIndiT","GLOBAL",1200)~
==J#IndiB ~Your abilities are amazing, Sandrah, still I have a small suspicion.~
==BSANDR ~ How have I deserved such mistrust?~
==J#IndiB ~ It seems that your healing is never complete - I always feel this little itch after some time that makes me coming back for another treat.~
==BSANDR ~ (Laughs) The treatment is free and I do not have practice hours for my friends. But to overcome your *doubts* and to prevent serious injuries in the future let me give you a little gift. It is not only practical but will also look wonderful around your neck.~ DO~ GiveItemCreate("cmamul03","j#indi",0,0,0) ~
==J#IndiB ~Oh, yes, yes, it's so fashionable! Still - the protection affects only future damages not the past. I promise I will pay my healer in a way I know she likes it from me...~  DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT


