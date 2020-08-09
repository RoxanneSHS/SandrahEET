BEGIN CVTalos
BEGIN CVTalop1

IF~Global("TalosKnow","CVElm6",1)~THEN BEGIN WDLive1
SAY@0
IF~~THEN REPLY@1DO~SetGlobal("TalosKnow","CVElm6",2)~GOTO WDLive2
IF~~THEN REPLY@2DO~SetGlobal("TalosKnow","CVElm6",2)~GOTO WDLive2
END

IF~~THEN BEGIN WDLive2
SAY@3
IF~~THEN DO~Enemy()~EXIT
END

IF~Global("SantalosDec","GLOBAL",6)~THEN BEGIN Visit1
SAY@4
IF~~THEN REPLY@5DO~SetGlobal("SantalosDec","GLOBAL",7)~GOTO Visit2
END

IF~~THEN BEGIN Visit2
SAY@6
IF~~THEN DO~StartCutSceneMode()
StartCutScene("CVcut215") EscapeArea()~EXIT
END

IF~Global("SanNWTalV","GLOBAL",1) ~THEN BEGIN VisitBG1end1
SAY@7
IF~~THEN REPLY@8DO~SetGlobal("SanNWTalV","GLOBAL",2)~GOTO VisitBG1end2
END

IF~~THEN BEGIN VisitBG1end2
SAY@9
IF~~THEN DO~StartCutSceneMode()
StartCutScene("CVcut216") EscapeArea()~EXIT
END

CHAIN
IF~Global("SantalosDec","GLOBAL",8)~THEN CVTalos TalosFirst1
@10
DO~SetGlobal("SantalosDec","GLOBAL",11)~
==CVSandrJ@11
== CVTalos@12
==CVSandrJ@13
== CVTalos@14
=@15
==CVSandrJ@16
== CVTalos@17
==CVSandrJ@18
== CVTalos@19
==CVSandrJ@20
== CVTalos@21
END
++@22+ TalosFirst2
++@23+ TalosFirst2b

CHAIN
IF~~THEN CVTalos TalosFirst2b
@24
END
++@22+ TalosFirst2

CHAIN
IF~~THEN CVTalos TalosFirst2
@25
=@26DO~Enemy() ReallyForceSpell(Myself,CLERIC_SHIELD_OF_THE_ARCHONS) ReallyForceSpell(Myself,CLERIC_IRONSKIN)~EXIT

CHAIN
IF~Global("SantalosRang","GLOBAL",4)~THEN CVTalos TalosRanger1
@27
DO~SetGlobal("SantalosRang","GLOBAL",5)Enemy() ReallyForceSpell(Myself,CLERIC_SHIELD_OF_THE_ARCHONS) ReallyForceSpell(Myself,CLERIC_IRONSKIN)~EXIT

CHAIN
IF~Global("SanBHTalos","GLOBAL",4)AreaCheck("bh2200")~THEN CVTalos AdaSteal
@28
==CVSandrJ@29
==CVTalos@30
==CVSandrJ@31
==CVTalos@32
DO~SetGlobal("SanBHTalos","GLOBAL",5) Enemy() ReallyForceSpell(Myself,CLERIC_SHIELD_OF_THE_ARCHONS) ReallyForceSpell(Myself,CLERIC_IRONSKIN)~EXIT

CHAIN
IF~Global("TalOnIsl","ar90pb",1)~THEN CVTalos TalosMeand
@33
==CVShPri@34
==CVSandrJ@35
== CVTalos@36
==CVSandrJ@37
== CVTalos@38
DO~SetGlobal("TalOnIsl","ar90pb",2)Enemy() ReallyForceSpell(Myself,CLERIC_SHIELD_OF_THE_ARCHONS) ReallyForceSpell(Myself,CLERIC_IRONSKIN) ReallyForceSpellPointRES("SPPR425",[650.340])~EXIT

CHAIN
IF~Global("SanNWTalV","GLOBAL",5)~THEN CVTalos Talossare
@39
==CVSandrJ@40
== CVTalos@41
==CVSandrJ@42
== CVTalos@43
DO~SetGlobal("SanNWTalV","GLOBAL",6) Enemy() ReallyForceSpell(Myself,CLERIC_SHIELD_OF_THE_ARCHONS) ReallyForceSpell(Myself,CLERIC_IRONSKIN)~EXIT

CHAIN
IF~Global("SantalIdl","GLOBAL",1)~THEN CVTalos Idolsteal1
@44
==CVSandrJ@45
== CVTalos@46
==CVSandrJ@47
== CVTalos@48DO~SetGlobal("SantalIdl","GLOBAL",2) ReallyForceSpell(Myself,DRYAD_TELEPORT)~EXIT

CHAIN
IF~Global("SantalosDec","GLOBAL",20)~THEN CVTalos AdaSteal
@49
DO~SetGlobal("SantalosDec","GLOBAL",21)~
==CVSandrJ@50
== CVTalos@51
==CVSandrJ@52
== CVTalos@53
=@54DO~ReallyForceSpell(Myself,DRYAD_TELEPORT)~EXIT



CHAIN
IF~Global("Talosangr","BG1200",2) ~THEN CVTalop1 Waterq1
@55
DO~SetGlobal("Talosangr","BG1200",3) ~
==CVSandrJ@56
==CVTalop1@57
==CVSandrJ@58
==CVTalop1@59DO~Enemy() ~EXIT

CHAIN
IF~Global("Mecorima","ars002",4)~THEN CVTalop1 GiveBack1
@60
DO~SetGlobal("Mecorima","ars002",5) ~
==CVSandrJ@61
==CVTalop1@62
==CVSandrJ@63
==CVTalop1@64
=@65
==CVSandrJ@66
==CVTalop1@67
END
++@68DO~SetGlobal("Mecorima","ars002",5) ~EXIT
++@69DO~SetGlobal("Mecorima","ars002",6) ~EXIT
++@70DO~SetGlobal("Mecorima","ars002",6) ~EXIT
++@71DO~SetGlobal("Mecorima","ars002",5) ~EXIT

CHAIN
IF~Global("SantalosDec","GLOBAL",2)~THEN CVTalop1 IslVis1
@72
DO~SetGlobal("SantalosDec2","ar9pba",1)~
==CVSandrJ@73
==CVTalop1@74
==CVSandrJ@75
==CVTalop1@76
END
++@77+ IslVis2
++@78DO~IncrementGlobal("Sanpoints","GLOBAL",1)~+ IslVis2
++@79+ IslVis2

CHAIN
IF~~THEN CVTalop1 IslVis2
@80
==CVSandrJ@81
==CVTalop1@82
=@83
==CVSandrJ@84
==CVTalop1@85
END
++@86DO~AddXPObject(Player1, 10000) SetGlobal("SantalosDec","GLOBAL",3)~EXIT
++@87DO~SetGlobal("SantalosDec","GLOBAL",10)~EXIT
++@88DO~AddXPObject(Player1, 10000) SetGlobal("SantalosDec","GLOBAL",3)~EXIT
IF~PartyGoldLT(20000)~THEN REPLY@89DO~SetGlobal("SantalosDec","GLOBAL",10)~EXIT

CHAIN
IF~Global("SantalosRang","GLOBAL",1) ~THEN CVTalop1 Ranger1
@90
DO~SetGlobal("SantalosRang","GLOBAL",2) ~
==CVSandrJ@91
==CVTalop1@92
==CVSandrJ@93
=@94
==CVTalop1@95EXIT

CHAIN
IF~Global("SanTalWar","GLOBAL",2)~THEN CVTalos Adakill
@96
DO~SetGlobal("SanTalWar","GLOBAL",3)~
==CVSandrJ@97
==CVTalos@98
==CVSandrJ@99
==CVTalos@100
==CVSandrJ@101
==CVTalos@102
==CVSandrJ@103
==CVTalos@104
==CVTalos IF~DifficultyGT(NORMAL)~THEN@105DO~StartCutSceneMode() Wait(2) ScreenShake([577.451],20) ApplyDamagePercent(Player1,49,CRUSHING) Wait(2) ApplyDamagePercent(Player2,49,CRUSHING) Wait(2) ApplyDamagePercent(Player3,49,CRUSHING) Wait(2) ApplyDamagePercent(Player4,49,CRUSHING) Wait(2) ApplyDamagePercent(Player5,49,CRUSHING) Wait(2) ApplyDamagePercent(Player6,49,CRUSHING) Wait(2) EndCutSceneMode()~
==CVTalos IF~DifficultyLT(HARD)~THEN@105DO~StartCutSceneMode() Wait(2) ScreenShake([577.451],20) ApplyDamagePercent(Player1,70,CRUSHING) Wait(2) ApplyDamagePercent(Player2,70,CRUSHING) Wait(2) ApplyDamagePercent(Player3,70,CRUSHING) Wait(2) ApplyDamagePercent(Player4,70,CRUSHING) Wait(2) ApplyDamagePercent(Player5,70,CRUSHING) Wait(2) ApplyDamagePercent(Player6,70,CRUSHING) Wait(2) EndCutSceneMode()~EXIT

CHAIN
IF~Global("Umberbowl","GLOBAL",3)~THEN CVTalop1 Tenya
@106
DO~SetGlobal("Umberbowl","GLOBAL",4)~
==CVSandrJ@107
==CVTalop1@108
==CVSandrJ@109
==CVTalop1@64
=@65
==CVSandrJ@110
==CVTalop1@67
END
++@111+ Tenya2
++@112+ Tenya3
++@113+ Tenya4

CHAIN
IF~~THEN CVTalop1 Tenya2
@114EXIT

CHAIN
IF~~THEN CVTalop1 Tenya3
@115EXIT

CHAIN
IF~~THEN CVTalop1 Tenya4
@116EXIT