CHAIN
IF~Global("SanBeginRtF","GLOBAL",2)~THEN Pellig StartRtFQ1
~Greetings, Mystra - greetings God <CHARNAME>.~
DO~SetGlobal("SanBeginRtF","GLOBAL",3)~
==CVSAN25J~Greetings to you both. We were already expecting your return eagerly. What news do you carry?~
==Solar~We have come both together to report as things develop most disturbingly.~
==Pellig~The decade of peace between Shauhana's orcs and Amn seems to be in peril due to machinations that originate right here at Celestia...~
END
++~Decade?? We are here just mere weeks...~+ StartRtFQ2

CHAIN
IF~~THEN Pellig StartRtFQ2
~You have still not adjusted yourself to the different movement of time up here and on the prime...yes it has been a decade since you left Toril.~
==Solar~With a good chance to return there pretty soon.~
==Pellig~The rumours that Cyric has now the former exile Jon Irenicus and his minions from the Abyss in his service seem to be correct, Mystra. The Prince of Lies and his agents have chosen the prime as their playground to act against the achievements you two have just accomplished in the Realms.~
==CVSAN25J~They want to stir a war between the nations again, Pelligram? ~
==Pellig~It all points to that but it can only be investigated at the scene of the crime itself.~
==CVSAN25J~It seems almost like history repeats itself again and again. (Sigh) If our foe act through the primary plane against us, it would be there that we need to face them.~
==Solar~This is AO's verdict as well that I am sent to give you and <CHARNAME>. It is required that you meet the assault in your avatars on Faerun and solve the problem there. The Overgod will not allow the conflict taken to other planes and causing unlimited destruction there.~
==CVSAN25J~What does that imply?~
==Pellig~We may all revert to our avatars we used in our splendid adventures before and return to the prime. Solar will be sent to take us back to here only when we accomplished our mission.~
==CVSAN25J~I know that <CHARNAME> will love this idea. (Laughs) By saying *we* I understand your request to accompany us again, Pelligram?~
==Pellig~I was hoping for that dearly, my goddess.~
==CVSAN25J~Of course. What would I do without my elegant and powerful cat at my side.~
END
++~What else is included in this mission package, Solar?~EXTERN Solar StartRtFQS3
++~Can you give us further details, Pelligram?~+ StartRtFQ3

CHAIN
IF~~THEN Pellig StartRtFQ3
~You will have the choice to start your investigation with either of the sides involved. The exit guardian will create your avatars at your choice in Clan's land or in Waterdeep. It would be advised to consult both sides, either Shauhana and Minsc first or the Temple at Waterdeep and Qilandrha.~
==CVSAN25J~We may as well go to search for some of our former companions to travel with us again. They will be all over Amn and the Sword Coast.~
==Solar~That is a good idea, Mystra. <CHARNAME> will need to equip with all the old stuff kept in those chests up here.~DO~ReallyForceSpell(Myself,DRYAD_TELEPORT)~
==Pellig~I can hardly await to roam the Realms once again and meet old friends.~DO~Polymorph(GREATCAT_PANTHER)~EXIT

CHAIN
IF~~THEN Solar StartRtFQS3
~You will have the choice to start your investigation with either of the sides involved. The exit guardian will create your avatars either in Clan's land or in Waterdeep. It would be advised to consult both sides, either Shauhana and Minsc first or the Temple at Waterdeep and Qilandrha.~
==CVSAN25J~We may as well go to search for some of our former companions to travel with us again. They will be all over Amn and the Sword Coast.~
==Solar~That is a good idea, Mystra. <CHARNAME> will need to equip with all the old stuff kept in those chests up here.~DO~ReallyForceSpell(Myself,DRYAD_TELEPORT)~
==Pellig~I can hardly await to roam the Realms once again and meet old friends.~DO~Polymorph(GREATCAT_PANTHER)~EXIT

APPEND Solar
IF WEIGHT #-3 ~Global("SanRaiseMys","GLOBAL",9)~THEN BEGIN NotYet
SAY~Here the new adventure will begin once it has been installed.~
IF~~THEN DO~SetGlobal("SanTravel","GLOBAL",0)
SetGlobal("SanRaiseMys","GLOBAL",10)
StartCutSceneMode()
StartCutScene("CVcut300")~EXIT
END
END