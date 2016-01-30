APPEND CVSANDRJ
END

//Laran, aspiring squire on promenade

INTERJECT  ~B!LARAN~ 1 SanLaran1
== CVSandrJ IF ~ InParty("CVSandr") Gender(Player1,MALE)~ THEN ~Now that is something you do not see every day! A handsome young man like you, never been in a tavern?~
=  ~(Sandrah's eyes roam freely over his body) Your presence does enhance the ambience quite a bit.~
== ~B!LARAN~ IF ~ InParty("CVSandr") Gender(Player1,MALE)~THEN~ I'm Laran, a squire of the Order of the Radiant Heart, you see, and I'm to be deployed on the morrow - ~
== CVSandrJ IF ~ InParty("CVSandr") Gender(Player1,MALE)~ THEN ~ It sounds like a good idea to see something of life...before you may be forced to take one yourself in your duty. So tell me, was there anything else you wanted to try?~
== ~B!LARAN~ IF ~ InParty("CVSandr") Gender(Player1,MALE)~THEN ~(With the trace of a smile) Speaking to a lady of your incomparable beauty was not part of my original plan, but now that you are here before me, I can think of nothing I would enjoy more. Would you consider it?~
== CVSandrJ IF ~ InParty("CVSandr") Gender(Player1,MALE)~ THEN ~ We are speaking, Squire Laran. (Winks) Or did you have something in particular you wanted to say?~
== ~B!LARAN~ IF ~ InParty("CVSandr") Gender(Player1,MALE)~THEN ~Yes, but I would prefer to say it... privately. I have taken a room here, where we might speak freely... if you are willing...~
== CVSandrJ IF ~ InParty("CVSandr") Gender(Player1,MALE)~ THEN  ~Yes, Laran, I would like that.~
END ~B!LARAN~ 491

INTERJECT  ~B!LARAN~ 2 SanLaran1
== CVSandrJ IF ~ InParty("CVSandr") Gender(Player1,MALE)~ THEN ~Now that is something you do not see every day! A handsome young man like you, never been in a tavern?~
=  ~(Sandrah's eyes roam freely over his body) Your presence does enhance the ambience quite a bit.~
== ~B!LARAN~ IF ~ InParty("CVSandr") Gender(Player1,MALE)~THEN~ I'm Laran, a squire of the Order of the Radiant Heart, you see, and I'm to be deployed on the morrow -~
== CVSandrJ IF ~ InParty("CVSandr") Gender(Player1,MALE)~ THEN ~ It sounds like a good idea to see something of life...before you may be forced to take one yourself in your duty. So tell me, was there anything else you wanted to try?~
== ~B!LARAN~ IF ~ InParty("CVSandr") Gender(Player1,MALE)~THEN ~(With the trace of a smile) Speaking to a lady of your incomparable beauty was not part of my original plan, but now that you are here before me, I can think of nothing I would enjoy more. Would you consider it?~
== CVSandrJ IF ~ InParty("CVSandr") Gender(Player1,MALE)~ THEN ~ We are speaking, Squire Laran. (Winks) Or did you have something in particular you wanted to say?~
== ~B!LARAN~ IF ~ InParty("CVSandr") Gender(Player1,MALE)~THEN ~Yes, but I would prefer to say it... privately. I have taken a room here, where we might speak freely... if you are willing...~
== CVSandrJ IF ~ InParty("CVSandr") Gender(Player1,MALE)~ THEN  ~Yes, Laran, I would like that.~
END ~B!LARAN~ 491

APPEND  ~B!LARAN~
IF ~~ THEN BEGIN 491
SAY ~You honor me, lady... This way, please.~
IF ~~ THEN DO ~
ClearAllActions()
StartCutSceneMode()
Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2)
EndCutSceneMode()
~ EXIT
END
END