I_C_T Stoflund 4 StoSanBlDrag
==CVSandrJ IF~InParty("CVSandr")~THEN@0
==Stoflund IF~InParty("CVSandr")~THEN@1
END

I_C_T StoWinsk 6 StoSanWinsk
==CVSandrJ IF~InParty("CVSandr") OR(3) GlobalGT("WinskApp1","GLOBAL",2)GlobalGT("SanOrDiEarly","GLOBAL",1)GlobalGT("SanOrDiId","GLOBAL",5)~THEN@2
==Stowinsk IF~InParty("CVSandr") OR(3) GlobalGT("WinskApp1","GLOBAL",2)GlobalGT("SanOrDiEarly","GLOBAL",1)GlobalGT("SanOrDiId","GLOBAL",5)~THEN@3
==CVSandrJ IF~InParty("CVSandr") OR(3) GlobalGT("WinskApp1","GLOBAL",2)GlobalGT("SanOrDiEarly","GLOBAL",1)GlobalGT("SanOrDiId","GLOBAL",5)~THEN@4
END

I_C_T BDDarskh 1 StoSanDarskh
==CVSandrJ IF~InParty("CVSandr") Global("StoSanWinsk","Global",1) ~THEN@5
END

CHAIN
IF~Global("StoOtherWay","Sto301",2)~THEN CVJenliJ IlliSeaTow
@6
DO~SetGlobal("StoOtherWay","Sto301",3)~
==CVSandrJ IF~InParty("CVSandr")~THEN@7
==CVJenliJ@8EXIT