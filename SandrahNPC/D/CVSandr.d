BEGIN CVSANDR

IF ~NumTimesTalkedTo(0)~THEN BEGIN FirstJoin
SAY @0
= @1
= @2
IF ~~THEN REPLY @3GOTO SanJoin
IF ~PartyHasItem("GIFTOFM")~THEN REPLY @4GOTO GiftofM
IF ~~THEN REPLY @5GOTO Trust
END

IF ~~THEN BEGIN SanJoin
SAY @6
IF ~~THEN REPLY @7DO~IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO IntroImo1
END

IF ~~THEN BEGIN GiftofM
SAY @8
IF ~~THEN REPLY @9GOTO SanJoin
IF ~~THEN REPLY @10GOTO Trust
END

IF ~~THEN BEGIN Trust
SAY @11
IF ~~THEN REPLY @12GOTO SanJoin
IF ~~THEN REPLY @13DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~GOTO AnotherDay
END

IF ~~AnotherDay
SAY @14
IF ~~THEN DO ~AddJournalEntry(@60012,INFO) ~EXIT
END

IF ~~IntroImo1
SAY @15
IF ~InParty("imoen2") ~THEN REPLY @16DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO IntroImo2b
IF ~!InParty("imoen2")~THEN REPLY @17GOTO WhereIsImo
END

IF ~~IntroImo2b
SAY @18
IF ~InParty("imoen2")~THEN EXTERN BIMOEN IntroImoS
IF ~!InParty("imoen2")~THEN EXIT
END

IF ~~IntroImo2
SAY @19
IF ~~THEN REPLY @20GOTO IntroImo3
IF ~~THEN REPLY @21GOTO IntroImo3
END

IF ~~IntroImo3
SAY @22IF ~~THEN DO ~SetGlobal("SandrahJoined","GLOBAL",1) JoinParty()~EXTERN BIMOEN IntroImoN
END

IF ~~WhereIsImo
SAY @23
IF ~!Dead("Imoen2")~THEN REPLY @24GOTO SeeBehindMask
IF ~!Dead("Imoen2")~THEN REPLY @25GOTO LovelyFool1
IF ~!Dead("Imoen2")~THEN REPLY @26GOTO SeeBehindMask
IF ~Dead("Imoen2")~THEN REPLY @40GOTO ImoNeedRess
END

IF~~ImoNeedRess
SAY @27
= @41
= @32
IF ~~THEN DO ~SetGlobal("SandrahJoined","GLOBAL",1) JoinParty() ~EXIT
END

IF ~~LovelyFool1
SAY @27
= @28
= @29
IF ~~THEN REPLY @30DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO LovelyFool2
IF ~~THEN REPLY @31GOTO LovelyFool2
END

IF ~~LovelyFool2
SAY @32
IF ~~THEN DO ~SetGlobal("SandrahJoined","GLOBAL",1) JoinParty() ~EXIT
END

IF ~~SeeBehindMask
SAY @33
= @34
IF ~~THEN REPLY @35GOTO LovelyFool2
IF ~~THEN REPLY @36GOTO LovelyFool2
END

IF ~NumTimesTalkedToGT(0) ~THEN BEGIN SecondChance
SAY @37
IF ~~THEN REPLY @12GOTO SanJoin
END

APPEND BIMOEN

IF ~~THEN BEGIN IntroImoS
SAY @38
IF ~~THEN EXTERN CVSANDR IntroImo2
END

IF ~~THEN BEGIN IntroImoN
SAY @39
IF ~~THEN EXIT
END
END
