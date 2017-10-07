APPEND BPNajim

IF WEIGHT #-8~Global("BAELOTH_DEFEATED","GLOBAL",1) GlobalLT("BPNAJIM_DIALOG","GLOBAL",50) InParty("CVSandr")~THEN BEGIN OutSan1
SAY~Are you ready to leave the Black Pits?~
IF~~THEN REPLY~Najim, I'm ready to depart.~DO~SetGlobal("BLACK_PITS_VICTORY","GLOBAL",1) ClearAllActions() StartCutScene("CVCut305")~EXIT
IF~~THEN REPLY~Aren't there supposed to be three wishes or something?~GOTO OutSan2
IF~~THEN REPLY~Not yet, Najim.~ EXIT
END

IF~~THEN BEGIN OutSan2
SAY~Do not test my patience, mortal.~
IF~~THEN REPLY~Najim, I'm ready to depart.~DO~SetGlobal("BLACK_PITS_VICTORY","GLOBAL",1) ClearAllActions() StartCutScene("CVCut305")~EXIT
IF~~THEN REPLY~I'll get back to you in a little while.~EXIT
END
END

BEGIN CVWDDWA
IF~Global("SanPitsWD","Global",8)~THEN BEGIN Ret1
SAY~What, yer back. None ever came back!~
IF ~~ THEN REPLY ~Time to close your little business, dwarf. Or should I say duergar?~DO~ActionOverride("CVWDDWA",EscapeAreaDestroy(30))~EXIT 
END

IF ~RandomNum(3,1) ~ THEN BEGIN 0
SAY  ~Some leatherhead jacked me case last night! If I find the addle-coved idiot, I'll strangle him!~
IF~~ THEN EXIT
END

IF ~RandomNum(3,2) ~ THEN BEGIN 1
SAY ~The bub in the Hive tastes like donkey-piss!~
IF ~~ THEN REPLY ~You've tasted donkey-piss?!~ GOTO 2
IF ~~ THEN REPLY ~Then don't drink it, genius.~ GOTO 3
IF ~Global("SanPitsWD","Global",1) !InParty("Baeloth")~ THEN REPLY ~Point the way!~ GOTO 4
END

IF ~~ THEN BEGIN 2
SAY ~Go hang yerself, Clueless!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
SAY ~Keep rattlin' that bone-box o' yers, and I'll splatter yer brains all over the cobblestones!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
SAY ~Dare to step thru yonder door, cutter.~
=~They call it Black Pits, ain't seen none ever come back.~
IF ~~ THEN DO~SetGlobal("SanPitsWD","Global",2)~EXIT
END

IF ~RandomNum(3,3) ~ THEN BEGIN 5
SAY ~You know the chant?~
IF ~Global("SanPitsWD","Global",1) !InParty("Baeloth")~ THEN REPLY ~Point the way!~ GOTO 4
IF ~OR(2) GlobalGT("SanPitsWD","Global",1) InParty("Baeloth")~ THEN EXIT
END

CHAIN
IF~Global("SanPitsWD","Global",4) ~THEN CVSandrJ BPWD1
~It seems to me I did not know about all the attractions my hometown has to offer.~
=~I have never heard of these Black Pits.~
DO~SetGlobal("SanPitsWD","Global",5)~
END
++~This doesn't look like a place for a young priestess to me.~ + BPWD2
++~They may have good reasons to hide it from a priestess of Mystra.~ + BPWD2

CHAIN
IF~~THEN CVSandrJ BPWD2
~To me it appears that the only way out of here again is by moving forward.~EXIT

CHAIN
IF~Global("SanPitsWD","Global",6) ~THEN CVSandrJ BPWD3
~If we ever want to leave this place, we need to face our capturer in the arena.~
DO~SetGlobal("SanPitsWD","Global",7)~
END
++~I was thinking the same. Only..how to get him there?~ + BPWD4
++~Do you think that this is the only option we have?~ + BPWD4

CHAIN
IF~~THEN CVSandrJ BPWD4
~We may find allies among the other prisoners here. Even the djinni Najim may prefer his freedom over the power he has in the pits.~
END
++~So far, Baeloth has made sure he stays out of reach.~+ BPWD5
++~Has your so-called plan more details already?~+ BPWD5

CHAIN
IF~~THEN CVSandrJ BPWD5
~Soon our constant success in the arena will put the stress on this *entertainer*. He will run out of opponents that satisfy his audience. The better we fight, the higher are their demands for more thrills.~
=~He will make a mistake sooner or later. We will force him to face us in combat by eliminating all his other options.~
END
++~Meanwhile it will not hurt to talk to other prisoners and see what we can achieve.~+ BPWD6
++~Sounds like your plan is nothing more than to do what he forces us to do.~+ BPWD6

CHAIN
IF~~THEN CVSandrJ BPWD6
~Do not worry. It is just a matter of persistence. We will wear him out. We stand together and he will lose with every new fight. ~EXIT

CHAIN
IF~Global("SanPitsEnd","Global",1)~ THEN CVSandrJ BPWDE1
~I am pretty sure now that our tactic works here. Baeloth is desperate due to our success. He will be forced to face us in person pretty soon. If that happens our chance to leave is there.~
DO~SetGlobal("SanPitsEnd","Global",2)~ 
END
++~There will still be the djinn to defeat.~+ BPWDE2
++~There is no visible exit from these areas, even with the drow dead.~+ BPWDE2

CHAIN
IF~~THEN CVSandrJ BPWDE2
~I think that Najim will be grateful enough for the freedom he gains through Baeloth's defeat. There is no reason for him not to let us go. i am confident.~EXIT