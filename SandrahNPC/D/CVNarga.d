BEGIN CVNarga

CHAIN
IF~Global("Narga","BG0200",1) ~THEN CVNarga InBGTown1
@0
==BIMOEN IF~InParty("Imoen2")~THEN@1
==CVSandrJ IF~!InParty("Imoen2")~THEN@2
==CVSandrJ IF~InParty("Imoen2")~THEN@3
==CVNarga@4
==CVSandrJ@5
==CVNarga@6
==CVSandrJ@7
END
++@8+ InBGTown2
++@9+ InBGTown3

CHAIN 
IF~~THEN CVNarga InBGTown2
@10
==CVSandrJ@11
==CVNarga@12DO~SetGlobal("Narga","BG0200",2) Enemy() ~EXIT

CHAIN
IF~~THEN CVNarga InBGTown3
@12DO~SetGlobal("Narga","BG0200",2) Enemy() ~EXIT