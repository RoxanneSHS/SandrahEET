BEGIN CVSHAU

IF ~Global("SanShauMeet","GLOBAL",2)~THEN BEGIN Greet
SAY ~Did you enjoy the spectacle? Only it was not an arena fight this time nor will there ever be one for me again. Unless you intend to return me to my owners - if there are still some left. Then prepare to find your place among those. (She vaguely points to the slain orcs all around her.)~
IF ~~THEN REPLY ~As a matter of fact we did not take it as a spectacle. We were ready to step in at the moment you would have needed assistance with those. (Repeat her gesture to the slain orcs.) You are are a magnificent fighter and needed us not at all.~DO~SetGlobal("SanShauMeet","GLOBAL",3)~GOTO Greet2
END

IF~~THEN BEGIN Greet2
SAY ~You are right - and actually I am glad you did not interfere. I have the satisfaction to have won my freedom all on my own. A good feeling. I see that you are no cowards and take your word that you would have helped me in need. Thank you.~
IF~~THEN REPLY ~You mentioned arenas and owners - and now freedom. You are, I mean *you were* their slave?~GOTO Greet3
END

IF~~THEN BEGIN Greet3
SAY ~In a way. yes, it is a bit more complicated. I am also one of them in a way. But I would rather not dwell here much longer peddling stories with you. I suggest we leave this battlefield unless we want to wait for the next wave to arrive.~
IF~~THEN REPLY ~Do you know where to go to? There is nothing but wilderness all around, and of course orcs. ~GOTO Greet4
IF~~THEN REPLY ~You do not expect us to leave you alone out here with nothing around but orcs who intend to get you back again? ~GOTO Greet4
IF~~THEN REPLY ~Good luck on your way. You have proven that you will make it out of this orc land by yourself. Maybe we will see you save soon in Trademeet or Athkatla. Ask for <CHARNAME> there, if you like to join us then.~DO ~ReputationInc(-3) ~GOTO GoAway
END

IF~~THEN BEGIN Greet4
SAY ~The land of my clan ends a bit to the south from here. I want to go to Amn, but that is about all I have planned for now. I have no idea what may expect me there, but so what - all is better than what lies behind me.~
IF~~THEN REPLY ~As this is as well our way, I propose to join us - at least until you have found out of here and can make plans for the future. My name is <CHARNAME>, by the way~DO ~AddexperienceParty(5000)~GOTO Shaujoin
IF ~~THEN REPLY ~Damn it, even if we have all the orcs of this region against us, it will not be said that <CHARNAME> and <PRO_HISHER> company let anyone suffer in slavery. I insist on your coming with us.~DO ~AddexperienceParty(8000)~GOTO Shaujoin2
END

IF~~THEN BEGIN Shaujoin
SAY ~Thank you, <CHARNAME>. I am called Shauhana.~
IF ~~THEN DO ~SetGlobal("ShauhanaJoined","GLOBAL",1)
JoinParty()~EXIT
END

IF~~THEN BEGIN Shaujoin2
SAY ~You insist - hey, I have just won my freedom a minute ago - and now a new master is there already to tell me what to do? ~
= ~(She laughs heartily) See, I have not lost my humour yet, of course I will be happy to come with you. As a companion for the first time in my life, not as a slave to be commanded.~
IF ~~THEN DO ~SetGlobal("ShauhanaJoined","GLOBAL",1)
JoinParty()~EXIT
END

IF ~~THEN BEGIN GoAway
SAY ~Very well <PRO_LADYLORD>, I will await the day when we meet again, so that we might smite evil orcs!~
IF ~~THEN DO ~SetGlobal("ShauMeetAmn","GLOBAL",1) EscapeAreaMove("AR0406",1215,1459,11)~EXIT
END

IF ~GlobalGT("SanShauMeet","GLOBAL",2)~THEN BEGIN ReturnDialogue
SAY ~I see you have found your way out of my clan's land.~
IF ~~THEN REPLY ~Yes, and I see the same is true for you. How did you fare? I apologize for having to leave you out there alone.~GOTO RetShau2
END

IF ~~THEN BEGIN RetShau2
SAY ~As you have observed previously, I am a tough fighter. I made it well through the wilderness. It is what they call *civilisation* that bothers me. My clan education is not much of a use in a city like this. I feel totally lost here.~
=~My orc heritage does not help me either, so before long I will end up in a life like the one I have left, either as a whore or an arena fighter.~
IF~~THEN REPLY~That sounds bad. You should have planned your future a bit more carefully. But then, your escape was nothing to plan at all. I am sorry I still cannot help you more.~GOTO GoAway
IF ~~THEN REPLY ~We cannot allow such a fate to happen. You are surely ready to face any danger that comes our way, and be warned, our foes are many and mighty. If you are willing, Shauhana, come with us.~DO ~SetGlobal("ShauhanaJoined","GLOBAL",1)
JoinParty()~EXIT
END