BEGIN  CVKNAW

CHAIN
IF~ Global("OrcPrison","GLOBAL",10)~ THEN CVKNAW SD1
~ The Red Head. Your boy will die. You are all fools to come here. Why not wait - boy could live.~
DO ~ SetGlobal("OrcPrison","GLOBAL",11)  AddexperienceParty(44550)~
== HENNING ~ Ouuh, Imoen...(Henning is unconcious.)~
== BIMOEN2 ~ My love, my only love, wait, we are here, you will not die. SANDRAH!!!~
== BSandr ~ (Sandrah has already knelt down beside Henning and has stopped the bleeding at his chest.) Psst, Imoen, all will be well, he is just unconscious, he will live.~
== BIMOEN2 ~ Swear it to me, besta healer friend, please, please, please...~
== BSandr ~ I swear it, Imoen, he will survive. But we have to act quickly.~
END
++ ~ Your end has come, Knawlod. We know about Travenhurst already, we know all you have done, beast.~ + SD2
++ ~ If this man dies you will die as well, Knawlod. Save your life and tell us all you know.~DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~ + SD2

CHAIN
IF~~ THEN CVKNAW SD2
~ Travenhurst wants men out of way 'cause know too much. Boy would tell Red Head and make fail all big plans. But men not be killed or Davaeorn kill Knawlod. Travenhurst give much money for kidnap.~
== BIMOEN2 ~ Don't worry for this *NOBLEMAN* (spits), he will not be able to harm anyone when Imoen the Magnificent has dealt with him.~
== BSandr ~ I will leave this Knawlod business to you, <CHARNAME>, and to Imoen. I will care for Henning meanwhile.~
== BIMOEN2 ~ Oh please, besta healer in the Realms, you must and must heal my sweetheart quickest.~
== CVKNAW ~ You kill all Knawlod men. You kill Rellruk, no bad - was worthless orc. You take hostage back. You not get Knawlod and not get Davaeorn.~
END
++ ~ You make one error after another, orc. You all underestimate Red Head's power.~ + SD3


CHAIN
IF ~~ THEN CVKNAW SD3
~ You not leave this place.~
DO ~ ChangeEnemyAlly("CVKNAW",ENEMY) Attack(NearestEnemyOf(Myself)) ~
EXIT