APPEND F_DRIZTJ

IF WEIGHT #-7~HappinessLT(Myself,0) InParty("CVSandr") GlobalLT("SanDrizzt","GLOBAL",9)
~ THEN BEGIN SanDrLev1
  SAY ~Your actions are of true evil nature and Drizzt should end your life with a twinkle. Though I will take my leave due to this is your life to waste!~
  =~ Sandrah, take good care of yourself and of this party. May all turn out to the good.~ 
IF ~~ THEN DO ~  
ActionOverride("CVSandr",AddSpecialAbility("CVDrag9"))
ActionOverride("F_WULFGAR",LeaveParty())
ActionOverride("F_WULFGAR",EscapeArea())
ActionOverride("F_BRUENOR",LeaveParty())
ActionOverride("F_BRUENOR",EscapeArea())
ActionOverride("F_CATTIBR",LeaveParty())
ActionOverride("F_CATTIBR",EscapeArea())
ActionOverride("F_REGIS2",LeaveParty())
ActionOverride("F_REGIS2",EscapeArea())
LeaveParty()
EscapeArea()
~ EXIT
END

IF WEIGHT #-8~True()InParty("CVSandr") GlobalLT("SanDrizzt","GLOBAL",9)
~ THEN BEGIN SanDrLev2
SAY ~I guess it is time for us to walk separate paths from here. Friends in Icewind Dale await.~ 
 =~ Sandrah, take good care of yourself and of this party. May all turn out to the good.~ 
IF ~~ THEN DO ~  
ActionOverride("CVSandr",AddSpecialAbility("CVDrag9"))
ActionOverride("F_WULFGAR",LeaveParty())
ActionOverride("F_WULFGAR",EscapeArea())
ActionOverride("F_BRUENOR",LeaveParty())
ActionOverride("F_BRUENOR",EscapeArea())
ActionOverride("F_CATTIBR",LeaveParty())
ActionOverride("F_CATTIBR",EscapeArea())
ActionOverride("F_REGIS2",LeaveParty())
ActionOverride("F_REGIS2",EscapeArea())
LeaveParty()
EscapeArea()
~ EXIT
END
END

APPEND IF_FILE_EXISTS F_MULTIP

IF  WEIGHT #-8~HappinessLT(Myself,0) InParty("CVSandr") GlobalLT("SanDrizzt","GLOBAL",9)
~ THEN BEGIN SanDrLev1
  SAY ~Your actions are of true evil nature and Drizzt should end your life with a twinkle. Though I will take my leave due to this is your life to waste!~
  =~ Sandrah, take good care of yourself and of this party. May all turn out to the good.~ 
IF ~~ THEN DO ~  
ActionOverride("CVSandr",AddSpecialAbility("CVDrag9"))
ActionOverride("F_WULFGAR",LeaveParty())
ActionOverride("F_WULFGAR",EscapeArea())
ActionOverride("F_BRUENOR",LeaveParty())
ActionOverride("F_BRUENOR",EscapeArea())
ActionOverride("F_CATTIBR",LeaveParty())
ActionOverride("F_CATTIBR",EscapeArea())
ActionOverride("F_REGIS2",LeaveParty())
ActionOverride("F_REGIS2",EscapeArea())
LeaveParty()
EscapeArea()
~ EXIT
END

IF WEIGHT #-9~True() InParty("CVSandr") GlobalLT("SanDrizzt","GLOBAL",9)
~ THEN BEGIN SanDrLev2
SAY ~I guess it is time for us to walk separate paths from here. Friends in Icewind Dale await.~ 
 =~ Sandrah, take good care of yourself and of this party. May all turn out to the good.~ 
IF ~~ THEN DO ~  
ActionOverride("CVSandr",AddSpecialAbility("CVDrag9"))
ActionOverride("F_WULFGAR",LeaveParty())
ActionOverride("F_WULFGAR",EscapeArea())
ActionOverride("F_BRUENOR",LeaveParty())
ActionOverride("F_BRUENOR",EscapeArea())
ActionOverride("F_CATTIBR",LeaveParty())
ActionOverride("F_CATTIBR",EscapeArea())
ActionOverride("F_REGIS2",LeaveParty())
ActionOverride("F_REGIS2",EscapeArea())
LeaveParty()
EscapeArea()
~ EXIT
END
END

APPEND F_ELMINS

IF WEIGHT #-9~True() InParty("CVSandr") NumTimesTalkedToGT(0) !InParty("F_DRIZZT")
~ THEN BEGIN ClearAru
SAY ~ Ho there child, I see that Drizzt is no longer by your side. I surely hope that his existence still flows. If not so then I have a reason to worry. I must take my leave.~
= ~ Mine daughter, I see thou hath finally become a woman and hath soothed the heart of more than one lonely man longing for love. Farewell.~
IF ~~ THEN DO ~ EscapeArea()~EXIT
END
END

APPEND F_REGIS
IF WEIGHT #-9~InParty("CVSandr") InParty("F_DRIZZT") Global("Cult1","GLOBAL",1) !Global("Daemoncultfinish","GLOBAL",1) Global("Cultactive","LOCALS",0)~ THEN BEGIN Cultactive1
SAY~At last I found you Drizzt! But you are busy with a task here! Hurry to finish it, our friend Wulfgar will need your help as well.~
IF~~THEN DO~SetGlobal("Cultactive","LOCALS",1)~EXIT
END
END

INTERJECT_COPY_TRANS F_NIB 1 SanNibWDRememb
== CVSandrJ IF ~ InParty("CVSandr") ~THEN ~ My, Faerun is but a village! You must of course be one of the widespread Jansen gnomes.~
==F_NIB IF ~ InParty("CVSandr") ~THEN ~ Sure, m'lady, even if cannot return the compliment of having met such a beauty before. Where do you hail from?~
== CVSandrJ IF ~ InParty("CVSandr") ~THEN ~ Waterdeep, good gnome.~
==F_NIB IF ~ InParty("CVSandr") ~THEN ~ Ah, the home of Jan Jansen and his family - which brings me back to the topic of this ship...~
END

