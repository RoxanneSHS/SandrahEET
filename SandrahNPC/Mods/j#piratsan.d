// Sil and the Pirates
INTERJECT J#PIRAT1 14 PiratediscoverG
== CVSandrJ IF ~ InParty("CVSandr") GlobalGT("SanSuBH","GLOBAL",18)~ THEN ~ As a seafaring man you have probably heard the name Monteelah...~ 
== J#PIRAT1 IF ~ InParty("CVSandr") GlobalGT("SanSuBH","GLOBAL",18)~ THEN ~  What are you suggesting, bloody wench!~
== CVSandrJ IF ~ InParty("CVSandr") GlobalGT("SanSuBH","GLOBAL",18)~ THEN ~  Huh? Just a simple question to a man of the sea...~
== CVSandrJ IF ~ InParty("CVSandr") GlobalGT("SanSuBH","GLOBAL",18) Global("SanLHpir","LOCALS",2)~ THEN ~ We found some interesting papers concerning ship movements on the Sea of Swords...~
== J#PIRAT1 IF ~ InParty("CVSandr") GlobalGT("SanSuBH","GLOBAL",18)~ THEN ~  You ask me for the king of the pirates, silly intruder...Boys, the game is up!~
=~TO ME!  WE ARE ATTACKED!~DO~SetGlobal("J#PirateFight","GLOBAL",1)Enemy()~
EXIT

INTERJECT J#PIRAT1 14 PiratediscoverL
== CVSandrJ IF ~ InParty("CVSandr") GlobalLT("SanSuBH","GLOBAL",18) Global("SanLHpir","GLOBAL",2)~ THEN ~We found some interesting papers concerning ship movements on the Sea of Swords...~
== J#PIRAT1 IF ~ InParty("CVSandr") GlobalLT("SanSuBH","GLOBAL",18) Global("SanLHpir","GLOBAL",2)~ THEN ~ What are you suggesting, bloody wench!~
== CVSandrJ IF ~ InParty("CVSandr") GlobalLT("SanSuBH","GLOBAL",18) Global("SanLHpir","GLOBAL",2)~ THEN ~ Maybe you are in a business where you have probably heard the name Monteelah...~
== J#PIRAT1 IF ~ InParty("CVSandr") GlobalLT("SanSuBH","GLOBAL",18) Global("SanLHpir","GLOBAL",2)~ THEN ~  You ask me for the king of the pirates, silly intruder...Boys, the game is up!~
=~TO ME!  WE ARE ATTACKED!~DO~SetGlobal("J#PirateFight","GLOBAL",1)Enemy()~
EXIT

INTERJECT J#PIRAT1  16  PiratediscoverpapG
== CVSandrJ IF ~ InParty("CVSandr") GlobalGT("SanSuBH","GLOBAL",18)~ THEN ~ As a seafaring man you have probably heard the name Monteelah...~
== J#PIRAT1 IF ~ InParty("CVSandr") GlobalGT("SanSuBH","GLOBAL",18)~ THEN ~  What are you suggesting, bloody wench!~
== CVSandrJ IF ~ InParty("CVSandr") GlobalGT("SanSuBH","GLOBAL",18)~ THEN ~  Huh? Just a simple question to a man of the sea...~
== CVSandrJ IF ~ InParty("CVSandr") GlobalGT("SanSuBH","GLOBAL",18) Global("SanLHpir","LOCALS",2)~ THEN ~ We found some interesting papers concerning ship movements on the Sea of Swords...~
== J#PIRAT1 IF ~ InParty("CVSandr") GlobalGT("SanSuBH","GLOBAL",18)~ THEN ~  You ask me for the king of the pirates, silly intruder...Boys, the game is up!~
=~TO ME!  WE ARE ATTACKED!~DO~SetGlobal("J#PirateFight","GLOBAL",1)Enemy()~
EXIT

INTERJECT J#PIRAT1  16  PiratediscoverpapL
== CVSandrJ IF ~ InParty("CVSandr") GlobalLT("SanSuBH","GLOBAL",18) Global("SanLHpir","GLOBAL",2)~ THEN ~We found some interesting papers concerning ship movements on the Sea of Swords...~
== J#PIRAT1 IF ~ InParty("CVSandr") GlobalLT("SanSuBH","GLOBAL",18) Global("SanLHpir","GLOBAL",2)~ THEN ~ What are you suggesting, bloody wench!~
== CVSandrJ IF ~ InParty("CVSandr") GlobalLT("SanSuBH","GLOBAL",18) Global("SanLHpir","GLOBAL",2)~ THEN ~ Maybe you are in a business where you have probably heard the name Monteelah...~
== J#PIRAT1 IF ~ InParty("CVSandr") GlobalLT("SanSuBH","GLOBAL",18) Global("SanLHpir","GLOBAL",2)~ THEN ~  You ask me for the king of the pirates, silly intruder...Boys, the game is up!~
=~TO ME!  WE ARE ATTACKED!~DO~SetGlobal("J#PirateFight","GLOBAL",1)Enemy()~
EXIT


EXTEND_TOP SIL 15 #3

IF ~Global("J#PirateFight","GLOBAL",4)
~ THEN REPLY  ~Those pirates will mean no harm to you any more. They attacked us and we had to kill them.~ GOTO 21
END