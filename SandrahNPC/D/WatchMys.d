BEGIN WatchMys

IF ~NumTimesTalkedTo(0)!InMyArea("DW#SKCAN")!PartyHasItem("GIFTOFM")~ THEN BEGIN MysHint
SAY ~ <CHARNAME>, The twerp's grown up, I see. Now, there was that young cleric girl that searched for you and your foster father. Didn't really get her name, Sanna maybe but she left me this to give you.~
IF ~ ~ THEN REPLY ~ And you have no idea who she was? Well, a great gift anyways. Good day, watcher. ~ DO ~ GiveItemCreate("GIFTOFM",Player1,0,0,0)~ EXIT
END

IF ~ NumTimesTalkedTo(0) ~ THEN BEGIN GoriWa
SAY ~ <CHARNAME>, The twerp's grown up, I see. Your foster father is searching for you. You will find him near the steps to the library. Hurry, young one. ~
IF ~~ THEN EXIT
END

IF ~ NumTimesTalkedToGT(0) ~ THEN BEGIN GoriWa2
SAY ~ Hurry, young one. Your foster father is waiting for you.~
IF ~~ THEN EXIT
END

APPEND Jondal

IF WEIGHT #-1~NumTimesTalkedTo(0) Global("JonHit","GLOBAL",0) ~ THEN BEGIN  1
SAY~Hey there <CHARNAME>!  I see you're up early this day.  Well your father, Gorion, has asked me a strange favour.  Seems like he wants you to learn some fighting and asked me to be the teacher.  So I hope you brought your staff with you. ~
=~Hostile creatures have red circles around their feet. Left-clicking within the circle will direct you to attack me. You can switch weapons using the Quick Weapons icons. The weapon outlined in green is the current weapon. Attack with fists only (empty quick slot) if you only wish to knock your opponent unconscious.  You don't have to worry about that with me, so use your staff.  If you have magical abilities, try casting a spell at me by left clicking on the spell icon at the bottom of the screen.  Left-click on one of the spells that come up and cast it on whichever target you want.  I just hope you have an offensive spell memorized.~
=~During our fight I'm going to spring a little surprise on you.  Remember, you can press the SPACE BAR at any time and pause the game.  This will give you time to think, especially once my little surprise comes up.  Are you ready now?  Good!~
IF~~THEN DO~ CreateCreature("ERIK",[4185.1114],0) ActionOverride("Erik",Enemy()) Enemy() ~EXIT
END

IF WEIGHT #-1~NumTimesTalkedTo(1) Global("JonHit","GLOBAL",1) ~ THEN BEGIN 2
SAY~You did good kid, especially after Erik started firing those arrows at ya.  I'm sure your father would be proud.  You should go talk to the Gatewarden if you want some experience in fighting with a group of people.  You can find him just south of here.  Out there it can be pretty important to know how to fight with allies at your side.~
IF~~THEN DO~ SetGlobal("JonHit","GLOBAL",2) AddexperienceParty(400) ChangeEnemyAlly(Myself,NEUTRAL) ChangeEnemyAlly("Erik",NEUTRAL) ClearAllActions()  ActionOverride("Erik",EscapeAreaDestroy(90))  EscapeAreaDestroy(90)~EXIT
END

IF WEIGHT #-1~NumTimesTalkedTo(0) Global("JonHit","GLOBAL",1) ~ THEN BEGIN 3
SAY~I was going to teach you a thing or two about fighting, but I see you are rather handy with that weapon already.  You should go talk to the Gatewarden if you want some experience in fighting with a group of people.  You can find him just south of here.  Out there it can be pretty important to know how to fight with allies at your side.~
IF~~THEN DO~SetGlobal("JonHit","GLOBAL",2) AddexperienceParty(400) ChangeEnemyAlly(Myself,NEUTRAL)  ChangeEnemyAlly("Erik",NEUTRAL) ClearAllActions()  ActionOverride("Erik",EscapeAreaDestroy(90))  EscapeAreaDestroy(90)~EXIT
END
END

APPEND Erik
IF WEIGHT #-1~NumTimesTalkedTo(0) Global("JonHit","GLOBAL",1) ~ THEN BEGIN 4
SAY~I was going to teach you a thing or two about fighting, but I see you are rather handy with that weapon already.  You should go talk to the Gatewarden if you want some experience in fighting with a group of people.  You can find him just south of here.  Out there it can be pretty important to know how to fight with allies at your side.~
IF~~THEN DO~ SetGlobal("JonHit","GLOBAL",2) AddexperienceParty(400) ChangeEnemyAlly(Myself,NEUTRAL)  ChangeEnemyAlly("Jondal",NEUTRAL) ClearAllActions()  ActionOverride("Jondal",EscapeAreaDestroy(90))  EscapeAreaDestroy(90)~EXIT
END
END