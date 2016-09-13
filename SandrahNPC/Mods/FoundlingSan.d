INTERJECT L#FouJ 18 SanFouBH
==CVSandrJ IF~InParty("CVSandr") OR(2) !InParty("Jaheira") StateCheck("jaheira",CD_STATE_NOTVALID)~THEN~I think we know someone we could ask about such a thing.~
== L#FouJ IF ~InParty("CVSandr") OR(2) !InParty("Jaheira") StateCheck("jaheira",CD_STATE_NOTVALID)~THEN~You're not joking, are you? A priestess of the true weave would help a shadow creature?~
==CVSandrJ IF~InParty("CVSandr") OR(2) !InParty("Jaheira") StateCheck("jaheira",CD_STATE_NOTVALID)~THEN~I am not yet sure about your involvement with the Shadow Weave but at this moment you are a slave trying to break free. I would never hesitate to help.~ 
== L#FouJ IF ~InParty("CVSandr") OR(2) !InParty("Jaheira") StateCheck("jaheira",CD_STATE_NOTVALID)~THEN~But we both know you do not trust me.~ 
==CVSandrJ IF~InParty("CVSandr") OR(2) !InParty("Jaheira") StateCheck("jaheira",CD_STATE_NOTVALID)~THEN~You assume more than you know. I have not made my mind up about trusting you. You are a comrade in need and I know how to help, that is all that matters right now. <CHARNAME>, I suggest to consult Ribald in Athkatla at the Adventurer's Mart - either he knows himself or he knows somebody who knows.~END L#FouJ 24 

CHAIN
IF WEIGHT #-3~Global("SanFouB","LOCALS",1)~THEN L#FouB Sanweave1
~It's an odd thing that we walk together in the same party, Priestess of Mystra.~
DO~SetGlobal("SanFouB","LOCALS",2) SetGlobal("SanFouBH","Global",3)~
==BSandr~Not much odder than the fact that you are on this plane at all.~
==L#FouB~I draw my abilities from the Shadow Weave while you follow the path of the keeper of what they call the *True* Weave.~
==BSandr~Do you pray to Shar?~
==L#FouB~Who is that? I heard my dead master issue the name but I know not what it meant.~
==BSandr~(Nods) We should delay this talk to a quiet time. There will be much to say. We should know each other better before we handle such topics.~EXIT

ADD_TRANS_TRIGGER L#FouJ 148 
~!InParty("CVSandr")~

EXTEND_BOTTOM L#FouJ 148
IF~InParty("CVSandr")~THEN REPLY~Our expert for this kind of discussion would be Sandrah. You two should talk about it some time. For now let us move.~ DO~SetGlobal("SanFouBH","Global",2)~GOTO 149
END

EXTEND_BOTTOM L#FouJ 127
IF~InParty("CVSandr")~THEN REPLY~You should team up with Sandrah. Her counselling goes into the same direction. *Know more about your enemy than he knows about you.* And I listen to her so that we won't lose our fight and we all stay alive.~ GOTO 130
END
