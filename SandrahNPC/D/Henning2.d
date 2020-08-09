BEGIN HENNING2

IF ~NumTimesTalkedTo(0) ~THEN BEGIN Tych
SAY @0
IF~~THEN EXIT
END 

IF ~ NumTimesTalkedToGT(0) ~THEN BEGIN HennShopWD
SAY @1
IF~!Global("ENDOFBG1","GLOBAL",2) InParty("Imoen2") Global("HennImoRit","LOCALS",0) ~THEN EXTERN HENNING2 HennImoRit1
IF~!InParty("Imoen2") Global("HennStoWD","LOCALS",0)~THEN REPLY@2
EXIT
IF ~!InParty("Imoen2") Global("HennStoWD","LOCALS",1)~THEN REPLY@3DO ~StartStore("sto4803",LastTalkedToBy(Myself))~EXIT
IF ~!Global("ENDOFBG1","GLOBAL",2)InParty("Imoen2") GlobalGT("HennImoRit","LOCALS",0 ) Global("HennStoWD","LOCALS",1)~THEN REPLY@3DO ~StartStore("sto4803",LastTalkedToBy(Myself))~EXIT
IF ~!Global("ENDOFBG1","GLOBAL",2) InParty("Imoen2") Global("HennImoRit","LOCALS",1 ) RealGlobalTimerExpired("HennImoRitInt","LOCALS")~THEN REPLY@4EXTERN HENNING2 HennImoRit2
IF ~!Global("ENDOFBG1","GLOBAL",2) InParty("Imoen2") Global("HennImoRit","LOCALS",2 ) RealGlobalTimerExpired("HennImoRitInt","LOCALS")~THEN REPLY@4EXTERN HENNING2 HennImoRit3
IF~Global("ENDOFBG1","GLOBAL",2) GlobalLT("Chapter","GLOBAL",16) !InParty("Imoen2") Global("HenMissImo","LOCALS",0) ~THEN REPLY@5GOTO ImmiJonMiss1
IF~Global("ENDOFBG1","GLOBAL",2) InParty("Imoen2") Global("HennImoRitSoa","LOCALS",0)~THEN EXTERN HENNING2 HennImoRit32
IF ~Global("ENDOFBG1","GLOBAL",2)InParty("Imoen2") GlobalGT("HennImoRitSoa","LOCALS",1 ) Global("HennStoWD","LOCALS",1)~THEN REPLY@3DO ~StartStore("sto4803",LastTalkedToBy(Myself))~EXIT
END

IF~~THEN BEGIN ImmiJonMiss1
SAY@6
IF~~THEN REPLY@7DO~SetGlobal("HenMissImo","LOCALS",1) ~GOTO ImmiJonMiss2
END

IF~~THEN BEGIN ImmiJonMiss2
SAY@8
IF~~THEN REPLY@9EXIT
IF~~THEN REPLY@10EXIT
IF~~THEN REPLY@11DO ~StartStore("sto4803",LastTalkedToBy(Myself))~EXIT
END


CHAIN
IF~~THEN  HENNING2 HennImoRit1
@12
DO ~SetGlobal("HennImoRit","LOCALS",1) RealSetGlobalTimer("HennImoRitInt","LOCALS",180)~
==Bimoen @13
==HENNING2@14
==Bimoen @15
DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF~~THEN  HENNING2 HennImoRit2
@16
DO ~SetGlobal("HennImoRit","LOCALS",2)RealSetGlobalTimer("HennImoRitInt","LOCALS",180)~
==Bimoen @17
==HENNING2@18
==Bimoen @19
==HENNING2@20
==Bimoen @21
DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF~~THEN  HENNING2 HennImoRit3
@22
==Bimoen @23
==HENNING2@24
==Bimoen @24
DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF~~THEN  HENNING2 HennImoRit32
@22
==Bimoen2 @23
==HENNING2@24
==Bimoen2 @24
DO ~SetGlobal("HennImoRitSoa","LOCALS",1) StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT
