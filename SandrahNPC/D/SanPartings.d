APPEND BranwP
IF WEIGHT #-8~InParty("CVSandr") Global("IWasKickedOut","LOCALS",0)GlobalLT("ENDOFBG1","GLOBAL",2) !Global("SanBranJoined","GLOBAL",0)~ THEN BEGIN PartSanBG1
SAY@0
=@1
IF~~THEN DO~SetGlobal("IWasKickedOut","LOCALS",1)EscapeAreaMove("BG4802",242,500,12)~EXIT
END
END

APPEND  CORANP
IF WEIGHT #-1~Global("KickedOut","LOCALS",3)~SanRetBabe
SAY @2
IF~~THEN DO~SetGlobal("KickedOut","LOCALS",0) JoinParty()~EXIT
END

IF WEIGHT #-2 ~GlobalLT("ENDOFBG1","GLOBAL",2)InParty("CVSandr")GlobalGT("P#CoranMoves","GLOBAL",0) GlobalGT("SanCorbabe","GLOBAL",9) GlobalLT("SanCorbabe","GLOBAL",13)~THEN BEGIN RejoinSanbab
SAY@3
IF~~THEN REPLY@4GOTO 13
IF~~THEN REPLY@5EXIT
END
END

ADD_STATE_TRIGGER FaldoP 3
~!InParty("CVSandr")~

ADD_STATE_TRIGGER EldotP 1
~!InParty("CVSandr")~

ADD_STATE_TRIGGER EldotP 0
~!InParty("CVSandr")~

CHAIN
IF WEIGHT #-3~InParty("CVSandr") Global("KickedOut","LOCALS",0) GlobalLT("Chapter","Global",8)~THEN SafanP Withsan
@6
END
++@7+ Withsan1
++@8+ Withsan2

CHAIN
IF~~THEN SafanP Withsan1
@9
DO~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("BG4809",400,230,7)~EXIT

CHAIN
IF~~THEN SafanP Withsan2
@10
DO~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("BG4809",400,230,7)~EXIT

CHAIN
IF WEIGHT #-3~InParty("Skie") InParty("CVSandr") GlobalLT("ENDOFBG1","GLOBAL",2) Global("IWasKickedOut","LOCALS",0) GlobalGT("RansomTaken","GLOBAL",1)~THEN EldotP SkiRes1
@11
==SkieJ@12
==EldotP@13
==SkieJ@14
==EldotP@15DO~EscapeAreaMove("BG0705",873,377,0)~EXIT

ADD_STATE_TRIGGER AJANTP 3
~!InParty("CVSandr")~

ADD_STATE_TRIGGER AJANTP 4
~InParty("CVSandr")~
ADD_TRANS_TRIGGER AJANTP 4
~!InParty("CVSandr")~

EXTEND_BOTTOM  AJANTP 4
IF~~THEN REPLY@16EXTERN AJANTP Sanhere
IF~~THEN REPLY@17EXTERN AJANTP SanFA
IF~~THEN REPLY@18EXTERN AJANTP SanNa
IF~~THEN REPLY@19EXTERN AJANTP SanBE
END

APPEND AJANTP 
IF ~!InParty("CVSandr") Global("KickedOut","LOCALS",0) GlobalLT("ENDOFBG1","GLOBAL",2)~THEN BEGIN 21
SAY@20
IF~~THEN DO~SetGlobal("KickedOut","LOCALS",1)~EXIT
END

IF~~THEN BEGIN Sanhere
SAY@21
IF~~THEN DO~SetGlobal("KickedOut","LOCALS",1)~EXIT
END

IF~~THEN BEGIN SanFA
SAY@22
IF~~THEN DO~SetGlobal("KickedOut","LOCALS",1)EscapeAreaMove("BG2301",766,966,0)~EXIT
END

IF~~THEN BEGIN SanNa
SAY@22
IF~~THEN DO~SetGlobal("KickedOut","LOCALS",1)EscapeAreaMove("BG4801",602,463,0)~EXIT
END

IF~~THEN BEGIN SanBE
SAY@22
IF~~THEN DO~SetGlobal("KickedOut","LOCALS",1)EscapeAreaMove("BG0705",537,704,0)~EXIT
END
END

APPEND XANP
IF WEIGHT #-2 ~ GlobalLT("ENDOFBG1","GLOBAL",2) InParty("CVSandr") Global("IWasKickedOut","LOCALS",0) ~THEN BEGIN XanKickSan
SAY @23
IF ~~THEN REPLY  @24DO~ActionOverride("Xan",SetGlobal("IWasKickedOut","LOCALS",1)~GOTO San1
IF ~ Global("EnteredArmInn","GLOBAL",1)
!Global("IslandTravel","GLOBAL",1)
!Global("Teth","GLOBAL",1)
!Global("Teth","GLOBAL",2)
!AreaCheck("BG5101")
!AreaCheck("BG5102")
!AreaCheck("BG0506")
!AreaCheck("BG0507")
!AreaCheck("BG0508")
!AreaCheck("BG0509")
!AreaCheck("BG0512")
!AreaCheck("BG0513")
!AreaCheck("BG0514")
!AreaCheck("BG0515")
!AreaCheck("BG0516")
!AreaCheck("BG1008")
!AreaCheck("BG1009")
~THEN REPLY @25DO~ActionOverride("Xan",SetGlobal("IWasKickedOut","LOCALS",1)~GOTO San2
IF ~ GlobalGT("Chapter","GLOBAL",2)
!Global("IslandTravel","GLOBAL",1)
!Global("Teth","GLOBAL",1)
!Global("Teth","GLOBAL",2)
!AreaCheck("BG5101")
!AreaCheck("BG5102")
!AreaCheck("BG0506")
!AreaCheck("BG0507")
!AreaCheck("BG0508")
!AreaCheck("BG0509")
!AreaCheck("BG0512")
!AreaCheck("BG0513")
!AreaCheck("BG0514")
!AreaCheck("BG0515")
!AreaCheck("BG0516")
!AreaCheck("BG1008")
!AreaCheck("BG1009")
~THEN REPLY @26DO~ActionOverride("Xan",SetGlobal("IWasKickedOut","LOCALS",1)~GOTO San3
  IF ~ Global("EnteredBeregost","GLOBAL",1)
!Global("IslandTravel","GLOBAL",1)
!Global("Teth","GLOBAL",1)
!Global("Teth","GLOBAL",2)
!AreaCheck("BG5101")
!AreaCheck("BG5102")
!AreaCheck("BG0506")
!AreaCheck("BG0507")
!AreaCheck("BG0508")
!AreaCheck("BG0509")
!AreaCheck("BG0512")
!AreaCheck("BG0513")
!AreaCheck("BG0514")
!AreaCheck("BG0515")
!AreaCheck("BG0516")
!AreaCheck("BG1008")
!AreaCheck("BG1009")
~THEN REPLY @27DO~ActionOverride("Xan",SetGlobal("IWasKickedOut","LOCALS",1)~GOTO San4
IF ~ !Global("Chapter","GLOBAL",7)
Global("EnteredBaldursGate","GLOBAL",1)
!Global("IslandTravel","GLOBAL",1)
!Global("Teth","GLOBAL",1)
!Global("Teth","GLOBAL",2)
!AreaCheck("BG5101")
!AreaCheck("BG5102")
!AreaCheck("BG0506")
!AreaCheck("BG0507")
!AreaCheck("BG0508")
!AreaCheck("BG0509")
!AreaCheck("BG0512")
!AreaCheck("BG0513")
!AreaCheck("BG0514")
!AreaCheck("BG0515")
!AreaCheck("BG0516")
!AreaCheck("BG1008")
!AreaCheck("BG1009")
~THEN REPLY @28DO~ActionOverride("Xan",SetGlobal("IWasKickedOut","LOCALS",1)~GOTO San5
END

IF~~THEN BEGIN San1
SAY@29
IF~~THEN EXIT
END

IF~~THEN BEGIN San2
SAY@30
IF~~THEN DO~EscapeAreaMove("BG2301",1178,738,0)~EXIT
END

IF~~THEN BEGIN San3
SAY@30
IF~~THEN DO~EscapeAreaMove("BG4801",531,392,0)~EXIT
END

IF~~THEN BEGIN San4
SAY@30
IF~~THEN DO~EscapeAreaMove("BG3304",860,965,0)~EXIT
END

IF~~THEN BEGIN San5
SAY@30
IF~~THEN DO~EscapeAreaMove("BG0705",702,736,0)~EXIT
END
END

APPEND KIVANP
IF WEIGHT #-2 ~ GlobalLT("ENDOFBG1","GLOBAL",2) InParty("CVSandr") Global("IWasKickedOut","LOCALS",0)
~THEN BEGIN KivKickSan
SAY @31
IF ~~THEN REPLY @32DO~ActionOverride("Kivan",SetGlobal("IWasKickedOut","LOCALS",1)~GOTO San13
IF ~ Global("EnteredArmInn","GLOBAL",1)
!Global("IslandTravel","GLOBAL",1)
!Global("Teth","GLOBAL",1)
!Global("Teth","GLOBAL",2)
!AreaCheck("BG5101")
!AreaCheck("BG5102")
!AreaCheck("BG0506")
!AreaCheck("BG0507")
!AreaCheck("BG0508")
!AreaCheck("BG0509")
!AreaCheck("BG0512")
!AreaCheck("BG0513")
!AreaCheck("BG0514")
!AreaCheck("BG0515")
!AreaCheck("BG0516")
!AreaCheck("BG1008")
!AreaCheck("BG1009")
~THEN REPLY @25DO~ActionOverride("Kivan",SetGlobal("IWasKickedOut","LOCALS",1)~GOTO San15
IF ~ GlobalGT("Chapter","GLOBAL",2)
!Global("IslandTravel","GLOBAL",1)
!Global("Teth","GLOBAL",1)
!Global("Teth","GLOBAL",2)
!AreaCheck("BG5101")
!AreaCheck("BG5102")
!AreaCheck("BG0506")
!AreaCheck("BG0507")
!AreaCheck("BG0508")
!AreaCheck("BG0509")
!AreaCheck("BG0512")
!AreaCheck("BG0513")
!AreaCheck("BG0514")
!AreaCheck("BG0515")
!AreaCheck("BG0516")
!AreaCheck("BG1008")
!AreaCheck("BG1009")
~THEN REPLY  @26DO~ActionOverride("Kivan",SetGlobal("IWasKickedOut","LOCALS",1)~GOTO San16
IF ~ Global("EnteredBeregost","GLOBAL",1)
!Global("IslandTravel","GLOBAL",1)
!Global("Teth","GLOBAL",1)
!Global("Teth","GLOBAL",2)
!AreaCheck("BG5101")
!AreaCheck("BG5102")
!AreaCheck("BG0506")
!AreaCheck("BG0507")
!AreaCheck("BG0508")
!AreaCheck("BG0509")
!AreaCheck("BG0512")
!AreaCheck("BG0513")
!AreaCheck("BG0514")
!AreaCheck("BG0515")
!AreaCheck("BG0516")
!AreaCheck("BG1008")
!AreaCheck("BG1009")
~THEN REPLY @27DO~ActionOverride("Kivan",SetGlobal("IWasKickedOut","LOCALS",1)~ GOTO San18
IF ~ !Global("Chapter","GLOBAL",7)
Global("EnteredBaldursGate","GLOBAL",1)
!Global("IslandTravel","GLOBAL",1)
!Global("Teth","GLOBAL",1)
!Global("Teth","GLOBAL",2)
!AreaCheck("BG5100")
!AreaCheck("BG5101")
!AreaCheck("BG5102")
!AreaCheck("BG0506")
!AreaCheck("BG0507")
!AreaCheck("BG0508")
!AreaCheck("BG0509")
!AreaCheck("BG0512")
!AreaCheck("BG0513")
!AreaCheck("BG0514")
!AreaCheck("BG0515")
!AreaCheck("BG0516")
!AreaCheck("BG1008")
!AreaCheck("BG1009")
~THEN REPLY @28DO~ActionOverride("Kivan",SetGlobal("IWasKickedOut","LOCALS",1)~ GOTO San17
END

IF~~THEN BEGIN San13
SAY@33
IF~~THEN EXIT
END

IF~~THEN BEGIN San15
SAY@34
IF~~THEN DO~EscapeAreaMove("BG2301",1070,663,0)~EXIT
END

IF~~THEN BEGIN San16
SAY@34
IF~~THEN DO~EscapeAreaMove("BG4801",260,307,0)~EXIT
END

IF~~THEN BEGIN San17
SAY@34
IF~~THEN DO~EscapeAreaMove("BG0705",686,843,0)~EXIT
END

IF~~THEN BEGIN San18
SAY@34
IF~~THEN DO~EscapeAreaMove("BG3304",730,1128,0)~EXIT
END
END

APPEND IF_FILE_EXISTS SUFINCHP
IF ~Global("SUFinchJoined","LOCALS",0) See(Player1) InParty("CVSandr") Global("LeftSan","GLOBAL",0)~THEN BEGIN HelloSanFi
SAY @35
IF~~THEN DO~SetGlobal("LeftSan","GLOBAL",1)~GOTO 3
END
END

APPEND SHARTP
IF WEIGHT #-2 ~Global("IWasKickedOut","LOCALS",2)~THEN BEGIN EarlyRet
SAY@36
IF~~THEN REPLY @37
EXIT
END

IF WEIGHT #-3 ~Global("KickedOut","LOCALS",3)~THEN BEGIN SanSharGorBirth
SAY @38
IF ~~THEN EXIT
END
END

APPEND Viconp
IF WEIGHT #-2 ~ GlobalLT("ENDOFBG1","GLOBAL",2) InParty("CVSandr") Global("IWasKickedOut","LOCALS",0)
~THEN BEGIN VicKickSan
SAY@39
IF ~~THEN REPLY @40GOTO 218
  IF ~~THEN REPLY @41GOTO 117
  IF ~InParty("CVSandr") Global("EnteredArmInn","GLOBAL",1)
!Global("IslandTravel","GLOBAL",1)
!Global("Teth","GLOBAL",1)
!Global("Teth","GLOBAL",2)
!AreaCheck("BG0506")
!AreaCheck("BG0507")
!AreaCheck("BG0508")
!AreaCheck("BG0509")
!AreaCheck("BG0512")
!AreaCheck("BG0513")
!AreaCheck("BG0514")
!AreaCheck("BG0515")
!AreaCheck("BG0516")
!AreaCheck("BG1008")
!AreaCheck("BG1009")
~THEN REPLY @25 GOTO 120
  IF ~InParty("CVSandr") GlobalGT("Chapter","GLOBAL",2)
!Global("IslandTravel","GLOBAL",1)
!Global("Teth","GLOBAL",1)
!Global("Teth","GLOBAL",2)
!AreaCheck("BG0506")
!AreaCheck("BG0507")
!AreaCheck("BG0508")
!AreaCheck("BG0509")
!AreaCheck("BG0512")
!AreaCheck("BG0513")
!AreaCheck("BG0514")
!AreaCheck("BG0515")
!AreaCheck("BG0516")
!AreaCheck("BG1008")
!AreaCheck("BG1009")
~THEN REPLY  @26 GOTO 121
  IF ~InParty("CVSandr") Global("EnteredBeregost","GLOBAL",1)
!Global("IslandTravel","GLOBAL",1)
!Global("Teth","GLOBAL",1)
!Global("Teth","GLOBAL",2)
!AreaCheck("BG0506")
!AreaCheck("BG0507")
!AreaCheck("BG0508")
!AreaCheck("BG0509")
!AreaCheck("BG0512")
!AreaCheck("BG0513")
!AreaCheck("BG0514")
!AreaCheck("BG0515")
!AreaCheck("BG0516")
!AreaCheck("BG1008")
!AreaCheck("BG1009")
~THEN REPLY  @27GOTO 123
  IF ~InParty("CVSandr") !Global("Chapter","GLOBAL",7)
Global("EnteredBaldursGate","GLOBAL",1)
!Global("IslandTravel","GLOBAL",1)
!Global("Teth","GLOBAL",1)
!Global("Teth","GLOBAL",2)
!AreaCheck("BG0506")
!AreaCheck("BG0507")
!AreaCheck("BG0508")
!AreaCheck("BG0509")
!AreaCheck("BG0512")
!AreaCheck("BG0513")
!AreaCheck("BG0514")
!AreaCheck("BG0515")
!AreaCheck("BG0516")
!AreaCheck("BG1008")
!AreaCheck("BG1009")
~THEN REPLY  @28 GOTO 122
END

IF~~THEN BEGIN 117
SAY@42
IF~~THEN DO~SetGlobal("IWasKickedOut","LOCALS",0) JoinParty() ~EXIT
END

IF~~THEN BEGIN 218
SAY@43
IF~~THEN DO~SetGlobal("IWasKickedOut","LOCALS",1) ~EXIT
END

IF~~THEN BEGIN 120
SAY@44
IF~~THEN DO~SetGlobal("IWasKickedOut","LOCALS",1) EscapeAreaMove("BG2301",789,759,0)~EXIT
END

IF~~THEN BEGIN 121
SAY@44
IF~~THEN DO~SetGlobal("IWasKickedOut","LOCALS",1) EscapeAreaMove("BG4801",444,505,0)~EXIT
END

IF~~THEN BEGIN 122
SAY@44
IF~~THEN DO~SetGlobal("IWasKickedOut","LOCALS",1) EscapeAreaMove("BG0705",745,674,0)~EXIT
END

IF~~THEN BEGIN 123
SAY@44
IF~~THEN DO~SetGlobal("IWasKickedOut","LOCALS",1) EscapeAreaMove("BG3304",800,1085,0)~EXIT
END
END

//BGII SoA

ADD_TRANS_TRIGGER MazzyP 33
~!InParty("CVSandr")~

EXTEND_BOTTOM MazzyP 33
IF ~InParty("CVSandr")~THEN REPLY @45DO~JoinParty()~EXIT
IF ~InParty("CVSandr")~THEN REPLY @46GOTO 6
END

ADD_TRANS_TRIGGER IMOENP_ 0
~!InParty("CVSandr")~

EXTEND_BOTTOM   IMOENP_ 0
IF~InParty("CVSandr") ~THEN REPLY@47DO~SetGlobal("KickedOut","LOCALS",0)
ActionOverride("IMOEN2",JoinParty())~EXIT
IF~InParty("CVSandr") GlobalGT("SanImoRetWD","GLOBAL",3)~ THEN REPLY@48EXTERN CVSandrJ ImoSendWDSHP
IF~InParty("CVSandr") GlobalLT("SanImoRetWD","GLOBAL",4)~ THEN REPLY@48DO~SetGlobal("KickedOut","LOCALS",1)
ChangeAIScript("",DEFAULT)~EXIT
END

CHAIN
IF~~THEN  CVSandrJ ImoSendWDSHP
@49
==IMOENP_@50
==CVSandrJ@51
==IMOENP_@52
DO ~ActionOverride("Imoen2",SetGlobal("KickedOut","LOCALS",1)) ActionOverride("Imoen2",SetDialogue("IMOENP_")) ActionOverride("Imoen2",EscapeAreaMove("cvebs1",459,300,12))
~EXIT

