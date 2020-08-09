I_C_T Boanaste 4 SanSoDSkie
==Boanaste IF~InParty("CVSandr")~THEN@0DO ~GiveItemCreate("CVSkiDa",Player1,1,0,0)~
==CVSandrJ IF~InParty("CVSandr")~THEN@1
==Boanaste IF~InParty("CVSandr")~THEN@2
==CVSandrJ IF~InParty("CVSandr")~THEN@3END

CHAIN
IF WEIGHT #-4~Global("SanSodEntrap","Global",1)~THEN BSandr Entrap1
@4
DO~SetGlobal("SanSodEntrap","Global",2)~
END
++@5+ Entrap2
++@6+ Entrap2
++@7+ Entrap2

CHAIN
IF~~THEN BSandr Entrap2
@8
=@9
END
++@10EXIT
++@11EXIT

CHAIN
IF WEIGHT #-4~Global("bd_sandrah_ot","bd4100",1)~THEN CVSandrJ Killskie1
@12
DO~SetGlobal("bd_sandrah_ot","bd4100",2)~
END
++@13+ Killskie2
++@14+ Killskie2

CHAIN
IF~~THEN CVSandrJ Killskie2
@15
=@16EXIT

CHAIN
IF WEIGHT #-4~Global("SanSoDSkie","Global",1)~THEN BSandr Backlive1
@17
DO~SetGlobal("SanSoDSkie","Global",2)~
=@18
END
IF~!Global("SanSodEntrap","Global",2)~THEN REPLY@19+ Backlive2
IF~!Global("SanSodEntrap","Global",2)~THEN REPLY@20 + Backlive2
IF~!Global("SanSodEntrap","Global",2)~THEN REPLY@21+ Backlive2
IF~Global("SanSodEntrap","Global",2)~THEN REPLY@19+ Backlive3
IF~Global("SanSodEntrap","Global",2)~THEN REPLY@20 + Backlive3
IF~Global("SanSodEntrap","Global",2)~THEN REPLY@21+ Backlive3

CHAIN
IF~~THEN BSandr Backlive2
@22
END
++@23EXIT
++@24EXIT

CHAIN
IF~~THEN BSandr Backlive3
@25
=@22
END
++@23EXIT
++@24EXIT

CHAIN
IF WEIGHT #-4~Global("SanSoDSkie","Global",3)~THEN BSandr Backlive7
@26
=@27
DO~SetGlobal("SanSoDSkie","Global",4) ClearAllActions() StartCutSceneMode() Wait(2)StartCutScene("CVSkieR")~EXIT

CHAIN
IF WEIGHT #-4~Global("SanSoDSkie","Global",5)~THEN Skie Backlive8
@28
DO~SetGlobal("SanSoDSkie","Global",6) AddexperienceParty(10500)~
==CVSandrJ@29
==Skie@30
=@31
=@32
=@33
=@34
==CVSandrJ IF~Global("SanRomPath","Global",1)~THEN@35
==CVSandrJ IF~Global("SanRomPath","Global",2)~THEN@36
==Skie@37
==CVSandrJ@38
==Skie@39
==CVSandrJ@40
=@41
==Skie@42DO~EscapeAreaDestroy(55)~
END
++@43EXIT
++@44EXIT

CHAIN
IF~Global("SanSoDSkie","Global",8)~THEN CVSandrJ KillskieF1
@45
DO~SetGlobal("SanSoDSkie","Global",9) SetGlobal("SanSoDSkieB","Global",2)~
END
++@46+ KillskieF2
++@47+ KillskieF2
++@48+ KillskieF2

CHAIN
IF~~THEN CVSandrJ KillskieF2
@49
=@50
END
++@51+ KillskieF3
++@52+ KillskieF3

CHAIN
IF~~THEN CVSandrJ KillskieF3
@53
=@54
=@55
END
++@56+ KillskieF4
++@57+ KillskieF4

CHAIN
IF~~THEN CVSandrJ KillskieF4
@58
=@59
=@60
END
++@61+ KillskieF5
++@62 + KillskieF5

CHAIN
IF~~THEN CVSandrJ KillskieF5
@63
=@64
=@65
=@66
END
++@67EXIT
++@68EXIT
++@69EXIT

CHAIN
IF~Global("SanSoDSkieB","Global",1)~THEN CVSandrJ KillskieF1B
@45
DO~SetGlobal("SanSoDSkieB","Global",2)~
END
++@46+ KillskieF2
++@47+ KillskieF2
++@48+ KillskieF2

CHAIN
IF WEIGHT #-4~Global("SanSoDSkieB","Global",3)~THEN Skie BackHell
@70
DO~SetGlobal("SanSoDSkieB","Global",4)~
==Skie@71
==CVSandrJ@72
==Skie@73
END
++@74+ BackHell2
++@75+ BackHell2
++@76+ BackHell2

CHAIN
IF ~~THEN Skie BackHell2
@77
=@78
==CVSandrJ@79
==Skie@80
==CVSandrJ@81
==Skie@82
=@83DO~ReallyForceSpell(Myself,DRYAD_TELEPORT)~EXIT

CHAIN
IF WEIGHT #-4~Global("SanSoDSkieB","Global",5)~THEN Skie BackYaga
@84
DO~SetGlobal("SanSoDSkieB","Global",6)~
==CVSandrJ@85
==Skie@86
==CVSandrJ@87
==Skie@88
==CVSandrJ@89
==Skie@90
=@91DO~ReallyForceSpell(Myself,DRYAD_TELEPORT)~EXIT