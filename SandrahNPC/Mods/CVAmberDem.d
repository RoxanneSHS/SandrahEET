CHAIN
IF~Global("SanHealAmber","GLOBAL",11)~THEN CVDaudem TalkAmber
~HAHA, Two of my preferred sweet little enemies have found each other - AND I FOUND YOU.~
DO~SetGlobal("SanHealAmber","GLOBAL",12)~
==BM#Amber~ You are not supposed to be here at all...~
==BSandr~ Leave her alone, Paraagariel, you came here for me not for her.~
==CVDaudem~ WONDERFUL, simply wonderful, the great good hearted heroine is willing to protect her little tiefling girl friend!! My heart jumps for joy.~
==BM#Amber~ We'll let it jump out of your corpse in a moment!! If you came for her you have to go through me first, bastard.~
==CVDaudem~ It's getting BETTER and BETTER!! The self less girls are willing to risk it all for the other. This must be more than friendship...~
=~ Don't worry, girls, you will both get your treatment today. I CAME FOR BOTH OF YOU!!~
DO~Enemy() StartCutSceneMode() CreateVisualEffect("spraised",[962.754]) Wait(2) CreateCreature("ghoul",[960.750],4)Wait(2)  CreateVisualEffect("spraised",[666.772]) Wait(2) CreateCreature("mumgre01",[660.770],4)EndCutSceneMode() ~EXIT