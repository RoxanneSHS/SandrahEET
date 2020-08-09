BEGIN CVSzas

CHAIN
IF~Global("Init","CVSH21",2)~THEN CVSzas Szass1
@0
DO~SetGlobal("Init","CVSH21",3)~
==CVSandrJ@1
==CVSzas@2
==CVSandrJ@3
==CVSzas@4
==CVSandrJ@5
==CVSzas@6
==CVSandrJ@7
==CVSzas@8DO~ClearAllActions() StartCutSceneMode() FadeToColor([30.0],0) Wait(4) StartCutScene("DaWeav1")~EXIT

CHAIN
IF~Global("Init","CVSH21",4)~THEN CVSzas Szass2
@9
=@10
==CVSandrJ@11
==CVSzas@12
==CVSandrJ@13
==CVSzas@14
==CVSandrJ@15
END
++@16+ Szass3

CHAIN
IF~~THEN CVSzas Szass3
@16
DO~SetGlobal("Init","CVSH21",5)~
==CVSandrJ@17
==CVSzas@18
==CVSandrJ@19
==CVSzas@20DO~ClearAllActions() StartCutSceneMode() FadeToColor([30.0],0) Wait(4) StartCutScene("DaWeav1")~EXIT

CHAIN
IF~Global("Init","CVSH21",6)~THEN CVSzas Szass4
@21
DO~SetGlobal("Init","CVSH21",7) SetGlobal("SanHintFactory","GLOBAL",17)~
END
++@22EXIT
++@23DO~SetGlobal("SzassFight","Global",1) ActionOverride("CVSzass",Enemy())~EXIT
++@24EXIT

CHAIN
IF~Global("SzassLeaveEarly","CVSH21",1)~THEN CVSzas MustLeave
@25
==CVSandrJ@26
==CVSzas@27
=@28DO~SetGlobal("SzassLeaveEarly","CVSH21",2) SetGlobal("SanHintFactory","GLOBAL",23) ReallyForceSpell(Myself,DRYAD_TELEPORT)~EXIT

