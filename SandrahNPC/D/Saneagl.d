BEGIN Saneagl

CHAIN
IF ~ NumTimesTalkedTo(0) Global("SaneaglTa","LOCALS",0) ~ THEN Saneagl FT11
@0
DO ~ SetGlobal("SaneaglTa","LOCALS",1)~
== BSANDR @1
== Saneagl @0
== BSANDR @2
== Saneagl @0 DO~EscapeArea()~
EXIT