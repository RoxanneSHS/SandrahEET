CHAIN
IF WEIGHT #-2~Global("SanEndBG1Plot","GLOBAL",6) Global("CbCutscene3512","AR3512",0) ~THEN CBMINDED San1
@0
== CBDYNDED @1
== CBMINDED @2
== CBDYNDED @3DO~SetGlobal("CbCutscene3512","AR3512",4)
ClearAllActions()
FadeToColor([20.0],0)
Wait(1)
StartMovie("CBCTMOVE")
SetCutSceneLite(TRUE)
StartCutScene("CVCT3513")
~EXIT


