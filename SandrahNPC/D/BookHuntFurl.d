APPEND ACQ40001

IF ~Global("ACQ4","GLOBAL",2) ~THEN BEGIN 5
SAY @0
IF ~~THEN EXIT
END

IF WEIGHT #-9 ~Global("SanSuBH","GLOBAL",16)~THEN BEGIN BHuntMontHint
SAY @1
IF~~THEN EXTERN BSANDR BHFurlon2
END
END

CHAIN
IF~~THEN BSANDR BHFurlon2
@2
DO ~SetGlobal("SanSuBH","GLOBAL",17)~
==ACQ40001 @3
== BSANDR @4
==ACQ40001 @5
== BSANDR @6
==ACQ40001 @7
== BSANDR @8DO ~TakePartyGold(500)~
==ACQ40001 @9
== BSANDR @10
==ACQ40001 @11
== BSANDR @12
==ACQ40001 @13
== BSANDR @14
==ACQ40001 @15
== BSANDR @16
==ACQ40001 @17
== BSANDR @18
==ACQ40001 @19
== BSANDR @20
==ACQ40001 @21
== BSANDR @22
==ACQ40001 @23DO ~EscapeArea()~
END
++ @24DO~RealSetGlobalTimer("BloomwT","GLOBAL",300)~EXIT

// Furlon prior BG Bridge
INTERJECT ACQ40001 0 FurlIntr
== CVSandrJ IF ~InParty("CVSandr")~THEN @25
== ACQ40001 IF ~InParty("CVSandr")~THEN @26
== CVSandrJ IF ~InParty("CVSandr")~THEN @27DO ~TakePartyGold(50)~
== ACQ40001 IF ~InParty("CVSandr")~THEN @28
== CVSandrJ IF ~InParty("CVSandr")~THEN @29
== ACQ40001 IF ~InParty("CVSandr")~THEN @30
== CVSandrJ IF ~InParty("CVSandr")~THEN @31
== ACQ40001 IF ~InParty("CVSandr")~THEN @32
END ACQ40001 2

INTERJECT ACQ40001 1 FurlIntre
== CVSandrJ IF ~InParty("CVSandr")~THEN @25
== ACQ40001 IF ~InParty("CVSandr")~THEN @26
== CVSandrJ IF ~InParty("CVSandr")~THEN @27DO ~TakePartyGold(50)~
== ACQ40001 IF ~InParty("CVSandr")~THEN @28
== CVSandrJ IF ~InParty("CVSandr")~THEN @29
== ACQ40001 IF ~InParty("CVSandr")~THEN @30
== CVSandrJ IF ~InParty("CVSandr")~THEN @31
== ACQ40001 IF ~InParty("CVSandr")~THEN @32
END ACQ40001 2

