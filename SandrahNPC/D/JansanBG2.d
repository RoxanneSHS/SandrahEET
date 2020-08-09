CHAIN
IF WEIGHT #-7~Global("SanJanB","LOCALS",3)~THEN BJAN SanHealJan1
@0
DO~SetGlobal("SanJanB","LOCALS",4)~
==BSandr@1
==BJAN@2
==BSandr@3
==BJAN@4
==BSandr@5
==BJAN@6EXIT

EXTEND_BOTTOM Gerhar 13
IF~InParty("CVSandr")~THEN REPLY@7EXTERN CVSandrJ JanLisPlot1
END

CHAIN
IF~~THEN  CVSandrJ JanLisPlot1
@8
==Gerhar@9
==CVSandrJ@10
==Gerhar@11
END
++@12EXTERN Gerhar 17
++@13EXTERN Gerhar 17
