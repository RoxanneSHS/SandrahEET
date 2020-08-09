BEGIN WatchMys

IF ~NumTimesTalkedTo(0)!InMyArea("DW#SKCAN")!PartyHasItem("GIFTOFM")~THEN BEGIN MysHint
SAY @0
IF ~~THEN REPLY @1DO ~GiveItemCreate("GIFTOFM",Player1,0,0,0)~EXIT
END

IF ~NumTimesTalkedTo(0) ~THEN BEGIN GoriWa
SAY @2
IF ~~THEN EXIT
END

IF ~NumTimesTalkedToGT(0) ~THEN BEGIN GoriWa2
SAY @3
IF ~~THEN EXIT
END

APPEND Jondal

IF WEIGHT #-1~NumTimesTalkedTo(0) Global("JonHit","GLOBAL",0) ~THEN BEGIN  1
SAY@4
=@5
=@6
IF~~THEN DO~CreateCreature("ERIK",[4185.1114],0) ActionOverride("Erik",Enemy()) Enemy() ~EXIT
END

IF WEIGHT #-1~NumTimesTalkedTo(1) Global("JonHit","GLOBAL",1) ~THEN BEGIN 2
SAY@7
IF~~THEN DO~SetGlobal("JonHit","GLOBAL",2) AddexperienceParty(400) ChangeEnemyAlly(Myself,NEUTRAL) ChangeEnemyAlly("Erik",NEUTRAL) ClearAllActions()  ActionOverride("Erik",EscapeAreaDestroy(90))  EscapeAreaDestroy(90)~EXIT
END

IF WEIGHT #-1~NumTimesTalkedTo(0) Global("JonHit","GLOBAL",1) ~THEN BEGIN 3
SAY@8
IF~~THEN DO~SetGlobal("JonHit","GLOBAL",2) AddexperienceParty(400) ChangeEnemyAlly(Myself,NEUTRAL)  ChangeEnemyAlly("Erik",NEUTRAL) ClearAllActions()  ActionOverride("Erik",EscapeAreaDestroy(90))  EscapeAreaDestroy(90)~EXIT
END
END

APPEND Erik
IF WEIGHT #-1~NumTimesTalkedTo(0) Global("JonHit","GLOBAL",1) ~THEN BEGIN 4
SAY@8
IF~~THEN DO~SetGlobal("JonHit","GLOBAL",2) AddexperienceParty(400) ChangeEnemyAlly(Myself,NEUTRAL)  ChangeEnemyAlly("Jondal",NEUTRAL) ClearAllActions()  ActionOverride("Jondal",EscapeAreaDestroy(90))  EscapeAreaDestroy(90)~EXIT
END
END