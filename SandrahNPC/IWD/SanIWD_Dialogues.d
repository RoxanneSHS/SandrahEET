CHAIN
IF WEIGHT #-3~Global("SanIDW1","Global",1)~THEN CVSandrJ IWD1Start1
@0
DO~SetGlobal("SanIDW1","Global",2)~
END
++@1+ IWD1Start2
++@2+ IWD1Start2

CHAIN
IF~~THEN CVSandrJ IWD1Start2
@3EXIT

CHAIN
IF WEIGHT #-3~Global("SanIDW1","Global",3)~THEN CVSandrJ IWD1Myrku1
@4
DO~SetGlobal("SanIDW1","Global",4)~
=@5
END
++@6DO~IncrementGlobal("Sanpoints","Global",1)~+ IWD1Myrku2
++@7+ IWD1Myrku2

CHAIN
IF ~~THEN CVSandrJ IWD1Myrku2
@8
=@9
END
++@10EXIT
++@11EXIT

CHAIN
IF WEIGHT #-3~Global("SanIDW1","Global",5)~THEN CVSandrJ IWD1Gem1
@12
DO~SetGlobal("SanIDW1","Global",6)~
END
++@13+ IWD1Gem2
++@14+ IWD1Gem2
++@15+ IWD1Gem2

CHAIN
IF ~~THEN CVSandrJ IWD1Gem2
@16
=@17
END
++@18+ IWD1Gem3
++@19+ IWD1Gem3
++@20+ IWD1Gem3

CHAIN
IF ~~THEN CVSandrJ IWD1Gem3
@21
=@22
END
++@23EXIT

CHAIN
IF WEIGHT #-3~Global("SanIDW1","Global",7)~THEN CVSandrJ IWD1yxu1
@24
DO~SetGlobal("SanIDW1","Global",8)~
=@25
END
++@26+ IWD1yxu2
++@27+ IWD1yxu2

CHAIN
IF~~THEN CVSandrJ IWD1yxu2
@28
END
++@29+ IWD1yxu3
++@30+ IWD1yxu3

CHAIN
IF~~THEN CVSandrJ IWD1yxu3
@31EXIT

CHAIN
IF WEIGHT #-3~Global("SanIDW1","Global",9)~THEN CVSandrJ IWD1yxu4
@32
DO~SetGlobal("SanIDW1","Global",10)~
END
++@33+ IWD1yxu5
++@34+ IWD1yxu5
++@35+ IWD1yxu5

CHAIN
IF~~THEN CVSandrJ IWD1yxu5
@36
END
++@37+ IWD1yxu6

CHAIN
IF~~THEN CVSandrJ IWD1yxu6
@38
=@39
END
++@40EXIT
++@41EXIT
++@42EXIT

CHAIN
IF WEIGHT #-3~Global("SanIDW1","Global",11)~THEN CVSandrJ IWD1yxu7
@43
DO~SetGlobal("SanIDW1","Global",12)~
END
++@44+ IWD1yxu8
++@45+ IWD1yxu8

CHAIN
IF~~THEN CVSandrJ IWD1yxu8
@46
END
++@47EXIT

CHAIN
IF WEIGHT #-3~Global("SanIDW1","Global",13)~THEN CVSandrJ IWD1yxu9
@48
DO~SetGlobal("SanIDW1","Global",14)~
END
++@49+ IWD1yxu10
++@50+ IWD1yxu10

CHAIN
IF~~THEN CVSandrJ IWD1yxu10
@51
END
++@52EXIT
++@53+ IWD1yxu11

CHAIN
IF~~THEN CVSandrJ IWD1yxu11
@54EXIT

CHAIN
IF WEIGHT #-3~Global("SanIDW1","Global",15)~THEN CVSandrJ IWD1hand1
@55
DO~SetGlobal("SanIDW1","Global",16)~
END
++@56+ IWD1hand2
++@57+ IWD1hand2
++@58+ IWD1hand2

CHAIN
IF~~THEN CVSandrJ IWD1hand2
@59
=@60
=@61
END
++@62EXIT
++@63EXIT


CHAIN
IF WEIGHT #-3~Global("SanIDW1","Global",17)~THEN CVSandrJ IWD1drw1
@64
DO~SetGlobal("SanIDW1","Global",18)~
END
++@65+ IWD1drw2
++@66+ IWD1drw2

CHAIN
IF~~THEN CVSandrJ IWD1drw2
@67
END
++@68EXIT

CHAIN
IF WEIGHT #-3~Global("SanIWDRWiz","Global",2)~THEN CVSandrJ IWD1popeq1
@69
DO~SetGlobal("SanIWDRWiz","Global",3)~
END
++@70+ IWD1popeq2
++@71+ IWD1popeq2
++@72+ IWD1popeq2

CHAIN
IF~~THEN CVSandrJ IWD1popeq2
@73
END
++@74+ IWD1popeq3

CHAIN
IF~~THEN CVSandrJ IWD1popeq3
@75
=@76EXIT

CHAIN
IF WEIGHT #-3~Global("SanIDW1","Global",19)~THEN CVSandrJ IWD1Mines1
@77
DO~SetGlobal("SanIDW1","Global",20)~
END
++@78+ IWD1Mines2
++@79+ IWD1Mines2

 CHAIN
IF~~THEN CVSandrJ IWD1Mines2
@80EXIT

CHAIN
IF WEIGHT #-3~Global("SanIDW1","Global",21)~THEN CVSandrJ IWD1EahRet1
@81
DO~SetGlobal("SanIDW1","Global",22)~
END
++@82+ IWD1EahRet2
++@83+ IWD1EahRet2

CHAIN
IF ~~THEN CVSandrJ IWD1EahRet2
@84
=@85
END
++@86+ IWD1EahRet3

CHAIN
IF ~~THEN CVSandrJ IWD1EahRet3
@87
END
++@88 EXIT
++@89EXIT

//Heart of Winter
//_____________________________________________________________________

CHAIN
IF WEIGHT #-3~Global("IwdHWPlot","LOCALS",1)~THEN CVSandrJ IWDassa1
@90
DO~SetGlobal("IwdHWPlot","LOCALS",2)~
=@91
END
++@92+ IWDassa2
++@93+ IWDassa2

CHAIN
IF ~~THEN CVSandrJ IWDassa2
@94
=@95
END
++@96EXIT
++@97EXIT
++@98EXIT

CHAIN
IF WEIGHT #-3~Global("SanHOWScar","Global",1) ~THEN Scar IWDIron1
@99
DO~SetGlobal("SanHOWScar","Global",2) ~
==CVSandrJ@100
==Scar@101
=@102
==CVSandrJ@103
==Scar@104
==CVSandrJ@105
==Scar@106
==CVSandrJ@107
==Scar@108
==CVSandrJ@109
==Scar@110
=@111
=@112DO~RevealAreaOnMap("id9100")~
END
++ @113+ IWDIron2
++ @114+ IWDIron2
++ @115+ IWDIron2

CHAIN
IF ~~THEN Scar IWDIron2
@116DO~EscapeArea()~EXIT

CHAIN
IF WEIGHT #-3~Global("SanHOWScar","Global",4) InParty("CVSandr") ~THEN Scar IWDRetu1
@117
DO~SetGlobal("SanHOWScar","Global",5) ~
==CVSandrJ@118
==Scar@119
END
++@120+ IWDRetu1
++@121+ IWDRetu1

CHAIN
IF~~THEN Scar IWDRetu2
@122
=@123DO~AddexperienceParty(7000)~EXIT

CHAIN
IF WEIGHT #-3~Global("SanHowPlot","Global",1)~THEN CVSandrJ IWDIronM1
@124
DO~SetGlobal("SanHowPlot","Global",2)~
END
++@125+ IWDIronM2
++@126+ IWDIronM2

CHAIN
IF~~THEN CVSandrJ IWDIronM2
@127
END
++@128EXIT
++@129EXIT

CHAIN
IF WEIGHT #-3~Global("SanIWDIronSearch","Global",3) ~THEN CVSandrJ IWDIronC1
@130
DO~SetGlobal("SanIWDIronSearch","Global",4) ~
=@131
END
++@132+ IWDIronC2
++@133+ IWDIronC2
++@134+ IWDIronC2

CHAIN
IF~~THEN CVSandrJ IWDIronC2
@135
=@136
=@137
END
++@138+ IWDIronC3
++@139+ IWDIronC3

CHAIN
IF~~THEN CVSandrJ IWDIronC3
@140
END
++@141+ IWDIronC4

CHAIN
IF~~THEN CVSandrJ IWDIronC4
@142
END
++@143DO~AddexperienceParty(2000)~EXIT
++@144DO~AddexperienceParty(2000)~EXIT

CHAIN
IF WEIGHT #-4~Global("SanIWDIronSearch","Global",5)~THEN Bruno RetIsl
@145
DO~SetGlobal("SanIWDIronSearch","Global",6)~
==CVSandrJ@146
==Slythe@147
==Krysti@148
==CVSandrJ@149
==Slythe@150DO~EscapeArea()~
==Krysti@151DO~EscapeArea()~
==BRUNO@152DO~EscapeArea()~EXIT

CHAIN 
IF WEIGHT #-4~Global("SanIwdThrone","id9101",1)~THEN Slythe IWDIron3
@153
DO~SetGlobal("SanIwdThrone","id9101",2) SetGlobal("SanHowPlot","Global",3)~
==Krysti@154
==Slythe@155
==Krysti@156
==CVSandrJ@157
==Slythe@158
==Krysti@159DO~
EscapeArea()~
==Slythe@160DO~
EscapeArea()~
==CVSandrJ@161
==Bruno@162
=@163DO~
EscapeArea()~EXIT


//___________________________________________________

CHAIN
IF WEIGHT #-5~Global("SanIWDBrage","Global",1)~THEN Laryss IWDBrag1
@164
DO~SetGlobal("SanIWDBrage","Global",2)~
==CVSandrJ@165
==Laryss@166
==CVSandrJ@167
==Laryss@168
==CVSandrJ@169
==Laryss@170DO~AddJournalEntry(@972,QUEST) EscapeArea()~EXIT

CHAIN
IF WEIGHT #-5~Global("Koveras","id7003",2) ~THEN CVSandrJ IWDKoveras
@171
DO~SetGlobal("Koveras","id7003",3) ~
==Kovera@172
==CVSandrJ@173
==Kovera@174
==CVSandrJ@175
==Kovera@176
==CVSandrJ@177
==Kovera@178DO~EscapeArea()~
==CVSandrJ@179
END
++@180EXIT
++@181EXIT

I_C_T DHroth 10 SanIWDBrage
==DHroth IF~InParty("CVSandr")~THEN@182
==CVSandrJ IF~InParty("CVSandr")~THEN@183
==DHroth IF~InParty("CVSandr")~THEN@184
==CVSandrJ IF~InParty("CVSandr")~THEN@185
==DHroth IF~InParty("CVSandr")~THEN@186
==CVSandrJ IF~InParty("CVSandr")~THEN@187END

INTERJECT DArundel 89  SanIWDOldEnemy
==CVSandrJ IF~InParty("CVsandr")~THEN@188
==Darundel IF~InParty("CVsandr")~THEN@189
END DArundel 90

I_C_T DSaablic 2 SanIWDRWiz
==CVSandrJ IF~InParty("CVsandr")~THEN@190
==DSaablic IF~InParty("CVsandr")~THEN@191
==CVSandrJ IF~InParty("CVsandr")~THEN@192END

EXTEND_BOTTOM DKieran2 1
IF~InParty("CVSandr") Global("SanHowPlot","Global",3) Global("SanAsked","LOCALS",0)~THEN REPLY@193DO~SetGlobal("SanAsked","LOCALS",1) ~GOTO IronT
END

CHAIN
IF~~THEN DKieran2 IronT
@194
==CVSandrJ@195
==DKieran2@196DO~SetGlobal("Know_Assassin","GLOBAL",1)~
==CVSandrJ@197
==DKieran2@198
==CVSandrJ@199
==DKieran2@200
END
IF~~THEN REPLY@201GOTO 1

EXTEND_BOTTOM DBaldemr 8
IF~InParty("CVSandr") Global("SanHowPlot","Global",3) Global("SanAsked","LOCALS",0)~THEN REPLY@202DO~SetGlobal("SanAsked","LOCALS",1) ~GOTO IronTB
END

CHAIN
IF~~THEN DBaldemr IronTB
@203
END
IF~~THEN REPLY@204GOTO 2
IF~~THEN REPLY@205GOTO  IronTB2

CHAIN
IF~~THEN DBaldemr IronTB2
@206
==CVSandrJ@207
==DBaldemr@208
==CVSandrJ@209
=@210
==DBaldemr@211EXIT

EXTEND_BOTTOM DTybald 30
IF~InParty("CVSandr") Global("SanHowPlot","Global",3) Global("SanAsked","LOCALS",0)~THEN REPLY@212DO~SetGlobal("SanAsked","LOCALS",1) ~GOTO IronTT
END

CHAIN
IF~~THEN DTybald IronTT
@213
==CVSandrJ@214
==DTybald@215
END
++@216+ 31

I_C_T DWylf 6 SanIWDIronSearch
==CVSandrJ IF~InParty("CVSandr") Global("SanHOWScar","Global",3)~THEN@217
==DWylf IF~InParty("CVSandr") Global("SanHOWScar","Global",3)~THEN@218
==CVSandrJ IF~InParty("CVSandr") Global("SanHOWScar","Global",3)~THEN@219END

INTERJECT DBaldemr 14 SanIWDIronSearchB
==CVSandrJ IF~InParty("CVSandr") Global("SanHOWScar","Global",3)~THEN@220
==DBaldemr IF~InParty("CVSandr") Global("SanHOWScar","Global",3)~THEN@221
==DBaldemr IF~InParty("CVSandr") Global("SanHOWScar","Global",3)~THEN@222
==DBaldemr IF~InParty("CVSandr") Global("SanHOWScar","Global",3)~THEN@223
==DBaldemr IF~InParty("CVSandr") Global("SanHOWScar","Global",3)~THEN@224
==CVSandrJ IF~InParty("CVSandr") Global("SanHOWScar","Global",3)~THEN@225
==DBaldemr IF~InParty("CVSandr") Global("SanHOWScar","Global",3)~THEN@226
==CVSandrJ IF~InParty("CVSandr") Global("SanHOWScar","Global",3)~THEN@227
END  DBaldemr 20

CHAIN
IF WEIGHT #-7~PartyHasItem("Mirror") GlobalGT("Found_Seer","GLOBAL",0) InParty("CVSandr") Global("SanHOWScar","Global",3) Global("SanIWDIronSearch","Global",7)~THEN Dangaar SanIWDIronSearchF
@228
DO~SetGlobal("SanIWDIronSearch","Global",8)~
==CVSandrJ@229
==Dangaar@230
==CVSandrJ@231
==Dangaar@232
==CVSandrJ@233
==Dangaar@234
==CVSandrJ@235
=@236
==Dangaar@237
END
++@238EXTERN Dangaar 31

I_C_T DPurvis 17 SanIWDIronSearchP
==CVSandrJ IF~InParty("CVSandr") Global("SanHOWScar","Global",3)~THEN@239
==DPurvis IF ~InParty("CVSandr") Global("SanHOWScar","Global",3)~THEN@240
==CVSandrJ IF~InParty("CVSandr") Global("SanHOWScar","Global",3)~THEN@241
==DPurvis IF ~InParty("CVSandr") Global("SanHOWScar","Global",3)~THEN@242
==CVSandrJ IF~InParty("CVSandr") Global("SanHOWScar","Global",3)~THEN@243
==DPurvis IF ~InParty("CVSandr") Global("SanHOWScar","Global",3)~THEN@244
==CVSandrJ IF~InParty("CVSandr") Global("SanHOWScar","Global",3)~THEN@245
==CVSandrJ IF~InParty("CVSandr") Global("SanHOWScar","Global",3)~THEN@246
==DPurvis IF ~InParty("CVSandr") Global("SanHOWScar","Global",3)~THEN@247END

CHAIN
IF WEIGHT #-8 ~Global("End_Portal","GLOBAL",1)~THEN Deverard Orlex
@248
END
++@249EXTERN Deverard 37

I_C_T Dkressel 6 SanKressGhot
==DKressel IF~InParty("CVSandr")~THEN@250
==CVSandrJ IF~InParty("CVSandr")~THEN@251
==DKressel IF~InParty("CVSandr")~THEN@252
==CVSandrJ IF~InParty("CVSandr")~THEN@253
==DKressel IF~InParty("CVSandr")~THEN@254END
