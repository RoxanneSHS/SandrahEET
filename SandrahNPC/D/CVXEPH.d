BEGIN Sankhelb
BEGIN CVXEP2

IF~NumTimesTalkedTo(0)~THEN BEGIN 1
SAY@0
IF~~THEN REPLY@1GOTO 2
END

IF~~THEN BEGIN 2
SAY@2
IF~~THEN DO~ReallyForceSpell(Myself,DRYAD_TELEPORT)~EXIT
END

BEGIN CVXEP3

IF~NumTimesTalkedTo(0)~THEN BEGIN 1
SAY@3
IF~~THEN DO~ReallyForceSpell(Myself,DRYAD_TELEPORT)~EXIT
END


BEGIN CVXEPH
IF~Global("SanXephRet","GLOBAL",12)~THEN BEGIN 1
SAY@4
IF~~THEN DO~SetGlobal("XSTART","GLOBAL",1)Enemy()~EXIT
END

CHAIN
IF~Global("SanXephRet","GLOBAL",3)~THEN Elminsa XephQ1
@5
DO~SetGlobal("SanXephRet","GLOBAL",4)~
==CVSandrJ@6
==Sankhelb@7
==IF_FILE_EXISTS Wardmaga@8
==IF_FILE_EXISTS Wardmagb@9
==Elminsa@10
==CVSandrJ@11
==Sankhelb@12
==CVSandrJ@13
== Elminsa@14DO~ClearAllActions() StartCutSceneMode()StartCutScene("CVmyskid")~EXIT

CHAIN
IF~Global("SanXephRet","GLOBAL",4)~THEN CVXEPH Cutscenetalk1
@15
DO~SetGlobal("SanXephRet","GLOBAL",5)~
==Sanmyst@16
==CVXEPH@17
==Sanmyst@18
==CVXEPH@19
==Sanmyst@20
==CVXEPH@21
==Sanmyst@22
==CVXEPH@23
==Sanmyst@24
==CVXEPH@25
DO~ClearAllActions() StartCutSceneMode()
Wait(2)
CreateVisualEffectObject("spattck1","Sanmysx")
Wait(2)
CreateVisualEffectObject("sppolymp","Sanmysx")
CreateVisualEffectObject("spportal","Sanmysx")
CreateVisualEffect("raiser",[1050.800])
Wait(2)
CreateVisualEffectObject("SPDEATH3","Sanmysx")
Wait(2)
ActionOverride("Sanmysx",ReallyForceSpellRES("sppr429",Myself))
Wait(4)
StartDialogueNoSet(Player1)
EndCutSceneMode()~EXIT

CHAIN
IF~Global("SanXephRet","GLOBAL",5)~THEN CVXEPH Cutscenetalk2
@26
DO~SetGlobal("SanXephRet","GLOBAL",6)~
==CVSandrJ@27
DO~ClearAllActions() StartCutSceneMode() StartCutScene("CVmyskir")~EXIT

CHAIN
IF~Global("SanXephRet","GLOBAL",6)~THEN CVSandrJ SanAkaVisXen1
@28
==Elminsa@29
==Sankhelb@30
==CVSandrJ@31
==Sankhelb@32
==IF_FILE_EXISTS Wardmagb@33
==Elminsa@34
END
++@35+ SanAkaVisXen2
++@36+ SanAkaVisXen2

CHAIN
IF~~THEN CVSandrJ SanAkaVisXen2
@37
==Elminsa@38
=@39
END
++@40DO~SetGlobal("SanXephRet","GLOBAL",8)~EXIT
++@41EXTERN Elminsa DepLegDeff

CHAIN
IF~~THEN Elminsa DepLegDeff
@42DO~GiveItemCreate("SANAKAK","CVSandr",0,0,0) SetGlobal("SanXephRet","GLOBAL",7)~EXIT

CHAIN
IF~Global("SanXephRet","GLOBAL",13)~THEN CVSANDRJ SanMysNotThisTime2
@43
DO~SetGlobal("SanXephRet","GLOBAL",14)~
==SANMYST@44
==CVSANDRJ @45
==SANMYST@46
==CVSANDRJ @47
==SANMYST@48
==CVSANDRJ @49
==SANMYST@50
==CVSANDRJ @51
==SANMYST@52
==CVSANDRJ @53
==CVSANDRJ IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN@54
==SANMYST IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN@55
==CVSANDRJ IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN@56
==SANMYST IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN@57
==CVSANDRJ IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN@58
==SANMYST IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN@59
==CVSANDRJ IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN@60
==SANMYST IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN@61
==SANMYST@62DO~AddexperienceParty(140000)~
EXIT
