ADD_STATE_TRIGGER SHTH05 19
~!InParty("CVSandr")~

APPEND SHTH05
IF WEIGHT #-19~InParty("CVSandr") Global("PlayerThiefGuild","GLOBAL",1) OR(4) GlobalGT("aranjob","GLOBAL",1) GlobalGT("b!alternatives","GLOBAL",4)Global("WorkingForBodhi","Global",1) Dead("Aran")~ THEN BEGIN 298
SAY~Ah, there you are, <CHARNAME>, time to pay your quota to Renal, hihi.~
IF~ GlobalGT("aranjob","GLOBAL",1)~ THEN REPLY~ I do not owe anything to Renal anymore, *Jester*. You seem to be unaware that things have changed a bit around here. ~GOTO 300
IF~ GlobalGT("b!alternatives","GLOBAL",4)~ THEN REPLY~ I do not owe anything to the Shadow Thieves, *Jester*. You seem to be unaware that things have changed a bit around here. ~GOTO 300
IF~ OR(2) Global("WorkingForBodhi","Global",1) Dead("Aran")
~ THEN REPLY~ I do not owe anything to Renal anymore, *Jester*. You seem to be unaware that things have changed a bit around here. ~GOTO 300
END

IF~InParty("CVSandr")~ THEN BEGIN 299
SAY~Ah, there you are, <CHARNAME>, time to pay your quota to Renal, hihi.~
IF~GlobalLT("aranjob","GLOBAL",2) GlobalLT("b!alternatives","GLOBAL",5)~GOTO 3
IF~ Global("PlayerThiefGuild","GLOBAL",1)
GlobalGT("aranjob","GLOBAL",1)~ THEN REPLY~ I do not owe anything to Renal anymore, *Jester*. You seem to be unaware that things have changed a bit around here. ~GOTO 300
IF~ Global("PlayerThiegtfGuild","GLOBAL",1)
GlobalGT("b!alternatives","GLOBAL",4)~ THEN REPLY~ I do not owe anything to the Shadow Thieves, *Jester*. You seem to be unaware that things have changed a bit around here. ~GOTO 300
IF~ Global("PlayerThiefGuild","GLOBAL",1)
InParty("CVSandr") OR(2) Global("WorkingForBodhi","Global",1) Dead("Aran")
~ THEN REPLY~ I do not owe anything to Renal anymore, *Jester*. You seem to be unaware that things have changed a bit around here. ~GOTO 300
END

IF~~THEN BEGIN 300
SAY~ Why does nobody ever tell the messenger such things. What's up?~
IF~~THEN REPLY~ Renal has no means anymore to make demands here, just in case you haven't heard yet. This guild is under my control and mine alone. You better leave immediately before things get painful for you.~ GOTO 301
END

IF~~THEN BEGIN 301
SAY~ This had better be no bluff, <CHARNAME>. If I find out you lied, you will regret it.~
IF~~THEN DO~ SetGlobal("JosterSilence","GLOBAL",1) SetGlobal("JosterLeave","GLOBAL",1) SetGlobalTimer("JosterReturn","GLOBAL",900000) SetGlobalTimer("JosterPaid","GLOBAL",900000) EscapeArea()~EXIT
END
END