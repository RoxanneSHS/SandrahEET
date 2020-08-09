BEGIN CVIZZY

CHAIN
IF ~Global("OrcPrison","GLOBAL",30) ~THEN CVIZZY  BereIzzy1
@0
DO ~SetGlobal("OrcPrison","GLOBAL",31) ~
== BIMOEN @1
== CVIZZY @2
== BIMOEN @3
== CVIZZY @4
== BIMOEN @5
== CVIZZY @6
== BSANDR @7
== CVIZZY @8
== BSANDR @9
== CVIZZY @10
END
++ @11+ BereIzzy2

CHAIN
IF~~THEN CVIZZY BereIzzy2
@12
== BSANDR @13
== CVIZZY @14DO ~MoveToPointNoInterrupt([195.440]) DestroySelf()~EXIT

