BEGIN CVDESK

IF ~NumTimesTalkedTo(0) See("CVSandr")~ THEN BEGIN InvNar
SAY @0
IF ~~ THEN REPLY @1 DO ~ SetGlobal("SanNarQ","GLOBAL",5) ~ EXIT
IF ~~ THEN REPLY @2 EXIT
END

IF~ NumTimesTalkedToGT(0) GlobalLT("SanNarQ","GLOBAL",5)~ THEN BEGIN InvNar2
SAY @3
IF ~~ THEN REPLY @1 DO ~ SetGlobal("SanNarQ","GLOBAL",5) ~ EXIT
IF ~~ THEN REPLY @2 EXIT
END