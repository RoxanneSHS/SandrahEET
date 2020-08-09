BEGIN CVDemog

IF~OR(2)!InParty("CVSandr") StateCheck("CVSandr",CD_STATE_NOTVALID)~THEN BEGIN fail0
SAY@0
IF~~THEN EXIT
END

IF~!PartyHasItem("AlzaHrt1") InParty("CVSandr") !StateCheck("CVSandr",CD_STATE_NOTVALID)~THEN BEGIN fail1
SAY@1
IF~~THEN EXIT
END

CHAIN
IF~PartyHasItem("AlzaHrt1") InParty("CVSandr") !StateCheck("CVSandr",CD_STATE_NOTVALID)~THEN CVDemog succ
@2
DO~SetGlobal("SanHaerRel1","GLOBAL",34)~
==CVSandrJ@3
==CVDemog@4
==CVSandrJ@5
==CVDemog@6
==CVSandrJ@7
==CVDemog@8
==CVSandrJ@9
==CVDemog@10
==CVSandrJ@11
==CVDemog@12DO~TakePartyItem("SanHaer") TakePartyItem("AlzaHrt1") ~
==CVSandrJ@13
==CVDemog@8
==CVSandrJ@14
==CVDemog@15
=@16DO~Activate("Haerdalis") Wait(6) ReallyForceSpell(Myself,DRYAD_TELEPORT)~EXIT
