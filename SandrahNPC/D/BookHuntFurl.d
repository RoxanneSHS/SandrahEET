APPEND ACQ40001

IF ~Global("ACQ4","GLOBAL",2) ~THEN BEGIN 5
SAY ~Hello, you're registered with me, good to see ya, bye.~
IF ~~THEN EXIT
END

IF WEIGHT #-9 ~Global("SanSuBH","GLOBAL",16)~THEN BEGIN BHuntMontHint
SAY ~Your faces are registered with me. Maybe I may have something for you today?~
IF~~THEN EXTERN BSANDR BHFurlon2
END
END

CHAIN
IF~~THEN BSANDR BHFurlon2
~You mentioned pirate stories once, and maybe maps...of islands...~
DO ~SetGlobal("SanSuBH","GLOBAL",17)~
==ACQ40001 ~You are hunting pirate treasures. M'lady, 'scuse me, but you don't look that type.~
== BSANDR ~ As you yourself once observed, fine cloth and good manners may hide the darkest soul beneath, all that has been seen in the Realms one time or another.~
==ACQ40001 ~Ya mem'ry's as sharp as mine. Well done. A pirate it is. A name, a year, a face?~
== BSANDR ~The island description is a bit vague, but maybe a name...How about Monteelah?~
==ACQ40001 ~Puuh (Looks nervously around). Lower your voice, m'lady, maybe he's not as dead as he tried to make us think.~
== BSANDR ~I have a good prescription against fear. ~DO ~TakePartyGold(500)~
==ACQ40001 ~Ya must be fearless, lady, few dare to speak that name at all.~
== BSANDR ~I see, we are talking about the pirate Monteelah here? ~
==ACQ40001 ~Sure, but we ain't talkin' much longer if ya keep repeating that dreadful name. Killed all his crew they say. Not one returned from that island where he's s'pposed to have hid his treasure.~
== BSANDR ~None but him, you mean.~
==ACQ40001 ~Ha, so you're clever, lady, few guessed that and fewer know. And none lives to tell.~
== BSANDR ~Tell about his hiding up at the Beard before his death?~
==ACQ40001 ~If dead he is. Ask dem up in Ulgoth's Beard if one saw the corpse. House burned down and he gone, but no corpse. Who's sure he's really gone this time?~
== BSANDR ~And the island? Who knows about that?~
==ACQ40001 ~Jus' him, with all other's probably dead by his hand.~
== BSANDR ~Let us assume I knew what it looks like but not exactly where it is.~
==ACQ40001 ~Dem guys at the Charter House in the Gate would know, if ever somebody charted it. But would they tell a lady like you?~
== BSANDR ~Would they tell a captain?~
==ACQ40001 ~If they knew him - you plan to disguise as one, he? Forget it...but...go to the Flushin' Mermaid, you may find one for hire, hahaha, but never let 'im run ya ship.~
== BSANDR ~A drunkard? Maybe he serves to get the information from the Charter House and then we will see.~
==ACQ40001 ~Always a pleasure dealin' with you. You understand your way 'round. Gotta go now, good luck. ~DO ~EscapeArea()~
END
++ ~That was a quick disappearance. He must be really scared. Or he has another customer for the information he just got?~DO~RealSetGlobalTimer("BloomwT","GLOBAL",300)~EXIT

// Furlon prior BG Bridge
INTERJECT ACQ40001 0 FurlIntr
== CVSandrJ IF ~InParty("CVSandr")~THEN ~We never say never right from the start. Give us a hint and we may consider how to deal with you.~
== ACQ40001 IF ~InParty("CVSandr")~THEN ~I'll never say nay or yes right away. Your fine cloth and good manners may hide the darkest soul beneath, all that has been seen in the Realms one time or another.~
== CVSandrJ IF ~InParty("CVSandr")~THEN ~Maybe this here helps you a bit in your judgement, little one. ~DO ~TakePartyGold(50)~
== ACQ40001 IF ~InParty("CVSandr")~THEN ~I cannot see an imminent need of you I could satisfy. But your faces are registered with me and I may have something for you sometimes.~
== CVSandrJ IF ~InParty("CVSandr")~THEN ~You are a trader of information?~
== ACQ40001 IF ~InParty("CVSandr")~THEN ~Thank you, ma'am, I am already searching for an adequate name for my business since who knows when. Old pirate lore, lost treasures, blackmailed deeds. You need to know about it, I can get the news for you...~
== CVSandrJ IF ~InParty("CVSandr")~THEN ~Since we are now registered with you, there may come a chance for some common business interests one of these days.~
== ACQ40001 IF ~InParty("CVSandr")~THEN ~Understanding customers like you are always welcome, ma'am. See you.~
END ACQ40001 2

INTERJECT ACQ40001 1 FurlIntre
== CVSandrJ IF ~InParty("CVSandr")~THEN ~We never say never right from the start. Give us a hint and we may consider how to deal with you.~
== ACQ40001 IF ~InParty("CVSandr")~THEN ~I'll never say nay or yes right away. Your fine cloth and good manners may hide the darkest soul beneath, all that has been seen in the Realms one time or another.~
== CVSandrJ IF ~InParty("CVSandr")~THEN ~Maybe this here helps you a bit in your judgement, little one. ~DO ~TakePartyGold(50)~
== ACQ40001 IF ~InParty("CVSandr")~THEN ~I cannot see an imminent need of you I could satisfy. But your faces are registered with me and I may have something for you sometimes.~
== CVSandrJ IF ~InParty("CVSandr")~THEN ~You are a trader of information?~
== ACQ40001 IF ~InParty("CVSandr")~THEN ~Thank you, ma'am, I am already searching for an adequate name for my business since who knows when. Old pirate lore, lost treasures, blackmailed deeds. You need to know about it, I can get the news for you...~
== CVSandrJ IF ~InParty("CVSandr")~THEN ~Since we are now registered with you, there may come a chance for some common business interests one of these days.~
== ACQ40001 IF ~InParty("CVSandr")~THEN ~Understanding customers like you are always welcome, ma'am. See you.~
END ACQ40001 2

