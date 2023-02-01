EXTEND_TOP B2#TenyJ 185 #6
IF~InParty("CVSandr")~THEN REPLY@0GOTO SanTeny1
END 

EXTEND_TOP B2#TenyJ 185 #6
IF~InParty("CVJenlig")~THEN REPLY@1GOTO JenTeny1
END 

CHAIN
IF~~THEN B2#TenyJ JenTeny1
@2
=@3
END
++@4EXTERN B2#TenyJ 185
++@5EXTERN B2#TenyJ 185

CHAIN
IF~~THEN B2#TenyJ SanTeny1
@6
=@7
==B2#TenyJ IF~InMyArea("Pellig")~THEN@8
END
++@9EXTERN B2#TenyJ 185
++@10EXTERN B2#TenyJ 185

CHAIN
IF~Global("Umbowl","GLOBAL",5)~THEN B2#TenyJ Sandid1
@11
DO~SetGlobal("Umbowl","GLOBAL",6)~
==BSandr@12
==B2#TenyJ@13
==BSandr@14
==B2#TenyJ@15
==BSandr@16EXIT

CHAIN
IF~Global("Umbowl","GLOBAL",7)~THEN B2#TenyJ Sandid2
@17
DO~SetGlobal("Umbowl","GLOBAL",8)~
==BSandr@18
==B2#TenyJ@19
==BSandr@20
==B2#TenyJ@21
==BSandr@22EXIT