BEGIN SanNaWi

CHAIN
IF ~Global("SanImoNashRaid","GLOBAL",1)~THEN SanNaWi SanNaWi1
@0
DO ~SetGlobal("SanImoNashRaid","GLOBAL",2)~
== BSANDR@1
==BIMOEN@2
==SanNaWi @3
==BIMOEN@4
END
++ @5+ SanNaWi2

CHAIN
IF~~THEN SanNaWi SanNaWi2
@6DO~EscapeArea()~
== BSANDR@7
END
++ @8DO~IncrementGlobal("Sanpoints","GLOBAL",2)~EXIT
++ @9DO~IncrementGlobal("Sanpoints","GLOBAL",3)~EXIT
++ @10EXIT