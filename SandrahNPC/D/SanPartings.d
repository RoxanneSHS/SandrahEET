APPEND BranwP
IF WEIGHT #-8~InParty("CVSandr") Global("IWasKickedOut","LOCALS",0)GlobalLT("ENDOFBG1","GLOBAL",2) !Global("SanBranJoined","GLOBAL",0)~ THEN BEGIN PartSanBG1
SAY~We have fought well and we have fought bravely. Tempus willing, perhaps I will fight at your side again someday. ~
=~I will go to contemplate and pray at Nashkel's temple. Farewell.~
IF~~THEN DO~SetGlobal("IWasKickedOut","LOCALS",1)EscapeAreaMove("BG4802",242,500,12)~EXIT
END
END

APPEND  CORANP
IF WEIGHT #-1~Global("KickedOut","LOCALS",3)~SanRetBabe
SAY ~Ah, old friends made new again.  A pairing that cannot be beaten.~
IF~~THEN DO~SetGlobal("KickedOut","LOCALS",0) JoinParty()~EXIT
END

IF WEIGHT #-2 ~GlobalLT("ENDOFBG1","GLOBAL",2)InParty("CVSandr")GlobalGT("P#CoranMoves","GLOBAL",0) GlobalGT("SanCorbabe","GLOBAL",9) GlobalLT("SanCorbabe","GLOBAL",13)~THEN BEGIN RejoinSanbab
SAY~Oh, my kitten, you came for me again! <CHARNAME>, shall we renew our partnership and travel together?~
IF~~THEN REPLY~Your company was missed by all, but especially by one. Welcome back to the group.~GOTO 13
IF~~THEN REPLY~I've no need of your services quite yet. Perhaps in the future, but not now.~EXIT
END
END

ADD_STATE_TRIGGER SafanP 0
~!InParty("CVSandr")~

ADD_STATE_TRIGGER FaldoP 3
~!InParty("CVSandr")~

ADD_STATE_TRIGGER EldotP 1
~!InParty("CVSandr")~

ADD_STATE_TRIGGER EldotP 0
~!InParty("CVSandr")~

CHAIN
IF WEIGHT #-3~InParty("CVSandr") Global("KickedOut","LOCALS",0)~THEN SafanP Withsan
~Can I not stay with you, even a little longer? Our time together has been... quite enjoyable. Ah well, perhaps we shall meet again.~
END
++~Our paths have to separate right now, but they will cross again one of these days. I might seek your help again soon. Let us set up a meeting place somewhere along the Sword Coast.~+ Withsan1
++~Safana, I do not want to part ways with you forever. Just wait for me here. I will return for you when I need your help again.~+ Withsan2

CHAIN
IF~~THEN SafanP Withsan1
~Fine. You can try looking for me in Nashkel's Belching Dragon. Not that I promise to be there, mind you.~
DO~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("BG4809",400,230,7)~EXIT

CHAIN
IF~~THEN SafanP Withsan2
~No, <CHARNAME>. I shall definitely not wait for you here. This place is too dangerous to linger in alone. You can try looking for me in Nashkel's Belching Dragon. Not that I promise to be there, mind you.~
DO~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("BG4809",400,230,7)~EXIT

CHAIN
IF WEIGHT #-3~InParty("Skie") InParty("CVSandr") GlobalLT("ENDOFBG1","GLOBAL",2) Global("IWasKickedOut","LOCALS",0) GlobalGT("RansomTaken","GLOBAL",1)~THEN EldotP SkiRes1
~I would rather travel alone than spend a second more with you boorish oafs.  Goodbye, and good riddance.  Come along, Skie. ~
==SkieJ~I'd rather...No. There is something we should discuss.~
==EldotP~Not now, darling, come along, away from these people, I command.~
==SkieJ~There have been more and more hints for me that you don't care about me? That you're only after my money? ~
==EldotP~Frankly, I'll be glad for a respite from you, mewling little brat. <CHARNAME>, I'll take the chance for a little luxury and a rest from the road at the Elfsong. Find me there if you want - and have fun with silly Miss Richgirl meanwhile.~DO~EscapeAreaMove("BG0705",873,377,0)~EXIT

ADD_STATE_TRIGGER AJANTP 3
~!InParty("CVSandr")~

ADD_STATE_TRIGGER AJANTP 4
~InParty("CVSandr")~
ADD_TRANS_TRIGGER AJANTP 4
~!InParty("CVSandr")~

EXTEND_BOTTOM  AJANTP 4
IF~~THEN REPLY~Do not worry, Ajantis, it won't be for long. Please wait for me here.~EXTERN AJANTP Sanhere
IF~~THEN REPLY~Do not worry, Ajantis, I will meet you soon again at the Friendly Arm.~EXTERN AJANTP SanFA
IF~~THEN REPLY~It won't be for long, Ajantis, we will see each other shortly if you go to the Nashkel Inn.~EXTERN AJANTP SanNa
IF~~THEN REPLY~Please move ahead of us to Baldur's Gate to meet me at the Elfsong Tavern.~EXTERN AJANTP SanBE
END

APPEND AJANTP 
IF ~!InParty("CVSandr") Global("KickedOut","LOCALS",0) GlobalLT("ENDOFBG1","GLOBAL",2)~THEN BEGIN 21
SAY~But... but... we were a team, we were bound by... by honor! Sigh... Why is everything always so complicated?~
IF~~THEN DO~SetGlobal("KickedOut","LOCALS",1)~EXIT
END

IF~~THEN BEGIN Sanhere
SAY~As you wish, <CHARNAME>. I shall wait.~
IF~~THEN DO~SetGlobal("KickedOut","LOCALS",1)~EXIT
END

IF~~THEN BEGIN SanFA
SAY~As you wish, <CHARNAME>. It would be an honour.~
IF~~THEN DO~SetGlobal("KickedOut","LOCALS",1)EscapeAreaMove("BG2301",766,966,0)~EXIT
END

IF~~THEN BEGIN SanNa
SAY~As you wish, <CHARNAME>. It would be an honour.~
IF~~THEN DO~SetGlobal("KickedOut","LOCALS",1)EscapeAreaMove("BG4801",602,463,0)~EXIT
END

IF~~THEN BEGIN SanBE
SAY~As you wish, <CHARNAME>. It would be an honour.~
IF~~THEN DO~SetGlobal("KickedOut","LOCALS",1)EscapeAreaMove("BG0705",537,704,0)~EXIT
END
END

APPEND XANP
IF WEIGHT #-2 ~ GlobalLT("ENDOFBG1","GLOBAL",2) InParty("CVSandr") Global("IWasKickedOut","LOCALS",0) ~THEN BEGIN XanKickSan
SAY ~Take care of them, Sandrah, and I may even see you again before doom has overtaken you.~
IF ~~THEN REPLY  ~For now I would rather have the constant specter of your empty place, rather than tolerate your incessant gloom.~DO~ActionOverride("Xan",SetGlobal("IWasKickedOut","LOCALS",1)~GOTO San1
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
~THEN REPLY ~I don't need your help right now, but we'll travel together again soon. Until then, wait for me at the Friendly Arm Inn.~DO~ActionOverride("Xan",SetGlobal("IWasKickedOut","LOCALS",1)~GOTO San2
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
~THEN REPLY ~For the time being we should each seek our own destiny. I'll need your help again soon enough, though - if you take lodgings in the Nashkel Inn, I'll meet you there when I'm next in the south.~DO~ActionOverride("Xan",SetGlobal("IWasKickedOut","LOCALS",1)~GOTO San3
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
~THEN REPLY ~Our paths must run apart for a while. If I should need your help again, though, we should rendezvous at the Jovial Juggler in Beregost.~DO~ActionOverride("Xan",SetGlobal("IWasKickedOut","LOCALS",1)~GOTO San4
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
~THEN REPLY ~We should separate now. I'll look you up next time I'm in the Gate - meet me in the Elfsong Tavern.~DO~ActionOverride("Xan",SetGlobal("IWasKickedOut","LOCALS",1)~GOTO San5
END

IF~~THEN BEGIN San1
SAY~While my stay with you was admittedly fruitless, it has, at least, been fun. I might even enjoy sharing another ill-fated adventure with you, should you ever require the use of my considerable talents.~
IF~~THEN EXIT
END

IF~~THEN BEGIN San2
SAY~It makes no difference either way. I can await death as easily in one place as in another. ~
IF~~THEN DO~EscapeAreaMove("BG2301",1178,738,0)~EXIT
END

IF~~THEN BEGIN San3
SAY~It makes no difference either way. I can await death as easily in one place as in another. ~
IF~~THEN DO~EscapeAreaMove("BG4801",531,392,0)~EXIT
END

IF~~THEN BEGIN San4
SAY~It makes no difference either way. I can await death as easily in one place as in another. ~
IF~~THEN DO~EscapeAreaMove("BG3304",860,965,0)~EXIT
END

IF~~THEN BEGIN San5
SAY~It makes no difference either way. I can await death as easily in one place as in another. ~
IF~~THEN DO~EscapeAreaMove("BG0705",702,736,0)~EXIT
END
END

APPEND KIVANP
IF WEIGHT #-2 ~ GlobalLT("ENDOFBG1","GLOBAL",2) InParty("CVSandr") Global("IWasKickedOut","LOCALS",0)
~THEN BEGIN KivKickSan
SAY ~Sandrah, amin hiraetha, mella eleni - I am sorry, my star, we part but you will take care of them until we meet again. Uuma delo - do not worry.~
IF ~~THEN REPLY ~We will find you here, Kivan.~DO~ActionOverride("Kivan",SetGlobal("IWasKickedOut","LOCALS",1)~GOTO San13
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
~THEN REPLY ~I don't need your help right now, but we'll travel together again soon. Until then, wait for me at the Friendly Arm Inn.~DO~ActionOverride("Kivan",SetGlobal("IWasKickedOut","LOCALS",1)~GOTO San15
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
~THEN REPLY  ~For the time being we should each seek our own destiny. I'll need your help again soon enough, though - if you take lodgings in the Nashkel Inn, I'll meet you there when I'm next in the south.~DO~ActionOverride("Kivan",SetGlobal("IWasKickedOut","LOCALS",1)~GOTO San16
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
~THEN REPLY ~Our paths must run apart for a while. If I should need your help again, though, we should rendezvous at the Jovial Juggler in Beregost.~DO~ActionOverride("Kivan",SetGlobal("IWasKickedOut","LOCALS",1)~ GOTO San18
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
~THEN REPLY ~We should separate now. I'll look you up next time I'm in the Gate - meet me in the Elfsong Tavern.~DO~ActionOverride("Kivan",SetGlobal("IWasKickedOut","LOCALS",1)~ GOTO San17
END

IF~~THEN BEGIN San13
SAY~Then I will wait for your return.~
IF~~THEN EXIT
END

IF~~THEN BEGIN San15
SAY~I will do this thing, but much remains to be done. Do not delay your return.~
IF~~THEN DO~EscapeAreaMove("BG2301",1070,663,0)~EXIT
END

IF~~THEN BEGIN San16
SAY~I will do this thing, but much remains to be done. Do not delay your return.~
IF~~THEN DO~EscapeAreaMove("BG4801",260,307,0)~EXIT
END

IF~~THEN BEGIN San17
SAY~I will do this thing, but much remains to be done. Do not delay your return.~
IF~~THEN DO~EscapeAreaMove("BG0705",686,843,0)~EXIT
END

IF~~THEN BEGIN San18
SAY~I will do this thing, but much remains to be done. Do not delay your return.~
IF~~THEN DO~EscapeAreaMove("BG3304",730,1128,0)~EXIT
END
END

APPEND IF_FILE_EXISTS SUFINCHP
IF ~Global("SUFinchJoined","LOCALS",0) See(Player1) InParty("CVSandr") Global("LeftSan","GLOBAL",0)~THEN BEGIN HelloSanFi
SAY ~Wow, Sandrah!~
IF~~THEN DO~SetGlobal("LeftSan","GLOBAL",1)~GOTO 3
END
END

APPEND SHARTP
IF WEIGHT #-2 ~Global("IWasKickedOut","LOCALS",2)~THEN BEGIN EarlyRet
SAY~My love, it is not time yet.~
IF~~THEN REPLY ~We will come again later, wildcat. I love you.~
EXIT
END

IF WEIGHT #-3 ~Global("KickedOut","LOCALS",3)~THEN BEGIN SanSharGorBirth
SAY ~Ahh! Lover-boy...not a minute too soon...~
IF ~~THEN EXIT
END
END

APPEND Viconp
IF WEIGHT #-2 ~ GlobalLT("ENDOFBG1","GLOBAL",2) InParty("CVSandr") Global("IWasKickedOut","LOCALS",0)
~THEN BEGIN VicKickSan
SAY~You have been very kind to me in this strange and lighted world. Perhaps you are right, though. The drow were meant to be a race apart... Take care of yourselves, all right?~
IF ~~THEN REPLY ~You are too much of a disrupting influence on the group, and I do not wish to call undue attention my way.  No, I'll not have you back.~GOTO 218
  IF ~~THEN REPLY ~Many would judge you by your race alone, but I will give you ample opportunity to prove yourself as an individual.~GOTO 117
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
~THEN REPLY ~I don't need your help right now, but we'll travel together again soon. Until then, wait for me at the Friendly Arm Inn.~ GOTO 120
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
~THEN REPLY  ~For the time being we should each seek our own destiny. I'll need your help again soon enough, though - if you take lodgings in the Nashkel Inn, I'll meet you there when I'm next in the south.~ GOTO 121
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
~THEN REPLY  ~Our paths must run apart for a while. If I should need your help again, though, we should rendezvous at the Jovial Juggler in Beregost.~GOTO 123
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
~THEN REPLY  ~We should separate now. I'll look you up next time I'm in the Gate - meet me in the Elfsong Tavern.~ GOTO 122
END

IF~~THEN BEGIN 117
SAY~I could ask for little else.~
IF~~THEN DO~SetGlobal("IWasKickedOut","LOCALS",0) JoinParty() ~EXIT
END

IF~~THEN BEGIN 218
SAY~That is your choice to make.  I shall likely be hiding somewhere near here, if you decide to change your mind.~
IF~~THEN DO~SetGlobal("IWasKickedOut","LOCALS",1) ~EXIT
END

IF~~THEN BEGIN 120
SAY~I will do this, but not willingly. I am far from safe in these dwellings of surface folk. ~
IF~~THEN DO~SetGlobal("IWasKickedOut","LOCALS",1) EscapeAreaMove("BG2301",789,759,0)~EXIT
END

IF~~THEN BEGIN 121
SAY~I will do this, but not willingly. I am far from safe in these dwellings of surface folk. ~
IF~~THEN DO~SetGlobal("IWasKickedOut","LOCALS",1) EscapeAreaMove("BG4801",444,505,0)~EXIT
END

IF~~THEN BEGIN 122
SAY~I will do this, but not willingly. I am far from safe in these dwellings of surface folk. ~
IF~~THEN DO~SetGlobal("IWasKickedOut","LOCALS",1) EscapeAreaMove("BG0705",745,674,0)~EXIT
END

IF~~THEN BEGIN 123
SAY~I will do this, but not willingly. I am far from safe in these dwellings of surface folk. ~
IF~~THEN DO~SetGlobal("IWasKickedOut","LOCALS",1) EscapeAreaMove("BG3304",800,1085,0)~EXIT
END
END

//BGII SoA

ADD_TRANS_TRIGGER MazzyP 33
~!InParty("CVSandr")~

EXTEND_BOTTOM MazzyP 33
IF ~InParty("CVSandr")~THEN REPLY ~Sorry, my mistake, please stay with us, Mazzy.~DO~JoinParty()~EXIT
IF ~InParty("CVSandr")~THEN REPLY ~It is just a temporary thing, Mazzy, we will shortly pick you up in Trademeet again.~GOTO 6
END

ADD_TRANS_TRIGGER IMOENP_ 0
~!InParty("CVSandr")~

EXTEND_BOTTOM   IMOENP_ 0
IF~InParty("CVSandr") ~THEN REPLY~No, stay with me.~DO~SetGlobal("KickedOut","LOCALS",0)
ActionOverride("IMOEN2",JoinParty())~EXIT
IF~InParty("CVSandr") GlobalGT("SanImoRetWD","GLOBAL",3)~ THEN REPLY~I think it's best.~EXTERN CVSandrJ ImoSendWDSHP
IF~InParty("CVSandr") GlobalLT("SanImoRetWD","GLOBAL",4)~ THEN REPLY~I think it's best.~DO~SetGlobal("KickedOut","LOCALS",1)
ChangeAIScript("",DEFAULT)~EXIT
END

CHAIN
IF~~THEN  CVSandrJ ImoSendWDSHP
~Imoen, remember that there is somebody else waiting for you.~
==IMOENP_~(Sigh) If I could only join the folks in Waterdeep, besta Sandrah...~
==CVSandrJ~You can, do not despair. I have a spell for you to be sent to Clarissa's place at Waterdeep.~
==IMOENP_~Gee, I knew and knew and knew always all the time you would be there for me if all else failed, Sandrah. Yes and yes, please send me there!~
DO ~ActionOverride("Imoen2",SetGlobal("KickedOut","LOCALS",1)) ActionOverride("Imoen2",SetDialogue("IMOENP_")) ActionOverride("Imoen2",EscapeAreaMove("cvebs1",459,300,12))
~EXIT

