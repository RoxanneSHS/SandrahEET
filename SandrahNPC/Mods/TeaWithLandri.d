APPEND Landri

IF WEIGHT #-1~Global("HelpLandrin","GLOBAL",3) AreaCheck("BG2303")~THEN BEGIN GoHome
SAY@0
IF~~THEN DO~SetGlobal("HelpLandrin","GLOBAL",4) MoveToPoint([482.818]) MoveBetweenAreas("BG3315",[334.283],0)~
EXIT
END

IF WEIGHT #-1~Global("HelpLandrin","GLOBAL",4) AreaCheck("BG3315")~THEN BEGIN AtHome
SAY@1
IF~~THEN REPLY@2DO~ActionOverride(Player1,ForceSpell(Myself,CLERIC_CURE_LIGHT_WOUNDS)) ActionOverride(Player2,ForceSpell(Myself,CLERIC_CURE_LIGHT_WOUNDS)) ActionOverride(Player3,ForceSpell(Myself,CLERIC_CURE_LIGHT_WOUNDS)) ActionOverride(Player4,ForceSpell(Myself,CLERIC_CURE_LIGHT_WOUNDS))ActionOverride(Player5,ForceSpell(Myself,CLERIC_CURE_LIGHT_WOUNDS)) ActionOverride(Player6,ForceSpell(Myself,CLERIC_CURE_LIGHT_WOUNDS)) ~EXIT
IF~~THEN REPLY@3EXIT 
END

END