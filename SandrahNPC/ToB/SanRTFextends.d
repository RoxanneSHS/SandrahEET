CHAIN
IF~Global("SanBeginRtF","GLOBAL",2)~THEN Pellig StartRtFQ1
@0
DO~SetGlobal("SanBeginRtF","GLOBAL",3)~
==CVSAN25J@1
==Solar@2
==Pellig@3
END
++@4+ StartRtFQ2

CHAIN
IF~~THEN Pellig StartRtFQ2
@5
==Solar@6
==Pellig@7
==CVSAN25J@8
==Pellig@9
==CVSAN25J@10
==Solar@11
==CVSAN25J@12
==Pellig@13
==CVSAN25J@14
==Pellig@15
==CVSAN25J@16
END
++@17EXTERN Solar StartRtFQS3
++@18+ StartRtFQ3

CHAIN
IF~~THEN Pellig StartRtFQ3
@19
==CVSAN25J@20
==Solar@21DO~ReallyForceSpell(Myself,DRYAD_TELEPORT)~
==Pellig@22DO~Polymorph(GREATCAT_PANTHER)~EXIT

CHAIN
IF~~THEN Solar StartRtFQS3
@23
==CVSAN25J@20
==Solar@21DO~ReallyForceSpell(Myself,DRYAD_TELEPORT)~
==Pellig@22DO~Polymorph(GREATCAT_PANTHER)~EXIT

APPEND Solar
IF WEIGHT #-3 ~Global("SanRaiseMys","GLOBAL",9)~THEN BEGIN NotYet
SAY@24
IF~~THEN DO~SetGlobal("SanTravel","GLOBAL",0)
SetGlobal("SanRaiseMys","GLOBAL",10)
StartCutSceneMode()
StartCutScene("CVcut300")~EXIT
END
END