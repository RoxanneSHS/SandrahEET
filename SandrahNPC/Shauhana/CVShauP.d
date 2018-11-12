BEGIN CVShauP

IF ~Global("ShauhanaJoined","GLOBAL",1)
GlobalLT("ShauOrcWar","GLOBAL",7)
OR(11)
AreaCheck("CVSHA1")
AreaCheck("CVSHA2")
AreaCheck("CVSHA3")
AreaCheck("CVSHA4")
AreaCheck("CVSHA5")
AreaCheck("CVSHA6")
AreaCheck("CVSHA7")
AreaCheck("CVSHA8")
AreaCheck("CVSHA9")
AreaCheck("CVSH10")
AreaCheck("ar3520")
~THEN BEGIN KickSPTNoPos
SAY ~(It is not possible to part with Shauhana while you are in Clan Territory.)~
IF ~~THEN REPLY  ~Oops, that was a mistake!~DO ~JoinParty()~EXIT
END

IF ~Global("ShauhanaJoined","GLOBAL",1) InParty("Minsc") GlobalGT("SanShauMinsc","GLOBAL",12)~THEN BEGIN KickShauMinsc
SAY ~You want Minsc and me to leave you, <CHARNAME>? We will return to my village then, our place and destiny lies there. You may find us in my old teacher's house.~
IF ~~THEN REPLY  ~Oh no, sorry, that was a mistake!~DO ~JoinParty()~EXIT
IF ~~THEN REPLY  ~All the best to you both, we will see each other again.~DO~
SetGlobal("ShauhanaJoined","GLOBAL",4)
ActionOverride("Minsc",LeaveParty())
ActionOverride("Minsc",SetDialog("MINSCP_"))
ActionOverride("Minsc",EscapeAreaMove("CVSHA8",578,721,13))
EscapeAreaMove("CVSHA8",478,748,13)~EXIT
END

IF ~Global("ShauhanaJoined","GLOBAL",1)~THEN BEGIN KickSPT1
SAY ~So you want me to leave you?~
IF ~~THEN REPLY ~Yes, Shauhana, you need to stay here for a short while. I will be back soon. ~GOTO PT11
IF ~~THEN REPLY  ~I think it's best for us to part now, but we may travel together again soon enough. We will look for you in the Copper Coronet.~GOTO GoCopper
IF ~~THEN REPLY  ~Oh no, sorry, that was a mistake!~DO ~JoinParty()~EXIT
END

IF ~~THEN BEGIN PT11
SAY ~Mm, be sure to get back soon! ~
IF ~~THEN DO ~SetGlobal("ShauhanaJoined","GLOBAL",3)~
EXIT
END

IF ~Global("ShauMeetAmn","GLOBAL",1) ~THEN BEGIN Amn1
SAY ~I am ready to follow you once again, <CHARNAME>.~
IF~~THEN REPLY ~Fine. Let us travel together once again, Shauhana.~
DO ~SetGlobal("ShauhanaJoined","GLOBAL",1) JoinParty()~EXIT
END

IF ~Global("ShauMeetAmn","GLOBAL",2) ~THEN BEGIN Amn2
SAY ~I am ready.~
IF~~THEN REPLY ~Fine.~DO ~SetGlobal("ShauhanaJoined","GLOBAL",1) JoinParty()~EXIT
IF~~THEN REPLY ~Hello, Shauhana, I see you are fine but I cannot take you with me today.~EXIT
END

IF WEIGHT #-1 ~Global("ShauhanaJoined","GLOBAL",4) ~THEN BEGIN RetClanLand
SAY ~You have come for us in Clan land, <CHARNAME>. So much has happened and your help would be greatly appreciated now. Shall we join forces once again against the growing evil?~
IF~~THEN REPLY ~You have been missed. Let us continue together.~DO ~SetGlobal("ShauhanaJoined","GLOBAL",1) ActionOverride("Minsc",JoinParty()) ActionOverride("CVShau",JoinParty())~EXIT
IF~~THEN REPLY ~It is good to see you both again but we still have a task to complete until we can join once again. Farewell.~EXIT
END

IF ~Global("ShauhanaJoined","GLOBAL",2) Global("SanShauOrcStaff","GLOBAL",11) ~THEN BEGIN Shauresc1
SAY~Friends! Now I know what that word really means.~
IF ~~THEN REPLY ~Shauhana, are you well, did they hurt you? We came as fast as possible.~GOTO PT21
END

IF~~THEN BEGIN PT21
SAY ~All is well. Sandrah's plan has worked fine. We need to find my weapons, they must be stored in one of the containers here. And then there is my old tutor (Points sadly to the bed.)~
= ~I tried what I could, but this jailer beast killed him in the end. He died protecting me, he is a hero, <CHARNAME>. I must take his body to Sharkta Fai. I must!~
IF ~~THEN REPLY ~Very well. Let us find your equipment and then take the body. Let us move fast, before the rest of your Clan get alerted and is after us once again.~DO ~SetGlobal("ShauhanaJoined","GLOBAL",1) JoinParty()~EXIT
END

IF ~Global("ShauhanaJoined","GLOBAL",3) ~THEN BEGIN return1
SAY ~I am ready.~
IF~~THEN REPLY ~Fine.~DO ~SetGlobal("ShauhanaJoined","GLOBAL",1) JoinParty()~EXIT
IF~~THEN REPLY ~Hello, Shauhana, I see you are fine but I cannot take you with me today.~EXIT
END

IF ~~THEN BEGIN GoCopper
SAY ~Very well <CHARNAME>, I will await the day when we meet again, so that we might smite evil orcs!~
IF ~~THEN DO ~SetGlobal("ShauhanaJoined","GLOBAL",0) SetGlobal("ShauMeetAmn","GLOBAL",1) EscapeAreaMove("AR0406",1215,1459,11)~EXIT
END

APPEND MINSCP_
IF WEIGHT #-9  ~Global("ShauhanaJoined","GLOBAL",1) InParty("CVShau") GlobalGT("SanShauMinsc","GLOBAL",12)~THEN BEGIN KickShauMinsc
SAY ~You want Shauhana and me to leave you, <CHARNAME>? We will return to my orc princess' village then, our place and destiny lies there. You may find us in her old teacher's house.~
IF ~~THEN REPLY  ~Oh no, sorry, that was a mistake!~DO ~JoinParty()~EXIT
IF ~~THEN REPLY  ~All the best to you both, we will see each other again.~DO~
SetGlobal("ShauhanaJoined","GLOBAL",4)
ActionOverride("CVShau",LeaveParty())
ActionOverride("CVShau",SetDialog("CVShauP"))
ActionOverride("CVShau",EscapeAreaMove("CVSHA8",578,721,13))
EscapeAreaMove("CVSHA8",478,748,13)~EXIT
END

IF WEIGHT #-11 ~Global("ShauhanaJoined","GLOBAL",4) ~THEN BEGIN RetClanLandM
SAY ~You have come for us in Clan land, <CHARNAME>. So much has happened and your help would be greatly appreciated now. Shall we join forces once again against the growing evil?~
IF~~THEN REPLY ~You have been missed. Let us continue together.~DO ~SetGlobal("ShauhanaJoined","GLOBAL",1) ActionOverride("Minsc",JoinParty()) ActionOverride("CVShau",JoinParty())~EXIT
IF~~THEN REPLY ~It is good to see you both again but we still have a task to complete until we can join once again. Farewell.~EXIT
END
END

