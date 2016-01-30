BEGIN CVHarbor

IF~AreaCheck("CVROA8") Global("Lanlub","LOCALS",0)~THEN NoBiz1
SAY~Ain't got no bizniz with ya, folks. Ya sure ain't the sea faring type.~
IF~~THEN REPLY~...ah...~DO~SetGlobal("Lanlub","LOCALS",1)~EXIT
END

IF~AreaCheck("CVROA8") Global("Lanlub","LOCALS",1)~THEN NoBiz2
SAY~Get outa my way, landlubbers!~
IF~~THEN EXIT
END

IF~ GlobalGT("SanVampWDQuest","GLOBAL",12)~ THEN BEGIN GoRet
SAY~ Ya returned, gal?~
IF~~THEN REPLY~ We need to return to the ship once again.~DO~StartCutSceneMode()
StartCutScene("CVcut207")~EXIT                        
IF~ GlobalGT("SanVampWDQuest","GLOBAL",22)~THEN REPLY~ Mission completed.~EXIT
IF~GlobalLT("SanVampWDQuest","GLOBAL",22)~THEN REPLY~ Mission completed.~GOTO  GoRetLie
END

IF~ ~THEN BEGIN GoRetLie
SAY~ Darn bloddy lie, you coward. Wonder why the guys in the temple send a sucker like that.~
IF~~THEN DO~ ReputationInc(-1)~EXIT
END

CHAIN
IF~ Global("SanVampWDQuest","GLOBAL",10)~ THEN CVHarbor Go1
~Aye, not hard t'figure out who y'are, band of well armed advent'rers, gal lookin' jus' like fine young Khalindra once...~
DO~ SetGlobal("SanVampWDQuest","GLOBAL",11)~
==BSandr~ Well met, Harbour Master. Yes, we are the ones sent by the temple to look into that ship's mystery.~
==CVHarbor~(Spits) Whoever bastard or beast dun that, give 'em some extra kicks from me. 'twere some good buddies among those disappeared. 'n they'd given anyone quite some fight b'fore givin' up the Harare, that's fo' sure - had they'd been given the chance for an 'onest fight that is.~
==BSandr~ We heard there were no signs of a fight or other occurance to be found.~
==CVHarbor~'xactly right, gal. Finest clean ship like she ever was, decks scrubbed like you can eat from dem planks...makes ya believe in ghosts or ship's kobolds.~
==BSandr~ And what about that fisherman who was found...~
==CVHarbor~...someone like ol' Reagan kant blame none but 'imself, gal. Tell him where not to go and what not to do - wush, he'll be off next minute to do just that. Had to break his neck one day, dat rebellious habits. Now, well, maybe not exactly neck broken but dead as can be anyway.~
==BSandr~Again no signs or evidence?~
==CVHarbor~ From where I sighted his boat and the body must've drifted directly from that ship I reckon. He was there and whoever's there at night sucked the blood outa 'im.~
END
++~So let us get onto that ship then.~+ Go2
++~Fine, we learned all there is known. We need to get into town and prepare for the trip. We will come back to get onto that ship in a while.~ EXIT

CHAIN
IF~~ THEN CVHarbor Go2
~Awrighty, here's that little boat I'll give ya - have to row it yourself, mates, I won't be caught out there at night and some fog is comin' in as well. Good luck.~
END
++~ Fine, see you soon.~ DO~ SetGlobal("SanVampWDQuest","GLOBAL",12)~ EXIT

CHAIN
IF~Global("SanVampWDQuest","GLOBAL",11)~ THEN CVHarbor Go3
~Ready to go now.~
END
++~So let us get onto that ship then.~+ Go2
++~We need to prepare still. We will come back to get onto that ship in a while.~ EXIT