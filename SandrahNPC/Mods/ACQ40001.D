BEGIN ACQ40001
IF ~Global("ACQ4","GLOBAL",1)OR(2)CLASS(LastTalkedToBy(),THIEF_ALL)CLASS(LastTalkedToBy(),BARD_ALL)~ THEN BEGIN 1
SAY ~Hello, <PRO_GIRLBOY>. Ya'll look like ya willin' to gain some easy money, right?~
IF~~ THEN REPLY ~ Depends on what you propose.~ DO ~SetGlobal("ACQ4","GLOBAL",2)~ GOTO 2
IF~~ THEN REPLY ~ You can bet on that, man.~ DO ~SetGlobal("ACQ4","GLOBAL",2)~ GOTO 3
IF~~ THEN REPLY ~ Something tells me it won't be totally legal, right?~ DO ~SetGlobal("ACQ4","GLOBAL",2)~ GOTO 4
END

IF ~Global("ACQ4","GLOBAL",1)!CLASS(LastTalkedToBy(),THIEF_ALL)!CLASS(LastTalkedToBy(),BARD_ALL)~ THEN BEGIN 1a
SAY ~ Ya look like a strictly honest <PRO_RACE>. Eeh...sorry I held ya up.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
SAY ~ Maybe another time.~ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
SAY ~ Maybe another time.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
SAY ~ Maybe another time.~
IF ~~ THEN EXIT
END

