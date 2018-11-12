BEGIN CVSILV

CHAIN
IF~GlobalGT("SanKhalBlood","GLOBAL",8)~THEN CVSILV Wanderers2
~Live long and prosperous.~
EXIT

CHAIN
IF~Global("SanKhalBlood","GLOBAL",8)~THEN CVSILV Wanderers1
~Seekers or intruders? State the purpose of your entry?~
DO~SetGlobal("SanKhalBlood","GLOBAL",9)~
==CVSANDRJ~We are seekers for the Book that Writes Itself - Are you this book and hold the lore of the bloodlines? ~
==CVSILV ~Hoho, the first step is already taken, little one. You have a purpose and the knowledge of what the book contains. Good. I am just the Archive's Guardian and you must answer satisfactorily to gain access.~
==CVSANDRJ~Pose your questions then, Guardian.~
==CVSILV ~Who among you has the blood that requests access?~
END
++~Me, <CHARNAME> of Candlekeep from the blood of Bhaal.~+ Wanderers3
IF~InParty("Imoen2")~THEN REPLY~Imoen of Candlekeep, daughter of Bhaal.~+ Wanderers7
++~Sandrah of Waterdeep, priestess of Mystra, daughter of Elminster and granddaughter of Midnight.~+ Wanderers4

CHAIN
IF~~THEN CVSILV Wanderers3
~The record of the Bhaalspawn has already been accessed twice. The limit has been reached.~
==CVSANDRJ~What? <CHARNAME>, somebody has studied your entries and probably not for a reason we like. Guardian, who has accessed those entries?~
==CVSILV ~I am not authorised to give you names?~
==CVSANDRJ~You do not need to, just nod if I am right.~
=~Sarevok?~
==CVSILV ~(The silver dragon nods his mighty head.)~
==CVSANDRJ~Mhm, and he was granted access because his blood entitled him to...~
==CVSILV ~(The silver dragon nods again.)~
==CVSANDRJ~And the second - Jon Irenicus?~
==CVSILV ~BRAAAH !!!! That imposter attempted it but he had no blood of his own for justification.~
==CVSANDRJ~So a mysterious second seeker - one of Bhaal's blood. Who might that have been?~
==CVSILV ~Have you a brother named Balthazar, Bhaalspawn?~
END
++~How am I to know if I am not allowed to see my entries in the book?~+ Wanderers8

CHAIN
IF~~THEN CVSILV Wanderers4
~Grandchild of Midnight, Guardian of the Cloak. The passage is open for you to my right.~
=~Before you enter, is anyone else of the blood that grants access and wants to read the book today?~
END
++~None needs access today.~EXIT
IF~InParty("Imoen2")~THEN REPLY~Imoen of Candlekeep, daughter of Bhaal.~+ Wanderers7
++~Me, <CHARNAME> of Candlekeep from the blood of Bhaal.~+ Wanderers6

CHAIN
IF~~THEN CVSILV Wanderers5
~Hohoho, well, now you know. So, another among you has the blood that requests access?~
==CVSANDRJ~Sandrah, daughter of Khalindra and Elminster.~
==CVSILV ~Priestess of Mystra, Grandchild of Midnight, Guardian of the Cloak. The passage is open for you to my right.~
EXIT

CHAIN
IF~~THEN CVSILV Wanderers6
~The record of the Bhaalspawn has already been accessed twice. The limit has been reached.~
==CVSANDRJ~What? <CHARNAME>, somebody has studied your entries and probably not for a reason we like. Guardian who has accessed those entries?~
==CVSILV ~I am not authorised to give you names?~
==CVSANDRJ~You do not need to, just nod if I am right.~
=~Sarevok?~
==CVSILV ~(The silver dragon nods his mighty head.)~
==CVSANDRJ~Mhm, and he was granted access because his blood entitled him to...~
==CVSILV ~(The silver dragon nods again.)~
==CVSANDRJ~And the second - Jon Irenicus?~
==CVSILV ~BRAAAH !!!! That false intruder attempted it but he had no blood of his own for justification.~
==CVSANDRJ~So a mysterious second seeker - one of Bhaal's blood. Who might that have been?~
==CVSILV ~Have you a brother named Balthazar, Bhaalspawn?~
END
++~How am I to know if I am not allowed to see my entries in the book?~EXIT

CHAIN
IF~~THEN CVSILV Wanderers7
~Do you request it yourself, young Imoen?~
==BIMOEN2~Hey, of course no...Ya coulda asked me b'fore. I need none of that Bhaal stuff, get lost, baah...~
== CVSILV ~You have no need to learn about your past or future, Imoen?~
==BIMOEN2~Tell you what, oldie, unless you're stuck in a mouldy ol' temple for ages and ages life is but a great pink parcel given to ya, got me? Every day you have the pleasure of unwrapping it a bit - don't spoil my party by telling me up front.~
== CVSILV ~As you wish, little wisecrack. Any one else who is qualified?~
END
++~None needs access today.~EXIT
++~Sandrah of Waterdeep, priestess of Mystra, daughter of Elminster and granddaughter of Midnight.~+ Wanderers4

CHAIN
IF~~THEN CVSILV Wanderers8
~Is anyone else of the blood that grants access and wants to read the book today?~
END
++~Sandrah of Waterdeep, priestess of Mystra, daughter of Elminster and granddaughter of Midnight.~+ Wanderers4
IF~InParty("Imoen2")~THEN REPLY~Imoen of Candlekeep, daughter of Bhaal.~+ Wanderers7
++~None needs access today.~EXIT

