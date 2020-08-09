BEGIN CVJenPad

CHAIN
IF~Global("JenPad","Dsc035",1)~THEN CVJenPad Disco1
@0
DO~SetGlobal("JenPad","Dsc035",2)~
==CVJenliJ@1
==CVJenPad@2
END
++@3EXIT

CHAIN
IF~Global("JenPad","Dsc035",3)~THEN CVJenPad Disco2
@4
DO~SetGlobal("JenPad","Dsc035",4)~
==CVJenliJ@5
==CVJenPad@6
==CVJenliJ@7
==CVJenPad@8DO~ReallyForceSpell(Myself,DRYAD_TELEPORT)~EXIT

CHAIN
IF ~Global("JenPad","Dsc035",4)~THEN CVSandrJ Disco3
@9
DO~SetGlobal("JenPad","Dsc035",5)~
==CVJenliJ@10
==CVSandrJ@11
==CVJenliJ@12EXIT

