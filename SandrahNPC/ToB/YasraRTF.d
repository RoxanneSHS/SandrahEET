EXTEND_BOTTOM YASRA25P 1
IF~InParty("CVSandr") Global("YasraenaJoined","GLOBAL",1) Global("YasUmo5","LOCALS",1)~THEN REPLY~We cannot travel together at the moment, my friend. I want you to wait for me in a place safe for a drow.~GOTO YQidr1
END

APPEND YASRA25P
IF~~THEN BEGIN YQidr1
SAY~As you wish, <CHARNAME>. I have seen the place where I can go. You will find me in Qilandrha's enclave in Undermountain if you desire to meet me again. I Will find a way to notify Divalir to join with me there.~
IF~~THEN DO~SetGlobal("YasraenaJoined","GLOBAL",0) EscapeAreaMove("CVUMO5",1355,1018,11)~EXIT
END
END