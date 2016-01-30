// White BG1 NPC
CHAIN
IF~Global("SanTempl","LOCALS",1)~ THEN V#1Whib AtWD
~This place reminds me of a temple rather than a garden in some strange way.~
DO~SetGlobal("SanTempl","LOCALS",2) ~
==BSandr~It is not such an odd impression from one who grew up in a temple. Part of this garden actually is a replica of a temple that has long been lost by Mystra's disciples...but this is a story for another day.~
==V#1Whib~I see. Anyway, this may just be how an active temple may look like, different from the ruins of the temple of Grumbar I used to know.~
==BSandr~(Grim) I do not dare to imagine what Mystra's old temple may look like today...but, this place here is dedicated to a love that is stronger than death itself - my father's love for my mother.~
==V#1Whib~Hm, it makes it a special place, I agree, if not yet a temple.~
==BSandr~Right, you need no other temple than your own heart to worship love. In fact, this place here is just a garden after all.~EXIT

CHAIN
IF~Global("SanHealWhite","LOCALS",1) ~ THEN V#1Whib Sanheal
~Any act of healing I receive will always remind me of Oosathia.~
DO~ SetGlobal("SanHealWhite","LOCALS",2)~
==BSandr~The naga who raised you and cared for you?~
==V#1Whib~(Laughs) It's not that you resemble her in any way. It's just that she was always there to pick me up and apply some healing when I stumbled and hurt myself as a child. I was always under her protection.~
==BSandr~I heard that her breed can be really guarding and protective - I am just the healer of this group, I hope you will not find the possesive type of protectiveness of a naga with me.~
==V#1Whib~I hope so, too. Even with all I owe to Oosathia I had to free myself from a protection that was about to become a prison for me.~
==BSandr~There is probably too much difference in blood and in instinct between the two races to establish a sane mother to son relationship. Still her instinct to protect allows you to be here today.~
==V#1Whib~True - and your healing skills allow me to enjoy it still another day.~EXIT

CHAIN
IF~Global("SanHealWhite","LOCALS",3) ~ THEN V#1Whib Gaytalk
~A remarkable and handsome man, this one.~
DO~SetGlobal("SanHealWhite","LOCALS",4)~
==BSandr~I was thinking the same...by, the way, I never heard you issue such remarks about any woman we met - including myself.~
==V#1Whib~Let me put it this way. The only way I can think of a woman with your healer skills and other virtues is in the way Oosathia once was for me.~
==BSandr~(Laughs) I am no naga, my protectiveness is less strong and I do not think of my lovers as my possession. Just take care you do not intend to enter his bedroll on the same night I do.~
==V#1Whib~(Smiles) I will take care of that. I think to become a healer one must be able to look quite deep into the nature of people. Good.~EXIT
