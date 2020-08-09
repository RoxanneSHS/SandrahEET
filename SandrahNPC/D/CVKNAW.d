BEGIN  CVKNAW

CHAIN
IF~Global("OrcPrison","GLOBAL",10)~THEN CVKNAW SD1
@0
DO ~SetGlobal("OrcPrison","GLOBAL",11)  AddexperienceParty(19550)~
== HENNING @1
== Bimoen @2
== BSandr @3
== Bimoen @4
== BSandr @5
END
++ @6+ SD2
++ @7DO~IncrementGlobal("Sanpoints","GLOBAL",1)~+ SD2

CHAIN
IF~~THEN CVKNAW SD2
@8
== Bimoen @9
== BSandr @10
== Bimoen @11
== CVKNAW @12
END
++ @13+ SD3
++ @14+ SD3


CHAIN
IF ~~THEN CVKNAW SD3
@15
DO ~ChangeEnemyAlly("CVKNAW",ENEMY) Attack(NearestEnemyOf(Myself)) ~
EXIT