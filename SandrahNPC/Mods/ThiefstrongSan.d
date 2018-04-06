//Thief Stronghold Mod

ADD_STATE_TRIGGER TS5Bad 0
~!InParty("CVSandr")~

ADD_STATE_TRIGGER TS5Bad 1
~GlobalLT("TSPlot","GLOBAL",7)~

APPEND TS5Bad
IF WEIGHT #-2~ InParty("CVSandr") NumTimesTalkedTo(0) Name("TS5Door",Myself)~THEN BEGIN
SanAltern1
SAY~We're cleaning out the Docks, <CHARNAME>!  Starting with you!~
IF~~THEN REPLY~ I feel sorry for you. You have no idea whom you are facing here.~DO~SetGlobal("TS5Hostile","GLOBAL",1) ActionOverride("TS5Grd1",Enemy()) ActionOverride("TS5Grd2",Enemy()) Enemy()~EXIT
IF~~THEN REPLY~ Your action is unnecessary as I have already taken over control here keeping the shadow thieves under control.~GOTO SanAltern2
END
END

APPEND TSLATH01
IF WEIGHT #-2~ Global("TSPlot","GLOBAL",9) ~THEN BEGIN Othersolv1
SAY~Great job Boss! We heard all about your success!  Those guards have withdrawn and will not mess with our guild! I'd personally preferred a bit more of a bloody solution, but hey, business is flourishing.~
IF~~THEN DO~SetGlobal("TSPlot","GLOBAL",7) SetGlobalTimer("TSPlotTimer","GLOBAL",TWO_DAYS)
AddXPObject(Player1,25000) AddXPObject(Player2,25000) AddXPObject(Player3,25000) AddXPObject(Player4,25000) AddXPObject(Player5,25000) AddXPObject(Player6,25000)~GOTO Othersolv2
END

IF~~THEN BEGIN Othersolv2
SAY~I reckon things should return back to normal around here soon. I'll let you know if anything else comes up that requires your attention.~
IF~~THEN DO~SetDialog("TSGLT2")~EXIT
END
END

CHAIN
IF~~THEN TS5Bad SanAltern2
~Explain yourself, villain, or are you just trying to save your cowardly neck? Mind that our new Captain Sterling is not to be fooled.~
DO~SetGlobal("TSPlot","GLOBAL",8)~
==CVSandrJ~Very well, Lieutenant Betta, if your captain is such a reasonable man it should be no problem to convince him of our true intentions and actions here in the Docks.~
==TS5Bad~Mmh, I have heard some rumours about you already, priestess of Mystra. Some say that you and <CHARNAME> have secretly solved a number of problems around town recently.~
=~What would you propose?~
==CVSandrJ~We should avoid bloodshed amongst those who might be fighting on the same side, Lieutenant. We are willing to follow you and talk with Captain Sterling ourselves. We can surely come to some agreement.~
==TS5Bad~Mmh, I don't think it will be a good idea to have your well armed party enter our barracks - after all you and <CHARNAME> have quite some reputation as fighters.~
=~Let me get the captain to talk to you, wait here.~ DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) CreateCreature("TS5Bad",[3463.1145],3) ChangeEnemyAlly("TS5Bad",NEUTRAL) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~EXIT

CHAIN
IF WEIGHT #-2~Global("TSPlot","GLOBAL",8)~THEN TS5Bad SanAltern3
~So! The cowardly Shadow Thieves send their champion, the mighty <CHARNAME> to stop me, eh? Very well!~
==CVSandrJ~It may well be in our common interest to analyse the current situation here in the Docks a bit closer before a false conclusion will lead to unnecessary hostility.~
==TS5Bad~I am afraid that in all your beauty and charm you'll hang from the gallows, beside the thief you choose as your companion, lady, dead or alive!!~
==CVSandrJ~Even if you were able to defeat us, the guild will soon have another leader and things will continue. You can repeat your actions on him, maybe succeed once or twice, before one day you fall to one of them.~
==TS5Bad~Grim perspectives but not your concern any more. YOU will be long forgotten before that happens.~
==CVSandrJ~<CHARNAME> has found another way to deal with the problem more efficiently. Listen, captain...~
END
++~We cannot root the shadow thieves out but we can control their actions. My reign of the guild keeps their activities to a minimum and we have control over a shadow army that can be of help to city itself at times.~+ SanAltern4
++~Thank you for coming out to meet us, it spares me the effort to come inside to take your empty head!!~+ SanAltern5

CHAIN
IF~~ THEN TS5Bad SanAltern4
~You appear to be a reasonable <PRO_RACE>. I have heard rumours about your deed on the Sword Coast and also here in Amn. What I've heard is confirmed today by your offer to talk rather than to attack.~
==CVSandrJ~ Captain, the forces of your guard may serve Amn much better in other quarters of this town. The docks will see peaceful days under <CHARNAME>'s observation. The rich may be able to compensate the occasional picked pocket and consider it a *tax* for the relative safety we provide.~
==TS5Bad~I am glad we were able to sort things out this way. It does not mean we will not return immediately if I get the suspicion that you are betraying me, lady.~ DO~ SetGlobal("TSPlot","GLOBAL",9) ActionOverride("TS5Bad",EscapeArea()) ActionOverride("TS5Door",EscapeArea() ActionOverride("TS5Grd1",EscapeArea()) ActionOverride("TS5Grd2",EscapeArea())~EXIT

CHAIN
IF~~ THEN TS5Bad SanAltern5
~You are not different from any other stupid criminal I've dealt with before and you will end just like them.~
DO~SetGlobal("TSPlot","GLOBAL",6) ActionOverride("TS5Bad",EscapeArea())SetGlobal("TS5Hostile","GLOBAL",1) ActionOverride("TS5Door",Enemy()) ActionOverride("TS5Grd1",Enemy()) ActionOverride("TS5Grd2",Enemy())~EXIT

ADD_STATE_TRIGGER TSGT05 19
~!InParty("CVSandr")~

EXTEND_TOP TSGT05 0 #1
IF~ Global("PlayerThiefGuild","GLOBAL",1)
InParty("CVSandr")
GlobalGT("aranjob","GLOBAL",1)~ THEN REPLY~ I do not owe anything to Renal any more, *Jester*. You seem to be unaware that things have changed a bit around here. ~GOTO 300
IF~ Global("PlayerThiefGuild","GLOBAL",1)
InParty("CVSandr")
GlobalGT("b!alternatives","GLOBAL",4)~ THEN REPLY~ I do not owe anything to the Shadow Thieves, *Jester*. You seem to be unaware that things have changed a bit around here. ~GOTO 300
END

APPEND TSGT05 
IF~InParty("CVSandr")~ THEN BEGIN 299
SAY~Ah, there you are, <CHARNAME>, time to pay your quota to Renal, hihi.~
IF~GlobalLT("aranjob","GLOBAL",2) GlobalLT("b!alternatives","GLOBAL",5)~GOTO 3
IF~ Global("PlayerThiefGuild","GLOBAL",1)
GlobalGT("aranjob","GLOBAL",1)~ THEN REPLY~ I do not owe anything to Renal any more, *Jester*. You seem to be unaware that things have changed a bit around here. ~GOTO 300
IF~ Global("PlayerThiegtfGuild","GLOBAL",1)
GlobalGT("b!alternatives","GLOBAL",4)~ THEN REPLY~ I do not owe anything to the Shadow Thieves, *Jester*. You seem to be unaware that things have changed a bit around here. ~GOTO 300
END

IF~~THEN BEGIN 300
SAY~ Why does nobody ever tell the messenger such things. What's up?~
IF~~THEN REPLY~ Renal has no means anymore to make demands here, just in case you haven't heard yet. This guild is under my control and mine alone. You better leave immediately before things get painful for you.~ GOTO 301
END

IF~~THEN BEGIN 301
SAY~ This had better be no bluff, <CHARNAME>. If I find out you lied, you will regret it.~
IF~~THEN DO~ SetGlobal("JosterSilence","GLOBAL",1) SetGlobal("JosterLeave","GLOBAL",1) SetGlobalTimer("JosterReturn","GLOBAL",900000) SetGlobalTimer("JosterPaid","GLOBAL",900000) EscapeArea()~EXIT
END
END



