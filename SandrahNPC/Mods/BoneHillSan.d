// Lendore + Bone Hill 1
INTERJECT BHPELL 11 BHArrival
==IMOEN2_ IF ~InParty("CVSandr") InParty("Imoen2") AreaCheck("bh0100") ~THEN @27
== CVSandrJ IF ~InParty("CVSandr") InParty("Imoen2") AreaCheck("bh0100") ~THEN @0DO ~RealSetGlobalTimer("BH1EvenT","GLOBAL",345) ~
==IMOEN2_ IF ~InParty("CVSandr") InParty("Imoen2") AreaCheck("bh0100") ~THEN @1
== BHPELL  @2 DO~EscapeArea()~
EXIT

INTERJECT_COPY_TRANS BHFABIO 0 SanFab1
== CVSandrJ IF ~InParty("CVSandr") ~THEN @3
==BHFABIO IF ~InParty("CVSandr") ~THEN @4
== CVSandrJ IF ~InParty("CVSandr") ~THEN @5
==BHFABIO IF ~InParty("CVSandr") ~THEN @6DO ~SetGlobal("SanFab2","GLOBAL",1)~
== IMOEN2_ IF ~InParty("CVSandr") InParty("Imoen2")~THEN @7
END

INTERJECT_COPY_TRANS BHGRELUS 4 Sangrel
== CVSandrJ IF ~InParty("CVSandr") ~THEN @8
== BHGRELUS IF ~InParty("CVSandr") ~THEN @9
== CVSandrJ IF ~InParty("CVSandr") ~THEN @10
== BHGRELUS IF ~InParty("CVSandr") ~THEN @11
== CVSandrJ IF ~InParty("CVSandr") ~THEN @12
END

INTERJECT_COPY_TRANS BHFAIR 0 Sanfair
== BHFAIR IF ~InParty("CVSandr") ~THEN @13
END

INTERJECT_COPY_TRANS BHFELWIN 1 amosbew
== BHFELWIN IF ~InParty("CVSandr") ~THEN @14
== CVSandrJ IF ~InParty("CVSandr") ~THEN @15
== BHFELWIN IF ~InParty("CVSandr") ~THEN @16
== CVSandrJ IF ~InParty("CVSandr") ~THEN @17
END


//Sir Billy Bob

INTERJECT_COPY_TRANS BHBBOB 4 BHBBSan
== CVSandrJ IF ~InParty("CVSandr")~THEN @18
== BHBBOB IF ~InParty("CVSandr")~THEN @19
== CVSandrJ IF ~InParty("CVSandr")~THEN @20DO ~IncrementGlobal("ElmHint","GLOBAL",1) ~
END

// Meet Pelltar
CHAIN
IF ~Global("SanPellQ0","LOCALS",1)~THEN CVSANDRJ MeetPell
@21
DO~SetGlobal("SanPellQ0","LOCALS",2) ~
== BHPELL  @22
== CVSandrJ @23
== BHPELL  @24
== BIMOEN IF ~InParty("Imoen2") ~THEN @25
END
++ @26EXTERN BHPELL 1
