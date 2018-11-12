BEGIN CVColle

CHAIN
IF~AreaCheck("CVROA7") ~THEN CVColle Bracers1
~Ah, adventurers! You must have come across quite some interesting items, my heroes.~
DO~SetGlobal("GaveKey","CVROA7",2)~
=~A troll's finger? Maybe an orc scalp or two, a Xvart's ear...~
==CVSandrJ~Disgusting! Not really the things we load ourselves with. What would anyone want such things for?~
==CVColle~Oh, good lady, those were just examples, maybe you found a dragon's tooth or a rare wand - I buy almost anything at high prize.~
END
IF~PartyHasItem("Sanbrc")~THEN REPLY~We found bracers of demonic virtue that we cannot make any use of.~+Bracers2
IF~PartyHasItem("AGshld01")~THEN REPLY~We have found this antique shield of Gwalhaudh.~+ Bracers4
IF~PartyHasItem("Blunpoi")~THEN REPLY~We have found this club of Poisoned Brambles.~+ Bracers4
IF~~THEN REPLY~My companion is right, we'd rather not do business with you.~+ Bracers3
IF~PartyHasItem("Imofurc") InParty("Imoen2")~THEN REPLY~Anything else that might bring us some coin?~+Bracers5

CHAIN
IF ~~THEN CVColle Bracers5
~This pink fur coat looks interesting.~
END
++~It's not mine to give.~EXTERN IMOEN2_ ColleNo

CHAIN
IF~~THEN CVColle Bracers2
~Ah, I just have the right customers for those things...~
==CVSandrJ~Only a demon can make use of them. You really do business with those creatures? We shall not sell them to you or your *customers*!~
END
++~No, we won't.~DO~ReputationInc(1)IncrementGlobal("Sanpoints","GLOBAL",2)~EXIT
++~Let's see if the price is right.~DO~ReputationInc(-1)IncrementGlobal("Sanpoints","GLOBAL",-2)~+ Bracers3

CHAIN
IF~~THEN CVColle Bracers3
~Ah, what does such a girl know about business, hahaha...~
END
++~It will not hurt to exchange a look at our goods.~DO ~StartStore("CVColle",LastTalkedToBy(Myself))~EXIT
++~No, it seems we are not talking the same language, "Collector".~+ Meet1d

CHAIN
IF~~THEN CVColle Bracers4
~Interesting. Look what I offer in return.~
END
++~Let me check.~DO ~StartStore("CVColle",LastTalkedToBy(Myself))~EXIT

CHAIN
IF~~THEN IMOEN2_ ColleNo
~You not and never touch that coat, greasy bastard!!~
EXIT

CHAIN
IF ~Global("CVColleEnc","GLOBAL",2)~THEN CVColle Meet1
~Magnificent adventurers, to meet you finally is my pleasure.~
DO~SetGlobal("CVColleEnc","GLOBAL",3) ~
==CVSandrJ~Sleazy...who may that be?~
==CVColle~You may be astonished - but I am just the person you may want to meet.~
END
++~Oh, I have heard that a million times now, get lost, geezer.~+ Meet1b
++~And why should that be the case?~+ Meet1b

CHAIN
IF~~THEN CVColle Meet1b
~I have the advantage to know about you - you do not know me - yet. Let us change that quickly. I am Nerkio, known far and wide as "The Collector".~
==CVSandrJ~And what would it be that you *collect*?~
==CVColle~Almost anything a worthy adventurer of your status may have found throughout the Realms - of course I pay the highest of prizes for the things that may just fill and weight your backpacks.~
END
++~Well, we are in need of a bit of coin...~+ Meet1c

CHAIN
IF~~THEN CVColle Meet1c
~Ah, you must have come across quite some interesting items, my heroes. Loads of trophies.~
==CVSandrJ~Trophies?~
==CVColle~A troll's finger? Maybe an orc scalp or two, a Xvart's ear...~
==CVSandrJ~Disgusting! Not really the things we load ourselves with. What would anyone want such things for?~
==CVColle~Oh, good lady, those were just examples, maybe you found a dragon's tooth or a rare wand - I buy almost anything at high prize.~
END
++~It will not hurt to exchange a look at our goods.~DO ~StartStore("CVColle",LastTalkedToBy(Myself))~EXIT
++~No, it seems we are not talking the same language, "Collector".~+ Meet1d

CHAIN
IF~~THEN CVColle Meet1d
~Not so fast, good friend, I speak the universal language of GOLD.~DO ~StartStore("CVColle",LastTalkedToBy(Myself))~EXIT

CHAIN
IF ~Global("CVColleEnc","GLOBAL",5)~THEN CVColle Meet2
~Magnificent adventurers, once more we meet.~
DO~SetGlobal("CVColleEnc","GLOBAL",6) ~
==CVSandrJ~I have not come to like the man any better, <CHARNAME>.~
END
++~It will not hurt to exchange a look at our goods.~DO ~StartStore("CVColle",LastTalkedToBy(Myself))~EXIT
++~No, it seems we are not talking the same language, "Collector".~+ Meet1d
++~I tell you again, I want no dealings with you.~+ Meet1d

CHAIN
IF ~Global("CVColleEnc","GLOBAL",8)~THEN CVColle Meet3
~Magnificent adventurers, once more we meet.~
DO~SetGlobal("CVColleEnc","GLOBAL",9) ~
==CVSandrJ~Oh, not again! Are you following us around?~
==CVColle~My offers are even better than before, good lady. I will really give a heap of coin for a personal artefact from you, heroine.~
==CVSandrJ~My scalp, finger, an ear?~
==CVColle~That would be fantastic!!! HaHaHa, but we need not to vivisect you, my dear. I would be really happy with just a lock of hair, even a fingernail will do...~
==CVSandrJ~Now it gets out of bounds. This is not only disgusting but sick. Try not to cross our path again, *Collector*!~
END
++~It will not hurt to exchange a look at our goods.~DO ~StartStore("CVColle",LastTalkedToBy(Myself))~EXIT
++~You have heard the lady, "Collector".~EXIT