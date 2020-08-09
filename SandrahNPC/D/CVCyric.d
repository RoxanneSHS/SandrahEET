BEGIN CVCyr01

CHAIN
IF~AreaCheck("bd7230") Global("CyricVis","bd7230",1)~THEN CVCyr01 AftSare1s
@0
DO~SetGlobal("CyricVis","bd7230",2)~
=@1
=@2
==CVSandrJ@3
==CVCyr01@4
==CVSandrJ@5
==CVCyr01@6
END
++@7+ AftSare2
++@8+ AftSare2
++@9+ AftSare2

CHAIN
IF~AreaCheck("BG0153") Global("CyricVis","BG0153",1)~THEN CVCyr01 AftSare1
@10
DO~SetGlobal("CyricVis","BG0153",2)~
==CVSandrJ@3
==CVCyr01@4
==CVSandrJ@5
==CVCyr01@6
END
++@7+ AftSare2
++@8+ AftSare2
++@9+ AftSare2

CHAIN
IF~~THEN CVCyr01 AftSare2
@11DO~ReallyForceSpell(Myself,DRYAD_TELEPORT) ~EXIT

CHAIN
IF ~AreaCheck("ar0304") Global("CyrDisg","ar0304",1)~THEN CVCyr01 DisgVis1
@12
==CVSandrJ@13
==CVCyr01@14
==CVSandrJ@15
==CVCyr01@16
==CVSandrJ@17
==CVCyr01@18
=@19
==CVSandrJ@20
==CVCyr01@21DO~SetGlobal("CyrDisg","ar0304",2) ReallyForceSpell(Myself,DRYAD_TELEPORT) ~EXIT

CHAIN
IF~AreaCheck("ar0400") Global("SanCyricAng","ar0400",2)~THEN CVCyr01 WhoDone
@22
==CVSandrJ@23
==CVCyr01@14
==CVSandrJ@24
==CVCyr01@25
==CVSandrJ@26
==CVCyr01@27
=@28
==CVSandrJ@29
==CVCyr01@30DO~SetGlobal("SanCyricAng","ar0400",3) ReallyForceSpell(Myself,DRYAD_TELEPORT) ~EXIT