CHAIN
IF WEIGHT #-23~Global("SanHealKity","GLOBAL",2)~THEN R#Kityb StopHeal1
~Beware priestess! Your spellcasting is not acceptable when applied on me! At the moment I follow <CHARNAME>'s leadership and you seem to be tolerated in this company but do not tempt me too much, you may get hurt.~
DO~SetGlobal("SanHealKity","GLOBAL",4)~
==BSandr~ I doubt that you can really make your threat become reality. But I do not seek quarreling with you for the same reason you have stated already - we both serve the tasks of <CHARNAME>'s group.~
==R#Kityb~ Fine, then keep your spells to yourself from now on.~
==BSandr~You may have your reasons to try to destroy magic and its wielders. Maybe we will get a chance to talk about it sometimes. Just to make it clear to you - when I apply my healing skills this has nothing to do with the *hateful* spellcasting. I call the healing force of the Weave itself with the access my goddess grants me to that source.~
==R#Kityb~You suggest there is a difference between casting a fireball and applying minor healing, other than the contrary effects of course?~
==BSandr~Yes, there is and as a priestess of Mystra the difference is utterly important to me. My healing skills make use of the great natural energy from which our Multiverse is made, the Weave itself. This is very different from conjuring matter and energy to a temporary effect like the fireball you mentioned. ~
==R#Kityb~You are not a coward and well educated and knowledgable, Sandrah. Maybe your view of magic and your use of it differs from the kind I have set out to destroy. Our time together in this group may become interesting.~EXIT

CHAIN
IF WEIGHT #-24~ Global("SanHealKity","GLOBAL",5)~THEN BSandr SanKityAskJon
~Kitanya, there is something I need to ask you as an elf, please do not get angry for my intrusion into what might be a secret of your kin - I do it on behalf of <CHARNAME> and Imoen, my best friends and beloved companions.~
DO~SetGlobal("SanHealKity","GLOBAL",6)~
==R#Kityb~I have come to respect your motives and what you do for our group. You would not try to break into elven internal affairs if it were not for just reasons. Speak - I promise nothing however.~
==BSandr~In our persuit of <CHARNAME>'s foe, the mage we try to find, I have come to the conclusion that he might be of your kin, at least from his origin.~
==R#Kityb~His origin? (Kitanya is obviously struggling to maintain her composure.)~
==BSandr~He and his sister must have commited some crime that has forever made them outcasts if not foes of the elven society. However, we have no way to get further insight as such affairs are not shared by the elves with any N'Tel'Quessir.~
==R#Kityb~(You can see Kitanya's hand trembling.) The man...the elf...what is his name?~
==BSandr~Jon Irenicus.~
==R#Kityb~I...I cannot help you...I..I have never heard that name. (She turns abruptly and avoids Sandrah's and also your company for the rest of the day.)~
==BSandr~(Murmurs) Suldanessalar.~
END
++~What do you mean by that?~ + SanKityAskJon2
++~(Leave her to her thoughts. You are more interested to take care of Kitanya at this moment.)~EXIT
++~A vanished elven town? Where is the connection?~ + SanKityAskJon2

CHAIN
IF~~THEN BSandr SanKityAskJon2
~Kitanya's former home - and maybe also the origin of Jon Irenicus. Probably also the reason for her hatred against magic, which is very rare for an elf.~
=~ I am sorry, my love. I have mabe caused more damage with my questions than we have learned for our quest.~
END
++~You meant no harm. Anything that helps us to rescue Imoen must be done.~ EXIT
++~You should have known elven habbits better, my counsellor. It was unwise and unfair to attempt such an intrusion into their secrets.~ EXIT
IF~Global("SanRomPath","GLOBAL",1)~ THEN REPLY ~ Fabulous, your failure might be used to advantage. I guess it is time for this party's understanding leader to cheer up a bit our beautiful elven companion.~EXIT

CHAIN
IF WEIGHT #-25~ Global("SanHealKity","GLOBAL",7)~THEN R#Kityb SanKityAskJon
~Sandrah, I am sorry, you acted only in loyalty to <CHARNAME> and Imoen when you asked me about that mage.~
DO~SetGlobal("SanHealKity","GLOBAL",8)~
==BSandr~It is me who has to apologize. I acted despite my knowlege of elven custom and I overstepped the line between comrads in arms.~
==R#Kityb~I have learned enough about you by now to understand your motifs. But I told you the truth when I said I never heard the name you mentioned.~
==BSandr~So either I have erred or the man we talk about uses a different name than the one you knew him by.~
==R#Kityb~This is possible considering why he was exiled from my home.~
=~As with nearly all societies, the elvish woodlands I come from harbor those who would become corrupt with their own power. When I was in what you would consider to be adolescence, the city had come under the influence of one such corrupted. He was an incredibly powerful mage, the most powerful one we had known that did not have divine influence. He sought to destroy what the elvish people hold dear. He wanted to become a god and he cared little for who he hurt during his acension. A fierce battle broke out at the Tree of Life and many elves were slaughtered, all of my family among them. ~
==BSandr~(Kitanya has become more and more agitated during her story. Sandrah has taken her in her arms where she stays as she finished her tale.)~
=~Your hatred against magic and those who misuse it has its origin there. I share it with you and I fight against such misusers in Mystra's name with all my heart.~
==R#Kityb~Do you think this exile is connected to the man we now hunt?~
==BSandr~You said he wanted to become a god himself. He tried to misuse the power of your gods and the Tree of Life for his plan. If he is now in Amn and among its people he may try to use another source for his ascension.~
==R#Kityb~Which one are you thinking of?~
==BSandr~The essence of a dead god. Essence that is present on the Primary Plane in the form of the dead god's spawns.~
==R#Kityb~Bhaalspawn's?~
==BSandr~For his purpose he would either need many of them - or the strongest of the Bhaalspawns. Since <CHARNAME>'s and Imoens kidnapping we were suspecting that the reason behind the action was their common heritage.~
==R#Kityb~Joneleth. That was the mage's name...~EXIT

CHAIN
IF WEIGHT #-26~ Global("SanHealKity","GLOBAL",9)~THEN R#Kityb SanKityAskPC
~Sandrah, we have more things in common than I initially thought to be possible.~
DO~SetGlobal("SanHealKity","GLOBAL",10)~
==BSandr~ This time you are not talking about our hatred against those who misuse the gifts of my goddess or those who enslave others, right?~
==R#Kityb~You are very close to <CHARNAME>, even if you try to disguise your feelings in our daily life.~
==BSandr~ That is a very strange observation, Kitanya. My love and loyalty to <CHARNAME> and our relationship must be obvious to anyone who knows us longer than a single hour.~
==R#Kityb~I thought so myself initially, until I recognised both your, eh, *free* behaviour towards others that interest any of you.~
==BSandr~Love is not ownership and if you expect me to burst out into jealousy if <CHARNAME> spends some time with another you will be disappointed. My confidence and trust in our love is strong enough to accept this added experience just as I take my own freedom to gain it for myself.~
==R#Kityb~Nothing is ever straight forward with you, it seems. And again nothing feels wrong about the ways you face life...I even saw you kissing another girl in a way that was more than sisterly...~
==BSandr~We started this conversation with the topic of what we have in common.~
==R#Kityb~Eh, yes, we strayed a bit...(She blushes lightly as the smiles at Sandrah.)~EXIT

EXTEND_BOTTOM R#Kityj 271
IF~ InParty("CVSandr")~ THEN REPLY ~ Sandrah.~ GOTO KitySan1
END

APPEND R#Kityj
IF~~THEN BEGIN KitySan1
SAY~ She is a priestess of the goddess of all magic and I am a mage-killer - still, we seem to have more in common than I found in most people I have met before. She appears to be a complex person but her love and loyalty to you is straight forward and ultimately true.~
IF~~THEN REPLY~ I wanted to ask about someone else.~ GOTO 272
IF~~THEN REPLY~ Very well.  Thank you for your insights.~EXIT
END
END