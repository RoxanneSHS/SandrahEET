CHAIN
IF WEIGHT #-9~InPartySlot(LastTalkedToBy,0) InParty("CVSandr") Global("A7BanterIntro","GLOBAL",1) Global("BanterActive","LOCALS",1) Global("A7IntroSan","LOCALS",0)~THEN A7Afaaq A7IntroSan1
@0
DO~SetGlobal("A7BanterIntro","GLOBAL",2) IncrementGlobal("A7BanterIntroParty","GLOBAL",1)~
=@1
END
++@2DO~SetGlobal("A7IntroSan","LOCALS",1)~+A7IntroSan2

CHAIN
IF~~THEN A7Afaaq A7IntroSan2
@3
==CVSandrJ@4
==A7Afaaq@5
==CVSandrJ@6
==A7Afaaq@7
==CVSandrJ@8
==A7Afaaq@9
==CVSandrJ@10
==A7Afaaq@11
END
++@12+ 196

CHAIN
IF WEIGHT #-9~Global("A7IntroSan","LOCALS",2) See("CVSandr") InParty("CVSandr") ~THEN A7Afaaq A7SanDrowfree
@13
DO~SetGlobal("A7IntroSan","LOCALS",3) ~
==CVSandrJ@14
==A7Afaaq@15
==CVSandrJ@16
==A7Afaaq@17EXIT

EXTEND_BOTTOM A7arab01 1
IF~CheckStatLT(LastTalkedToBy,16,CHR) CheckStatLT(LastTalkedToBy,16,INT)InParty("CVSandr")~THEN REPLY@18GOTO 11
END