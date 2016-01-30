APPEND BKAGAI
IF WEIGHT #-9 ~ Global("SanHealkag","GLOBAL",4) ~THEN BEGIN  SanHealkag
SAY ~ Yeah, ya pretty good at throwing dem spells around, beauty. If ya'd decided to put on a bit moe flesh I may even get to like ya.~
IF~~ THEN EXTERN BSANDR kagaiHealed
END
END

//Heal Kagain

CHAIN
IF~~ THEN BSANDR kagaiHealed
~ I keep up your health so you can do your fighting job for <CHARNAME>, that is all, dwarf. No need to thank me and no need to attempt any slick pleasantry on me.~
DO~ SetGlobal("SanHealkag","GLOBAL",5) ~
== BKAGAI ~ Uuh, sounds like I hit some poisonous trap here, with tha lil' girl. Can it be there is some way of disliking me from your side?~
== BSANDR~ I am astonished that someone as selfish and insensitive as you is able to recognise that much.~
== BKAGAI ~ Tell ya what, beauty queen. Ya need a REAL man ev're now and then to bring ya to your senses. It's that typical frustrated girl talking, when she doesn't get what she needs.~
== BSANDR~ Do not worry, dwarf, I get enough of what I need.~
== BKAGAI ~ Hoho, me I'm not talking 'bout your playful little loverboys, beauty, I'm talkin' of the REAL man that whups your cute little ass like ya deserve it to show ya the place 'n' the rules.~
== BSANDR~ You mean in the way that my hammer will show you your place in a moment if you do not shut up immediately.~
== BKAGAI ~ See how right I am! That's how the desperate housewives of Beregost were acting as well, b'fore master Kagain started to pleasure them.~
== BSANDR~ Do not tell me more, please. I need some of my best medicines now before my stomach revolts, uurgh.~
EXIT

//Kagain Tavern

CHAIN
IF~Global("SankagTavern","LOCALS",2)~THEN BSANDR SanKagtav
~(Your party has diverted all over the common room each following their leasure.)~
DO~SetGlobal("SankagTavern","LOCALS",3)~
== BKAGAI ~ (You observe Kagain nearing Sandrah's table carrying two mugs of creamy cold beer.)~
==BSANDR~ There are two things where one can rely perfectly on a dwarf's expertise.~
== BKAGAI ~ And ya tell me what they might be, girly?~
==BSANDR~One of them is the choice of a fine brew.~
== BKAGAI ~The other's da choice of comp'ny to swallow it down with, nay?~
==BSANDR~I thought more of the expertise for a good axe.~
==Wench1~That's two gold pieces for them two mugs, please.~
== BKAGAI ~(Kagain seems to be fully concentrated on polishing his already shining axe pole and pretends to oversee the serving girl.)~
==BSANDR~Take these five coins, girl, and bring us two more, please, the rest is for you.~
==Wench1~Thank you ma'am, your refill is on the way.~
==BSANDR~Ah, Kagain, I nearly forgot a third talent.~
== BKAGAI ~Yes? (With the bill paid his axe has become uninteresting again.)~
==BSANDR~The fine nose for riches and gold that is unfailable in a dwarf.~
== BKAGAI ~Hohoho, I like your sense of humour as much as your purse - almost.~EXIT

//Sandrah Kagain Banters

CHAIN
IF ~Global("SanKagFight","LOCALS",2)~ THEN BSANDR sanKagFig
~ (Kagain musters Sandrah from head to toe after the battle has seized.)~
DO~ SetGlobal("SanKagFight","LOCALS",3) RealSetGlobalTimer("SanKagFightInt","LOCALS",3600)~
== BKAGAI ~ Girly, you wield a mighty hammer for one so tall 'n' skinny.~
== BSANDR~ I know how to defend myself, dwarf, do not doubt that.~
== BKAGAI ~ If ya weren't that small 'n' delicate I could really get my liking for a gal such as you. Guess with the passion that's in ya, you could get off quite some heat outside de battlefield as well.~
== BSANDR~ What do you mean by that?~
== BKAGAI ~ Hey, hey, you look like one who gets her fun from a man who could stand up to ya, ya let no chance pass untouched.~
== BSANDR~ I see, I am just too glad then that I am not your type at all. I have no intention to put on some weight just to please you. This fantastic armour was manufactured to fit me precisely.~
== BKAGAI ~ Got ya point, girly! Maybe ol' Kagain can adjust his standards some, given your other qualities... might well give that some thought.~
== BSANDR~ Do not overstretch your filthy dwarven mind too much for that as I have no intention to change MY standards.~
== BKAGAI ~ Huuh, since when has the gal to say somethin' 'bout that if a mighty fighter requires her service...hehehe.~
== BSANDR~ Oh, Mystra, give my hammer the strength to persist such *companions*.~
EXIT

CHAIN
IF ~Global("SanKagFight","LOCALS",4)~ THEN BSANDR sanKagFi2
~ (Sandrah has taken off her armour and leaned it against the tree trunk beside where she has stretched out in the grass.)~
DO~ SetGlobal("SanKagFight","LOCALS",5) RealSetGlobalTimer("SanKagFightInt","LOCALS",3600)~
== BKAGAI ~ (The dwarf has approached from the other side of the tree and starts to inspect the armour intensely.)~
== BSANDR~ (With closed eyes) You know about my magic skills by now, dwarf. Are you not afraid there might be some protection on what you try to touch and what is not yours?~
== BKAGAI ~ Huuh, wasn't thinking of such, girly. Jus' came to admire those true feminine features this armour resembles, really made to show what the owner got, hahaha.~
== BSANDR~ I thought we had an agreement that I do not fit in your pattern, Kagain. Dwarfen standards in women are just different. See, I do not even have a beard.~
== BKAGAI ~ Didn't ya listen last time, girly. I told ya I would evaluate those obvious flaws against the rest of whatcha offer...~
== BSANDR~ Stop it immediately. There is no *offer* for one like you at all.~
== BKAGAI ~ Oooops! ~ DO ~ ApplyDamage(Myself,16,CRUSHING) ApplySpellRES("CVSLEEP","Kagain") ~
EXIT

CHAIN
IF ~Global("SanKagFight","LOCALS",6)~ THEN BSANDR sanKagFi3
~ Are you staring at my amulet or at my breasts, dwarf?~
DO~ SetGlobal("SanKagFight","LOCALS",7) RealSetGlobalTimer("SanKagFightInt","LOCALS",3600)~
== BKAGAI ~ Aye, both woulda be worth it twice, hohoho, dontcha agree. Badly those two nice twins are a bit hiding demselves so I got only full look onto dat other valuable.~
== BSANDR~ You know you should stay away from any of my belongings, have you not learned that?~
== BKAGAI ~ Hey, hey, one might still look at what's out in the open, girly. I wonder what that piece would be actually worth...~
== BSANDR~ In coin you mean? Absolutely nothing.~
== BKAGAI ~ What, I's kant believe that!~
== BSANDR~ It is of no value to anyone but myself. It is part of my mother's heritage and blessed by Mystra. But it does nothing for anyone else but to attract the goddess wraith on that person.~
== BKAGAI ~ Too bad. Anyway it still looks splendid and the way it hangs down between those other two goodies - it may well be at the best place it could be already.~
== BSANDR~ On that we are in full agreement then, Kagain.~EXIT

CHAIN
IF~Global("SanKagAbe","BG0126",1)~ THEN BSANDR sanKagAbela
~Is that how you would like to have me at your disposal, Kagain?~
DO~SetGlobal("SanKagAbe","BG0126",1)~
== BKAGAI ~Nay, girly, I'd like ta have you bit more active 'n' strugglin' an' such. I'm an action guy, ya know.~
== BSANDR~ My hammer might give you more action than you could be willing or able to take.~
== BKAGAI ~Oh, for fairness no weapons on either side, hahaha, just what we wear - as long as we still wear somethin'...~
== BSANDR~ (Sandrah lifts her booted foot.) At Waterdeep those are called *Stiletto Heels*, my friend. You really want to find out why?~
== BKAGAI ~Little devil, I shoulda known you always have one more up your sleeve. Makes you even more desireable.~
== BSANDR~ And more unreachable for you.~EXIT
