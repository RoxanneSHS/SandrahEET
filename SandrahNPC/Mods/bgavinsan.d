//Gavin Meeting

INTERJECT_COPY_TRANS ~B!GAVIN~0 HelloGav
== CVSandrJ IF ~InParty("CVSandr")~THEN @0
==~B!GAVIN~IF ~InParty("CVSandr")~THEN @1
== CVSandrJ IF ~InParty("CVSandr")~THEN @2
==~B!GAVIN~IF ~InParty("CVSandr")~THEN @3
== CVSandrJ IF ~InParty("CVSandr")~THEN @4
==~B!GAVIN~IF ~InParty("CVSandr")~THEN @5
== CVSandrJ IF ~InParty("CVSandr")~THEN @6
==~B!GAVIN~IF ~InParty("CVSandr")~THEN @7
END

// Reed
INTERJECT_COPY_TRANS IF_FILE_EXISTS ~B!REED~12 SanMetreedGav
== ~B!GAVINJ~IF ~InParty("CVSandr")~THEN @8
== IF_FILE_EXISTS~B!REED~IF ~InParty("CVSandr")~THEN @9
== BSANDR IF ~InParty("CVSandr")~THEN @10
== IF_FILE_EXISTS~B!REED~IF ~InParty("CVSandr")~THEN @11
== BSANDR IF ~InParty("CVSandr")~THEN @12
== ~B!GAVINJ~IF ~InParty("CVSandr")~THEN @13
== IF_FILE_EXISTS~B!REED~IF ~InParty("CVSandr")~THEN @14
== ~B!GAVINJ~IF ~InParty("CVSandr")~THEN @15
== ~B!GAVINJ~IF ~InParty("CVJenlig")~THEN @16
==BJenli IF ~InParty("CVJenlig")~THEN @17
== IF_FILE_EXISTS~B!REED~IF ~InParty("CVJenlig")~THEN @18
== ~B!GAVINJ~IF ~InParty("CVJenlig")~THEN @19
END

//Jolun if with Gavin
INTERJECT_COPY_TRANS IF_FILE_EXISTS ~B!JOLUN~23 SanJolInto
== ~BB!GAVIN~IF~InParty("CVSandr")~THEN @20
==  ~B!JOLUN~IF~InParty("CVSandr")~THEN @21
== ~BB!GAVIN~IF~InParty("CVSandr")~THEN @22
== BSANDR  IF~InParty("CVSandr")~THEN @23
==  ~B!JOLUN~IF~InParty("CVSandr")~THEN @24
== BSANDR  IF~InParty("CVSandr")~THEN @25
==  ~B!JOLUN~IF~InParty("CVSandr")~THEN @26
== BDYNAH  IF~InParty("CVSandr") InParty("Dynaheir")~THEN @27
== BXANNN IF ~InParty("CVSandr") !InParty("Dynaheir") InParty("XAN")~THEN @27
== ~BB!GAVIN~IF~InParty("CVJenlig")~THEN @28
==  ~B!JOLUN~IF~InParty("CVJenlig")~THEN @29
==BJenli IF ~InParty("CVJenlig")~THEN @30
END


//Gavin First
CHAIN
IF ~Global("SanGavBant","GLOBAL",1)~THEN BSANDR GavJolu
@31
= @32
DO ~ SetGlobal("SanGavBant","GLOBAL",2)RealSetGlobalTimer("SanGavLATime","GLOBAL",3600)~
==~BB!GAVIN~@33
==BSANDR @34
= @35
==~BB!GAVIN~@36
==BSANDR @37
==~BB!GAVIN~@38
==BSANDR @39
==~BB!GAVIN~@40
==BSANDR @41
==~BB!GAVIN~@42
==BSANDR @43
==~BB!GAVIN~@44
==BSANDR @45
EXIT

CHAIN
IF ~Global("SanGavkilBant","GLOBAL",3)~THEN BSANDR GavEnq4
@46
DO ~SetGlobal("SanGavkilBant","GLOBAL",4)~
==~BB!GAVIN~@47
==BSANDR @48
==~BB!GAVIN~@49
==BSANDR @50
==~BB!GAVIN~@51
= @52
==BSANDR @53
==~BB!GAVIN~@54
==BSANDR @55
= @56
= @57
==~BB!GAVIN~@58
==BSANDR @59
==~BB!GAVIN~@60
==BSANDR @61
==~BB!GAVIN~@62
==BSANDR @63
==~BB!GAVIN~@64
EXIT

// Gavin Secret

CHAIN
IF ~Global("SangavNoHurt","GLOBAL",1)~THEN BSANDR GavHur1
@65
DO ~SetGlobal("SangavNoHurt","GLOBAL",2)~
==~BB!GAVIN~@66
==BSANDR @67
==~BB!GAVIN~@68
==BSANDR @69
==~BB!GAVIN~@70
==BSANDR @71
==~BB!GAVIN~@72
==BSANDR @73
==~BB!GAVIN~@74
==BSANDR @75
==~BB!GAVIN~@76
EXIT

CHAIN
IF ~Global("SanGavMorn","GLOBAL",1) ~THEN BSANDR SanGavMor1
@77
DO ~SetGlobal("SanGavMorn","GLOBAL",2) ~
==~BB!GAVIN~@78
==BSANDR @79
==~BB!GAVIN~@80
==BSANDR @81
==~BB!GAVIN~@82
==BSANDR @83
==~BB!GAVIN~@84
==BSANDR @85
==~BB!GAVIN~@86
==BSANDR @87
==~BB!GAVIN~@88
==BSANDR @89
==~BB!GAVIN~@90
EXIT

CHAIN
IF ~Global("SanGavMorn","GLOBAL",3) ~THEN BSANDR SanGavpray
@91
DO ~SetGlobal("SanGavMorn","GLOBAL",4) ~
==~BB!GAVIN~@92
==BSANDR @93
==~BB!GAVIN~@94
==BSANDR @95
==~BB!GAVIN~@96
==BSANDR @97
==~BB!GAVIN~@98
==BSANDR @99
==~BB!GAVIN~@100
==BSANDR @101
= @102
==~BB!GAVIN~@103
==BSANDR @104
EXIT

CHAIN
IF ~Global("SanCldKBo","LOCALS",4) ~THEN BSANDR SanGavSpiMin
@105
DO ~SetGlobal("SanCldKBo","LOCALS",5) ~
==~BB!GAVIN~@106
==BSANDR @107
==~BB!GAVIN~@108
==BSANDR @109
EXIT

// Heal Gavin

CHAIN
IF~~THEN BSANDR SanHealGavi
@110
DO ~SetGlobal("SanHealgav","GLOBAL",6) ~
==~BB!GAVIN~@111
== BSANDR @112
==~BB!GAVIN~@113
== BSANDR @114
==~BB!GAVIN~@115
EXIT

// Jolun in BG1
CHAIN
IF ~Global("SanJolSolo","LOCALS",1) ~THEN BSANDR SanJlunElfSong
@116
DO~SetGlobal("SanJolSolo","LOCALS",2) ~
==IF_FILE_EXISTS  ~B!JOLUN~@117
== BSANDR  @23
== IF_FILE_EXISTS ~B!JOLUN~@118
== BSANDR  @25
==IF_FILE_EXISTS  ~B!JOLUN~@26
== BDYNAH  IF~InParty("Dynaheir")~THEN @27
== BXANNN IF ~!InParty("Dynaheir") InParty("XAN")~THEN @27
EXIT


APPEND  ~BB!GAVIN~
IF WEIGHT #-9 ~Global("SanHealgav","GLOBAL",5) ~THEN BEGIN SanHealedGav
SAY @119
IF~~THEN EXTERN BSANDR SanHealGavi
END
END
  
//Keldath & Red Wizards
INTERJECT_COPY_TRANS KELDDA 20 SanRedWizHateK
== CVSandrJ IF ~InParty("CVSandr")~THEN @121
==KELDDA IF ~InParty("CVSandr")~THEN @122
== CVSandrJ IF ~InParty("CVSandr")~THEN @123
==KELDDA IF ~InParty("CVSandr")~THEN @124
== CVSandrJ IF ~InParty("CVSandr")~THEN @125
END
