APPEND Balth

IF WEIGHT #-17 ~Global("DMWWmeldeathdialog","GLOBAL",3)Dead("sendai")Dead("abazigal")!Global("HadBhaal25Dream5","GLOBAL",1)~THEN BEGIN Sanwhatnow1
SAY @0
IF ~~THEN REPLY @1GOTO 207
IF ~Global("DMWWBvMEnd","GLOBAL",2)~THEN REPLY @2DO~SetGlobal("DMWWmeldeathdialog","GLOBAL",4)~GOTO 207
IF ~!Global("DMWWBvMEnd","GLOBAL",2)~THEN REPLY @3DO~SetGlobal("DMWWmeldeathdialog","GLOBAL",4)~GOTO 207
IF ~~THEN REPLY @4DO~SetGlobal("DMWWmeldeathdialog","GLOBAL",4)~GOTO 206
END
END

EXTEND_BOTTOM Balth 212
IF~InParty("CVSandr") GlobalGT("San25ChiQuest","GLOBAL",12)~THEN REPLY@5EXTERN CVSan25J SanBaltQuil1
END

CHAIN
IF~~THEN CVSan25J SanBaltQuil1
@6
==Balth@7
==CVSan25J@8
==Balth@9
==CVSan25J@10
==Balth@11
END
++@12+ SanBaltQuil2
++@13+ SanBaltQuil2

CHAIN
IF~~THEN CVSan25J SanBaltQuil2
@14
==Balth@15
==CVSan25J@16
==Balth@17
==CVSan25J@18
==Balth@19
==CVSan25J@20
==Balth@21DO~ReallyForceSpell(Myself,DRYAD_TELEPORT) SetGlobal("DMWWGroveRevealed","GLOBAL",1) ~EXIT

EXTEND_BOTTOM Yaga02 8
IF~GlobalGT("San25ChiQuest","GLOBAL",14)~THEN REPLY@22GOTO S40
END

EXTEND_BOTTOM Yaga02 10
IF~!Dead("Balth") GlobalGT("San25ChiQuest","GLOBAL",14)~THEN REPLY@22GOTO S40
END

EXTEND_BOTTOM Yaga02 10
IF~Dead("Balth") GlobalGT("San25ChiQuest","GLOBAL",14)~THEN REPLY@22GOTO S41
END

EXTEND_BOTTOM Yaga02 11
IF~!Dead("Balth") GlobalGT("San25ChiQuest","GLOBAL",14)~THEN REPLY@22GOTO S40
END

EXTEND_BOTTOM Yaga02 11
IF~Dead("Balth") GlobalGT("San25ChiQuest","GLOBAL",14)~THEN REPLY@22GOTO S41
END

CHAIN
IF~~THEN Yaga02 S40
@23
==Solar@24
END
++@25+9

CHAIN
IF~~THEN Yaga02 S41
@23
==Solar@24
END
++@26+12
