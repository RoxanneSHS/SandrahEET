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