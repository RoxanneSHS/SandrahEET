APPEND CVSandrJ

IF ~Global("SanFlirt","GLOBAL",1)~THEN BEGIN SanFlr10
SAY @0
IF ~~THEN REPLY@1DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanFlr11
IF ~~THEN REPLY@2DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanFlr12
IF ~OR(2) AreaType(DUNGEON) AreaType(OUTDOOR) ~THEN REPLY@3GOTO SanFlr13
END

IF ~~THEN BEGIN SanFlr11
SAY @4
IF ~~THEN REPLY @5GOTO SanFlr13
IF ~~THEN REPLY @6GOTO SanFlr14
END

IF ~~THEN BEGIN SanFlr12
SAY @7
IF ~~THEN REPLY @1GOTO SanFlr11
IF ~~THEN REPLY @8GOTO SanFlr14
END

IF ~~THEN BEGIN SanFlr13
SAY @9
IF~~THEN REPLY @10DO ~SetGlobal("SanFlirt","GLOBAL",2) RealSetGlobalTimer("SanFlirTi","GLOBAL",7200)~EXIT
END

IF ~~THEN BEGIN SanFlr14
SAY @11
IF ~~THEN REPLY @12DO ~SetGlobal("SanFlirt","GLOBAL",2) RealSetGlobalTimer("SanFlirTi","GLOBAL",7200)~EXIT
IF~~THEN REPLY @13DO ~SetGlobal("SanFlirt","GLOBAL",2) RealSetGlobalTimer("SanFlirTi","GLOBAL",7200)~EXIT
END

IF ~Global("SanFlirt","GLOBAL",3)~THEN BEGIN SanFlr20
SAY @14
IF~~THEN REPLY @15DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanFlr21
IF~~THEN REPLY @16GOTO SanFlr21
END

IF ~~THEN BEGIN SanFlr21
SAY @17 
IF ~~THEN REPLY @18GOTO SanFlr22
IF ~~THEN REPLY @19DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~GOTO SanFlr23
END

IF ~~THEN BEGIN SanFlr22
SAY @20
IF ~Global("SanRomPath","GLOBAL",1)~THEN REPLY @21DO~SetGlobal("SanFlirt","GLOBAL",4) RealSetGlobalTimer("SanFlirTi","GLOBAL",7200)~EXIT
IF ~Global("SanRomPath","GLOBAL",2)~THEN REPLY @22DO~SetGlobal("SanFlirt","GLOBAL",4) RealSetGlobalTimer("SanFlirTi","GLOBAL",7200)~EXIT
IF ~Global("SanRomPath","GLOBAL",1)~THEN REPLY @22DO~SetGlobal("SanFlirt","GLOBAL",4) RealSetGlobalTimer("SanFlirTi","GLOBAL",7200)~EXIT
IF~~THEN REPLY @23GOTO SanFlr23
END

IF ~~THEN BEGIN SanFlr23
SAY @24
IF ~~THEN DO ~SetGlobal("SanFlirt","GLOBAL",4) ApplySpellRES("CVChaRed",Player1) RealSetGlobalTimer("SanFlirTi","GLOBAL",7200)~EXIT
END

IF ~Global("SanFlirt","GLOBAL",5)~THEN BEGIN SanFlr30
SAY @25
IF~~THEN REPLY @26DO ~SetGlobal("SanFlirt","GLOBAL",6) RealSetGlobalTimer("SanFlirTi","GLOBAL",7200)~GOTO SanFlr31
END

IF ~~THEN BEGIN SanFlr31
SAY @27
IF~~THEN REPLY @28GOTO SanFlr32
IF~~THEN REPLY @29EXIT
END

IF ~~THEN BEGIN SanFlr32
SAY @30
IF~~THEN REPLY @31GOTO SanFlr33
IF~~THEN REPLY @32GOTO SanFlr34
END

IF ~~THEN BEGIN SanFlr33
SAY @33
=@34
IF~~THEN REPLY @35EXIT
END

IF ~~THEN BEGIN SanFlr34
SAY @34
IF~~THEN REPLY @36EXIT
END

IF ~Global("SanFlirt","GLOBAL",7)~THEN BEGIN SanFlr40
SAY @37
IF~~THEN REPLY @38DO ~SetGlobal("SanFlirt","GLOBAL",8)RealSetGlobalTimer("SanFlirTi","GLOBAL",7200)~GOTO SanFlr41
END

IF ~~THEN BEGIN SanFlr41
SAY @39
IF~~THEN REPLY @40 GOTO SanFlr42
END

IF ~~THEN BEGIN SanFlr42
SAY @41
IF ~~THEN REPLY@42 GOTO SanFlr43
IF ~~THEN REPLY@43GOTO SanFlr43
END

IF ~~THEN BEGIN SanFlr43
SAY @44
IF ~~THEN REPLY@45GOTO SanFlr44
END

IF ~~THEN BEGIN SanFlr44
SAY @46
IF ~~THEN REPLY@47GOTO SanFlr45
END

IF ~~THEN BEGIN SanFlr45
SAY @48
IF ~~THEN REPLY@49DO~IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
IF~~THEN REPLY @50EXIT
END

IF ~Global("SanFlirt","GLOBAL",9)~THEN BEGIN SanFlr50
SAY @51
IF~~THEN REPLY @52DO ~SetGlobal("SanFlirt","GLOBAL",10)RealSetGlobalTimer("SanFlirTi","GLOBAL",7200)~GOTO SanFlr51
IF~~THEN REPLY @53DO ~SetGlobal("SanFlirt","GLOBAL",10)RealSetGlobalTimer("SanFlirTi","GLOBAL",7200)~GOTO SanFlr51
END

IF ~~THEN BEGIN SanFlr51
SAY @54
IF ~~THEN REPLY @55GOTO SanFlr54
IF~~THEN REPLY @56GOTO SanFlr52
IF~~THEN REPLY @57EXIT
END

IF ~~THEN BEGIN SanFlr52
SAY @58
IF ~~THEN REPLY @59GOTO SanFlr53
END

IF ~~THEN BEGIN SanFlr53
SAY @60
IF ~~THEN REPLY @61EXIT
IF ~~THEN REPLY @62EXIT
END

IF ~~THEN BEGIN SanFlr54
SAY @63
IF ~~THEN REPLY @64 GOTO SanFlr55
IF ~~THEN REPLY @65GOTO SanFlr56
END

IF ~~THEN BEGIN SanFlr55
SAY @66
IF~~THEN DO~IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
END

IF ~~THEN BEGIN SanFlr56
SAY @67
IF~~THEN REPLY@68EXIT
IF~~THEN REPLY@69DO~IncrementGlobal("Sanpoints","GLOBAL",2)~EXIT
IF~~THEN REPLY@70DO~IncrementGlobal("Sanpoints","GLOBAL",-2)~EXIT
END


IF ~Global("SanFlirt","GLOBAL",11)~THEN BEGIN SanFlr60
SAY @71
IF~~THEN REPLY@72GOTO SanFlr61
IF~~THEN REPLY@73GOTO SanFlr61
IF~~THEN REPLY@74GOTO SanFlr63
IF~~THEN REPLY@75GOTO SanFlr62
END

IF ~~THEN BEGIN SanFlr61
SAY@76
IF~~THEN REPLY@77GOTO SanFlr64
END

IF ~~THEN BEGIN SanFlr62
SAY@78
IF~~THEN REPLY@72GOTO SanFlr61
END

IF ~~THEN BEGIN SanFlr63
SAY@79
IF~~THEN REPLY@80GOTO SanFlr61
END

IF ~~THEN BEGIN SanFlr64
SAY@81
IF~~THEN REPLY@82DO~SetGlobal("SanFlirt","GLOBAL",12) RealSetGlobalTimer("SanFlirTi","GLOBAL",7200)~EXIT
IF~~THEN REPLY@83DO~SetGlobal("SanFlirt","GLOBAL",12) RealSetGlobalTimer("SanFlirTi","GLOBAL",7200)~EXIT
END

IF ~Global("SanFlirt","GLOBAL",13)~THEN BEGIN SanFlr70
SAY @84
IF~~THEN REPLY@85GOTO SanFlr71
IF~~THEN REPLY@86GOTO SanFlr71
END

IF ~~THEN BEGIN SanFlr71
SAY@87
IF~~THEN REPLY@88DO ~SetGlobal("SanFlirt","GLOBAL",14)RealSetGlobalTimer("SanFlirTi","GLOBAL",7200)~GOTO SanFlr72
END

IF ~~THEN BEGIN SanFlr72
SAY@89
=@90
IF~~THEN REPLY@91
GOTO SanFlr73
END

IF ~~THEN BEGIN SanFlr73
SAY@92
IF~!Global("SanRompa","Global",2)~THEN REPLY@93GOTO SanFlr74
IF~Global("SanRompa","Global",2)~THEN REPLY@93GOTO SanFlr74a
END

IF ~~THEN BEGIN SanFlr74
SAY@94
= @95
IF~~THEN DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT
END

IF ~~THEN BEGIN SanFlr74a
SAY@94
IF~~THEN EXIT
END

IF ~Global("SanFlirt","GLOBAL",15)~THEN BEGIN SanFlr80
SAY @96
IF~~THEN REPLY @97DO ~SetGlobal("SanFlirt","GLOBAL",16)RealSetGlobalTimer("SanFlirTi","GLOBAL",7200)~GOTO SanFlr81
IF~~THEN REPLY @98DO ~SetGlobal("SanFlirt","GLOBAL",16)RealSetGlobalTimer("SanFlirTi","GLOBAL",7200)~GOTO SanFlr81
END

IF ~~THEN BEGIN SanFlr81
SAY@99
IF~~THEN REPLY @100GOTO SanFlr82
IF~~THEN REPLY @101GOTO SanFlr82a
END

IF ~~THEN BEGIN SanFlr82
SAY@102
IF~~THEN REPLY @103 GOTO SanFlr83
END

IF ~~THEN BEGIN SanFlr82a
SAY@104
IF~~THEN EXIT
END

IF ~~THEN BEGIN SanFlr83
SAY@105
IF~~THEN REPLY @106GOTO SanFlr84
IF~~THEN REPLY @107GOTO SanFlr84
END

IF ~~THEN BEGIN SanFlr84
SAY@108
IF~~THEN REPLY @109GOTO SanFlr85
IF ~!Global("SanRompa","Global",2)~THEN REPLY @110GOTO SanFlr85
IF ~Global("SanRompa","Global",2)~THEN REPLY @110GOTO SanFlr82a
END

IF ~~THEN BEGIN SanFlr85
SAY@111
IF ~~THEN REPLY @112DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT
END

IF ~Global("SanFlirt","GLOBAL",17)~THEN BEGIN SanFlr90
SAY @113
IF~~THEN REPLY @114DO ~SetGlobal("SanFlirt","GLOBAL",18)RealSetGlobalTimer("SanFlirTi","GLOBAL",7200)~GOTO SanFlr91
END

IF ~~THEN BEGIN  SanFlr91
SAY @115
IF ~~THEN REPLY @116DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanFlr9Gor
IF ~~THEN REPLY @117DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanFlr9Driz
IF ~~THEN REPLY @118DO~IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SanFlr9Self
IF ~~THEN REPLY @119DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~GOTO SanFlr9Demg
END

IF ~~THEN BEGIN SanFlr9Driz
SAY @120
IF ~~THEN REPLY @121GOTO SanFlr9Driz2
END

IF ~~THEN BEGIN SanFlr9Driz2
SAY @122
IF~~THEN EXIT
END

IF ~~THEN BEGIN SanFlr9Gor
SAY @123
IF ~~THEN REPLY @124GOTO SanFlr9Gor2
IF ~~THEN REPLY @125GOTO SanFlr9Gor2
END

IF ~~THEN BEGIN SanFlr9Gor2
SAY @126
IF~~THEN EXIT
END

IF ~~THEN BEGIN SanFlr9Self
SAY @127
IF ~~THEN REPLY @128EXIT
END

IF ~~THEN BEGIN SanFlr9Demg
SAY @129
IF ~~THEN REPLY @130DO~IncrementGlobal("Sanpoints","GLOBAL",-10) ~EXIT
IF ~~THEN REPLY @131EXIT
IF ~~THEN REPLY @132EXIT
IF ~~THEN REPLY @133EXIT
END

IF ~Global("SanFlirt","GLOBAL",19)~THEN BEGIN SanFlr101
SAY @134
IF~Global("SanRomPath","GLOBAL",1)~THEN REPLY @135DO ~SetGlobal("SanFlirt","GLOBAL",20)RealSetGlobalTimer("SanFlirTi","GLOBAL",7200)~GOTO SanFlr102
IF~Global("SanRomPath","GLOBAL",2)~THEN REPLY @135DO ~SetGlobal("SanFlirt","GLOBAL",20)RealSetGlobalTimer("SanFlirTi","GLOBAL",7200)~GOTO SanFlr112
END

IF ~~THEN BEGIN  SanFlr102
SAY @136
IF~~THEN REPLY @137GOTO SanFlr103
IF ~~THEN REPLY @138GOTO SanFlr103
END

IF ~~THEN BEGIN  SanFlr103
SAY @139
IF ~~THEN REPLY @140GOTO SanFlr104
END

IF ~~THEN BEGIN  SanFlr104
SAY @141
IF ~~THEN REPLY @142GOTO SanFlr105
END

IF ~~THEN BEGIN  SanFlr105
SAY @143
IF ~~THEN REPLY @144 GOTO SanFlr106
END

IF ~~THEN BEGIN  SanFlr106
SAY @145
IF ~~THEN REPLY @146EXIT
IF ~~THEN REPLY @147EXIT
END

IF ~~THEN BEGIN  SanFlr112
SAY @136
IF~~THEN REPLY @137GOTO SanFlr113
IF ~~THEN REPLY @148GOTO SanFlr113
END

IF ~~THEN BEGIN  SanFlr113
SAY @139
IF ~~THEN REPLY @140GOTO SanFlr114
END

IF ~~THEN BEGIN  SanFlr114
SAY @141
IF ~~THEN REPLY @142GOTO SanFlr115
END

IF ~~THEN BEGIN  SanFlr115
SAY @143
IF ~~THEN REPLY @149 GOTO SanFlr116
END

IF ~~THEN BEGIN  SanFlr116
SAY @145
IF ~~THEN REPLY @146EXIT
IF ~~THEN REPLY @150EXIT
END

// BG 2
//____________________________________________


IF ~Global("BG2FlirtCity","LOCALS",1) ~THEN BEGIN SanFlirtCity1
SAY @151
IF ~Global("SanRomPath","GLOBAL",1)~THEN GOTO SanFlirtCity2
IF ~Global("SanRomPath","GLOBAL",2)~THEN GOTO SanFlirtCity3
END

IF~~THEN BEGIN SanFlirtCity2
SAY @152
IF~~THEN REPLY @153DO ~SetGlobal("BG2FlirtCity","LOCALS",2)RealSetGlobalTimer("SanFlirTi","GLOBAL",3000) ~EXIT
IF~~THEN REPLY @154DO ~SetGlobal("BG2FlirtCity","LOCALS",2)RealSetGlobalTimer("SanFlirTi","GLOBAL",3000) ~EXIT
END

IF~~THEN BEGIN SanFlirtCity3
SAY @155
IF~~THEN REPLY @153DO ~SetGlobal("BG2FlirtCity","LOCALS",2)RealSetGlobalTimer("SanFlirTi","GLOBAL",3000) ~EXIT
IF~~THEN REPLY @154DO ~SetGlobal("BG2FlirtCity","LOCALS",2)RealSetGlobalTimer("SanFlirTi","GLOBAL",3000) ~EXIT
END

IF ~Global("BG2FlirtDung","LOCALS",1) ~THEN BEGIN SanFlirtDung1
SAY @156
IF~~THEN REPLY @157DO ~SetGlobal("BG2FlirtDung","LOCALS",2)RealSetGlobalTimer("SanFlirTi","GLOBAL",3000) ~EXIT
IF~~THEN REPLY @158DO ~SetGlobal("BG2FlirtDung","LOCALS",2)RealSetGlobalTimer("SanFlirTi","GLOBAL",3000) ~EXIT
END

IF ~Global("BG2FlirtForst","LOCALS",1) ~THEN BEGIN SanFlirtForst1
SAY @159
IF~~THEN REPLY @160DO ~SetGlobal("BG2FlirtForst","LOCALS",2)RealSetGlobalTimer("SanFlirTi","GLOBAL",3000) ~EXIT
IF~~THEN REPLY @161DO ~SetGlobal("BG2FlirtForst","LOCALS",2)RealSetGlobalTimer("SanFlirTi","GLOBAL",3000) ~EXIT
END

IF ~Global("BG2FlirtNite","LOCALS",1) ~THEN BEGIN SanFlirtForst1
SAY @162
IF~~THEN REPLY @163DO ~SetGlobal("BG2FlirtNite","LOCALS",2)RealSetGlobalTimer("SanFlirTi","GLOBAL",3000) ~EXIT
IF~~THEN REPLY @164DO ~SetGlobal("BG2FlirtNite","LOCALS",2)RealSetGlobalTimer("SanFlirTi","GLOBAL",3000) ~EXIT
END

IF ~Global("BG2FlirtHeal","LOCALS",1) ~THEN BEGIN SanFlirtHeal1
SAY @165
IF~~THEN REPLY @166DO ~SetGlobal("BG2FlirtHeal","LOCALS",2)RealSetGlobalTimer("SanFlirTi","GLOBAL",3000) ~GOTO SanFlirtHeal2
IF~~THEN REPLY @167DO ~SetGlobal("BG2FlirtHeal","LOCALS",2)RealSetGlobalTimer("SanFlirTi","GLOBAL",3000) ~EXIT
IF~~THEN REPLY @168DO ~SetGlobal("BG2FlirtHeal","LOCALS",2)RealSetGlobalTimer("SanFlirTi","GLOBAL",3000) ~EXIT
END

IF~~THEN BEGIN SanFlirtHeal2
SAY @169
IF~~THEN REPLY @170EXIT
END

IF~Global("BG2FlirtThet","LOCALS",1)~THEN BEGIN SanFlirtThet1
SAY @171
IF~~THEN REPLY @172DO~SetGlobal("BG2FlirtThet","LOCALS",2)RealSetGlobalTimer("SanFlirTi","GLOBAL",3000)~GOTO SanFlirtThet2
IF~~THEN REPLY @173DO~SetGlobal("BG2FlirtThet","LOCALS",2)RealSetGlobalTimer("SanFlirTi","GLOBAL",3000)~GOTO SanFlirtThet3
IF~~THEN REPLY @174DO~SetGlobal("BG2FlirtThet","LOCALS",2)RealSetGlobalTimer("SanFlirTi","GLOBAL",3000)~EXIT
END

IF~~THEN BEGIN SanFlirtThet2
SAY@175
IF~~THEN REPLY @176 DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~EXIT
END

IF~~THEN BEGIN SanFlirtThet3
SAY@177
IF~~THEN REPLY @178 DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~EXIT
END

//==============================================================================
END