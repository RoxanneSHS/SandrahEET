BEGIN CVJenPad

CHAIN
IF~Global("JenPad","Dsc035",1)~THEN CVJenPad Disco1
~*Whinny!*~
DO~SetGlobal("JenPad","Dsc035",2)~
==CVJenliJ~Show true self as githyanki ride you, daughter of Tiamat!~
==CVJenPad~A child of Gith? You see well who I am despite my disguise.~
END
++~What...?~EXIT

CHAIN
IF~Global("JenPad","Dsc035",3)~THEN CVJenPad Disco2
~I have been held down here by a geas bond from a powerful drow mage Shar Nadal. I do not feel that spell any more.~
DO~SetGlobal("JenPad","Dsc035",4)~
==CVJenliJ~Jen'lig of Tother-Ka Clan and commander <CHARNAME> destroy anti-cadre here. Child of Tiamat free to go.~
==CVJenPad~You do not require my service as is the pact between your god-queen and Tiamat since ages?~
==CVJenliJ~No need for ride on Primary Plane now. Keep debt to pay for other day.~
==CVJenPad~I will, Jen'lig of Tother-Ka. I owe you, says Partiglerios.~DO~ReallyForceSpell(Myself,DRYAD_TELEPORT)~EXIT

CHAIN
IF ~Global("JenPad","Dsc035",4)~THEN CVSandrJ Disco3
~I see now why you once called Pelligram a small pet.~
DO~SetGlobal("JenPad","Dsc035",5)~
==CVJenliJ~Githyanki commander ride red dragon if need. Jen'lig do at times but not often as is Planewalker and not can take riding animal across planes.~
==CVSandrJ~I heard the rumour about that pact between your kin and the red dragons - now I know it is really true.~
==CVJenliJ~Travel together teach much. Jen'lig has new vision of human female from Sandrah. Never thought could be strong and determined and fighter of great respect.~EXIT

