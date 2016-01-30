CHAIN
IF~CombatCounter(0)!See([ENEMY]) InMyArea("CVSandr") InParty("CVSandr") !StateCheck("CVSandr",CD_STATE_NOTVALID)!StateCheck("ibaur",CD_STATE_NOTVALID) !AreaCheck("ar4500")Global("AuroSanN","LOCALS",0)~THEN BIBAUR25 Sanboot
~Always thought I admire your style, Sandrah. Too few adventurers seem to care for that.~
DO~SetGlobal("AuroSanN","LOCALS",1) ~
==BSandr25~Can you blame them? Most of them spend their time fighting for survival rather than checking their outfit in a mirror.~
==BIBAUR25~Honestly, a little style wouldn't kill people. Especially in footwear. It takes so little effort, you're the living proof. The way you balance yourself in battle with those heels is sooo effective.~
==BSandr25~My background is slightly different to that of your avarage adventurer. Few people have the chance to grow up in a social environment that allows them to care for style or fashion. Some are happy to have just anything to wear.~
==BIBAUR25~Oh, I simply love those boots of yours, I'd be tempted to steal them if they were my size, haha.~EXIT

CHAIN
IF~CombatCounter(0)!See([ENEMY]) InMyArea("CVSandr") InParty("CVSandr") !StateCheck("CVSandr",CD_STATE_NOTVALID)!StateCheck("ibaur",CD_STATE_NOTVALID) AreaCheck("ar4500")Global("AuroSanN","LOCALS",1)~THEN BIBAUR25 Sanboot
~Is that original Calimshan mascara, dear!!?? ~
DO~SetGlobal("AuroSanN","LOCALS",2) ~
==BSandr25~No, it is simple quality from Waterdeep.~
==BIBAUR25~Not if you put it on, sweety, it's stunning.~
==BSandr25~I try to keep some minimum standard, even around here.~
==BIBAUR25~That's the spirit we need. This gloom is disheartening, I haven't heard a nice song or heartfelt laughter all day.~
==BSandr25~I am afraid with my non-existant talent for singing I am not of great help here.~EXIT