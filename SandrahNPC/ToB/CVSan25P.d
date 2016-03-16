BEGIN CVSan25P

IF ~Global("SandrahJoined","GLOBAL",1)GlobalGT("Chapter","Global",21)~ THEN BEGIN KickSPT251
SAY ~So you want me to leave you out here alone?~
IF ~~ THEN REPLY ~ Yes, dear Sandrah, you need to rest here for a short while. I will be back soon. I already start to miss you. (Suddenly you feel something like a dark hopelessness around you.) ~ GOTO PT2513
IF~~ THEN REPLY  ~I think it's best for us to part now, but we may travel together again soon enough. Do you know of any place we can meet later?.~ GOTO PT2513
IF ~~ THEN REPLY  ~Oh no, sorry, that will never happen!~ DO ~JoinParty()ReallyForceSpellRES("CVSanam",Myself)~
EXIT
END

IF~Global("SandrahJoined","GLOBAL",25)AreaCheck("CVUMO5")~ THEN BEGIN MeetUM1
SAY~It is a very special day for me and I have to thank you from all my heart. I now have a sister and she is a wonderful being. I am so happy I had the chance to get to know her.~
IF~~THEN REPLY ~ I will give the both of you some more time to acquaint, I will return soon.~ DO~AddexperienceParty(18000) AddXPObject("CVSandr",22000)~GOTO MeetUM2
IF~~THEN REPLY ~ I love you, Sandrah, and I rejoice with you. Can we continue together now?~ DO~AddexperienceParty(18000) AddXPObject("CVSandr",22000)~GOTO MeetUM2
END

IF~~THEN BEGIN MeetUM2
SAY~ It is time to continue your quest now, my love. But before we leave this peaceful enclave go to speak to my sister again, she has some help to offer.~
IF~~THEN DO~ SetGlobal("SandrahJoined","GLOBAL",1) JoinParty() ReallyForceSpellRES("CVSanam",Myself)~ EXIT
END

IF~~THEN BEGIN PT2513
SAY~No, I have no idea where you will go from here. Only fate can reunite us again. I wish you all the best. (She turns away apruptly.)~
IF~~THEN REPLY~ But...~ DO ~SetGlobal("SandrahJoined","GLOBAL",0) ActionOverride("CVSandr",MoveBetweenAreas("CVRtf1",[803.624],2)) SetGlobal("SandrahSummoned","GLOBAL",2)~ EXIT
END

IF~Global("SandrahJoined","GLOBAL",26)~ THEN BEGIN MeetUM3
SAY~An unexpected turn of events. Bhaal and evil will not win.~
IF~~THEN DO~ChangeAIScript("CVSanUM",OVERRIDE) Enemy()~EXIT
END


