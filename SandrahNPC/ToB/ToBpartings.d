//ToB Partings
EXTEND_BOTTOM VICON25P 0
IF~InParty("CVSandr") Global("KickedOut","LOCALS",0) Alignment("Viconia",NEUTRAL_EVIL) Global("ViccyUmo5","LOCALS",1)~THEN REPLY@0GOTO VQidr1
END

EXTEND_BOTTOM VICON25P 2
IF~InParty("CVSandr") Global("KickedOut","LOCALS",0) !Alignment("Viconia",NEUTRAL_EVIL) Global("ViccyUmo5","LOCALS",1)~THEN REPLY@0GOTO VQidr1
END

APPEND VICON25P
IF~~THEN BEGIN VQidr1
SAY@1
IF~~THEN DO~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("CVUMO5",1395,1058,7)~EXIT
END
END
