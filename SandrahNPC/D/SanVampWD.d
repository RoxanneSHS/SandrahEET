BEGIN CVVAMSH3

BEGIN CVVAMBO

IF~AreaCheck("CVELS4") NumTimesTalkedTo(0)~THEN BEGIN boss1
SAY@0
=@1
IF~~THEN DO~Enemy()~EXIT
END

BEGIN CVREAG
IF~Global("SanVampWDQuest","GLOBAL",18)~THEN BEGIN reag1
SAY@2
IF~~THEN REPLY@3GOTO reag2
IF~~THEN REPLY@4GOTO reag2
END

IF~~THEN BEGIN reag2
SAY @5
IF~~THEN REPLY@6DO~SetGlobal("SanVampWDQuest","GLOBAL",19)~GOTO reag3
END

IF~~THEN BEGIN reag3
SAY @7
=@8
IF~~THEN REPLY@9GOTO reag4
END

IF~~THEN BEGIN reag4
SAY @10
IF~~THEN EXTERN CVSANDRJ sanReag1
END

IF~Global("SanVampWDQuest","GLOBAL",21)~THEN BEGIN reag5
SAY@11
IF~~THEN REPLY@12DO~SetGlobal("SanVampWDQuest","GLOBAL",22)~EXIT
END



CHAIN
IF~~THEN CVSANDRJ sanReag1
@13
==CVREAG@14
== CVSANDRJ @15
==CVREAG@16
== CVSANDRJ @17
==CVREAG@18DO~SetGlobal("SanVampInvas","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("CVVampl1")~EXIT

CHAIN
IF~Global("SanVampWDQuest","GLOBAL",22) AreaCheck("CVELM1")~THEN CVREAG reag6
@19
DO~SetGlobal("SanVampWDQuest","GLOBAL",23)~
==CVHarbor@20
== CVSANDRJ @21
==CVREAG@22
==CVHarbor@23
==CVREAG@24EXIT

CHAIN
IF~Global("SanVampInvas","GLOBAL",1)~THEN CVVAMBO invplan1
@25
==CVVAMBO@26
==CVVAMSH3@27
==CVVAMBO@28
=@29
==CVVAMSH3@30
==CVVAMBO@31DO~StartCutsceneMode()
Wait(2)
CreateVisualEffectObject("spattck1","orgo01")
Wait(2)
CreateVisualEffectObject("sppolymp","CVVAMSH3")
CreateVisualEffectObject("spportal","CVVAMSH3")
CreateVisualEffect("raiser",[920.525])
Wait(2)
CreateVisualEffectObject("SPDEATH3","CVVAMSH3")
Wait(2)
ActionOverride("CVVAMSH3",DestroySelf())
Wait(2)
SetGlobal("SanVampInvas","GLOBAL",2)
EndCutsceneMode()~EXIT

