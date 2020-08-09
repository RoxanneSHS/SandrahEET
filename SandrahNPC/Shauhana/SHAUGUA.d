BEGIN SHAUGUA

CHAIN
IF ~Global("SanSharkta","GLOBAL",14) ~THEN SHAUGUA Godchild1
@0
DO~SetGlobal("SanSharkta","GLOBAL",15)~
== BSHAUHA @1
== SHAUGUA @2
= @3
== BSHAUHA @4
== SHAUGUA @5
== BSHAUHA @6
== SHAUGUA @7
== BSHAUHA @8
== SHAUGUA @9
EXIT

CHAIN
IF~Global("SanHintFactory","GLOBAL",15)~THEN SHAUGUA ComeForEnd1
@10
=@11
DO~SetGlobal("SanHintFactory","GLOBAL",16)~
==CVSandrJ@12
== SHAUGUA @13
==CVSandrJ@14
END
++@15+ ComeForEnd2
++@16+ ComeForEnd2

CHAIN
IF~~THEN SHAUGUA ComeForEnd2
@17
==CVSandrJ@18
== SHAUGUA @19
==CVSandrJ@20
== SHAUGUA @21
==CVSandrJ@22
== SHAUGUA @23
=@24
END
++@25+ ComeForEnd3

CHAIN
IF~~THEN SHAUGUA ComeForEnd3
@26
==CVSandrJ@27
== SHAUGUA @28
==CVSandrJ@29
== SHAUGUA @30DO~GiveItemCreate("CVDaWard","CVSandr",0,0,0)~
==CVSandrJ@31
== SHAUGUA @32DO~CreateVisualEffectObject("SPHOLY","CVSandr") Kill("Shaugua")~EXIT
