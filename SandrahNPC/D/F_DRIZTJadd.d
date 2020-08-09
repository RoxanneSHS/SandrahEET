APPEND F_DRIZTJ

IF WEIGHT #-7~HappinessLT(Myself,0) InParty("CVSandr") GlobalLT("SanDrizzt","GLOBAL",9)
~THEN BEGIN SanDrLev1
  SAY @0
  =@1
IF ~~THEN DO ~ 
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
~EXIT
END

IF WEIGHT #-8~True()InParty("CVSandr") GlobalLT("SanDrizzt","GLOBAL",9)
~THEN BEGIN SanDrLev2
SAY @2
 =@1
IF ~~THEN DO ~ 
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
~EXIT
END
END

APPEND IF_FILE_EXISTS F_MULTIP

IF  WEIGHT #-8~HappinessLT(Myself,0) InParty("CVSandr") GlobalLT("SanDrizzt","GLOBAL",9)
~THEN BEGIN SanDrLev1
  SAY @0
  =@1
IF ~~THEN DO ~ 
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
~EXIT
END

IF WEIGHT #-9~True() InParty("CVSandr") GlobalLT("SanDrizzt","GLOBAL",9)
~THEN BEGIN SanDrLev2
SAY @2
 =@1
IF ~~THEN DO ~ 
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
~EXIT
END
END

APPEND F_ELMINS

IF WEIGHT #-9~True() InParty("CVSandr") NumTimesTalkedToGT(0) !InParty("F_DRIZZT")
~THEN BEGIN ClearAru
SAY @3
= @4
IF ~~THEN DO ~EscapeArea()~EXIT
END
END

APPEND F_REGIS
IF WEIGHT #-9~InParty("CVSandr") InParty("F_DRIZZT") Global("Cult1","GLOBAL",1) !Global("Daemoncultfinish","GLOBAL",1) Global("Cultactive","LOCALS",0)~THEN BEGIN Cultactive1
SAY@5
IF~~THEN DO~SetGlobal("Cultactive","LOCALS",1)~EXIT
END
END

INTERJECT_COPY_TRANS F_NIB 1 SanNibWDRememb
== CVSandrJ IF ~InParty("CVSandr") ~THEN @6
==F_NIB IF ~InParty("CVSandr") ~THEN @7
== CVSandrJ IF ~InParty("CVSandr") ~THEN @8
==F_NIB IF ~InParty("CVSandr") ~THEN @9
END

