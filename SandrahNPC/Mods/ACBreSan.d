// Breagar

CHAIN
IF ~ Global("SanBreBa","GLOBAL",1)~ THEN BSANDR SanBreAtt
~ What is wrong, did you want to hit me?~
DO ~ SetGlobal("SanBreBa","GLOBAL",2)~
== ACBreB ~ GET OFF ME, BUZZURK!!~
== BSANDR ~ I was just healing...~
== ACBreB ~ Leave me alone with your terrible spells and your forsaken magic, witch!~
== BSANDR ~ But I was...(She stops when she sees Breagar's face, violet with anger and hate.)~
= ~ (Sandrah silently turns and walks away.)~
EXIT

CHAIN
IF ~~THEN  BSANDR SanBreHea1
~ Oh, yes, my mistake. Just my healer's instinct made me do that again.~
DO ~ SetGlobal("SanHealBre","GLOBAL",6)~
== ACBreB ~ Mmpf. ~
== BSANDR ~ (Sandrah angrily stomps away from Breagar.)~
== ACBreB ~ Buzzurk, she wouldn't even let me thank her, arrogant priestess.~
END
++ ~ Did you want to apologize to her for your rudeness, Breagar?~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
++ ~ She is our healer. The magic she uses to heal you is the same that is in those potions you consume anytime you need them.~ EXIT
++ ~ Seems like you hurt her feelings quite a bit. She is trying to do you good, not to assault you, mind that.~  DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~ EXIT

CHAIN
IF ~ Global("SanBreBa","GLOBAL",4)~ THEN BSANDR SanBreBal
~ You are hurt, dwarf? Take this.~
DO ~ GiveItemCreate("Misc97","ACBre",12,0,0) SetGlobal("SanBreBa","GLOBAL",5)~
== ACBreB ~ Buzzurk! What do you mean by that? I am not a drunkard.~
== BSANDR ~ You want none of my healing. You only have curses and insults for me. Still you are a member of <CHARNAME>'s group and as such I feel responsibility for your wellbeing. ~
== ACBreB ~ Sandrah, I already wanted...~
== BSANDR ~ Baah.~
END
++ ~ (You decide you will not be bothered by those two stubborn party members. As of now they have both been valuable and contributed dutyfully to the common tasks. Their private quarrel is just that - private.)~ DO ~ ApplySpellRES("CVChaRed",Player1)~ EXIT
++ ~ Sandrah, please, do not stomp away this time again. You have not even given Breagar a chance to talk to you decently.~ +  SanBreBal2
++ ~ Breagar, I think it is about time to reconsider your position on Sandrah. You rebuke her every time she attempts to do you any good.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~+ SanBreBal3

CHAIN
IF ~~ THEN BSANDR SanBreBal2
~ The stubborn bigot views of the dwarves are well known, and this one has not proven to be an exception. I will do as you command me to do. For the benefit of the group. Nothing more.~
== ACBreB ~ Sandrah, I already wanted...It is not easy, you are not only a healer but also a priestess of this goddess that stands for all vile magic on Toril.~
== BSANDR ~ How many vile deeds have you seen me perform already in the name of that cursed goddess?~
== ACBreB ~ Honestly I observed only the opposite until now.~
== BSANDR ~ Interesting. But you still raise yourself to judge my goddess as the root of all evil that is associated with magic from your point of view.~
== ACBreB ~ You have to admit that magic is often misused in her name. You yourself despise the red wizzards whenever we meet one.~
== BSANDR ~ Yes, I do. Think about it. Keep observing what I really do before you sentence me or my goddess based on your prejudices.~ 
== ACBreB ~ By Clangeddin's Axe, you are a hard nut.~
EXIT

CHAIN
IF ~~ THEN BSANDR SanBreBal3
~ (Sandrah pretends to observe the landscape with great interest.)~
== ACBreB ~ Sandrah, I already wanted...It is not easy, you are not only a healer but also a priestess of this goddess that stands for all vile magic on Toril.~
== BSANDR ~ How many vile deeds have you seen me perform already in the name of that cursed goddess.~
== ACBreB ~ Honestly I observed only the opposite until now.~
== BSANDR ~ Interesting. But you still raise yourself to judge my goddess as the root of all evil that is associated with magic from your point of view.~
== ACBreB ~ You have to admit that magic is often misused in her name. You yourself despise the red wizzards whenever we meet one.~
== BSANDR ~ Yes, I do. Think about it. Keep observing what I really do before you sentence me or my goddess based on your prejudices.~
== ACBreB ~ By Clangeddin's Axe, you are a hard nut.~
EXIT

CHAIN
IF ~ Global("SanBreBa","GLOBAL",6)~ THEN BSANDR SanBreP
~ (Sandrah reads her tome pretending not to have noticed that Breagar has sat silently down next to her.)~
DO ~ SetGlobal("SanBreBa","GLOBAL",7)~
== ACBreB ~ ...~
== BSANDR ~ ...~
== ACBreB ~ By Clangeddin's Axe, Sandrah, we must talk.~
== BSANDR ~ (Closes her book, but says nothing.)~
== ACBreB ~ Every dwarf is proud of the profession he has learned and is trying all his life to improve his skills and become better in it.~
== BSANDR ~ Like you do as a smith?~
== ACBreB ~ Hmm. I was not a always a smith, from my family heritage I started as a baker in the true tradition of the Bardomar clan. Why I became a smith is adifferent story for another occasion.~
== BSANDR ~ Love.~
== ACBreB ~ Buzzurk! You and your...how can you know?~
== BSANDR ~ This, Breagar is part of my profession. A healer has to know more about the people than just to examine the visible wounds.~
== ACBreB ~ Wielding magic is not a profession!~
== BSANDR ~ I agree.~
== ACBreB ~ What?~
== BSANDR ~ I am not a magician, Breagar. I am a healer for both the body and the soul. The use of Mystra's arts is nothing more for me than a tool. You use your hammer to form the iron while I use my spells to find the illness and to fight the evil.~
== ACBreB ~ Still there is no product of what you do, no piece of honest work you can show at the end of a labour day, like a bread or a sword.~
== BSANDR ~ If a smith repairs a broken sword to be useable again, has he not done a worthy task? If a healer mends a broken limb and sees her patient walk off again, can she not be satisfied with a task well done. If there is a worried man, who has lost his reason to live and his faith in all that is good, and a healer and priest makes him see a way to enjoy the coming day once again - is that not a valid profession in your eyes?~ 
== ACBreB ~ Hmm...It is good that we have talked, Sandrah. Let me think about this for a while now.~ DO~ RestParty()~
EXIT

CHAIN
IF ~ Global("SanBreAbb","LOCALS",1) ~THEN BSANDR SanBreDwF
~ You dwarfs are tough fighters, even when risking your life for the false purpose.~
DO ~ SetGlobal("SanBreAbb","LOCALS",2) ~
== ACBreB ~ If a dwarf takes up an occupation and a responsibility he will do it wholeheartedly - even those clanless fools we meet here.~
== BSANDR ~ I was wondering why there are so many of them here, following these strange promises of an evil god.~
== ACBreB ~ Dwarfen clan rules are strict, and you will always find those not willing to comply. That scum ends up clanless on the surface where they can easily be corrupted by all types of influences, drinking, stealing, murdering...~
== BSANDR ~ But does not the great number of those deviants astonish you, Breagar? If dwarfen society is so ideal, why are so many expelled?~
== ACBreB ~ Clan life is strict and no place for the weak - be it in body or in mind.~
== BSANDR ~ I see...~
== ACBreB ~ You see nothing, arrogant priestess, you just critisize what you cannot understand.~
== BSANDR ~ I was not trying to critisize, I just tried to learn.~
== ACBreB ~ Mpf.~
EXIT

CHAIN
IF~Global("ACMINEC2","GLOBAL",2)~THEN BSANDR SanBreSlavmin
~At last we have found something in common, Breagar, even if it is only a common hatred against slavery and those who profit from it.~
DO~SetGlobal("ACMINEC2","GLOBAL",3)~
== ACBreB ~ Mpf, true enough - we may have found some more things if you were not so utterly stubborn, girl.~
== BSANDR ~ A blockheaded dwarf calls me stubborn...~
== ACBreB ~Yes, and rightfully so. I may have misjudged you in the beginning, Sandrah, but I have long since changed my mind about who you are - only you never let me explain it, stubborn girl.~
=~ Whatever - don't let your hammer rest until we have cleaned this place!~
== BSANDR ~ Same for your axe, Breagar.~EXIT

CHAIN
IF ~ Global("SanBreBa","GLOBAL",9)~ THEN BSANDR SanBreHa
~ Your arm does not cause you any trouble, Breagar, or am I mistaken?~
DO ~ SetGlobal("SanBreBa","GLOBAL",10) RealSetGlobalTimer("SanBreHaBat","LOCALS",3060)~
== ACBreB ~ Aah, it's a fine gift from a good goddess as far as the medical aspect goes...~
== BSANDR ~Is it the indication of things coming that troubles you - the words of that messenger?~
== ACBreB ~Mmmh, yeah, well expressed, Sandrah. Say - you as a priestess and with your connection to the celestials - I mean...have you some deeper insights in these things you can share?~
== BSANDR ~It looks to me like we are in a company which is of some interest for a lot of forces on this plane - including the gods. Take Imoen and <CHARNAME>, yourself - maybe even me.~
== ACBreB ~Hrpf, what are we to do about it, counsellor?~
== BSANDR ~My friend, it is my strong belief that it is only ourselves that are responsible for the life we live and the paths we take.~
== ACBreB ~Really? What is that talk of a somehow vague dark future waiting for us then?~
== BSANDR ~We are following <CHARNAME> who is involved in the prophesies about the Bhaalspawns somehow, so much is true. Things will not always be smooth because of this. Still our fate is not sealed and the choices are always our own.~
== ACBreB ~You deny that it is fate that brought us together and the hands of various gods?~
== BSANDR ~Breagar, remember which choices have brought you here today - instead of being a  baker in the Stormhorn caves happily married to a fat bearded dwarf wife. Who decided to become a smith? Who decided to do everything for the love of a very special woman? Who took the challenges and the risk?~
== ACBreB ~Hmmrpf...Which god or goddess lead Audhild into our bakery and made me see who she is, he?~
== BSANDR ~ Does it require gods to let us discover our love where we least expect it, or is fate needed for that. It can be also percepted as just a natural development of things in which we made our own decisions - right or wrong.~
== ACBreB ~It is always a good choice to share ones thoughts with a friend, Sandrah, even if her answers are as murky as the questions, hehe.~
== BSANDR ~ None of us is alone in that...and thank you for calling me a friend.~
== ACBreB ~ Mmpf.~EXIT

CHAIN
IF~Global("ThankBreg","dsc020",1)~ THEN CVSandrJ BregTunnels
~Breagar, your knowledge of these dwarven tunnels will be very helpful for us - still I would counsel <CHARNAME> to explore this area slowly and carefully bit by bit. We may learn quite a bit down here.~
DO~SetGlobal("ThankBreg","dsc020",2)~
== ACBreB ~ Mmpf. You may have your learned scholar reasons for your advice - my offer is a more practical one.~
==CVSandrJ~The two hopefully are not contradicting each other. My advice was not to gain a scholar's knowledge down here but to really get some more insight into what is normally hidden on the surface of the Sword Coast but still may have a large influence on our own tasks - yours, mine and <CHARNAME>'s.~
== ACBreB ~I see, you are open and honest, Sandrah and not giving your counsel for selfish reason...and I did the same. So I agree we should fully exploit this labyrinth and I will always be ready to get us out of here as quickly as possible should we - I mean our silly <PRO_RACE> leader - see the necessity.~EXIT

CHAIN
IF~Global("SanCasBre","arac03",1) ~ THEN BSANDR BreAxHunt1
~An awful lot of Duergar seem to be involved in this.~
DO~SetGlobal("SanCasBre","arac03",2)~
== ACBreB ~What do you mean to say with that, Sandrah?~
==BSANDR ~Your rival Reggik is of your clan, is he not? This mage Anstinus he deals with however seems to somehow have connections to the dark kin from below.~
== ACBreB ~Mmrpf. Only a dead Duergar is a good Duergar.~
==BSANDR ~Reggik does not seem to share your strict views on that, Breagar.~
== ACBreB ~I don't like what your words imply, Sandrah, I don't like it at all.~
==BSANDR ~Do not blame the messenger...~
== ACBreB ~Oh, I do not blame you. You only expressed what I was refusing to accept. There is a bigger treachery going on here than we can imagine.~
=~Don't stand there idle, foolish <PRO_RACE>! Let us crush them.~EXIT

CHAIN
IF~Global("SanBreStorm","ar3520",2)~THEN BSandr Stormhorn1
~Breagar, you seem to be concerned?~
DO~SetGlobal("SanBreStorm","ar3520",3)~
== ACBreB ~Mmrpf. You have good eyes - for a human.~
==BSANDR ~You know where we are, is that so? You know these mountains?~
== ACBreB ~You are right, these are the Stormhorns...only...this is the part that our clans have learned to avoid...~
==BSANDR ~I have learned enough about you and your clan to know it is not cowardice that keeps you off from these parts.~
== ACBreB ~Right - we know when to fight and what is worth fighting for. There is nothing in these mountains that is worth to shed a dwarf's blood for. May the Clan Orcs and dragons do with those worthless stones what they want.~
==BSANDR ~The Clan Orcs...the clans General Ghotal once tried to unite against the southern invaders.~
== ACBreB ~Invaders...I have never before heard one of your kin relate to your human actions in that way. There may be some knowledge behind your beardless facade after all...The Clan Orcs are very different from those foul orcs you have encountered elsewhere. They are proud fearless warriors, organised and led by powerful shamans.~
==BSANDR ~You seem to respect them in some way?~
== ACBreB ~Mmrpf. They survive in these mountains and against an angry world. They are family people, clan people - just like we dwarves are. They go their ways and we go ours, there is no need to fight between us.~EXIT

APPEND ACBreB

IF WEIGHT #-9 ~ Global("SanHealBre","GLOBAL",5)~ THEN BEGIN SanHealBre
SAY ~ Hmmpf!~
IF~~THEN EXTERN BSANDR SanBreHea1
END
END



