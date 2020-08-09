CHAIN
IF~Global("SanHealHalda","GLOBAL",3)~THEN ~BB!Hal~HalTRecSan1
@0
DO~SetGlobal("SanHealHalda","GLOBAL",4)~
==BSandr@1
==~BB!Hal~@2
==BSandr@3
==~BB!Hal~@4
==BSandr@5
==~BB!Hal~@6
=@7
==BSandr@8
==~BB!Hal~@9EXIT

CHAIN
IF~Global("SanHealHalda","GLOBAL",5)~THEN ~BB!Hal~HalTRecSan2
@10
DO~SetGlobal("SanHealHalda","GLOBAL",6)~
==BSandr@11
==~BB!Hal~@12
==BSandr@13
==~BB!Hal~@14
==BSandr@15
==~BB!Hal~@16
==BSandr@17
=@18
==~BB!Hal~@19EXIT

CHAIN
IF~Global("SanHealHalda","GLOBAL",7)~THEN ~BB!Hal~HalTRecSan3
@20
DO~SetGlobal("SanHealHalda","GLOBAL",8)~
==BSandr@21
==~BB!Hal~@22
==BSandr@23
==~BB!Hal~@24
==BSandr@25
==~BB!Hal~@26
==BSandr@27
==~BB!Hal~@28
==BSandr@29
==~BB!Hal~@30
==BSandr@31
==~BB!Hal~@32
=@33
==BSandr@34EXIT

CHAIN
IF~Global("SanHealHalda","GLOBAL",9)~THEN ~BB!Hal~HalTRecSan4
@35
DO~SetGlobal("SanHealHalda","GLOBAL",10)~
==BSandr@36
==~BB!Hal~@37
==BSandr@38
==~BB!Hal~@39
==BSandr@40
==~BB!Hal~@41
==BSandr@42
==~BB!Hal~@43
==BSandr@44
==~BB!Hal~@45
==BSandr@46
==~BB!Hal~@47EXIT

CHAIN
IF~Global("HalWeave","LOCALS",1)~THEN ~BB!Hal~HalWeavSan1
@48
DO~SetGlobal("HalWeave","LOCALS",2)~
==BSandr@49
==~BB!Hal~@50
==BSandr@51
==~BB!Hal~@52
==BSandr@53
=@54
==~BB!Hal~@55
==BSandr@56
==~BB!Hal~@57
==BSandr@58
==~BB!Hal~@59DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~EXIT

CHAIN
IF~Global("SanHealHalda","GLOBAL",11)~THEN ~BB!Hal~HalTRecSan6
@60
DO~SetGlobal("SanHealHalda","GLOBAL",12)~
==BSandr@61
==~BB!Hal~@62
==BSandr@63
==~BB!Hal~@64
==BSandr@65
==~BB!Hal~@66DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~EXIT

EXTEND_TOP ~B!Halj~386
IF~InParty("CVSandr") GlobalGT("SanHealHalda","GLOBAL",11)~THEN REPLY @67GOTO HalSan1
END

APPEND ~B!Halj~
IF~~THEN BEGIN HalSan1
SAY@68
IF~~THEN REPLY@69GOTO HalSan2
IF~~THEN REPLY@70GOTO HalSan2
IF~~THEN REPLY@71GOTO HalSan2
END

IF~~THEN BEGIN HalSan2
SAY@72
IF~~THEN EXIT
END
END
