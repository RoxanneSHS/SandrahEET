CHAIN
IF~GlobalGT("DialogosconThael","LOCALS",1)InParty("CVSandr") Global("SanThaDro","LOCALS",0)OR(4) InParty("Viconia") InParty("Sola") InParty("Yasraena") InParty("Driz2") ~THEN BThael SanDrow1
@0
DO~SetGlobal("SanThaDro","LOCALS",1)~
==BSandr@1
=@2
==BThael@3
==BSandr@4
==BThael@5
==BSandr@6
==BThael@7EXIT

CHAIN
IF~GlobalGT("DialogosconThael","LOCALS",3) InParty("CVSandr") Global("SanThaMid","LOCALS",0)~THEN BThael SanMidn
@8
DO~SetGlobal("SanThaMid","LOCALS",1) ~
==BSandr@9
==BThael@10
==BSandr@11
==BThael@12
==BSandr@13
==BThael@14EXIT