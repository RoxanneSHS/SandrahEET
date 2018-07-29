EXTEND_BOTTOM Staffm12 0
IF~InParty("CVSandr") XPLT("CVSandr",1000000)~ THEN REPLY~ My fearless companion Sandrah will enter the arena.~ GOTO SanArena1
END

EXTEND_BOTTOM Staffm12 16
IF~InParty("CVSandr") XPLT("CVSandr",2250000)XPGT("CVSandr",999999)~ THEN REPLY ~ My fearless companion Sandrah will enter the arena.~ GOTO SanArena3
END

EXTEND_BOTTOM Staffm12 17
IF~InParty("CVSandr") XPLT("CVSandr",3000000)XPGT("CVSandr",2259999)~ THEN REPLY ~ My fearless companion Sandrah will enter the arena.~ GOTO SanArena5
END

EXTEND_BOTTOM Staffm12 18
IF~InParty("CVSandr") XPLT("CVSandr",4000000)XPGT("CVSandr",2999999)~ THEN REPLY ~ My fearless companion Sandrah will enter the arena.~ GOTO SanArena7
END

EXTEND_BOTTOM Staffm12 19
IF~InParty("CVSandr") XPGT("CVSandr",3999999)~ THEN REPLY ~ My fearless companion Sandrah will enter the arena.~ GOTO SanArena9
END

EXTEND_BOTTOM Staffm2 1
IF ~ InParty("CVSandr") LevelGT("CVSandr",14)~ THEN REPLY ~ Sandrah is a priestess of the Goddess of all Magic - who could be qualified better than she?~GOTO SanMageDuel1
END

APPEND Staffm2
IF~~THEN BEGIN SanMageDuel1
SAY~ That sounds indeed very promising. Please step forward to the portal, my lady.~
IF~~THEN EXTERN CVSandrJ SanMageDuel2
END

IF~Global("FigSan","GLOBAL",16)~THEN BEGIN  SanMageDuelE
SAY~ Congratulation to all of you. Sandrah is the ultimate winner.~
IF~~THEN REPLY~ Your goddess smiles with us, Sandrah.~DO~SetGlobal("FigSan","GLOBAL",17)~ EXIT
END
END

APPEND Staffm12
IF~~THEN BEGIN SanArena1
SAY~ Fine, for 1000 gold I will register the lady.~ 
IF ~~ THEN REPLY~ Here you go.~ GOTO SanArena2
IF ~~ THEN REPLY~ 1000??! Too much for me.~ GOTO 4
END

IF~~THEN BEGIN SanArena2
SAY~ Thank you. Go to the adviser at the southern pit outside. He will provide you with further instructions.~
IF ~~ THEN DO ~SetGlobal("Registr","GLOBAL",1)
SetGlobal("AbaSan","GLOBAL",1)
TakePartyGold(1000)
~ EXIT
END

IF~~THEN BEGIN SanArena3
SAY~ Fine, for 1000 gold I will register the lady.~
IF ~~ THEN REPLY~ Here you go.~ GOTO SanArena4
IF ~~ THEN REPLY~ 1000??! Too much for me.~ GOTO 43
END

IF~~THEN BEGIN SanArena4
SAY~ Thank you. Go to the adviser at the southern pit outside. He will provide you with further instructions.~
IF ~~ THEN DO ~SetGlobal("Registr","GLOBAL",1)
SetGlobal("AbaSan","GLOBAL",9)
TakePartyGold(1000)
~ EXIT
END

IF~~THEN BEGIN SanArena5
SAY~ Fine, for 1000 gold I will register the lady.~
IF ~~ THEN REPLY~ Here you go.~ GOTO SanArena6
IF ~~ THEN REPLY~ 1000??! Too much for me.~ GOTO 61
END

IF~~THEN BEGIN SanArena6
SAY~ Thank you. Go to the adviser at the southern pit outside. He will provide you with further instructions.~
IF ~~ THEN DO ~SetGlobal("Registr","GLOBAL",1)
SetGlobal("AbaSan","GLOBAL",17)
TakePartyGold(1000)
~ EXIT
END

IF~~THEN BEGIN SanArena7
SAY~ Fine, for 1000 gold I will register the lady.~
IF ~~ THEN REPLY~ Here you go.~ GOTO SanArena8
IF ~~ THEN REPLY~ 1000??! Too much for me.~ GOTO 79
END

IF~~THEN BEGIN SanArena8
SAY~ Thank you. Go to the adviser at the southern pit outside. He will provide you with further instructions.~
IF ~~ THEN DO ~SetGlobal("Registr","GLOBAL",1)
SetGlobal("AbaSan","GLOBAL",25)
TakePartyGold(1000)
~ EXIT
END

IF~~THEN BEGIN SanArena9
SAY~ Fine, for 1000 gold I will register the lady.~
IF ~~ THEN REPLY~ Here you go.~ GOTO SanArena10
IF ~~ THEN REPLY~ 1000??! Too much for me.~ GOTO 91
END

IF~~THEN BEGIN SanArena10
SAY~ Thank you. Go to the adviser at the southern pit outside. He will provide you with further instructions.~
IF ~~ THEN DO ~SetGlobal("Registr","GLOBAL",1)
SetGlobal("AbaSan","GLOBAL",33)
TakePartyGold(1000)
~ EXIT
END
END

ADD_STATE_TRIGGER Staffm8 0
~!Global("AbaSan","GLOBAL",1) 
!Global("AbaSan","GLOBAL",9) 
!Global("AbaSan","GLOBAL",17) 
!Global("AbaSan","GLOBAL",25)~

APPEND Staffm8
IF WEIGHT #5~Global("AbaSan","GLOBAL",1)~ THEN BEGIN SanArena21
SAY~ So you have come to fight in the arena. Your name registered is Sandrah of Waterdeep.~
=~Here are the rules. We start with 32 competitors. The number is reduced to half after each round.~
=~Thus you will need five victories in a row to win the price. You fight until death but you will be resurrected and returned your equipment should you die. Healing is applied after each round.~
=~ That is all. Are you ready to start?~
IF~~THEN EXTERN CVSandrJ SanArenaready1
END

IF WEIGHT #4~Global("AbaSan","GLOBAL",9)~ THEN BEGIN SanArena22
SAY~ You are here to fight. You surely know the rules by now. Are you ready to start?~
IF~~THEN EXTERN CVSandrJ SanArenaready1
END

IF WEIGHT #3~Global("AbaSan","GLOBAL",17)~ THEN BEGIN SanArena23
SAY~ You are here to fight. You surely know the rules by now. Are you ready to start?~
IF~~THEN EXTERN CVSandrJ SanArenaready1
END

IF WEIGHT #2~Global("AbaSan","GLOBAL",25)~ THEN BEGIN SanArena24
SAY~ You are here to fight. You surely know the rules by now. Are you ready to start?~
IF~~THEN EXTERN CVSandrJ SanArenaready1
END
END

ADD_STATE_TRIGGER Staffm9 0
~!Global("AbaSan","GLOBAL",33)~

APPEND Staffm9
IF WEIGHT #1~Global("AbaSan","GLOBAL",33)~ THEN BEGIN SanArena31
SAY~ You will now fight in the final, Sandrah. Only the best have remained, you will need to give it all to win here.~
=~Enter the pit. Start the fights.~
IF~~THEN DO ~SetGlobal("AbaSan","GLOBAL",34)~ EXIT
END
END

APPEND Staffm11
IF~ Global("FigSan","GLOBAL",3) ~THEN BEGIN SanMageDuel3
SAY~Welcome Sandrah. Here are the rules - you may stay here as long as you are winning. If you die the contest is over for you. Do not worry, you will be resurrected in that case.~
=~You must first clear the battle ground of all monsters before you can meet another contester.~
=~Go now and clear any monster you can find and then report back to me.~
IF~~THEN DO~ SetGlobal("FigSan","GLOBAL",4) ~EXIT
END

IF~ Global("FigSan","GLOBAL",5) ~THEN BEGIN SanMageDuel4
SAY~ Well done. Now we need to wait for your competitors. You will stay here as long as you are victorious.~
=~You need five victories to become champion. You may rest after each battle. Good luck.~
IF~~THEN DO~SetGlobal("FigSan","GLOBAL",6)~ EXIT
END

IF~ Global("FigSan","GLOBAL",13) ~THEN BEGIN SanMageDuel5
SAY~ Congratulation, you have won!! You are the ultimate mage.~
=~There are multiple rewards...First, take this scroll that identifies you as champion.~
IF~~THEN DO~GiveItemCreate("ChampSc",LastTalkedToBy,0,0,0)~GOTO SanMageDuel6
END

IF~~ THEN BEGIN SanMageDuel6
SAY~Take these spells you have earned.~
IF~~THEN DO~GiveItemCreate("SCRX34",LastTalkedToBy,0,0,0) GiveItemCreate("Ultima",LastTalkedToBy,0,0,0) GiveItemCreate("SCRL9P",LastTalkedToBy,0,0,0) GiveItemCreate("GoldenCl",LastTalkedToBy,0,0,0)~GOTO SanMageDuel7
END

IF~~ THEN BEGIN SanMageDuel7
SAY~ And finally these bracers and a staff.~
IF~~THEN DO~GiveItemCreate("Bracwc",LastTalkedToBy,0,0,0) GiveItemCreate("STAF12",LastTalkedToBy,0,0,0)~GOTO SanMageDuel8
END

IF~~ THEN BEGIN SanMageDuel8
SAY~ I will now teleport you back.~
IF~~THEN DO~ SetGlobal("FigSan","GLOBAL",14)~ EXIT
END
END

APPEND CVSandrJ
IF~~THEN BEGIN SanArenaready1
SAY~ <CHARNAME>, give me a kiss for luck...Mmh...I am ready now.~
IF~~THEN DO~ IncrementGlobal("AbaSan","GLOBAL",1)~EXIT
END

IF~~THEN BEGIN SanMageDuel2
SAY~ I thought my school-days and classroom tests were over...(laughs) I think Midnight would enjoy this bit of contest even if Mystra would disagree.~ 
IF~~THEN DO~ SetGlobal("Startmd","GLOBAL",1) SetGlobal("FigSan","GLOBAL",1)~ EXIT
END
END

APPEND BSANDR

IF~Global("SanArenIde","RA4300",1)~THEN BEGIN ArenIdee1
SAY ~Mmh, this place looks rich, the prize to win is probably not too small.~
IF~~THEN REPLY~Fight for money? You surprise me, Sandrah, we're not THAT desperate yet.~ GOTO ArenIdee2
IF~~THEN REPLY~What is your idea?~ GOTO ArenIdee2
IF~~THEN REPLY~It won't hurt us to investigate about the details.~ GOTO ArenIdee2
END
END

CHAIN
IF~~THEN BSANDR ArenIdee2
~This is no place where poor slaves are forced to fight for their life by cruel masters. The fighters here are well equipped, sane and voluntarily doing what they do. We have a companion to save and can very well use the equipment to win or the money if we sell it afterwards.~
DO~SetGlobal("SanArenIde","RA4300",2)~
==IF_FILE_EXISTS RCHLOEJ IF~InParty("RCHLOE")~THEN~Crush some male idiots head! Great idea, I'm all for it. Who's gonna have the fun, you or me, snowcap?~
==BSandr IF~InParty("RCHLOE")~THEN~It was my idea after all, and they have fighter and mage possibilities, so it suits me well.~
==BJAHEIR IF~InParty("Jaheira")~THEN~I have to object to such foolish ideas, we will not prostitute ourselves for the fun of those onlookers.~
==BSandr IF~InParty("Jaheira")~THEN~(Laughs) No fear, my lady, nobody asks you to volunteer, just stand aside a bit as if you did not know us.~
==BNalia IF~!InParty("Jaheira") InParty("Nalia")~THEN~I have to object to such foolish ideas, we will not prostitute ourselves for the fun of those onlookers.~
==BSandr IF~!InParty("Jaheira")InParty("Nalia")~THEN~(Laughs) No fear, my lady, nobody asks you to volunteer, just stand aside a bit as if you did not know us.~
==BANOMEN IF~InParty("Anomen")~THEN~The order should intervene against such practices...~
==BSandr IF~InParty("Anomen")~THEN~(Laughs) Are you afraid someone may ask you to show your courage to fight - for the benefit of our righteous course that momentarily needs the coin?~
==BVICONI IF~InParty("Viconia")~THEN~A chance for our males to proof their worth at least once.~
==BSandr IF~InParty("Viconia")~THEN~Actually it was my idea to have some fun myself.~
==Bedwin IF~InParty("Edwin")~THEN~A good idea. (Oh, a full appreciation of that girl fighting without the need to participate with my spells. What a delight.)~
==BSandr IF~InParty("Edwin")~THEN~Yes?...(grins malicious)...there are mage's competitions as well, Edwin.~
==BSandr~What do you say, <CHARNAME>?~
END
++~If you insist - I see your arguments to do it.~ EXIT
++~Well, a worthy idea - but it's my task as leader to take the risk.~EXIT
++~I see I have a volunteer to fight provided the conditions are acceptable.~ EXIT
++~Let's leave this place immediately. No way to participate in such Barbary.~EXIT


 
