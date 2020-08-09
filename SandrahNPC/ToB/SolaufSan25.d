CHAIN
IF~Global("SanSola","GLOBAL",17)~THEN BSandr25 SanSolGods
@0
DO~SetGlobal("SanSola","GLOBAL",18)RealSetGlobalTimer("SanSolaT","LOCALS",3600)~
==BSOLA25@1
==BSandr25@2
==BSOLA25@3
==BSandr25@4
==BSOLA25@5
==BSandr25@6
==BSOLA25@7
==BSandr25@8
==BSOLA25@9
==BSandr25@10EXIT

CHAIN
IF~Global("SanSola","GLOBAL",19)~THEN BSandr25 SanSolResp
@11
DO~SetGlobal("SanSola","GLOBAL",20)RealSetGlobalTimer("SanSolaT","LOCALS",1600)~
==BSOLA25@12
==BSandr25@13
==BSOLA25@14
==BSandr25@15
==BSOLA25@16
==BSandr25@17
==BSOLA25@18
==BSandr25@19
==BSOLA25@20
==BSandr25@21EXIT

CHAIN
IF~Global("SanSolUM1","GLOBAL",2)~THEN BSandr25 SanSolUM
@22
DO~SetGlobal("SanSolUM1","GLOBAL",3)~
==BSOLA25@23
=@24
==BSandr25@25
==BSOLA25@26EXIT

EXTEND_BOTTOM SOLA 343
IF~InParty("CVSandr") Global("Waiting","LOCALS",0)!InParty(Myself) Global("SolaUmo5","LOCALS",1)~THEN REPLY@27GOTO Qidr1
END

APPEND SOLA
IF~~THEN BEGIN Qidr1
SAY@28
IF~~THEN DO~SetGlobal("Waiting","LOCALS",1)EscapeAreaMove("CVUMO5",1380,1078,4)~EXIT
END
END