BEGIN CVJen25
BEGIN CVJEN25P

CHAIN
IF~Global("CVJenTOBRet","GLOBAL",3)~THEN CVJen25 TobAppear1
@0
DO~SetGlobal("CVJenTOBRet","GLOBAL",4)~
==CVSan25J@1DO~ForceSpell("CVJenlig",CLERIC_CURE_SERIOUS_WOUNDS)~
END
++@2+ TobAppear2

CHAIN
IF~~THEN CVJen25 TobAppear2
@3
==CVSan25J@4
==CVJen25@5
=@6
==CVSan25J@7
 ==CVJen25@8
 =@9DO~RestParty()~EXIT
 
 CHAIN
 IF~Global("CVJenTOBRet","GLOBAL",4)~THEN CVJen25 TobAppear3
@10
==CVSan25J@11
==CVJen25@12
=@13
=@14
==CVSan25J@15
==CVJen25@16
END
++@17DO~SetGlobal("CVJenTOBRet","GLOBAL",5)~EXIT
++@18DO~SetGlobal("CVJenTOBRet","GLOBAL",6) JoinParty()~EXIT

CHAIN
IF~Global("CVJenTOBRet","GLOBAL",5)~THEN CVJen25 TobAppear4
@19
END
++@17EXIT
++@18DO~SetGlobal("CVJenTOBRet","GLOBAL",6) JoinParty()~EXIT



CHAIN
IF~Global("IWasKickedOut","LOCALS",1)~THEN CVJen25P TobResume
@19
END
++@17EXIT
++@18DO~SetGlobal("IWasKickedOut","LOCALS",0) JoinParty()~EXIT

CHAIN
IF~!InParty(Myself)~THEN CVJen25P Kicked
@20
END
++@21DO~JoinParty()~EXIT
++@22DO~SetGlobal("IWasKickedOut","LOCALS",1) EscapeAreaMove("AR4500",1999,1218,0)~EXIT 
