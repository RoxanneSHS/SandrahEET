BEGIN sandbl1

IF ~NumTimesTalkedTo(0) ~THEN BEGIN NarDplTr
SAY ~Please <PRO_SIRMAAM>, you need to help us. Look at my poor wife, she is badly hurt.~
IF~AreaCheck("bg2300")~THEN REPLY ~I have no time for you, I am in a hurry. Just go inside this compound and you will find a temple and a healer for your needs.~ GOTO NarDplT2
IF~AreaCheck("bg3200")~THEN REPLY ~I have no time for you, I am in a hurry. Just go inside this compound and you will find a mighty mage for your needs.~ GOTO NarDplT2b
IF~AreaCheck("bg2300")~THEN REPLY ~Sure, my healer will take care of your wife immediately. Right, Sandrah?~GOTO NarDplT2
IF~AreaCheck("bg3200")~THEN REPLY ~Sure, my healer will take care of your wife immediately. Right, Sandrah?~GOTO NarDplT2b
IF~AreaCheck("bg2300") ~THEN REPLY ~Good man, what has happened? Are those bandits attacking already within sight of the guards of the Friendly Arm?~GOTO NarDplT2
IF~AreaCheck("bg3200") ~THEN REPLY ~Good man, what has happened? Are those bandits attacking already within sight of the High Hedge?.~GOTO NarDplT2b
END

IF ~~THEN BEGIN NarDplT2
SAY~The Friendly Arm is of no help to us, neither is your healer. My wife was magically inflicted by a demon. Only you can help her.~
IF~~THEN REPLY ~Only me? How can you know that? What does she need?~GOTO NarDplT3
IF~~THEN REPLY ~Only me? You do not even know me. Wait, I think this is some kind of trap.~GOTO NarDplT3
END

IF ~~THEN BEGIN NarDplT2b
SAY~The High Hedge is of no help to us, neither is your healer. My wife was magically inflicted by a demon. Only you can help her.~
IF~~THEN REPLY ~Only me? How can you know that? What does she need?~GOTO NarDplT3
IF~~THEN REPLY ~Only me? You do not even know me. Wait, I think this is some kind of trap.~GOTO NarDplT3
END

IF ~~THEN BEGIN NarDplT3
SAY~Only the item you stole from the mighty Naronguth can help us and yourself now. Give it to me!~
IF~~THEN REPLY ~Ha, it is a trap. To arms, friends!~DO ~SetGlobal("NarDplTr","LOCALS",1)~GOTO NarDplT4
END

IF ~~THEN BEGIN NarDplT4
SAY~Fools!~
IF~~THEN DO ~StartCutSceneMode()
SmallWait(7)
CreateVisualEffectObject("SPFLESHS",Myself)
Enemy()
Polymorph(DOPPLEGANGER)
SmallWait(7)
Polymorph(DEATH_KNIGHT)
ActionOverride("SanDbl2",Polymorph(DOPPLEGANGER))
ActionOverride("SanDbl2",Enemy())
EndCutSceneMode()~EXIT
END