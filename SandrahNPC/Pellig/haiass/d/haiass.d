BEGIN ~haiass~

IF ~NumTimesTalkedTo(0) AreaCheck("bg2300")~
THEN BEGIN PrimerEncuentro
  SAY @0
  IF ~~ THEN REPLY @1 DO ~SetGlobal("HaiassMiedo","GLOBAL",0) TakePartyItem("silhai") DestroyItem("silhai") GiveItemCreate("silhai",Player1,0,0,0)~ GOTO Contento
  IF ~~ THEN REPLY @2 DO ~SetGlobal("HaiassMiedo","GLOBAL",1) TakePartyItem("silhai") DestroyItem("silhai") GiveItemCreate("silhai",Player1,0,0,0)~ GOTO Triste
  IF ~!InParty("CVSandr")~ THEN REPLY @3 DO ~TakePartyItem("silhai") DestroyItem("silhai") GiveItemCreate("silhai",Player1,0,0,0)~ GOTO Adios
END

IF ~NumTimesTalkedTo(0) AreaCheck("AR0700")~
THEN BEGIN PrimerEncuentroSoA
  SAY @4
  IF ~~ THEN REPLY @5 DO ~SetGlobal("HaiassMiedo","GLOBAL",0) SetGlobal("HaiassDesdeBg","GLOBAL",0) TakePartyItem("silhai") DestroyItem("silhai") GiveItemCreate("silhai",Player1,0,0,0)~ GOTO Contento
  IF ~~ THEN REPLY @2 DO ~SetGlobal("HaiassMiedo","GLOBAL",1) SetGlobal("HaiassDesdeBg","GLOBAL",0) TakePartyItem("silhai") DestroyItem("silhai") GiveItemCreate("silhai",Player1,0,0,0)~ GOTO Triste
  IF ~!InParty("CVSandr")~ THEN REPLY @6 DO ~SetGlobal("HaiassDesdeBg","GLOBAL",0) TakePartyItem("silhai") DestroyItem("silhai") GiveItemCreate("silhai",Player1,0,0,0)~ GOTO Adios
END

IF ~NumTimesTalkedTo(0) AreaCheck("AR4500")~
THEN BEGIN PrimerEncuentroToB
  SAY @7
  IF ~~ THEN REPLY @8 DO ~TakePartyItem("silhai") DestroyItem("silhai") GiveItemCreate("silhai",Player1,0,0,0) SetGlobal("HaiassMiedo","GLOBAL",0) SetGlobal("HaiassSoA","GLOBAL",0)~ GOTO Contento
  IF ~~ THEN REPLY @2 DO ~TakePartyItem("silhai") DestroyItem("silhai") GiveItemCreate("silhai",Player1,0,0,0) SetGlobal("HaiassMiedo","GLOBAL",1) SetGlobal("HaiassSoA","GLOBAL",0)~ GOTO Triste
  IF ~!InParty("CVSandr")~ THEN REPLY @9 DO ~TakePartyItem("silhai") DestroyItem("silhai") GiveItemCreate("silhai",Player1,0,0,0) SetGlobal("HaiassSoA","GLOBAL",0)~ GOTO Adios
END

IF ~NumTimesTalkedTo(0) OR(6) AreaCheck("BG4800") AreaCheck("BG0900") AreaCheck("AR1100") AreaCheck("AR2800") AreaCheck("AR5202") AreaCheck("AR5505")~
THEN BEGIN PrimerEncuentroMejora
  SAY @10
  IF ~~ THEN DO ~~ EXIT
END

IF ~See(NearestEnemyOf(Protagonist))~ THEN BEGIN Lucha
  SAY @11
  IF ~~ THEN REPLY @12 DO ~SetGlobal("HaissHuye","GLOBAL",1)~ EXIT
  IF ~!Global("HaiassTactica","GLOBAL",1) !Global("HaiassTactica","GLOBAL",2) !Global("HaiassTactica","GLOBAL",4)~ THEN REPLY @13  EXIT
  IF ~Global("HaiassTactica","GLOBAL",1)~ THEN REPLY @14 EXIT
  IF ~Global("HaiassTactica","GLOBAL",2)~ THEN REPLY @15 EXIT
  IF ~Global("HaiassTactica","GLOBAL",4)~ THEN REPLY @16 EXIT
  IF ~~ THEN REPLY @17  GOTO Tactica
  IF ~ OR(3) PartyHasItem("POTN08") PartyHasItem("POTN52") PartyHasItem("POTN55")~ THEN REPLY@18 GOTO Pociones
END

IF ~CombatCounter(0)!Global("HaiassMiedo","GLOBAL",1)~
THEN BEGIN Bueno
  SAY @19
  IF ~~ THEN REPLY @20 DO ~SetGlobal("HaiassMiedo","GLOBAL",0)~ GOTO Contento
  IF ~~ THEN REPLY @21 DO ~SetGlobal("HaiassMiedo","GLOBAL",1)~ GOTO Triste
  IF ~!InParty("CVSandr")~ THEN REPLY @22 GOTO Adios
  IF ~Global("HaiassQuieto","GLOBAL",0)~  THEN REPLY @23 DO ~SetGlobal("HaiassMove","GLOBAL",1) SetGlobal("HaiassQuieto","GLOBAL",1) SetGlobal("HaiassJumpOn","GLOBAL",0)~ EXIT
  IF ~Global("HaiassQuieto","GLOBAL",1)~  THEN REPLY @24 DO ~SetGlobal("HaiassQuieto","GLOBAL",0) SetGlobal("HaiassJumpOn","GLOBAL",1) SetGlobal("HaiassMove","GLOBAL",1)~ EXIT
  IF ~ OR(3) PartyHasItem("POTN08") PartyHasItem("POTN52") PartyHasItem("POTN55")~ THEN REPLY@18 GOTO Pociones
  IF ~!InParty("CVSandr")~ THEN REPLY @25  GOTO Transporte
  IF ~~ THEN REPLY @17  GOTO Tactica
 END

IF ~CombatCounter(0)Global("HaiassMiedo","GLOBAL",1)~
THEN BEGIN Malo
  SAY @26
  IF ~~ THEN REPLY @20 DO ~SetGlobal("HaiassMiedo","GLOBAL",0)~ GOTO Contento
  IF ~~ THEN REPLY @21 DO ~SetGlobal("HaiassMiedo","GLOBAL",1)~ GOTO Triste
  IF ~~ THEN REPLY @22 GOTO Adios
  IF ~Global("HaiassQuieto","GLOBAL",0)~  THEN REPLY @23 DO ~SetGlobal("HaiassMove","GLOBAL",1) SetGlobal("HaiassQuieto","GLOBAL",1) SetGlobal("HaiassJumpOn","GLOBAL",0)~ EXIT
  IF ~Global("HaiassQuieto","GLOBAL",1)~  THEN REPLY @24 DO ~SetGlobal("HaiassQuieto","GLOBAL",0) SetGlobal("HaiassJumpOn","GLOBAL",1) SetGlobal("HaiassMove","GLOBAL",1)~ EXIT
  IF ~ OR(3) PartyHasItem("POTN08") PartyHasItem("POTN52") PartyHasItem("POTN55")~ THEN REPLY@18 GOTO Pociones
  IF ~!InParty("CVSandr")~ THEN REPLY @25  GOTO Transporte
  IF ~~ THEN REPLY @17  GOTO Tactica
END

IF ~~ THEN BEGIN Contento
  SAY @27
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN Triste
  SAY @28
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN Tactica
  SAY @29
  IF ~~ THEN REPLY @30 DO ~SetGlobal("HaiassTactica","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @31 DO ~SetGlobal("HaiassTactica","GLOBAL",0)~ EXIT
  IF ~~ THEN REPLY @32 DO ~SetGlobal("HaiassTactica","GLOBAL",2)~ EXIT
  IF ~~ THEN REPLY @33 DO ~SetGlobal("HaiassTactica","GLOBAL",3)~ EXIT
  IF ~~ THEN REPLY @34 DO ~SetGlobal("HaiassTactica","GLOBAL",4)~ EXIT
END

IF ~~ THEN BEGIN Pociones
  SAY @35
  IF ~PartyHasItem("POTN08")~ THEN REPLY @36 DO ~GiveItemCreate("potn08",Myself,1,0,0) UseItem("POTN08",Myself) TakePartyItemNum("potn08",1)~ EXIT
  IF ~PartyHasItem("POTN52")~ THEN REPLY @37 DO ~GiveItemCreate("potn52",Myself,1,0,0) UseItem("POTN52",Myself) TakePartyItemNum("potn52",1)~ EXIT
  IF ~PartyHasItem("POTN55")~ THEN REPLY @38 DO ~GiveItemCreate("potn55",Myself,1,0,0) UseItem("POTN55",Myself) TakePartyItemNum("potn55",1)~ EXIT
  IF ~~ THEN REPLY @39 EXIT
END

IF ~~ THEN BEGIN Adios
  SAY @40
  IF ~~ THEN REPLY @41 GOTO Contento
  IF ~~ THEN REPLY @42 GOTO Triste
  IF ~!InParty("CVSandr")~ THEN REPLY @43 DO ~SetGlobal("HaiassSeUne","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN Transporte
  SAY @44
  IF ~~ THEN REPLY @45 EXIT
  IF ~!Global("HaiassFueraCandelero","GLOBAL",1)
~ THEN REPLY @46 DO ~SetGlobal("HaiassQuieto","GLOBAL",1) SetGlobal("HaiassJumpOn","GLOBAL",0) EscapeAreaMove("BG2600",2827,1829,3)~ EXIT
  IF ~Global("HaiassMesonAmigo","GLOBAL",1)
~ THEN REPLY @47 DO ~SetGlobal("HaiassQuieto","GLOBAL",1) SetGlobal("HaiassJumpOn","GLOBAL",0) EscapeAreaMove("bg2300",1229,3250,3)~ EXIT
  IF  ~Global("HaiassPuertaBaldur","GLOBAL",1)
~ THEN REPLY @48 DO ~SetGlobal("HaiassQuieto","GLOBAL",1) SetGlobal("HaiassJumpOn","GLOBAL",0) EscapeAreaMove("BG0900",4304,3313,3)~ EXIT
  IF  ~Global("HaiassSoA","GLOBAL",1)
~ THEN REPLY @49 DO ~SetGlobal("HaiassQuieto","GLOBAL",1) SetGlobal("HaiassJumpOn","GLOBAL",0) EscapeAreaMove("AR0020",844,368,3)~ EXIT
  IF  ~Global("HaiassSoA","GLOBAL",2)
~ THEN REPLY @50 DO ~SetGlobal("HaiassQuieto","GLOBAL",1) SetGlobal("HaiassJumpOn","GLOBAL",0) CreateVisualEffectObject("SPDIMNDR",Myself) Wait(2) MoveBetweenAreas("AR4500",[2555.1426],0)~ EXIT
END
