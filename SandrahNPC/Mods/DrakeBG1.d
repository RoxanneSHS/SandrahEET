I_C_T C0Drake 15  SanMeetC0Drake
==CVSandrJ IF~InParty("CVSandr")~THEN@0
==C0Drake IF~InParty("CVSandr")~THEN@1
==CVSandrJ IF~InParty("CVSandr")~THEN@2
 END

CHAIN
IF~Global("SanMeetC0Drake","Global",3)~THEN C0DrakeJ Whyheal
@3
DO~SetGlobal("SanMeetC0Drake","Global",4)~
==CVSandrJ@4
==C0DrakeJ@5
==CVSandrJ@6
==C0DrakeJ@7EXIT

CHAIN
IF~Global("SanDrakeChic","BG3700",1)~THEN C0DrakeJ Mellil
@8
DO~SetGlobal("SanDrakeChic","BG3700",2)~
==CVSandrJ@9
==C0DrakeJ@10
=@11EXIT

CHAIN
IF~Global("C0DrakeBassilus","GLOBAL",5)~THEN C0DrakeJ WhyBasil
@12
DO~SetGlobal("C0DrakeBassilus","GLOBAL",6)~
==CVSandrJ@13
==C0DrakeJ@14
==CVSandrJ@15
==C0DrakeJ@16
==CVSandrJ IF~GlobalGT("Chapter","Global",3)~THEN@17
==CVSandrJ IF~GlobalLT("Chapter","Global",4)~THEN@18
==C0DrakeJ@19EXIT

CHAIN
IF~Global("SanMeetC0Drake","Global",5)~THEN C0DrakeJ Drink
@20
DO~SetGlobal("SanMeetC0Drake","Global",6) ~
== BSANDR@21
== C0DrakeJ @22
== BSANDR @23
== C0DrakeJ @24
== BSANDR @25
== C0DrakeJ @26
== BSANDR @27
== C0DrakeJ @28
== BSANDR @29
= @30
EXIT
