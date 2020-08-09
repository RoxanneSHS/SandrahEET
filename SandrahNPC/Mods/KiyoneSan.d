CHAIN
IF WEIGHT #-10~Global("SanHealKiyo","GLOBAL",4) ~THEN ~z#kiyob~SanHeal1
@0
DO~SetGlobal("SanHealKiyo","GLOBAL",5)~
==CVSandrJ@1
==z#Kiyob@2
==CVSandrJ@3EXIT

CHAIN
IF WEIGHT #-11~Global("SanKiyoTalks","GLOBAL",2)~THEN ~z#kiyob~Santalk1
@4
DO~SetGlobal("SanKiyoTalks","GLOBAL",3) RealSetGlobalTimer("SanKiyoti","LOCALS",3400)~
==BSandr@5
=@6
==z#Kiyob@7
==BSandr@8
==z#Kiyob@9
==BSandr@10
==z#Kiyob@11
==BSandr@12
==z#Kiyob@13
==BSandr@14
==z#Kiyob@15EXIT

CHAIN
IF WEIGHT #-12~Global("SanKiyoTalks","GLOBAL",4)~THEN ~z#kiyob~Santalk2
@16
DO~SetGlobal("SanKiyoTalks","GLOBAL",5) RealSetGlobalTimer("SanKiyoti","LOCALS",2400)~
==BSandr@17
==z#Kiyob@18
==BSandr@19
==z#Kiyob@20
==BSandr@21
==z#Kiyob@22
==BSandr@23
==z#Kiyob@24EXIT

CHAIN
IF WEIGHT #-12~Global("SanKiyoTalks","GLOBAL",6)~THEN ~z#kiyob~Santalk3
@25
DO~SetGlobal("SanKiyoTalks","GLOBAL",7) RealSetGlobalTimer("SanKiyoti","LOCALS",3400)~
==BSandr@26
==z#Kiyob@27
==BSandr@28
==z#Kiyob@29
==BSandr@30
==z#Kiyob@31
==BSandr@32
==z#Kiyob@33
==BSandr@34
==z#Kiyob@35EXIT

CHAIN
IF WEIGHT #-12~Global("Riftg03-29","GLOBAL",2)~THEN ~z#kiyob~SantalkAmau
@36
DO~SetGlobal("Riftg03-29","GLOBAL",3)RealSetGlobalTimer("SanKiyoti","LOCALS",1400)~
==BSandr@37
==z#Kiyob@38
==BSandr@39
==z#Kiyob@40
==BSandr@41
==z#Kiyob@42
==BSandr@43
==z#Kiyob@44
==BSandr@45
==z#Kiyob@46
==BSandr@47EXIT

CHAIN
IF WEIGHT #-12~Global("SanKiyoTalks","GLOBAL",8)~THEN ~z#kiyob~SantalkKov1
@48
DO~SetGlobal("SanKiyoTalks","GLOBAL",9) RealSetGlobalTimer("SanKiyoti","LOCALS",3400)~
== Z#Kovab@49
==BSandr@50
=@51
== Z#Kovab@52
==BSandr@53
== Z#Kovab@54
==BSandr@55
== Z#Kovab@56EXIT

CHAIN
IF WEIGHT #-12~Global("SanKiyoTalks","GLOBAL",12)~THEN ~z#kiyob~SantalkKo3
@57
DO~SetGlobal("SanKiyoTalks","GLOBAL",13) RealSetGlobalTimer("SanKiyoti","LOCALS",3400)~
== Z#Kovab@58
==BSandr@59
== Z#Kovab@60
==BSandr@61
== Z#Kovab@62
==BSandr@63
=@64
== Z#Kovab@65
==BSandr@66
== Z#Kovab@67
==BSandr@68EXIT

CHAIN
IF~Global("SanEdPaper","LOCALS",3) ~THEN BSandr MaeKovLetttr
@69
DO~SetGlobal("SanEdPaper","LOCALS",4) ~
==z#Kiyob@70
==BSandr@71
== Z#Kovab@72
==BSandr@73
=@74
=@75
== Z#Kovab@76
==z#Kiyob@77
==BSandr@78
== Z#Kovab@79
==BSandr@80
==z#Kiyob@81
==BSandr@82
=@83
DO~SetGlobal("LOAClue","GLOBAL",1)GiveItemCreate("MaeLOA","Kova",0,0,0)AddexperienceParty(9000)~
== Z#Kovab@84
==z#Kiyob@85EXIT

EXTEND_BOTTOM Suelle2 26
IF~InParty("Kova")
InParty("Kiyone")
Global("Z#Proposal","GLOBAL",3)~THEN REPLY@86GOTO 18
IF~InParty("Ninde")
Global("LK#NindeRomanceActive","GLOBAL",2)~THEN REPLY@86GOTO 18
END

ADD_TRANS_TRIGGER z#kywed 23
~!InParty("CVSandr")~

EXTEND_BOTTOM z#kywed 23
IF~InParty("CVSandr")~THEN DO~SetGlobal("Z#Proposal","GLOBAL",10) 
ActionOverride("Kova",MakeUnselectable(0))
ActionOverride("Kiyone",MakeUnselectable(0))
ActionOverride(Player1,LeaveAreaLUA("AR2812","",[467.264],8))
ActionOverride(Player2,LeaveAreaLUA("AR2812","",[519.262],7))
ActionOverride(Player3,LeaveAreaLUA("AR2812","",[420.274],9))
ActionOverride(Player4,LeaveAreaLUA("AR2812","",[569.275],7))
ActionOverride(Player5,LeaveAreaLUA("AR2812","",[365.290],9))
ActionOverride(Player6,LeaveAreaLUA("AR2812","",[616.295],7))~EXIT
END

CHAIN
IF~Global("Z#Proposal","GLOBAL",10)~THEN BSandr KKLeaveSun
@87
DO~SetGlobal("Z#Proposal","GLOBAL",11)~
== Z#Kovab@88
==z#Kiyob@89
== Z#Kovab@90
==z#Kiyob@91
END
++@92DO~ActionOverride("Kiyone",LeaveParty())
ActionOverride("Kiyone",DestroyItem("KyRing1"))
ActionOverride("Kiyone",GivePartyAllEquipment())
ActionOverride("Kiyone",SetGlobal("KiyoJoined","LOCALS",0))
ActionOverride("Kiyone",EscapeArea())
ActionOverride("Kova",LeaveParty())
ActionOverride("Kova",DestroyItem("KvRing1")) // Kova's Wedding Ring
ActionOverride("Kova",GivePartyAllEquipment())
ActionOverride("Kova",SetGlobal("KovaJoined","LOCALS",0))
ActionOverride("Kova",EscapeArea())~EXIT
++@93EXIT
