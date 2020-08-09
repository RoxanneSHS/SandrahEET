APPEND CVSANDRJ

IF~Global("ZDreamSzene1","GLOBAL",4)~THEN BEGIN SanAneWeavTh1
SAY@0
IF~~THEN REPLY@1DO~SetGlobal("ZDreamSzene1","GLOBAL",5) ~GOTO SanAneWeavTh2
END

IF~~THEN BEGIN SanAneWeavTh2
SAY@2
IF~~THEN REPLY@3GOTO SanAneWeavTh3
IF~~THEN REPLY@4GOTO SanAneWeavTh3
END

IF~~THEN BEGIN SanAneWeavTh3
SAY@5
IF~~THEN REPLY@6GOTO SanAneWeavTh4
END

IF~~THEN BEGIN SanAneWeavTh4
SAY@7
IF~~THEN REPLY@8GOTO SanAneWeavTh5
IF~~THEN REPLY@9GOTO SanAneWeavTh5
END

IF~~THEN BEGIN SanAneWeavTh5
SAY@10
IF~~THEN REPLY@11GOTO SanAneWeavTh6
IF~~THEN REPLY@12GOTO SanAneWeavTh6
END

IF~~THEN BEGIN SanAneWeavTh6
SAY@13
=@14
IF~~THEN EXIT
END

IF~~THEN BEGIN NomoTrait1
SAY@15
IF~~THEN REPLY@16GOTO NomoTrait2
END

IF~~THEN BEGIN NomoTrait2
SAY@17
IF~~THEN REPLY@18GOTO NomoTrait3
END

IF~~THEN BEGIN NomoTrait3
SAY@19
IF~~THEN REPLY@20GOTO NomoTrait4
END

IF~~THEN BEGIN NomoTrait4
SAY@21
IF~~THEN EXTERN Z_NOMO5 3
END

IF~Global("ZDreamSzene1","GLOBAL",6)~THEN BEGIN NomoTrait5
SAY@22
IF~~THEN REPLY@23DO~SetGlobal("ZDreamSzene1","GLOBAL",7)~GOTO  NomoTrait6
END

IF~~THEN BEGIN NomoTrait6
SAY@24
IF~~THEN REPLY@25EXIT
IF~~THEN REPLY@26EXIT
END

IF~Global("ZDreamSzene1","GLOBAL",8)~THEN BEGIN NomoTrait7
SAY@27
IF~~THEN REPLY@28DO~SetGlobal("ZDreamSzene1","GLOBAL",9)~GOTO  NomoTrait8
END

IF~~THEN BEGIN NomoTrait8
SAY@29
IF~~THEN REPLY@30DO~IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
IF~~THEN REPLY@31EXIT
END
END

CHAIN
IF~Global("ZDreamSzene1","GLOBAL",10)~THEN CVSANDRJ SanMysNotThisTime
@32
DO~SetGlobal("ZDreamSzene1","GLOBAL",11)~
==SANMYST@33
==CVSANDRJ @34
==SANMYST@35
==CVSANDRJ @36
==SANMYST@37
==CVSANDRJ @38
==SANMYST@39
==CVSANDRJ @40
==SANMYST@41
==CVSANDRJ @42
==CVSANDRJ IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN@43
==SANMYST IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN@44
==CVSANDRJ IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN@45
==SANMYST IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN@46
==CVSANDRJ IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN@47
==SANMYST IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN@48
==CVSANDRJ IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN@49
==SANMYST IF~GlobalLT("SanKhalBlood","GLOBAL",3)~THEN@50
==SANMYST @51
EXIT

EXTEND_BOTTOM Z_NOMO5 1
IF~InParty("CVSandr")~THEN REPLY @52EXTERN CVSANDRJ NomoTrait1
END

APPEND Z_Igor
IF WEIGHT #-4 ~Global("ZIgorTalk","GLOBAL",4)PartyHasItem("z_free") InParty("CVSandr") GlobalLT("ZDreamSzene1","GLOBAL",8)~THEN BEGIN SanDelay
SAY@53
=@54
IF~~THEN REPLY@55EXIT
IF~~THEN REPLY@56EXIT
IF~~THEN REPLY@57EXIT
END
END

EXTEND_BOTTOM Z_Zah 0
IF ~InParty("CVSandr")~THEN REPLY @58GOTO RetAnag
END

APPEND Z_Zah
IF~~THEN BEGIN RetAnag
SAY@59
IF~~THEN REPLY@60DO~ActionOverride("Z_Zah",CreateVisualEffectObject("spdimndr",Myself)) Wait(2) ActionOverride("Z_Zah",DestroySelf())~EXIT
IF~~THEN REPLY@61DO~StartCutSceneMode()
CreateVisualEffectObject("spdimndr",Myself)
CreateVisualEffectObject("spdimndr",Player1)
CreateVisualEffectObject("spdimndr",Player2)
CreateVisualEffectObject("spdimndr",Player3)
CreateVisualEffectObject("spdimndr",Player4)
CreateVisualEffectObject("spdimndr",Player5)
CreateVisualEffectObject("spdimndr",Player6)
Wait(2)
FadeToColor([20.0],0)
Wait(1)
ActionOverride(Player1,LeaveAreaLUA("ZANEGH","",[608.3364],12))
ActionOverride(Player2,LeaveAreaLUA("ZANEGH","",[571.3340],12))
ActionOverride(Player3,LeaveAreaLUA("ZANEGH","",[525.3331],12))
ActionOverride(Player4,LeaveAreaLUA("ZANEGH","",[494.3368],12))
ActionOverride(Player5,LeaveAreaLUA("ZANEGH","",[545.3385],12))
ActionOverride(Player6,LeaveAreaLUA("ZANEGH","",[578.3402],12))
DestroySelf()
FadeFromColor([20.0],0)
EndCutSceneMode()~EXIT
IF~~THEN REPLY@62GOTO 1
END
END








