APPEND  CVSANDRJ

//Betana & Moxen
IF~Global("SanMoxen","GLOBAL",1)~THEN BEGIN SanMoxDislike1
SAY@0
IF~~THEN REPLY@1GOTO SanMoxDislike2
IF~~THEN REPLY@2GOTO SanMoxDislike3
END

IF~~THEN BEGIN SanMoxDislike2
SAY@3
IF~~THEN REPLY@4DO~SetGlobal("SanMoxen","GLOBAL",2)~EXIT
IF~~THEN REPLY@2GOTO SanMoxDislike3
END

IF~~THEN BEGIN SanMoxDislike3
SAY@5
IF~~THEN REPLY@6DO~SetGlobal("SanMoxen","GLOBAL",3)~EXIT
IF~~THEN REPLY@7DO~SetGlobal("SanMoxen","GLOBAL",3)~EXIT
IF~~THEN REPLY@8DO~SetGlobal("SanMoxen","GLOBAL",3)~GOTO SanMoxDislike4
END

IF~~THEN BEGIN SanMoxDislike4
SAY@9
IF~~THEN DO~IncrementGlobal("Sanpoints","GLOBAL",-3)~EXIT
END

IF~Global("SanMoxen","GLOBAL",2)Global("FindBetan","LOCALS",1)~THEN BEGIN SanMoxDislike5
SAY@10
IF~~THEN REPLY@11EXTERN CVSANDRJ SanMoxDislike7
END

IF~Global("SanMoxen","GLOBAL",3)Global("FindBetan","LOCALS",1)~THEN BEGIN SanMoxDislike6
SAY@12
IF~~THEN EXTERN CVSANDRJ SanMoxDislike7
END
END

CHAIN
IF~~THEN CVSANDRJ SanMoxDislike7
@13
DO~SetGlobal("SanMoxen","GLOBAL",4)SetGlobal("FindBetan","LOCALS",2)~
== HAIASS@14
==PELLIG@15
==CLFWLF@16
==PELLIG@17
END
++@18
EXIT

EXTEND_TOP CLFWLF 10 #1
IF~Global("SanMoxen","GLOBAL",4) ~THEN REPLY @19DO ~SetGlobal("SeeMoxenDead","LOCALS",5)~GOTO 21
END

EXTEND_TOP CLFWLF 15 #1
IF~Global("SanMoxen","GLOBAL",4) ~THEN REPLY @19DO ~SetGlobal("SeeMoxenDead","LOCALS",5) ~GOTO 21
END