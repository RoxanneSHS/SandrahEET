CHAIN
IF WEIGHT #-2~Global("SanSodPamp","BD0130",1)~THEN CVSandrJ Sanpamp1
@0
DO~SetGlobal("SanSodPamp","BD0130",2)~
=@1
END
++@2+ Sanpamp2
++@3+ Sanpamp2

CHAIN
IF~~THEN CVSandrJ Sanpamp2
@4
==CVSandrJ IF~Global("SanRomPath","Global",1)~THEN@5
==CVSandrJ IF~Global("SanRomPath","Global",2)~THEN@6
END
IF~Global("SanRomPath","Global",1)~THEN REPLY@7EXIT
IF~Global("SanRomPath","Global",2)~THEN REPLY@8EXIT

CHAIN
IF WEIGHT #-2~Global("Sansusp","bd0102",1)~THEN CVSandrJ Sanpamp3
@9
DO~SetGlobal("Sansusp","bd0102",2)~
=@10
END
++@11+ Sanpamp4
++@12+ Sanpamp4

CHAIN
IF~~THEN CVSandrJ Sanpamp4
@13
END
++@14+ Sanpamp5
++@15+ Sanpamp5
++@16+ Sanpamp5

CHAIN
IF~~THEN CVSandrJ Sanpamp5
@17
END
++@18EXIT
++@19EXIT
++@20DO~IncrementGlobal("Sanpoints","Global",1)~EXIT

CHAIN
IF WEIGHT #-2~Global("SanSodQuest","Global",1)~THEN CVSandrJ SodImoMiss1
@21
DO~SetGlobal("SanSodQuest","Global",2)~
END
++@22+ SodImoMiss2
++@23+ SodImoMiss2

CHAIN
IF~~THEN CVSandrJ SodImoMiss2
@24
END
++@25+ SodImoMiss3
++@26+ SodImoMiss3

CHAIN
IF~~THEN CVSandrJ SodImoMiss3
@27
=@28EXIT

CHAIN
IF WEIGHT #-2~Global("SanSodQuest","Global",3)~THEN CVSandrJ SodDreams1
@29
DO~SetGlobal("SanSodQuest","Global",4)~
END
++@30+ SodDreams2
++@31+ SodDreams2
++@32DO~IncrementGlobal("Sanpoints","Global",-1)~+ SodDreams2

CHAIN
IF~~THEN CVSandrJ SodDreams2
@33
END
++@34+ SodDreams3
++@35+ SodDreams4

CHAIN
IF~~THEN CVSandrJ SodDreams3
@36
END
++@37+ SodDreams5

CHAIN
IF~~THEN CVSandrJ SodDreams4
@38
END
++@37+ SodDreams5

CHAIN
IF~~THEN CVSandrJ SodDreams5
@39
=@40
=@41
=@42
END
++@43+ SodDreams6

CHAIN
IF~~THEN CVSandrJ SodDreams6
@44EXIT

CHAIN
IF~Global("SanPilRidl","BD1200",1)~THEN CVSandrJ Pillrid1
@45
DO~SetGlobal("SanPilRidl","BD1200",2)~
=@46
END
++@47DO~IncrementGlobal("Sanpoints","Global",-1)~EXIT
++@48DO~IncrementGlobal("Sanpoints","Global",1)~+ Pillrid2

CHAIN
IF~~THEN CVSandrJ Pillrid2
@49
END
++@50EXIT
++@51EXIT

CHAIN
IF WEIGHT #-2~Global("bd_spawn_cultist","bd7220",2)~THEN CVSandrJ Fountemp1
@52
DO~SetGlobal("bd_spawn_cultist","bd7220",3)~
END
++@53+ Fountemp2
++@54+ Fountemp2
++@55+ Fountemp2

CHAIN
IF~~THEN CVSandrJ Fountemp2
@56
END
++@57+ Fountemp3

CHAIN
IF~~THEN CVSandrJ Fountemp3
@58
END
++@59EXIT
++@60EXIT

CHAIN
IF WEIGHT #-2~Global("SanSodQuest","Global",5) Global("SanHeph","LOCALS",1)~THEN CVSandrJ SodHeph1
@61
DO~SetGlobal("SanSodQuest","Global",6)~
END
++@62+ SodHeph2
++@63+ SodHeph2

CHAIN
IF~~THEN CVSandrJ  SodHeph2
@64
END
++@65+ SodHeph3
++@66+ SodHeph3
++@67+ SodHeph3

CHAIN
IF~~THEN CVSandrJ  SodHeph3
@68
=@69
END
++@70EXIT
++@71DO~IncrementGlobal("Sanpoints","Global",1)~EXIT
++@72EXIT

CHAIN
IF WEIGHT #-2~Global("SanSodQuest","Global",5) Global("SanHeph","LOCALS",2)~THEN CVSandrJ SodHeph11
@73
DO~SetGlobal("SanSodQuest","Global",6)~
END
++@62+ SodHeph12
++@63+ SodHeph12

CHAIN
IF~~THEN CVSandrJ  SodHeph12
@74
END
++@65+ SodHeph13
++@66+ SodHeph13
++@67+ SodHeph13

CHAIN
IF~~THEN CVSandrJ  SodHeph13
@75
=@76
END
++@70EXIT
++@71DO~IncrementGlobal("Sanpoints","Global",1)~EXIT
++@72EXIT

CHAIN
IF WEIGHT #-2~Global("SanSoDBook","LOCALS",1)~THEN CVSandrJ Portal1
@77
DO~SetGlobal("SanSoDBook","LOCALS",2)~
=@78
END
++@79+ Portal2
++@80+ Portal2
++@81+ Portal2

CHAIN
IF ~~THEN CVSandrJ Portal2
@82
END
++@83+ Portal3

CHAIN
IF ~~THEN CVSandrJ Portal3
@84
END
++@85+ Portal4

CHAIN
IF ~~THEN CVSandrJ Portal4
@86
END
++@87EXIT
++@88EXIT
++@89EXIT

CHAIN
IF WEIGHT #-2~Global("SanBhaal","bd2000",2)~THEN CVSandrJ BhalBri1
@90
DO~SetGlobal("SanBhaal","bd2000",3)~
==CVSandrJ IF~Global("SanRomPath","Global",1)~THEN@91
==CVSandrJ IF~Global("SanRomPath","Global",2)~THEN@92
END
++@93+ BhalBri2
++@94DO~IncrementGlobal("Sanpoints","Global",1)~+ BhalBri2
++@95DO~IncrementGlobal("Sanpoints","Global",1)~+ BhalBri2

CHAIN
IF ~~THEN CVSandrJ BhalBri2
@96
=@97
END
++@98+ BhalBri4
++@99+ BhalBri3
++@100+ BhalBri3

CHAIN
IF ~~THEN CVSandrJ BhalBri3
@101EXIT

CHAIN
IF ~~THEN CVSandrJ BhalBri4
@102
=@103EXIT

CHAIN
IF WEIGHT #-2~Global("SanBDdream2","LOCALS",1) ~THEN CVSandrJ BDdream2a
@104
DO~SetGlobal("SanBDdream2","LOCALS",2)~
END
++@105+ BDdream2b
++@106 + BDdream2b

CHAIN
IF ~~THEN CVSandrJ BDdream2b
@107
END
++@108DO ~IncrementGlobal("Sanpoints","Global",-1)~EXIT
++@109+ BDdream2c

CHAIN
IF ~~THEN CVSandrJ BDdream2c
@110
=@111
END
++@112+ BDdream2d

CHAIN
IF ~~THEN CVSandrJ BDdream2d
@113
END
++@114EXIT
++@115EXIT

CHAIN
IF WEIGHT #-2~Global("SanBdInfiltrate","Global",1)~THEN CVSandrJ BDInfil2
@116
DO~SetGlobal("SanBdInfiltrate","Global",2)~
END
++ @117+ BDInfil3
++ @118+ BDInfil3

CHAIN
IF~~THEN CVSandrJ BDInfil3
@119
=@120
END
++@121+ BDInfil4
++@122+ BDInfil4
++@123+ BDInfil4

CHAIN
IF~~THEN CVSandrJ BDInfil4
@124
=@125
END
++@126EXIT
++@127EXIT
++@128EXIT

CHAIN
IF WEIGHT #-2~Global("SanSodQuest","Global",7)~THEN CVSandrJ BDFin1
@129
DO~SetGlobal("SanSodQuest","Global",8)~
END
++@130+ BDFin2
++@131+ BDFin2

CHAIN
IF~~THEN CVSandrJ BDFin2
@132
END
++@133+ BDFin3
++@134+ BDFin3

CHAIN
IF~~THEN CVSandrJ BDFin3
@135
END
++@136+ BDFin4
++@137+ BDFin4

CHAIN
IF~~THEN CVSandrJ BDFin4
@138EXIT

CHAIN
IF WEIGHT #-2~Global("SanSodQuest","Global",9)~THEN CVSandrJ BDJail1
@139
=@140
DO~SetGlobal("SanSodQuest","Global",10)~
END
++@141DO~IncrementGlobal("Sanpoints","Global",1)~EXIT
++@142EXIT
++@143DO~IncrementGlobal("Sanpoints","Global",1)~EXIT


//______________________________________________________________________

ADD_TRANS_TRIGGER BDLiia 0
~!InParty("CVSandr")~

EXTEND_BOTTOM BDLiia 0
IF~InParty("CVSandr")~THEN REPLY@144DO~SetGlobal("bd_001_plot","bd0103",9) TriggerActivation("TranBD0100a",TRUE) TriggerActivation("TranBD0100b",TRUE) TriggerActivation("imoeninfo1",TRUE) AddMapNoteColor([505.225],64543,GREEN) AddMapNoteColor([1275.760],64543,GREEN)~GOTO 1
END

I_C_T BDLiia 1 BDImoenSanHurt
==CVSandrJ IF~InParty("CVSandr")~THEN@145
==BDLiia IF~InParty("CVSandr")~THEN@146
==CVSandrJ IF~InParty("CVSandr")~THEN@147END

EXTEND_BOTTOM BDeltan 4
IF~InParty("CVSandr")~THEN REPLY@148EXTERN CVSandrJ BDeltantalk
END

CHAIN
IF~~THEN CVSandrJ BDeltantalk
@149
==BDEltan@150
==CVSandrJ@151
==BDEltan@152EXTERN BDEltan 1

ADD_TRANS_ACTION BDMadele BEGIN 7 END BEGIN 0 END ~SetGlobal("SanMadele","Global",1)~

I_C_T BDKhalid 36 SanSodHarpHere
==CVSandrJ IF~InParty("CVSandr") CheckStatLT(Player1,15,INT)CheckStatLT(Player1,14,WIS) !Class(Player1,BARD_ALL)~THEN@153
==BDKhalid IF~InParty("CVSandr") CheckStatLT(Player1,15,INT)CheckStatLT(Player1,14,WIS) !Class(Player1,BARD_ALL)~THEN@154
==BDKhalid IF~InParty("CVSandr") CheckStatLT(Player1,15,INT)CheckStatLT(Player1,14,WIS) !Class(Player1,BARD_ALL)~THEN@155
==CVSandrJ IF~InParty("CVSandr") CheckStatLT(Player1,15,INT)CheckStatLT(Player1,14,WIS) !Class(Player1,BARD_ALL)~THEN@156
==BDKhalid IF~InParty("CVSandr") CheckStatLT(Player1,15,INT)CheckStatLT(Player1,14,WIS) !Class(Player1,BARD_ALL)~THEN@157
END

EXTEND_BOTTOM BDDOsia 6
IF~InParty("CVSandr")Global("SanHelpIlm","bd3000",0)~THEN REPLY@158EXTERN CVSandrJ Ilmheal1
END

EXTEND_BOTTOM BDDOsia 8
IF~InParty("CVSandr")Global("SanHelpIlm","bd3000",0)~THEN REPLY@158EXTERN CVSandrJ Ilmheal1
END

CHAIN
IF~~THEN CVSandrJ Ilmheal1
@159
DO~SetGlobal("SanHelpIlm","bd3000",1) ClearAllActions() Wait(1) StartCutSceneMode() StartCutScene("SanIlmH1") ~EXIT

CHAIN
IF~Global("SanHelpIlm","bd3000",2)~THEN CVSandrJ Ilmheal2
@160
=@161
==BDDOsia@162DO~SetGlobal("bd_sdd302_uncommon_cold","global",2) SetGlobal("bd_sdd302_blackthorn","global",1) SetGlobal("SanHelpIlm","bd3000",3) AddJournalEntry(@968,QUEST) ~EXIT

I_C_T BDNuber 2 SanNubSod
==CVSandrJ IF~InParty("CVSandr") Global("BD_Skie_Plot","Global",1)~THEN@163
==BDNuber IF~InParty("CVSandr") Global("BD_Skie_Plot","Global",1)~THEN@164END

I_C_T BDCaelar 39 SanBdInfiltrate
==CVSandrJ IF~InParty("CVSandr")~THEN@165
= @166
==BDDelanc @167
==CVSandrJ IF~InParty("CVSandr")~THEN@168
=@169
==BDDelanc IF~InParty("CVSandr")~THEN@170
END

I_C_T BDImoen 92 SanBDImoReunite
==BDImoen IF~InParty("CVSandr")~THEN@171
==Pellig IF~InMyArea("Pellig")~THEN@172
==CVSandrJ IF~InParty("CVSandr")~THEN@173
==BDImoen IF~InParty("CVSandr")~THEN@174
==CVSandrJ IF~InParty("CVSandr")~THEN@175END

I_C_T BDFenste 0 SanFenstAssure
==CVSandrJ IF~InParty("CVSandr")~THEN@176
==CVSandrJ IF~InParty("CVSandr")~THEN@177END

EXTEND_BOTTOM BDSafanJ 141
IF~InParty("CVSandr")~THEN REPLY@178GOTO SafSan1
END

APPEND BDSafanJ
IF~~THEN BEGIN SafSan1
SAY@179
IF~~THEN REPLY@180GOTO 142
IF~~THEN REPLY@181GOTO 157
END
END

I_C_T BDSkie 63 SanSkieSoDBhaal
==CVSandrJ IF~InParty("CVSandr")~THEN@182
==BDSkie IF~InParty("CVSandr")~THEN@183
==CVSandrJ IF~InParty("CVSandr")~THEN@184
==BDSkie IF~InParty("CVSandr")~THEN@185
==BDSkie IF~InParty("CVSandr")~THEN@186END

I_C_T BDMadele 7 SanDaggMothSoD
==CVSandrJ IF~InParty("CVSandr") GlobalGT("CVGodag","GLOBAL",5)~THEN@187
==BDMadele IF~InParty("CVSandr") GlobalGT("CVGodag","GLOBAL",5)~THEN@188
==CVSandrJ IF~InParty("CVSandr") GlobalGT("CVGodag","GLOBAL",5)~THEN@189END

I_C_T BDWoris 8 SanElfGhostSoD
==CVSandrJ IF~InParty("CVSandr") Global("SanElfGhost","Global",1) ~THEN@190
==BDWoris IF~InParty("CVSandr") Global("SanElfGhost","Global",1) ~THEN@191
==CVSandrJ IF~InParty("CVSandr") Global("SanElfGhost","Global",1) ~THEN@192
==BDWoris IF~InParty("CVSandr") Global("SanElfGhost","Global",1) ~THEN@193
==CVSandrJ IF~InParty("CVSandr") Global("SanElfGhost","Global",1) ~THEN@194END

EXTEND_BOTTOM BDKava 0
IF~InParty("CVSandr") PartyHasItem("Misc97")Global("BD_SDD225","GLOBAL",2)~THEN REPLY@195DO~TakePartyItem("Misc97")~GOTO 11
END