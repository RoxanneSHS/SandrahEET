BEGIN CVShar1

CHAIN
IF~AreaCheck("oh3020")~THEN CVshar1 MettMys
~A journey into the darkness, my little one? Have you gone astray?~
==CVSandrJ~We would not see the light if there were no darkness.~
==CVshar1~One cannot be without the other, you learn fast.~
==CVSandrJ~It does not mean both can be at the same time and same place together.~
==CVshar1~We will see about that - just like we will see each other again, I am sure.~DO ~ReallyForceSpell(Myself,DRYAD_TELEPORT)~EXIT

ADD_TRANS_ACTION Ogrelead BEGIN 0 END BEGIN 0 END ~ GiveItemCreate("CVOGscr",Myself,0,0,0) Wait(1) Enemy()~

CHAIN
IF~Global("SanTalSeek","ar0204",1)~THEN CVTalop1 ArchSeek
~A little seeker and a disturber of the peace.~
DO~SetGlobal("SanTalSeek","ar0204",2)~
==CVSandrJ~Disturber of peace? Is that not the description you would apply to yourself and your friends?~
=~However, calling me a seeker in this place may be the indication that what I seek may be very close.~
==CVTalop1~If you seek annihilation you have come to the right place, my dear.~DO~Enemy()~EXIT



