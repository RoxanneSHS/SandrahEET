BEGIN CViwdguy

IF~GlobalLT("Chapter","Global",3)NumTimesTalkedTo(0)~THEN BEGIN IWD10
SAY~Adventurers, maybe just the kind I was sent to look out for.~
IF~~THEN REPLY~You have an offer to make?~  GOTO IWD11
IF~~THEN REPLY~We have no time for any additional tasks, sorry.~ GOTO IWD11
END

IF~~THEN BEGIN IWD11
SAY~On closer look you may not yet qualify for the richess and fame that can be gained by helping Easthaven...maybe another day when you gained some merits.~
IF~~THEN REPLY~Easthaven, isn't that in Icewind Dale? ~GOTO IWD12
IF~~THEN REPLY~Easthaven is far in the north, isn't it? ~GOTO IWD12
IF~~THEN REPLY~You bore me already, guy, get lost.~EXIT
END

IF~~THEN BEGIN IWD12
SAY~If you're interested in more detail, come once you have proven yourself with some deeds. Heard there is some trouble down in Nashkel to be dealt with. Also, my cousin Brage from the guard down there seems to be missing.~
IF~~THEN REPLY~Be assured, you'll see us again.~EXIT
IF~~THEN REPLY~We had this on our agenda anyway.~EXIT
END

IF~GlobalGT("Chapter","Global",2)~THEN BEGIN IWD20
SAY~Qualified adventurers, maybe just the kind I was sent to look out for.~
IF~~THEN REPLY~You have an offer to make?~  GOTO IWD21
IF~~THEN REPLY~We have no time for any additional tasks, sorry.~ GOTO IWD21
END

IF~~THEN BEGIN IWD21
SAY~The town of Easthaven calls interested adventurers and mercenaries for a task that guarantees richess and fame ~
IF~~THEN REPLY~Easthaven, isn't that in Icewind Dale? ~GOTO IWD22
IF~~THEN REPLY~Easthaven is far in the north, isn't it? ~GOTO IWD22
IF~~THEN REPLY~You bore me already, guy, get lost.~EXIT
IF~~THEN REPLY~It does not hurt to listen to the details, I will decide afterwards.~GOTO IWD22
END

IF~~THEN BEGIN IWD22
SAY ~ Easthaven is a town in the Icewind Dale. Trouble has been reported up in the region and the neighbouring hamlett of Kuldahar asked for help.~
IF~Global("BrageRiddle","GLOBAL",2)~THEN GOTO IWD24
IF~!Global("BrageRiddle","GLOBAL",2)~THEN GOTO IWD23
END

IF~~THEN BEGIN IWD23
SAY~Before I give you the information you need to join the planned expedition, you need to do me some favour...oh, no I am not asking for gold...It is my cousin Brage. You have surely heard about him at Nashkel.~
=~Find him, bring him back alive, and Easthaven will await you.~
IF~~THEN REPLY~We will be back soon, no worry.~EXIT
IF~~THEN REPLY~We have better things to do. Forget it.~EXIT
END

IF~~THEN BEGIN IWD24
SAY~You need to go further north, follow the Upper Chionthar and still continue north.~
=~Here, I will mark it on your map. Good luck, adventurers.~
IF~~THEN DO~ RevealAreaOnMap("id1000") EscapeAreaDestroy(40)~ EXIT
END

IF~GlobalLT("Chapter","Global",3)!NumTimesTalkedTo(0)~THEN BEGIN IWD30
SAY~Nothing has changed yet, you lack experience still.~
IF~~THEN EXIT
END

