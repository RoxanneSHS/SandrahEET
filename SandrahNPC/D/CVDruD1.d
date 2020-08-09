BEGIN CVDruD1

IF~Global("DruTlk","CVDru0",0)~THEN BEGIN DrutalkF
SAY@0
IF~~THEN REPLY@1DO~SetGlobal("DruTlk","CVDru0",1)~GOTO DrutalkF2
END

IF~~THEN BEGIN DrutalkF2
SAY@2
=@3
IF~~THEN DO~Enemy()~EXIT
END

IF~Global("DruTlk","CVDru0",1)~THEN BEGIN DrutalkH
SAY@4
IF~~THEN DO~Enemy()~EXIT
END

BEGIN CVDrud3

CHAIN
IF~Global("DruidCar","BG4900",2)~THEN CVDrud3 Carnival
@5
DO~SetGlobal("DruidCar","BG4900",3)~
==CVDrud1@6
==CVDrud3@7
==CVDrud1@8
==CVDrud3@9
==CVDrud1@10
==CVDrud3@11
==CVDrud1@12
==CVDrud3@13
==CVDrud1@14
END
++@15+ Carniv2
++@16+ Carniv2
++@17+ Carniv2

CHAIN
IF~~THEN CVDrud3 Carniv2
@18DO~Enemy()~
==CVDrud1@19DO~Enemy()~EXIT