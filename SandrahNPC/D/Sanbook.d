BEGIN Sanbook

CHAIN
IF~GlobalTimerExpired("SanbookT","GLOBAL")~THEN Sanbook Identify
~You can identify an item in Sandrah's inventory with the help of this tome.~
=~Select an item from the inventory now.~
DO~SetGlobalTimer("SanbookT","GLOBAL",3600) ActionOverride("CVSandr",ReallyForceSpellRES("Sanlore2",Myself)) ~EXIT

CHAIN
IF~!GlobalTimerExpired("SanbookT","GLOBAL")~THEN Sanbook Wait
~You have to wait for Sandrah to find the time to study her tome.~ EXIT
                                             


