BEGIN SANKAH

CHAIN
IF ~ Global("ValiantKN","GLOBAL",4)~ THEN SANKAH Sw1
~ You! You killed Kahrk. Mighty Kahrk the sword holder.~
DO ~ SetGlobal("ValiantKN","GLOBAL",5)~
== BSandr ~ You see, <CHARNAME>, they worship this sword Valiant as their symbol and will try to gain it back.~
END
++ ~ So far every ogre we have met was our enemy, Valiant sword or not, it never mattered.~ + Sw2
++ ~ Do you think that it will help to give it back to them. They have attacked us before we had the sword as well.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~+ Sw2

CHAIN
IF~~ THEN SANKAH Sw2
~ Kahrk has brother. Kharaz already knows you have killed and stolen sword. Kharaz hunt you and get you.~
== BSandr ~ You are right, <CHARNAME>, they attack us even if we gave them the sword. We have killed Kahrk, just in case they would need a justification.~
== SANKAH ~ You meat, you flesh, you lot loot. Wrarkh brings sword to Kharaz from your dead hands. Wrarkh will be respected hero by all ogre people.~ DO ~
ChangeEnemyAlly(Myself,ENEMY) Attack(Player1)~ EXIT