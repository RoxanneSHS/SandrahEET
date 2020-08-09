CHAIN
IF~Global("SanIylos","GLOBAL",1)~THEN BSandr25 IylosMeli1
@0
DO~SetGlobal("SanIylos","GLOBAL",2)~
==BLk#Iyl@1
==BSandr25@2
==BLk#Iyl@3
==BSandr25@4
==BLk#Iyl@5
==BSandr25@6
=@7
==BLk#Iyl@8
==BSandr25@9
==BLk#Iyl@10
==BSandr25@11EXIT

CHAIN
IF~Global("SanIylos","GLOBAL",20)~THEN BSandr25 IylosMeli1L
@0
DO~SetGlobal("SanIylos","GLOBAL",2)~
==BLk#Iyl@1
==BSandr25@12
==BLk#Iyl@3
==BSandr25@4
==BLk#Iyl@5
==BSandr25@13
=@14
==BLk#Iyl@15
==BSandr25@16
==BLk#Iyl@10
==BSandr25@11EXIT

CHAIN
IF~Global("SanIylos","GLOBAL",3)~THEN BSandr25 IylosHeal
@17
DO~SetGlobal("SanIylos","GLOBAL",4)~
==BLk#Iyl@18
==BSandr25@19
==BLk#Iyl IF~Global("SanRompath","GLOBAL",1)~THEN@20
==BLk#Iyl IF~Global("SanRompath","GLOBAL",2)~THEN@21
==BSandr25@22
==BLk#Iyl@23
==BSandr25@24
==BLk#Iyl@25EXIT

CHAIN
IF~Global("SanIylos","GLOBAL",5)~THEN BSandr25 IylosMission1
@26
DO~SetGlobal("SanIylos","GLOBAL",6)SetGlobal("SanSerBha","GLOBAL",4)~
==BLk#Iyl@27
==BSandr25@28
==BLk#Iyl@29
==BSandr25@30
==BLk#Iyl@31
==BSandr25@32
==BLk#Iyl@33
==BSandr25@34
==BLk#Iyl@35
==BSandr25@36
==BLk#Iyl@37
==BSandr25@38
==BLk#Iyl@39
==BSandr25@40
==BLk#Iyl@41
==BSandr25@42
==BLk#Iyl@43DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT

CHAIN
IF~Global("SanIylos","GLOBAL",7)~THEN BSandr25 IylosMission2
@44
DO~SetGlobal("SanIylos","GLOBAL",8)~
==BLk#Iyl@45
==BSandr25@46
==BLk#Iyl@47
==BSandr25@48
==BLk#Iyl@49
=@50
==BSandr25@51
==BLk#Iyl@52
==BSandr25@53
==BLk#Iyl@54EXIT


CHAIN
IF~Global("SanIylos","GLOBAL",9)~THEN BSandr25 IylosBalance1
@55
DO~SetGlobal("SanIylos","GLOBAL",10)~
==BLk#Iyl@56
==BSandr25@57
==BLk#Iyl@58
==BSandr25@59
==BLk#Iyl@60
==BSandr25@61
==BLk#Iyl@62EXIT

CHAIN
IF~Global("SanIylos","GLOBAL",11)~THEN BSandr25 IylosBalance2
@63
DO~SetGlobal("SanIylos","GLOBAL",12)~
==BLk#Iyl@64
==BSandr25@65
==BLk#Iyl@66
==BSandr25@67
==BLk#Iyl@68
==BSandr25@69
==BLk#Iyl@70
==BSandr25@71
==BLk#Iyl@72EXIT

CHAIN
IF~Global("SanIylos","GLOBAL",13)~THEN BSandr25 IylosBalance3
@73
DO~SetGlobal("SanIylos","GLOBAL",14)~
==BLk#Iyl@74
==BSandr25@75
==BLk#Iyl@76DO~RestParty()~EXIT

CHAIN
IF~Global("SanBaltMelis","GLOBAL",2)~THEN BSandr25 IylosMelinflu
@77
DO~SetGlobal("SanBaltMelis","GLOBAL",3)~
==BLk#Iyl@78
==BSandr25@79
==BLk#Iyl@80
==BSandr25@81
==BLk#Iyl@82
==BSandr25@83
==BLk#Iyl@82
==BSandr25@84
==BLk#Iyl@85
==BSandr25@86
==BLk#Iyl@82
==BSandr25@87
==BLk#Iyl@88
==BSandr25@89EXIT

CHAIN
IF~Global("SanBaltInt","GLOBAL",1)~THEN BSandr25 IylosBaltInt
@90
DO~SetGlobal("SanBaltInt","GLOBAL",2)~
==BLk#Iyl@91
==BSandr25@92
END
++@93+ IylosBaltInt2
++@94+ IylosBaltInt2

CHAIN
IF~~THEN BSandr25 IylosBaltInt2
@95
=@96
==BLk#Iyl@97
==BSandr25@98EXIT