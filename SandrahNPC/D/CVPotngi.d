BEGIN CVPOTNGI

IF~ !Global("SanDoPotn","GLOBAL",0) ~ THEN BEGIN Longpro
SAY~ Live long and prosperous.~
IF~~THEN DO~EscapeArea()~EXIT
END

IF~ Global("SanDoPotn","GLOBAL",0) !InParty("CVSandr")~ THEN BEGIN GoAway
SAY~ Attention!! Please be careful! Do not step on these Aescalus herb plants I am collecting. They are very useful and can do a lot of good.~
IF~~THEN REPLY~ Sorry, we will take a way around them. Farewell.~EXIT
IF~~THEN REPLY~ Valuable herbs? What can they do?~ GOTO GoAway2
END

IF~~ THEN BEGIN GoAway2
SAY~ You do not have anyone in your party that can make use of them. I can give you a sample of what they are used for if you want for 50GP.~
IF~~THEN REPLY~ Sure, I buy one.~ DO~ GiveItemCreate("potn55",Player1,1,0,0) TakePartyGold(50)~GOTO GoAway3
IF~~THEN REPLY~ I don't buy strange stuff from people I meet in the woods. Farewell.~GOTO GoAway4
END

IF~~ THEN BEGIN GoAway3
SAY~ Thank you, good <PRO_SIRMAAM>.~
IF~~THEN DO~EscapeArea()~EXIT
END

IF~~ THEN BEGIN GoAway4
SAY~ Your loss, good <PRO_SIRMAAM>.~
IF~~THEN DO~EscapeArea()~EXIT
END

CHAIN
IF~ Global("SanDoPotn","GLOBAL",0) InParty("CVSandr")~ THEN CVPOTNGI NewHeal1
~ Attention!! Please be careful! Do not step on these Aescalus herb plants I am collecting. They are very useful and can do a lot of good.~
DO~SetGlobal("SanDoPotn","GLOBAL",1) ~
==CVSandrJ~ In deed, <CHARNAME>, we should respect this knowledgeable lady. I know very well the value of her work.~
==CVPOTNGI~You are a healer, my lady?~
==CVSandrJ~ Yes, I am a priestess of Mystra specialising myself in healing bodies and minds.~
==CVPOTNGI~In this case you may have use of a sample of these herbs for your never ending work with such an adventurous party. Do you know how to handle the herb?~
==CVSandrJ IF~HasItem("Sanparc","CVSandr")~ THEN~ I have a magic device that can add your herb to a simple healing potion to enhance it significantly.~
==CVPOTNGI IF~HasItem("Sanparc","CVSandr")~ THEN~ In this case I am happy to give you some of my herbs for you to use in your work, please accept those gifts from one who has been saved by the skills of your profession in the past.~ DO~GiveItemCreate("cvheherb","CVSandr",5,5,0) EscapeArea()~
==CVSandrJ IF~!HasItem("Sanparc","CVSandr")~ THEN~ I have made myself a magic device once that can add your herb to a simple healing potion to enhance it significantly. Sadly I left it at home but maybe I will be able to regain it sometimes during our adventures.~
==CVPOTNGI IF~!HasItem("Sanparc","CVSandr")~ THEN~ In this case I am happy to give you some of my herbs as a sample hoping you will find a way to use them in the future, Please accept those gifts from one who has been saved by the skills of your profession in the past.~ DO~GiveItemCreate("cvheherb","CVSandr",5,5,0) EscapeArea()~ EXIT

