BEGIN ntashma

APPEND IF_FILE_EXISTS NTKeelor
IF WEIGHT #-2~Global("SanKelorHeal","GLOBAL",2)~THEN BEGIN InBereg1
SAY@0
=@1
IF~~THEN DO~SetGlobal("SanKelorHeal","GLOBAL",3) MoveToPoint([899.1243]) MoveBetweenAreas("BG3347",[377.345],12)~EXIT
END
END

CHAIN
IF WEIGHT #-3~Global("SanKelorHeal","GLOBAL",3)~THEN IF_FILE_EXISTS NTKeelor InBereg2
@2
DO~SetGlobal("SanKelorHeal","GLOBAL",4)~
==CVSandrJ@3
==NTKeelor@4
==CVSandrJ@5
==NTKeelor@6
==CVSandrJ@7
==NTKeelor@8
==CVSandrJ@9
==NTKeelor@10
==CVSandrJ@11
==NTKeelor@12
==CVSandrJ@13
==NTKeelor@14DO~EscapeArea()~EXIT

ADD_TRANS_ACTION NTKeelor BEGIN 0 END BEGIN 0 END ~SetGlobal("SanKelorHeal","GLOBAL",1)~

ADD_TRANS_ACTION NTKeelor BEGIN 1 END BEGIN 0 END ~SetGlobal("SanKelorHeal","GLOBAL",1)~

ADD_TRANS_ACTION NTKeelor BEGIN 2 END BEGIN 0 END ~SetGlobal("SanKelorHeal","GLOBAL",1)~

ADD_TRANS_ACTION NTKeelor BEGIN 4 END BEGIN 0 END ~SetGlobal("SanKelorHeal","GLOBAL",1)~

CHAIN
IF~Global("CVGodag","GLOBAL",6)~THEN NTAshma Hasdagger
@15
DO~SetGlobal("CVGodag","GLOBAL",7) ~
==CVSandrJ@16
==NTAshma@17
==CVSandrJ@18
==NTAshma@19
END
++@20EXIT
++@21EXIT
++@22EXIT