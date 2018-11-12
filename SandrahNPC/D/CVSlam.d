BEGIN CVSlam

IF~NumTimesTalkedTo(0)~THEN BEGIN Threat1
SAY~There is nothing for you on the road ahead but death. Return from where you came. ~
IF~~THEN REPLY~Surely not. It seems we are on the exactly right track here, friends.~GOTO Threat2
END

CHAIN
IF~~THEN CVSlam Threat2
~The right track if you are searching the nine hells.~
==CVSANDRJ~The road will not be easy as you seem to be very confident of the power that backs your words. But we have never turned around when the life and freedom of many are at a stake.~
==IF_FILE_EXISTS BP#KIV IF~InParty("P#Kivan") ~THEN~<CHARNAME>, the trail we follow leads past this guy. I see the traces of the many they have captured as well as their guards.~
==BKeldor IF~ InParty("Keldorn")~THEN~Even in a remote place like this there rules the justice of Torm whom no evil can escape.~
==Banomen IF~ InParty("Anomen")~THEN~Even in a remote place like this the ever watchful eye of Helm will guide us to the destruction of evil.~
== CVSlam~You will soon be shackled yourself. As gladiators you will be worth a fortune...and those pretty girls will grace any lust chamber and make their owners rich. I will carry the *good* news of your arrival ahead quickly. ~DO~ CreateVisualEffectObject("SPDIMNDR",Myself) JumpToPoint([1052.591])~EXIT