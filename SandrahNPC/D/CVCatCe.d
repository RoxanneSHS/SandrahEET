BEGIN CVCatCe


CHAIN
IF~ Global("SanCerndLT","GLOBAL",1)~ THEN CVCatCe SanFind1
~ Miau, miau.~
DO~ SetGlobal("SanCerndLT","GLOBAL",2)~
== BSANDR~ Wait a minute, <CHARNAME>, let me take care of that poor limping creature.~
==BCERND~ You are a very caring girl, Sandrah. Look, it is the hind leg that is injured.~
== BSANDR~ Come here, poor kitten.~ DO~ ReallyForceSpell("CVCATCE",CLERIC_CURE_MEDIUM_WOUNDS)~
END
++~ You never tire to help suffering creatures, Sandrah.~ + SanFind2
++~ What's the next patient, a three-legged frog?~ + SanFind2

CHAIN
IF~~ THEN CVCatCe SanFind2
~ Miau (The cat stretches and tests its healed leg cautiously. It expells a satisfied purring.)~
==BCERND~ Look at it, Sandrah, it is not a tame one, it is a wild mountain cat. How did it get here?~
== BSANDR~ Probably brought here by some hunter or menagerie and then thrown out in the street when they found it was injured.~
==BCERND~ (Sighs) I am afraid you are right, my girl.~
== BSANDR~ What do you propose to do, Cernd, what does your druid knowledge suggest?~
==BCERND~ It would be cruel to let it here where it does not belong and cannot survive long. Let us take it with us and give it back its freedom when we come to a suitable area in the wilderness.~
== BSANDR~ That is a wonderful suggestion, I hate it myself when people cage and mistreat those wild creature just to satisfy their hunger for sensations.~
==Pellig~ * Do not fear, little friend, these are good people. You will be home soon.*~
==CVCatCe~ Miau.~
EXIT

CHAIN
IF~ Global("SanCerndLT","GLOBAL",5)~ THEN CVCatCe SanFind3
~ (The mountain cat carefully inspects the new area around.)~
DO~ SetGlobal("SanCerndLT","GLOBAL",6)~
==BCERND~ This is were you belong, friend. Tread carefully.~
== BSANDR~ (Sandrah smiles and takes Cernd's hand while watching the cat explore its new world.)~
==Pellig~ *Hush, little one, do not get yourself caught again. Live long and prosperous.*~
==BCERND~ Huh, there it was again, Sandrah, I think I overheard some kind of telepathic message from Pelligram to that cat.~
== BSANDR~ You are a druid, do you not communicate with the wild beings all the time?~
==BCERND~ In some way yes, you are right, Sandrah, but this was different, much clearer than what I receive from a *normal* animal.~
== BSANDR~ Pelligram surely does not fit into that category. Anyway, I am glad our little guest has now found what she needs, Cernd.~
==BCERND~ So am I. (Instictively Cernd keeps Sandrah's hand in his own while the group continues their march.)~ 
==CVCatCe~ Miau.~DO~ MoveToPointNoInterrupt([0.0])~ EXIT