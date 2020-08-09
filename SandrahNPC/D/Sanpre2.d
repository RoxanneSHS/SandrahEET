BEGIN Sanpre2

CHAIN
IF ~Global("SanPCGoodMys","GLOBAL",3)~THEN Sanpre2 MystrHelp
@0
= @1
= @2
= @3
= @4
= @5
= @6
DO ~ SetGlobal("SanPCGoodMys","GLOBAL",4) ReputationSet(11) EscapeArea()~
EXIT

CHAIN
IF~Global("SanNewArm","GLOBAL",1)~THEN  Sanpre2 Mystranewarmour
@7
DO~SetGlobal("SanNewArm","GLOBAL",2)~
== SanMyst @8
== Sanpre2 @9
== SanMyst @10
== Sanpre2 @11 DO~EscapeArea() ~
== SanMyst @12
= @13DO~CreateVisualEffectObject("SPCLOUD1","SanPre4") EscapeArea()~
EXIT



