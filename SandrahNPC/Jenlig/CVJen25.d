BEGIN CVJen25
BEGIN CVJEN25P

CHAIN
IF~Global("CVJenTOBRet","GLOBAL",3)~THEN CVJen25 TobAppear1
~(Hiss...)~
DO~SetGlobal("CVJenTOBRet","GLOBAL",4)~
==CVSan25J~Jen'lig, where do you come from - oh, wait, you are badly injured.~DO~ForceSpell("CVJenlig",CLERIC_CURE_SERIOUS_WOUNDS)~
END
++~Jen'lig!~+ TobAppear2

CHAIN
IF~~THEN CVJen25 TobAppear2
~(Hiss) Much better, g'lathk Sandrah, Jen'lig needed. Good that found commander and old cadre in strange place.~
==CVSan25J~How did you know how to find us, we hardly know ourselves where we are?~
==CVJen25~Jen'lig follow astral silver cord of manling Sarevok killed by cadre before, led to here.~
=~Commander has own plane now?~
==CVSan25J~A small pocket plane in the Abyss made by willpower from the essence of <CHARNAME>'s father.~
 ==CVJen25~Any place good for Jen'lig when commander and companion Sandrah there.~
 =~Now rest for heal, talk later for report.~DO~RestParty()~EXIT
 
 CHAIN
 IF~Global("CVJenTOBRet","GLOBAL",4)~THEN CVJen25 TobAppear3
~(Hiss...) You wake?~
==CVSan25J~ Your recovery of the silver sword and your meeting with Queen Vlaakith have not turned out according to your plan - or are you here on another mission?~
==CVJen25~Sandrah see good, as always. Queen alive, Jen'lig alive. Alive but had to flee from Tu'narath home to survive. Queen not agree that Jen'lig must remain own unassimilated for sake of githyanki race, (Hiss).~
=~Jen'lig travel some planes but always found and hunted by own kin.~
=~Found cord of Sarevok foe and not cut with sword but follow by instinct.~
==CVSan25J~Your kin and queen cannot follow you here without <CHARNAME>'s consent.~
==CVJen25~Cadre of commander only community left for Jen'lig outside astral plane.~
END
++~You are save here and welcome to stay as long as you want.~DO~SetGlobal("CVJenTOBRet","GLOBAL",5)~EXIT
++~The safest place for you will be in our company and we can make good use of your skills as well. Welcome back.~DO~SetGlobal("CVJenTOBRet","GLOBAL",6) JoinParty()~EXIT

CHAIN
IF~ Global("CVJenTOBRet","GLOBAL",5)~THEN CVJen25 TobAppear4
~Commander <CHARNAME> come for Jen'lig?~
END
++~You are save here and welcome to stay as long as you want.~EXIT
++~The safest place for you will be in our company and we can make good use of your skills as well. Welcome back.~DO~SetGlobal("CVJenTOBRet","GLOBAL",6) JoinParty()~EXIT



CHAIN
IF~Global("IWasKickedOut","LOCALS",1)~THEN CVJen25P TobResume
~Commander <CHARNAME> come for Jen'lig?~
END
++~You are save here and welcome to stay as long as you want.~EXIT
++~The safest place for you will be in our company and we can make good use of your skills as well. Welcome back.~DO~SetGlobal("IWasKickedOut","LOCALS",0) JoinParty()~EXIT

CHAIN
IF~!InParty(Myself)~THEN CVJen25P Kicked
~Commander break bond with Jen'lig now?~
END
++~The safest place for you will be in our company and we can make good use of your skills as well. I made a mistake.~DO~JoinParty()~EXIT
++~For the time you need to return to the safety of my enclave in the Abyss.~DO~SetGlobal("IWasKickedOut","LOCALS",1) EscapeAreaMove("AR4500",1999,1218,0)~EXIT 
