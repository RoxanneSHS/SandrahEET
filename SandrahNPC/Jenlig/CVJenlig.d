BEGIN CVJenlig

IF~AreaCheck("bg2303") Global("MetOnce","LOCALS",0)~THEN BEGIN Hiss1
SAY@0
IF~~THEN REPLY@1GOTO Hiss2
IF~~THEN REPLY@2GOTO Hiss2
IF~~THEN REPLY@3GOTO Hiss2
END

BEGIN CVJenlip

IF~AreaCheck("BG0125") Global("MetOnce","LOCALS",1)~THEN BEGIN Hiss3
SAY@4
IF~~THEN DO~SetGlobal("MetOnce","LOCALS",2)
SetGlobal("JenFouSem","BG0125",2)
CreateItem("ImoSlHP1",0,0,0)
FillSlot(SLOT_AMULET)
Wait(2)
ReallyForceSpell(Myself,CLERIC_TRUE_SIGHT) ~EXIT
END

IF~Global("JenFouSem","BG0125",4)~THEN BEGIN FoundSwFinN
SAY@5
=@6
IF~~THEN REPLY@7DO~StartCutSceneMode() SetGlobal("JenFouSem","BG0125",7) AddXPObject(Player1,1700)ActionOverride("CVJenlig",TakePartyItem("CVyensw2")) Wait(2) StartCutScene("JenLePl")~EXIT
END

IF~!InParty(Myself)AreaCheck("bd0130")GlobalGT("JenGoHome","bd0130",1) ~THEN BEGIN HissL
SAY@8
IF~~THEN DO~SetGlobal("JenGoHome","bd0130",4)~EXIT
END

IF~!InParty(Myself)!AreaCheck("BG0125")~THEN BEGIN HissK
SAY@9
IF~~THEN REPLY@10DO~EscapeAreaMove("BG0125",339,800,10)~EXIT
IF~~THEN REPLY@11DO~JoinParty()~EXIT
END

CHAIN
IF~~THEN CVJenlig Hiss2
@12
DO~SetGlobal("MetOnce","LOCALS",1)~
==CVSandrJ@13
==Imoen2_ IF~InParty("Imoen2")~THEN@14
==CVJenlig@15
==CVSandrJ@16
== BJAHEI  IF~InParty("Jaheira") ~THEN @17
==CVJenlig@18
==CVSandrJ IF~Global("CmElf900","GLOBAL",0)~THEN@19
==CVSandrJ IF~Global("CmElf900","GLOBAL",1)~THEN@20
==CVJenlig@21
==CVSandrJ @22
==CVJenlig@23
END
++@24DO~ReallyForceSpellRES("fjxpmooc",Myself)  JoinParty() AddJournalEntry(@922,QUEST)~EXIT
++@25DO~ReallyForceSpellRES("fjxpmooc",Myself) JoinParty() AddJournalEntry(@922,QUEST)~EXIT
++@26DO~SetDialog("CVJenliP") EscapeAreaMove("BG0125",339,800,10)~EXIT

APPEND IF_FILE_EXISTS Mathoren
IF WEIGHT #-2~NumTimesTalkedTo(0)InParty("CVSandr")!InParty("CVJenlig")~THEN BEGIN JenHint1
SAY@27
IF~~THEN REPLY@28GOTO JenHint2
IF~~THEN REPLY@29GOTO JenHint3
END

IF~~THEN BEGIN JenHint2
SAY@30
IF~~THEN GOTO 1
END

IF~~THEN BEGIN JenHint3
SAY@31
IF~~THEN GOTO 2
END
END
