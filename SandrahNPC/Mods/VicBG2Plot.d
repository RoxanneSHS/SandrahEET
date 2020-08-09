BEGIN CVVicsis

CHAIN
IF~Global("SanVicArrst","GLOBAL",1)~THEN CVSafgua VicHold1
@0
DO~SetGlobal("SanVicArrst","GLOBAL",2)~
==Viconij@1
==CVSafgua@2
==CVSandrJ@3
==CVSafgua@4
==CVSandrJ@5
==CVSafgua@6
==Viconij@7
==CVSafgua@8
==Viconij@9
==CVSafgua@10
==CVSandrJ@11
==CVSafgua@12
END
++@13+ VicHold2
++@14+ VicHold2
IF~Global("SanRomPath","GLOBAL",1)~THEN REPLY@15 + VicHold2
++@16+ VicHold2

CHAIN
IF~~THEN CVSafgua VicHold2
@17
=@18
==CVSandrJ@19
==CVSafgua@20
END
++@21+ VicHold3
++@22+ VicHold3
++@23+ VicHold3

CHAIN
IF~~THEN CVSafgua VicHold3
@24
DO~ClearAllActions() SmallWait(6) StartCutSceneMode() StartCutScene("CVViCArr")~EXIT

CHAIN
IF WEIGHT #-9~OR(2)Global("SanVicArrst","GLOBAL",3) Global("SanVicArrst","GLOBAL",6)~THEN Viconi GetmeOut1
@25
DO~ChangeAIScript("",DEFAULT)~
==CVSandrJ@26
==Viconi@27
==CVSandrJ@28
==CVSandrJ @29
END
IF~~THEN REPLY@30DO~ApplySpellRES("BGSLEEP","Viconia") ~EXIT
IF~~THEN REPLY@31DO~ApplySpellRES("BGSLEEP","Viconia") ~EXIT
IF~~THEN REPLY@32DO~ApplySpellRES("BGSLEEP","Viconia") ~EXIT

CHAIN
IF WEIGHT #-9~Global("SanVicArrst","GLOBAL",4)~THEN Viconi GetmeOut2
@25
DO~ChangeAIScript("",DEFAULT)~
==CVSandrJ@26
==Viconi@27
==CVSandrJ @33
==Viconi @34
==CVSandrJ @35DO~SetGlobal("WeaponUse","GLOBAL",2) ~
END
IF~~THEN REPLY@30DO~ApplySpellRES("BGSLEEP","Viconia") ~EXIT
IF~~THEN REPLY@31DO~ApplySpellRES("BGSLEEP","Viconia") ~EXIT
IF~~THEN REPLY@32DO~ApplySpellRES("BGSLEEP","Viconia") ~EXIT

CHAIN
IF WEIGHT #-9~Global("SanVicArrst","GLOBAL",5)~THEN Viconi GetmeOut1
@25
DO~ChangeAIScript("",DEFAULT)~
==CVSandrJ@26
==Viconi@27
==CVSandrJ IF~Global("WeaponUse","GLOBAL",1)~THEN@33
==Viconi IF~Global("WeaponUse","GLOBAL",1)~THEN@34
==CVSandrJ IF~Global("WeaponUse","GLOBAL",1)~THEN@35DO~SetGlobal("WeaponUse","GLOBAL",2) ~
==CVSandrJ IF~Global("Drowseen","GLOBAL",1)~THEN@36
==Viconi IF~Global("Drowseen","GLOBAL",1)~THEN@37
==CVSandrJ IF~Global("Drowseen","GLOBAL",1)~THEN@38
==Viconi IF~Global("Drowseen","GLOBAL",1)~THEN@39
==CVSandrJ IF~Global("Drowseen","GLOBAL",1)~THEN@40
==Viconi IF~Global("Drowseen","GLOBAL",1)~THEN@41
==CVSandrJ IF~Global("Drowseen","GLOBAL",1)~THEN@42
==Viconi IF~Global("Drowseen","GLOBAL",1)~THEN@43
=@44DO~SetGlobal("Drowseen","GLOBAL",2) ~
==CVSandrJ @29
END
++@45+ VicSis

CHAIN
IF~~THEN Viconi  VicSis
@46
DO~SetGlobal("SanVicArrst","GLOBAL",6) ApplySpellRES("BGSLEEP","Viconia") ~EXIT

CHAIN
IF WEIGHT #-9~Global("SanVicArrst","GLOBAL",8)~THEN Viconi GetOut1
@47
DO~SetGlobal("SanVicArrst","GLOBAL",9) ~
==CVSandrJ@48
=@49
==Viconi@50DO~JoinParty()~
END
++@51EXIT
++@52EXIT

CHAIN
IF WEIGHT #-4~Global("SanVicArrst","GLOBAL",3) ~THEN  Corgeig VicHint1
@53
DO~SetGlobal("SanVicArrst","GLOBAL",4) SetGlobal("WeaponUse","GLOBAL",1) ~
==CVSandrJ@54
=@55
==Corgeig@56
END
++@57+ VicHint2
++@14+ VicHint2
IF~Global("SanRomPath","GLOBAL",1)~THEN REPLY@15 + VicHint2
++@58+ VicHint2

CHAIN
IF ~~THEN  Corgeig VicHint2
@59
==CVSandrJ@60
==Corgeig@61
=@62
==CVSandrJ@63
==Corgeig@64
==CVSandrJ@65
==Corgeig@66
==CVSandrJ@67
==Corgeig@68
==CVSandrJ@69
==Corgeig@70
==CVSandrJ@71
==Corgeig@72
END
++@73EXIT
++@74EXIT

CHAIN
IF WEIGHT #-4~OR(3) Global("SanVicArrst","GLOBAL",5) Global("SanVicArrst","GLOBAL",6) Global("SanVicArrst","GLOBAL",7) Global("Corgwait","LOCALS",0)~THEN  Corgeig VicDrw1
@75
DO~SetGlobal("Corgwait","LOCALS",1)~
==CVSandrJ@76
==Corgeig@77
==CVSandrJ@78
==Corgeig@79
==CVSandrJ@80
END
IF~Global("Drowseen","GLOBAL",2)~THEN REPLY@81GOTO VicDrw2
IF~GlobalLT("SanVicArrst","GLOBAL",7)~THEN REPLY@82GOTO VicDrw2

CHAIN
IF~~THEN Corgeig VicDrw2
@83
END
++@84EXIT
IF~PartyHasItem("CVVICSis")~THEN REPLY@85GOTO VicDrw3

CHAIN
IF WEIGHT #-4~Global("SanVicArrst","GLOBAL",7) Global("Corgwait","LOCALS",1)~THEN Corgeig VicDrw3
@86
DO~SetGlobal("SanVicArrst","GLOBAL",8)~
==CVSandrJ@87
==Corgeig@88
==CVSandrJ@89
=@90
==Corgeig@91
DO~TakePartyItem("CVVicsis") AddexperienceParty(17500)~
==Corgeig@92
END
++@93EXIT
++@94EXIT

CHAIN
IF WEIGHT #-3~Global("SanVicArrst","GLOBAL",4) ~THEN  Hapip VicHint3
@95
DO~SetGlobal("SanVicArrst","GLOBAL",5) SetGlobal("Drowseen","GLOBAL",1) ~
==CVSandrJ@96
==Hapip@97
==CVSandrJ@98
==Hapip@99
==CVSandrJ@100
==Hapip@101
==CVSandrJ@102
==Hapip@103
==CVSandrJ@104
==Hapip@105
==CVSandrJ@106
==Hapip@107
==CVSandrJ@108
END
++@109EXTERN CVSandrJ VicHint4
++@110EXTERN CVSandrJ VicHint4

CHAIN
IF~~THEN CVSandrJ VicHint4
@111
END
++@112EXIT
++@113EXIT

CHAIN
IF~OR(2) Global("SanSeesDrow","ar0801",1) Global("SanSeesDrow","ar0808",1)~THEN CVSandrJ VicSisHelp1
@114
DO~SetGlobal("SanSeesDrow","ar0801",2) SetGlobal("SanSeesDrow","ar0808",2)~
END
++@115+ VicSisHelp2

CHAIN
IF~~THEN CVSandrJ VicSisHelp2
@116EXIT

CHAIN
IF~Global("CVVICSp","ar0804",1)~THEN CVVicsis Found
@117
DO~SetGlobal("CVVICSp","ar0804",2)~
==CVSandrJ@118
==CVVicsis@119
=@120
==CVSandrJ@121
==CVVicsis@122
==CVSandrJ@123
==CVVicsis@124
DO~Enemy() ActionOverride("Sppain",Enemy())~EXIT

CHAIN
IF WEIGHT #-13~Global("SanVicArrst","GLOBAL",10)~THEN BViconi Freatl
@125
DO~SetGlobal("SanVicArrst","GLOBAL",11) ReallyForceSpellRES("SanHamCL",Myself)~
==BSandr@126
==BViconi@127EXIT