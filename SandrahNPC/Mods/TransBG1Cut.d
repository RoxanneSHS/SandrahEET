CHAIN
IF WEIGHT #-2~ Global("SanEndBG1Plot","GLOBAL",6) Global("CbCutscene3512","AR3512",0) ~ THEN CBMINDED San1
~ Boo, do my eyes deceive me?  Dynaheir!  Who are these knaves that would dare to stand so close to you?!  If they are the ones that took you from me I shall tear their skins off!~
== CBDYNDED ~Stand easy Minsc.  They  are to be trusted, for it was their valor that rescued me.~
== CBMINDED ~Then I am truly shamed.  I could not prevent your capture, and strangers were your saviours.  I present my head for the taking.~
== CBDYNDED ~Now Minsc, that thick head is best left where it is, regardless of how little it is used.  Thou shalt continue to accompany me as previously assigned.  No doubt our new friends would welcome a warrior of thy...perseverance.~DO~SetGlobal("CbCutscene3512","AR3512",4)
ClearAllActions()
FadeToColor([20.0],0)
Wait(1)
StartMovie("CBCTMOVE")
SetCutSceneLite(TRUE)
StartCutScene("CVCT3513")
~ EXIT


