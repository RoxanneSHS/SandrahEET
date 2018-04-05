BEGIN CVCedri

IF ~ Global("KarMovedIn","LOCALS",0)~ THEN BEGIN KarMovedIn1
SAY ~ Hello, I know you are friends of Henning the shop owner here. I was so sorry when I heard what has happened to our mutual friend. I am Cedric.~
IF~~THEN REPLY ~ Have you taken the chance to occupy his shop in the meantime, you little misfit? ~ GOTO KarMovedInRude
IF~~THEN REPLY ~ You are his friend as well, it is good that somebody takes care of his business in the meantime. We hope to find him soon.~ GOTO KarMovedInFr
END

IF ~~THEN BEGIN KarMovedInRude
SAY ~ No, no, I am his friend since I came to Nashkel. We are both in the trade but our wares are different and we can profit side by side. He has often already offered me a space in his shop, but I had not accepted his generosity. But I have taken care here when he was away in the past to acquire new wares. I think he would agree.~
IF~~THEN REPLY ~ I see, sorry if I appeared to be rude. We are a bit nervous after what had happened to Henning. ~ DO ~SetGlobal("KarMovedIn","LOCALS",1)~GOTO KarShop
END

IF ~~THEN BEGIN KarMovedInFr
SAY ~ I am so shocked by his kidnapping. I am his friend since I came to Nashkel. We are both in the trade but our wares are different and we can profit side by side. He has often already offered me a space in his shop, but I had not accepted his generosity. But I have taken care here when he was away in the past to acquire new wares. I think he would agree.~
IF~~THEN REPLY ~ It is good to see that care is been taken here. We will tell him about your help as soon as we find him. Hopefully that will be soon already.~ DO ~SetGlobal("KarMovedIn","LOCALS",1)~GOTO KarShop
END

IF~Global("KarMovedIn","LOCALS",1)~THEN BEGIN KarShop
SAY~ Are you interested to see my wares?~
IF~~THEN REPLY ~ Yes, let me see what you have to offer.~ DO ~ StartStore("sto4803",LastTalkedToBy(Myself))~ EXIT
IF~~THEN REPLY ~ No, maybe another time.~EXIT
END