BEGIN CVSlat
BEGIN CVSlat2

CHAIN
IF~Global("Surrender","LOCALS",2)~THEN CVSlat GiveUp
@0
DO~SetGlobal("Surrender","LOCALS",3)~
==CVSandrJ@1
==BKeldor IF~InParty("Keldorn")~THEN@2
==Banomen IF~InParty("Anomen")~THEN@3
==CVSlat@4
==BKeldor IF~InParty("Keldorn")~THEN@5
==Banomen IF~InParty("Anomen")~THEN@5
==CVSlat@6
==CVSandrJ@7
==CVSlat@8
==CVSandrJ@9
==CVSlat@10
==BKeldor IF~InParty("Keldorn")~THEN@11
==Banomen IF~InParty("Anomen")~THEN@11
==CVSlat@12
==CVSandrJ@13
==CVSlat@14
==CVSandrJ@15
END
++@16EXTERN BSandr SanDeciH
IF~InParty("Keldorn")~THEN REPLY@17DO~SetGlobal("SanKeldorn","GLOBAL",9) Attack("CVSlat") ActionOverride("Keldorn",Attack("CVSlat")) ActionOverride("CVSlat",DestroyItem("MINHP1")) ReputationInc(-3) ~EXIT
IF~InParty("Anomen")~THEN REPLY@17DO~SetGlobal("SanHealanom","GLOBAL",11) Attack("CVSlat") ActionOverride("Anomen",Attack("CVSlat")) ActionOverride("CVSlat",DestroyItem("MINHP1")) ReputationInc(-3) ~EXIT
IF~InParty("Keldorn")~THEN REPLY@18EXTERN BKeldor SanDeciK
IF~InParty("Anomen")~THEN REPLY@19EXTERN Banomen SanDeciA

CHAIN
IF~~THEN BSandr SanDeciH
@20DO~SetGlobal("SanKeldorn","GLOBAL",9) SetGlobal("SanHealanom","GLOBAL",11) SetGlobal("SanQuedPris","GLOBAL",1) ActionOverride("CVSlat",DestroySelf()) ReallyForceSpellRES("Spin788","CVSlat")~EXIT

CHAIN
IF~~THEN BKeldor SanDeciK
@21
==CVSandrJ@22
==BKeldor@23
END
++@24EXTERN BSandr SanDeciH

CHAIN
IF~~THEN Banomen SanDeciA
@21
==CVSandrJ@25
==Banomen@23
END
++@24EXTERN BSandr SanDeciH

CHAIN
IF~Global("SanQuedPris","GLOBAL",3)~THEN CVSlat2 NeverGiveUp
@26
DO~SetGlobal("SanQuedPris","GLOBAL",4)~
==HABrega@27
==CVSlat2@28
==BKeldor IF~InParty("Keldorn")~THEN@29
==Banomen IF~InParty("Anomen")~THEN@29
==CVSandrJ IF~InParty("Keldorn")~THEN@30
==CVSandrJ IF~InParty("Anomen")~THEN@31
==HABrega IF~InParty("Keldorn")~THEN@32
==HABrega IF~InParty("Anomen")~THEN@33
==BKeldor IF~InParty("Keldorn")~THEN@34
==BAnomen IF~InParty("Anomen")~THEN@35
==HABrega@36
==CVSlat2@37
==HABrega@38
=@39DO~ClearAllActions() StartCutSceneMode() StartCutScene("CVSlaPri")~EXIT

