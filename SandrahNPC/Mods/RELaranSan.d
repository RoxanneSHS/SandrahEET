APPEND CVSANDRJ
END

//Laran, aspiring squire on promenade

INTERJECT  ~B!LARAN~1 SanLaran1
== CVSandrJ IF ~InParty("CVSandr") Gender(Player1,MALE)~THEN @0
=  @1
== ~B!LARAN~IF ~InParty("CVSandr") Gender(Player1,MALE)~THEN@2
== CVSandrJ IF ~InParty("CVSandr") Gender(Player1,MALE)~THEN @3
== ~B!LARAN~IF ~InParty("CVSandr") Gender(Player1,MALE)~THEN @4
== CVSandrJ IF ~InParty("CVSandr") Gender(Player1,MALE)~THEN @5
== ~B!LARAN~IF ~InParty("CVSandr") Gender(Player1,MALE)~THEN @6
== CVSandrJ IF ~InParty("CVSandr") Gender(Player1,MALE)~THEN  @7
END ~B!LARAN~491

INTERJECT  ~B!LARAN~2 SanLaran1
== CVSandrJ IF ~InParty("CVSandr") Gender(Player1,MALE)~THEN @0
=  @1
== ~B!LARAN~IF ~InParty("CVSandr") Gender(Player1,MALE)~THEN@8
== CVSandrJ IF ~InParty("CVSandr") Gender(Player1,MALE)~THEN @3
== ~B!LARAN~IF ~InParty("CVSandr") Gender(Player1,MALE)~THEN @4
== CVSandrJ IF ~InParty("CVSandr") Gender(Player1,MALE)~THEN @5
== ~B!LARAN~IF ~InParty("CVSandr") Gender(Player1,MALE)~THEN @6
== CVSandrJ IF ~InParty("CVSandr") Gender(Player1,MALE)~THEN  @7
END ~B!LARAN~491

APPEND  ~B!LARAN~
IF ~~THEN BEGIN 491
SAY @9
IF ~~THEN DO ~
ClearAllActions()
StartCutSceneMode()
Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2)
EndCutSceneMode()
~EXIT
END
END