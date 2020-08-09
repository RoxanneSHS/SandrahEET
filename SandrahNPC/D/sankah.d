BEGIN SANKAH

CHAIN
IF ~ Global("ValiantKN","GLOBAL",4)~ THEN SANKAH Sw1
@0
DO ~ SetGlobal("ValiantKN","GLOBAL",5)~
== BSandr @1
END
++ @2 + Sw2
++ @3 DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~+ Sw2

CHAIN
IF~~ THEN SANKAH Sw2
@4
== BSandr @5
== SANKAH @6 DO ~
ChangeEnemyAlly(Myself,ENEMY) Attack(Player1)~ EXIT