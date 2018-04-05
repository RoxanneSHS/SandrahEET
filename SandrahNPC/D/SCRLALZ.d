BEGIN SCRLALZ

IF ~
Global("ScrlalzT","GLOBAL",1)
OR(3)
Global("SanNarQ","GLOBAL",0)
Global("SanNarQ","GLOBAL",1)
Global("SanNarQ","GLOBAL",2)
~ THEN BEGIN Scrltlk1
SAY ~Great Alzaligrundel, what is your order?~
IF ~~ THEN REPLY ~Who are you? What can you do for me? ~ GOTO Scrltlk2
END

IF~~ THEN BEGIN  Scrltlk2
SAY ~ (It sounds like the scroll clears its *throat*)~
IF ~!Global("UsedScrlPort","GLOBAL",1)~ THEN REPLY ~Master, do you want me to open the portal? ~ GOTO Port
IF ~!Global("UsedScrlLoc","GLOBAL",1)~ THEN REPLY ~Master, shall I locate your arch enemy? ~ GOTO Locate
IF ~!Global("UsedScrlRock","GLOBAL",1)~ THEN REPLY ~Master, do you want me to create a stone? ~ GOTO Stone
IF ~Global("UsedScrlRock","GLOBAL",1)~ THEN REPLY ~Master, do you still want me to create stones? ~ GOTO Stone3
IF ~Global("UsedScrlRock","GLOBAL",2)~ THEN REPLY ~Master, do you still want me to create stones? ~ GOTO Stone3
IF ~~ THEN REPLY ~Master, do you want me to retire? ~ GOTO Retire
END

IF~~ THEN BEGIN  Stone
SAY ~ Master, wants a stone.~
IF ~~ THEN REPLY ~Make me a stone. ~ DO ~GiveItemCreate("MISC42",Player1,0,0,0)~ GOTO Stone2
END

IF~~ THEN BEGIN  Retire
SAY ~ Master, I wait for you.~
IF ~~ THEN REPLY ~Retire. ~ EXIT
END

IF~~ THEN BEGIN  Port
SAY ~ We are not near the portal now. ~
IF ~~ THEN DO ~ AddJournalEntry(@17,QUEST) SetGlobal("UsedScrlPort","GLOBAL",1) ~ EXIT
END

IF~~ THEN BEGIN  Locate
SAY ~ The Arch enemy is in his lair.~
IF ~~ THEN REPLY ~Who? Where?. ~ GOTO Locate2
END

IF ~~ THEN BEGIN Stone2
SAY ~ Do you want a larger stone, FALSE MASTER? ~
IF ~~ THEN REPLY ~Make me another stone. ~ DO ~GiveItemCreate("SanRock",Player1,0,0,0) SetGlobal("UsedScrlRock","GLOBAL",1)~EXIT
END

IF~~ THEN BEGIN  Locate2
SAY ~ The fiend N. is in his new lair in the southern mountains, wait...~
= ~ Mountains that peak the sky, water running and falling...mist...I can see no more, too much mist...~
IF ~~ THEN REPLY ~Retire now. ~ DO ~ AddJournalEntry(@21,QUEST) SetGlobal("UsedScrlLoc","GLOBAL",1) ~EXIT
END

IF ~~ THEN BEGIN Stone3
SAY ~ Do you want even more stones, FALSE MASTER? ~
IF ~~ THEN DO ~GiveItemCreate("SanRock",Player1,10,0,0) SetGlobal("UsedScrlRock","GLOBAL",2)~EXIT
IF ~~ THEN REPLY ~Retire. ~ EXIT
END

IF ~
Global("ScrlalzT","GLOBAL",2)
OR(3)
Global("SanNarQ","GLOBAL",0)
Global("SanNarQ","GLOBAL",1)
Global("SanNarQ","GLOBAL",2) ~ THEN BEGIN NoPortal
SAY ~ Master, make your choice now~
IF ~~ THEN REPLY ~Open the portal. ~ GOTO Port2
IF ~~ THEN REPLY ~Make me a stone. ~ DO ~GiveItemCreate("SanRock",Player1,10,0,0) ~EXIT
IF ~~ THEN REPLY ~Retire. ~ EXIT
END

IF~~ THEN BEGIN  Port2
SAY ~ We are not near the portal now. ~ 
IF ~~ THEN EXIT
END

IF ~
Global("ScrlalzT","GLOBAL",3)
OR(3)
Global("SanNarQ","GLOBAL",0)
Global("SanNarQ","GLOBAL",1)
Global("SanNarQ","GLOBAL",2) ~ THEN BEGIN NearPortal
SAY ~ Master, make your choice now~
IF ~~ THEN REPLY ~Open the portal. ~ GOTO Port3
IF ~~ THEN REPLY ~Make me a stone. ~ DO ~GiveItemCreate("SanRock",Player1,0,0,0) ~EXIT
IF ~~ THEN REPLY ~Retire. ~ EXIT
END

IF~~ THEN BEGIN  Port3
SAY ~ We are near the portal now, but not close enough to open it. ~ 
IF ~~ THEN EXIT
END

IF ~ 
Global("ScrlalzT","GLOBAL",3)
Global("SanNarQ","GLOBAL",3)
 ~ THEN BEGIN Portal
SAY ~ Master, make your choice.~
IF ~~ THEN REPLY ~Retire. ~ EXIT
IF ~~ THEN REPLY ~Open the portal now! ~ DO ~ SetGlobal("ScrlalzT","GLOBAL",4) SetGlobal("AlzLairOpen","GLOBAL",1) ~ EXIT
END

IF ~
Global("ScrlalzT","GLOBAL",4)
OR(5)
Global("SanNarQ","GLOBAL",3)
Global("SanNarQ","GLOBAL",4)
Global("SanNarQ","GLOBAL",5)
Global("SanNarQ","GLOBAL",6)
Global("SanNarQ","GLOBAL",7)~ THEN BEGIN SclBye
SAY ~ Goodbye, my part-time master. I hope you enjoyed my service.~
IF ~~ THEN DO ~ SetGlobal("ScrlalzT","GLOBAL",5)~ EXIT
END

IF ~
Global("ScrlalzT","GLOBAL",5)
OR(5)
Global("SanNarQ","GLOBAL",3)
Global("SanNarQ","GLOBAL",4)
Global("SanNarQ","GLOBAL",5)
Global("SanNarQ","GLOBAL",6) 
Global("SanNarQ","GLOBAL",7)~ THEN BEGIN NoFunction
SAY ~ (The scroll sizzles, it is of no further use for you.)~
IF ~~ THEN EXIT
END