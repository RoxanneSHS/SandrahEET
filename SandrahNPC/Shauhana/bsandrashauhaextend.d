APPEND BSANDR
// Shauhana

IF ~Global("Shamyrkfound","GLOBAL",7) ~THEN BEGIN ShauHer1
SAY@0
IF~~THEN REPLY@1DO ~SetGlobal("Shamyrkfound","GLOBAL",8)~GOTO ShauHer2
END

IF ~~THEN BEGIN ShauHer2
SAY @2
IF~~THEN REPLY@3GOTO ShauHer3
IF~~THEN REPLY@4GOTO ShauHer3
END

IF ~~THEN BEGIN ShauHer3
SAY @5
IF~~THEN REPLY@6GOTO ShauHer4
END

IF ~~THEN BEGIN ShauHer4
SAY @7
= @8
IF~~THEN REPLY@9GOTO ShauHer5
END

IF ~~THEN BEGIN ShauHer5
SAY @10
IF~~THEN REPLY@11GOTO ShauHer6
END

IF ~~THEN BEGIN ShauHer6
SAY @12
IF ~~THEN REPLY@13
EXIT
IF ~~THEN REPLY@14
EXIT
END

IF~Global("ShauUnd","CVSh11",4)~THEN BEGIN Sharktafake1
SAY@15
IF~~THEN REPLY@16DO~SetGlobal("ShauUnd","CVSh11",5)~GOTO Sharktafake2
END

IF~~THEN BEGIN Sharktafake2
SAY@17
IF~~THEN REPLY@18EXIT
IF~~THEN REPLY@19EXIT
END
END

APPEND CVSandrJ

IF~Global("SanSacroll","GLOBAL",5)~THEN BEGIN Sanfreehend20
SAY@20
IF~!InParty("CVSHAU")~THEN REPLY @21DO~IncrementGlobal("Sanpoints","GLOBAL",-2) SetGlobal("SanSacroll","GLOBAL",6)~EXIT
IF~InParty("CVShau")~THEN REPLY @21DO~IncrementGlobal("Sanpoints","GLOBAL",-2) SetGlobal("SanSacroll","GLOBAL",6)~EXTERN CVShauJ Shautempslav
IF~~THEN REPLY @22DO ~SetGlobal("SanSacroll","GLOBAL",6)~GOTO Sanfreehend21
END

IF~~THEN BEGIN Sanfreehend21
SAY@23
IF~!InParty("CVSHAU")~THEN REPLY @24DO ~IncrementGlobal("Sanpoints","GLOBAL",3) EraseJournalEntry(@60458)~EXIT
IF~InParty("CVShau")~THEN REPLY @24DO ~IncrementGlobal("Sanpoints","GLOBAL",3) EraseJournalEntry(@60458)~EXTERN CVShauJ Shautempslav
END
END

//_____________________________________
//CHAINS
//_____________________________________

//Slavers in Athkatla
CHAIN
IF~~THEN CVShauJ Shautempslav
@25
==CVSandrJ@26
==CVShauJ@27
==CVSandrJ@28
==CVShauJ@29
END
++@30EXIT
++@31EXIT
++@32EXIT

// Shauhana Meets Minsc
CHAIN
IF~Global("SanShauMinsc","GLOBAL",8) ~THEN BSANDR ShauMeetCopp1
@33
DO~SetGlobal("SanShauMinsc","GLOBAL",11)~
== BSHAUHA @34
= @35
== BSANDR @36
== MINSCP @37
== BSANDR @38
== MINSCP @39
== BSANDR @40
== BSHAUHA @41
== MINSCP @42
== BSHAUHA @43
== MINSCP @44DO ~ActionOverride("Minsc",JoinParty())~EXIT

CHAIN
IF~Global("SanShauMinsc","GLOBAL",10) ~THEN BSANDR ShauMeetCopp2
@45
DO~SetGlobal("SanShauMinsc","GLOBAL",11)~
== BSHAUHA @46
== BSANDR @47
== MINSCP @48
== BSHAUHA @49
== MINSCP @44DO ~ActionOverride("Minsc",JoinParty())~EXIT

CHAIN
IF~Global("SanShauMinsc","GLOBAL",24)~THEN BSANDR ShauNowMinsc
@50
DO~SetGlobal("SanShauMinsc","GLOBAL",25)RealSetGlobalTimer("SanShauMinTi","GLOBAL",180)~
== BMINSC@51
== BSANDR @52
== BMINSC@53
== BSANDR @54
== BMINSC@55
== BSANDR @56
== BMINSC@57
=@58
== BSANDR @59
END
++@60EXIT
