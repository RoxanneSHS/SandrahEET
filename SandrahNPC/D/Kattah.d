BEGIN Kattah

IF~Global("Katcut","GLOBAL",3) ~THEN BEGIN KattahHut
SAY @0
IF ~~THEN REPLY @1GOTO Kattadeal
END

IF ~~THEN BEGIN Kattadeal
SAY @2
IF ~~THEN REPLY @3GOTO KatGold
IF ~~THEN REPLY @4GOTO Sanhost
IF ~~THEN REPLY @5DO ~ChangeEnemyAlly("Kattah",ENEMY) ~EXIT
IF ~~THEN REPLY @6GOTO KatBluff
END

IF ~~THEN BEGIN Sanhost
SAY @7
IF~~THEN DO ~GiveItemCreate("HIBABA",Player1,0,0,0) ApplyDamagePercent(Player1,60,CRUSHING) SetGlobal("Katcut","GLOBAL",4) EscapeAreaMove("CVSEW1",2543,1287,12)~EXIT
END


IF ~~THEN BEGIN KatGold
SAY @8
IF ~~THEN DO ~TakePartyGold(2000) GiveItemCreate("HIBABA",Player1,0,0,0) SetGlobal("Katcut","GLOBAL",4) EscapeAreaMove("CVSEW1",2543,1287,12) ~EXIT
END

IF ~~THEN BEGIN KatBluff
SAY @9
IF ~~THEN DO ~GiveItemCreate("HIBABA",Player1,0,0,0) SetGlobal("Katcut","GLOBAL",4) EscapeAreaMove("CVSEW1",2543,1287,12) ~ EXIT
END