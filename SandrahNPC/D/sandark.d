BEGIN SANDARK

CHAIN
IF ~Global("Sandark","GLOBAL",2) ~THEN SANDARK Warn1
~Who dares to disturb me?~ 
== JETLAJ ~We have come to find and release a cursed girl to the east of here.~
== SANDARK ~Ha, Ha, Ha...you are pathetic mortals. Have you come for the latest addition to my pets.....she came to me lost, and I gave her eternity...Dare to take her and I shall add you to my collection to take her place! You have no idea of the foe you dare to face!~
== JETLAJ ~You...you were the one who did that to Ferium?  Let her go or we have no choice but to destroy you to free her.~
== SANDARK ~It is you who will be destroyed...I am your worst nightmare!~
== JETLAJ ~Please, <CHARNAME>, you see what a monster it is who holds my dear sister. You have promised me your help. Do you still stand to your word?~
== BSANDR ~Do not fear, Jet'laya, <CHARNAME> keeps <PRO_HISHER> word, even with a mighty foe such as this Lich.~
END
++ ~I gave you my word and I will not flinch from any evil creature. Even a Lich can be beaten by the steadfast. Let us move on.~ + Warn2
++ ~It's absolutely foolish, suicidal, and therefore profitable, let's get it done so we can see what the booty is like.~+ Warn3
++ ~I have not come here with you to turn and run away when the first glimpse of danger appears. I laugh at such threats, Jet'laya. (Can't wait to see how you seek shelter in my bedroll tonight when we camp out in this dreaded wood.)~+ Warn4
++ ~Have you seen a creature like this ever before? A Lich! We have not the force to stand up to such a creature, it is useless. It hurts me deep, Jet'laya, but your sister has erred and now is lost beyond hope. Let us retreat.~+ Warn5

CHAIN
IF~~THEN SANDARK Warn2
~Suicidal fools.~
DO~SetGlobal("Sandark","GLOBAL",3)IncrementGlobal("Sanpoints","GLOBAL",1) AddexperienceParty(6000) ~EXIT

CHAIN
IF~~THEN SANDARK Warn3
~Suicidal fools.~
DO~SetGlobal("Sandark","GLOBAL",3)AddexperienceParty(2000) ~EXIT

CHAIN
IF~~THEN SANDARK Warn4
~Suicidal fools.~
DO~SetGlobal("Sandark","GLOBAL",3)IncrementGlobal("Sanpoints","GLOBAL",-1) AddexperienceParty(1000) ~EXIT

CHAIN
IF~~THEN SANDARK Warn5
~Mortal cowards, haha.~
DO ~SetGlobal("Sandark","GLOBAL",4)IncrementGlobal("Sanpoints","GLOBAL",-3)ReputationInc(-2) ~EXIT


// Jet Laya Sister

INTERJECT_COPY_TRANS JETLAJ 1 SanJetSis
== JETLAJ IF ~InParty("CVSandr")GlobalLT("SanHealJet","GLOBAL",4)~THEN~And ye, Sandrah, with all yer experience and skill, ye see no way we could help her?~
== BSANDR IF ~InParty("CVSandr")GlobalLT("SanHealJet","GLOBAL",4) ~THEN~Be honest to yourself, my friend, you are skilled yourself - enough to know that to cure a creature like your sister, her own will must support the task of the healer.~
== JETLAJ IF ~InParty("CVSandr")GlobalLT("SanHealJet","GLOBAL",4)~THEN~With her mind gone or controlled by the Lich as it is, there's no such will from her side I am afraid.~
== BSANDR IF ~InParty("CVSandr")GlobalLT("SanHealJet","GLOBAL",4) ~THEN~Then we have to be strong enough to go the only way possible in this case and release her poor soul from the endless pain that awaits her.~DO ~SetGlobal("SanHealJet","GLOBAL",4)~
== JETLAJ IF ~InParty("CVSandr")GlobalLT("SanHealJet","GLOBAL",4)~THEN~I thank ye very much, Sandrah, for assuring me the terrible thing I have tai do is still the only possible way tai help my sister.~
END

// Jet'Laya
CHAIN
IF ~Global("San2Elves","GLOBAL",3)~THEN BSANDR JetLath
~Jet'laya, you are a priestess of Lathander. It is quite unusual for your kin to pray to the new sun good, is it not?~
DO ~SetGlobal("San2Elves","GLOBAL",4)~
== JETLAJ ~I would agree tai that, even if I have tai remind you, that our kin is as widespread and diverted in their beliefs as your own. Probably ye would find one or another elf following each god that is known on Toril.~
== BSANDR ~That may well be the case, but there would surely be a special reason for you to make that choice.~
== JETLAJ ~It is surely my sister and the fate that has befell her that let me seek for the sunlight and its blessing. It is darkness and what lurks there from which I seek my god's guidance.~
== BSANDR ~That is understandable, as well as the desire to bless and heal those that have suffered from darkness of any kind.~
== JETLAJ ~The darkness that blackens the soul and in the long term may also blacken the mind. Yes, wise priestess, there was a time when the grief for my sister almost brought that upon me. This is when I found Lathander tai see the light again.~
== BSANDR ~Thank you for sharing this with me.~
== JETLAJ ~Thank ye for yer kind interest, Sandrah.~DO~RestParty()~
EXIT

CHAIN
IF ~~THEN BSANDR JetHealed
~No need to thank me for this basic support. Your fate is really a sorry one. Having to lose one's sister in that way must be terrible.~
DO ~SetGlobal("SanHealJet","GLOBAL",4)~
== JETLAJ~And ye, with all yer experience and skill, ye see no way we could help her?~
== BSANDR  ~Be honest to yourself, my friend, you are skilled yourself - enough to know that to cure a creature like your sister, her own will must support the task of the healer.~
== JETLAJ~With her mind gone or controlled by the Lich as it is, there's no such will from her side I am afraid.~
== BSANDR  ~Then we have to be strong enough to go the only way possible in this case and release her poor soul from the endless pain that awaits her.~
== JETLAJ~I thank ye very much, Sandrah, for assuring me the terrible thing I have tai do is still the only possible way tai help my sister.~
EXIT

CHAIN
IF ~Global("SanJetAml","LOCALS",1)~THEN BSANDR SanJetSisD
~(Sandrah has taken Jet'laya in her arms and silently caresses the sobbing girl's head.)~
DO ~SetGlobal("SanJetAml","LOCALS",2)~
== JETLAJ~I know 'thad tai be done and we should feel better now, but it still hurts deep.~
== BSANDR  ~You have seen that she was not herself any more but only a monster controlled by that dark lich by now.~
== JETLAJ~You are right, my friend. My sister is dead for long already, now her poor soul is free from the suffering in eternity that was foreseen for her by the fiend.~
== BSANDR  ~We should seek to destroy the evil now, <CHARNAME>. Others are still held in a similar way. If we do not stop him, he will soon seek another victim to replace Ferium.~
END
++ ~How could we possibly accomplish that?~+ SanJetSisD2
++ ~We have done what lies within our power. How could we possibly destroy a creature like this?~
+ SanJetSisD2

CHAIN
IF ~~THEN BSANDR SanJetSisD2
~We have seen other souls captured by the Dark One in the wood south of here. It is known that such a lich can be destroyed once you have the phial that contains his soul essence, otherwise he will be able to restore himself continuously. A lich must have this essence always near to him but will never have it on himself for contingency.~
END
++ ~There was an inaccessible rotting house by that lake in the south. This may be a good place for the creature to hide his essence and have it near enough for his needs. We could explore for a way to get to it somehow.~DO ~AddexperienceParty(2500)~EXIT
++ ~Seek for a needle in a haystack while fighting off the most dangerous creature we have ever encountered. Sandrah, you are a genius. We never had so much fun before. It is an opportunity we should not miss.~+ SanJetSisD3

CHAIN
IF ~~THEN BSANDR SanJetSisD3
~I am glad you do not lose your humour when facing the most incredible dangers. The situation is indeed so hopeless that it would scare away any other hero on this Coast. Having stated this, the conclusion is that you have to do it, otherwise this creature will continue its harvest of innocent souls.~
END
++~Hey, counselor, let us go and do it before we can think about it too long and come to recognise how foolish we really are, hahaha.~DO ~AddexperienceParty(2500)~EXIT

APPEND JETLAJ
IF WEIGHT #-9 ~Global("SanHealJet","GLOBAL",3)~THEN BEGIN SanHealJet
SAY ~Thank ye, Sandrah for giving me your healing power once again. I should be really able tai apply those spell myself if in need, but this situation has set me a bit off my track, and that's why I forget tai do the right things momentarily.~
IF~~THEN EXTERN BSANDR JetHealed
END
END