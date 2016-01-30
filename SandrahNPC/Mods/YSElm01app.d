//Elminster Encounters
INTERJECT_COPY_TRANS YSelm01 43 SanmeetElmBG21
== CVSANDRJ IF ~InParty("CVSandr")~ THEN~ (Sandrah lies in her father's arms within seconds and caresses the old man's beard kindly.)~
==YSelm01 IF ~InParty("CVSandr")~ THEN~ (Elminster smiles and kisses his daughter's forehead before turning to you once again.)~
END

INTERJECT_COPY_TRANS YSelm01 44 SanmeetElmBG22
== CVSANDRJ IF ~InParty("CVSandr")~ THEN~ (Sandrah lies in her father's arms within seconds and caresses the old man's beard kindly.)~
==YSelm01 IF ~InParty("CVSandr")~ THEN~ (Elminster smiles and kisses his daughter's forehead before turning to you once again.)~
END

APPEND IF_FILE_EXISTS YSCVMSTR
IF~Global("ys_TalkedToCaravanMaster","GLOBAL",4)
Global("ys_TalkedToAiloth","GLOBAL",1)
Global("ys_GarrisonFight","GLOBAL",3)~ THEN BEGIN Cloudpeaks
SAY~So that's the story is it? We'll be on our guard in future for any caravan that originates from Calimsham and arrives somewhat over-guarded! Listen now: that caravan left here bound for Athkatla and has to cross the old mountain road. If you cut north of the river and head west from here you should catch up with it in the Cloudpeaks somewhere. Good luck - though I doubt you'll need it!~
IF~~THEN DO~ AddexperienceParty(60000)
RevealAreaOnMap("ys0370")
SetGlobal("ys_TalkedToCaravanMaster","GLOBAL",6)
AddJournalEntry(@752,QUEST)~EXIT
END
END
