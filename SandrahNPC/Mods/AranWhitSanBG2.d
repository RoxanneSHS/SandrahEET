CHAIN
IF WEIGHT #-2~Global("SanAranH","GLOBAL",3)~THEN C-ARANB Sanheal
@0
DO~SetGlobal("SanAranH","GLOBAL",4)~
==BSandr@1
==C-Aranb@2
==BSandr@3
==C-Aranb@4
==BSandr@5
==C-Aranb@6EXIT

CHAIN
IF WEIGHT #-2~Global("SanAranH","GLOBAL",5)~THEN C-ARANB Sanwine
@7
DO~SetGlobal("SanAranH","GLOBAL",6)RealSetGlobalTimer("SanAranT","GLOBAL",5000)~
==BSandr@8
==C-Aranb@9
==BSandr@10
==C-Aranb@11EXIT

CHAIN
IF WEIGHT #-2~Global("SanAranH","GLOBAL",7)~THEN C-ARANB Sanjob
@12
DO~SetGlobal("SanAranH","GLOBAL",8)RealSetGlobalTimer("SanAranT","GLOBAL",5000)~
==BSandr@13
==C-Aranb@14
==BSandr@15
==C-Aranb@16
==BSandr@17
==C-Aranb@18
==BSandr@19
==C-Aranb@20
==BSandr@21
==C-Aranb@22EXIT

CHAIN
IF WEIGHT #-2~Global("SanAranH","GLOBAL",9)~THEN C-ARANB Sanbunk
@23
DO~SetGlobal("SanAranH","GLOBAL",10)RealSetGlobalTimer("SanAranT","GLOBAL",5000)~
==BSandr@24
==C-Aranb@25DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~EXIT


INTERJECT_COPY_TRANS C-Aranb 54 Sanaranhaer
== C-ARANB IF ~InParty("CVSandr")~THEN@26
== BHAERDA IF ~InParty("CVSandr")~THEN@27
END

INTERJECT_COPY_TRANS C-Aranj 553 Sanaranud
== C-ARANJ IF ~InParty("CVSandr")~THEN@28
== CVSandrJ IF ~InParty("CVSandr")~THEN@29
== C-ARANJ IF ~InParty("CVSandr")~THEN@30
END