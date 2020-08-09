APPEND BSandr

IF~Global("SanKido","GLOBAL",1)~THEN BEGIN KidoJoin1
SAY@0
=@1
IF~~THEN REPLY@2GOTO KidoJoin2
IF~~THEN REPLY@3GOTO KidoJoin2
END

IF~~THEN BEGIN KidoJoin2
SAY@4
IF~~THEN REPLY@5DO~SetGlobal("SanKido","GLOBAL",2)RealSetGlobalTimer("SanKidoTa","LOCALS",1600)~EXIT
END

IF~Global("SanKidoPlot","LOCALS",1)~THEN BEGIN KidoPlot1
SAY@6
=@7
IF~~THEN REPLY@8GOTO KidoPlot2
IF~~THEN REPLY@9GOTO KidoPlot2
IF~~THEN REPLY@10DO~IncrementGlobal("Sanpoints","GLOBAL",-4) SetGlobal("SanKidoPlot","LOCALS",2)~EXIT
END

IF~~THEN BEGIN KidoPlot2
SAY@11
IF~~THEN REPLY@12DO~SetGlobal("SanKidoPlot","LOCALS",2)~EXIT
END
END

APPEND CVSandrJ
IF WEIGHT #-6~IsGabber(Player1) Global("Kidopersonalquest","GLOBAL",4)Global("SanKidoPlot","LOCALS",2)~THEN BEGIN Kidoplot3
SAY@13
IF~~THEN REPLY@14DO~SetGlobal("SanKidoPlot","LOCALS",3)~GOTO Kidoplot4
IF~~THEN REPLY@15DO~SetGlobal("SanKidoPlot","LOCALS",66)~EXIT
END

IF~~THEN BEGIN Kidoplot4
SAY@16
IF~~THEN REPLY@17GOTO Kidoplot5
END

IF~~THEN BEGIN Kidoplot5
SAY@18
=@19
IF~~THEN REPLY@20
GOTO Kidoplot6
END

IF~~THEN BEGIN Kidoplot6
SAY@21
=@22
IF~~THEN EXIT
END
END

APPEND MWDOLF
IF WEIGHT #-7~Global("Kidopersonalquest","GLOBAL",4) PartyHasItem("CVChSacr") ~THEN BEGIN FakeSan
SAY@23
IF~~THEN DO~SetGlobal("Kidopersonalquest","GLOBAL",5)
TakePartyItem("CVChSacr")
AddXPObject(Player1,12500)
AddXPObject(Player2,12500)
AddXPObject(Player3,12500)
AddXPObject(Player4,12500)
AddXPObject(Player5,12500)
AddXPObject(Player6,12500)
MoveToPointNoInterrupt([426.285])
ClearAllActions()
StartCutSceneMode()
StartCutScene("CVCySacr") ~EXIT
END
END

CHAIN
IF WEIGHT #-2~Global("Kidopersonalquest","GLOBAL",21)~THEN SLILMAT Return
@24
DO~SetGlobal("Kidopersonalquest","GLOBAL",22)~
==BSANDR@25
==SLILMAT@26
DO~EscapeAreaMove("ar0408",426,285,2) ~EXIT

CHAIN
IF ~Global("SanKido","GLOBAL",3)~THEN BSANDR SanKido1
@27
DO ~SetGlobal("SanKido","GLOBAL",4) RealSetGlobalTimer("SanKidoTa","LOCALS",1600) ~
== MWBKid @28
== BSANDR @29
== MWBKid @30
== BSANDR @31
== MWBKid @32
== BSANDR @33
EXIT

CHAIN
IF ~Global("SanKido","GLOBAL",5)~THEN BSANDR SanKido2
@34
DO ~SetGlobal("SanKido","GLOBAL",6) RealSetGlobalTimer("SanKidoTa","LOCALS",1600) ~
== MWBKid @35
== BSANDR @36
== MWBKid @37
== BSANDR @38
== MWBKid @39
== BSANDR @40
== MWBKid @41
== BSANDR @42
== MWBKid @43
== BSANDR @44
EXIT 

CHAIN
IF ~Global("SanKido","GLOBAL",7)~THEN BSANDR SanKido2
@45
DO ~SetGlobal("SanKido","GLOBAL",8) RealSetGlobalTimer("SanKidoTa","LOCALS",1600) ~
== MWBKid @46
== BSANDR @47
== MWBKid @48
== BSANDR @49
== MWBKid @50
== BSANDR @51
== MWBKid @52
== BSANDR @53EXIT

CHAIN
IF~Global("Kidopersonalquest","GLOBAL",19)~THEN BSANDR SanKidoDolfEnd
@54
DO ~SetGlobal("Kidopersonalquest","GLOBAL",20)~
== MWBKid @55
== BSANDR @56
=@57
DO~StartCutSceneMode() Wait(2) CreateVisualEffectObject("SPHLYBLS","CVSandr") Wait(2) Kill("MWDolf") AddXPObject("CVSandr",22500) EndCutSceneMode()~EXIT

CHAIN
IF ~Global("SanKido","GLOBAL",9)~THEN BSANDR SanKidoHelp
@58
DO ~SetGlobal("SanKido","GLOBAL",10) RealSetGlobalTimer("SanKidoTa","LOCALS",1600) ~
== MWBKid @59
== BSANDR @60
== MWBKid @61
=@62
== BSANDR @63
== MWBKid @64
== BSANDR @65
== MWBKid @66
== BSANDR @67
== MWBKid @68
== BSANDR @69
== MWBKid @70EXIT



