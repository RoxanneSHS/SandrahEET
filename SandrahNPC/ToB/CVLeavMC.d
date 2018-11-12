BEGIN CVLeavMC

IF~Global("SanBeginRTF","GLOBAL",0)~THEN BEGIN 4
SAY~You have nowhere to go from here yet.~
IF~~THEN DO~DestroySelf()~EXIT
END

IF~GlobalGT("SanBeginRTF","GLOBAL",0)~THEN BEGIN 0
SAY~By AO's verdict make sure you really want to leave Celestia. You will not be able to return until your mission is completed.~
IF~~THEN REPLY~Wait, I need to equip myself for the trip first.~GOTO 1
IF~~THEN REPLY~Take us to the Temple of Mystra.~GOTO 2
IF~~THEN REPLY~Take us to Clan Orc's Land.~GOTO 3
END

IF~~THEN BEGIN 1
SAY~Always at your service, God <CHARNAME>.~
IF~~THEN DO~DestroySelf()~EXIT
END

IF~~THEN BEGIN 2
SAY~As you wish, God <CHARNAME>.~
IF~~THEN DO~SetGlobal("K#DISABLE_PC_CAN_DIE","GLOBAL",1) ClearAllActions()StartCutSceneMode() StartCutScene("CVcut303")~EXIT
END

IF~~THEN BEGIN 3
SAY~As you wish, God <CHARNAME>.~
IF~~THEN DO~SetGlobal("K#DISABLE_PC_CAN_DIE","GLOBAL",1) ClearAllActions()StartCutSceneMode() StartCutScene("CVcut302")~EXIT
END
