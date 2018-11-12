BEGIN CVWDCit
IF~RandomNum(9,1)~THEN BEGIN WDcit1
SAY ~A new tax on us citizens every tenday...it will ruin us all.~
IF~~THEN EXIT
END

IF~RandomNum(9,2)~THEN BEGIN WDcit2
SAY ~I wonder if Elminster is in town these day, you never know with the old guy.~
IF~~THEN EXIT
END

IF~RandomNum(9,3)~THEN BEGIN WDcit3
SAY ~I could spend days at Bloomwhiffler and discover the Sword Coast just by the maps they have on sale there.~
IF~~THEN EXIT
END

IF~RandomNum(9,4)~THEN BEGIN WDcit4
SAY ~I wonder who can afford those prices over at the *Coq*. My family lives a tenday on the money they require for one single bowl of soup.~
IF~~THEN EXIT
END

IF~RandomNum(9,5)~THEN BEGIN WDcit5
SAY ~Heard that Elminster's daughter slew a dragon down in Amn recently.~
IF~~THEN EXIT
END

IF~RandomNum(9,6) !Dead("Kattah")~THEN BEGIN WDcit6
SAY ~When will they stop that Khattark, I wonder.~
IF~~THEN EXIT
END

IF~RandomNum(9,7) Dead("Kattah")~THEN BEGIN WDcit7
SAY ~Ah, one can finally breathe fresh air again with that Khattark gone now.~
IF~~THEN EXIT
END

IF~RandomNum(9,8)~THEN BEGIN WDcit8
SAY ~It's really time those hidden rulers establish a new Commander in town.~
IF~~THEN EXIT
END

IF~RandomNum(9,9)~THEN BEGIN WDcit9
SAY ~If only the great Elminster would find the time to manage the weather. Looks like rain once again (sigh).~
IF~~THEN EXIT
END

BEGIN WDtempo
IF~RandomNum(3,1)~THEN BEGIN Outemp1
SAY ~Bah, that temple isn't worth the trip, nuthin' fancy on it.~
IF~~THEN EXIT
END

IF~RandomNum(3,2)~THEN BEGIN Outemp2
SAY ~Mystra's great but her temple is just practical. Nothing for the believer to admire.~
IF~~THEN EXIT
END

IF~RandomNum(3,3)~THEN BEGIN Outemp3
SAY ~Mystra accepts all races in the priests ranks. Quite some sights among them.~
IF~~THEN EXIT
END

BEGIN WDTempi
IF~RandomNum(4,1)~THEN BEGIN Intemp1
SAY ~Mystra's great but her temple is just practical. Nothing for the believer to admire.~
IF~~THEN EXIT
END

IF~RandomNum(4,2)~THEN BEGIN Intemp2
SAY ~That priest may be strange looking but his cures are excellent.~
IF~~THEN EXIT
END

IF~RandomNum(4,3)~THEN BEGIN Intemp3
SAY ~Mystra accepts all races in the priests ranks. Quite some sights among them.~
IF~~THEN EXIT
END

IF~RandomNum(4,4)~THEN BEGIN Intemp4
SAY ~Just heard them whisper over there that Elminster's daughter has been seen in town again.~
IF~~THEN EXIT
END


BEGIN WDRest
IF~RandomNum(2,1)~THEN BEGIN Guest1
SAY ~The place really is up to the reputation given by Volo's guide.~
IF~~THEN EXIT
END

IF~RandomNum(2,2)~THEN BEGIN Guest2
SAY ~That's the true Waterdeep fish soup, I tell you. I must know I tried them all here in town.~
IF~~THEN EXIT
END


BEGIN WDRestB
IF~RandomNum(2,1)~THEN BEGIN Boy1
SAY ~Last nite there's bunch of dwarfs here, great fun, threw all empty dishes jus' on de ground an I didn't 'ave to clean 'em.~
IF~~THEN EXIT
END

IF~RandomNum(2,2)~THEN BEGIN Boy2
SAY ~That bastard Maitre keeps all the tips jus' to himself.~
IF~~THEN EXIT
END

BEGIN WDWatch
IF~RandomNum(3,1)~THEN BEGIN WDWatch1
SAY ~I'm on duty. No talking~
IF~~THEN EXIT
END

IF~RandomNum(3,2)~THEN BEGIN WDWatch2
SAY ~The Commander's house is off limit less you have an appointment.~
IF~~THEN EXIT
END

IF~RandomNum(3,3)~THEN BEGIN WDWatch3
SAY ~I'm guardian not guide. Find yourself a map at Bloomwiffler's.~
IF~~THEN EXIT
END