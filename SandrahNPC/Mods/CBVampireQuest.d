APPEND CVSandrJ

IF~Global("SanVSQHint","LOCALS",1)~THEN BEGIN SanHintFarm1
SAY~ An interesting letter, <CHARNAME>, it seems to hint at another resource of those vampires here in Amn.~
IF~~THEN REPLY~ I am lost at the moment, what are you referring to?~ DO~SetGlobal("SanVSQHint","LOCALS",2) ~GOTO SanHintFarm3
IF~~THEN REPLY~ Valen to go to somebody named Vernon if Bodhi is dead? What do you make out of it?~DO~SetGlobal("SanVSQHint","LOCALS",2) ~ GOTO SanHintFarm2
END

IF~~ THEN BEGIN SanHintFarm2
SAY~ A farm is mentioned. Was that not the horse farm's owner outside of the city gates? The one who would not sell us anything. Strange guy.~
IF~~THEN REPLY~ It's not too far away to check. If there are more of those bloodsuckers we should not allow them to get into town again.~ EXIT
IF~~THEN REPLY~ I have enough of those creatures for a while. Let the authorities deal with that stuff from now on.~EXIT
END

IF~~ THEN BEGIN SanHintFarm3
SAY~ The letter from Bodhi to Valen we found. A farm is mentioned and a man named Vernon. Was that not the horse farm's owner outside of the city gates? The one who would not sell us anything. Strange guy.~
IF~~THEN REPLY~ It's not too far away to check. If there are more of those bloodsuckers we should not allow them to get into town again.~ EXIT
IF~~THEN REPLY~ I have enough of those creatures for a while. Let the authorities deal with that stuff from now on.~EXIT
END

IF WEIGHT #-1~ IsGabber(Player1) Global("SanCBVampsQ","LOCALS",1) ~ THEN BEGIN SanVampCounsl1
SAY~ (Your counsellor seems to have awaited your question about the vampire's request already.)~
IF~~THEN REPLY~ (You decide to make a decision without asking her opinion.)~ DO~IncrementGlobal("Sanpoints","GLOBAL",-3) SetGlobal("SanCBVampsQ","LOCALS",2)~ EXIT
IF~~THEN REPLY~ (You decide to make a decision after you have heard her opinion.)~ DO~IncrementGlobal("Sanpoints","GLOBAL",3)SetGlobal("SanCBVampsQ","LOCALS",2)~GOTO SanVampCounsl2
IF~~THEN REPLY~ (You decide let her make a decision for the party's sake.)~ DO~SetGlobal("SanCBVampsQ","LOCALS",2)IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanVampCounsl2
END

IF~~THEN BEGIN SanVampCounsl2
SAY~ You want to hear my opinion upon that vampire's request, my love?~
IF~~THEN REPLY~ You read my mind, Sandrah. What do you think we should do?~ GOTO SanVampCounsl3
IF~~THEN REPLY~ On second thought, I think we should let them rot here on the farm and warn Amn about their presence. Forget it.~GOTO SanVampCounsl3
END

IF~~THEN BEGIN SanVampCounsl3
SAY~ What about using our good old method to put the facts in front of us and see what sense our common analysis can make out of it.~
=~ We have three options if I count right, <CHARNAME>, not taking into account some minor variations. First, we can reject their request.~
IF~~THEN REPLY~If we do, they probably will attack and we might destroy them.~ GOTO SanVampCounsl4
END

IF~~THEN BEGIN SanVampCounsl4
SAY~ Right. However if it is our intention to just destroy this group, it might be even easier to pretend we agree, take their earth and bodies from here and destroy them by exposure to the sunlight.~
IF~~THEN REPLY~ Splendid idea, let's do it.~GOTO SanVampCounsl5
IF~~THEN REPLY~ Your tone tells me you do not prefer any of those two methods?~GOTO SanVampCounsl5
END

IF~~THEN BEGIN SanVampCounsl5
SAY~ What I prefer to do contains some risk but if my assumptions are correct may be the most beneficial option. I believe that Vernon tells us the truth about that hidden master and it is not just a trick to get us to move his family into town.~
IF~~THEN REPLY~ If it were just a trick we can still destroy him if we detect his deceit in the graveyard tombs later.~  GOTO SanVampCounsl6
IF~~THEN REPLY~ We can only find that out by taking the first step and bring him to town.~ GOTO SanVampCounsl6
END

IF~~THEN BEGIN SanVampCounsl6
SAY~ Right, once again. Once we have the information about the master, we can go to the root of the evil. Which will not hinder us to eliminate Vernon and his *family* anyway - either before or after we have dealt with the master.~
IF~~THEN REPLY~ Your counsel once again seems to be the most reasonable, thank you, Sandrah.~EXIT
IF~~THEN REPLY~ Thank you, Sandrah, I noted your points and will think about it for some time. We need no decision until the right time of day has come.~EXIT
END

IF~Global("SanCBVampsQ","LOCALS",3)~THEN BEGIN  SanVampCounsl7
SAY~My love, I think we have once more done the right thing. Those creatures will haunt Athkatla no more.~
IF~~THEN REPLY~ I hope so, I am tired of their kin for a long time already.~DO~ Addexperienceparty(15750)SetGlobal("SanCBVampsQ","LOCALS",4)~EXIT
END
END

ADD_TRANS_ACTION CBRNCMAN BEGIN 50 END BEGIN 0 END ~ ActionOverride("CVSandr",SetGlobal("SanCBVampsQ","LOCALS",1))~








