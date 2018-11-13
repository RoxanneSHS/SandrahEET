APPEND ALROR

IF WEIGHT #-1~ NumberOfTimesTalkedTo(0) Global("SanRepl","LOCALS",1)~THEN BEGIN 30
SAY~Drizzt Do'Urden's sweetheart. I dreamt of meeting you, haha.~
IF ~~THEN REPLY ~Who are you to know Sandrah, speak quickly.~GOTO 31
END

IF ~~THEN BEGIN 31
SAY ~Actually Jarlaxle sends me...He and Entreri are using the crystal...~
IF ~~THEN REPLY~We know that much. Just deliver your message.~GOTO 32
END

IF ~~THEN BEGIN 32 
SAY  ~The prisoner, the dwarf is in a house in Westchar.~
IF ~~THEN DO ~RevealAreaOnMap("RR3300")~GOTO 34
END

IF ~~THEN BEGIN 34
SAY  ~When you enter the house you will know where to go. The door is locked. I will give you this key to open it.~
IF ~~THEN REPLY~Bruenor is kept there. By whom?~DO ~GiveItemCreate("KeytoBr",LastTalkedToBy,0,0,0)~GOTO 41
IF ~~THEN REPLY  ~Bruenor is kept there. Did they torture him?~DO ~GiveItemCreate("KeytoBr",LastTalkedToBy,0,0,0) ~GOTO 41
IF ~~THEN REPLY  ~Well, let's go.~DO ~GiveItemCreate("KeytoBr",LastTalkedToBy,0,0,0)
~GOTO 35
END

IF ~~THEN BEGIN 35
SAY  ~...We know about your relationship with Drizzt. Entreri is well aware of Sandrah's abilities and power.~IF ~~THEN GOTO 36
END

IF ~~THEN BEGIN 36
SAY ~It's a shame to spoil this potential by helping Drizzt. You will go down with him if you continue.~
IF ~~THEN REPLY  ~Entreri is the one to die. Go and give him the message. ~GOTO 38
END

IF ~~THEN BEGIN 37
SAY ~Hah! Enjoy your final hours among the living. Entreri will shatter you with the crystal's help before you can make an attack on him.~
IF ~~THEN GOTO 45
END

IF ~~THEN BEGIN 38
SAY  ~We will see how you react when Drizzt is dead and you face Entreri himself. He will shatter you with the crystal's help before you can make an attack on him.~
IF ~~THEN GOTO 45
END

IF ~~THEN BEGIN 41
SAY  ~I won't tell you. Go and find out yourself.~
IF ~~THEN REPLY ~Was Bruenor tortured like Regis?~GOTO 44
IF ~~THEN REPLY  ~Tell Entreri to release the prisoners immediately or he will pay for it - before we make an end to his existence.~GOTO 37
END

IF ~~THEN BEGIN 44
SAY ~I really don't know but I hope so.~
IF ~~THEN REPLY ~You bastard!~GOTO 37
IF ~~THEN REPLY ~Then tell us who holds him captive.~GOTO 41
END

IF ~~THEN BEGIN 45
SAY ~... Unfortunately I have to leave now. I hope to be present when Entreri kills you...~
IF ~~THEN DO ~SetGlobal("AlorSpe","LOCALS",1) SetGlobal("AlorLea","AR1100",1) SetGlobal("AloDriz","GLOBAL",1) ~EXIT
END
END

