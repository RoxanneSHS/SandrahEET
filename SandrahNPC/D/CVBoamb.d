BEGIN CVBOAMB

CHAIN
IF~NumTimesTalkedTo(0)~THEN CVBOAMB SanAttack
@0
==CVSandrJ@1
== CVBOAMB@2
==CVSandrJ@3
== CVBOAMB@4DO~CreateVisualEffect("SPFIREPI",[660.220])
		Wait(2)
		ScreenShake([660.220],30)
		Wait(4)
		RestorePartyLocations() ~EXIT



