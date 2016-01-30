BEGIN CVDruD1

IF~Global("DruTlk","CVDru0",0)~THEN BEGIN DrutalkF
SAY~ You have overcome our defenses, destroyers of nature! Intruders!~
IF~~THEN REPLY~ Who are you to misuse and manipulate these poor xvarts? You send them against each and everyone they see, senselessly fighting and killing - and dying for nothing.~DO~SetGlobal("DruTlk","CVDru0",1)~ GOTO DrutalkF2
END

IF~~ THEN BEGIN DrutalkF2
SAY~Dying for nothing? Impertinent intruders, they die to protect nature against the filth you bring from your cities and wars. They are our army against the sins of that so-called *civilization*.~
=~Scum like you will not understand it, you only understand violence.~
IF~~THEN DO~Enemy()~EXIT
END

IF~Global("DruTlk","CVDru0",1)~THEN BEGIN DrutalkH
SAY~Intruders, you will die!~
IF~~THEN DO~Enemy()~EXIT
END

BEGIN CVDrud3

CHAIN
IF~Global("DruidCar","BG4900",2)~THEN CVDrud3 Carnival
~Filth all over the area, they leave their garbage everywhere.~
DO~SetGlobal("DruidCar","BG4900",3)~
==CVDrud1~They do not celebrate nature like their forefathers did. Those praised nature for the harvest and the gifts they had received.~
==CVDrud3~This perversion of a carnival only serves as an excuse to drink and devour the black lotus.~
==CVDrud1~They carve their names and that of their girls into the tree bark.~
==CVDrud3~Empty bottles everywhere, all the filth they should have left in their town.~
==CVDrud1~They cut the trees for the large gambling tents...~
==CVDrud3~There was enough space just a stonethrow away.~
==CVDrud1~None of them will feel too badly a headache in the morning!!~
==CVDrud3~None of them will have a head in the morning, my friend.~
==CVDrud1~Let the dance begin, OUR dance.~
END
++~Hold on, what are you up to?~ + Carniv2
++~You are right, servants of nature, this silly fair only gets peasants drunk, drugged and robbed by gamblers.~+ Carniv2
++~Idiotic not to have any guards out here. (Sigh) Friends, it's up to us to prevent the worst once more.~+ Carniv2

CHAIN
IF~~ THEN CVDrud3 Carniv2
~Intruders, we are found.~ DO~Enemy()~
==CVDrud1~Attack, little soldiers, attack!!~DO~Enemy()~EXIT