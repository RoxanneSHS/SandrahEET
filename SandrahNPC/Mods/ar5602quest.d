APPEND CVSandrJ

IF ~Global("SanHelpQ","RA5602",1)~THEN BEGIN SanIWDIcetmplQ1
SAY@0
IF~~THEN REPLY@1GOTO SanIWDIcetmplQ2
IF~~THEN REPLY@2DO~SetGlobal("SanHelpQ","RA5602",2) ~GOTO SanIWDIcetmplQ3
END

IF~~THEN BEGIN SanIWDIcetmplQ2
SAY@3
IF~OR(10)!PartyHasItem("IwdGem1")
!PartyHasItem("IwdGem2")
!PartyHasItem("IwdGem3")
!PartyHasItem("IwdGem4")
!PartyHasItem("IwdGem5")
!PartyHasItem("IwdGem6")
!PartyHasItem("IwdGem7")
!PartyHasItem("IwdGem8")
!PartyHasItem("IwdGem9")
!PartyHasItem("IwdGem10")~THEN REPLY@4DO~SetGlobal("SanHelpQ","RA5602",3)~EXIT
IF~PartyHasItem("IwdGem1")
PartyHasItem("IwdGem2")
PartyHasItem("IwdGem3")
PartyHasItem("IwdGem4")
PartyHasItem("IwdGem5")
PartyHasItem("IwdGem6")
PartyHasItem("IwdGem7")
PartyHasItem("IwdGem8")
PartyHasItem("IwdGem9")
PartyHasItem("IwdGem10")~THEN REPLY@5DO~SetGlobal("SanHelpQ","RA5602",4)~EXIT
END

IF~~THEN BEGIN SanIWDIcetmplQ3
SAY@6
IF~~THEN EXIT
END

IF WEIGHT #-12~AreaCheck("RA5602") Global("SanHelpQ","RA5602",2) Global("PlantedItems","RA5602",0) IsGabber(Player1)~THEN BEGIN SanIWDIcetmplQ4
SAY@7
IF~~THEN REPLY@8GOTO SanIWDIcetmplQ2
IF~~THEN REPLY@9GOTO SanIWDIcetmplQ2
END
END
