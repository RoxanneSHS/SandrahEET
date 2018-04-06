CHAIN
IF WEIGHT #-3~Global("SanMurhurt","LOCALS",1) ~THEN BA#Murn Compl
~Fleshling priestess, why do you not cast your healing on me like you do for others?~
DO~SetGlobal("SanMurhurt","LOCALS",2) ~
==Bsandr~My experience with slime so far tells me that its molecules will always rearrange themselves and thereby repair without my help.~
==BA#Murn~The divine favour of Ghaunadaur, The Elder Eye, has given me this fleshling shell to accompany <CHARNAME>. Sadly it requires the aid of a healer like your weak kin needs from your weak goddess.~
==Bsandr~(Sigh) I will not hold back my abilities from any creature in need, slime or no slime.~DO~ReallyForceSpell("A#Murn",CLERIC_HEAL)~EXIT

CHAIN
IF WEIGHT #-1~Global("SanJenFear","LOCALS",1) ~THEN BA#Murn ComplJ
~Ggrrrrrahaha! You never emit the odour in battle that isss so pleasing to my senses, strange creature, that odour of pure terror.~
DO~SetGlobal("SanJenFear","LOCALS",2) ~
==BJenli~Githyanki not fear battle, slimeling, we exist for battle and for being free.~
==BA#Murn~Free? Blessed Ghaunadaur, That Which Lurks, has other servants too - some of the creatures of the Underdark call him Master, and as time passes more and more fleshlings of the surface are discovering His ways.~
==BJenli~(Hiss) Only hatchlings of my kin are in Underdark and we not surface beings. NO Githyanki is slave to deity, we never puppets of a higher power since broke free from Illithids!!~EXIT