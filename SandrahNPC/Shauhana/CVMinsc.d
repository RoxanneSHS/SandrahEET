BEGIN CVMinsc

//Minsc Training Orcs
CHAIN
IF~NumTimesTalkedTo(0) AreaCheck("CVSH15")~THEN CVMinsc WelcomeM
@0
==CVorwarl@1
==CVMinsc@2
==CVorwarl@3
==CVMinsc@4
==Shaorc7@5
==Sanboy1 IF~InMyArea("sanboy1")~THEN@6
==Shaorc8@7
==Shaorc9@8
DO~
SetGlobal("Orcshow","CVSH15",1)
ClearAllActions()
StartCutSceneMode()
StartCutscene("MinOrc1") ~EXIT

CHAIN
IF~Global("Orcshow","CVSH15",3)~THEN BSandr Minorc
@9
DO~SetGlobal("Orcshow","CVSH15",4)~
==CVMinsc@10
==BSandr@11
==CVMinsc@12
==Sanboy1 IF~InMyArea("sanboy1")~THEN@13
==CVMinsc IF~InMyArea("sanboy1")~THEN@14
==CVMinsc@15
==BSandr@16
==CVMinsc@17EXIT

CHAIN
IF WEIGHT #-3~AreaCheck("cvsh11")Global("SanHintFactory","GLOBAL",23)~THEN Sanboy1 retbelw
@18
DO~SetGlobal("SanHintFactory","GLOBAL",24)~
==CVorwarl@19
==cvminsc@20
==Shaorc8@7
==Shaorc9@8
==CVGhatle@21
==CVShauq@22
=@23
==CVorwarl@24
==CVShauq@25
==CVorwarl@26
==CVShauq@27
END
++@28+ retbelw2
++@29EXTERN CVSandrJ Chablowhead

CHAIN
IF~~THEN CVSandrJ Chablowhead
@30
END
++@31EXTERN Sanboy1 retbelw2


CHAIN
IF~~THEN Sanboy1 retbelw2
@32
==cvminsc@33
==CVShauq@34
==cvminsc@35
==CVShauq@36
==sanboy1@37
==CVShauq@38EXIT

CHAIN
IF~Global("SanHintFactory","GLOBAL",31)~THEN CVSandrJ ShauHornDone1
@39
DO~SetGlobal("SanHintFactory","GLOBAL",32)AddexperienceParty(72000) AddXPObject("CVSandr",105000)~
END
++@40+ ShauHornDone2

CHAIN
IF~~THEN CVSandrJ ShauHornDone2
@41EXIT

REPLACE_ACTION_TEXT Minsc ~Enemy()~~EscapeArea()~
