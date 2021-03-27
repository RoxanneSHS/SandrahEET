CHAIN
IF~Global("SanSola","GLOBAL",17)~THEN BSandr25 SanSolGods
@0
DO~SetGlobal("SanSola","GLOBAL",18)RealSetGlobalTimer("SanSolaT","LOCALS",3600)~
==BSola@1
==BSandr25@2
==BSola@3
==BSandr25@4
==BSola@5
==BSandr25@6
==BSola@7
==BSandr25@8
==BSola@9
==BSandr25@10EXIT

CHAIN
IF~Global("SanSola","GLOBAL",19)~THEN BSandr25 SanSolResp
@11
DO~SetGlobal("SanSola","GLOBAL",20)RealSetGlobalTimer("SanSolaT","LOCALS",1600)~
==BSola@12
==BSandr25@13
==BSola@14
==BSandr25@15
==BSola@16
==BSandr25@17
==BSola@18
==BSandr25@19
==BSola@20
==BSandr25@21EXIT

CHAIN
IF~Global("SanSolUM1","GLOBAL",2)~THEN BSandr25 SanSolUM
@22
DO~SetGlobal("SanSolUM1","GLOBAL",3)~
==BSola@23
=@24
==BSandr25@25
==BSola@26EXIT

EXTEND_BOTTOM SOLA 343
IF~InParty("CVSandr") Global("Waiting","LOCALS",0)!InParty(Myself) Global("SolaUmo5","LOCALS",1)~THEN REPLY@27GOTO Qidr1
END

APPEND SOLA
IF~~THEN BEGIN Qidr1
SAY@28
IF~~THEN DO~SetGlobal("Waiting","LOCALS",1)EscapeAreaMove("CVUMO5",1380,1078,4)~EXIT
END
END