BEGIN CVSHAU

IF ~Global("SanShauMeet","GLOBAL",2)~THEN BEGIN Greet
SAY @0
IF ~~THEN REPLY @1DO~SetGlobal("SanShauMeet","GLOBAL",3)~GOTO Greet2
END

IF~~THEN BEGIN Greet2
SAY @2
IF~~THEN REPLY @3GOTO Greet3
END

IF~~THEN BEGIN Greet3
SAY @4
IF~~THEN REPLY @5GOTO Greet4
IF~~THEN REPLY @6GOTO Greet4
IF~~THEN REPLY @7DO ~ReputationInc(-3) ~GOTO GoAway
END

IF~~THEN BEGIN Greet4
SAY @8
IF~~THEN REPLY @9DO ~AddexperienceParty(5000)~GOTO Shaujoin
IF ~~THEN REPLY @10DO ~AddexperienceParty(8000)~GOTO Shaujoin2
END

IF~~THEN BEGIN Shaujoin
SAY @11
IF ~~THEN DO ~SetGlobal("ShauhanaJoined","GLOBAL",1)
JoinParty()~EXIT
END

IF~~THEN BEGIN Shaujoin2
SAY @12
= @13
IF ~~THEN DO ~SetGlobal("ShauhanaJoined","GLOBAL",1)
JoinParty()~EXIT
END

IF ~~THEN BEGIN GoAway
SAY @14
IF ~~THEN DO ~SetGlobal("ShauMeetAmn","GLOBAL",1) EscapeAreaMove("AR0406",1215,1459,11)~EXIT
END

IF ~GlobalGT("SanShauMeet","GLOBAL",2)~THEN BEGIN ReturnDialogue
SAY @15
IF ~~THEN REPLY @16GOTO RetShau2
END

IF ~~THEN BEGIN RetShau2
SAY @17
=@18
IF~~THEN REPLY@19GOTO GoAway
IF ~~THEN REPLY @20DO ~SetGlobal("ShauhanaJoined","GLOBAL",1)
JoinParty()~EXIT
END