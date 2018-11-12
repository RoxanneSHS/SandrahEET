CHAIN
IF WEIGHT #-3~Global("SanAfterJon","GLOBAL",5)~THEN Bhaal01 AfterJon
~It is time we meet each other, descendent of Mystra.~
DO~SetGlobal("SanAfterJon","GLOBAL",6)~
==BSandr~<CHARNAME> must have taken some of your impression back to Toril when regaining the own soul from Irenicus.~
==Bhaal01~You understand much of the mechanisms that were at work when that mageling created this space in the Abyss from my essence.~
==BSandr~With your assistance he created it, I presume. There must be part of your essence in these Realms still.~
==Bhaal01~It has returned, if you need to know such detail, returned from those minor spawns that have perished in the race for godhood already.~
==BSandr~It will grow with each one who falls...Why do you reveal such to me?~
==Skie IF~Global("SanSoDSkieB","Global",4)~THEN~We grow stronger with every bit of essence, father.~
==Bhaal01~Things begin to shape, the struggle of the spawns has begun.~
==BSandr~The one to end Mystra has failed already its mission...~
==Bhaal01~Instead Mystra unites with one of the major spawns to raise that one in power. First Sarevok, now Irenicus.~
==BSandr~Irenicus was no Bhaalspawn.~
==Bhaal01~No, he wasn't - but the soul <CHARNAME> regained from him contains more of my power than when the mageling took it. The renegade elf's experiments and manipulation added essence of other spawns to it.~
==Skie IF~Global("SanSoDSkieB","Global",4)~THEN~Your priestess and I have started the harvest, father. All will be gathered.~
==Bhaal01~So, Mystra, you help all the time to feed the one who will destroy you. I wonder why?~
==BSandr~Alaundo - in case you have heard about him.~
==Bhaal01~A stupid seer, a prophet, a babbling fool.~
==BSandr~Truth often comes from the mouth of children or fools. May his prophesies be just tales to frighten children, one thing stays true.~
=~Only a Bhaalspawn will prevent the return of...YOU.~DO~ClearAllActions() StartCutSceneMode() StartCutScene("SanBh02")~EXIT