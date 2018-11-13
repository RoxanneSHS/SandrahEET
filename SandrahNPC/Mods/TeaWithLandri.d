APPEND Landri

IF WEIGHT #-1~Global("HelpLandrin","GLOBAL",3) AreaCheck("BG2303")~THEN BEGIN GoHome
SAY~I have decided to take the risk of the roads and move back home. Come and visit me for a cup of tea if you like, dear.~
IF~~THEN DO~SetGlobal("HelpLandrin","GLOBAL",4) MoveToPoint([482.818]) MoveBetweenAreas("BG3315",[334.283],0)~
EXIT
END

IF WEIGHT #-1~Global("HelpLandrin","GLOBAL",4) AreaCheck("BG3315")~THEN BEGIN AtHome
SAY~Oh, my dear rescuers! Would you have a cup of tea with me?~
IF~~THEN REPLY~It would be a pleasure, Landrin.~DO~ActionOverride(Player1,ForceSpell(Myself,CLERIC_CURE_LIGHT_WOUNDS)) ActionOverride(Player2,ForceSpell(Myself,CLERIC_CURE_LIGHT_WOUNDS)) ActionOverride(Player3,ForceSpell(Myself,CLERIC_CURE_LIGHT_WOUNDS)) ActionOverride(Player4,ForceSpell(Myself,CLERIC_CURE_LIGHT_WOUNDS))ActionOverride(Player5,ForceSpell(Myself,CLERIC_CURE_LIGHT_WOUNDS)) ActionOverride(Player6,ForceSpell(Myself,CLERIC_CURE_LIGHT_WOUNDS)) ~EXIT
IF~~THEN REPLY~Get lost, old hag. The spiders may digest you.~EXIT 
END

END