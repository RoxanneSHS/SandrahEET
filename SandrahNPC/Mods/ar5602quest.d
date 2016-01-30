APPEND CVSandrJ

IF ~Global("SanHelpQ","RA5602",1)~ THEN BEGIN SanIWDIcetmplQ1
SAY~May I help, <CHARNAME>?~
IF~~THEN REPLY~Ah, damned riddles. Your specialty, my beautiful thinker. Any ideas?~ GOTO SanIWDIcetmplQ2
IF~~THEN REPLY~ I will be damned if I couldn't solve this riddle. You may help by standing there silently and watching me. (Wink) And be impressed my my cleverness afterwards, of course.~DO~ SetGlobal("SanHelpQ","RA5602",2) ~GOTO SanIWDIcetmplQ3
END

IF~~THEN BEGIN SanIWDIcetmplQ2
SAY~First we need to have all the ten jewel stones from the beds in our hands. Then we follow the Monk's Spirit's clues.~
IF~OR(10)!PartyHasItem("IwdGem1")
!PartyHasItem("IwdGem2")
!PartyHasItem("IwdGem3")
!PartyHasItem("IwdGem4")
!PartyHasItem("IwdGem5")
!PartyHasItem("IwdGem6")
!PartyHasItem("IwdGem7")
!PartyHasItem("IwdGem8")
!PartyHasItem("IwdGem9")
!PartyHasItem("IwdGem10")~THEN REPLY~ Let's go to work.~ DO~SetGlobal("SanHelpQ","RA5602",3)~EXIT
IF~PartyHasItem("IwdGem1")
PartyHasItem("IwdGem2")
PartyHasItem("IwdGem3")
PartyHasItem("IwdGem4")
PartyHasItem("IwdGem5")
PartyHasItem("IwdGem6")
PartyHasItem("IwdGem7")
PartyHasItem("IwdGem8")
PartyHasItem("IwdGem9")
PartyHasItem("IwdGem10")~THEN REPLY~ The stones we have. What now?~ DO~SetGlobal("SanHelpQ","RA5602",4)~EXIT
END

IF~~THEN BEGIN SanIWDIcetmplQ3
SAY~(Smiles) My captain, my hero, I already stand in admiration. I am ready to help or applaud, just as you like.~
IF~~THEN EXIT
END

IF WEIGHT #-12~AreaCheck("RA5602") Global("SanHelpQ","RA5602",2) Global("PlantedItems","RA5602",0) IsGabber(Player1)~ THEN BEGIN SanIWDIcetmplQ4
SAY~My love?~
IF~~THEN REPLY~Well, I guess it is your turn to try your luck with this riddle.~ GOTO SanIWDIcetmplQ2
IF~~THEN REPLY~I hate to say it but I give up with this stuff - it's surely your domain, counsellor.~ GOTO SanIWDIcetmplQ2
END
END
