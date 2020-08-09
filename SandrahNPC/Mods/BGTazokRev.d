APPEND TAZOK_
IF~~THEN BEGIN s102
SAY@0
IF~~THEN DO ~ClearAllActions() ActionOverride("tazok",DestroyItem("mihp1")) SetGlobal("SanTazPatrl","GLOBAL",2) SetGlobal("JoinedBandits","Global",1) StartCutSceneMode() StartCutScene("SanPatrl") ~EXIT
END

IF WEIGHT #-2 ~Global("SanTazPatrl","GLOBAL",2) ~THEN BEGIN s103
SAY@1
IF~InParty("CVJenlig")~THEN GOTO s104
IF ~!InParty("CVJenlig")~THEN DO ~SetGlobal("SanTazPatrl","GLOBAL",3)
Enemy()
Attack("CVSandr") ~EXIT
END   
END

INTERJECT TAZOK_ 13 SanTazPatrl
== CVSandrJ IF ~InParty("CVSandr")~THEN @2
END TAZOK_ s102

INTERJECT TAZOK_ 27 SanTazPatrl2
== CVSandrJ IF ~InParty("CVSandr")~THEN @2
END TAZOK_ s102

INTERJECT TAZOK_ 18 SanCheatKiv
== CVSandrJ IF ~InParty("CVSandr")InParty("Kivan")Global("P#KivanTazok1","GLOBAL",2)~THEN @3
==TAZOK_@4
END
++@5+s105
++ @6+s105

CHAIN
IF~~THEN TAZOK_ s104
@7
==CVJenliJ@8
==TAZOK_@9
==CVJenliJ@10
==TAZOK_@11
DO~SetGlobal("SanTazPatrl","GLOBAL",3) DestroyItem("mihp1") Wait(2) Enemy() Attack("CVJenlig") ~EXIT

CHAIN
IF~~THEN  TAZOK_ s105
@12
END
++@13+s106
++@14+s106

CHAIN
IF~~THEN  TAZOK_ s106
@15
== CVSandrJ@2
==TAZOK_@0
DO ~ClearAllActions() ActionOverride("tazok",DestroyItem("mihp1")) SetGlobal("JoinedBandits","Global",1) SetGlobal("SanTazPatrl","GLOBAL",2) StartCutSceneMode() StartCutScene("SanPatrl") ~EXIT

APPEND Ardeno
IF WEIGHT #-2~Global("SanTazDead","BG1900",2) ~THEN BEGIN FoundTaz
SAY@16
=@17
IF~~THEN DO~SetGlobal("SanTazDead","BG1900",3) SetGlobal("JoinedBandits","Global",0) Enemy()~EXIT
END
END
