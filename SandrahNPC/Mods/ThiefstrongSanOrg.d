ADD_STATE_TRIGGER SHTH05 19
~!InParty("CVSandr")~

APPEND SHTH05
IF WEIGHT #-19~InParty("CVSandr") Global("PlayerThiefGuild","GLOBAL",1) OR(4) GlobalGT("aranjob","GLOBAL",1) GlobalGT("b!alternatives","GLOBAL",4)Global("WorkingForBodhi","Global",1) Dead("Aran")~THEN BEGIN 298
SAY@0
IF~GlobalGT("aranjob","GLOBAL",1)~THEN REPLY@1GOTO 300
IF~GlobalGT("b!alternatives","GLOBAL",4)~THEN REPLY@2GOTO 300
IF~OR(2) Global("WorkingForBodhi","Global",1) Dead("Aran")
~THEN REPLY@1GOTO 300
END

IF~InParty("CVSandr")~THEN BEGIN 299
SAY@0
IF~GlobalLT("aranjob","GLOBAL",2) GlobalLT("b!alternatives","GLOBAL",5)~GOTO 3
IF~Global("PlayerThiefGuild","GLOBAL",1)
GlobalGT("aranjob","GLOBAL",1)~THEN REPLY@1GOTO 300
IF~Global("PlayerThiefGuild","GLOBAL",1)
GlobalGT("b!alternatives","GLOBAL",4)~THEN REPLY@2GOTO 300
IF~Global("PlayerThiefGuild","GLOBAL",1)
InParty("CVSandr") OR(2) Global("WorkingForBodhi","Global",1) Dead("Aran")
~THEN REPLY@1GOTO 300
END

IF~~THEN BEGIN 300
SAY@3
IF~~THEN REPLY@4GOTO 301
END

IF~~THEN BEGIN 301
SAY@5
IF~~THEN DO~SetGlobal("JosterSilence","GLOBAL",1) SetGlobal("JosterLeave","GLOBAL",1) SetGlobalTimer("JosterReturn","GLOBAL",900000) SetGlobalTimer("JosterPaid","GLOBAL",900000) EscapeArea()~EXIT
END
END