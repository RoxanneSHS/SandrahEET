//ToB Partings
EXTEND_BOTTOM VICON25P 0
IF~InParty("CVSandr") Global("KickedOut","LOCALS",0) Alignment("Viconia",NEUTRAL_EVIL) Global("ViccyUmo5","LOCALS",1)~THEN REPLY~We cannot travel together at the moment, my friend. I want you to wait for me in a safe place.~GOTO VQidr1
END

EXTEND_BOTTOM VICON25P 2
IF~InParty("CVSandr") Global("KickedOut","LOCALS",0) !Alignment("Viconia",NEUTRAL_EVIL) Global("ViccyUmo5","LOCALS",1)~THEN REPLY~We cannot travel together at the moment, my friend. I want you to wait for me in a safe place.~GOTO VQidr1
END

APPEND VICON25P
IF~~THEN BEGIN VQidr1
SAY~As you wish, <CHARNAME>. I have seen the place where I can go. You will find me in Qilandrha's enclave in Undermountain if you desire to meet me again.~
IF~~THEN DO~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("CVUMO5",1395,1058,7)~EXIT
END
END
