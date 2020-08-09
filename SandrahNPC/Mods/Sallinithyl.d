ADD_TRANS_TRIGGER SAHPR4 2
~!InParty("CVSandr")~

EXTEND_BOTTOM SAHPR4 2
IF ~InParty("CVSandr")GlobalLT("SanProph","GLOBAL",2)~THEN GOTO Prophki
IF ~InParty("CVSandr")GlobalGT("SanProph","GLOBAL",2)~THEN GOTO 3
END

CHAIN 
IF~~THEN SAHPR4 Prophki
@0
DO~SetGlobal("SanProph","GLOBAL",2) SetGlobal("RebelsHostile","AR2300",2) SetGlobal("Hostilecity","GLOBAL",2)SetGlobal("LeavingSahuagin","AR2300",0)~
=@1
==CVSANDRJ IF~!InParty("O#Xan")~THEN@2
==CVSANDRJ IF~InParty("O#Xan")~THEN@2DO~SetGlobal("O#XanKilledPrinceSahuagin1","GLOBAL",1)~
==SAHPR4@3
==CVSANDRJ@4
==SAHPR4@5
==CVSANDRJ@6
==SAHPR4@7
DO~StartCutSceneMode() StartCutScene("Sahui9")~EXIT

CHAIN
IF WEIGHT #-2~Global("SanProph","GLOBAL",1)~THEN  SAHPR4 Proph1
@8
DO~SetGlobal("SanProph","GLOBAL",2)~
==CVSANDRJ@2
==SAHPR4@3
==CVSANDRJ@4
==SAHPR4@5
==CVSANDRJ@6
==SAHPR4@7
DO~StartCutSceneMode() StartCutScene("Sahui9")~EXIT

CHAIN
IF WEIGHT #-3~Global("SanProph","GLOBAL",2)~THEN  SAHPR4 Proph2
@9
DO~SetGlobal("SanProph","GLOBAL",3)~
==CVSANDRJ@10
==SAHPR4@11
==CVSANDRJ@12
==SAHPR4@13
==CVSANDRJ@14
==SAHPR4@15
==CVSANDRJ@16
==SAHPR4@17
==CVSANDRJ@18
==SAHPR4@19
==CVSANDRJ@20
==SAHPR4@21
==CVSANDRJ@22
==SAHPR4@23
==CVSANDRJ@24
==SAHPR4@25
DO~StartCutSceneMode() StartCutScene("Sahui8")~EXIT

