BEGIN CVDESK

IF ~NumTimesTalkedTo(0) See("CVSandr")~ THEN BEGIN InvNar
SAY ~You have found what Master wants. Give it to Master now?~
IF ~~ THEN REPLY ~Yes, take me to Naronguth.~ DO ~ SetGlobal("SanNarQ","GLOBAL",5) ~ EXIT
IF ~~ THEN REPLY ~I am not ready yet. Wait. I will return~ EXIT
END

IF~ NumTimesTalkedToGT(0) GlobalLT("SanNarQ","GLOBAL",5)~ THEN BEGIN InvNar2
SAY ~Go to Master now? ~
IF ~~ THEN REPLY ~Yes, take me to Naronguth.~ DO ~ SetGlobal("SanNarQ","GLOBAL",5) ~ EXIT
IF ~~ THEN REPLY ~I am not ready yet. Wait. I will return~ EXIT
END