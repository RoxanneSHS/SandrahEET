APPEND BSANDR

IF ~Global("SanKivReuBG2","LOCALS",1)~THEN BEGIN SanKivReuBG2t
SAY@0
IF~~THEN REPLY@1DO~SetGlobal("SanKivReuBG2","LOCALS",2)~EXIT
END
END

CHAIN
IF ~Global("SanKivBG1End","GLOBAL",1)~THEN BSANDR SanKivLeaveShil
@2
DO~SetGlobal("SanKivBG1End","GLOBAL",2)~
==BKIVAN @3
==BSANDR @4
==BKIVAN @5
==BSANDR @6
==BKIVAN @7
==BSANDR @8
==BKIVAN @9DO ~LeaveParty() EscapeArea()~
END
++ @10EXIT



CHAIN
IF ~Global("PKivshil","GLOBAL",1) ~THEN BSANDR PSanKiv1
@11
DO ~SetGlobal("PKivshil","GLOBAL",2) SetGlobal("Kivshil","GLOBAL",2) RealSetGlobalTimer("KivshilT","GLOBAL",1200)~
== BP#KIV @12
== BSANDR @13
== BP#KIV @14
== BSANDR @15
== BP#KIV @16
== BSANDR @17
== BP#KIV @18
= @19
EXIT

CHAIN
IF ~Global("PKivshil","GLOBAL",3) ~THEN BSANDR PSanKiv9
@20
DO ~SetGlobal("PKivshil","GLOBAL",4) SetGlobal("Kivshil","GLOBAL",4)RealSetGlobalTimer("KivshilT","GLOBAL",1200)~
== BP#KIV @21
== BSANDR@22
== BP#KIV @23
== BSANDR@24
== BP#KIV @25
== BSANDR@26
== BP#KIV @27
== BSANDR@28
== BP#KIV @29
== BSANDR@30
== BP#KIV @31
== BSANDR@32
== BP#KIV @33
== BSANDR@34
== BP#KIV @35
== BSANDR@36
== BP#KIV @37
EXIT

CHAIN
IF ~Global("PKivshil","GLOBAL",5) ~THEN BSANDR PSanKiv10
@38
= @39
DO ~SetGlobal("PKivshil","GLOBAL",6) SetGlobal("Kivshil","GLOBAL",6)RealSetGlobalTimer("KivshilT","GLOBAL",1200)~
== BP#KIV @40
== BSANDR@41
== BP#KIV @42
== BSANDR@43
== BP#KIV @44
== BSANDR@45
== BP#KIV @46
== BSANDR@47
== BP#KIV @48
EXIT

CHAIN
IF ~Global("PKivkill","GLOBAL",2) ~THEN BSANDR PSanKiv11
@49
DO ~SetGlobal("PKivkill","GLOBAL",3) SetGlobal("Kivkill","GLOBAL",3)RealSetGlobalTimer("KivshilT","GLOBAL",1200)~
== BP#KIV @50
= @51
== BSANDR@52
== BP#KIV @53
== BSANDR@54
== BP#KIV @55
== BSANDR@56
== BP#KIV @57
== BSANDR@58
== BP#KIV @59
== BSANDR@60
== BP#KIV @61
== BSANDR@62
== BP#KIV @63
EXIT

CHAIN
IF ~Global("PKivkill","GLOBAL",4)~THEN BSANDR PSanKiv12
@64
DO ~SetGlobal("PKivkill","GLOBAL",5) SetGlobal("Kivkill","GLOBAL",5) RealSetGlobalTimer("KivshilT","GLOBAL",1200)~
== BP#KIV @65
== BSANDR@66
== BP#KIV @67
== BSANDR@68
== BP#KIV @69
== BSANDR@70
== BP#KIV @71
== BSANDR@72
== BP#KIV @73
== BSANDR@74
== BP#KIV @75
EXIT

CHAIN
IF ~Global("PKivNakD","GLOBAL",1) ~THEN BSANDR PSanKiv13
@76
DO ~SetGlobal("PKivNakD","GLOBAL",2) SetGlobal("KivNakD","GLOBAL",2)~
== BP#KIV @77
==BSANDR@78
== BP#KIV @79
==BSANDR@80
== BP#KIV @81
==BSANDR@82
== BP#KIV @83
==BSANDR@84
== BP#KIV @85
==BSANDR@86
== BP#KIV @87
EXIT

CHAIN
IF ~Global("PKivshil","GLOBAL",7) ~THEN BSANDR PSanKiv14
@88
DO ~SetGlobal("PKivshil","GLOBAL",8) SetGlobal("Kivshil","GLOBAL",8) RealSetGlobalTimer("KivshilT","GLOBAL",500)~
== BP#KIV @89
==BSANDR@90
== BP#KIV @91
==BSANDR@92
== BP#KIV @93
==BSANDR@94
== BP#KIV @95
==BSANDR@96
== BP#KIV @97
==BSANDR@98
== BP#KIV @99
==BP#KIV@100DO~RestParty()~
EXIT

CHAIN
IF ~Global("PSanKivTaz","GLOBAL",1) ~THEN BSANDR PSanKiv15
@101
DO~SetGlobal("PSanKivTaz","GLOBAL",2) SetGlobal("SanKivTaz","GLOBAL",2) RealSetGlobalTimer("KivshilT","GLOBAL",880)~
== BP#KIV @102
==BSANDR@103
== BP#KIV @104
==BSANDR@105
== BP#KIV @106
==BSANDR@107
== BP#KIV @108
==BSANDR@109
== BP#KIV @110
=@111
==BSANDR@112
== BP#KIV @113 DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF ~Global("PSanKivTaz","GLOBAL",3) ~THEN BSANDR PSanKiv16
@114
DO~SetGlobal("PSanKivTaz","GLOBAL",4) SetGlobal("SanKivTaz","GLOBAL",4) RealSetGlobalTimer("KivshilT","GLOBAL",1200)~
== BP#KIV @115
== BSANDR@116
== BP#KIV @117
== BSANDR@118
== BP#KIV @119
== BSANDR@120
== BP#KIV @121
== BSANDR@122
== BP#KIV @123
== BSANDR@124
== BP#KIV @125
== BSANDR@126
== BP#KIV @127
== BSANDR@128
== BP#KIV @129
== BSANDR@130
== BP#KIV @131
== BSANDR@132
== BP#KIV @133
== BSANDR@134
== BP#KIV @135
== BSANDR@136
EXIT

CHAIN
IF ~Global("P#SpeakUp","GLOBAL",7)~THEN BSANDR PKiv17
@137
DO ~SetGlobal("P#SpeakUp","GLOBAL",8)~
== BP#KIV   @138
== BSANDR @139
== BP#KIV   @140
== BSANDR @141
== BP#KIV   @142
== BSANDR @143
== BP#KIV @144
== BSANDR @145
EXIT

CHAIN
IF ~Global("PSanKevStay","LOCALS",1) ~THEN BSANDR PSanKiv18
@146
DO ~SetGlobal("PSanKevStay","LOCALS",2) SetGlobal("SanKevStay","LOCALS",2)~
== BP#KIV @147
= @148
== BSANDR @149
== BP#KIV @150
== BSANDR @151
== BP#KIV @152
== BSANDR @153
== BP#KIV @154
== BSANDR @155
== BP#KIV @156
=@157
== BSANDR @158
= BP#KIV ~Wonderful, steadfast, caring human girls, beautiful as the snow on the Spine of the World and a blooming apple tree in the gardens of Shilmista.~
== BSANDR @160
EXIT

CHAIN
IF ~Global("PSanKivTaz","GLOBAL",5) ~THEN BSANDR PSanKiv19
@161
DO~SetGlobal("PSanKivTaz","GLOBAL",6) SetGlobal("SanKivTaz","GLOBAL",6) RealSetGlobalTimer("KivshilT","GLOBAL",1200)~
== BP#KIV @162
== BSANDR @163
== BP#KIV @164
== BSANDR @165
== BP#KIV @166
== BSANDR @60
== BP#KIV @167
== BSANDR @168
== BP#KIV @169
EXIT

CHAIN
IF ~Global("PSanKivBtlAh","GLOBAL",1) ~THEN BSANDR PSanKiv20
@170
DO~SetGlobal("SanKivBtlAh","GLOBAL",2) SetGlobal("PSanKivBtlAh","GLOBAL",2) RealSetGlobalTimer("KivshilT","GLOBAL",800)~
== BP#KIV @171
== BSANDR @172
== BP#KIV @173
EXIT

CHAIN
IF ~Global("PSankivRab","LOCALS",1)~THEN BSANDR PSanKiv21
@174
DO ~SetGlobal("SankivRab","LOCALS",2) SetGlobal("PSankivRab","LOCALS",2)~
== BP#KIV @175
== BSANDR @176
== BP#KIV @177
== BSANDR @178
== BP#KIV @179
== BSANDR @180
== BP#KIV @181
END
++ @182
EXIT

CHAIN
IF ~Global("PSankivRab","LOCALS",3)~THEN BSANDR PSanKiv22
@183
DO ~SetGlobal("SankivRab","LOCALS",4) SetGlobal("PSankivRab","LOCALS",4) RealSetGlobalTimer("KivshilT","GLOBAL",1200)~
== BP#KIV  @184
== BSANDR @185
== BP#KIV  @186
== BSANDR @187
== BP#KIV  @188
== BSANDR @189
== BP#KIV  @190
== BSANDR @191
== BP#KIV  @192
== BSANDR @193
== BP#KIV  @194
EXIT

CHAIN
IF ~Global("PSankivRab","LOCALS",5)~THEN BSANDR PSanKiv23
@195
DO ~SetGlobal("SankivRab","LOCALS",6) SetGlobal("PSankivRab","LOCALS",6)RealSetGlobalTimer("KivshilT","GLOBAL",1200)~
== BP#KIV @196
== BSANDR @197
== BP#KIV @198
== BSANDR @199
== BP#KIV @200
== BSANDR @201
== BP#KIV @202
== BSANDR @203
== BP#KIV @204
== BSANDR @205
== BP#KIV @206
== BSANDR @207
== BP#KIV @208
== BSANDR @209
== BP#KIV @210
== BSANDR @211
== BP#KIV @212DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF~Global("SanKivRepl","ar1100",2)~THEN BSANDR PSanKivUmarRepl
@213
DO~SetGlobal("SanKivRepl","ar1100",3)~
== BP#KIV @214
END
++@215+ PSanKivUmarRepl2
++@216+ PSanKivUmarRepl2

CHAIN
IF~~THEN BSANDR PSanKivUmarRepl2
@217
== BP#KIV @218
=@219
== BSANDR @220
== BP#KIV @221
== BSANDR @222
== BP#KIV @223EXIT


// Kivan
INTERJECT_COPY_TRANS P#KIVAN 0 SanKivProm
==  CVSandrJ IF ~InParty("CVSandr") GlobalGT("Kivshil","GLOBAL",1)~THEN @224
== P#KIVAN IF ~InParty("CVSandr") GlobalGT("Kivshil","GLOBAL",1)~THEN @225
END

CHAIN
IF WEIGHT #-4~Global("P#SanSupport","GLOBAL",2)~THEN BP#Deh SanDeher1
@226
DO~IncrementGlobal("P#SanSupport","GLOBAL",1)RealSetGlobalTimer("P#DeherSanTalks","LOCALS",1000)~
==BSandr@227
==BP#Deh@228
==BSandr@229
==BP#Deh@230
==BSandr@231
==BP#Deh@232
==BSandr@60
=@233
==BP#Deh@234
==BSandr@235EXIT

CHAIN
IF WEIGHT #-4~Global("P#SanSupport","GLOBAL",4)~THEN BP#Deh SanDeher2
@236
DO~IncrementGlobal("P#SanSupport","GLOBAL",1)RealSetGlobalTimer("P#DeherSanTalks","LOCALS",1000)~
==BSandr@237
==BP#Deh@238
==BSandr@239EXIT






