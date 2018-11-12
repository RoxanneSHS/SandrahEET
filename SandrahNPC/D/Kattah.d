BEGIN Kattah

IF~Global("Katcut","GLOBAL",3) ~THEN BEGIN KattahHut
SAY ~You not get mighty Khattark! More men be here soon. Stop or baby die!~
IF ~~THEN REPLY ~Ha, do not be a fool, you might be strong but we outnumber you. Kill the baby and you have no chance to escape. ~GOTO Kattadeal
END

IF ~~THEN BEGIN Kattadeal
SAY ~You threaten mighty Khattark. NO! I have baby hostage.~
IF ~~THEN REPLY ~No need to worry, mighty bandit chief. We have come with gold to pay the ransom for the child. Take this bag of gold and give us the baby. You can leave as a free man. ~GOTO KatGold
IF ~~THEN REPLY ~No need to get your hands bloody on a little child. Take a real warrior instead. I will be your hostage and you give my friends the baby.~GOTO Sanhost
IF ~~THEN REPLY ~You make a big mistake, monster. Die! ~DO ~ChangeEnemyAlly("Kattah",ENEMY) ~EXIT
IF ~~THEN REPLY ~(Bluff) The Waterdeep militia is on their way already. The hut will be surrounded in a little while. Give us the child and run while you still have a chance to escape.~GOTO KatBluff
END

IF ~~THEN BEGIN Sanhost
SAY ~Ha, here baby...Now you suffer, fool~
IF~~THEN DO ~GiveItemCreate("HIBABA",Player1,0,0,0) ApplyDamagePercent(Player1,60,CRUSHING) SetGlobal("Katcut","GLOBAL",4) EscapeAreaMove("CVSEW1",2543,1287,12)~EXIT
END


IF ~~THEN BEGIN KatGold
SAY ~You swear, no tricks. ~
IF ~~THEN DO ~TakePartyGold(2000) GiveItemCreate("HIBABA",Player1,0,0,0) SetGlobal("Katcut","GLOBAL",4) EscapeAreaMove("CVSEW1",2543,1287,12) ~EXIT
END

IF ~~THEN BEGIN KatBluff
SAY ~Ha, militia no get Khattark, no hang Khattark!~
IF ~~THEN DO ~GiveItemCreate("HIBABA",Player1,0,0,0) SetGlobal("Katcut","GLOBAL",4) EscapeAreaMove("CVSEW1",2543,1287,12) ~ EXIT
END