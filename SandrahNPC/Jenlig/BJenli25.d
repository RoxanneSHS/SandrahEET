BEGIN BJenli25

CHAIN
IF~Global("CVJenTOBRet","GLOBAL",8)~THEN BJenli25 JenQStor1
@0
=@1
DO~SetGlobal("CVJenTOBRet","GLOBAL",9) RealSetGlobalTimer("CVJen25Intvl","GLOBAL",2000)~
==BSandr25@2
==BJenli25@3
=@4
==BSandr25@5
==BJenli25@6
=@7
==BSandr25@8
==BJenli25@9
==BSandr25@10
==BJenli25@11
=@12
==BSandr25@13
==BJenli25@14EXIT

CHAIN
IF~Global("CVJenTOBRet","GLOBAL",10)~THEN BJenli25 JenQStor2
@15
DO~SetGlobal("CVJenTOBRet","GLOBAL",11) RealSetGlobalTimer("CVJen25Intvl","GLOBAL",2000)~
==BSandr25@16
==BJenli25@17
=@18
==BSandr25@19
==BJenli25@20EXIT

CHAIN
IF~Global("CVJenTOBRet","GLOBAL",12)~THEN BJenli25 JenQStor3
@21
DO~SetGlobal("CVJenTOBRet","GLOBAL",13) RealSetGlobalTimer("CVJen25Intvl","GLOBAL",2000)~
==BSandr25@22
==BJenli25@23
==BSandr25@24
==BJenli25@25
=@26
==BSandr25@27
==BJenli25@28
==BSandr25@29
==BJenli25@30
=@31
==BSandr25@32
==BJenli25@33
==BSandr25@34DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~EXIT

CHAIN
IF~Global("CVJenSarRom","GLOBAL",1)~THEN BJenli25 SarLover1
@35
DO~SetGlobal("CVJenSarRom","GLOBAL",2) RealSetGlobalTimer("JenSarDel","LOCALS",4100)~
=@36
==IF_FILE_EXISTS BSAREV25@37
==BJenli25@38
==IF_FILE_EXISTS BSAREV25@39
==BJenli25@40
==IF_FILE_EXISTS BSAREV25@41EXIT

CHAIN
IF~Global("CVJenSarRom","GLOBAL",3)~THEN BJenli25 SarLover1
@42
DO~SetGlobal("CVJenSarRom","GLOBAL",4) RealSetGlobalTimer("JenSarDel","LOCALS",4100)~
==IF_FILE_EXISTS BSAREV25@43
==BJenli25@44
==IF_FILE_EXISTS BSAREV25@45
==BJenli25@46
==IF_FILE_EXISTS BSAREV25@47
==BJenli25@48
==IF_FILE_EXISTS BSAREV25@49
==BJenli25@50
==IF_FILE_EXISTS BSAREV25@51
==BJenli25@52DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~EXIT




CHAIN
IF~RandomNum(6,1)~THEN  BJenli25 Random1
@53EXIT

CHAIN
IF~RandomNum(6,2)~THEN  BJenli25 Random2
@54EXIT

CHAIN
IF~RandomNum(6,3)~THEN  BJenli25 Random3
@55EXIT

CHAIN
IF~RandomNum(6,4)AreaType(CITY)~THEN  BJenli25 Random4
@56EXIT

CHAIN
IF~RandomNum(6,5)AreaType(DUNGEON)~THEN  BJenli25 Random5
@57
END
++@58EXIT

CHAIN
IF~RandomNum(6,6)AreaType(OUTDOOR)~THEN  BJenli25 Random6
@59
END
++@60EXIT

