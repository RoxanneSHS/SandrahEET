BEGIN CVJenlig

IF~AreaCheck("bg2303") Global("MetOnce","LOCALS",0)~THEN BEGIN Hiss1
SAY~(Hiss) Leave here - this not your business - not good for you to stay.~
IF~~THEN REPLY~This soldier, you have murdered him!~ GOTO Hiss2
IF~~THEN REPLY~What have you done, what creature are you anyway?~ GOTO Hiss2
IF~~THEN REPLY~I will not leave the scene of a crime without an explanation?~ GOTO Hiss2
END

BEGIN CVJenlip

IF~AreaCheck("BG0125") Global("MetOnce","LOCALS",1)~THEN BEGIN Hiss3
SAY~(Hiss) Follow the trace has led to success. The one who stole is here and will perish. The sword is found.~
IF~~THEN DO~SetGlobal("MetOnce","LOCALS",2)
SetGlobal("JenFouSem","BG0125",2)
CreateItem("ImoSlHP1",0,0,0)
FillSlot(SLOT_AMULET)
Wait(2)
ReallyForceSpell(Myself,CLERIC_TRUE_SIGHT) ~EXIT
END

IF~Global("JenFouSem","BG0125",4)~THEN BEGIN FoundSwFinN
SAY~(Hiss) Here is sword Jen'lig set out to find. Here is end of Sarevok from commander.~
=~Give sword to Jen'lig for keep.~
IF~~THEN REPLY~You deserve it...you are a most persistent creature.~DO~StartCutSceneMode() SetGlobal("JenFouSem","BG0125",7) AddXPObject(Player1,1700)ActionOverride("CVJenlig",TakePartyItem("CVyensw2")) Wait(2) StartCutScene("JenLePl")~EXIT
END

IF~!InParty(Myself)AreaCheck("bd0130")GlobalGT("JenGoHome","bd0130",1) ~ THEN BEGIN HissL
SAY~Sandrah - my friend - live long and prosperous.~
IF~~THEN DO~SetGlobal("JenGoHome","bd0130",4)~EXIT
END

IF~!InParty(Myself)!AreaCheck("BG0125")~ THEN BEGIN HissK
SAY~Follow weak commander was mistake. Jen'lig finds sword by herself.~
IF~~THEN REPLY~Stubborn githyanki...~DO~EscapeAreaMove("BG0125",339,800,10)~EXIT
IF~~THEN REPLY~Ooops, I did not mean it this way. Stay with us, Jen'lig~DO~JoinParty()~EXIT
END

CHAIN
IF~~THEN CVJenlig Hiss2
~I come a long way to find this thief and murderer. He gave answers and paid debt.~
DO~SetGlobal("MetOnce","LOCALS",1)~
==CVSandrJ~He paid with his life for a deed against your kin?~
==Imoen2_ IF~InParty("Imoen2")~THEN~I saw a picture of one alike ya in a Candlekeep tome. Hey, you come from VERY far away!!~
==CVJenlig~You know my kin, you know the Githyanki. Then you know why I here.~
==CVSandrJ~A githyanki. <CHARNAME>, this is not a creature of our plane, the Prime. The Children of Gith come from the god-isles of the Astral Plane and they come for only one reason, the retrieval of a stolen artefact.~
== BJAHEI  IF~ InParty("Jaheira") ~ THEN ~I would not judge her for murder for what she did - even if her own kind would not treat an outsider with fairness.~
==CVJenlig~You speak with knowledge, manling. A most sacred sword is stolen and this man was involved. But he has it not. One other has it, in the City that now has closed its gates.~
==CVSandrJ IF~Global("CmElf900","GLOBAL",0)~THEN~I heard that the Grand Dukes of Baldur's Gate have closed the city against the bandit threats of the iron crisis.~
==CVSandrJ IF~Global("CmElf900","GLOBAL",1)~THEN~ You talk of Baldur's Gate, I guess.~
==CVJenlig~You understand. Maybe you can help Jen'lig and Jen'lig will let you live and help you, too.~
==CVSandrJ ~We may very well have need for a good thief to help us and Baldur's Gate may become a destination on our quest soon, <CHARNAME>.~
==CVJenlig~Become Jen'lig's captain if not too weak, <CHARNAME>.~
END
++~You will be an interesting companion, and helpful, too. I agree to try it with you.~ DO~ReallyForceSpellRES("fjxpmooc",Myself)  JoinParty() AddJournalEntry(@922,QUEST)~EXIT
++~I read about your race at Candlekeep. You are cruel warriors but also loyal soldiers to your task. I expect you to accept my leadership here.~ DO~ReallyForceSpellRES("fjxpmooc",Myself) JoinParty() AddJournalEntry(@922,QUEST)~EXIT
++~I have no place for a cruel murderer, even if this one seems to have earned his fate. I let you escape from here but I hope not to see you again.~ DO~ SetDialog("CVJenliP") EscapeAreaMove("BG0125",339,800,10)~EXIT

APPEND IF_FILE_EXISTS Mathoren
IF WEIGHT #-2~NumTimesTalkedTo(0)InParty("CVSandr")!InParty("CVJenlig")~THEN BEGIN JenHint1
SAY~Eh whats this? An adventurer by the looks of ye. Kin I 'ave yer name youngin?~
IF~~THEN REPLY~No you don't need to know my name. ~GOTO JenHint2
IF~~THEN REPLY~My name is <CHARNAME> what's yours?~ GOTO JenHint3
END

IF~~THEN BEGIN JenHint2
SAY~Jus' as unpleasant as that strange veiled creature came in an hour ago and sneaked upstairs...all types travelin' dem roads these days.~
IF~~THEN GOTO 1
END

IF~~THEN BEGIN JenHint3
SAY~Much better than that strange veiled creature came in an hour ago and sneaked upstairs...all types travelin' dem roads these days.~
IF~~THEN GOTO 2
END
END
