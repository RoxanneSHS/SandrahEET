BEGIN CVShar1

CHAIN
IF~AreaCheck("oh3020")~THEN CVshar1 MettMys
@0
==CVSandrJ@1
==CVshar1@2
==CVSandrJ@3
==CVshar1@4DO ~ReallyForceSpell(Myself,DRYAD_TELEPORT)~EXIT

ADD_TRANS_ACTION Ogrelead BEGIN 0 END BEGIN 0 END ~ GiveItemCreate("CVOGscr",Myself,0,0,0) Wait(1) Enemy()~

CHAIN
IF~Global("SanTalSeek","ar0204",1)~THEN CVTalop1 ArchSeek
@5
DO~SetGlobal("SanTalSeek","ar0204",2)~
==CVSandrJ@6
=@7
==CVTalop1@8DO~Enemy()~EXIT



