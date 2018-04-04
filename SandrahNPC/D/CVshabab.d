BEGIN CVshabab

IF ~ GlobalLT("SanSharInt","GLOBAL",36)!Global("SanSharCom","GLOBAL",8)~ THEN BEGIN SanSharGorBirth
SAY ~ Ahh! Lover-boy...not a minute too soon...~
IF ~~THEN EXIT
END

BEGIN SanKaBa

CHAIN
IF~Global("SanSharInt","GLOBAL",40)~ THEN CVshabab KhaliBab1
~*As you enter the Commander's house you see your son and his wonderful mother standing side by side at a cradle-like furniture and occupied by dealing with something hidden from your view.~
DO~SetGlobal("SanSharInt","GLOBAL",41)~
==Sangori~Pa-pa.~
==SanKaBa~Weeen.~
==CVshabab~Loverboy...psst, ah, forget it, she's awake now anyway.~
=~Come over here, greatest hero, and look at your best deed ever - apart from our little boy that is.~
==Sangori~My sister. She is beautiful.~
==CVshabab~Tell her papa what her name is, my boy.~
==Sangori~My sister Khalindra.~
==CVshabab~She was born two days ago but we could not locate you at the time...~
END
++~Khalindra, how wonderful she is, just like her mother. *You take your little family in your arms while you report to Shar-Teel the events that have prevented you from being by her side for the birth.*~+ KhaliBab2

CHAIN
IF~~THEN CVshabab KhaliBab2
~*Shar-Teel kisses you passionately.*~
=~At one time I would have envied you and those with you for those adventures. Now I find that being Waterdeep's Commander and mother of two can be an even bigger adventure for me.~
==SanKaBa~Weeen.~
==Sangori~Gorion will be big hero to help mama and protect Khalindra.~
END
++~It is good to know that there is always a strong man in this house of strong women, Gorion.~DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() RestParty()~
EXIT

CHAIN
IF ~Global("SanSharNewHome","GLOBAL",1)GlobalGT("SanSharInt","GLOBAL",35)~ THEN CVshabab SanSharCap1
~Loverboy!!!~
=~Welcome to your new home! Gorion quick, my boy, say hello to papa.~
DO~SetGlobal("SanSharNewHome","GLOBAL",2)~
==Sangori~Pa-pa.~
==BSandr~Congratulation, wildcat, or do I need to say Lord Commander...~
==CVshabab~Psst, well, yes. But you know your home town's customs well, pussycat, this is not to be trumpeted out into the public.~
==BSandr~I consider myself part of the family...in a way.~
==CVshabab ~Of course you are...~
=~But now, <CHARNAME>, stop standing there like a stooge. Your family waits for you...~
DO~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~EXIT

CHAIN
IF~ Global("SanSharNewHome","GLOBAL",2) InParty("ADangel") See("ADAngel") Global("AngelinWDS","LOCALS",0) ~THEN CVshabab SanSharCapA1
~ I love you, <CHARNAME>, my man...What the hell...!!~
DO~SetGlobal("AngelinWDS","LOCALS",1)~
==IF_FILE_EXISTS ADAngelJ ~...Shar-Teel?~
==CVshabab ~Who brought that swine into my home? Are you mad, <CHARNAME>!!! Take that filth away from our boy.~
==Sangori~Ma-ma angry.~
==IF_FILE_EXISTS ADAngelJ ~Please, daughter...oh, <CHARNAME>, tell her I've changed, chief.~
==Sangori ~ Bad man?~
END
++~ Your father is now travelling with us, my love. He was changed quite a bit since the old days. Please give him a chance like I did, after all he is Gorion's granddad.~+Angel1
++~I told you, Angelo, it wasn't a good idea to come here.~+Angel1

CHAIN
IF~ Global("SanSharNewHome","GLOBAL",3)InParty("ADangel") See("ADAngel") Global("AngelinWDS","LOCALS",0)~THEN CVshabab SanSharCapA2
~ Welcome, <CHARNAME>, always good to see you and your friends around here. ~
=~Friends?? WHAT IS THAT??~
DO~SetGlobal("AngelinWDS","LOCALS",1)~
==IF_FILE_EXISTS ADAngelJ ~...Shar-Teel?~
==CVshabab ~Who brought that swine into my home? Are you mad, <CHARNAME>!!! Take that filth out immediately.~
==IF_FILE_EXISTS ADAngelJ ~Please, daughter...oh, <CHARNAME>, tell her I've changed, chief.~
END
++~ Your father is now travelling with us, my love. He was changed quite a bit since the old days. Please give him a chance like I did.~+Angel2
++~I told you, Angelo, it wasn't a good idea to come here.~+Angel2

CHAIN
IF~ Global("SanSharNewHome","GLOBAL",2)~THEN CVshabab SanSharCap2
~ I love you, <CHARNAME>, my man.~
==Sangori~Pa-pa!~
END
++~ I love you, Shar-Teel, my woman. I love you, Gorion.~ EXIT

CHAIN
IF~~THEN CVshabab Angel1
~Hm, there must be a good reason you let him travel with you. Has our Pussycat healer inserted a brain into his empty nutshell head after all?~
==Sangori~Grand-pa?~
==IF_FILE_EXISTS ADAngelJ ~ There are many things I have done wrong in my life, Shar-Teel, especially to you. Since I travel with <CHARNAME> I have gained insight into some or the other mistake, believe me.~
==CVshabab~I will not shed your blood in front of the child unless you make a false move. Know however, you are neither dad nor granddad in this house. And one false move within the Watergate city limits and you'll rot in Undermountain, I swear it.~
==IF_FILE_EXISTS ADAngelJ ~ It's good to see you take your occupation seriously, as mother as well as Commander.~EXIT

CHAIN
IF ~Global("SanSharNewHome","GLOBAL",1)Global("SanSharCom","GLOBAL",8)~ THEN CVshabab SanSharCap3
~<CHARNAME>!!~
=~Welcome to the Waterdeep commander's home! Gorion quick, my boy, say hello to our friends.~
DO~SetGlobal("SanSharNewHome","GLOBAL",3)~
==Sangori~Big heroes.~
==BSandr~Congratulation, wildcat, or do I need to say Lord Commander...~
==CVshabab~ Psst, well, yes. But you know your home town's customs well, Pussycat, this is not to be trumpeted out into the public.~
==BSandr~Anyway, It is good to know that my home town's safety is in capable hands.~
END
++~You named your child Gorion? You are full of surprises, Shar-Teel.~EXIT

CHAIN
IF~ Global("SanSharNewHome","GLOBAL",3)~THEN CVshabab SanSharCap4
~ Welcome, <CHARNAME>, always good to see you and your friends around here.~
==Sangori~I will be hero myself one day, yes, sir.~
END
++~ Sure you will, Gorion. Your splendid mother will take care of that.~ EXIT


 CHAIN
IF~~THEN CVshabab Angel2
~Hm, there must be a good reason you let him travel with you. Has our Pussycat healer inserted a brain into his empty nutshell head after all?~
==IF_FILE_EXISTS ADAngelJ ~ There are many things I have done wrong in my life, Shar-Teel, especially to you. Since I travel with <CHARNAME> I have gained insight into some or the other mistake, believe me.~
==CVshabab~I will not shed your blood in my own home unless you make a false move. Know however, you are neither dad nor friend in this house. And one false move within the Watergate city limits and you'll rot in Undermountain, I swear it.~
==IF_FILE_EXISTS ADAngelJ ~ It's good to see you take your occupation seriously, as chief's wife as well as Commander.~EXIT