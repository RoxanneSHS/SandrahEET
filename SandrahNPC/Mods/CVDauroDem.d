CHAIN
IF~Global("SanDauroQ","GLOBAL",3) ~THEN CVDaudem TalkDauro
@0
DO~SetGlobal("SanDauroQ","GLOBAL",4)~
==CVDauro@1
==CVDaudem@2
==BSandr@3
==CVDaudem@4
=@5
==BSandr@6
==CVDaudem@7
DO~Enemy() StartCutSceneMode() CreateVisualEffect("spraised",[4606.225]) Wait(2)  CreateVisualEffect("spraised",[4670.97]) Wait(2) CreateVisualEffect("spraised",[4523.179]) Wait(2)CreateVisualEffect("spraised",[4600.128]) Wait(2) CreateCreature("ghoul",[4606.225],4) Wait(1) CreateCreature("ghast",[4670.97],4) Wait(1) CreateCreature("bpghast",[4523.179],4) Wait(1) CreateCreature("mumgre01",[4600.128],4)EndCutSceneMode()~EXIT