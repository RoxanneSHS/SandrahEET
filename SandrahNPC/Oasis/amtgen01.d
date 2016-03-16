BEGIN ~AMTGEN01~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN A0
  SAY @5000

  IF ~~ THEN REPLY @5001 GOTO A8

  IF ~OR(2)
ReputationGT(Player1,12)
GlobalGT("d0virtue","GLOBAL",0)
OR(2)
GlobalGT("d0virtue","GLOBAL",12)
!GlobalGT("d0virtue","GLOBAL",0)
InParty("Minsc")
!StateCheck("Minsc",1064941)
!StateCheck("Minsc",STATE_CONFUSED)~ THEN REPLY @5002 EXTERN MINSC25J JT_INTERJECT_1
  IF ~OR(2)
ReputationGT(Player1,12)
GlobalGT("d0virtue","GLOBAL",0)
OR(2)
GlobalGT("d0virtue","GLOBAL",12)
!GlobalGT("d0virtue","GLOBAL",0)
OR(3)
!InParty("Minsc")
StateCheck("Minsc",1064941)
StateCheck("Minsc",STATE_CONFUSED)~ THEN REPLY @5002 GOTO A1

  IF ~CheckStatGT(Player1,9,INT)~ THEN REPLY @5003 GOTO A1
  IF ~CheckStatLT(Player1,10,INT)~ THEN REPLY @5004 GOTO A1

  IF ~~ THEN REPLY @5005 GOTO A2

  IF ~ReputationLT(Player1,5)~ THEN REPLY @5006 GOTO A4

  IF ~CheckStatGT(Player1,12,INT)
InParty("Sarevok")
!StateCheck("Sarevok",1064941)
!StateCheck("Sarevok",STATE_CONFUSED)~ THEN REPLY @5007 EXTERN SAREV25J JT_INTERJECT_2
  IF ~CheckStatGT(Player1,12,INT)
OR(3)
!InParty("Sarevok")
StateCheck("Sarevok",1064941)
StateCheck("Sarevok",STATE_CONFUSED)~ THEN REPLY @5007 GOTO A5
  IF ~CheckStatLT(Player1,13,INT)
InParty("Sarevok")
!StateCheck("Sarevok",1064941)
!StateCheck("Sarevok",STATE_CONFUSED)~ THEN REPLY @5008 EXTERN SAREV25J JT_INTERJECT_2
  IF ~CheckStatLT(Player1,13,INT)
OR(3)
!InParty("Sarevok")
StateCheck("Sarevok",1064941)
StateCheck("Sarevok",STATE_CONFUSED)~ THEN REPLY @5008 GOTO A5

  IF ~OR(3)
Class(Player1,MAGE_ALL)
Class(Player1,CLERIC_ALL)
Class(Player1,DRUID_ALL)~ THEN REPLY @5009 GOTO A6
  IF ~OR(2)
Class(Player1,THIEF_ALL)
Class(Player1,BARD_ALL)~ THEN REPLY @50010 GOTO A6
  IF ~OR(4)
Class(Player1,MONK)
Class(Player1,FIGHTER_ALL)
Class(Player1,RANGER_ALL)
Class(Player1,PALADIN_ALL)~ THEN REPLY @50011 GOTO A6
END

IF ~~ THEN BEGIN A1
  SAY @50012

  IF ~CheckStatLT(Player1,10,INT)~ THEN REPLY @50013 GOTO B1
  IF ~CheckStatGT(Player1,9,INT)~ THEN REPLY @50014 GOTO B1

  IF ~CheckStatLT(Player1,13,INT)~ THEN REPLY @50015 GOTO A3
  IF ~CheckStatGT(Player1,12,INT)~ THEN REPLY @50016 GOTO A3

  IF ~~ THEN REPLY @50017 GOTO B2

  IF ~CheckStatGT(Player1,12,INT)
InParty("Sarevok")
!StateCheck("Sarevok",1064941)
!StateCheck("Sarevok",STATE_CONFUSED)~ THEN REPLY @5007 EXTERN SAREV25J JT_INTERJECT_2
  IF ~CheckStatGT(Player1,12,INT)
OR(3)
!InParty("Sarevok")
StateCheck("Sarevok",1064941)
StateCheck("Sarevok",STATE_CONFUSED)~ THEN REPLY @5007 GOTO A5
  IF ~CheckStatLT(Player1,13,INT)
InParty("Sarevok")
!StateCheck("Sarevok",1064941)
!StateCheck("Sarevok",STATE_CONFUSED)~ THEN REPLY @5008 EXTERN SAREV25J JT_INTERJECT_2
  IF ~CheckStatLT(Player1,13,INT)
OR(3)
!InParty("Sarevok")
StateCheck("Sarevok",1064941)
StateCheck("Sarevok",STATE_CONFUSED)~ THEN REPLY @5008 GOTO A5

  IF ~ReputationLT(Player1,5)~ THEN REPLY @5006 GOTO A4

  IF ~OR(3)
Class(Player1,MAGE_ALL)
Class(Player1,CLERIC_ALL)
Class(Player1,DRUID_ALL)~ THEN REPLY @5009 GOTO A6
  IF ~OR(2)
Class(Player1,THIEF_ALL)
Class(Player1,BARD_ALL)~ THEN REPLY @50018 GOTO A6
  IF ~OR(4)
Class(Player1,MONK)
Class(Player1,FIGHTER_ALL)
Class(Player1,RANGER_ALL)
Class(Player1,PALADIN_ALL)~ THEN REPLY @50011 GOTO A6
END

IF ~~ THEN BEGIN A2
  SAY @50019
      =
      @50020

  IF ~CheckStatLT(Player1,10,INT)~ THEN REPLY @50013 GOTO B1
  IF ~CheckStatGT(Player1,9,INT)~ THEN REPLY @50014 GOTO B1

  IF ~CheckStatLT(Player1,13,INT)~ THEN REPLY @50015 GOTO A3
  IF ~CheckStatGT(Player1,12,INT)~ THEN REPLY @50016 GOTO A3

  IF ~~ THEN REPLY @50017 GOTO B2

  IF ~CheckStatGT(Player1,12,INT)
InParty("Sarevok")
!StateCheck("Sarevok",1064941)
!StateCheck("Sarevok",STATE_CONFUSED)~ THEN REPLY @5007 EXTERN SAREV25J JT_INTERJECT_2
  IF ~CheckStatGT(Player1,12,INT)
OR(3)
!InParty("Sarevok")
StateCheck("Sarevok",1064941)
StateCheck("Sarevok",STATE_CONFUSED)~ THEN REPLY @5007 GOTO A5
  IF ~CheckStatLT(Player1,13,INT)
InParty("Sarevok")
!StateCheck("Sarevok",1064941)
!StateCheck("Sarevok",STATE_CONFUSED)~ THEN REPLY @5008 EXTERN SAREV25J JT_INTERJECT_2
  IF ~CheckStatLT(Player1,13,INT)
OR(3)
!InParty("Sarevok")
StateCheck("Sarevok",1064941)
StateCheck("Sarevok",STATE_CONFUSED)~ THEN REPLY @5008 GOTO A5

  IF ~ReputationLT(Player1,5)~ THEN REPLY @5006 GOTO A4

  IF ~OR(3)
Class(Player1,MAGE_ALL)
Class(Player1,CLERIC_ALL)
Class(Player1,DRUID_ALL)~ THEN REPLY @5009 GOTO A6
  IF ~OR(2)
Class(Player1,THIEF_ALL)
Class(Player1,BARD_ALL)~ THEN REPLY @50018 GOTO A6
  IF ~OR(4)
Class(Player1,MONK)
Class(Player1,FIGHTER_ALL)
Class(Player1,RANGER_ALL)
Class(Player1,PALADIN_ALL)~ THEN REPLY @50011 GOTO A6
END

IF ~~ THEN BEGIN A3
  SAY @50021

  IF ~CheckStatLT(Player1,10,INT)~ THEN REPLY @50022 GOTO B1
  IF ~CheckStatGT(Player1,9,INT)~ THEN REPLY @50023 GOTO B1

  IF ~~ THEN REPLY @50024 GOTO B2

  IF ~CheckStatGT(Player1,12,INT)
InParty("Sarevok")
!StateCheck("Sarevok",1064941)
!StateCheck("Sarevok",STATE_CONFUSED)~ THEN REPLY @5007 EXTERN SAREV25J JT_INTERJECT_2
  IF ~CheckStatGT(Player1,12,INT)
OR(3)
!InParty("Sarevok")
StateCheck("Sarevok",1064941)
StateCheck("Sarevok",STATE_CONFUSED)~ THEN REPLY @5007 GOTO A5
  IF ~CheckStatLT(Player1,13,INT)
InParty("Sarevok")
!StateCheck("Sarevok",1064941)
!StateCheck("Sarevok",STATE_CONFUSED)~ THEN REPLY @5008 EXTERN SAREV25J JT_INTERJECT_2
  IF ~CheckStatLT(Player1,13,INT)
OR(3)
!InParty("Sarevok")
StateCheck("Sarevok",1064941)
StateCheck("Sarevok",STATE_CONFUSED)~ THEN REPLY @5008 GOTO A5

  IF ~ReputationLT(Player1,5)~ THEN REPLY @5006 GOTO A4

  IF ~OR(3)
Class(Player1,MAGE_ALL)
Class(Player1,CLERIC_ALL)
Class(Player1,DRUID_ALL)~ THEN REPLY @5009 GOTO A6
  IF ~OR(2)
Class(Player1,THIEF_ALL)
Class(Player1,BARD_ALL)~ THEN REPLY @50018 GOTO A6
  IF ~OR(4)
Class(Player1,MONK)
Class(Player1,FIGHTER_ALL)
Class(Player1,RANGER_ALL)
Class(Player1,PALADIN_ALL)~ THEN REPLY @50011 GOTO A6
END

IF ~~ THEN BEGIN A4
  SAY @50025
      =
      @50026
  IF ~OR(4)
!InParty("Sarevok")
StateCheck("Sarevok",1064941)
StateCheck("Sarevok",STATE_CONFUSED)
!Alignment("Sarevok",MASK_EVIL)~ THEN DO ~SetGlobal("TethyrBattleStart","GLOBAL",1)
Enemy()
Shout(125)~ EXIT
  IF ~InParty("Sarevok")
!StateCheck("Sarevok",1064941)
!StateCheck("Sarevok",STATE_CONFUSED)
Alignment("Sarevok",MASK_EVIL)~ THEN DO ~SetGlobal("TethyrBattleStart","GLOBAL",1)
Enemy()
Shout(125)~ EXTERN SAREV25J JT_INTERJECT_3
END

IF ~~ THEN BEGIN A5
  SAY @50027

  IF ~CheckStatLT(Player1,10,INT)~ THEN REPLY @50013 GOTO B1
  IF ~CheckStatGT(Player1,9,INT)~ THEN REPLY @50014 GOTO B1

  IF ~~ THEN REPLY @50028 GOTO A7

  IF ~~ THEN REPLY @50029 GOTO B4
END

IF ~~ THEN BEGIN A6
  SAY @50030

  IF ~~ THEN REPLY @50031 GOTO A7

  IF ~~ THEN REPLY @50032 GOTO A5

  IF ~~ THEN REPLY @50033 GOTO A10
END

IF ~~ THEN BEGIN A7
  SAY @50034
  IF ~OR(4)
!InParty("Sarevok")
StateCheck("Sarevok",1064941)
StateCheck("Sarevok",STATE_CONFUSED)
!Alignment("Sarevok",MASK_EVIL)~ THEN DO ~SetGlobal("TethyrBattleStart","GLOBAL",1)
Enemy()
Shout(125)~ EXIT
  IF ~InParty("Sarevok")
!StateCheck("Sarevok",1064941)
!StateCheck("Sarevok",STATE_CONFUSED)
Alignment("Sarevok",MASK_EVIL)~ THEN DO ~SetGlobal("TethyrBattleStart","GLOBAL",1)
Enemy()
Shout(125)~ EXTERN SAREV25J JT_INTERJECT_3
END

IF ~~ THEN BEGIN A8
  SAY @50035

  IF ~~ THEN REPLY @50036 GOTO A9

  IF ~CheckStatLT(Player1,10,INT)~ THEN REPLY @50013 GOTO B1
  IF ~CheckStatGT(Player1,9,INT)~ THEN REPLY @50014 GOTO B1

  IF ~CheckStatGT(Player1,12,INT)
InParty("Sarevok")
!StateCheck("Sarevok",1064941)
!StateCheck("Sarevok",STATE_CONFUSED)~ THEN REPLY @5007 EXTERN SAREV25J JT_INTERJECT_2
  IF ~CheckStatGT(Player1,12,INT)
OR(3)
!InParty("Sarevok")
StateCheck("Sarevok",1064941)
StateCheck("Sarevok",STATE_CONFUSED)~ THEN REPLY @5007 GOTO A5
  IF ~CheckStatLT(Player1,13,INT)
InParty("Sarevok")
!StateCheck("Sarevok",1064941)
!StateCheck("Sarevok",STATE_CONFUSED)~ THEN REPLY @5008 EXTERN SAREV25J JT_INTERJECT_2
  IF ~CheckStatLT(Player1,13,INT)
OR(3)
!InParty("Sarevok")
StateCheck("Sarevok",1064941)
StateCheck("Sarevok",STATE_CONFUSED)~ THEN REPLY @5008 GOTO A5

  IF ~ReputationLT(Player1,5)~ THEN REPLY @5006 GOTO A4

  IF ~OR(3)
Class(Player1,MAGE_ALL)
Class(Player1,CLERIC_ALL)
Class(Player1,DRUID_ALL)~ THEN REPLY @5009 GOTO A6
  IF ~OR(2)
Class(Player1,THIEF_ALL)
Class(Player1,BARD_ALL)~ THEN REPLY @50018 GOTO A6
  IF ~OR(4)
Class(Player1,MONK)
Class(Player1,FIGHTER_ALL)
Class(Player1,RANGER_ALL)
Class(Player1,PALADIN_ALL)~ THEN REPLY @50011 GOTO A6
END

IF ~~ THEN BEGIN A9
  SAY @50037

  IF ~~ THEN REPLY @50033 GOTO A10

  IF ~CheckStatGT(Player1,11,INT)~ THEN REPLY @50038 GOTO B3
  IF ~CheckStatLT(Player1,12,INT)~ THEN REPLY @50039 GOTO B3

  IF ~~ THEN REPLY @50040 GOTO A5
END

IF ~~ THEN BEGIN A10
  SAY @50041
  IF ~~ THEN DO ~SetGlobal("TethyrBattleStart","GLOBAL",1)
Enemy()
Shout(125)~ EXIT
END

IF ~~ THEN BEGIN B1
  SAY @50042
  IF ~OR(3)
!InParty("Imoen2")
StateCheck("Imoen2",1064941)
StateCheck("Imoen2",STATE_CONFUSED)~ THEN REPLY @50043 GOTO C1
  IF ~OR(3)
!InParty("Imoen2")
StateCheck("Imoen2",1064941)
StateCheck("Imoen2",STATE_CONFUSED)~ THEN REPLY @50044 GOTO C2
  IF ~OR(3)
!InParty("Imoen2")
StateCheck("Imoen2",1064941)
StateCheck("Imoen2",STATE_CONFUSED)~ THEN REPLY @50045 GOTO C5
  IF ~OR(3)
!InParty("Imoen2")
StateCheck("Imoen2",1064941)
StateCheck("Imoen2",STATE_CONFUSED)~ THEN REPLY @50046 GOTO C4
  IF ~InParty("Imoen2")
!StateCheck("Imoen2",1064941)
!StateCheck("Imoen2",STATE_CONFUSED)~ THEN EXTERN IMOEN25J JT_INTERJECT_4
END

IF ~~ THEN BEGIN B2
  SAY @50047
  IF ~OR(3)
!InParty("Imoen2")
StateCheck("Imoen2",1064941)
StateCheck("Imoen2",STATE_CONFUSED)~ THEN REPLY @50043 GOTO C1
  IF ~OR(3)
!InParty("Imoen2")
StateCheck("Imoen2",1064941)
StateCheck("Imoen2",STATE_CONFUSED)~ THEN REPLY @50044 GOTO C2
  IF ~OR(3)
!InParty("Imoen2")
StateCheck("Imoen2",1064941)
StateCheck("Imoen2",STATE_CONFUSED)~ THEN REPLY @50045 GOTO C5
  IF ~InParty("Imoen2")
!StateCheck("Imoen2",1064941)
!StateCheck("Imoen2",STATE_CONFUSED)~ THEN EXTERN IMOEN25J JT_INTERJECT_4
END

IF ~~ THEN BEGIN B3
  SAY @50048
  IF ~OR(3)
!InParty("Imoen2")
StateCheck("Imoen2",1064941)
StateCheck("Imoen2",STATE_CONFUSED)~ THEN REPLY @50043 GOTO C1
  IF ~OR(3)
!InParty("Imoen2")
StateCheck("Imoen2",1064941)
StateCheck("Imoen2",STATE_CONFUSED)~ THEN REPLY @50044 GOTO C2
  IF ~OR(3)
!InParty("Imoen2")
StateCheck("Imoen2",1064941)
StateCheck("Imoen2",STATE_CONFUSED)~ THEN REPLY @50045 GOTO C5
  IF ~InParty("Imoen2")
!StateCheck("Imoen2",1064941)
!StateCheck("Imoen2",STATE_CONFUSED)~ THEN EXTERN IMOEN25J JT_INTERJECT_4
END

IF ~~ THEN BEGIN B4
  SAY @50049
  IF ~OR(3)
!InParty("Imoen2")
StateCheck("Imoen2",1064941)
StateCheck("Imoen2",STATE_CONFUSED)~ THEN REPLY @50043 GOTO C1
  IF ~OR(3)
!InParty("Imoen2")
StateCheck("Imoen2",1064941)
StateCheck("Imoen2",STATE_CONFUSED)~ THEN REPLY @50044 GOTO C2
  IF ~OR(3)
!InParty("Imoen2")
StateCheck("Imoen2",1064941)
StateCheck("Imoen2",STATE_CONFUSED)~ THEN REPLY @50045 GOTO C5
  IF ~InParty("Imoen2")
!StateCheck("Imoen2",1064941)
!StateCheck("Imoen2",STATE_CONFUSED)~ THEN EXTERN IMOEN25J JT_INTERJECT_4
END

IF ~~ THEN BEGIN C1
  SAY @50050
  IF ~~ THEN REPLY @50051 GOTO C3
  IF ~~ THEN REPLY @50046 GOTO C4
END

IF ~~ THEN BEGIN C2
  SAY @50052
  IF ~~ THEN REPLY @50053 GOTO E1
  IF ~~ THEN REPLY @50054 GOTO E3
END

IF ~~ THEN BEGIN C3
  SAY @50055
  IF ~~ THEN REPLY @50056 GOTO C6
  IF ~~ THEN REPLY @50057 GOTO C7
END

IF ~~ THEN BEGIN C4
  SAY @50058
  IF ~OR(4)
!InParty("Sarevok")
StateCheck("Sarevok",1064941)
StateCheck("Sarevok",STATE_CONFUSED)
!Alignment("Sarevok",MASK_EVIL)~ THEN REPLY @50059 DO ~SetGlobal("TethyrBattleStart","GLOBAL",1)
Enemy()
Shout(125)~ GOTO A7
IF ~InParty("Sarevok")
!StateCheck("Sarevok",1064941)
!StateCheck("Sarevok",STATE_CONFUSED)
Alignment("Sarevok",MASK_EVIL)~ THEN REPLY @50059 DO ~SetGlobal("TethyrBattleStart","GLOBAL",1)
Enemy()
Shout(125)~ EXTERN SAREV25J JT_INTERJECT_3

  IF ~Class(Player1,PALADIN_ALL)
!FallenPaladin(Player1)
InParty("Keldorn")
!StateCheck("Keldorn",1064941)
!StateCheck("Keldorn",STATE_CONFUSED)
OR(2)
ReputationGT(Player1,14)
GlobalGT("d0virtue","GLOBAL",0)
OR(2)
GlobalGT("d0virtue","GLOBAL",14)
!GlobalGT("d0virtue","GLOBAL",0)~ THEN REPLY @50060 EXTERN KELDO25J JT_INTERJECT_5
  IF ~GlobalGT("d0virtue","GLOBAL",0)
Class(Player1,PALADIN_ALL)
!FallenPaladin(Player1)
OR(4)
!InParty("Keldorn")
StateCheck("Keldorn",1064941)
StateCheck("Keldorn",STATE_CONFUSED)
GlobalLT("d0virtue","GLOBAL",15)~ THEN REPLY @50060 GOTO C9
  IF ~!GlobalGT("d0virtue","GLOBAL",0)
Class(Player1,PALADIN_ALL)
!FallenPaladin(Player1)
OR(4)
!InParty("Keldorn")
StateCheck("Keldorn",1064941)
StateCheck("Keldorn",STATE_CONFUSED)
ReputationLT(Player1,15)~ THEN REPLY @50060 GOTO C9

  IF ~Global("PlayerHasStronghold","GLOBAL",1)
Class(Player1,PALADIN_ALL)
!FallenPaladin(Player1)
InParty("Keldorn")
!StateCheck("Keldorn",1064941)
!StateCheck("Keldorn",STATE_CONFUSED)
OR(2)
ReputationGT(Player1,14)
GlobalGT("d0virtue","GLOBAL",0)
OR(2)
GlobalGT("d0virtue","GLOBAL",14)
!GlobalGT("d0virtue","GLOBAL",0)~ THEN REPLY @50061 EXTERN KELDO25J JT_INTERJECT_6
  IF ~Global("PlayerHasStronghold","GLOBAL",1)
GlobalGT("d0virtue","GLOBAL",0)
Class(Player1,PALADIN_ALL)
!FallenPaladin(Player1)
OR(4)
!InParty("Keldorn")
StateCheck("Keldorn",1064941)
StateCheck("Keldorn",STATE_CONFUSED)
GlobalLT("d0virtue","GLOBAL",15)~ THEN REPLY @50061 GOTO C10
  IF ~Global("PlayerHasStronghold","GLOBAL",1)
!GlobalGT("d0virtue","GLOBAL",0)
Class(Player1,PALADIN_ALL)
!FallenPaladin(Player1)
OR(4)
!InParty("Keldorn")
StateCheck("Keldorn",1064941)
StateCheck("Keldorn",STATE_CONFUSED)
ReputationLT(Player1,15)~ THEN REPLY @50061 GOTO C10

  IF ~Kit(Player1,16405)~ THEN REPLY @50062 GOTO C9
  IF ~Kit(Player1,16404)~ THEN REPLY @50063 GOTO C9

  IF ~~ THEN REPLY @50064 GOTO C11
END

IF ~~ THEN BEGIN C5
  SAY @50065
  IF ~~ THEN REPLY @50044 GOTO C2
  IF ~~ THEN REPLY @50066 GOTO C8
END

IF ~~ THEN BEGIN C6
  SAY @50067

  IF ~OR(4)
!InParty("Sarevok")
StateCheck("Sarevok",1064941)
StateCheck("Sarevok",STATE_CONFUSED)
!Alignment("Sarevok",MASK_EVIL)~ THEN REPLY @50059 DO ~SetGlobal("TethyrBattleStart","GLOBAL",1)
Enemy()
Shout(125)~ GOTO A7
IF ~InParty("Sarevok")
!StateCheck("Sarevok",1064941)
!StateCheck("Sarevok",STATE_CONFUSED)
Alignment("Sarevok",MASK_EVIL)~ THEN REPLY @50059 DO ~SetGlobal("TethyrBattleStart","GLOBAL",1)
Enemy()
Shout(125)~ EXTERN SAREV25J JT_INTERJECT_3

  IF ~Class(Player1,PALADIN_ALL)
!FallenPaladin(Player1)
InParty("Keldorn")
!StateCheck("Keldorn",1064941)
!StateCheck("Keldorn",STATE_CONFUSED)
OR(2)
ReputationGT(Player1,14)
GlobalGT("d0virtue","GLOBAL",0)
OR(2)
GlobalGT("d0virtue","GLOBAL",14)
!GlobalGT("d0virtue","GLOBAL",0)~ THEN REPLY @50060 EXTERN KELDO25J JT_INTERJECT_5
  IF ~GlobalGT("d0virtue","GLOBAL",0)
Class(Player1,PALADIN_ALL)
!FallenPaladin(Player1)
OR(4)
!InParty("Keldorn")
StateCheck("Keldorn",1064941)
StateCheck("Keldorn",STATE_CONFUSED)
GlobalLT("d0virtue","GLOBAL",15)~ THEN REPLY @50060 GOTO C9
  IF ~!GlobalGT("d0virtue","GLOBAL",0)
Class(Player1,PALADIN_ALL)
!FallenPaladin(Player1)
OR(4)
!InParty("Keldorn")
StateCheck("Keldorn",1064941)
StateCheck("Keldorn",STATE_CONFUSED)
ReputationLT(Player1,15)~ THEN REPLY @50060 GOTO C9

  IF ~Global("PlayerHasStronghold","GLOBAL",1)
Class(Player1,PALADIN_ALL)
!FallenPaladin(Player1)
InParty("Keldorn")
!StateCheck("Keldorn",1064941)
!StateCheck("Keldorn",STATE_CONFUSED)
OR(2)
ReputationGT(Player1,14)
GlobalGT("d0virtue","GLOBAL",0)
OR(2)
GlobalGT("d0virtue","GLOBAL",14)
!GlobalGT("d0virtue","GLOBAL",0)~ THEN REPLY @50061 EXTERN KELDO25J JT_INTERJECT_6
  IF ~Global("PlayerHasStronghold","GLOBAL",1)
GlobalGT("d0virtue","GLOBAL",0)
Class(Player1,PALADIN_ALL)
!FallenPaladin(Player1)
OR(4)
!InParty("Keldorn")
StateCheck("Keldorn",1064941)
StateCheck("Keldorn",STATE_CONFUSED)
GlobalLT("d0virtue","GLOBAL",15)~ THEN REPLY @50061 GOTO C10
  IF ~Global("PlayerHasStronghold","GLOBAL",1)
!GlobalGT("d0virtue","GLOBAL",0)
Class(Player1,PALADIN_ALL)
!FallenPaladin(Player1)
OR(4)
!InParty("Keldorn")
StateCheck("Keldorn",1064941)
StateCheck("Keldorn",STATE_CONFUSED)
ReputationLT(Player1,15)~ THEN REPLY @50061 GOTO C10

  IF ~Kit(Player1,16405)~ THEN REPLY @50062 GOTO C9
  IF ~Kit(Player1,16404)~ THEN REPLY @50063 GOTO C9

  IF ~~ THEN REPLY @50064 GOTO C11
END

IF ~~ THEN BEGIN C7
  SAY @50068
  IF ~~ THEN REPLY @50045 GOTO C5
  IF ~~ THEN REPLY @50066 GOTO C8
END

IF ~~ THEN BEGIN C8
  SAY @50069
  IF ~~ THEN REPLY @50070 GOTO A4
  IF ~~ THEN REPLY @50053 GOTO E1
END

IF ~~ THEN BEGIN C9
  SAY @50071
  IF ~~ THEN REPLY @50045 GOTO C5
END

IF ~~ THEN BEGIN C10
  SAY @50072
  IF ~~ THEN REPLY @50073 GOTO C11
  IF ~~ THEN REPLY @50045 GOTO C5
END

IF ~~ THEN BEGIN C11
  SAY @50074
  IF ~~ THEN REPLY @50075 GOTO C20
  IF ~~ THEN REPLY @50076 GOTO C12
  IF ~~ THEN REPLY @50077 GOTO C13
  IF ~GlobalGT("MakeStatue","GLOBAL",0)~ THEN REPLY @50078 GOTO C14
  IF ~GlobalGT("DemoGorgonIsDead","GLOBAL",0)~ THEN REPLY @50079 GOTO C15
  IF ~GlobalGT("HelmRitualDone","GLOBAL",0)~ THEN REPLY @50080 GOTO C15
END

IF ~~ THEN BEGIN C12
  SAY @50081
  IF ~~ THEN REPLY @50082 GOTO D1
  IF ~GlobalGT("DrizztFightBodhi","GLOBAL",0)~ THEN REPLY @50083 GOTO D2
END

IF ~~ THEN BEGIN C13
  SAY @50084
  IF ~~ THEN REPLY @50085 GOTO C16
  IF ~~ THEN REPLY @50086 GOTO C17
END

IF ~~ THEN BEGIN C14
  SAY @50087
  IF ~~ THEN REPLY @50088 GOTO C18
  IF ~~ THEN REPLY @50089 GOTO C17_2
END

IF ~~ THEN BEGIN C15
  SAY @50090
      =
      @50091
  IF ~~ THEN DO ~SetGlobal("TethyrBattleStart","GLOBAL",1)
Enemy()
Shout(125)~ EXIT
END

IF ~~ THEN BEGIN C16
  SAY @50092
  IF ~OR(4)
!InParty("Sarevok")
StateCheck("Sarevok",1064941)
StateCheck("Sarevok",STATE_CONFUSED)
!Alignment("Sarevok",MASK_EVIL)~ THEN REPLY @50093 DO ~SetGlobal("TethyrBattleStart","GLOBAL",1)
Enemy()
Shout(125)~ GOTO A7
IF ~InParty("Sarevok")
!StateCheck("Sarevok",1064941)
!StateCheck("Sarevok",STATE_CONFUSED)
Alignment("Sarevok",MASK_EVIL)~ THEN REPLY @50093 DO ~SetGlobal("TethyrBattleStart","GLOBAL",1)
Enemy()
Shout(125)~ EXTERN SAREV25J JT_INTERJECT_3
  IF ~~ THEN REPLY @50089 GOTO C17
END

IF ~~ THEN BEGIN C17
  SAY @50094
  IF ~~ THEN REPLY @50075 GOTO C20
  IF ~~ THEN REPLY @50076 GOTO C12
  IF ~GlobalGT("MakeStatue","GLOBAL",0)~ THEN REPLY @50078 GOTO C14
  IF ~GlobalGT("DemoGorgonIsDead","GLOBAL",0)~ THEN REPLY @50079 GOTO C15
  IF ~GlobalGT("HelmRitualDone","GLOBAL",0)~ THEN REPLY @50095 GOTO C15
END

IF ~~ THEN BEGIN C17_2
  SAY @50094
  IF ~~ THEN REPLY @50075 GOTO C20
  IF ~~ THEN REPLY @50076 GOTO C12
  IF ~~ THEN REPLY @50077 GOTO C13
  IF ~GlobalGT("DemoGorgonIsDead","GLOBAL",0)~ THEN REPLY @50079 GOTO C15
  IF ~GlobalGT("HelmRitualDone","GLOBAL",0)~ THEN REPLY @50095 GOTO C15
END

IF ~~ THEN BEGIN C18
  SAY @50096
  IF ~~ THEN REPLY @50097 GOTO C19
  IF ~~ THEN REPLY @50098 GOTO C18_2
END

IF ~~ THEN BEGIN C18_2
  SAY @50099
  IF ~OR(4)
!InParty("Sarevok")
StateCheck("Sarevok",1064941)
StateCheck("Sarevok",STATE_CONFUSED)
!Alignment("Sarevok",MASK_EVIL)~ THEN REPLY @50093 DO ~SetGlobal("TethyrBattleStart","GLOBAL",1)
Enemy()
Shout(125)~ GOTO A7
IF ~InParty("Sarevok")
!StateCheck("Sarevok",1064941)
!StateCheck("Sarevok",STATE_CONFUSED)
Alignment("Sarevok",MASK_EVIL)~ THEN REPLY @50093 DO ~SetGlobal("TethyrBattleStart","GLOBAL",1)
Enemy()
Shout(125)~ EXTERN SAREV25J JT_INTERJECT_3
  IF ~~ THEN REPLY @50097 GOTO C19
  IF ~~ THEN REPLY @50089 GOTO C17_2
END

IF ~~ THEN BEGIN C19
  SAY @500100
  IF ~OR(4)
!InParty("Sarevok")
StateCheck("Sarevok",1064941)
StateCheck("Sarevok",STATE_CONFUSED)
!Alignment("Sarevok",MASK_EVIL)~ THEN REPLY @50093 DO ~SetGlobal("TethyrBattleStart","GLOBAL",1)
Enemy()
Shout(125)~ GOTO A7
IF ~InParty("Sarevok")
!StateCheck("Sarevok",1064941)
!StateCheck("Sarevok",STATE_CONFUSED)
Alignment("Sarevok",MASK_EVIL)~ THEN REPLY @50093 DO ~SetGlobal("TethyrBattleStart","GLOBAL",1)
Enemy()
Shout(125)~ EXTERN SAREV25J JT_INTERJECT_3
  IF ~~ THEN REPLY @50089 GOTO C17_2
END

IF ~~ THEN BEGIN C20
  SAY @500101
  IF ~InParty("Sarevok")
!Dead("Sarevok")~ THEN REPLY @500102 GOTO C21
  IF ~OR(2)
!InParty("Sarevok")
Dead("Sarevok")~ THEN REPLY @500102 GOTO C22
END

IF ~~ THEN BEGIN C21
  SAY @500103
      =
      @500104
  IF ~~ THEN DO ~SetGlobal("TethyrBattleStart","GLOBAL",1)
Enemy()
Shout(125)~ EXIT
END

IF ~~ THEN BEGIN C22
  SAY @500105
  IF ~OR(4)
!InParty("Sarevok")
StateCheck("Sarevok",1064941)
StateCheck("Sarevok",STATE_CONFUSED)
!Alignment("Sarevok",MASK_EVIL)~ THEN REPLY @500106 DO ~SetGlobal("TethyrBattleStart","GLOBAL",1)
Enemy()
Shout(125)~ GOTO A7
IF ~InParty("Sarevok")
!StateCheck("Sarevok",1064941)
!StateCheck("Sarevok",STATE_CONFUSED)
Alignment("Sarevok",MASK_EVIL)~ THEN REPLY @500106 DO ~SetGlobal("TethyrBattleStart","GLOBAL",1)
Enemy()
Shout(125)~ EXTERN SAREV25J JT_INTERJECT_3
  IF ~~ THEN REPLY @50089 GOTO C23
END

IF ~~ THEN BEGIN C23
  SAY @50094
  IF ~~ THEN REPLY @50076 GOTO C12
  IF ~~ THEN REPLY @50077 GOTO C13
  IF ~GlobalGT("MakeStatue","GLOBAL",0)~ THEN REPLY @50078 GOTO C14
  IF ~GlobalGT("DemoGorgonIsDead","GLOBAL",0)~ THEN REPLY @50079 GOTO C15
  IF ~GlobalGT("HelmRitualDone","GLOBAL",0)~ THEN REPLY @50095 GOTO C15
END

IF ~~ THEN BEGIN D1
  SAY @500107
      =
      @500108
  IF ~~ THEN REPLY @500109 GOTO D4
  IF ~~ THEN REPLY @500110 GOTO D3
END

IF ~~ THEN BEGIN D2
  SAY @500111
      =
      @500112
  IF ~~ THEN REPLY @500109 GOTO D4
  IF ~~ THEN REPLY @500110 GOTO D3
END

IF ~~ THEN BEGIN D3
  SAY @500113
  IF ~~ THEN REPLY @500109 GOTO D4
  IF ~~ THEN REPLY @500114 GOTO D5
END

IF ~~ THEN BEGIN D4
  SAY @500115
  IF ~~ THEN DO ~SetGlobal("TethyrBattleStart","GLOBAL",1)
Enemy()
Shout(125)~ EXIT
END

IF ~~ THEN BEGIN D5
  SAY @500116
  IF ~~ THEN REPLY @500117 GOTO D6
  IF ~~ THEN REPLY @500118 GOTO D7
  IF ~~ THEN REPLY @500109 GOTO D4
END

IF ~~ THEN BEGIN D6
  SAY @500119
  IF ~~ THEN DO ~SetGlobal("TethyrBattleStart","GLOBAL",2)
AddXPObject(Player1,21500)
AddXPObject(Player2,21500)
AddXPObject(Player3,21500)
AddXPObject(Player4,21500)
AddXPObject(Player5,21500)
AddXPObject(Player6,21500)
ChangeEnemyAlly(Myself,NEUTRAL)~ EXIT
END

IF ~~ THEN BEGIN D7
  SAY @500120
  IF ~~ THEN DO ~SetGlobal("TethyrBattleStart","GLOBAL",1)
Enemy()
Shout(125)~ EXIT
END

IF ~~ THEN BEGIN E1
  SAY @500121
  IF ~~ THEN REPLY @500122 GOTO E2
  IF ~~ THEN REPLY @50054 GOTO E3
END

IF ~~ THEN BEGIN E2
  SAY @500123
      =
      @500124

  IF ~~ THEN REPLY @500125 GOTO E3

  IF ~Class(Player1,PALADIN_ALL)
!FallenPaladin(Player1)
InParty("Keldorn")
!StateCheck("Keldorn",1064941)
!StateCheck("Keldorn",STATE_CONFUSED)
OR(2)
ReputationGT(Player1,14)
GlobalGT("d0virtue","GLOBAL",0)
OR(2)
GlobalGT("d0virtue","GLOBAL",14)
!GlobalGT("d0virtue","GLOBAL",0)~ THEN REPLY @500126 EXTERN KELDO25J JT_INTERJECT_5
  IF ~GlobalGT("d0virtue","GLOBAL",0)
Class(Player1,PALADIN_ALL)
!FallenPaladin(Player1)
OR(4)
!InParty("Keldorn")
StateCheck("Keldorn",1064941)
StateCheck("Keldorn",STATE_CONFUSED)
GlobalLT("d0virtue","GLOBAL",15)~ THEN REPLY @500126 GOTO C9
  IF ~!GlobalGT("d0virtue","GLOBAL",0)
Class(Player1,PALADIN_ALL)
!FallenPaladin(Player1)
OR(4)
!InParty("Keldorn")
StateCheck("Keldorn",1064941)
StateCheck("Keldorn",STATE_CONFUSED)
ReputationLT(Player1,15)~ THEN REPLY @500126 GOTO C9

  IF ~Global("PlayerHasStronghold","GLOBAL",1)
Class(Player1,PALADIN_ALL)
!FallenPaladin(Player1)
InParty("Keldorn")
!StateCheck("Keldorn",1064941)
!StateCheck("Keldorn",STATE_CONFUSED)
OR(2)
ReputationGT(Player1,14)
GlobalGT("d0virtue","GLOBAL",0)
OR(2)
GlobalGT("d0virtue","GLOBAL",14)
!GlobalGT("d0virtue","GLOBAL",0)~ THEN REPLY @500127 EXTERN KELDO25J JT_INTERJECT_6
  IF ~Global("PlayerHasStronghold","GLOBAL",1)
GlobalGT("d0virtue","GLOBAL",0)
Class(Player1,PALADIN_ALL)
!FallenPaladin(Player1)
OR(4)
!InParty("Keldorn")
StateCheck("Keldorn",1064941)
StateCheck("Keldorn",STATE_CONFUSED)
GlobalLT("d0virtue","GLOBAL",15)~ THEN REPLY @500127 GOTO C10
  IF ~Global("PlayerHasStronghold","GLOBAL",1)
!GlobalGT("d0virtue","GLOBAL",0)
Class(Player1,PALADIN_ALL)
!FallenPaladin(Player1)
OR(4)
!InParty("Keldorn")
StateCheck("Keldorn",1064941)
StateCheck("Keldorn",STATE_CONFUSED)
ReputationLT(Player1,15)~ THEN REPLY @500127 GOTO C10

  IF ~Kit(Player1,16405)~ THEN REPLY @500128 GOTO C9
  IF ~Kit(Player1,16404)~ THEN REPLY @500129 GOTO C9

  IF ~~ THEN REPLY @500130 GOTO C11

END

IF ~~ THEN BEGIN E3
  SAY @500131
  IF ~~ THEN DO ~SetGlobal("TethyrBattleStart","GLOBAL",4)
SetGlobal("d0divineintent","LOCALS",1)
ClearAllActions()
StartCutSceneMode()
Wait(1)
ForceSpellRES("d0oasis9","CVSandr")
Wait(1)
EndCutSceneMode()
StartDialogNoSet(Player1)~ EXIT
END


IF ~Global("d0divineintent","LOCALS",1)
Alignment("CVSandr",MASK_EVIL)
!Alignment("CVSandr",CHAOTIC_NEUTRAL)~ THEN BEGIN F1
  SAY @500132
  IF ~~ THEN DO ~SetGlobal("d0divineintent","LOCALS",2)
SetGlobal("TethyrBattleStart","GLOBAL",1)
Enemy()
Shout(125)~ EXIT
END

IF ~Global("d0divineintent","LOCALS",1)
!Alignment("CVSandr",MASK_EVIL)
!Alignment("CVSandr",CHAOTIC_NEUTRAL)~ THEN BEGIN F2
  SAY @500133
      =
      @500112
  IF ~~ THEN DO ~SetGlobal("d0divineintent","LOCALS",2)~ REPLY @500109 GOTO D4
  IF ~~ THEN DO ~SetGlobal("d0divineintent","LOCALS",2)~ REPLY @500110 GOTO D3
END

IF ~Global("d0divineintent","LOCALS",1)
Alignment("CVSandr",CHAOTIC_NEUTRAL)~ THEN BEGIN F3
  SAY @500134
  IF ~~ THEN DO ~SetGlobal("d0divineintent","LOCALS",2)
SetGlobal("TethyrBattleStart","GLOBAL",1)
Enemy()
Shout(125)~ EXIT
END

IF ~Global("TethyrBattleStart","GLOBAL",3)~ THEN BEGIN G1
  SAY @500135
  IF ~~ THEN EXIT
END

APPEND MINSC25J
IF ~~ THEN BEGIN JT_INTERJECT_1
  SAY @500136
  IF ~~ THEN EXTERN AMTGEN01 A1
END
END

APPEND SAREV25J
IF ~~ THEN BEGIN JT_INTERJECT_2
  SAY @500137
  IF ~~ THEN EXTERN AMTGEN01 A5
END

IF ~~ THEN BEGIN JT_INTERJECT_3
  SAY @500138
      =
      @500139
  IF ~~ THEN DO ~SetGlobal("TethyrBattleStart","GLOBAL",1)~ EXIT
END
END

APPEND IMOEN25J
IF ~~ THEN BEGIN JT_INTERJECT_4
  SAY @500140
  IF ~~ THEN EXTERN AMTGEN01 C5
END
END

APPEND KELDO25J
IF ~~ THEN BEGIN JT_INTERJECT_5
  SAY @500141
  IF ~~ THEN EXTERN AMTGEN01 C9
END

IF ~~ THEN BEGIN JT_INTERJECT_6
  SAY @500142
  IF ~~ THEN EXTERN AMTGEN01 C10
END
END

BEGIN ~D0ARMY~

IF ~OR(2)
Class(Myself,MAGE_ALL)
Class(Myself,CLERIC_ALL)~ THEN BEGIN H1
  SAY @500143
  IF ~~ THEN EXIT
END

IF ~!Class(Myself,MAGE_ALL)
!Class(Myself,CLERIC_ALL)~ THEN BEGIN H2
  SAY @500144
  IF ~~ THEN EXIT
END
