APPEND NTDextPB

IF WEIGHT #-1~  Global("NTotSCSpawn","BG0400",1) ~ THEN BEGIN 22
SAY ~YOU have killed them all. They were our lovers...our pets. No... it cannot be tolerated any longer...~
IF~~THEN REPLY~ Are you talking of those zombies or what?~ GOTO 23
IF~~THEN REPLY~ If those zombies were your lovers you have really strange tastes, ladies.~ GOTO 23
IF~~THEN REPLY~You must really have worn your lovers out judging from the state they were in when we met them.~ GOTO 23
END
  
IF~~THEN BEGIN 23
SAY~ You really fail to see the high arts of necromancy...but you will learn right now.~
IF ~~ THEN DO ~CreateCreature("NTDEATHK",[1553.3284],10) SetGlobal("DexterWrong","GLOBAL",1) SetGlobal("NTotSCSpawn","BG0400",2) ~ EXIT
END

IF WEIGHT #-2~AreaCheck("BG0400") GlobalGT("DexterWrong","GLOBAL",1)~ THEN BEGIN 24
  SAY ~Eeeeh, girls, isn't a high time to change the branch? Shouldn't we become the exclusive deliverers of intensive feelings for instance...~
  IF ~~ THEN DO ~CreateCreature("NTROACH",[1553.3284],10)~ EXIT
END
END