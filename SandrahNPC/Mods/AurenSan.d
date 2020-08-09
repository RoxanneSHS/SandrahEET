CHAIN
IF~Global("SanAurenB","GLOBAL",2)~THEN BSandr SanAuren1
@0
DO~SetGlobal("SanAurenB","GLOBAL",3)~
==K#AurenB@1
==BSandr@2
==K#AurenB@3
==BSandr@4
==K#AurenB@5
==BSandr@6EXIT

CHAIN
IF~Global("SanAurenB","GLOBAL",4)~THEN BSandr SanAuren5
@7
DO~SetGlobal("SanAurenB","GLOBAL",5)~
==K#AurenB@8
==BSandr@9
==K#AurenB@10
==BSandr@11
==K#AurenB IF~Global("SanRomPath","GLOBAL",1)~THEN@12
==K#AurenB IF~Global("SanRomPath","GLOBAL",2)~THEN@13
==BSandr@14
==K#AurenB@15EXIT