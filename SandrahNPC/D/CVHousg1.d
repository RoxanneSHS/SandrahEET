BEGIN CVHousg1

CHAIN
IF ~ GlobalLT("OrcPrison","GLOBAL",20) Global("SanInOne","GLOBAL",0) ~ THEN CVHousg1 InOne1
~ The boss is not in, visitors are not welcome today.~
DO ~ SetGlobal("SanInOne","GLOBAL",1)~
== BIMOEN ~ And where is the fine *noble* Traviman gone to, you goon. Spit it out quickest or ya spit out ya gulls instead. I am not patient today.~
== CVHousg1~ You threaten me none, silly little girl. The boss is not here, cry as you want. Get out!~
== BSANDR~ Imoen, spare your wrath for the real man. This Zero knows nothing.~
== CVHousg1~ Imoen? The dreaded Red Head? Orcs may fear you, but not the ones in this house, get out!~
END
++ ~ Let us go and see Keldath. It makes no sense to waste our time here.~ EXIT
++ ~ Yes, tell your boss that Red Head was here - and will come again. He cannot hide. Let us go see Keldath meanwhile.~ EXIT

CHAIN
IF ~ GlobalLT("OrcPrison","GLOBAL",20) Global("SanInOne","GLOBAL",1) ~ THEN CVHousg1 InOne2
~ Looks like one will not listen - then feel it instead.~
DO ~ SetGlobal("SanInOne","GLOBAL",2)
     ActionOverride("CVHousg1",ChangeEnemyAlly(Myself,ENEMY))
     ActionOverride("CVHousg2",ChangeEnemyAlly(Myself,ENEMY))
     ActionOverride("CVHousg1",Attack(Player1))
     ActionOverride("CVHousg2",Attack("Imoen2"))
~ EXIT

CHAIN
IF ~ Global("OrcPrison","GLOBAL",20) Global("SanInTwo","GLOBAL",0) ~ THEN CVHousg1 InOne3
~ The boss wants no visitors. You are not welcome today.~
DO ~ SetGlobal("SanInTwo","GLOBAL",1) ~
== BIMOEN ~ The fine *noble* Traviman will need to find the time for us. Go tell him Red Head is here, or your head will roll over there without you attached to it, just to tell 'im. I am not patient today.~
== CVHousg1~ The dreaded Red Head? Orcs may fear you, but not the ones in this house, get out!~
END
++ ~ We will see Travenhurst, you puppet. No way to stop us.~
DO ~ ActionOverride("CVHousg1",ChangeEnemyAlly(Myself,ENEMY))
     ActionOverride("CVHousg2",ChangeEnemyAlly(Myself,ENEMY))
     ActionOverride("CVHousg1",Attack(Player1))
     ActionOverride("CVHousg2",Attack("Imoen2"))
~ EXIT