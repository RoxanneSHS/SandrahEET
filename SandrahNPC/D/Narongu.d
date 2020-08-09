BEGIN NARONGU

// Naronguth Returns

IF ~Global("SanNarQ","GLOBAL",9) AreaCheck("CVRoa1") ~THEN BEGIN  NarRRet1
SAY @0
= @1
IF ~~THEN REPLY @2DO ~SetGlobal("SanNarQ","GLOBAL",10)~GOTO NarRRet2
END

IF ~~THEN BEGIN  NarRRet2
SAY @3
IF ~~THEN REPLY @4 GOTO NarRRet3
END

IF ~~THEN BEGIN  NarRRet3
SAY @5
= @6
IF ~PartyHasItem("Sandebo") ~THEN REPLY @7DO ~SetGlobal("NarSlipTr","CVRoa1",1) TakePartyItem("SanDeBo")EraseJournalEntry(@60127)AddExperienceParty(2000) ~EXIT
IF ~PartyHasItem("Sanetg") ~THEN REPLY @8DO ~SetGlobal("NarSlipFa","CVRoa1",1) TakePartyItem("SanEtg") AddExperienceParty(5000) EraseJournalEntry(@60127) ~EXIT
IF ~~THEN REPLY @9DO ~ChangeEnemyAlly("Narongu",ENEMY) Attack(Player1) ~EXIT
END

IF ~NumTimesTalkedTo(0)InMyArea("CVSandr")PartyHasItem("Scrlalz") AreaCheck("CVNar1")~THEN BEGIN FindAlz
SAY @10
IF ~~THEN REPLY @11GOTO FindAlz1
IF ~~THEN REPLY @12GOTO FindAlz1
END

IF ~~THEN BEGIN FindAlz1
SAY @13
= @14
IF ~~THEN REPLY @15 DO ~CreateItem("SANBOUL",0,0,0) DropItem("SANBOUL",[302.586])~GOTO FindAlz2
IF ~~THEN REPLY @16 DO ~CreateItem("SANBOUL",0,0,0) DropItem("SANBOUL",[302.586])~GOTO FindAlz2
END

IF ~~THEN BEGIN FindAlz2
SAY @17
IF ~~THEN EXTERN CVSANDRJ NarSanInt1
END

IF ~~THEN BEGIN Whisp1
SAY@18
= @19
= @20
= @21
= @22
IF ~~THEN REPLY @23DO~IncrementGlobal("Sanpoints","Global",1)~GOTO FindAlz4
IF ~~THEN REPLY @24GOTO FindAlz4
END

IF  ~~THEN BEGIN FindAlz4
SAY @25
= @26
= @27
= @28
= @29
= @30
IF ~~THEN REPLY @31GOTO AlzChoices
END

IF  ~~THEN BEGIN AlzChoices
SAY @32
IF ~Global("Alzhealth","GLOBAL",0)~THEN REPLY @33GOTO AlzHealth
IF ~~THEN REPLY @34DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~GOTO AlzTakeSan
IF ~~THEN REPLY @35DO~IncrementGlobal("Sanpoints","GLOBAL",-2)~GOTO AlzFight
IF ~~THEN REPLY @36DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO AlzDeal1
END

IF ~~THEN BEGIN AlzFight
SAY @37IF ~~THEN DO ~ChangeEnemyAlly("Narongu",ENEMY) Attack(Player1)~EXIT
END

IF  ~~THEN BEGIN AlzTakeSan
SAY @38
IF ~~THEN REPLY @39DO ~GiveItemCreate("SanParc","CVSandr",0,0,0) SetGlobal("SanparcT","GLOBAL",1) GiveItemCreate("SANDEBO","CVSandr",0,0,0) SetGlobal("SandrahJoined","GLOBAL",5) LeaveParty() CreateVisualEffectObject("SPDIMNDR","CVSandr") ActionOverride("CVSandr",EscapeAreaObjectMove("BG3402","Tran3001a",270,497,0)) ~GOTO ImoCommAlz
IF ~~THEN REPLY @40GOTO AlzAtt
IF ~~THEN REPLY @36GOTO
AlzDeal1
END

IF ~~THEN BEGIN  ImoCommAlz
SAY @41
IF ~InParty("Imoen2") ~THEN EXTERN IMOEN2_ ImoNarong
IF ~!InParty("Imoen2") ~THEN EXIT
END


IF ~~THEN BEGIN AlzAtt
SAY @42
IF ~~THEN REPLY @43GOTO Recons
IF ~~THEN REPLY @44GOTO AlzFight
END

IF ~~THEN BEGIN Recons
SAY @45
IF ~~THEN REPLY @36GOTO AlzDeal1
END

IF ~~THEN BEGIN AlzHealth
SAY @46
IF ~~THEN REPLY @47DO ~SetGlobal("Alzhealth","GLOBAL",1) ~GOTO AlzChoices
END

IF  ~~ THEN BEGIN AlzDeal1
SAY @48
= @49
IF ~~THEN REPLY @50GOTO AlzDeal2
IF ~~THEN REPLY @51GOTO DealFail
END

IF  ~~THEN BEGIN DealFail
SAY @52
IF ~~THEN REPLY @34DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~GOTO AlzTakeSan2
IF ~~THEN REPLY @35DO~IncrementGlobal("Sanpoints","GLOBAL",-2)~GOTO AlzFight
END

IF  ~~THEN BEGIN AlzTakeSan2
SAY @38
IF ~~THEN REPLY @39DO ~GiveItemCreate("SanParc","CVSandr",0,0,0) SetGlobal("SanparcT","GLOBAL",1) GiveItemCreate("SANDEBO","CVSandr",0,0,0) SetGlobal("SandrahJoined","GLOBAL",5) LeaveParty() CreateVisualEffectObject("SPDIMNDR","CVSandr") ActionOverride("CVSandr",EscapeAreaMove("BG3402",270,497,0)) ~EXIT
IF ~~THEN REPLY @40GOTO AlzFight
END

IF  ~~THEN BEGIN AlzDeal2
SAY @53
IF ~~THEN EXTERN CVSANDRJ NarSanInt2
END

IF ~~THEN BEGIN DealDone
SAY@54
= @55
= @56
IF ~~THEN REPLY @57DO ~GiveItemCreate("DEMSCR","CVSandr",0,0,0) AddJournalEntry(@60042,QUEST) ~EXIT
END

// End First Part
IF ~NumTimesTalkedToGT(0) Global("SanNarQ","GLOBAL",1)~THEN BEGIN AlzOut
SAY @58
IF ~~THEN DO ~SetGlobal("SanNarQ","GLOBAL",2) ~EXIT
END

//
// End First Part
//

IF ~Global("SanNarQ","GLOBAL",5) ~THEN BEGIN HomeRun1
SAY @59
IF~PartyHasItem("AlzaHrt2")~THEN REPLY @60DO ~TakePartyItem("AlzaHrt2") ~GOTO HomeRun2
IF~PartyHasItem("AlzaHrt1")~THEN REPLY @61DO ~TakePartyItem("AlzaHrt1")~GOTO  HomeRun2
END

IF ~~THEN BEGIN HomeRun2
SAY@62
= @63
= @64
= @65
IF ~~THEN REPLY @66GOTO HomeRun4
IF ~~THEN REPLY @67GOTO HomeRun4
IF ~~THEN REPLY @68GOTO HomeRun4
END

IF ~~THEN BEGIN HomeRun4
SAY@69
= @70
IF ~~THEN REPLY @71GOTO AlzFight
IF ~~THEN REPLY @72DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO GoToHell
IF ~~THEN REPLY @73GOTO DealIsDeal
END

IF ~~THEN BEGIN  GoToHell
SAY @74
IF ~~THEN EXTERN CVSANDRJ NarSanInt3
END

IF ~~THEN BEGIN  DealIsDeal
SAY @75
IF ~~THEN DO ~ChangeEnemyAlly("Narongu",ENEMY) Attack(Player1)  ~EXIT
END

IF ~~THEN BEGIN  GoToHell2
SAY @76
= @77
= @78
= @79
= @80
= @81
IF ~~THEN DO ~ ClearAllActions()
                 SmallWait(2)
                 StartCutSceneMode()
                 CreateVisualEffectObject("SPDIMNDR","Narongu")
                 CreateItem("Sandebo",0,0,0) DropItem("Sandebo",[502.586])
                CreateItem("EShard",0,0,0) DropItem("EShard",[507.591])
                CreateItem("BOW16",0,0,0) DropItem("BOW16",[511.566])
                CreateItem("HELMDEM",0,0,0) DropItem("HELMDEM",[500.576])
                SetGlobal("SanNarQ","GLOBAL",6)
                SetGlobal("NarHellAfter","GLOBAL",1)
                AddJournalEntry(@60067,INFO)
                Wait(5)
                EndCutSceneMode()
                ActionOverride("Narongu",ForceSpell(Myself,DRYAD_TELEPORT))
                DisplayStringHead("CVSandr",@60066) ~EXIT
END
//

// Narongu and Drizzt

CHAIN
IF~Global("SanDriDrowAmb","GLOBAL",3)~THEN NARONGU NarDrzt1
@82
DO ~SetGlobal("SanDriDrowAmb","GLOBAL",4)~
== BSANDR @83
= @84
== F_DRIZTJ@85
== BSANDR @86
== NARONGU@87
== BSANDR @88
== NARONGU@89DO ~ChangeEnemyAlly("Narongu",ENEMY) Attack("CVSandr") ~EXIT

//Narongu Final in Nine Hells - Haer'Dalis
CHAIN
IF~Global("SanHaerRel1","GLOBAL",33)Global("NarFinal","CVHel1",0)~THEN NARONGU HaerHel1
@90
DO~SetGlobal("NarFinal","CVHel1",1)~
== BSANDR @91
== NARONGU@92
== BSANDR @93
== NARONGU@94
== BSANDR @95
== NARONGU@96DO~ApplyDamage(Myself,286,CRUSHING) Enemy()~EXIT

// Others

APPEND IMOEN2_

IF ~~THEN BEGIN ImoNarong
SAY @97IF ~~THEN EXIT
END
END

APPEND CVSANDRJ

IF~~THEN BEGIN NarSanInt1
SAY @98IF ~~THEN EXTERN NARONGU Whisp1
END

IF~~THEN BEGIN NarSanInt2
SAY @99IF ~~THEN  EXTERN NARONGU DealDone
END

IF ~~THEN BEGIN NarSanInt3
SAY @100
= @101IF ~~THEN EXTERN NARONGU GoToHell2
END
END
