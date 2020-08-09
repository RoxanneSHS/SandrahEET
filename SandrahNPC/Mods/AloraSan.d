CHAIN
IF WEIGHT #-2~Global("AlorPel","GLOBAL",4)~THEN BCMALOR Heali
@0
DO~SetGlobal("AlorPel","GLOBAL",5)~
==BSandr@1
==BCMALOR@2
==BSandr@3
==BCMALOR@4EXIT

CHAIN
IF~InMyArea("Pellig") See("Pellig") Global("AlorPel","GLOBAL",5)~THEN BCMALOR Pelli
@5
DO~SetGlobal("AlorPel","GLOBAL",6)~
==Pellig@6
==BCMALOR@7
==Pellig@6
==BCMALOR@8
==Pellig@9
==BCMALOR@10EXIT

CHAIN
IF~InParty("CVSandr") See("CVSandr") Global("AlorPel","GLOBAL",6)~THEN BCMALOR Thivi
@11
DO~SetGlobal("AlorPel","GLOBAL",7)~
==BSandr@12
==BCMALOR@13
==BSandr@14EXIT

CHAIN
IF~InMyArea("Pellig") See("Pellig") Global("AlorPel","GLOBAL",0)~THEN BALORA Pelli
@5
DO~SetGlobal("AlorPel","GLOBAL",1)~
==Pellig@6
==BALORA@7
==Pellig@6
==BALORA@8
==Pellig@9
==BALORA@10EXIT

CHAIN
IF~InParty(Myself) RandomNum(2,1)~THEN  BCMALOR Random1
@15EXIT

CHAIN
IF~InParty(Myself) RandomNum(2,2)~THEN  BCMALOR Random2
@16EXIT