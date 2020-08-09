BEGIN CVHousg1

CHAIN
IF ~GlobalLT("OrcPrison","GLOBAL",20) Global("SanInOne","GLOBAL",0) ~THEN CVHousg1 InOne1
@0
DO ~SetGlobal("SanInOne","GLOBAL",1)~
== BIMOEN @1
== CVHousg1@2
== BSANDR@3
== CVHousg1@4
END
++ @5EXIT
++ @6EXIT

CHAIN
IF ~GlobalLT("OrcPrison","GLOBAL",20) Global("SanInOne","GLOBAL",1) ~THEN CVHousg1 InOne2
@7
DO ~SetGlobal("SanInOne","GLOBAL",2)
     ActionOverride("CVHousg1",ChangeEnemyAlly(Myself,ENEMY))
     ActionOverride("CVHousg2",ChangeEnemyAlly(Myself,ENEMY))
     ActionOverride("CVHousg1",Attack(Player1))
     ActionOverride("CVHousg2",Attack("Imoen2"))
~EXIT

CHAIN
IF ~Global("OrcPrison","GLOBAL",20) Global("SanInTwo","GLOBAL",0) ~THEN CVHousg1 InOne3
@8
DO ~SetGlobal("SanInTwo","GLOBAL",1) ~
== BIMOEN @9
== CVHousg1@10
END
++ @11
DO ~ActionOverride("CVHousg1",ChangeEnemyAlly(Myself,ENEMY))
     ActionOverride("CVHousg2",ChangeEnemyAlly(Myself,ENEMY))
     ActionOverride("CVHousg1",Attack(Player1))
     ActionOverride("CVHousg2",Attack("Imoen2"))
~EXIT