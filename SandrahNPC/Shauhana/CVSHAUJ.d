BEGIN CVSHAUJ

//Road Out of Clan's Land

IF~Global("SanShauMeet","GLOBAL",4)~THEN BEGIN ShauDeadEnd1
SAY @0
IF~~THEN REPLY @1 GOTO ShauDeadEnd2
IF~~THEN REPLY@2 GOTO ShauDeadEnd2
END

IF~~THEN BEGIN  ShauDeadEnd2
SAY @3
IF~~THEN REPLY @4GOTO ShauDeadEnd3
END

IF~~THEN BEGIN  ShauDeadEnd3
SAY @5
IF~~THEN REPLY @6 GOTO ShauDeadEnd4
IF~~THEN REPLY @7GOTO ShauDeadEnd4
END

IF~~THEN BEGIN ShauDeadEnd4
SAY @8
= @9
IF~~THEN REPLY @10GOTO ShauDeadEnd5
END

IF~~THEN BEGIN ShauDeadEnd5
SAY @11
= @12
IF~~THEN REPLY @13
GOTO ShauDeadEnd6
END

IF~~THEN BEGIN ShauDeadEnd6
SAY @14
IF~~THEN DO ~SetGlobal("SanShauMeet","GLOBAL",5)
TriggerActivation("Swamp",TRUE)
AddMapNote([681.431],@295)
DisplayStringWait(Player1,@199)~EXIT
END

IF~Global("ShauVelvft","LOCALS",1)~THEN BEGIN Velvft1
SAY@15
IF~~THEN REPLY @16GOTO Velvft2
IF~~THEN REPLY @17GOTO Velvft2
IF~~THEN REPLY @18GOTO Velvft2
END

IF ~~THEN BEGIN Velvft2
SAY @19
IF~~THEN REPLY@20GOTO Velvft3
IF~~THEN REPLY@21GOTO Velvft3
END

IF ~~THEN BEGIN Velvft3
SAY @22
IF~~THEN REPLY@23DO~SetGlobal("ShauVelvft","LOCALS",2)~EXIT
IF~GlobalLT("SanShauOrcStaff","GLOBAL",2) ~THEN REPLY@24DO~SetGlobal("ShauVelvft","LOCALS",2)~EXIT
IF~GlobalGT("SanShauOrcStaff","GLOBAL",1) ~THEN REPLY@25DO~SetGlobal("ShauVelvft","LOCALS",2)~EXIT
IF~~THEN REPLY@26DO~SetGlobal("ShauVelvft","LOCALS",2)~EXIT
END

IF ~Global("SanShauOrcStaff","GLOBAL",1)~THEN BEGIN StaffGet1
SAY @27
IF ~~THEN REPLY @28GOTO StaffGet2
IF ~~THEN REPLY @29GOTO StaffGet2
END

IF ~~THEN BEGIN  StaffGet2
SAY @30
IF ~~THEN REPLY @31DO ~SetGlobal("SanShauOrcStaff","GLOBAL",2) ~EXIT
END

IF~Global("SanShauOrcStaff","GLOBAL",3)~THEN BEGIN  StaffGet3
SAY @32
IF~TimeOfDay(DAY)~THEN REPLY @33GOTO StaffGet4D
IF~!TimeOfDay(DAY)~THEN REPLY @33GOTO StaffGet4N
END

IF ~~THEN BEGIN StaffGet4D
SAY @34
= @35
IF ~~THEN REPLY @36DO ~SetGlobal("SanShauOrcStaff","GLOBAL",4)~EXIT
END

IF ~~THEN BEGIN StaffGet4N
SAY @37
= @35
IF ~~THEN REPLY @38DO ~SetGlobal("SanShauOrcStaff","GLOBAL",4)~EXIT
END

IF~Global("SanShauOrcStaff","GLOBAL",14) ~THEN BEGIN ShauJwlhint
SAY @39
IF ~~THEN REPLY @40DO~ SetGlobal("SanShauOrcStaff","GLOBAL",15)~EXIT
END

// Shauhana PID 1

IF ~IsGabber(Player1) Global("ShauPid","GLOBAL",0) ~THEN BEGIN ShauPID0
SAY @41
IF ~Global("HoundTro","LOCALS",0) ~THEN REPLY @42GOTO HoundTro1
IF ~~THEN REPLY @43EXIT
END

IF~~THEN BEGIN HoundTro1
SAY @44
IF ~~THEN REPLY @45GOTO HoundTro2
END

IF~~THEN BEGIN HoundTro2
SAY @46
IF ~~THEN REPLY @47DO ~SetGlobal("HoundTro","LOCALS",1)~EXIT
END


IF ~IsGabber(Player1) Global("ShauPid","GLOBAL",1)~THEN BEGIN ShauPID1
SAY@48
IF~Global("Shausc","LOCALS",0) InParty("CVSandr") GlobalLT("Sansharkta","GLOBAL",1)~THEN REPLY @49GOTO Shauscheal
IF~Global("ShauBrag","LOCALS",0)GlobalLT("Sansharkta","GLOBAL",1) ~THEN REPLY @50GOTO Shaubrag1
IF ~Global("HoundTro","LOCALS",0) ~THEN REPLY @42GOTO HoundTro1
IF~Global("ShauBrag","LOCALS",0)GlobalLT("Sansharkta","GLOBAL",1) ~THEN REPLY @51GOTO Shaubrag1
IF ~~THEN REPLY @52EXIT
END

IF ~~THEN BEGIN Shaubrag1
SAY @53
IF~~THEN REPLY @54GOTO Shaubrag2
END

IF~~THEN BEGIN Shaubrag2
SAY @55
IF ~~THEN REPLY @56GOTO Shaubrag3
END

IF~~THEN BEGIN Shaubrag3
SAY @57
= @58
= @59
IF~~THEN REPLY @60GOTO Shaubrag4
END

IF~~THEN BEGIN Shaubrag4
SAY @61
IF~~THEN REPLY @62 GOTO Shaubrag5
IF~~THEN REPLY @63 GOTO Shaubrag5
END

IF~~THEN BEGIN Shaubrag5
SAY @64
IF~~THEN REPLY @65GOTO Shaubrag6
END

IF~~THEN BEGIN Shaubrag6
SAY @66
= @67
IF~~THEN DO ~SetGlobal("ShauBrag","LOCALS",1) SetGlobal("SanSharkta","GLOBAL",1)~EXIT
END

IF~~THEN BEGIN  Shauscheal
SAY@68
IF~~THEN EXTERN CVSHAUJ Scarheal2
END

//  Shauhana and Minsc
IF~Global("ShauPCRejMinsc","LOCALS",1)~THEN BEGIN ShauReturnM1
SAY@69
IF~~THEN REPLY @70DO~SetGlobal("ShauPCRejMinsc","LOCALS",2)~GOTO ShauReturnM2
END

IF~~THEN BEGIN ShauReturnM2
SAY @71
IF~~THEN REPLY @72GOTO ShauReturnM3
END

IF~~THEN BEGIN ShauReturnM3
SAY @73
IF~~THEN DO ~SetGlobal("ShauhanaJoined","GLOBAL",0) SetGlobal("ShauMeetAmn","GLOBAL",2) SetGlobal("SanShauMinsc","GLOBAL",13)LeaveParty() EscapeAreaMove("AR0406",1215,1459,11)~EXIT
END

IF~Global("ShauRemSH","LOCALS",1) ~THEN BEGIN ShauSHReminder1
SAY@74
IF~~THEN REPLY @75DO~SetGlobal("ShauRemSH","LOCALS",2)~EXIT
IF~~THEN REPLY @76DO~SetGlobal("ShauRemSH","LOCALS",2)~EXIT
IF~~THEN REPLY @77DO~SetGlobal("ShauRemSH","LOCALS",2)~EXIT
END

IF~Global("ShauSkin","LOCALS",1)~THEN BEGIN Skinner1
SAY@78
IF~~THEN REPLY@79DO~SetGlobal("ShauSkin","LOCALS",2)~GOTO Skinner2
END

IF~~THEN BEGIN Skinner2
SAY@80
IF~~THEN REPLY@81GOTO Skinner3
END

IF~~THEN BEGIN Skinner3
SAY@82
IF~~THEN REPLY@83EXIT
IF~~THEN REPLY@84EXIT
IF~~THEN REPLY@85EXIT
END



//_______________________________CHAINS_____________

//Shauhana's Scar
CHAIN
IF ~Global("SanShauMeet","GLOBAL",6) ~THEN  CVSHAUJ ShauScar1
@86
= @87
= @88
= @89
= @90
DO ~SetGlobal("SanShauMeet","GLOBAL",7)~
== BSANDR@91
END
++ @92+ ShauScar2

CHAIN
IF ~~THEN CVSHAUJ ShauScar2
@93
END
++ @94+ ShauScar3
++ @95+ ShauScar3

CHAIN
IF ~~THEN CVSHAUJ ShauScar3
@96
== BSANDR @97
== CVSHAUJ @98
== BSANDR @99
== CVSHAUJ @100
END
++ @101EXIT
++ @102EXIT


CHAIN
IF~~THEN CVSHAUJ Scarheal2
@103
DO ~SetGlobal("Shausc","LOCALS",1) ~
== BSANDR @104
== CVSHAUJ @105
== BSANDR @106
== CVSHAUJ @107
== BSANDR @108
= @109
== CVSHAUJ @110
== BSANDR @111
== CVSHAUJ @112
== BSANDR @113
= @114
= @115
== CVSHAUJ @116
== BSANDR @117
== CVSHAUJ @118
== BSANDR @119
== CVSHAUJ @120EXIT

EXTEND_BOTTOM TRGyp02 2
IF~!InPartySlot(LastTalkedToBy,0) Name("CVShau",LastTalkedToBy) ~THEN GOTO GypShauFortn
END

CHAIN
IF~~THEN TRGyp02 GypShauFortn
@121
==CVShauJ@122
==TRGyp02@123
==TRGyp02 IF~InParty("Minsc")~THEN@124
==CVShauJ@125DO ~ActionOverride(Player1,SetDialogue("Player1"))~EXIT
