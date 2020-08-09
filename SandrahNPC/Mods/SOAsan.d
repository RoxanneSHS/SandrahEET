APPEND  CVSANDRJ
IF~Global("Mecorima","ars002",2)~THEN BEGIN SanMecorima1
SAY@0
IF~~THEN REPLY@1DO~IncrementGlobal("Sanpoints","GLOBAL",1) SetGlobal("Mecorima","ars002",3)~GOTO SanMecorima2
IF~~THEN REPLY@2DO~IncrementGlobal("Sanpoints","GLOBAL",1) SetGlobal("Mecorima","ars002",3)~GOTO SanMecorima2
IF~~THEN REPLY@3DO~IncrementGlobal("Sanpoints","GLOBAL",-5) SetGlobal("Mecorima","ars002",3)~EXIT
END

IF~~THEN BEGIN SanMecorima2
SAY@4
=@5
IF~~THEN REPLY@6EXIT
IF~~THEN REPLY@7EXIT
END
END

//Stone of Askavar
INTERJECT_COPY_TRANS CEARWIN 23  SoAHarp1
== BSANDR IF ~InParty("CVSandr")~THEN@8
== CEARWIN IF ~InParty("CVSandr")~THEN@9
== BSANDR IF ~InParty("CVSandr")~THEN@10
== CEARWIN IF ~InParty("CVSandr")~THEN@11
== BSANDR IF ~InParty("CVSandr")~THEN@12
== CEARWIN IF ~InParty("CVSandr")~THEN@13
END

INTERJECT_COPY_TRANS ARANOR 18 SoAHarp2
== BSANDR IF ~InParty("CVSandr")~THEN@14
== ARANOR IF ~InParty("CVSandr")~THEN@15
== BSANDR IF ~InParty("CVSandr")~THEN@16
== ARANOR IF ~InParty("CVSandr")~THEN@17
== BSANDR IF ~InParty("CVSandr")~THEN@18
== ARANOR IF ~InParty("CVSandr")~THEN@19
END