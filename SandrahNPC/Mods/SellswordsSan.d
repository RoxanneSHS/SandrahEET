I_C_T O#LLMESS 0 Sansellswordmod
==CVSandrJ IF~InParty("CVSandr")~THEN@0
==O#LLMESS IF~InParty("CVSandr")~THEN@1
==CVSandrJ IF~InParty("CVSandr")~THEN@2
END

I_C_T O#LLKIMM 1 Sansellswordmod2
==O#LLKIMM IF~InParty("CVSandr")~THEN@3
==CVSandrJ IF~InParty("CVSandr")~THEN@4
==O#LLKIMM IF~InParty("CVSandr")~THEN@5
END

INTERJECT O#LLBrow 10 SanSellEilles
==CVSandrJ IF~InParty("CVSandr")~THEN@6
==O#LLBrow IF~InParty("CVSandr")~THEN@7
==CVSandrJ IF~InParty("CVSandr")~THEN@8
==O#LLBrow IF~InParty("CVSandr")~THEN@9
==CVSandrJ IF~InParty("CVSandr") OR(2) GlobalGT("SanIntEllesInt2","Global",0) GlobalGT("SanIntEllesInt1","Global",0)~THEN@10
==CVSandrJ IF~InParty("CVSandr") Global("SanIntEllesInt2","Global",0) Global("SanIntEllesInt1","Global",0)~THEN@11
END
++@12+ 11
++@13+ 11

I_C_T O#LLKIMM 136 Sansellswordmod3
==O#LLJarl IF~InParty("CVSandr")~THEN@14
==CVSandrJ IF~InParty("CVSandr")~THEN@15
==O#LLKIMM IF~InParty("CVSandr")~THEN@16
==O#LLJarl IF~InParty("CVSandr")~THEN@17
END