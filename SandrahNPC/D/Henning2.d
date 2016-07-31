BEGIN HENNING2

IF ~ NumTimesTalkedTo(0) ~ THEN BEGIN Tych
SAY ~ Thank you once again for all you have done, <CHARNAME>, you and your companions.~
IF~~ THEN EXIT
END 

IF ~  NumTimesTalkedToGT(0) ~ THEN BEGIN HennShopWD
SAY ~ Hello again, my friends. ~
IF~ InParty("Imoen2") Global("HennImoRit","LOCALS",0) ~ THEN EXTERN HENNING2 HennImoRit1
IF~ !InParty("Imoen2") Global("HennStoWD","LOCALS",0)~ THEN REPLY~ Greetings, Henning, good to see you again.~
EXIT
IF ~ !InParty("Imoen2") Global("HennStoWD","LOCALS",1)~ THEN REPLY~ Greetings, Henning, let us take a look at your wares.~ DO ~ StartStore("sto4803",LastTalkedToBy(Myself))~ EXIT
IF ~ InParty("Imoen2") GlobalGT("HennImoRit","LOCALS",0 ) Global("HennStoWD","LOCALS",1)~ THEN REPLY~ Greetings, Henning, let us take a look at your wares.~ DO ~ StartStore("sto4803",LastTalkedToBy(Myself))~ EXIT
IF ~ InParty("Imoen2") Global("HennImoRit","LOCALS",1 ) RealGlobalTimerExpired("HennImoRitInt","LOCALS")~ THEN REPLY~ Greetings, Henning, I'll leave you to Imoen...~ EXTERN HENNING2 HennImoRit2
IF ~ InParty("Imoen2") Global("HennImoRit","LOCALS",2 ) RealGlobalTimerExpired("HennImoRitInt","LOCALS")~ THEN REPLY~ Greetings, Henning, I'll leave you to Imoen...~ EXTERN HENNING2 HennImoRit3
IF~ Global("ENDOFBG1","GLOBAL",2) GlobalLT("Chapter","GLOBAL",3) !InParty("Imoen2") Global("HenMissImo","LOCALS",0) ~ THEN REPLY~ Henning, it is not with happy news we appear here today.~ GOTO ImmiJonMiss1
END

IF~~THEN BEGIN ImmiJonMiss1
SAY~ Imoen, where is...what...?~
IF~~THEN REPLY~ Calm down, Henning, do not worry yet. (You report the recent events that have led to Imoen's capture by the cowled wizzards.)~ DO~ SetGlobal("HenMissImo","LOCALS",1) ~GOTO ImmiJonMiss2
END

IF~~THEN BEGIN ImmiJonMiss2
SAY~ By all the Gods, <CHARNAME>, we need to find a way to get her out of that prison urgently.~
IF~~THEN REPLY~ You have my word, Henning, that we are already persuing that goal eagerly. It will not be long until your happy reunion. There is nothing you can do at the very moment other than to keep your spirits up and put your trust in us.~ EXIT
IF~~THEN REPLY~ Stop whining, man, I don't understand what a courageous girl like Imoen sees in you. You can do nothing, WE will take care of that business.~ EXIT
IF~~THEN REPLY~ Be assured that you will be the first to get the notice of her rescue, Henning. However it makes no sense for you to join us in the persuit. Let us see your wares to prepare for the rescue mission. ~ DO ~ StartStore("sto4803",LastTalkedToBy(Myself))~ EXIT
END


CHAIN
IF~~THEN  HENNING2 HennImoRit1
~  How have you fared, my love?~
DO ~ SetGlobal("HennImoRit","LOCALS",1) RealSetGlobalTimer("HennImoRitInt","LOCALS",180)~
==Bimoen ~ Oh, listen and listen, besta loverboy...(Imoen breathlessly reports what has happened since they have parted.)~
==HENNING2~ Oh, my wonderfull, courageous heroine, mmpf...~
==Bimoen ~ (Kisses Henning over and over) Hey, enough talking for now, there is something I needa show ya quickest, this garter belt I bought in Beregost...~
DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF~~THEN  HENNING2 HennImoRit2
~  Imoen, my love, I have to tell you so much.~
DO ~ SetGlobal("HennImoRit","LOCALS",2)RealSetGlobalTimer("HennImoRitInt","LOCALS",180)~
==Bimoen ~ Tell me quickest and quickest before I explode! But first take this kiss (Mmpf) and this one(Mmpf).~
==HENNING2~ Business with Clarissa and me is starting to move quite well. I do her bookkeeping and on the side I have started to sell and buy my own goods as well. The interest for the things you bring from your journeys is building and I have already quite a reputation here in town.~
==Bimoen ~ Hey, means you wanna stay here in the big city 'stead of goin' back to Nashkel. FANTASTIC! I love and love it.~
==HENNING2~ Wonderful, so you agree. I will sell the shop in Nashkel - and next time you come to Waterdeep we may go and look at some of the vacant houses I have found around town for your approval.~
==Bimoen ~ Oh, wonderfullest of all men, yes and yes and yes - But for now let us get to our rooms quickest, I need you so much and much...~
DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF~~THEN  HENNING2 HennImoRit3
~  Imoen!~
==Bimoen ~ Henning! (Kiss.) Mmpf.~
==HENNING2~ (Kiss.) Mmpf.~
==Bimoen ~ (Kiss.) Mmpf.~
DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT
