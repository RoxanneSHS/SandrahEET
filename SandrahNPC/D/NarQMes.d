BEGIN NarQMes

CHAIN
IF ~Global("NarQMessSees","GLOBAL",1)~THEN NarQMes NarQGiveMes
@0
== CVSandrJ @1
== NarQMes @2
== CVSandrJ @3
END
++ @4+ GiveMesId
++ @5DO~IncrementGlobal("Sanpoints","GLOBAL",1)~+ GiveMes1

CHAIN
IF ~~THEN NarQMes GiveMesId
@6
== CVSandrJ @7
END
++ @8+ GiveMes1

CHAIN
IF ~~THEN NarQMes GiveMes1
@9
== CVSandrJ @10
== NarQMes @11
== CVSandrJ @12
END
++ @13 + GiveMes2

CHAIN
IF ~~THEN NarQMes GiveMes2
@14
== CVSandrJ @15
END
++ @16+ GiveMes3

CHAIN
IF ~~THEN NarQMes GiveMes3
@17DO ~SetGlobal("NarQMessApp","GLOBAL",2) SetGlobal("NarQMessSees","GLOBAL",2) AddJournalEntry(@60076,QUEST) RealSetGlobalTimer("NarqMesRemTTime","GLOBAL",7600) EscapeArea()~
== CVSandrJ @18
END
++ @19EXIT
IF~OR(2)Alignment(Player1,MASK_EVIL) ReputationLT(Player1,8) ~THEN REPLY@20DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~GOTO GiveMespr
IF~PartyGoldLT(5000)~THEN REPLY@21GOTO GiveMespr
IF~PartyGoldGT(4999)~THEN REPLY@21DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~GOTO GiveMespr

CHAIN
IF~~THEN NarQMes GiveMespr
@22DO~EscapeArea()~EXIT

CHAIN
IF ~Global("NarQMessApp","GLOBAL",2) AreaCheck("BG2304")~THEN NarQMes NarQGInn
@23
DO ~SetGlobal("NarQMessApp","GLOBAL",3) ~
END
++ @24EXIT
++ @25EXIT

CHAIN
IF ~Global("NarQMessApp","GLOBAL",4)~THEN NarQMes NarQGRem
@26 
DO ~SetGlobal("NarQMessApp","GLOBAL",5) RealSetGlobalTimer("NarqMesRemTTime","GLOBAL",2400) EscapeArea()~
== CVSandrJ @27
END
++ @28
EXIT

CHAIN
IF ~Global("NarQMessApp","GLOBAL",5) AreaCheck("BG2304")~THEN NarQMes NarQGInn2
@23
DO ~SetGlobal("NarQMessApp","GLOBAL",6) ~
END
++ @24
EXIT

CHAIN
IF ~Global("SanVisitedWD","GLOBAL",1) AreaCheck("CVDRE2") Global("SanWDWelc","LOCALS",0) ~THEN NarQMes WelWDPel
@29
DO~SetGlobal("SanWDWelc","LOCALS",1)~
== CVSandrJ @30
== NarQMes @31
== CVSandrJ @32
== NarQMes @33
END
++ @34+ WelWDPel2
++ @35+ WelWDPel2

CHAIN
IF ~~THEN NarQMes WelWDPel2
@36
== CVSandrJ @37
END
++ @38EXIT
++ @39EXIT

CHAIN
IF ~Global("SanVisitedWD","GLOBAL",1) AreaCheck("CVDRE2") Global("SanWDWelc","LOCALS",1) GlobalLT("SanNarQ","GLOBAL",9)~THEN NarQMes WelWDremE
@40
== CVSandrJ @41
EXIT

CHAIN
IF ~Global("SanVisitedWD","GLOBAL",1) AreaCheck("CVDRE2") Global("SanWDWelc","LOCALS",1) Global("SanNarQ","GLOBAL",9)~THEN NarQMes WelWDremE
@42
== BSHART IF~InParty("Sharteel") ~THEN @43
== BVICON  IF~InParty("Viconia") ~THEN @44
END
++ @45
EXIT

CHAIN
IF ~Global("SanSharInt","GLOBAL",28) ~THEN NarQMes SanSharBir
@46
DO ~SetGlobal("SanSharInt","GLOBAL",29) EscapeArea()~
END
++ @47
EXIT

CHAIN
IF ~Global("SanSharInt","GLOBAL",30) ~THEN NarQMes SanSharBit1
@48
DO ~SetGlobal("SanSharInt","GLOBAL",31)~
== CVSandrJ @49
== NarQMes @50
== CVSandrJ @51
== NarQMes @52
= @53
END
++ @54+ SanSharBit2
++ @55+ SanSharBit2

CHAIN
IF~~THEN NarQMes SanSharBit2
@56
= @57
== CVSandrJ @58
END
++@59
EXIT

CHAIN
IF ~Global("SanKhalBlood","GLOBAL",4)~THEN NarQMes BookWriteL
@60
DO~SetGlobal("SanKhalBlood","GLOBAL",5) ~
== BSANDR@61
== NarQMes @62
== BSANDR@63
== NarQMes @64
== BSANDR@65
== NarQMes @66
== BSANDR@67
== NarQMes @68
== BSANDR@69
== NarQMes @70
== BSANDR@71
== NarQMes @72
== BSANDR@73
EXIT

CHAIN
IF ~GlobalGT("SanSharInt","GLOBAL",36) Global("SanSharNewHome","GLOBAL",0) AreaCheck("CVDRE2")~THEN NarQMes SanSharNewHome1
@74
DO ~SetGlobal("SanSharNewHome","GLOBAL",1)~
== CVSandrJ @75
== NarQMes @76
== CVSandrJ @77
== NarQMes @78
== CVSandrJ @79
== NarQMes @80
END
++@81+ SanSharNewHome2

CHAIN
IF ~Global("SanSharCom","GLOBAL",8)Global("SanSharNewHome","GLOBAL",0) AreaCheck("CVDRE2") ~THEN NarQMes SanSharNewHome3
@82
DO ~SetGlobal("SanSharNewHome","GLOBAL",1)~
== CVSandrJ @83
== NarQMes @76
== CVSandrJ @84
== NarQMes @78
== CVSandrJ @79
== NarQMes @80
END
++@85+ SanSharNewHome2

CHAIN
IF~~THEN NarQMes SanSharNewHome2
@86
== CVSandrJ @87
== NarQMes @88
== CVSandrJ @89
=@90
END
++@91EXIT
IF~CheckStatGT(Player1,12,INT) ~THEN REPLY@92EXIT

CHAIN
IF~Global("SanVampWDQuest","GLOBAL",3)~THEN NarQMes SanWDVampQ1
@93
DO~SetGlobal("SanVampWDQuest","GLOBAL",4)~
== CVSandrJ @94
==NarQMes @95
== CVSandrJ @96
==NarQMes @97
==NarQMes IF~GlobalLT("SanSharInt","GLOBAL",29)~THEN@98
==NarQMes @99
DO~EscapeArea()~EXIT

CHAIN
IF~Global("SanXephRet","GLOBAL",1)~THEN NarQMes SanWDXephRet
@100
DO~SetGlobal("SanXephRet","GLOBAL",2)~
== CVSandrJ @101
==NarQMes @102
== CVSandrJ @103
==NarQMes @104
== CVSandrJ @105
==NarQMes @106EXIT

CHAIN
IF WEIGHT #1 ~Global("CowElmVis","LOCALS",1) ~THEN NarQMes SanWiEdinWD
@107
DO ~SetGlobal("CowElmVis","LOCALS",2)~
== CVSandrJ IF ~!InMyArea("Pellig") ~THEN @108
== CVSandrJ IF ~InMyArea("Pellig") ~THEN @109
== BEDWIN_ IF ~InMyArea("Pellig") ~THEN @110
== BEDWIN_ IF ~!InMyArea("Pellig") ~THEN @111
== NarQMes @112
== BEDWIN_ @113
== CVSandrJ @114
== BEDWIN_ @115
EXIT