BEGIN CVGonast

CHAIN
IF~NumTimesTalkedTo(0)~THEN  CVGonast Letter1
@0
==CVSandrJ@1
== CVGonast@2
==CVSandrJ@3
== CVGonast@4
==CVSandrJ@5
== CVGonast@6
==CVSandrJ@7
== CVGonast@8DO~AddexperienceParty(5650) TakePartyGold(1500) EscapeArea()~EXIT

APPEND CVSandrJ
IF~~THEN BEGIN SanSmellTrap2
SAY@9
=@10
IF~~THEN REPLY@11GOTO SanSmellTrap3
END

IF~~THEN BEGIN SanSmellTrap3
SAY@12
IF~~THEN REPLY@13DO~SetGlobal("SanSmellTrap","GLOBAL",2)~EXIT
IF~~THEN REPLY@14DO~SetGlobal("SanSmellTrap","GLOBAL",2)ClearAllActions() StartCutSceneMode() StartCutScene("cvhlond")~EXIT
END

IF~Global("SanRecc","ar3644",1)~THEN BEGIN SanHlondRet1
SAY@15
IF~~THEN REPLY@16GOTO SanHlondRet2
END

IF~~THEN BEGIN SanHlondRet2
SAY@17
IF~~THEN REPLY@18DO~SetGlobal("SanRecc","ar3644",2)~EXIT
END

IF ~Global("SanMystrev","ar3610",1)~THEN BEGIN MystRev1
SAY@19
IF~~THEN REPLY@20DO~IncrementGlobal("Sanpoints","GLOBAL",-10) SetGlobal("SanMystrev","ar3610",2) ~EXIT
IF~~THEN REPLY@21DO~IncrementGlobal("Sanpoints","GLOBAL",3) SetGlobal("SanMystrev","ar3610",2)~EXIT
END
END

INTERJECT CBMYSTP2 1 SanSmellTrap
== CVSANDRJ IF ~InParty("CVSandr")~THEN@22
== CBMYSTP2 IF ~InParty("CVSandr")~THEN@23
== CVSANDRJ IF ~InParty("CVSandr")~THEN@24
== CBMYSTP2 IF ~InParty("CVSandr")~THEN@25
== CVSANDRJ IF ~InParty("CVSandr")~THEN@26
END
++@27EXTERN CVSandrJ SanSmellTrap2
++@28EXTERN CVSandrJ SanSmellTrap2

