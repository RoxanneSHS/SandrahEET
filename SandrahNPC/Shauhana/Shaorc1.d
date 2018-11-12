BEGIN Shaorc1

IF~RandomNum(4,1) AreaCheck("CVSH14")~THEN BEGIN Ruins1
SAY~This damned Vennegrat destroyed our mill.~
IF~~THEN EXIT
END

IF~RandomNum(4,2) AreaCheck("CVSH14")~THEN BEGIN Ruins2
SAY~The traitor not respect the farmers - Minsc will punish him.~
IF~~THEN EXIT
END

IF~RandomNum(4,3) AreaCheck("CVSH14")~THEN BEGIN Ruins3
SAY~Vennegrat is a traitor. Shauhana will kick his butt.~
IF~~THEN EXIT
END

IF~RandomNum(4,4) AreaCheck("CVSH14")~THEN BEGIN Ruins4
SAY~This wannabe queen is only a half-breed. She cannot lead pure bred orcs.~
IF~~THEN EXIT
END

CHAIN
IF~Global("ShauUnd","CVSh11",1)~THEN Shaorc1 Hint1
~You be friends who came with our princess, yes?~
DO~SetGlobal("ShauUnd","CVSh11",2)~
==CVSandrJ~We are Shauhana's friends. Ghatlenk sent us to investigate the strange occurrences in this area.~
==Shaorc1~Scary occurrences those are, the old graveyard coming alive.~
==CVSandrJ~We were warned about those undead...~
==Shaorc1~Different undead than any others.~
==CVSandrJ~What do you mean by that?~
==Shaorc1~Old orc soldiers come alive from the cursed graveyard - but never were buried there.~
==CVSandrJ~You recognized any of those creatures that haunt here.~
==Shaorc1~Only two handful orcs were ever buried at that graveyard west of here. We here two days on patrol and ten handful have stood up there and wandered to old village west.~
==CVSandrJ~Hm...~
==Shaorc2~And don't forget Rastuckz we saw yestereve!~
==CVSandrJ~An orc you knew yourself?~
==Shaorc2~Rastuckz was hero of my Clan, Clan of mighty Icebear. He was not buried in soil, he went to Sharkta Fai!~
==CVSandrJ~We must definitely inspect that graveyard, <CHARNAME>.~
END
++~My counselor, you never believed in the whole Sharkta Fai legend anyway. Maybe you were right again.~+ Hint2

CHAIN
IF~~THEN Shaorc1 Hint2
~Clan Orcs are no cowards and we killed many of the undead - but our own heroes standing up against us?~
==CVSandrJ~We will find out what is going on here, meanwhile you should return to the village and report to Shauhana.~
==Shaorc1~You will find a small camp north and east of here with friends to be happy to leave this spooky place if you tell them.~DO~AddexperienceParty(500) EscapeArea()~
==Shaorc2~Good luck, friends of Shauhana.~DO~AddexperienceParty(500) EscapeArea()~EXIT

CHAIN
IF~Global("Entered","CVSH15",2)~THEN Shaorc1 Villagenetry
~Human boy scout has announced your coming, friends.~
DO~SetGlobal("Entered","CVSH15",3)~
==CVSandrJ~I hope you make good progress with the defences and preparations.~
==Shaorc1~It is not good what you found in the haunted village?~
==CVSandrJ~Not at all...~
END
++~Where is Shauhana, we must get an artifact from her urgently.~+ village1
++~Where is Minsc, we need to assure that the men...orcs...are prepared as we need to leave again soon.~+ village2

CHAIN 
IF~~THEN Shaorc1 village1
~The princess is at the largest tent in the north of the village. And her mighty fighter protector trains his troupes in the arena circle south-east.~EXIT


CHAIN
IF~~THEN Shaorc1 village2
~The mighty fighter protector trains his troupes in the arena circle south west. And our princess is at the largest tent in the north of the village.~EXIT

BEGIN Shaorc2

IF~RandomNum(4,1) GlobalGT("ShauUnd","CVSh11",1) See([PC]) AreaCheck("CVSh11")~THEN BEGIN leave1
SAY~The friends of the princess have arrived.~
IF~~THEN DO~AddexperienceParty(500) EscapeArea()~EXIT
END

IF~RandomNum(4,2) GlobalGT("ShauUnd","CVSh11",1) See([PC]) AreaCheck("CVSh11")~THEN BEGIN leave2
SAY~Me not afraid of anything but glad to leave spook here.~
IF~~THEN DO~AddexperienceParty(500) EscapeArea()~EXIT
END

IF~RandomNum(4,3) GlobalGT("ShauUnd","CVSh11",1) See([PC]) AreaCheck("CVSh11")~THEN BEGIN leave3
SAY~Undead walking all day from graveyard to west. Good luck, friends.~
IF~~THEN DO~AddexperienceParty(500) EscapeArea()~EXIT
END

IF~RandomNum(4,4) GlobalGT("ShauUnd","CVSh11",1) See([PC]) AreaCheck("CVSh11")~THEN BEGIN leave3
SAY~Good you take over here. Not like fighting our long gone heroes.~
IF~~THEN DO~AddexperienceParty(500) EscapeArea()~EXIT
END

IF~RandomNum(4,1) AreaCheck("CVSH14")~THEN BEGIN Ruins1
SAY~This damned Vennegrat destroyed our mill.~
IF~~THEN EXIT
END

IF~RandomNum(4,2) AreaCheck("CVSH14")~THEN BEGIN Ruins2
SAY~The traitor not respect the farmers - Minsc will punish him.~
IF~~THEN EXIT
END

IF~RandomNum(4,3) AreaCheck("CVSH14")~THEN BEGIN Ruins3
SAY~Vennegrat is a traitor. Shauhana will kick his butt.~
IF~~THEN EXIT
END

IF~RandomNum(4,4) AreaCheck("CVSH14")~THEN BEGIN Ruins4
SAY~This wannabe queen is only a halfbred. She cannot lead pure bred orcs.~
IF~~THEN EXIT
END

BEGIN Shaorc3

IF~RandomNum(2,1) AreaCheck("CVSH14")~THEN BEGIN Ruins5
SAY~Damned Vennegrat - but we rebuild for new Orc time to start.~
IF~~THEN EXIT
END

IF~RandomNum(2,2) AreaCheck("CVSH14")~THEN BEGIN Ruins6
SAY~Shauhana will restore old Clan Orc glory, friends.~
IF~~THEN EXIT
END

CHAIN
IF~Global("HinteE","CVSh11",2)~THEN Shaorc3 HintE
~Uuh, you...you are Shauhana's friends, you must be...~
DO~SetGlobal("HinteE","CVSh11",3)~
==CVSandrJ~Yes, we are. We come to investigate the undead occurrences around here.~
==Shaorc3~They come out of the old graveyard...uuh...they go west to the former village of the Icebear Clan...they must gather there - I can physically feel the dark presence that calls them.~
==CVSandrJ~It is as we feared, my friend, someone is gathering an undead army there. <CHARNAME> and us will investigate further and report to Ghatlenk and Shauhana.~
==Shaorc3~I will not be of much help to you any further...~
==CVSandrJ~We sent the scout party already home to your village. Make haste and follow them.~DO~
ReallyForceSpell("Shaorc3",CLERIC_HEAL)~EXIT


BEGIN CVSHLICH
IF~NumTimesTalkedTo(0)~THEN BEGIN lichThr
SAY~A Bhaalspawn and a priestess of the hated goddess!!~
=~Worthy material for the master and the corpses will serve the new orcen king!!~
IF~~THEN DO ~SetGlobal("SanHintFactory","GLOBAL",1) Enemy()~EXIT
END

BEGIN Shaorc4
IF~RandomNum(4,1) AreaCheck("CVSH14")~THEN BEGIN Ruins1
SAY~Damned Vennegrat - but we rebuild for new Orc time to start.~
IF~~THEN EXIT
END

IF~RandomNum(4,2) AreaCheck("CVSH14")~THEN BEGIN Ruins2
SAY~Shauhana will restore old Clan Orc glory, friends.~
IF~~THEN EXIT
END

IF~RandomNum(4,3) AreaCheck("CVSH14")~THEN BEGIN Ruins3
SAY~Vennegrat is a traitor. Minsc will kick his butt.~
IF~~THEN EXIT
END

IF~RandomNum(4,4) AreaCheck("CVSH14")~THEN BEGIN Ruins4
SAY~This wannabe queen is only halfbreed. Vennegrat will destroy her.~
IF~~THEN EXIT
END

BEGIN Shaorc5
IF~RandomNum(4,1) AreaCheck("CVSH14")~THEN BEGIN Ruins1
SAY~This damned Vennegrat destroyed our mill.~
IF~~THEN EXIT
END

IF~RandomNum(4,2) AreaCheck("CVSH14")~THEN BEGIN Ruins2
SAY~The traitor not respect the farmers - Minsc will punish him.~
IF~~THEN EXIT
END

IF~RandomNum(4,3) AreaCheck("CVSH14")~THEN BEGIN Ruins3
SAY~Vennegrat is a traitor. Shauhana will kick his butt.~
IF~~THEN EXIT
END

IF~RandomNum(4,4) AreaCheck("CVSH14")~THEN BEGIN Ruins4
SAY~This wannabe queen is only a halfbreed. She cannot lead pure bred orcs.~
IF~~THEN EXIT
END


BEGIN Shaorc6
IF~Global("MooseLoose","CVSH14",1)~THEN BEGIN MooseSt
SAY~Watch out!!~
=~The moose are loose!!~
IF~~THEN REPLY~Has he got loose screws?~DO~SetGlobal("MooseLoose","CVSH14",2)~EXIT
END

IF~Global("SanHintFactory","GLOBAL",7)~THEN BEGIN Openway
SAY~Greetings, friends of the princess. You come for the village?~
IF~~THEN REPLY~We need to see Shauhana urgently, do you know where we find her?~
GOTO Open2
END

IF~~THEN BEGIN Open2
SAY~You follow the Creek 'Ulthak north and then east past the Shaman's hut and the mill to our village Hai 'Ulthak, the residence.~
=~Watch out friends, some Vennegrat traitor orcs are still around here and there.~
IF~~THEN REPLY~Fine, we can find that.~DO~SetGlobal("SanHintFactory","GLOBAL",8)~EXIT
END

BEGIN Shaorc7
IF~RandomNum(2,1)~THEN BEGIN bers1
SAY~I belong to the berserker lodge.~
IF~~THEN EXIT
END

IF~RandomNum(2,2) ~THEN BEGIN bers2
SAY~Minsc's berserkers are saving Hai 'Ulthak.~
IF~~THEN EXIT
END

BEGIN Shaorc8
IF~RandomNum(2,1)~THEN BEGIN bers1
SAY~I belong to the berserker lodge.~
IF~~THEN EXIT
END

IF~RandomNum(2,2) ~THEN BEGIN bers2
SAY~Minsc's berserkers are saving Hai 'Ulthak.~
IF~~THEN EXIT
END

BEGIN Shaorc9
IF~RandomNum(2,1)~THEN BEGIN bers1
SAY~I belong to the berserker lodge.~
IF~~THEN EXIT
END

IF~RandomNum(2,2) ~THEN BEGIN bers2
SAY~Minsc's berserkers are saving Hai 'Ulthak.~
IF~~THEN EXIT
END

BEGIN Shaorc10
IF~RandomNum(2,1)~THEN BEGIN bers1
SAY~I belong to the berserker lodge.~
IF~~THEN EXIT
END

IF~RandomNum(2,2) ~THEN BEGIN bers2
SAY~Minsc's berserkers are saving Hai 'Ulthak.~
IF~~THEN EXIT
END

BEGIN Shaorc11
IF~RandomNum(2,1)~THEN BEGIN bers1
SAY~I belong to the berserker lodge.~
IF~~THEN EXIT
END

IF~RandomNum(2,2) ~THEN BEGIN bers2
SAY~Minsc's berserkers are saving Hai 'Ulthak.~
IF~~THEN EXIT
END

