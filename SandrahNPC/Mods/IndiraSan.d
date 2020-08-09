// Indira

INTERJECT_COPY_TRANS J#INDI 2 HealworkIndi
== CVSandrJ IF ~InParty("CVSandr")~THEN @0
==  J#INDI IF ~InParty("CVSandr")~THEN @1
== CVSandrJ IF ~InParty("CVSandr")~THEN @2
==  J#INDI IF ~InParty("CVSandr")~THEN @3
== CVSandrJ IF ~InParty("CVSandr")~THEN @4
==  J#INDI IF ~InParty("CVSandr")~THEN @5
== CVSandrJ IF ~InParty("CVSandr")~THEN @6
=@7
==  J#INDI IF ~InParty("CVSandr")~THEN @8
== CVSandrJ IF ~InParty("CVSandr")~THEN @9
==  J#INDI IF ~InParty("CVSandr")~THEN @10
== CVSandrJ IF ~InParty("CVSandr")~THEN @11DO~RealSetGlobalTimer("HealIndiT","GLOBAL",620)~
END

APPEND BSANDR
END

// Indira

CHAIN
IF ~Global("HealworkIndi","GLOBAL",2) ~THEN BSANDR  HealworkIndi2
@12
DO ~SetGlobal("HealworkIndi","GLOBAL",3)RealSetGlobalTimer("HealIndiT","GLOBAL",1620)~
==J#IndiB @13
==BSANDR @14DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT

CHAIN
IF ~Global("HealworkIndi","GLOBAL",4) ~THEN BSANDR  HealworkIndi3
@15
DO ~SetGlobal("HealworkIndi","GLOBAL",5)RealSetGlobalTimer("HealIndiT","GLOBAL",1200)~
==J#IndiB @16
= @17
==BSANDR @18
==J#IndiB @19
==BSANDR @20
==J#IndiB @21
==BSANDR @22
==J#IndiB @23
==BSANDR @24
==J#IndiB @25 DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT

CHAIN
IF ~Global("HealworkIndi","GLOBAL",7) ~THEN BSANDR  HealworkIndi4
@26
DO ~SetGlobal("HealworkIndi","GLOBAL",8)RealSetGlobalTimer("HealIndiT","GLOBAL",1200)~
==J#IndiB @27
==BSANDR @28
==J#IndiB @29
==BSANDR @30DO~GiveItemCreate("cmamul03","j#indi",0,0,0) ~
==J#IndiB @31 DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT


