BEGIN CVShar1

CHAIN
IF~AreaCheck("oh3020")~THEN CVshar1 MettMys
~A journey into the darkness, my little one? Have you gone astray?~
==CVSandrJ~We would not see the light if there were no darkness.~
==CVshar1~One cannot be without the other, you learn fast.~
==CVSandrJ~It does not mean both can be at the same time and same place together.~
==CVshar1~We will see about that - just like we will see each other again, I am sure.~DO ~ReallyForceSpell(Myself,DRYAD_TELEPORT)~EXIT

ADD_TRANS_ACTION Ogrelead BEGIN 0 END BEGIN 0 END ~ GiveItemCreate("CVOGscr",Myself,0,0,0) ~

