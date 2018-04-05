CHAIN
IF~Global("SanDauroQ","GLOBAL",3) ~THEN CVDaudem TalkDauro
~HAHA, the pathetic paladin dares to approach once again.~
DO~SetGlobal("SanDauroQ","GLOBAL",4)~
==CVDauro~You feed on innocent children and destroy the life of their families. We cannot let you go on.~
==CVDaudem~ Your mortal morals are irrelevant for me. Each child's soul gives me a ten day stay on your plane.~
==BSandr~ And a demon's death on the surface gives him two hundred years of suffering in the abyss.~
==CVDaudem~ Ha, that almost sounds like a threat if it did not come from my next victim.~
=~Paladin, I see you brought some company to go down with you. That makes seven tendays for me at once, hahaha.~
==BSandr~ I prefer the mentioned two hundred years of suffering for you.~
==CVDaudem~ Paladin, you and your reinforcements against mine.~
DO~Enemy() StartCutSceneMode() CreateVisualEffect("spraised",[4606.225]) Wait(2)  CreateVisualEffect("spraised",[4670.97]) Wait(2) CreateVisualEffect("spraised",[4523.179]) Wait(2)CreateVisualEffect("spraised",[4600.128]) Wait(2) CreateCreature("ghoul",[4606.225],4) Wait(1) CreateCreature("ghast",[4670.97],4) Wait(1) CreateCreature("bpghast",[4523.179],4) Wait(1) CreateCreature("mumgre01",[4600.128],4)EndCutSceneMode()~EXIT