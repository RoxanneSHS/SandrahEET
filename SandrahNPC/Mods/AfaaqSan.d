CHAIN
IF WEIGHT #-9~InPartySlot(LastTalkedToBy,0) InParty("CVSandr") Global("A7BanterIntro","GLOBAL",1) Global("BanterActive","LOCALS",1) Global("A7IntroSan","LOCALS",0)~THEN A7Afaaq A7IntroSan1
~My <PRO_LADYLORD>, I see you are not travelling alone.~
DO~SetGlobal("A7BanterIntro","GLOBAL",2) IncrementGlobal("A7BanterIntroParty","GLOBAL",1)~
=~Would you care to introduce your companions to me?~
END
++~Sure, why not? I start with my cleric and counselor Sandrah of Waterdeep right here, extraordinary fighter and priestess of Mystra.~DO~SetGlobal("A7IntroSan","LOCALS",1)~+A7IntroSan2

CHAIN
IF~~THEN A7Afaaq A7IntroSan2
~I am honored to make your acquaintance, Sandrah. From <CHARNAME>'s glance when introducing you, I can tell you are more than a mere companion to <PRO_HIMHER>.~
==CVSandrJ~You have a sharp eye. Afaaq, yes, we are lovers in deed.~
==A7Afaaq~(Sigh) Lucky ones.~
==CVSandrJ~As much as I enjoy meeting you, it saddens me to see somebody in slavery.~
==A7Afaaq~Like a caged bird, dreaming to fly. Oh, how I long to see my home again.~
==CVSandrJ~Our company fights slavers where ever we find them. I am sure we will also find a way to enhance your position.~
==A7Afaaq~I am bound to the lamp which is in <CHARNAME>'s possession, not to <CHARNAME> <PRO_HIMHER>self.~
==CVSandrJ~I will study my tomes and consult my goddess. We will free you sooner or later.~
==A7Afaaq~Do not burden yourself with my own troubles. I am confident that it will not be a permanent state.~
END
++~There is no way to stop Sandrah when it comes to fight slavery. We will see.~+ 196

