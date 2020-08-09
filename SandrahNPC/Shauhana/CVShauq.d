BEGIN CVShauQ

CHAIN
IF~NumTimesTalkedTo(0)AreaCheck("CVSH15")~THEN CVShauQ Welcome
@0
DO~SetGlobal("SanHintFactory","GLOBAL",10)~
==CVSandrJ@1
==CVShauQ@2
==CVSandrJ@3
==CVShauQ@4
==CVSandrJ@5
==CVShauQ@6
==CVSandrJ@7
END
++@8+ Welc2

CHAIN
IF~~THEN CVShauQ Welc2
@9
==CVSandrJ@10
==BEDWIN IF~InParty("Edwin")~THEN@11
==CVShauQ@12
==CVSandrJ@13
=@14
==CVShauQ@15
==CVSandrJ@16
==CVShauQ@17
==CVSandrJ@18
END
++@19+ Welc3

CHAIN
IF~~THEN CVShauQ Welc3
@20
==CVSandrJ@21
==CVShauQ@22
==CVSandrJ@23
==CVShauQ@24
==CVSandrJ@25
==CVShauQ@26
END
++@27EXIT

CHAIN
IF~Global("SanHintFactory","GLOBAL",27)~THEN CVShauQ FinalVenne1
@28
DO~SetGlobal("SanHintFactory","GLOBAL",28)~
==Sanboy1@29
==CVMinsc@30
==CVShauQ@31
==CVMinsc@32
==CVShauQ@33
==Sanboy1@34
==CVShauQ@35
=@36
=@37DO~ActionOverride("CVSandr",AddSpecialAbility("CVDra24")~
EXIT

CHAIN
IF~AreaCheck("CVSH22") GlobalLT("SeeLake","CVSH22",3)OR(2) IsGabber([PC]) Global("SeeLake","CVSH22",2) ~THEN CVShauQ Laketrick
@38
DO~SetGlobal("SeeLake","CVSH22",3) RealSetGlobalTimer("WaveTwo","CVSH22",125) ~
==CVSandrJ@39
==CVShauQ@40
==Sanboy1@41
==CVShauQ@42
==CVMinsc@43
==CVSandrJ@44
==CVShauQ@45
==CVSandrJ@46DO~StartCutSceneMode() Wait(1) MoveToPoint([3053.1123])MoveViewPoint([3053.1123],INSTANT) CreateVisualEffectObject("lightpi","CVSandr") Wait(1) EndCutSceneMode()~EXIT

CHAIN
IF~Global("ShauPalHis","CVSH13",1)~THEN CVShauQ ReBuild1
@47
DO~SetGlobal("ShauPalHis","CVSH13",2)~
==Sanboy1@48
==CVShauQ @49
==CVSandrJ@50
==CVShauQ @51
==CVSandrJ@52
==CVShauQ @53
==CVMinsc@54
==CVShauQ @55
==Sanboy1@56
==CVShauQ@57EXIT