APPEND CVSandrJ

IF ~Global("CMOversightEndGame","GLOBAL",3)~THEN BEGIN SandrahOSBG21
SAY~I looks like part of Section has survived still...Even worse, they are still after you.~
IF~~THEN REPLY~They continue even after Sarevok no longer can pay them?~GOTO  SandrahOSBG22
IF~~THEN REPLY~What do they want from us still? Revenge?~GOTO  SandrahOSBG22
END

IF~~THEN BEGIN SandrahOSBG22
SAY~Section principles, <CHARNAME>. They accepted the contract and they will fulfil it.~
=~It looks like our friend forgot to lock that door where she vanished in her hurried flight. We better follow her before Section is warned and the passage is blocked again.~
IF~~THEN DO~SetGlobal("CMOversightEndGame","GLOBAL",4)~EXIT
END
END

CHAIN
IF WEIGHT #-3~Global("CMOversightEndGame","GLOBAL",2)~THEN CMMadel SandrahSoa1
~Sandrah!!~
DO~SetGlobal("CMOversightEndGame","GLOBAL",3) SetGlobal("LockedDoor1001b","AR1000",1)~
==Bsandr~Madeline?~
==CMMadel~You still travel with one who is to be terminated. ~
==Bsandr~The one who paid and ordered <CHARNAME>'s termination is long defeated. He was a power hungry tyrant and we ended his bloody trail. Section no longer exists, Madeline. Their own corruption was their end.~
==CMMadel~How can you err so much, fools. <CHARNAME> is a danger to all. Cancellation will go forward against both of you. Section must be warned.~DO~MoveToPoint([3560.1640]) Wait(2) DestroySelf()~EXIT

CHAIN
IF WEIGHT #-3~Global("CMOversightEndGame","GLOBAL",4)~THEN CMMadel SandrahT2
~Beware, Wetler, they have come...I must have kept the door unlocked in my surprise...~
DO~SetGlobal("CMOversightEndGame","GLOBAL",5) AddexperienceParty(8700)~
==Bsandr~Wetler? The lowest scum of Section has made his way to the top. Probably a result of the vacuum that <CHARNAME> left in the management of the organisation. If we ever needed proof that Section has long seized to serve an honest purpose we have it now with such an evil bastard in charge of them.~
==CMMadel~We should seize the opportunity while we have them here in our quarters.~
==CMGeorge~Madeline - what a surprise. Have you brought our main targets for termination, how splendid. ~
==CMMadel~I have not brought anyone...they...ah, yes, I lured them inside, let's act quickly.~DO~Enemy()~
==CMGeorge~Madeline, you were always the clever one. You could have given us a short advance notice so we could've prepared a warmer welcome for them.~
==Bsandr~Give up, Wetler, neither did Madeline trick us nor will Koveras alias Sarevok reward you for your deeds. The whole game is over since long time.~
==CMGeorge~What a sad case of complete ignorance, little beauty. Too late to learn your lessons, I'm afraid.~DO~Enemy()~EXIT


// Oversight and Section1
INTERJECT_COPY_TRANS CMGEORG1 2 KoverasHire
== CVSandrJ IF ~InParty("CVSandr")~THEN ~So, Koveras, hired you, or let us spell it backwards *Sarevok*.~
== CMGEORG1 IF ~InParty("CVSandr")~THEN ~What do you mean by that, lady? Wordplay will not save your life, the contract will be fulfilled.~
== CVSandrJ IF ~InParty("CVSandr")~THEN ~Interesting, another group used without their knowledge by the one who still stays in the background, <CHARNAME>. I think we will learn nothing more from these imbeciles.~
== CMGEORG1 IF ~InParty("CVSandr")~THEN ~Whatever you think you have learned will be irrelevant, as you will not leave this room!~
END