BEGIN CVUMCITZ

IF~RandomNum(9,1)~ THEN BEGIN 1
SAY~ Another Bhaalspawn!~
IF~~THEN EXIT
END

IF~RandomNum(9,2)InParty("CVSandr")~ THEN BEGIN 2
SAY~ Is that not Qilandrha's sister?~
IF~~THEN EXIT
END

IF~RandomNum(9,3) Gender(Player1,MALE)Gender(Myself,FEMALE)~ THEN BEGIN 3
SAY~ My husband is out of town for a few days, sweety. hm?~
IF~~THEN EXIT
END

IF~RandomNum(9,4) Gender(Player1,FEMALE)Gender(Myself,MALE)~ THEN BEGIN 4
SAY~ My wife is out of town for a few days, sweety. hm?~
IF~~THEN EXIT
END

IF~RandomNum(9,5) ~ THEN BEGIN 5
SAY~ Welcome stranger and friend.~
IF~~THEN EXIT
END

IF~RandomNum(9,6) ~ THEN BEGIN 6
SAY~ I heard only good things about you.~
IF~~THEN EXIT
END

IF~RandomNum(9,7) ~ THEN BEGIN 7
SAY~ We are watching you closely, *friend*.~
IF~~THEN EXIT
END

IF~RandomNum(9,8) ~ THEN BEGIN 8
SAY~ You walk a thin edge.~
IF~~THEN EXIT
END

IF~RandomNum(9,9) ~ THEN BEGIN 9
SAY~ Only the High Priestess shields you from our wraith.~
IF~~THEN EXIT
END