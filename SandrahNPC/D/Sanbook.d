BEGIN Sanbook

CHAIN
IF~GlobalTimerExpired("SanbookT","GLOBAL")~THEN Sanbook Identify
@0
=@1
DO~SetGlobalTimer("SanbookT","GLOBAL",3600) ActionOverride("CVSandr",ReallyForceSpellRES("Sanlore2",Myself)) ~EXIT

CHAIN
IF~!GlobalTimerExpired("SanbookT","GLOBAL")~THEN Sanbook Wait
@2 EXIT
                                             


