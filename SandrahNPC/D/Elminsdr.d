BEGIN Elminsdr


CHAIN
IF ~Global("Mothdream1","GLOBAL",2) ~THEN  Elminsdr MothDream
@0
== Sanpre2 @1
== Elminsdr @2
== Sanpre2 @3
==  Elminsdr @4
== Sanpre2 @5
==  Elminsdr @6
== Sanpre2 @7
==  Elminsdr @8
== Sanpre2 @9
==  Elminsdr @10
== Sanpre2 @11DO~EscapeArea()~
==  Elminsdr @12DO ~SetGlobal("Mothdream1","GLOBAL",3) EscapeArea() ~
EXIT

CHAIN
IF ~Global("Mothdream2","GLOBAL",2) ~THEN  Elminsdr MothDream2
@13
==Sanpre2 @14
== Elminsdr @15
== Sanpre2 @16
==Elminsdr @17
= @18
== Sanpre2 @19
==  Elminsdr @20
== Sanpre2 @21
==  Elminsdr @22
== Sanpre2 @23DO ~EscapeArea()~
==  Elminsdr @24 DO ~SetGlobal("Mothdream2","GLOBAL",3) EscapeArea()~
EXIT



