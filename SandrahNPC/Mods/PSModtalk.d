INTERJECT_COPY_TRANS psteos 25 SanPsMysPlot
== CVSandrJ IF ~InParty("CVSandr") ~THEN @0
==psteos IF ~InParty("CVSandr") ~THEN @1
== CVSandrJ IF ~InParty("CVSandr") ~THEN @2END

APPEND CVSandrJ
IF~Global("SanPsMysPlot","GLOBAL",2) ~THEN BEGIN SanGetPSArtef1
SAY@3
IF~~THEN REPLY@4DO~SetGlobal("SanPsMysPlot","GLOBAL",3) ~GOTO SanGetPSArtef2
IF~~THEN REPLY@5DO~SetGlobal("SanPsMysPlot","GLOBAL",3) ~GOTO SanGetPSArtef2
END

IF~~THEN BEGIN SanGetPSArtef2
SAY@6
IF~~THEN REPLY@7GOTO SanGetPSArtef3
END

IF~~THEN BEGIN SanGetPSArtef3
SAY@8
IF~~THEN REPLY@9EXIT
IF~~THEN REPLY@10GOTO SanGetPSArtef4
END

IF~~THEN BEGIN SanGetPSArtef4
SAY@11
IF~~THEN EXIT
END

IF~Global("PsTeosRabbit","ar0410",2)~THEN BEGIN Rabbit2
SAY@12
IF~~THEN REPLY@13GOTO Rabbit3
END

IF~~THEN BEGIN Rabbit3
SAY@14
=@15
IF~~THEN REPLY@16GOTO Rabbit4
IF~~THEN REPLY@17GOTO Rabbit4
END

IF~~THEN BEGIN Rabbit4
SAY@18
=@19
IF~~THEN DO~SetGlobal("PsTeosRabbit","ar0410",3)~EXIT
END

END

CHAIN
IF~Global("SanPsMysPlot","GLOBAL",6)~THEN CVSandrJ SanMelTrap1
@20
DO~SetGlobal("SanPsMysPlot","GLOBAL",7)~
==Psmystra@21
==CVSandrJ@22
END
++@23+ SanMelTrap2
++@24+ SanMelTrap2

CHAIN
IF~~THEN CVSandrJ SanMelTrap2
@25
=@26
==Psmystra@27
==CVSandrJ@28
==Psmystra@29
END
++@30EXTERN PSMystra 5

CHAIN
IF WEIGHT #-5~Global("SanPsMysPlot","GLOBAL",4) ~ THEN PSElmin SanWarn
@31
DO~SetGlobal("SanPsMysPlot","GLOBAL",5) ~
== CVSandrJ@32
==PSElmin@33
=@34
== CVSandrJ@35
==PSElmin@36
== CVSandrJ@37
==PSElmin@38
== CVSandrJ@39
==PSElmin@40
== CVSandrJ@41
==PSElmin@42DO~ReallyForceSpell(Myself,DRYAD_TELEPORT) ~EXIT

ADD_STATE_TRIGGER PSMysEnd 0
~!InParty("CVSandr")~

CHAIN
IF WEIGHT #-1~InParty("CVSandr")Global("psFinalQuestToKillMelCounter","GLOBAL",4)~THEN PSMysEnd  Santalk
@43
==CVSandrJ@44
==PSMysEnd@45
==CVSANDRJ @46
==PSMysEnd@47
==CVSANDRJ @48
==PSMysEnd@49
==CVSANDRJ @50
==PSMysEnd@51
==CVSANDRJ @52
==CVSANDRJ IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN@53
==PSMysEnd IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN@54
==CVSANDRJ IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN@55
==PSMysEnd IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN@56
==CVSANDRJ IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN@57
==PSMysEnd IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN@58
==CVSANDRJ IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN@59
==PSMysEnd IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN@60
==PSMysEnd @61DO~
StartCutSceneMode()
Wait(1)
ForceSpell(Myself,CLERIC_HEAL)
Wait(1)
CreateVisualEffect("SPBASEWT",[736.1328])
CreateVisualEffect("SPBASEWT",[748.1218])
Wait(1)
CreateCreature("psElmin",[748.1218],0)
CreateCreature("psKhel",[736.1328],0)
Wait(2)
ActionOverride("psKhel",ForceSpell(Myself,DRYAD_TELEPORT))
ActionOverride("psElmin",ForceSpell(Myself,DRYAD_TELEPORT))
Wait(1)
ActionOverride("psElmin",DestroySelf())
ActionOverride("psKhel",DestroySelf())
ForceSpell(Myself,HOLY_LIGHT_FROM_ABOVE)
ReputationInc(4)
GiveItemCreate("psSPL08",Player1,1,0,0)
ApplySpellRES("SPPSMYS",Player1)
ApplySpellRES("SPPSMYS",Player2)
ApplySpellRES("SPPSMYS",Player3)
ApplySpellRES("SPPSMYS",Player4)
ApplySpellRES("SPPSMYS",Player5)
ApplySpellRES("SPPSMYS",Player6)
Wait(2)
ActionOverride("CVSandr",AddSpecialAbility("CVMyMe"))
SetGlobal("psFinalQuestToKillMelCounter","GLOBAL",5)
EndCutSceneMode()
DestroySelf()~EXIT





