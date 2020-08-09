//Elminster Encounters
INTERJECT_COPY_TRANS YSelm01 43 SanmeetElmBG21
== CVSANDRJ IF ~InParty("CVSandr")~THEN@0
==YSelm01 IF ~InParty("CVSandr")~THEN@1
END

INTERJECT_COPY_TRANS YSelm01 44 SanmeetElmBG22
== CVSANDRJ IF ~InParty("CVSandr")~THEN@0
==YSelm01 IF ~InParty("CVSandr")~THEN@1
END

APPEND IF_FILE_EXISTS YSCVMSTR
IF~Global("ys_TalkedToCaravanMaster","GLOBAL",4)
Global("ys_TalkedToAiloth","GLOBAL",1)
Global("ys_GarrisonFight","GLOBAL",3)~THEN BEGIN Cloudpeaks
SAY@2
IF~~THEN DO~AddexperienceParty(60000)
RevealAreaOnMap("ys0370")
SetGlobal("ys_TalkedToCaravanMaster","GLOBAL",6)
AddJournalEntry(@752,QUEST)~EXIT
END
END
