CHAIN
IF WEIGHT #-9~!InPartySlot(LastTalkedToBy,0)Global("CVSandrsalvanas","LOCALS",0) IsGabber("CVSandr")InParty("CVSandr") See("CVSandr") !StateCheck("CVSandr",STATE_SLEEPING) ~THEN Salvanas San1
@0
DO~SetGlobal("CVSandrsalvanas","LOCALS",1) ~
==BSandr@1
==Salvanas@2
==BSandr@3
=@4
==Salvanas@5
==BSandr@6
==Salvanas@7
==BSandr@8
==Salvanas@9
==BSandr@10
DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF WEIGHT #-8~!InPartySlot(LastTalkedToBy,0)Global("CVSandrsalvanas","LOCALS",1) IsGabber("CVSandr")InParty("CVSandr") See("CVSandr") !StateCheck("CVSandr",STATE_SLEEPING)~THEN Salvanas San2
@11
DO~SetGlobal("CVSandrsalvanas","LOCALS",2) ~
==BSandr@12
==Salvanas@13
==BSandr@14
==Salvanas@15
==BSandr@16
==Salvanas@17
==BSandr@18
DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT