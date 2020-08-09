BEGIN Rellruk

CHAIN 
IF ~NumTimesTalkedTo(0) ~THEN RELLRUK Rell1
@0
== Bimoen @1
== RELLRUK @2
== Bimoen @3
END
++ @4DO~IncrementGlobal("Sanpoints","GLOBAL",1)~+ Rell2
++ @5DO~IncrementGlobal("Sanpoints","GLOBAL",1)~+Rell2

CHAIN
IF ~~THEN RELLRUK Rell2
@6
== BSANDR @7
==RELLRUK @8
END
++ @9+ Rell3

CHAIN
IF ~~THEN RELLRUK Rell3
@10
== Bimoen @11
==RELLRUK @12
== BSANDR @13
== Bimoen @14
END
++ @15+ Rell4
++@16DO~IncrementGlobal("Sanpoints","GLOBAL",1)~+ Rell4

CHAIN
IF ~~THEN RELLRUK Rell4
@17
DO ~ChangeEnemyAlly("Rellruk",ENEMY) MoveToPointNoInterrupt([1300.1760]) ~
EXIT

