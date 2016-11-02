EXTEND_TOP B2#TenyJ 185 #12
IF~InParty("CVSandr")~THEN REPLY~What do you think of Sandrah?~GOTO SanTeny1
END 

CHAIN
IF~~THEN B2#TenyJ SanTeny1
~False priestess of a false goddess, mother warned me of Mystra often enough.~
=~She scares me...not.~
==B2#TenyJ IF~InMyArea("Pellig")~THEN~Nor does her big fat cat.~
END
++~*Stay silent to that remark.*~EXTERN B2#TenyJ 179
++~I don't believe you're *not* scared of her, even if she probably wouldn't care.~EXTERN B2#TenyJ 179

CHAIN
IF~Global("Umbowl","GLOBAL",5)~THEN B2#TenyJ Sandid1
~<CHARNAME> told me that you played an important role when <PRO_HESHE> acted to revenge my mother's death.~
DO~SetGlobal("Umbowl","GLOBAL",6)~
==BSandr~We did not act to revenge your parent but to help a child threatened by Talos' disciples.~
==B2#TenyJ~It's strange to think that a priestess of the hateful Mystra does such a thing - and do not call me *child* again!~
==BSandr~I have no sympathy for the water queen and her reign of terror over those who make a living at sea, but there is an open foe who is even worse - and that is Talos. ~
==B2#TenyJ~It's good to know that I don't have to thank you in any way. Whatever your reasons were, I owe you nothing.~
==BSandr~I did never expect more from the water bitch.~EXIT

CHAIN
IF~Global("Umbowl","GLOBAL",7)~THEN B2#TenyJ Sandid2
~You are either very brave or very foolish to make your enemies among the gods.~
DO~SetGlobal("Umbowl","GLOBAL",8)~
==BSandr~If it were different, you may not have been given the chance to travel with us.~
==B2#TenyJ~You will wait in vain for me to thank you for your help against those fishermen of Talos way back then.~
==BSandr~Neither that event nor the present one have anything to do with you, Tenya. You are not as important as you think - I am a priestess of a goddess who is easily at odds with the evil representatives of the pantheon.~
==B2#TenyJ~I observe you, Sandrah. One can learn a lot from you. One can learn from other people's success as well as from their failure.~
==BSandr~This is a good attitude - at least one thing we can agree on.~EXIT