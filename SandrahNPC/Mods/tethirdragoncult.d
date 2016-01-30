APPEND BSandr
IF~Global("SanNecro","ar3531",1)~THEN BEGIN SanDragoNec
SAY~ You know how much I despise the necromancers, <CHARNAME>.~
IF~~THEN REPLY~ They have not only created a dragolich but also some of their own turned to those hateful monsters. ~DO~SetGlobal("SanNecro","ar3531",2)IncrementGlobal("Sanpoints","GLOBAL",2)~ GOTO SanDragoNec2
IF~~THEN REPLY~ Your warning has been correct, counsellor, here is more to fear than we can possibly face.~DO~SetGlobal("SanNecro","ar3531",2)IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanDragoNec2
IF~~THEN REPLY~ I should have heeded the warning part of your earlier counsel but not the challenge. We should get out of here while we still can.~DO~SetGlobal("SanNecro","ar3531",2)IncrementGlobal("Sanpoints","GLOBAL",-2)~GOTO SanDragoNec2
END

IF~~ THEN BEGIN SanDragoNec2
SAY~ We cannot allow any of those creatures to get to the surface, to Tethir or even beyond. There is no turning away from this danger. The cult must be destroyed. Let us be careful and advance slowly but be thorough in our cleansing nonetheless.~
IF~~THEN REPLY~ (Sigh) So it must be. I can only agree to your hatred for those who use the gifts of your goddess for such purpose.~EXIT
END
END


INTERJECT_COPY_TRANS CBTardth 37 Dragolich
== CVSANDRJ IF ~InParty("CVSandr")~ THEN~ They revived a dragon? Do you know what that means, <CHARNAME>? They want to unleash a Dragolich on Tethir!~
==CBTardth IF ~InParty("CVSandr")~ THEN~ Are you afraid of such a creature, mylady?~
== CVSANDRJ IF ~InParty("CVSandr")~ THEN~There is any reason to be, Tardeth, but even more reason to overcome our fear and defeat this cult before it is too late.~
==CBTardth IF ~InParty("CVSandr")~ THEN~ I apologize, I did not want to question your courage. Maybe a warning on what you expect will help us to be prepared as you seem to behold more knowledge than we do .~
== CVSANDRJ IF ~InParty("CVSandr")~ THEN~That was exactly my intend. I want to emphasize that a capable party of our joint forces may be the only power to stop this assault on the Realms. Even we may find this a terrible foe as a dragolich combines the terrors of a shadow dragon with those of a lich. This cult has as little scrupels as they have sense. They will never be able to control what they created.~
==CBTardth IF ~InParty("CVSandr")~ THEN~ Then they must be destroyed together with their creation by all means. ~
END