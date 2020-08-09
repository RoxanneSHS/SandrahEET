BEGIN CVCoper

CHAIN
IF~Global("Copersan","ar10pb",2)~THEN CVSandrJ SargazD1
@0
==BIMOEN IF~InParty("Imoen2")~THEN@1
END
++@2+ SargazD2

CHAIN
IF~~THEN CVSandrJ SargazD2
@3
==CVCoper@4
==CVSandrJ@5
==CVCoper@6
==CVSandrJ@7
==CVCoper@8
DO~SetGlobal("Copersan","ar10pb",3) CreateCreature("aacrs066",[2732.3090],5)Kill(Myself)~EXIT