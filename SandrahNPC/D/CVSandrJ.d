BEGIN CVSANDRJ

// Healing Scrolls
IF ~ Global("SanhealScrl","GLOBAL",1) ~ THEN BEGIN SanhealScrl
SAY ~ <CHARNAME>, this kind of healing scrolls are very useful for a skilled healer like me. It would be wise to give them to me whenever we find them. I can significantly aid our party in the battles to come.~
IF~~THEN REPLY ~ Thank you for this advise, my counselor. They are light to carry and the health of our party is an important aspect to be considered by a leader. I am still learning to fit this role.~  DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanhealScrl2
IF~~THEN REPLY ~ But they also make good money. Money to improve our equipment and such.~ GOTO SanhealScrl2
END

IF~~THEN BEGIN SanhealScrl2
SAY ~ You are on your way to become a competent group leader, <CHARNAME>. Always mind that the health and life of your followers is a most important key to our survival and success.~
IF~~THEN REPLY ~ Take this scroll, Sandrah, and use it well, I will keep your advice in my memory.~ DO ~ SetGlobal("SanhealScrl","GLOBAL",2)~EXIT
IF~CheckStatLT(Player1,10,INT)~THEN REPLY ~ You use many words to explain simple things. If you like this parchment so much, you can keep it.~ DO ~ SetGlobal("SanhealScrl","GLOBAL",2)~EXIT
IF~~THEN REPLY ~ It's not my fault if someone is too incompetent to care for his or her health, woman. Do what you want with those fools and don't expect me to thank you.~ DO ~ SetGlobal("SanhealScrl","GLOBAL",2)IncrementGlobal("Sanpoints","GLOBAL",-1)~EXIT
END

IF ~Global("BG1FlirtHeal","LOCALS",1) ~THEN BEGIN SanFlirtHeal11
SAY ~ (Just in time Sandrah has cast one of her healing spells on you.) ~
IF~~THEN REPLY ~ Wow, you're a most powerful healer, Sandrah. Not even Frendan back in Candlekeep could have done that better.~ DO ~SetGlobal("BG1FlirtHeal","LOCALS",2)~ GOTO SanFlirtHeal12
END

IF~~THEN BEGIN SanFlirtHeal12
SAY~ I chose this specialisation when I became Mystra's priestess. I want to heal and repair rather than to destroy.~
IF~~THEN REPLY~I observe you can destroy just as well, I mean, when there is need to do it.~GOTO SanFlirtHeal13
IF~ ~ THEN REPLY~(Proud) I can stand much pain, yes, I can. I like you better when you destroy.~ GOTO SanFlirtHeal13
END

IF~~THEN BEGIN SanFlirtHeal13
SAY~ A sad truth, <CHARNAME>, there is such need as often as there is need to heal. Our common path will be full of battle and destruction. My father and my tutors taught me to be prepared for that even if it is not what I like to do.~
IF~~THEN REPLY~ As I have not much choice other to take it as it comes, I am glad to have you help me with both talents.~DO~IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
IF~~THEN REPLY~ If battle and destruction is what's promised to me, you'd better get to like it. I do.~DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~EXIT
IF~~THEN REPLY~ Fight when I tell you to and keep your thoughts to yourself. I need no such spirit in my party.~EXIT
END

// Rescue Fallen
IF ~Global("SanResurAva","GLOBAL",1)~ THEN BEGIN SanRessur1
SAY ~ (Sandrah has knelt down by your fallen comrade and inspects carefully the body.) ~
IF  ~~THEN REPLY ~ Is there anything you think you can do to help right here?~ DO ~ RealSetGlobalTimer("SanResurAvaInterv","GLOBAL",1600)~ GOTO GenRess
IF~ OR(3) HaveSpellParty(CLERIC_RESURRECTION) HaveSpellParty(CLERIC_MASS_RAISE_DEAD) HaveSpellRES("SPJA01") ~THEN REPLY ~ I will let our cleric cast a spell, Sandrah. ~ DO~ SetGlobal("SanResurAva","GLOBAL",3) RealSetGlobalTimer("SanResurAvaInterv","GLOBAL",1600)~ EXIT
IF ~~ THEN REPLY ~We will take the body to a temple quickly to be ressurected.~DO~ SetGlobal("SanResurAva","GLOBAL",3) RealSetGlobalTimer("SanResurAvaInterv","GLOBAL",1600)~  EXIT
IF~~THEN REPLY ~ We will bury our comrade and mourn for the fallen later.~DO~ SetGlobal("SanResurAva","GLOBAL",3) RealSetGlobalTimer("SanResurAvaInterv","GLOBAL",1600)~ EXIT
IF~~THEN REPLY ~Another fool gone - but I know my silly healer will not keep quiet until she's wasted her talent on a useless corpse...~ DO~ SetGlobal("SanResurAva","GLOBAL",3) RealSetGlobalTimer("SanResurAvaInterv","GLOBAL",1600)~ DO~AddXPObject(Player1,-500)~GOTO GenRess
END

IF~~THEN BEGIN GenRess
SAY ~ I can call the blessing of Mystra on me to ressurect our comrade. But you have to make sure with the rest, that we are well protected as I will not be able to defend myself for a while afterwards.~
IF ~~THEN REPLY ~ No, Sandrah, it is too dangerous at the moment. We will need to find another way.~ DO~ SetGlobal("SanResurAva","GLOBAL",3) RealSetGlobalTimer("SanResurAvaInterv","GLOBAL",1600)~ EXIT
IF~ Dead("Imoen2") InPartyAllowDead("Imoen2")~THEN REPLY ~ I will take care of that. Please, Sandrah, we must do all for Imoen that is possible! ~GOTO ImoRess
IF ~ Dead("Khalid") InPartyAllowDead("Khalid")~ THEN REPLY ~ I will take care of that. Please, Sandrah, we must do all for Khalid that is possible!~ GOTO KhalRess
IF ~ Dead("Jaheira") InPartyAllowDead("Jaheira")~ THEN REPLY ~ I will take care of that. Please, Sandrah, we must do all for Jaheira that is possible!~ GOTO JahRess
IF ~ Dead("Viconia") InPartyAllowDead("Viconia")~ THEN REPLY ~ I will take care of that. Please, Sandrah, we must do all for our drow friend that is possible!~ GOTO VicoRess
IF ~ Dead("Coran") InPartyAllowDead("Coran")~ THEN REPLY ~ I will take care of that. Please, Sandrah, we must do all for the elf that is possible!~ GOTO CoranRess
IF ~ Dead("p#Kivan") InPartyAllowDead("p#Kivan") ~ THEN REPLY ~ I will take care of that. Please, Sandrah, we must do all for the elf that is possible!~ GOTO KivanRess2
IF ~ Dead("Kivan") InPartyAllowDead("Kivan")~ THEN REPLY ~ I will take care of that. Please, Sandrah, we must do all for the elf that is possible!~ GOTO KivanRess
IF ~ Dead("Sharteel") InPartyAllowDead("Sharteel")~ THEN REPLY ~ I will take care of that. Please, Sandrah, we must do all for Shar-Teel that is possible!~ GOTO SharRess
IF ~ Dead("Dynaheir") InPartyAllowDead("Dynaheir")~ THEN REPLY ~ I will take care of that. Please, Sandrah, we must do all for the Rashemen lady that is possible!~ GOTO DynaRess
IF ~ Dead("Minsc")InPartyAllowDead("Minsc") ~ THEN REPLY ~ I will take care of that. Please, Sandrah, Boo must not become an orphan hamster!~ GOTO MinscRess
IF ~ Dead("Ajantis") InPartyAllowDead("Ajantis")~ THEN REPLY ~ I will take care of that. Please, Sandrah, we must do all for our paladin that is possible!~ GOTO AjanRess
IF ~ Dead("Garrick") InPartyAllowDead("Garrick")~ THEN REPLY ~ I will take care of that. Please, Sandrah, we must do all for our bard that is possible!~ GOTO GarrRess
IF ~ Dead("Branwen") InPartyAllowDead("Branwen")~ THEN REPLY ~ I will take care of that. Please, Sandrah, we must do all for our Tempus priestess that is possible!~ GOTO BranRess
IF ~ Dead("Xan") InPartyAllowDead("Xan")~ THEN REPLY ~ I will take care of that. Please, Sandrah, we must do all for our moonblade wielder that is possible!~ GOTO XanRess
IF ~ Dead("J#Indi") InPartyAllowDead("J#Indi")~ THEN REPLY ~ I will take care of that. Please, Sandrah, we must do all for Indi that is possible!~ GOTO IndiRess
IF ~ Dead("faldorn") InPartyAllowDead("faldorn")~ THEN REPLY ~ I will take care of that. Please, Sandrah, we must do all for the shadow druid that is possible! The Great Mother may wait for another time.~ GOTO FaldoRess
IF ~ Dead("CVJenlig") InPartyAllowDead("CVJenlig")~ THEN REPLY ~ I will take care of that. Please, Sandrah, Jen'lig's race may be different from ours - still, I trust you can do something for her.~ GOTO JenliRess
IF ~ Dead("Sufinch") InPartyAllowDead("sufinch")~ THEN REPLY ~ I will take care of that. Please, Sandrah, we must do all for our bookworm that is possible!~ GOTO FinkRess
IF ~ Dead("ACBre") InPartyAllowDead("acbre")~ THEN REPLY ~ I will take care of that. Please, Sandrah, we must do all for our grumbling dwarf that is possible!~ GOTO BregRess
IF ~ Dead("B!GAVIN") InPartyAllowDead("B!Gavin")~ THEN REPLY ~ I will take care of that. Please, Sandrah, we must do all for our Gavin that is possible!~ GOTO GavRess
IF ~ Dead("k-rose") InPartyAllowDead("k-rose")~ THEN REPLY ~ I will take care of that. Please, Sandrah, we must do all for our aspiring actress that is possible!~ GOTO RoseRess
IF ~ Dead("Edwin") InPartyAllowDead("Edwin")~ THEN REPLY ~ I will take care of that. Please, Sandrah, we must do all for the red wizard that is possible!~ GOTO EdwRess
IF ~ Dead("Eldoth") InPartyAllowDead("Eldoth")~ THEN REPLY ~ I will take care of that. Please, Sandrah, we must do all for the thieving bard that is possible!~ GOTO EldoRess
IF ~ Dead("F_Drizzt") InPartyAllowDead("F_Drizzt")~ THEN REPLY ~ I will take care of that. Please, Sandrah, we must do all for your drow teacher that is possible!~ GOTO DrizRess1
IF ~ Dead("Driz2") InPartyAllowDead("Driz2")~ THEN REPLY ~ I will take care of that. Please, Sandrah, we must do all for your drow teacher that is possible!~ GOTO DrizRess2
IF ~ Dead("RChloe") InPartyAllowDead("RChloe")~ THEN REPLY ~ I will take care of that. Please, Sandrah, we must do all for the Yr'kai that is possible!~ GOTO ChloeRess
IF ~ Dead("Yasraena") InPartyAllowDead("Yasraena")~ THEN REPLY ~ I will take care of that. Please, Sandrah, we must do all for our lonely drow that is possible!~ GOTO YasRess
IF ~ Dead("kagain") InPartyAllowDead("kagain")~ THEN REPLY ~ I will take care of that. Please, Sandrah, we must do all for the dwarf fighter that is possible!~ GOTO KagRess
IF ~ Dead("CVShau") ~ THEN REPLY ~ I will take care of that. Please, Sandrah, we must do all for the lovely half-orc girl that is possible!~ GOTO ShauRess
IF~ Dead("Saerileth") InPartyAllowDead("Saerileth")~ THEN REPLY ~ I will take care of that. Please, Sandrah, we must do all for the beautiful young paladin that is possible!~ GOTO SaerRess
IF~ Dead("Safana") InPartyAllowDead("Safana")~ THEN REPLY ~ I will take care of that. Please, Sandrah, we must do all for our *Thief Lady* that is possible!~ GOTO SafaRess
IF~ Dead("Nalia")InPartyAllowDead("Nalia")~ THEN REPLY ~ I will take care of that. Please, Sandrah, we must do all for our noble heiress that is possible!~ GOTO NaliRess
IF~ Dead("t2val")InPartyAllowDead("t2val")~ THEN REPLY ~ I will take care of that. Please, Sandrah, we must do all for our cowled wizardess that is possible!~ GOTO ValeRess
IF~ Dead("v#1whi")InPartyAllowDead("v#1whi")~ THEN REPLY ~ I will take care of that. Please, Sandrah, we must do all for our strange barbarian that is possible!~ GOTO WhitRess
IF~ Dead("rh#isra")InPartyAllowDead("rh#isra")~ THEN REPLY ~ I will take care of that. Please, Sandrah, we must do all for our Sunite paladin that is possible!~ GOTO IsraRess
IF~ Dead("neera")InPartyAllowDead("neera")~ THEN REPLY ~ I will take care of that. Please, Sandrah, we must do all for our confused wildmage that is possible!~ GOTO NeeraRess
IF~ Dead("Rasaad")InPartyAllowDead("neera")~ THEN REPLY ~ I will take care of that. Please, Sandrah, we must do all for our Sun Soul monk that is possible!~ GOTO RasaadRess
IF~~THEN REPLY ~ Please, Sandrah, we must do all for the fallen that is possible!~GOTO RescNoPoss
END

IF~~THEN BEGIN  RescNoPoss
SAY ~I am sorry, <CHARNAME>, my examination has revealed that this one is damaged too much for Mystra's rescue here on the field. If help is still possibel we need to take the body to a temple quickly.~
IF~~THEN DO~ SetGlobal("SanResurAva","GLOBAL",3) RealSetGlobalTimer("SanResurAvaInterv","GLOBAL",1600)~ EXIT
END

IF~~THEN BEGIN ValeRess
SAY ~(Sandrah seems to fall into a deep trance for some moments before you observe that something is happening.)~
IF~~THEN DO ~ SetGlobal("SanResurAva","GLOBAL",2) AddXPObject("CVSandr",300) ApplySpell("t2val",CLERIC_RAISE_DEAD)~EXIT
END

IF~~THEN BEGIN RasaadRess
SAY ~I can probably not worsen his current state with my attempt.~
IF~~THEN DO ~ SetGlobal("SanResurAva","GLOBAL",2) AddXPObject("CVSandr",300) ApplySpell("rasaad",CLERIC_RAISE_DEAD)~EXIT
END

IF~~THEN BEGIN WhitRess
SAY ~I hope I can cope with his physiognomy that is a bit strange due to his being raised by a naga. (Nervously) I can probably not worsen his current state with my attempt.~
IF~~THEN DO ~ SetGlobal("SanResurAva","GLOBAL",2) AddXPObject("CVSandr",300) ApplySpell("v#1whi",CLERIC_RAISE_DEAD)~EXIT
END

IF~~THEN BEGIN IsraRess
SAY ~(Sandrah seems to fall into a deep trance for some moments before you observe that something is happening.)~
IF~~THEN DO ~ SetGlobal("SanResurAva","GLOBAL",2) AddXPObject("CVSandr",300) ApplySpell("rh#isra",CLERIC_RAISE_DEAD)~EXIT
END

IF~~THEN BEGIN NeeraRess
SAY ~(Sandrah seems to fall into a deep trance for some moments before you observe that something is happening.)~
IF~~THEN DO ~ SetGlobal("SanResurAva","GLOBAL",2) AddXPObject("CVSandr",300) ApplySpell("neera",CLERIC_RAISE_DEAD)~EXIT
END

IF~~THEN BEGIN KagRess
SAY ~(Sandrah seems to fall into a deep trance for some moments before you observe that something is happening.)~
IF~~THEN DO ~ SetGlobal("SanResurAva","GLOBAL",2) AddXPObject("CVSandr",300) ApplySpell("kagain",CLERIC_RAISE_DEAD)~EXIT
END

IF~~THEN BEGIN JenliRess
SAY ~I hope I can cope with her alien physiognomy but on the other hand githyanki are said to have humanoid roots. (Nervously) I can probably not worsen her current state with my attempt.~
IF~~THEN DO ~ SetGlobal("SanResurAva","GLOBAL",2) AddXPObject("CVSandr",300) ApplySpell("CVJenlig",CLERIC_RAISE_DEAD)~EXIT
END

IF~~THEN BEGIN NaliRess
SAY ~(Sandrah seems to fall into a deep trance for some moments before you observe that something is happening.)~
IF~~THEN DO ~ SetGlobal("SanResurAva","GLOBAL",2) AddXPObject("CVSandr",300) ApplySpell("Nalia",CLERIC_RAISE_DEAD)~EXIT
END

IF~~THEN BEGIN SafaRess
SAY ~(Sandrah seems to fall into a deep trance for some moments before you observe that something is happening.)~
IF~~THEN DO ~ SetGlobal("SanResurAva","GLOBAL",2) AddXPObject("CVSandr",300) ApplySpell("Safana",CLERIC_RAISE_DEAD)~EXIT
END

IF~~THEN BEGIN SaerRess
SAY ~(Sandrah seems to fall into a deep trance for some moments before you observe that something is happening.)~
IF~~THEN DO ~ SetGlobal("SanResurAva","GLOBAL",2) AddXPObject("CVSandr",300) ApplySpell("Saerileth",CLERIC_RAISE_DEAD)~EXIT
END

IF~~THEN BEGIN ChloeRess
SAY ~(Sandrah seems to fall into a deep trance for some moments before you observe that something is happening.)~
IF~~THEN DO ~ SetGlobal("SanResurAva","GLOBAL",2) AddXPObject("CVSandr",300) ApplySpell("RChloe",CLERIC_RAISE_DEAD)~EXIT
END

IF~~THEN BEGIN YasRess
SAY ~(Sandrah seems to fall into a deep trance for some moments before you observe that something is happening.)~
IF~~THEN DO ~ SetGlobal("SanResurAva","GLOBAL",2) AddXPObject("CVSandr",300) ApplySpell("Yasraena",CLERIC_RAISE_DEAD)~EXIT
END

IF~~THEN BEGIN ShauRess
SAY ~(Sandrah seems to fall into a deep trance for some moments before you observe that something is happening.)~
IF~~THEN DO ~ SetGlobal("SanResurAva","GLOBAL",2) AddXPObject("CVSandr",300) ApplySpell("CVShau",CLERIC_RAISE_DEAD)~EXIT
END

IF~~THEN BEGIN DrizRess1
SAY ~(Sandrah seems to fall into a deep trance for some moments before you observe that something is happening.)~
IF~~THEN DO ~ SetGlobal("SanResurAva","GLOBAL",2) AddXPObject("CVSandr",300) ApplySpell("F_Drizzt",CLERIC_RAISE_DEAD)~EXIT
END

IF~~THEN BEGIN DrizRess2
SAY ~(Sandrah seems to fall into a deep trance for some moments before you observe that something is happening.)~
IF~~THEN DO ~ SetGlobal("SanResurAva","GLOBAL",2) AddXPObject("CVSandr",300) ApplySpell("Driz2",CLERIC_RAISE_DEAD)~EXIT
END

IF~~THEN BEGIN EdwRess
SAY ~ <CHARNAME>, you really want me to sacrifice part of myself for that dirty red scum? Well.~
=~ (Sandrah seems to fall into a deep trance for some moments before you observe that something is happening.)~
IF~~THEN DO ~ SetGlobal("SanResurAva","GLOBAL",2) AddXPObject("CVSandr",5000) ApplySpell("Edwin",CLERIC_RAISE_DEAD)~EXIT
END

IF~~THEN BEGIN EldoRess
SAY ~ <CHARNAME>, you really want me to sacrifice part of myself for that dirty bard scum? Well.~
=~ (Sandrah seems to fall into a deep trance for some moments before you observe that something is happening.)~
IF~~THEN DO ~ SetGlobal("SanResurAva","GLOBAL",2) AddXPObject("CVSandr",5000) ApplySpell("Eldoth",CLERIC_RAISE_DEAD)~EXIT
END

IF~~THEN BEGIN RoseRess
SAY ~(Sandrah seems to fall into a deep trance for some moments before you observe that something is happening.)~
IF~~THEN DO ~ SetGlobal("SanResurAva","GLOBAL",2) AddXPObject("CVSandr",300) ApplySpell("k-rose",CLERIC_RAISE_DEAD)~EXIT
END

IF~~THEN BEGIN GavRess
SAY ~(Sandrah seems to fall into a deep trance for some moments before you observe that something is happening.)~
IF~~THEN DO ~ SetGlobal("SanResurAva","GLOBAL",2) AddXPObject("CVSandr",300) ApplySpell("B!GAVIN",CLERIC_RAISE_DEAD)~EXIT
END

IF~~THEN BEGIN BregRess
SAY ~(Sandrah seems to fall into a deep trance for some moments before you observe that something is happening.)~
IF~~THEN DO ~ SetGlobal("SanResurAva","GLOBAL",2) AddXPObject("CVSandr",300) ApplySpell("ACBre",CLERIC_RAISE_DEAD)~EXIT
END

IF~~THEN BEGIN FinkRess
SAY ~(Sandrah seems to fall into a deep trance for some moments before you observe that something is happening.)~
IF~~THEN DO ~ SetGlobal("SanResurAva","GLOBAL",2) AddXPObject("CVSandr",300) ApplySpell("Sufinch",CLERIC_RAISE_DEAD)~EXIT
END

IF~~THEN BEGIN IndiRess
SAY ~(Sandrah seems to fall into a deep trance for some moments before you observe that something is happening.)~
IF~~THEN DO ~ SetGlobal("SanResurAva","GLOBAL",2) AddXPObject("CVSandr",300) ApplySpell("J#Indi",CLERIC_RAISE_DEAD)~EXIT
END

IF~~THEN BEGIN XanRess
SAY ~(Sandrah seems to fall into a deep trance for some moments before you observe that something is happening.)~
IF~~THEN DO ~ SetGlobal("SanResurAva","GLOBAL",2) AddXPObject("CVSandr",300) ApplySpell("Xan",CLERIC_RAISE_DEAD)~EXIT
END

IF~~THEN BEGIN BranRess
SAY ~(Sandrah seems to fall into a deep trance for some moments before you observe that something is happening.)~
IF~~THEN DO ~ SetGlobal("SanResurAva","GLOBAL",2) AddXPObject("CVSandr",300) ApplySpell("Branwen",CLERIC_RAISE_DEAD)~EXIT
END

IF~~THEN BEGIN MinscRess
SAY ~(Sandrah seems to fall into a deep trance for some moments before you observe that something is happening.)~
IF~~THEN DO ~ SetGlobal("SanResurAva","GLOBAL",2) AddXPObject("CVSandr",300) ApplySpell("Minsc",CLERIC_RAISE_DEAD)~EXIT
END

IF~~THEN BEGIN GarrRess
SAY ~(Sandrah seems to fall into a deep trance for some moments before you observe that something is happening.)~
IF~~THEN DO ~ SetGlobal("SanResurAva","GLOBAL",2) AddXPObject("CVSandr",300) ApplySpell("Garrick",CLERIC_RAISE_DEAD)~EXIT
END

IF~~THEN BEGIN AjanRess
SAY ~(Sandrah seems to fall into a deep trance for some moments before you observe that something is happening.)~
IF~~THEN DO ~ SetGlobal("SanResurAva","GLOBAL",2) AddXPObject("CVSandr",300) ApplySpell("Ajantis",CLERIC_RAISE_DEAD)~EXIT
END

IF~~THEN BEGIN DynaRess
SAY ~(Sandrah seems to fall into a deep trance for some moments before you observe that something is happening.)~
IF~~THEN DO ~ SetGlobal("SanResurAva","GLOBAL",2) AddXPObject("CVSandr",300) ApplySpell("Dynaheir",CLERIC_RAISE_DEAD)~EXIT
END

IF~~THEN BEGIN SharRess
SAY ~(Sandrah seems to fall into a deep trance for some moments before you observe that something is happening.)~
IF~~THEN DO ~ SetGlobal("SanResurAva","GLOBAL",2) AddXPObject("CVSandr",300) ApplySpell("Sharteel",CLERIC_RAISE_DEAD)~EXIT
END

IF~~THEN BEGIN KivanRess
SAY ~(Sandrah seems to fall into a deep trance for some moments before you observe that something is happening.)~
IF~~THEN DO ~ SetGlobal("SanResurAva","GLOBAL",2) AddXPObject("CVSandr",300) ApplySpell("Kivan",CLERIC_RAISE_DEAD)~EXIT
END

IF~~THEN BEGIN KivanRess2
SAY ~(Sandrah seems to fall into a deep trance for some moments before you observe that something is happening.)~
IF~~THEN DO ~ SetGlobal("SanResurAva","GLOBAL",2) AddXPObject("CVSandr",300) ApplySpell("p#Kivan",CLERIC_RAISE_DEAD)~EXIT
END

IF~~THEN BEGIN CoranRess
SAY ~(Sandrah seems to fall into a deep trance for some moments before you observe that something is happening.)~
IF~~THEN DO ~ SetGlobal("SanResurAva","GLOBAL",2) AddXPObject("CVSandr",300) ApplySpell("Coran",CLERIC_RAISE_DEAD)~EXIT
END

IF~~THEN BEGIN ImoRess
SAY ~(Sandrah seems to fall into a deep trance for some moments before you observe that something is happening.)~
IF~~THEN DO ~ SetGlobal("SanResurAva","GLOBAL",2) AddXPObject("CVSandr",300) ApplySpell("Imoen2",CLERIC_RAISE_DEAD)~EXIT
END

IF~~THEN BEGIN KhalRess
SAY ~(Sandrah seems to fall into a deep trance for some moments before you observe that something is happening.)~
IF~~THEN DO ~ SetGlobal("SanResurAva","GLOBAL",2) AddXPObject("CVSandr",300) ApplySpell("Khalid",CLERIC_RAISE_DEAD)~EXIT
END

IF~~THEN BEGIN JahRess
SAY ~(Sandrah seems to fall into a deep trance for some moments before you observe that something is happening.)~
IF~~THEN DO ~ SetGlobal("SanResurAva","GLOBAL",2) AddXPObject("CVSandr",300) ApplySpell("Jaheira",CLERIC_RAISE_DEAD)~EXIT
END

IF~~THEN BEGIN VicoRess
SAY ~(Sandrah seems to fall into a deep trance for some moments before you observe that something is happening.)~
IF~~THEN DO ~ SetGlobal("SanResurAva","GLOBAL",2) AddXPObject("CVSandr",300) ApplySpell("Viconia",CLERIC_RAISE_DEAD)~EXIT
END

IF~~THEN BEGIN FaldoRess
SAY ~(Sandrah seems to fall into a deep trance for some moments before you observe that something is happening.)~
IF~~THEN DO ~ SetGlobal("SanResurAva","GLOBAL",2) AddXPObject("CVSandr",300) ApplySpell("Faldorn",CLERIC_RAISE_DEAD)~EXIT
END

// Dungeon Talks

IF~ Global("SanDungtalk","GLOBAL",1)~ THEN BEGIN SanDungFi1
SAY~ (Sandrah has moved up closely to your side and has laid her hand on your shoulder while continuing in the area, slowly and carefully.)~
IF ~~THEN REPLY~ Fear nothing, little one, we are here together. Whatever is ahead should rather fear us.~ DO ~ SetGlobal("SanDungtalk","GLOBAL",2)RealSetGlobalTimer("SanDungtalkInt","GLOBAL",7200)~ GOTO SanDungFi2
END

IF~~ THEN BEGIN SanDungFi2
SAY ~ (Snickers) Do you take me for a scared little damsel, <CHARNAME>?~
IF ~Global("SanRomPath","GLOBAL",1)~THEN REPLY~ Surely not, although the thought of it is quite tempting. I could be the great hero to rescue you...and in all the tales such a hero is rewarded by the sweet damsel's kiss.~ DO~IncrementGlobal("Sanpoints","GLOBAL",1)~ GOTO SanDungFi3
IF~Global("SanRomPath","GLOBAL",2)~THEN REPLY ~ Far from that, I was just thinking if I should adopt this role in order to reward my great heroine with the sweetest of kisses for MY rescue.~ DO~IncrementGlobal("Sanpoints","GLOBAL",2)~ GOTO SanDungFi4
IF~ Global("SanRomPath","GLOBAL",1)~THEN REPLY ~ Far from that, I was just thinking of a version of that tale where the prince could adopt this role in order to reward his great heroine with the sweetest of kisses for HIS rescue.~ DO~IncrementGlobal("Sanpoints","GLOBAL",2)~ GOTO SanDungFi4
IF ~~THEN REPLY~ (Laugh) You? I more had the feeling you try to protect me, my heroine.~ GOTO SanDungFi5
IF ~Global("SanRomPath","GLOBAL",2)~THEN REPLY~ Surely not, although the thought of it is quite tempting. I could be the great hero to rescue you...and in all the tales such a hero is rewarded by the sweet damsel's kiss.~ DO~IncrementGlobal("Sanpoints","GLOBAL",1)~ GOTO SanDungFi6
IF~~THEN REPLY~If you wet your silk panties, I'm sure you know a spell to dry them quickly. (You shake your head in disbelief.)~EXIT
END

IF~~ THEN BEGIN SanDungFi3
SAY ~ My hero, sometimes the good intention is just enough to be rewarded in the desired fashion (Her kiss is indeed long and intense.)~
IF~~THEN EXIT
END

IF~~ THEN BEGIN SanDungFi4
SAY ~ (She offers her lips expectantly to you.) How about a little encouragement before your heroine moves into the great adventure? (Your kiss is indeed long and intense.)~
IF~~THEN EXIT
END

IF~~ THEN BEGIN SanDungFi5
SAY ~ I try to do the best that I can, which does not mean I doubt your own abilities. But still someone as hunted and targeted like you can need any additional protection <PRO_HESHE> can get.~
IF ~~THEN REPLY~ Yours is most welcome, my love. ~DO~IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
IF ~~THEN REPLY~ You can however protect me and yourself much better if we both had all our hands free and on our weapons.~ EXIT
END

IF~~ THEN BEGIN SanDungFi6
SAY ~ My heroine, sometimes the good intention is just enough to be rewarded in the desired fashion (Her kiss is indeed long and intense.)~
IF~~THEN EXIT
END

IF~ Global("SanDungtalk","GLOBAL",3)~ THEN BEGIN SanDungFi11
SAY~ This is not a place where I think we deserve to end.~
IF ~~THEN REPLY~ Are you - of all people I know - suddenly expressing dark feelings? ~ DO~ SetGlobal("SanDungtalk","GLOBAL",4) RealSetGlobalTimer("SanDungtalkInt","GLOBAL",7200)~ GOTO SanDungFi12
IF~~THEN REPLY~ I definitely have no intention to end in this dump- are you trying to de-motivate us all?~ DO~ SetGlobal("SanDungtalk","GLOBAL",4) RealSetGlobalTimer("SanDungtalkInt","GLOBAL",7200)~ GOTO SanDungFi12
END

IF ~~THEN BEGIN SanDungFi12
SAY ~ Actually I wanted the opposite. It is not the fate I would accept for any of us, to pass down here unnoticed from anyone. I intend to leave a mark on the face of Toril once it is my time to go. ~
IF~~ THEN REPLY~ Such a mark may be left with different flavours, love. I think I can be assured which type you have in mind.~ GOTO SanDung13
IF~~THEN REPLY~ My mark on the face of Toril shall be one to be remembered with respect.~ GOTO SanDung13
IF~~THEN REPLY ~ As long as we leave Toril a better place than how we found it, does it matter whether our deeds are noticed by the public?~ GOTO SanDung13
IF~~THEN REPLY ~You and me, we have all it needs to become heroes long to be remembered.~DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~GOTO SanDung13
END

IF~~THEN BEGIN SanDung13
SAY~ It is true that many a good deed is done unnoticed by the people. It is not personal fame that I really have in mind. But any effort achieved by us may not have a lasting impact, if it were not recognised by the people and seen as an encouragement to follow the example. Every deed counts, sure, but a real change can only be achieved if this vision is shared by many.~
IF ~~THEN REPLY~ So onwards then, sweet heroine. Let's first do the task and then gather the laurels.~ EXIT
IF ~~THEN REPLY~ Enough talking, let's do some deeds.~ EXIT
END

//Centeol

IF ~ Global("CentPC","GLOBAL",1)~ THEN BEGIN PCJonCenteol
SAY~ This mage's name, Jon Irenicus, I heard it before. He has done more with his magical powers than to punish this crazy loveblind murderess. Something much more evil and destructive.~
IF~~ THEN REPLY ~ Her speaking of him sounded like he is a man you should not get into trouble with. But how am I to help you in that matter, Sandrah?~  GOTO PCJonCenteol1
IF~~ THEN REPLY ~ Once again your lore exceeds mine by far, I cannot remember to have heard his name ever.~ GOTO PCJonCenteol1
IF~~ THEN REPLY ~ This plane is full of madmen and demented mages, why would anyone keep a record of their names?~ GOTO PCJonCenteol1
END

IF ~~ THEN BEGIN PCJonCenteol1
SAY ~ The context in which I remember his name had to do with something done to an elf community. But like all these things, the elves hide it in the mist they love to surround what they consider their internal affairs.~
IF~~ THEN REPLY ~ If he is such a powerful mage and he has really misused his powers like you assume, then whatever he has done must be a crime so enourmous, that it is kept secret even among the elves themselves. ~  GOTO PCJonCenteol2
IF~~ THEN REPLY ~ Can't you use your pretty head to solve OUR problems, counselor. We have plenty of those. ~  GOTO PCJonCenteol2
END

IF ~~ THEN BEGIN PCJonCenteol2
SAY ~ Never mind, <CHARNAME>. It was just curiosity that made me ask, because I had heard the name before and I was astonished to hear it in a place like this. Probably it does not concern us at all. Hopefully he will never cross our path.~
IF~~ THEN REPLY ~  I pray for that. We have plenty of opponents that threaten our lives every day - and yours, and yours. ~ DO ~ SetGlobal("CentPC","GLOBAL",2) SetGlobal("SanSpokeCent","LOCALS",1)~ EXIT
END

//Talos
IF~Global("SantalosDec","GLOBAL",13)~THEN BEGIN Talosvisit1
SAY~ Another foe shows his ugly face. I am afraid I am largely responsible that the Storm Lord has cast his eyes on us.~
IF~~THEN REPLY~ Hm, from your discussion I have learned that anyone of power not following this Lord of destruction would draw his attention sooner or later.~ DO~ SetGlobal("SantalosDec","GLOBAL",14)~ GOTO Talosvisit2
IF~~THEN REPLY~ Puuh - this one is a god and not just a minor one. We are deeper in trouble than I would wish to be - and the timing couldn't be worse.~ DO~ SetGlobal("SantalosDec","GLOBAL",14)~GOTO Talosvisit3
END

IF~~ THEN BEGIN Talosvisit2
SAY~ Right - with me in the company just a bit sooner than otherwise. If you do not follow his evil and chaotic ways it is hard not to get into trouble with him.~
IF~~THEN REPLY~ I hope his chaotic ways will soon draw his attention on something else and away from us.~ EXIT
IF~~THEN REPLY~ I'm not worried, I have you and Mystra on my side - far more reliable than the ever-changing weather.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
IF~~THEN REPLY~ Talos, Calos, Balos...celestial fools are, mh, celestial fools not more and not less.~EXIT
END

IF~~ THEN BEGIN Talosvisit3
SAY~ His interest in you would have come sooner or later, <CHARNAME>, do not fool yourself. Maybe my guidance to a way of living completely opposite to his demands has just accelerated things.~
IF~~THEN REPLY~ I hope his chaotic ways will soon draw his attention on something else and away from us.~ EXIT
IF~~THEN REPLY~ I'm not worried, I have you and Mystra on my side - far more reliable than the ever-changing weather.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
END

IF~~THEN BEGIN Talosvisit4
SAY~ Another foe shows his ugly face. I am afraid I am largely responsible that the Storm Lord has cast his eyes on us.~
IF~~THEN REPLY~ Hm, from your discussion I have learned that anyone of power not following this Lord of destruction would draw his attention sooner or later.~ DO~ SetGlobal("SantalosDec","GLOBAL",14)~ GOTO Talosvisit2
IF~~THEN REPLY~ Puuh - this one is a god and not just a minor one. We are deeper in trouble than I would wish to be - and the timing couldn't be worse.~ DO~ SetGlobal("SantalosDec","GLOBAL",14)~GOTO Talosvisit3
END

IF~Global("SanBHTalos","GLOBAL",2)~ THEN BEGIN TalosvisitBH1
SAY~Talos?~
IF~~THEN REPLY~ This symbol, you mean? Do you think those lizards worship him?~ DO~SetGlobal("SanBHTalos","GLOBAL",3) AddexperienceParty(3100)~GOTO TalosvisitBH2
END

IF~~ THEN BEGIN TalosvisitBH2
SAY~ Disturbing the peace of Osprem and Xerbo, trying to imbalance the scales between the creatures of the sea and those who make a living from it? That may well be the hand-writing of my old friend, the Storm Lord.~
IF~~THEN REPLY~ In this case we have added today another episode Talos may hold up against us.~ EXIT
IF~~THEN REPLY~ If we had not trouble with the guy before than we have assured ourselves of his wrath again today.~ EXIT
IF~~THEN REPLY~ That troublemaker better stay out of our path. Will HE ever learn his lessons?~EXIT
END

IF~Global("SanNWTalV","GLOBAL",3)~ THEN BEGIN Talosvisitbg1end
SAY~ Looks like our *host* wants to play hide and seek with us?~
IF~~THEN REPLY~ I'd like to speak a clear word with that Destructor for his constant nagging us, be assured. ~DO~SetGlobal("SanNWTalV","GLOBAL",4)~EXIT
IF~~THEN REPLY~ Let him play his games in solitude, I am too tired for it right now. Let's get out of here. ~DO~SetGlobal("SanNWTalV","GLOBAL",4)~EXIT
IF~~THEN REPLY~ We have proven ourselves more than competent to deal with over confident enemies, haven't we. Let's say *hello* to the guy. ~DO~SetGlobal("SanNWTalV","GLOBAL",4)~EXIT
END

//Bassilius
IF~Global("SanBassil","BG3700",1) ~THEN BEGIN Bassil1
SAY~(Mumbles) Cyric...this mad priest was at least right in one thing, it is hard to escape the grip of the family...~
IF~~THEN REPLY~(Look at her questioningly.)~ GOTO Bassil2
IF~~THEN REPLY~Why does your family come to your mind right now?~ GOTO Bassil2
END

IF~~THEN BEGIN Bassil2
SAY~Did I think aloud, <CHARNAME>...? The mad God of Lies is a disturbing person - but let us move on now, this is no place for prolonged stay.~
IF~~THEN REPLY~Yes, let's take this symbol to the Temple in Beregost and report our success there.~DO~SetGlobal("SanBassil","BG3700",2)~EXIT
IF~~THEN REPLY~At least his symbol will bring us good coin at the Temple in Beregost. Let's go and report our success there.~DO~SetGlobal("SanBassil","BG3700",2)~EXIT
END


//Duergar at Friendly Arm

IF ~ Global("DuerFAInn","GLOBAL",1)~ THEN BEGIN DuerFAInn
SAY~ Strange. Duergar here on the surface. Far away from any entrance to the underground.~
IF ~ GlobalLT("SandrahMorningTalk","GLOBAL",7)~ THEN REPLY ~ These are trouble times indeed. Nothing is as it should be. Except for some few important things. (You smile at her trying to look reassuring. You take her hand in yours while you continue your march. There is no objection from her side.) ~ DO ~ SetGlobal("DuerFAInn","GLOBAL",2)~ EXIT
IF ~ GlobalGT("SandrahMorningTalk","GLOBAL",6)~ THEN REPLY ~ These are trouble times indeed. Nothing is as it should be.~ DO ~ SetGlobal("DuerFAInn","GLOBAL",2) ~EXIT
END

// Book of Unknowing

IF ~ Global("SanSuUnKnBo","GLOBAL",1) !InParty("Sufinch") ~ THEN BEGIN SaBoUnkn
SAY~ Have you ever heard about that great *Book of Unknowing* back at Candlekeep?~
IF ~~ THEN REPLY ~ Hm, not that I know of it. But, wait - (Laugh) - if I understand it correctly, I may have held in in my hand and even read it, but I simply would not know of it, right?~ DO ~ SetGlobal("SanSuUnKnBo","GLOBAL",2) ~
GOTO  SaBoUnkn2
END

IF~~ THEN BEGIN SaBoUnkn2
SAY ~ Misty, misty indeed. I guess that would only happen to true believers in Leira. Us trivial unknowing mortals may have a chance to see it and remember.~
IF ~~ THEN REPLY~ Whatever, Sandrah. It sounds like an interesting subject. My, if we could only get access to Candlekeep again.~ GOTO  SaBoUnkn3
END

IF~~ THEN BEGIN SaBoUnkn3
SAY ~ We have a number of reasons to attempt for that, this book being the least of it. The knowledge to be found there is also related to you and Imoen and your heritage and fate.~
IF~~ THEN EXIT
END

//Gorion's Dagger
IF~Global("CVGodag","GLOBAL",2)~THEN BEGIN  Godag1
SAY~I observe that you study the details of that dagger once again. Is it something special to you, <CHARNAME>?~
IF~~THEN REPLY~It was Gorion's weapon, about the only physical heritage I've obtained from him.~ GOTO Godag2
IF~~THEN REPLY~I found it on Gorion's corpse and kept it, assuming it was his own, but....,~ GOTO Godag2
END

IF~~THEN BEGIN Godag2
SAY~(She has moved closer to look at the little weapon in your hand.) It has the initial *A* engraved, not a *G* like you would expect.~
IF~~THEN REPLY~Exactly...that's what was puzzling me as well.~DO~SetGlobal("CVGodag","GLOBAL",3)~GOTO Godag3
END

IF~~THEN BEGIN Godag3
SAY~Are you sure it was his weapon - it may be a hint to those who performed that assault on you?~
IF~~THEN REPLY~I'm sure it was his, I saw it on him almost daily, even though I never had the chance to see the engraving while he was alive.~GOTO Godag4
END

IF~~THEN BEGIN Godag4
SAY~Hm, in this case Gorion himself received it from someone else and kept it. The design is ancient, it maybe an item he himself inherited from his anchestors.~
IF~~THEN REPLY~I know nothing about Gorion's past, I must confess, not even the names of his parents if any of them started with *A*.~EXIT
IF~~THEN REPLY~A heritage or a booty - but then the Gorion I knew was a really peaceful man, not one to loot opponents even if he had them.~EXIT
IF~~THEN REPLY~The only person I know who played a role in Gorion's life and started with an *A* is that seer Aloundo, everpresent in Candlekeep's walls.~EXIT
END

IF~Global("CVGodag","GLOBAL",5)~THEN BEGIN  Godag5
SAY~Do you mind if I take a closer look at Gorion's dagger, dear?~
IF~~THEN REPLY~Why not? You have any new ideas about the thing?~DO~SetGlobal("CVGodag","GLOBAL",6)~ GOTO Godag6
END

IF~~THEN BEGIN Godag6
SAY~(She studies the dagger for some time before the responds to you.)~
=~Nothing too specific, I have to confess, just a few observations.~
=~By weight and design of the item I would say it was rather designed for a woman than a man.~
IF~~THEN REPLY~Interesting.~GOTO Godag7
IF~~THEN REPLY~Yes? Go on.~GOTO Godag7
IF~~THEN REPLY~Cherchez la femme *A*. ~GOTO Godag7
IF~~THEN REPLY~A trace to my mother maybe?~GOTO Godag7
END

IF~~THEN BEGIN Godag7
SAY~As a weapon it has not seen much fighting...~
IF~~THEN REPLY~Gorion was no adventurer as long as I knew him.~GOTO Godag8
IF~~THEN REPLY~Candlekeep was a peaceful enclosure, I never saw Gorion use a weapon or offensive spell until the day of his death.~  GOTO Godag8
END

IF~~THEN BEGIN Godag8
SAY~What I meant was, the weapon was not used for fighting even before it came into Gorion's possession. It looks more than a ritual dagger by its original design.~
=~(She hesitates for a momemt.)~
=~It may just be a silly young girl's imagination, but those ornaments have a sinister impression in my eyes.~
IF~~THEN REPLY~A sinister ritual dagger? Huh, you mean like one used for some kind of sacrifice or such...?~ GOTO Godag9
END

IF~~THEN BEGIN Godag9
SAY~(She nods without saying a further word.) ~
IF~~THEN DO~AddexperienceParty(1100)~ EXIT
END


// The Vault
IF ~Global("PriestGondVault","GLOBAL",2) ~ THEN BEGIN SanVault1
SAY ~ So finally we found the key to this vampiric sword - no, let me correct myself - we found the sword is the key to a place called the vault.~
IF ~~ THEN REPLY ~ Some treasure worth hunting, but the information is still slightly vague, if I may remark.~ GOTO SanVault2
IF ~~ THEN REPLY ~ *...a small, desolate isle surrounded by raging waters, only to be entered when the waters were calmed...* Hm, an island that can be reached at certain times, meaning it cannot be far out in the ocean. Mabe near the coast and reachable at low tide.~ GOTO SanVault2
END

IF ~ ~ THEN BEGIN SanVault2
SAY ~ Or an island in a river. Raging water in the springtime when the snow melts in the mountains but calmed in the warm seasons.~
IF ~~ THEN REPLY ~ There are islands like that in the south of the Sword Coast. I remember one or two down there, we killed an army of gibberlings near one of them, can you remember?~ GOTO SanVault3
END

IF ~ ~ THEN BEGIN SanVault3
SAY ~ I have no better clue than that, my lovely detective. We could check it, if our journeys ever lead us close to the place again.~
IF~~ THEN DO ~ SetGlobal("PriestGondVault","GLOBAL",3)~ EXIT
END

IF ~ Global("TheVaultSentry","GLOBAL",2) ~ THEN BEGIN SanVault20
SAY ~ So another bit of the Sword Coast history revealed by us.~
IF~~ THEN REPLY ~ Some experience and some gold we have gained, but what else? Is there any insight into our current task?~  GOTO SanVault21
IF~~ THEN REPLY ~ I always hated vampires and I found another reason why. But was this discovery really worth it? Is there any connection to our quest that I do not see?~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanVault21
END

IF ~ ~ THEN BEGIN SanVault21
SAY ~ Ancient vampires that travelled the Coast by these mysterious astral tunnels. The vault seemed to have been their travel center of kinds. I guess you are right, <CHARNAME>, there is no other insight here for us, than that the past is still alive in many ways around us and reaches out for us sometimes unexpectedly.~
IF~~ THEN DO ~ AddexperienceParty(3500) SetGlobal("TheVaultSentry","GLOBAL",3) ~ EXIT
END

//Xvart Village
IF ~ Global("SanXvarVil","GLOBAL",4)~ THEN BEGIN SanXvart1
SAY ~ Did we have to do that, <CHARNAME>?~
IF ~~ THEN REPLY ~ Sandrah, they have attacked us without any chance to come to some agreement. We just wanted to pass by in peace.~ GOTO SanXvart2
IF~~ THEN REPLY ~ There was no choice, wasn't it. THEY caused this bloodshed, not we.~ GOTO SanXvart2
END

IF~~  THEN BEGIN  SanXvart2
SAY ~ A whole village dead without apparent reason...and you say we are not to blame for this?~
IF ~~ THEN REPLY ~ What makes you say such a thing? You were here yourself - you even killed most of them. Are we supposed to feel guilty for defending our lives?~ DO ~ SetGlobal("SanXvarVil","GLOBAL",5)~ GOTO SanXvart3
END

IF~~  THEN BEGIN  SanXvart3
SAY ~ I feel so...dirty. It is so pointless. Why did we not just run away and took another road. Let those blue bastards alone - we have won nothing.~
IF ~~ THEN REPLY ~ I am not proud of what we have done, Sandrah, but look at it this way - we are a strong party and able to defend ourselves. If we had run away and kept them alive, what would have happened to a caravan of harmless travellers that could have met them without warning?~ DO ~ IncrementGlobal("Sanpoints","GLOBAL",1)~ GOTO SanXvart4
IF ~~ THEN REPLY ~ Oh, don't be silly, my 'counselor', it is surely not your 'advice' to run away from such blue bastards and let them attack anyone who comes their way.~ GOTO SanXvart4
END

IF~~  THEN BEGIN  SanXvart4
SAY ~ I am a bad counselor today, <CHARNAME>. Of course you are right, they did not give us a chance to act otherwise and we could not have left this threat terrorize the whole area and endanger anyone else who could come along here unaware.~
=~ Maybe it was just the complete stupidity of their senseless attack...why did they not see that we were much too powerful for them? Ah, do not worry, we will not be able to find an answer to that...~
IF ~~THEN REPLY ~ You are right. This battle is not among our heroic deeds, just some dirty job that needed to be done. Let us get out of here before all our morale reaches a new low point.~ GOTO SanXvart5
IF ~~THEN REPLY ~ (Take her in your arms for comfort.) Let us look for some sunshine even on this dreadful day, shall we?~ GOTO SanXvart5
END

IF~~THEN BEGIN SanXvart5
SAY~Thank you, my sweetheart, for trying to comfort me - but...I have the feeling we must find out the reason behind that stupid attack. Those Xvarts were not themselves - as if somebody or something had them under their spell. Please, let us go back to that cave and take a deeper look, just to make sure we have not missed something crucial.~
IF ~~THEN REPLY ~ Well, it's just a few steps away, if it makes you feel better...let's go.~ DO~IncrementGlobal("Sanpoints","GLOBAL",2)~EXIT
IF ~~THEN REPLY ~ All we need now is to get out of here and forget the whole thing over some mugs of beer and a warm bath.~DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~EXIT
END

//Ogre Ambush at Candlekeep

IF~Global("SanCandlOgr","LOCALS",1)~THEN BEGIN SarvArrog
SAY~ That arrogant fool, calling himself the *Son of Murder* now openly is making promises to his followers for the time of his *immortality* already.~
IF~~THEN REPLY ~ There are no more doubts now, counselor. Our findings and your learned analysis of the facts are proven correct now. Even if I had preferred your error, if you know what I mean.~ DO~ SetGlobal("SanCandlOgr","LOCALS",2)~GOTO SarvArrog2
END

IF~~ THEN BEGIN SarvArrog2
SAY~ Yes, I wish for that myself, nevertheless we cannot close our eyes to the facts - and the consequences it has for us.~
IF~~THEN REPLY ~ For us but also for him. Between now and the immortality he dreams of there is one more obstacle - me.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~ EXIT
IF~~THEN REPLY ~ For us but also for him. Between now and the immortality he dreams of there is one more obstacle - us.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",3)~ EXIT
IF~~THEN REPLY ~ For us but also for him. Between now and the immortality he dreams of there is one more obstacle - another potent candidate for the *Son of Murder* title.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",-13)~ GOTO SarvArrog3
END

IF~~ THEN BEGIN SarvArrog3
SAY~ Candidates there are maybe some. But none of them shall follow ever the one who spawned them.~
IF~~THEN REPLY ~ Because you say so?~ GOTO SarvArrog4
IF~~THEN REPLY ~ You seem to be ultimately determined to stop them - any of them as it seems.~ GOTO SarvArrog4
END

IF~~ THEN BEGIN SarvArrog4
SAY~ Yes.~
IF ~~ THEN DO ~ AddXPObject("CVSandr",12600)~ EXIT
END

IF~Global("Sanitems","BG2615",2)~THEN BEGIN SanAlaugrav1
SAY~ (Sigh) If those bones and old parchments could only tell us some more of what the seer envisioned in his lifetime.~
IF~~THEN REPLY~ You mean this is Alaundo's tomb?~GOTO SanAlaugrav2
IF~~THEN REPLY~ Maybe Oghma has granted him more insight than was preserved over the time since?~ GOTO SanAlaugrav2
END

IF~~ THEN BEGIN SanAlaugrav2
SAY~ Oghma has given his disciple the warning about what we will face very soon, <CHARNAME>. The truth and the details may have blurred over time just like these old pages.~
IF~~THEN REPLY~ It is maybe the intention of those powers that play a role in the whole plot, that not too much is revealed to us poor players yet? I am confident that you and me will find it out no matter what obstacles we will have to remove.~DO~ SetGlobal("Sanitems","BG2615",3) AddexperienceParty(3500)~ EXIT
END

// DSOTSC Underworld

IF ~ Global("SanDSOTSCUW","GLOBAL",1)~ THEN BEGIN SwCoaUW1
SAY ~ Duergar territory? This is much more than a simple cave, <CHARNAME>.~
IF ~~ THEN REPLY ~ Obviously.~ DO ~ SetGlobal("SanDSOTSCUW","GLOBAL",2) ~ EXIT
IF ~~ THEN REPLY ~ Does your book or your lore provide us with a bit of information about what to expect here? ~ DO ~ SetGlobal("SanDSOTSCUW","GLOBAL",2) IncrementGlobal("Sanpoints","GLOBAL",1)~ GOTO SwCoaUW2
END

IF ~~ THEN BEGIN SwCoaUW2
SAY ~ It is reported, that duergar and partly dwarfs have undermined a large part of the Sword Coast in their hunger for gold and ore. According to some sources, there was even an underground road similar to the King's Way above us on the surface.~
IF ~~ THEN REPLY ~ How long ago was that? Might it still exist today?~ GOTO SwCoaUW3
END

IF ~~ THEN BEGIN SwCoaUW3
SAY ~ There have been no reports about it during two human lifespans now. Duergar no longer have been seen on the surface of the Sword Coast for that long - other than occasional exiles or outcasts that is. But those caves, or rather mines still exist. Those races are known to secure their diggings for eternity.~
IF ~~ THEN REPLY ~ And you think we have found the entrance to that *underground coast*?~ GOTO SwCoaUW4
END

IF ~~ THEN BEGIN SwCoaUW4
SAY ~ Just look around, <CHARNAME>, this is build in a solid fashion. Look how they cleverly make use of the natural caves and structures and connect them with artifical tunnels. This looks like a system to me. And it is unlikely that more than one exist beneath this area.~
IF ~~ THEN REPLY ~ And what does that mean for us?~ GOTO SwCoaUW5
IF ~~ THEN REPLY ~ Do you have any idea who might be using it these days. Maybe our foe?~ GOTO SwCoaUW5
END

IF ~~ THEN BEGIN SwCoaUW5
SAY ~ This cave system will be rather large - I mean several days to travel and explore - even more if we take into account that it will not be uninhibited. I do not think that those bandits and iron throne allys have made their way into here. We have seen their activities all over the surface but no hints to some secret underground ways.~
IF ~~ THEN REPLY ~ But the mines?~ GOTO SwCoaUW6
END

IF ~~ THEN BEGIN SwCoaUW6
SAY ~ Yes, the mines, but they are just local systems, not connected with this one here. And remember all their transport and communication between their locations is on the surface.~
IF ~~ THEN REPLY ~ Then who is down here? ~GOTO SwCoaUW7
END

IF ~~ THEN BEGIN SwCoaUW7
SAY ~ We have seen orcs and duergar so far. Orcs do not usually go deeper under ground than we humans do. So it is probably duergar the deeper we proceed - and maybe drow.~
IF ~~ THEN REPLY ~ Drow? ~ GOTO SwCoaUW8
IF ~!InParty("yeslick")~ THEN REPLY ~ We will not find out unless we continue, right? Thank you once again, counselor.~ EXIT
IF ~!InParty("yeslick")~ THEN REPLY ~ I am once again perplexed how one can fill such a pretty head with such an amount of unnecessary lore.~ EXIT
IF ~InParty("yeslick")~ THEN REPLY ~ We will not find out unless we continue, right? Thank you once again, counselor.~ EXTERN BYESLI SwCoaUWY1
END

IF ~~ THEN BEGIN SwCoaUW8
SAY ~ It is often reported that the drow can be found at the lower levels of areas inhabited by the duergar. The drow tolerate the duergar usually, provided the duergar let them pass for their occasional raids to the surface and then block their retreat against possible pursuers from above.~
IF ~!InParty("yeslick")~ THEN REPLY ~ We will not find out unless we continue, right? Thank you once again, counselor.~ EXIT
IF ~!InParty("yeslick")~ THEN REPLY ~ I am once again perplexed how one can fill such a pretty head with such an amount of unnecessary lore.~ EXIT
IF ~InParty("yeslick")~ THEN REPLY ~ We will not find out unless we continue, right? Thank you once again, counselor.~ EXTERN BYESLI SwCoaUWY1
END

IF ~ Global("SanDSOTSCUW","GLOBAL",3)~ THEN BEGIN SwCoaUW21
SAY ~ A drow item, my suspicion was correct then. At least the duergar have trade with the drow.~
IF ~~ THEN REPLY ~ The thing looks really powerful, Sandrah.~ GOTO SwCoaUW22
END

IF ~~ THEN BEGIN SwCoaUW22
SAY ~ It is indeed. Drow items are energized by local earth nodes and the surrounding aura of what they call *faerzress*. As long as it remains within an earth node or a zone of faerzress, it grants its exceptional powers. The backdraw is that all those things will dissolve to dust if exposed to sunlight.~
IF ~~ THEN REPLY ~ Mmh. Anyway, we may use it as long as we stay underground. So you think drow are already near?~ GOTO SwCoaUW23
END

IF ~~ THEN BEGIN SwCoaUW23
SAY ~ At least they have a connection to this cave system, it seems, but at the moment we are still too near to the surface to their liking. But we need to heed the warning and be prepared if we want to go deeper into this labyrith.~
IF ~Global("SanRomPath","GLOBAL",1)~ THEN REPLY ~ I am afraid we must. I mean, we are following a dwarf. For him this is not such a strange habitat at all, he might have gone quite deep into this system.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SwCoaUW24
IF ~Global("SanRomPath","GLOBAL",2)~ THEN REPLY ~ I am afraid we must. I mean, we are following a dwarf. For him this is not such a strange habitat at all, he might have gone quite deep into this system.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SwCoaUW25
IF ~Global("SanRomPath","GLOBAL",1)~ THEN REPLY ~ I would rather return, Sandrah, but I have given my word to Otho to find his nephew. I won't break it, it would dishonour all of us.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~ GOTO SwCoaUW24
IF ~Global("SanRomPath","GLOBAL",2)~ THEN REPLY ~ I would rather return, Sandrah, but I have given my word to Otho to find his nephew. I won't break it, it would dishonour all of us.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~ GOTO SwCoaUW25
END

IF ~~ THEN BEGIN SwCoaUW24
SAY ~ Right, my hero! Onwards then.~
IF ~~ THEN DO ~ SetGlobal("SanDSOTSCUW","GLOBAL",4)~ EXIT
END

IF ~~ THEN BEGIN SwCoaUW25
SAY ~ Right, my heroine! Onwards then.~
IF ~~ THEN DO ~ SetGlobal("SanDSOTSCUW","GLOBAL",4)~ EXIT
END

IF ~ Global("SanDSOTSCUW","GLOBAL",5)~ THEN BEGIN SwCoaUW31
SAY ~ A strange alliance. Drow weaponmasters and mages with the duergar...~
IF ~~ THEN REPLY ~ Not really what you anticipated, Sandrah. Are you puzzled yourself?~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SwCoaUW32
IF ~~ THEN REPLY ~ You have erred a bit, it seems. Or maybe things have changed in the decades since your book has been last amended?~ GOTO SwCoaUW32
END

IF ~~ THEN BEGIN SwCoaUW32
SAY ~ These drow and duergar seem to be under some common command. We have seen the same on the surface with the Chill and the Black Talons and the orcs.~
IF ~~ THEN REPLY ~ And you assume the same happens in the underground coast as well? But not the same one in control as above. Some underground equivalent to the Iron Throne.~ GOTO SwCoaUW33
END

IF ~~ THEN BEGIN SwCoaUW33
SAY ~ Oh my, <CHARNAME>, if you are right, then there is bad trouble on its way. There is such a legendary organisation and it is led by drow. If those are behind this, then we face an enemy deadlier than those Iron Throne puppets.~
IF ~~ THEN REPLY ~ And who might that be?~ GOTO SwCoaUW34
END

IF ~~ THEN BEGIN SwCoaUW34
SAY ~ The worst criminal organisation that exists on the surface and in the underground of Faerun, the Bregan D'aerthe.~
IF ~~ THEN REPLY ~ I have never heard of them?~ GOTO SwCoaUW35
IF ~~ THEN REPLY ~ The what? How can they be famous if no one has heard about them?~  GOTO SwCoaUW35
END

IF ~~ THEN BEGIN SwCoaUW35
SAY ~ The name is about all I can tell you about them. Few people even know that much, and not many lived long enough to tell much. The only other thing about them is rumour that they are led by a drow that even the drow matrons fear - Jarlaxle.~
IF ~InParty("Viconia") ~ THEN DO ~ SetGlobal("SanDSOTSCUW","GLOBAL",6)~ EXIT
IF ~!InParty("Viconia") ~ THEN DO ~ SetGlobal("SanDSOTSCUW","GLOBAL",7)~ GOTO SwCoaUW36
END

IF ~~ THEN BEGIN SwCoaUW36
SAY ~ The question is, what they do here, so close to the surface of the Sword Coast and at a time where we have this crisis up there.~
IF ~~ THEN REPLY ~ We can only hope that this guy Jarlaxle is not in league with the Iron Throne and its leaders then.~ DO ~ AddexperienceParty(3500) ~ EXIT
END

IF ~ Global("SanDSOTSCUW","GLOBAL",8)~ THEN BEGIN SwCoaUW41
SAY ~ The deeper we come, the worse it looks, <CHARNAME>.~
IF ~~ THEN REPLY ~ After that duergar assault, these bandits here are just a joke for us.~ GOTO SwCoaUW42
END

IF ~~ THEN BEGIN SwCoaUW42
SAY ~ Yes, they are no longer real opponents for our fighting skills as a group by now. No, what I meant is that it bothers me that Black Talons are down here at all.~
IF ~~ THEN REPLY ~ Well, I guess I see what you mean. What do they do among the drow and duergar if they are not in league with them. Even if this is not part of the Iron Throne operation, there is obviously a connection.~ GOTO SwCoaUW43
IF ~~ THEN REPLY ~ Now I see! Why should they be here if there is not an alliance between the Iron Throne and this drow organisation you mentioned before.~ GOTO SwCoaUW43
END

IF ~~ THEN BEGIN SwCoaUW43
SAY ~ You say it, <CHARNAME>. Like it or not, there is no other way than to make it to the heart of this installation and find it out. Or even better, cross their evil plans once again.~
IF ~~ THEN REPLY ~ Ha! We did that before and we will strike once again without them expecting us down here at all. The moment of surprise is again on our side.~ DO ~ SetGlobal("SanDSOTSCUW","GLOBAL",9)~ EXIT
END

IF ~ Global("SanDSOTSCUW","GLOBAL",10)~ THEN BEGIN SwCoaUW50
SAY ~ Sometimes I do not really like to be right in my analysis. This time I wished I had erred.~
IF~~ THEN REPLY ~ Rieltar and the Iron Throne in league with the Bregan D'aerthe, what could be worse.~ GOTO SwCoaUW51
IF~~ THEN REPLY ~ So this is where those bastards got their supplies from. An alliance with the Underdark. Name an evil deed and those traitors have already done it.~ GOTO SwCoaUW51
END

IF ~~ THEN BEGIN SwCoaUW51
SAY ~ Still there is a bit of hope in all this for us now, <CHARNAME>.~
IF~~THEN REPLY ~ Sandrah, you and your undefeatable optimism. Where do you see the light at the end of this tunnel now?~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SwCoaUW52
IF ~~THEN REPLY ~ As much as I admire your optimistic view at times, I am afraid this is really grave news even for you.~ GOTO SwCoaUW52
END

IF ~~ THEN BEGIN SwCoaUW52
SAY ~ But what we have heard is that this alliance runs all but smooth, actually it is about to break. And now at this exact point we have dealt them another unexpected blow by destroying their local basis here. Rieltar and the Throne is defeated twice today - and he may not be aware for it for some time as there are no witnesses left to report what has happened here today.~
IF~~THEN REPLY ~ Hey, yes, now I see what you mean. Listen, nobody knows we have been here at all - let Jarlaxle believe this destruction was caused by Mortius and Shar Nadal and their men getting into arguments with each other.~ GOTO SwCoaUW53
END

IF ~~ THEN BEGIN SwCoaUW53
SAY ~ Brilliant, <CHARNAME>, let us sneak out like we sneaked in without leaving our traces. As we killed members of all fractions involved and have not left any evidence of ourselves behind yet, your plan will work. I suggest to move further on instead of returning the way we came.~
IF~~THEN REPLY ~ Why do you propose that last?~ GOTO SwCoaUW54
END

IF ~~ THEN BEGIN SwCoaUW54
SAY  ~ If I have plotted our way through this labyrinth right, we have generally moved into a northerly direction, and we have not gone down into the earth but stayed at almost the same level all the time. Remember when we talked about that subterranean King's Way earlier.~
IF~~THEN REPLY ~ I get your point, there may be another exit to the surface in this direction soon. The Iron Throne men must have come that way from Baldur's Gate, otherwise Ferthgil must had seen them on the route from the southern entrance.~ DO ~ SetGlobal("SanDSOTSCUW","GLOBAL",11)~
EXIT
END

IF ~ Global("SanDSOTSCUW","GLOBAL",13)~ THEN BEGIN SwCoaUW60
SAY ~ Now comes that part of our underground trip where I am glad I am not this group's leader, <CHARNAME>.~
IF~~THEN REPLY ~ What are you talking about now, my love. Have I missed something?~ GOTO SwCoaUW61
IF~~THEN REPLY ~ Yes, it is not an easy duty to return with the news of somebody's loved ones death. Not an easy duty but a duty nonetheless.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SwCoaUW61
END

IF ~~ THEN BEGIN SwCoaUW61
SAY  ~ Well, Otho deserves to know the truth about his nephew. And we should return the hammer to him.~
IF~~THEN REPLY ~ You are right, the sooner we bring this step behind us, the better. We should leave here as quick as we can anyway, nobody should suspect us to have anything to do with the raiding of this underground labyrinth.~ DO ~ SetGlobal("SanDSOTSCUW","GLOBAL",14)~ EXIT
END



//Infiltrate bandit camp
IF ~ Global("SanBadDir","GLOBAL",1)~ THEN BEGIN SanBadDir10
SAY ~ <CHARNAME>, just one moment please.~
IF~~THEN REPLY ~ Yes, my counselor?~ DO ~SetGlobal("SanBadDir","GLOBAL",2)~ GOTO SanBadDir11
IF~~THEN REPLY ~ What now?~ DO ~SetGlobal("SanBadDir","GLOBAL",2)~ GOTO SanBadDir11
END

IF~~ THEN BEGIN SanBadDir11
SAY ~ I speak indeed as your counselor now. We should really consider not to take this bandit camp by a frontal attack. It is not only the forces we will have to face but also the possibility that hostages may be killed and that the bosses may get a chance to escape us at last in the foreseeable turmoil of the fight.~
IF~~THEN REPLY ~ This is to be considered, you are right. I would avoid such a move, if I only knew of an alternative.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SanBadDir13
IF~~THEN REPLY~ Hesitation from my frontline fighter is the last thing I need in this situation. Sandrah, you deeply disappoint me.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",-1)~GOTO SanBadDir12
IF~~THEN REPLY ~ Can you recommend another path of action for us? You know that time is pressing us.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanBadDir13
END

IF~~ THEN BEGIN SanBadDir12
SAY~ Before you unjustly condemn me for cowardice, would you not at least try to listen to my reasoning first?~
IF~~THEN REPLY ~ No one would ever call you a coward, Sandrah. But I have made my decision and I expect you to follow. Unless you are really able to produce an alternative right now.~ GOTO SanBadDir13
IF~~THEN REPLY ~ If you are so clever, then tell us YOUR plan, but make it quick.We cannot stand here discussing when the foe will detect us any moment.~ GOTO SanBadDir13
END

IF~~ THEN BEGIN SanBadDir13
SAY~ We have seen and heard the reports of the nearby areas, especially Larswood and Peldvale are also in the hands of those bandits. We have also reduced their ranks lately quite a bit. Let us find some subcommander there on the perimeter and convince him that we are the necessary reinforcement.~
IF~~THEN REPLY ~ You mean, we join their ranks and try to get transferred to the main camp without the need to battle our way in?~ GOTO SanBadDir14
END

IF~~ THEN BEGIN SanBadDir14
SAY ~ It would give us the chance to know our enemy from within before we decide to strike if necessary. If we are lucky and clever enough, we may even get a lot of information about their organisation and those who really pull the strings. I doubt that we would be able to get this knowledge by a frontal attack, even a successful one.~ 
IF~~THEN REPLY ~ Sandrah, I apologize for my rudeness. Your reasoning is convincing. Let us retreat to Peldvale and look for their representatives there.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
IF~~THEN REPLY ~ I was a bit harsh, Sandrah, sorry, we should really retreat to Larswood and see if we find a way from there like you proposed.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
IF~~THEN REPLY ~ A cunning and clever plan, Sandrah. Sorry that I was so rude to you before. If only we had this much time to execute it. The camp is just ahead and it is a hard decision to turn away again. Even if it may be the better decision.~ EXIT
END

IF ~ Global("SanSareHi3","LOCALS",1)~ THEN BEGIN SanSareHi30
SAY ~ Sarevok...~
IF ~~ THEN REPLY ~ The name is here in this letter. The chain seems to have not ended yet. Sounds like he is the next guy behind Davaeorn.~ GOTO  SanSareHi31
IF~~ THEN REPLY ~ Sarevok, who is that?~ GOTO SanSareHi32
END

IF ~~ THEN BEGIN SanSareHi31
SAY ~ Another piece of this puzzle falls into place. A man of your age and suspected once to be a Bhaalspawn.~
IF~~ THEN REPLY ~ And now he is here as part of this Iron Throne operation. This is no coincidence, I am sure.~ GOTO SanSareHi33
END

IF ~~ THEN BEGIN SanSareHi32
SAY ~ From the contents of this letter he is the next in the chain of command above Davaeorn. ~
IF~~ THEN REPLY ~ It sounded like you have heard the name before?~ GOTO  SanSareHi31
END

IF ~~ THEN BEGIN SanSareHi33
SAY ~ So am I. The boy Sarevok has mysteriously disappeared some time ago. He would now be a man of your age, maybe one who has developped secretly the power inherited by a Bhaalspawn to a signicant level. He is surely involved in this intrigue, if he is not the one we are after himself.~
IF~~ THEN REPLY ~ There have been already a number of hints to the involvement of a Bhaalspawn before. Now he has a name. And I bet I have already met him once!~ GOTO  SanSareHi34
END

IF ~~ THEN BEGIN SanSareHi34
SAY ~ My darling, you think you met him on the day your foster father died?~
IF~~ THEN REPLY ~ The black creature that killed Gorion. The faceless one starts to get unveiled. Sarevok.~ DO ~ AddexperienceParty(550) SetGlobal("SanSareHi3","LOCALS",2)~ EXIT
END

// Desert Trolls
IF~ Global("SanDesTroll","LOCALS",1)~ THEN BEGIN DesertTrollAdvice1
SAY~ Oh, my, <CHARNAME>, watch out, those are desert trolls.~
IF~~THEN REPLY ~ I learned that trolls regenerate and can only be killed by fiery weapons and spells. Thank you for reminding me to use them here.~ DO~ SetGlobal("SanDesTroll","LOCALS",2)~ GOTO DesertTrollAdvice2
END 

IF~~THEN BEGIN DesertTrollAdvice2
SAY~ What you learned is correct for other kinds of trolls. These desert trolls are immune to that. We need to use acid against them. Here, let our archers try these acid arrows. ~ 
IF~~ THEN DO ~ GiveItemCreate("arow04",Player1,40,0,0) GiveItemCreate("arow04","CVSandr",50,0,0) DialogInterrupt(FALSE)~ EXIT
END

// Find Cloakwood Mines
IF ~ Global("SANIMONASHINT","GLOBAL",18)~ THEN BEGIN SanMinBo1
SAY ~ (Sandrah has taken a short halt of the group to search through the pages of her all-knowing book.)~
IF~~THEN REPLY ~ My, why haven't we thought of that before. The book will know about the mines, of course.~ GOTO SanMinBo2
IF~~THEN REPLY ~ We have maps and knowledge of the Sword Coast. Sometimes one is too blind to see. You have a map of the cloakwood there!~ GOTO SanMinBo2
END

IF~~ THEN BEGIN SanMinBo2
SAY ~ Pst, <CHARNAME>, do not yet raise Imoen's hopes too high. Please let me first see. - - - Hmm. --- Aha, mmh...~
IF~~THEN REPLY ~ And? ~ DO ~ SetGlobal("SANIMONASHINT","GLOBAL",19)~ GOTO SanMinBo3
END

IF~~ THEN BEGIN SanMinBo3
SAY ~ You want the good news or the bad news first?~
IF~~THEN REPLY ~ I would say that any news at all is already better than what we have.~ GOTO SanMinBo4
END

IF~~ THEN BEGIN SanMinBo4
SAY ~ The Cloakwood Mines were an old dwarfen mine once. Even during the days of its operations, the exact location had been kept a secret among their clans alone. But even that is many years passed.~
= ~ The dwarfs in their endless digging lower and lower, one day had hit something like a subterranean river or water reservoir. The whole mine was flooded and many of their kin were drowned in the disaster. ~
=~ In the years since then only few attempts have been made to get access again to the cave system, but they all failed. And what little knowledge existed of the exact location has diminished as well.~
IF~~THEN REPLY ~ If I remember my lessons from Candlekeep well, the Cloakwood covers nearly a quarter of the Sword Coast. No settlements exist and no real roads, just footpaths used by obscure druids. ~ GOTO SanMinBo5
END

IF~~ THEN BEGIN SanMinBo5
SAY ~ Do not forget to mention the giant spider populations and the wyverns. But none of that should keep us from going there to rescue Henning and further pursue your enemy.~
IF~~THEN REPLY ~ Our enemy, Sandrah, our enemy. So all we need to do is to find a needle in a haystack as big as the Cloakwood. What are we waiting for?~ GOTO SanMinBo7
IF~~THEN REPLY ~ You have not told me all yet, I see in your pensive look, you still have something on your mind. ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanMinBo6
END

IF~~ THEN BEGIN SanMinBo6
SAY ~ It is just a thought that came to my mind. This secret enemy poisons the ore in the major mine of the Sword Coast thus causing an iron crisis. Now we know that maybe he has a connection to an even larger mine, if it could be brought to operation again. Maybe he has found a way to do it, so he can supply iron where others no longer can. A way to gain power. ~
IF~~THEN REPLY ~ But we have spoiled this part of his plan by our action on the Nashkel mine. And the one he was hunting has now become his hunter.~ GOTO SanMinBo7
END

IF~~ THEN BEGIN SanMinBo7
SAY ~ Even with this extra knowledge we have gained today, our next target remains the bandit camp and Tazok, it seems. ~
IF ~~ THEN EXIT
END


//In Sandrah's Room First Night

IF ~Global("Santlove","GLOBAL",4)~ THEN BEGIN SanFirstN1SI
SAY ~ (Sandrah pours a glass of burgundy coloured thick wine from a decanter on the table and drinks a tiny sip of it, closing her eyes to fully appreciate the moment. She moves up to you and holds the glass to your lips. She now looks straight into your eyes with her own bottomless and unpenetrable look, that seems to say everything and nothing at the same time.)~
IF ~Global("SanRomPath","GLOBAL",1)~ THEN REPLY ~ (You take a small sip from the glass as well and then take it from her hand to put it on the table with your eyes still looking deeper and deeper into hers.) ~ DO ~ SetGlobal("Santlove","GLOBAL",5) SetGlobal("SanFirNigh","LOCALS",1)~ GOTO SanFirstN2m
IF ~Global("SanRomPath","GLOBAL",2)~ THEN REPLY ~ (You take a small sip from the glass as well and then take it from her hand to put it on the table with your eyes still looking deeper and deeper into hers.) ~ DO ~ SetGlobal("Santlove","GLOBAL",5) SetGlobal("SanFirNigh","LOCALS",1)~ GOTO SanFirstN2f
END

IF ~Global("Santlove","GLOBAL",6)~ THEN BEGIN AfterFN1
SAY ~ I love you, <CHARNAME>.~
IF~~THEN REPLY ~ I love you, Sandrah. This night was wonderful. I will never forget it. Look at the sun coming up. I look ahead to another wonderful day with you.~ GOTO AfterFN2
IF~~THEN REPLY ~ Last night was wonderful, my darling. I hope it was not the last we spend like this. But look at the sun rising. Somewhere down in this mist over Faerun lies my destiny.~ GOTO AfterFN2
END

IF~~THEN BEGIN  AfterFN2
SAY ~ Somewhere down in this mist that covers Faerun lies OUR destiny. The sun will soon dissolve the morning mist and things will become clear.~
IF~~THEN REPLY ~ Let us go down to see our comrades. You are right. It is time to bring further light into this mist that covers our future. One more kiss before we go. (Embrace her passionately.)~ DO ~ SetGlobal("Santlove","GLOBAL",7)~ GOTO AfterFN3
END

IF~~THEN BEGIN  AfterFN3
SAY ~ (Sandrah returns your kiss in what seems to be a never ending moment.)~
= ~ Let us go to our comrades below, see how they enjoyed the stay. And do not forget to see my father in his study, he may have some valid information for our further travels.~
IF~~THEN EXIT
END

//Excavation on Sword Coast

IF~ Global("SanIdolTake","GLOBAL",1)~ THEN BEGIN TakIdl1
SAY ~ Remember how you told me about this scientist when we talked about old places on the Sword Coast, <CHARNAME>.~
IF~~THEN REPLY~ Yes, do you think there is anything here that has to do with the ghost of Beregost? ~ GOTO TakIdl2
END

IF~~THEN BEGIN  TakIdl2
SAY ~ When you look at these engravings all over the wall they appear to be of the same ancient period and culture. There may exist some connection.~
IF~~THEN REPLY~ Do you think it will be safe to take any relicts from this tomb with us? I mean just in case.~ GOTO TakIdl3
END

IF~~THEN BEGIN  TakIdl3
SAY ~ Safe? We should be alert and we should search for traps and similar guards that may exist in a place like this. There is a good chance that those who build this place took measures against theft, even beyond their own existence.~
IF~~THEN REPLY ~ Do you think that it is theft to take something from here?~GOTO TakIdl4
IF~~THEN REPLY ~ As a priest, is it a sacrilege for you to take things from a place like this, I mean, do you think this here is sacred?~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO TakIdl4
END

IF~~THEN BEGIN  TakIdl4
SAY ~ Those people are long dead and the things they left behind here no longer *belong* to them. Will it not be better if those dead artifacts could still be of some use to the living? Be it to lay the Beregost ghosts to rest, or be it for us to learn something from the events and people of older times.~
= ~ The reason I warned you, <CHARNAME>, is that those dead may had a different opinion during their lifetime and have therefore guarded it against what they would call *thieves*.~ 
IF~~THEN DO~ SetGlobal("SanIdolTake","GLOBAL",2)~ EXIT
END

//Vampire Revenge
IF ~ Global("SanIdolTake","GLOBAL",3)~ VaRevF1
SAY ~ So this is the famous or rather *infamous* Vampire's Revenge. <CHARNAME>, remember not to use it.~
IF~~THEN REPLY ~ But what to do with it now? ~ GOTO VaRevF2
END

IF~~ THEN BEGIN VaRevF2
SAY ~ We should get ourself some holy water from the Beregost Temple and then go to visit the ghost cave nearby. Torqion required those two items to end his spooking. I think the town's people would be grateful if we could end the horror there.~
IF ~~ THEN REPLY~ Thank you, my counselor. (You lay your arm around her waist and walk entwined with her for a while.) ~ DO~ SetGlobal("SanIdolTake","GLOBAL",4)~ EXIT
END

IF ~ Global("SanIdolTake","GLOBAL",5)~ THEN BEGIN VaRevF3
SAY ~ We have done to the area around here some favour, and also to this lost soul, <CHARNAME>. I think we should keep the cursed sword. I have read, that it is considered to be the key to something from the past. Maybe we can find out something during our travels.~
IF ~ PartyHasItem("sw1h19") ~ THEN REPLY~ Maybe a smith or a learned mage know something. ~ GOTO VaRevF4
IF ~ !PartyHasItem("sw1h19") ~ THEN REPLY~ Torqion seems to have dropped it when he *died*. Maybe a smith or a learned mage know something. ~ GOTO VaRevF4
END

IF ~~ THEN BEGIN VaRevF4
SAY ~ It will not hurt to ask Thalantyr or Taerom next time we pass by their houses.~
IF ~~ THEN REPLY~ Let us do that. It is not urgent but maybe we learn something interesting about the Sword Coast's past in the end.~ DO ~ SetGlobal("SanIdolTake","GLOBAL",6)~EXIT
END

// Sandrah Coran Return
IF~ Global("SanCorbabe","GLOBAL",10)~ THEN BEGIN SanWantCorB1
SAY ~ Say, <CHARNAME>, will we go to the 'Sturgeon' soon to pick up Coran again?~
IF~~THEN REPLY ~ He is gone to take up some responsibility - after all. It is strange that just you would insist of taking him away from his *family* again.~ GOTO  SanWantCorB2
IF~~THEN REPLY ~ You are as fond of him as you are of his little baby, aren't you. A bit too much for my liking.~ GOTO  SanWantCorB3
IF~~THEN REPLY ~ Sure, he should have settled his affairs by now, especially with that extra help you supplied to him.~ DO~ SetGlobal("SanCorbabe","GLOBAL",11)~EXIT
END

IF~~ THEN BEGIN SanWantCorB2
SAY ~ It is not really a family, <CHARNAME>, as the love between the parents is not there. Coran had admitted his responsibility and he will take care of Namara's well-being from now on. There is no need however to stay where he is not wanted.~
IF~~THEN REPLY ~ I see. But he is wanted here - by you, at least.~ DO~ SetGlobal("SanCorbabe","GLOBAL",11)~EXIT
END

IF~~ THEN BEGIN SanWantCorB3
SAY ~ I fully admit that, <CHARNAME>. Nevertheless the baby belongs to her mother - but the man does not.~
IF~~THEN REPLY ~ He belongs to you then? Well, we will see.~ DO~ SetGlobal("SanCorbabe","GLOBAL",11)~EXIT
END

// Sandrah Xan Relationship

IF ~ Global("SanXanPC","GLOBAL",1)~ THEN BEGIN SanXanPC10
SAY~ (Sandrah has stopped at the wayside to inspect something on her fashionable boot. Her shapely leg and foot is fully exposed and you notice that the male members of your party have stopped to admire the wonderful display. Including Xan.)~
IF~~THEN REPLY ~ (You stop beside Xan to admire Sandrah's beauty as well. In your fantasy you run your fingers along the silken skin of Sandrah's leg. You silently smile to yourself knowing that this is exactly what you will do at rest this eve.)~ DO ~  SetGlobal("SanXanPC","GLOBAL",2)~ EXIT
IF~~THEN REPLY ~ (You stop beside Sandrah and say, audible for her ears only.) Do you know how everybody is watching you, even Xan.~ GOTO SanXanPC11
END

IF~~THEN BEGIN SanXanPC11
SAY ~ (Sandrah continues with her boot-laces, while she responds to you in the same volume.) And does it improve his mood, can you see that? I do not dare to look around myself, it would be a bit to obvious.~
IF~~THEN REPLY ~ You do that for him, and I thought you did it for me?~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanXanPC12
IF~~THEN REPLY ~ He seems to admire it - like everybody, including myself. Say, do you want to cure him, sweet healer? I declare him a hopeless case.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SanXanPC13
END

IF~~THEN BEGIN SanXanPC12
SAY ~ Darling, I do not exclude you. All you see is yours to have whenever you want.But you are right, I try to humour our poor moody elf a bit.~ 
IF~~THEN REPLY ~ Good luck, Sandrah. I hope you will not drench me in tears should you fail with him. I declare him a hopeless case.~ GOTO SanXanPC13
END

IF~~THEN BEGIN SanXanPC13
SAY ~ I would not agree to that. You know that I am very reluctant to declare any case as hopeless. And the initial results are promising.~
IF~~THEN REPLY~ I can only hope you will not spend too much time at his *sickbed* and away from me. ~GOTO SanXanPC14
END

IF~~THEN BEGIN SanXanPC14
SAY ~ The whole cure could be easier if I had a bit of assistance with the case?~
IF~~THEN REPLY ~ Do you mean me, Sandrah?~ GOTO SanXanPC15
IF~~THEN REPLY~ What does that mean, Sandrah? Do you want to involve me also into this case - that is...strange.~ GOTO SanXanPC15
END

IF~~THEN BEGIN SanXanPC15
SAY ~ <CHARNAME>, as the leader of this group you have a responsibility for those you lead. No one should suffer if help could be provided. And - just in case you have not noticed it yet - this patient would not reject a bit more interest from your side.~
IF~~THEN REPLY ~ Sometimes your fantasies are really wild, Sandrah. But maybe that is what I love you for. ~ DO ~  SetGlobal("SanXanPC","GLOBAL",3)~ EXIT
IF~~THEN REPLY ~ As long as our relationship is not impacted by this. My love for you is too important to put it on risk. ~ DO ~  SetGlobal("SanXanPC","GLOBAL",3)~ EXIT
END

//Haeball
IF~ Global("9001Fi","GLOBAL",2)~  THEN BEGIN HeabAft1
SAY ~ I think I owe you an explanation?~
IF~~ THEN REPLY ~ That was indeed a puzzling situation. What was wrong with that mage?~ DO ~ SetGlobal("9001Fi","GLOBAL",3)~GOTO HeabAft2
END

IF~~  THEN BEGIN HeabAft2
SAY ~ He obviously had something to hide. And he must have sensed either my heritage or my blessing by Mystra. He must be very much afraid of righteous mages like my father. ~
IF~~ THEN REPLY ~ Is that all? Or is it you now who is hiding something from me.~ GOTO HeabAft3
END

IF~~  THEN BEGIN HeabAft3
SAY ~ (Sandrah looks you straight in the eye.) I am not hiding anything about that mage. I know not more than what I just told you. We should just be careful if we meet him again or ever hear something of him again. ~
IF~~ THEN REPLY ~ Whatever. Let's forget about it.~ EXIT
IF~~ THEN REPLY ~ Yes, I see. Thank you for the warning. Maybe we will not ever meet this man again.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
END

IF ~ Global("9001Fi","GLOBAL",4)~ THEN BEGIN HaebCorps1
SAY ~ Now I see why this Haeball had raised my suspicion the first time we met. One of those fiddling with magical secrets far too big for them. They summon incredible creatures to this plane without the ability to handle them. He had all reasons to fear me and my father.~
IF ~~ THEN REPLY ~ If we can get the corpse from him, we can send these monsters back before they can do much harm.~ GOTO HaebCorps2
IF ~~ THEN REPLY ~ As long as those creatures stay in here, they do no harm to the Sword Coast. Only stray adventurers like us would risk to find them. That is the price for sticking your nose into every hole you find.~ GOTO HaebCorps3
END

IF ~~ THEN BEGIN HaebCorps2
SAY~ Sweetheart, we should do something about it. After some time these creatures will get bored and find their way out of here. We surely do not want them run through the streets of Nashkel.~
IF ~~ THEN REPLY ~ Surely not, my counselor.~ DO ~ SetGlobal("9001Fi","GLOBAL",5)~ EXIT
END

IF ~~ THEN BEGIN HaebCorps3
SAY~ (Laughs) I know some of them. But honestly, sweetheart, we should do something about it. After some time these creatures will get bored and find their way out of here. We surely do not want them run through the streets of Nashkel.~
IF ~~ THEN REPLY ~ Surely not, my counselor.~DO ~ SetGlobal("9001Fi","GLOBAL",5)~ EXIT
END

IF~~THEN BEGIN SanHasItms2
SAY ~ That would include betrayal by yourself, mageling. Your mistrust in my blood is repaid my mistrust for you.~
IF~~THEN REPLY ~ What would you advise, counselor?~ GOTO SanHasItms3
END

IF~~THEN BEGIN SanHasItms3
SAY~ Let us avoid Hasdar and this mage here for the time being until we may have found additional facts in this mysterious affair.~
IF~~THEN EXIT
END

IF ~ Global("SanFDGGoth","GLOBAL",1) ~THEN BEGIN SanGhotalBG1
SAY ~ The orcs here really want to resurrect General Ghotal. There is a great danger lurking here, <CHARNAME>.~
IF ~~ THEN REPLY~ I think, my learned one, you have to enlighten us poor unknowledgeable fellows on who that is - or was, rather.~ GOTO SanGhotalBG12
IF ~~ THEN REPLY~ Is the cunning of those orc hords really of any significance to us or anyone on the Sword Coast?~ GOTO SanGhotalBG12
END

IF~~  THEN BEGIN SanGhotalBG12
SAY ~ Strange, you are normally well learned in the lore of the Sword Coast. But maybe there is not so much known about that time south in Candlekeep. Maybe the threat was more on Waterdeep.~
= ~ Anyway, General Ghotal was the greatest orc leader ever. He almost succeeded to unite all the fierceful northern Clans of the orcs and he led them against the joint forces of Waterdeep and the Sword Coast. He only failed in the end because his own forces betrayed him and started their endless internal quarrels again before the final battle was won.~
= ~ Here on the Fields of Death must be the place of his final defeat.~
IF ~~ THEN REPLY~ But when did all of that happen. Surely too long ago to still resurrect him, even if he was such a strong leader.~ GOTO SanGhotalBG13
IF~~THEN REPLY ~ Hm, orcs. As long as they waste their time to pray for a long gone leader, that keeps them occupied and out of our ways, right?~ GOTO SanGhotalBG13
END

IF~~  THEN BEGIN SanGhotalBG13
SAY ~ You normally would be right. This battle was two generations ago and the fiercest the Realms had ever seen. The problem is, that there are many hints to the fact that Ghotal was Myrkul's son .~
IF ~~ THEN REPLY~ You mean another godchild, from one of the Dead Three, Bane, Bhaal and Myrkul.~ GOTO SanGhotalBG14
END

IF~~  THEN BEGIN SanGhotalBG14
SAY ~ <CHARNAME>, the lore we have of these events is really few. You at Candlekeep had not even heard about it at all, and even my knowledge and my tome provide little less than what I just told you. It almost seems, that our side - the humans and elves who fought the northern orc clans - did not really want to remember those days once the fight was over.~
IF ~~ THEN REPLY~ Who would blame them, Sandrah.~ GOTO SanGhotalBG15
END

IF~~  THEN BEGIN SanGhotalBG15
SAY ~ Maybe they blamed themselves. Even though our books try to make Ghotal look like a kind of half-beast invader, it does not really fit. The way he organised the orc Clans and was about to defeat the southern forces does not sound like he was just a primitive aggressor. And if you look at the rest of the tales from that time, you would get the picture of the southern people expanding their lands largely to the north and to the east.~
IF ~~ THEN REPLY~ You mean that it was probably rather us who intruded into the lands of the orcs than them attacking. Then Ghotal had united them to defend their territories, their homelands against our expansion. That would explain the neglection of that part in our oh so glorious history.~ DO ~ SetGlobal("SanFDGGoth","GLOBAL",2)~EXIT
END

IF ~ Global("SanNTFalseWarn","LOCALS",1)~ THEN BEGIN SanWarnNTPb
SAY ~ Watch out, <CHARNAME>, I sense a deadly trap here. Until we have found the required keys, we should not touch anything here at this sacred place.~
IF ~~ THEN REPLY~ A sacred place and guarded by orcs? Strange to hear such things from you, I have learned that you are not superstitious.~ DO~ SetGlobal("SanNTFalseWarn","LOCALS",2)~GOTO SanWarnNTPc
END
 
IF ~~ THEN BEGIN SanWarnNTPc
SAY ~ I do not blame you, because it is easy to forget, but I am a priestess after all. This place is powerfully guarded by an ancient god or goddess. It may be connected to the events we have found on the Fields of the Death.~
IF ~ GlobalGT("SanFDGGoth","GLOBAL",1)~ THEN REPLY~ This General Ghotal, the orc leader. We heard that the orcs seek a way for his ressurection. ~ EXIT
IF ~Global("9001Fi","GLOBAL",3)~ THEN REPLY~ Wasn't that strange mage Haeball mentioned in connection with that?~ EXIT
IF~~ THEN REPLY~ Whatever key may be required to open it. Mmh, we best stay away from it then, my counselor.~ EXIT
END

IF ~ Global("SanOrcCKey","LOCALS",1)~ THEN BEGIN SanOrcCKey1
SAY ~ A rusty dagger with a strange feeling to it. I have sensed this god's presence recently.~
IF~~ THEN REPLY~ Do you remember where that was or why?~ GOTO SanOrcCKey2
IF ~~ THEN REPLY ~ You mentioned such a strange feeling about an unknown god or goddess at that orc circle in the Wood of the Dead.~ GOTO SanOrcCKey3
END

IF ~~ THEN BEGIN SanOrcCKey2
SAY ~ Wait a minute...hm...ah, yes, that orc ritual in the Wood of the Dead. The stones there had that same aura.~
IF~~ THEN REPLY ~ You warned me of a deadly trap there. May this dagger be the key to it? ~ GOTO SanOrcCKey4
END

IF ~~ THEN BEGIN SanOrcCKey3
SAY~ Right, my genius. The stones there had that same aura.~
IF~~ THEN REPLY ~ You warned me of a deadly trap there. May this dagger be the key to it? ~ GOTO SanOrcCKey4
END

IF ~~ THEN BEGIN SanOrcCKey4
SAY~ It is one part of the key, yes, but it is not complete. It makes no sense to try it unless we have the other half. Perhaps we will find it on our further travels.~
IF~~ THEN DO ~ SetGlobal("SanOrcCKey","LOCALS",2)~EXIT
END

IF ~ Global("SanKnowsHasdId","GLOBAL",3)~ THEN BEGIN SanKnowsHasdIdT1
SAY ~ With what we have found until now, we should take the opportunity and talk to Hasdar in Baldur's Gate again.~
IF~~THEN REPLY ~ Do you really counsel me to give him the book he requires? ~DO ~ SetGlobal("SanKnowsHasdId","GLOBAL",4)~ GOTO SanKnowsHasdIdT2
END

IF ~~ THEN BEGIN SanKnowsHasdIdT2
SAY ~ I propose to try and get as much information out of him as we can, using the bits and pieces we have gathered so far. Our goal must be, to stop whatever is brewing up there in the northern woods and around the Field of the Dead. A new orc war is not what the Sword Coast needs now.~
IF ~~ THEN REPLY ~ Am I right to think, that you want to use again your methods of threatening and bluff, I could study on you now every once in a while? I will never sit down for a cardgame with you, my sweet counselor.~
EXIT 
END

IF ~ Global("SanKnowsHasdId","GLOBAL",5)~ THEN BEGIN SanKnowsHasdId11
SAY ~ Now we must ask for our reward for the book from Hasdar with a bit more emphasis. He is surely on his way to the east and to the temple in the Forest of Forgotten Souls.~
IF ~~ THEN REPLY ~ We will face an even more alert opponent by now. But what the hell, what has to be done must be done. And this cult *must* be destroyed.~ DO ~ SetGlobal("SanKnowsHasdId","GLOBAL",6)~ EXIT
END

IF~ Global("SanGothSwFound","GLOBAL",1) ~ THEN BEGIN SanGoth60
SAY ~ Here it is, Ghotal's famed sword!~
IF ~~ THEN REPLY~ The thing can really make one shiver. We should not keep it.~ GOTO SanGoth61
IF ~~THEN REPLY~  An enourmous weapon, it gives you some idea about the orc leader that wielded it. Do you think it is safe to keep it? ~ GOTO SanGoth61
END

IF~~ THEN BEGIN SanGoth61
SAY~ It is said that it made legions of opponents run in panic on the pure sight of it in Ghotal's hand. And even move lay slain at his feet if they dared to stand against him.~
=~ I would recommend to keep it, so it does not fall into the orc's hands. They were feverishly trying to gain it, so it must play some role in their attempt to resurrect Ghotal.~
IF ~~ THEN REPLY~  Fine, but keep it hidden in the backpack. Up here in the north I would not dare to let anyone know we have it. ~ GOTO SanGoth62
IF ~~ THEN REPLY~ I wonder why there is no corpse in this grave. The orcs cannot yet have revived the General, as we are the ones to have found the keys.~ GOTO SanGoth63
END

IF~~ THEN BEGIN SanGoth62
SAY ~ If the orcs should get there hands on it, they may still succeed in resurrecting the General. His body is not here.~
IF ~~ THEN REPLY~ That is somehow strange, a tomb for a sword only? ~ GOTO SanGoth63
END

IF~~ THEN BEGIN SanGoth63
SAY ~ There is the tomb on the Fields of the Death. I have studied what little my book has to say about those dark days around the battle and his annihilation. It seems that the paladins of Helm have buried him and sealed the grave with a powerful symbol.~
IF ~~ THEN REPLY~ Maybe that is what is hidden in the altar in the Northern Citadel.~ GOTO SanGoth65
IF ~~ THEN REPLY~ Another key to to be searched and found? Or do we just leave the General in his grave?~ GOTO SanGoth64
END

IF~~ THEN BEGIN SanGoth64
SAY ~ Then the risk would remain for the orcs to finally find and resurrect him. Let us not stop halfways but end this threat for once and for all.~
IF~~ THEN REPLY ~ For that we would need whatever is hidden in the altar in the Northern Citadel, don't you think so?~ GOTO SanGoth65
END

IF~~ THEN BEGIN SanGoth65
SAY ~ It would be a strange coincidence if something else would be in that citadel. The building was errected shortly after the battle, so most likely that is where the key to the grave is kept.~ 
IF~~THEN DO ~ SetGlobal("SanGothSwFound","GLOBAL",4) AddexperienceParty(4300)~ EXIT
END

IF~ Global("SanGothSwFound","GLOBAL",3) ~ THEN BEGIN SanGoth70
SAY ~ Here it is, Ghotal's famed sword!~
IF ~~ THEN REPLY~ The thing can really make one shiver. We should not keep it.~ GOTO SanGoth71
IF ~~ THEN REPLY~ An enourmous weapon, adequate for the orc leader that wielded it. Do you think It is safe to keep it? ~ GOTO SanGoth71
END

IF~~ THEN BEGIN SanGoth71
SAY~ It is said that it made legions of opponents run in panic on the pure sight of it in Ghotal's hand. And even move lay slain at his feet if they dared to stand against him.~
IF ~~ THEN REPLY~  Fine, but keep it hidden in the backpack. Up here in the north I would not dare to let anyone know we have it. ~ DO ~ SetGlobal("SanGothSwFound","GLOBAL",4) AddexperienceParty(1800)~ EXIT
END

// Fabio1

IF~Global("SanFab2","GLOBAL",2) ~ THEN BEGIN SanFab2
SAY ~ Oh, yes, Fabio, the most famous bard of Restenford and thousands of other places, or maybe not. Actually I had forgotten him completely until I just saw him again. He obviously made a lasting impression on me, just like his *music*.~
IF ~~THEN REPLY ~ Haha, he looks just like the type young girls would dream about - when there is no beach on a southern island.~ DO ~ SetGlobal("SanFab2","GLOBAL",3)~ GOTO SanFab2b
END

IF~~THEN BEGIN SanFab2b
SAY ~ I am afraid exactly that. I have to confess, even I was a silly little teenage girl at one time. But to clarify things in my favour, nothing had happened because this star bard had to leave the island for his grand tournee (smiles amused).~
IF ~~THEN REPLY ~ Sandrah and her boyfriends, soso. Interesting.~ EXIT
END

// Done Nashkel Mines
IF ~ Global("SanThruNasM","GLOBAL",1) ~ THEN BEGIN OutNashM1
SAY ~ So what we found today is just one part of a much larger operation, <CHARNAME>.~
IF~~THEN REPLY ~ This half-ork was surely not Gorion's murderer. But at least we have now made the mines available for normal operations again.~ DO ~ SetGlobal("SanThruNasM","GLOBAL",2) ~ GOTO OutNashM2
IF ~~ THEN REPLY ~ The letters we found seem to say just that. And then, this half-ork was surely not Gorion's murderer. We have not reached our goal today.~ DO ~ SetGlobal("SanThruNasM","GLOBAL",2) ~ GOTO OutNashM2
END

IF~~ THEN BEGIN OutNashM2
SAY ~ We should report our discoveries back to Berrun at Nashkel. With that and the items we found down there, they should be able to re-open the mines and reduce the impact of the Iron Crisis. But on the other hand, our deeds here will probably not remain unnoticed. If they had not known by now already, they will now be sure that we are persuing them.~
IF~!InParty("Branwen")~THEN REPLY ~ Any idea who *THEY* are?~ GOTO OutNashM3
IF~InParty("Branwen")~THEN REPLY ~ Any idea who *THEY* are?~ GOTO OutNashM4
END

IF~~ THEN BEGIN OutNashM3
SAY ~ Not more than you, <CHARNAME>, the names Tranzig or Tazok do not ring familiar. A visit to Beregost should tell us more.~
IF~~THEN REPLY ~ So back all the way to the north, it seems.~EXIT
END

IF~~ THEN BEGIN OutNashM4
SAY ~ Not more than you, <CHARNAME>, I never heard of Tazok, but the name Tranzig stirs up some unwanted memories, right Branwen?. A visit to Beregost should tell us more.~
IF~~THEN EXTERN BRANWJ TranzRevBG
END

// G'axir the Seer
IF ~ Global("HelpGaxir","GLOBAL",2) ~ THEN BEGIN UCHint1
SAY ~ Those dark hints were to be expected, <CHARNAME>, as we come closer to the truth behind all these events and their connection to your heritage.~
IF ~~ THEN REPLY ~ The seer called me a seeker, which is not too remote in my view.~ GOTO  UCHint2
IF ~~ THEN REPLY ~ More than the usual mumbojumbo of those guys I could not make out from his overly picturesque hints. Could you?~ GOTO UCHint2
IF ~~ THEN REPLY ~ Yes, yes, I must walk through the darkness to come to the light. My, don't we do that every day?~ GOTO UCHint2
END

IF ~~ THEN BEGIN UCHint2
SAY ~ I would largely agree to your sceptical view on the guy - if he had not mentioned the *Undercity*, which is a bit more precise than those usual allusions of the wannabe prophets.~
IF~~THEN REPLY ~ So it means you can make out any sense in this?~ DO ~ SetGlobal("HelpGaxir","GLOBAL",3) ~GOTO UCHint3
END

IF ~~ THEN BEGIN UCHint3
SAY ~ Like most places of importance in this region, Baldur's Gate is a relatively young settlement as you may recall from the stories about Balduran himself. But like all our settlements it has been build at a place that had already seen earlier inhabitants and towns before that.~
IF~~ THEN REPLY ~ Yes, I remember similar stories about Candlekeep - that it was build on top of an older monastery. Imoen and me always wanted to find the entrance to the legendary catacombs that shall exist below the current settlement, but the monks were not very cooperative when we hit the topic.~GOTO UCHint4
END

IF ~~ THEN BEGIN UCHint4
SAY ~ The same is true for this city, <CHARNAME>. And the darkness to pass before you see the light may be the darkness of the past.~
IF ~~ THEN REPLY~ Now you start to sound as cryptic as those seers themselves.~GOTO UCHint5
IF ~~ THEN REPLY ~ If I get your point right, you mean once again that we need to look into the past to find out what is going on in the presence?~ GOTO UCHint5
END

IF ~~ THEN BEGIN UCHint5
SAY ~ The *Undercity* of Baldur's Gate is the equivalent to your Candlekeep Catacombs. It is said to be a cultic and ritual place since the beginning of civilisation on the Sword Coast. Most of its history is forgotten by now, including where exactly it is below our feet.~
IF ~~ THEN REPLY ~ And you guess such a place holds the answer for the things that lie behind the Iron Throne and this Sarevok?~ GOTO UCHint6
END

IF ~~ THEN BEGIN UCHint6
SAY ~ My book has told me, that among the bloody and barbaric rituals that the ancient place below has seen, were those to worship the God of Murder - Bhaal.~
IF ~~ THEN EXIT 
END


// First Winski Meeting

IF ~ Global("WinskApp1","GLOBAL",5)~ THEN BEGIN Winsk1Dis
SAY ~ (The strange wizards appearance and threat has left you completely speechless and confused. Will Sandrah have any idea what has just happened?)~
IF~~ THEN REPLY ~ Who was that? What did he want? I am completely lost.~ GOTO Winsk1Dis2
END

IF~~ THEN BEGIN Winsk1Dis2
SAY ~ So am I, <CHARNAME>. Let us take a moment and try to recapture what has happened and what we can make out of it.~
IF~~ THEN REPLY ~ Simple. Another threat from my unknown enemy and the killer of Gorion. It will not stop us, right? ~ GOTO Winsk1Dis3
IF~~ THEN REPLY ~ An undefined threat by an unknown enemy? Is there something I do not see? ~ GOTO Winsk1Dis3
END

IF~~ THEN BEGIN Winsk1Dis3
SAY ~ Look at it piece by piece, <CHARNAME>, let us see what pieces we have and where to put them.~
= ~ First then. - The man was from Rashemen of origin and one of the rare male wizards there, as the magic in that land is mostly handled by the women. However, from his hateful words about his homeland, we can deduct that he is probably a renegade who is now in the services of someone here on the Sword Coast.~
IF ~~ THEN REPLY ~ That someone being the one we hunt, if I understood correctly.~ GOTO Winsk1Dis4
END

IF~~ THEN BEGIN Winsk1Dis4
SAY ~ Yes. (Sandrah smiles reassuring at you.) Do you see how we progress looking at it calmly piece by piece? Let us continue.~
= ~ Second then. He mentioned an item we have found, something that was lost for long time.~ 
IF~~ THEN REPLY ~ We are finding all kinds of artefacts all the time, this sword of Mystra, an ancient shield of a dead knight, who knows what...~ GOTO Winsk1Dis5
IF ~~ THEN REPLY ~ He came after we have found that strange piece of old cloth...~ GOTO Winsk1Dis5
END

IF ~~ THEN BEGIN Winsk1Dis5
SAY ~ That gives us clue number Three then. This strange piece of cloth is a kind of trace to the past, and it is there we have to find the reason for all that is going on in the present.~
IF~~ THEN REPLY ~ But our enemy is here in the present and he is not sitting still to wait for us. Whatever his motives are, we need to act fast, rather than to dwell on long gone things.~ GOTO Winsk1Dis6
END

IF ~~ THEN BEGIN Winsk1Dis6
SAY ~ Yes and no. We have to follow any hint we find here and now. But it will be very helpful to gain as much knowledge as possible about our foe and his motives before we have to face him. It is a mighty enemy, we know already, so knowledge will brings us the advantage we need to defeat him.~
= ~ A rising God...~
IF ~~ THEN REPLY ~ ..is that what we are fighting? ~ EXTERN CVSANDRJ Winsk1Dis7
END

//  Orloth Scout
IF ~ Global("SanOrDiId","GLOBAL",2) ~ THEN BEGIN SanOrDiId1
SAY ~ This sheds some light on recent encounters, but maybe not yet enough...~
IF ~~ THEN REPLY ~ You have deciphered that strange diary, Sandrah?~ GOTO SanOrDiId2
END

IF ~~ THEN BEGIN SanOrDiId2
SAY ~ I will tell you what I found and then we will see together what it really reveals to us.~
IF~~ THEN REPLY ~ I think we need to take some time for that, when we have got to a safer place. I will talk to you about it later. ~ DO ~ SetGlobal("SanOrDiId","GLOBAL",3)~ EXIT
IF~~ THEN REPLY ~ Fine, you seem to be puzzled. I have learned something from you by now. Let us put all the facts we know in front of us and then see where they may fit.~ GOTO SanOrDiId3
END

IF ~~ THEN BEGIN SanOrDiId3
SAY ~ Very good, <CHARNAME>.~
= ~ The scout who carried and wrote this journal was from Rashemen. He mentions his master, an Orloth. (You bite on your lips not to interrupt Sandrah.)~
= ~ The death of this man and the last entries into his diary date to the time roughly around our birth, at the end of the Times of Trouble.~
= ~ In the mission from the Orloth, the man was following a group of travellers across the Sword Coast. Those travellers where trying to cover their path because of something they were carrying.~
IF~GlobalGT("WinskApp1","GLOBAL",5) ~THEN REPLY ~ I will be damned if this Orloth is not the same one that made his strange assault on us!~ GOTO SanOrDiId4
IF~GlobalLT("WinskApp1","GLOBAL",5) ~THEN REPLY ~ An Orloth, a male Rashemen mage? How does he fit into the picture? ~ GOTO SanOrDiId4
END

IF ~~ THEN BEGIN SanOrDiId4
SAY ~ Let me tell you the rest of it first, before we try to analyse things.~
= ~ The travellers party was attacked by bandits before the scout could do anything more. There was also a drow priestess at the scene of the ambush, although probably just another witness of the scene. However, the scout tried to hide in some tunnels, which were the Ulcaster ruins and he died down there, killed by the monsters we have met down there. This is where the diary ends.~
IF ~ PartyHasItem("Sanwi1") ~ THEN REPLY ~ Viconia? She mentioned the same scene! It was how she got possession of that strange artifact she gave you. It seems now we really must keep our eyes open for more pieces to find out what those people tried to hide and what this Orloth was after.~ DO ~ SetGlobal("SanOrDiId","GLOBAL",4)RealSetGlobalTimer("WiItemR","GLOBAL",800)~ EXIT
IF ~ PartyHasItem("Sanwi1") GlobalGT("WinskApp1","GLOBAL",5)~ THEN REPLY ~ Viconia? She mentioned the same scene! It was how she got possession of that strange artifact she gave you. And this Orloth is still around and after the creatures he was persuing then. It seems now we really must keep our eyes open for more pieces to find out what those people tried to hide and who they were.~ DO ~ SetGlobal("SanOrDiId","GLOBAL",4)RealSetGlobalTimer("WiItemR","GLOBAL",800)~ EXIT
IF ~~ THEN REPLY ~ Ghosts of the past. But my studies of the scripts at Candlekeep have taught me, that our present events are always connected to what has been before us.~ DO ~ SetGlobal("SanOrDiId","GLOBAL",4)RealSetGlobalTimer("WiItemR","GLOBAL",800)~ EXIT
END

// Found all cloth pieces

IF ~ Global("Formedcloth","GLOBAL",2) ~ THEN BEGIN  Formedcloth10
SAY ~ My darling? ~
IF~~THEN REPLY~ Sandrah, my heart, the story of Khalindra's second child lies heavy on your thoughts. You do not need to deny it, I know and love you well enough. What do you propose to do? ~ DO ~ SetGlobal("Formedcloth","GLOBAL",3) AddJournalEntry(@238,QUEST)~ GOTO Formedcloth11
END

IF~~THEN BEGIN  Formedcloth11
SAY ~ You are right, <CHARNAME>, it is this mystery and the reason for my mother's early death that made me leave Waterdeep in the beginning. But by now I am sure this is no longer my quest alone. It is ours. ~
IF~~THEN REPLY~ You have told me before and I am convinced by now that our stories are entwined. Only your father at Waterdeep can provide us with the information we need now.~ EXIT
IF~~THEN REPLY~ You have told me before - but I still do not understand why - this story is our common one. I am willing to aid you nevertheless and go with you to your father to find out.~ EXIT
IF~~THEN REPLY~ There is a Bhaalspawn in your past, and it looks like my heritage is somehow connected to Bhaal as well. Your father *MUST* know the truth. He has been following us around all the time, and it was not to oversee his daughter's activities. This time I will get some answers from him. I swear. ~ EXIT
END

IF ~Global("Formedcloth","GLOBAL",6) Global("SanRomPath","GLOBAL",1)~ THEN BEGIN Formedcloth20
SAY ~ *Take this symbol of what you are*. What did Mystra give you, <CHARNAME>?~
IF~~THEN REPLY ~ It is a baby statue, clad with the bedcloth we have reconstructed. What does it mean?~ GOTO Formedcloth21
IF~~THEN REPLY ~ A baby replica clad in the bedcloth we have reconstructed. Is that me? Does it mean the child that was rescued, hidden and hunted was me?~ GOTO Formedcloth21
END

IF~~THEN BEGIN Formedcloth21
SAY~ *Take a look at who you are from the tower that overlooks the Realms*. Let us go up to my tower then, my love, it overlooks the Realms.~
IF~~THEN REPLY~ I remember your words after our wonderful first night. The words you said to me when we stood up there and looked over the morning mist covering Faerun. You promised me, that one day the mist will uncover the truth. Let us go and see, Sandrah. ~ DO~ SetGlobal("Formedcloth","GLOBAL",7)~
EXIT
END

IF ~Global("Formedcloth","GLOBAL",6) Global("SanRomPath","GLOBAL",2)~ THEN BEGIN Formedcloth30
SAY ~ *Take this symbol of what you are*. What did Mystra give you, <CHARNAME>?~
IF~~THEN REPLY ~ It is a baby statue, clad with the bedcloth we have reconstructed, a little girl. What does it mean?~ GOTO Formedcloth21
IF~~THEN REPLY ~ A babygirl replica clad in the bedcloth we have reconstructed. Is that me? Does it mean the child that was rescued, hidden and hunted was me?~ GOTO Formedcloth31
END

IF~~THEN BEGIN Formedcloth31
SAY~ *Take a look at who you are from the tower that overlooks the Realms*. Let us go up to my tower then, my love, it overlooks the Realms.~
IF~~THEN REPLY~ I remember your words after our wonderful first night. The words you said to me when we stood up there and looked over the morning mist covering Faerun. You promised me, that one day the mist will uncover the truth. Let us go and see, Sandrah. ~ DO~ SetGlobal("Formedcloth","GLOBAL",7)~
EXIT
END

// BG1 Dream1

IF ~ Global("SanBG1DreamReact","GLOBAL",1)~ THEN BEGIN DreamReact1
SAY ~ (Sandrah has come very close to you and has taken your hand. She looks at you with these bottomless eyes of hers.) You have not slept well, <CHARNAME>. What troubles you so?~
IF~~THEN REPLY ~ I have dreamt of Gorion for the first time since I had to leave Candlekeep. There was a kind of message in that dream, but I did not understand it.~ GOTO DreamReact11
END

IF~~ THEN BEGIN DreamReact11
SAY ~ Will it help you to tell me that dream? It has changed you, <CHARNAME>, you have found new abilities in yourself.~
IF~~ THEN REPLY ~ It was just a dream, nevermind. Those abilities come from our experience on the road.~ GOTO DreamReact12
IF~~THEN REPLY ~ (Tell her about your dream and your new found ability.)~ GOTO DreamReact13
END

IF~~ THEN BEGIN DreamReact12
SAY ~ Be careful, my dear. There are powers at struggle inside of you, two ways you can go. I am here to help you with your choices if you let me. Never forget that. ~ 
IF~~THEN REPLY ~ (You nod silently. The dream has contained the notion of two ways as well. You know you will take the right one with or without Sandrah's help.)~ DO ~ SetGlobal("SanBG1DreamReact","GLOBAL",2)~ EXIT
IF~~THEN REPLY ~ (You nod silently. The dream has contained the notion of two ways as well. You know you will take the right one but it is reassuring to know Sandrah by your side.)~ DO ~ SetGlobal("SanBG1DreamReact","GLOBAL",2)~ EXIT
END

IF~~ THEN BEGIN DreamReact13
SAY ~ Be careful, my dear. There are powers at struggle inside of you, two ways you can go. It is either Gorion's death or the image of his murderer that has set this struggle in motion.~
IF~~THEN REPLY ~ Whatever it is, I know I am not alone with that. Thank you for your care. (Kiss her.)~DO ~ SetGlobal("SanBG1DreamReact","GLOBAL",2)~  EXIT
IF~~THEN REPLY ~ Sandrah, whatever it is, it is inside of me and mine to fight. Thank you for your care, but there is little you can do about it. Just see to it that you have your healing spells and council ready when needed.~ DO ~ SetGlobal("SanBG1DreamReact","GLOBAL",2)~ EXIT
END

// BG1 Dream2

IF ~ Global("SanBG1DreamReact","GLOBAL",3) ~ THEN BEGIN DreamReact2
SAY ~ My love, you are bathed in cold sweat. Another one of those bad dreams?~
IF~~THEN REPLY ~ Blood, murder, destruction. Why do I have these dreams? This goes far beyond the bloodshed we see each day, because of the fighting that is forced upon us. This comes from far deeper. Why?~ GOTO DreamReact22
END

IF ~~ THEN BEGIN DreamReact22
SAY ~ Something, I mean someone tries to talk to you? Tries to give you a message? ~
IF~~THEN REPLY ~ In the first dream it appeared to be Gorion...But it was not him, it could not have been, not from the message he delivered. This time this crazy Mulahey - but again it was just a disguise. This cretin could never have said the words I have heard.~ GOTO DreamReact23
IF~~THEN REPLY ~ Yes, someone who does not show his true face. He or it used Gorion in the first dream and Mulahey now. But I do not believe it, the words those figureheads deliver are not their own. Something tries to get me on some path of murder and blood. It tries to tell me that it is my only way.~ GOTO DreamReact23
END

IF ~~ THEN BEGIN DreamReact23
SAY ~ You are wise to see it this way. Those are lies. Blood and murder is not your way, although we cannot avoid some fighting and bloodshed when it is forced upon us. But you are not doing this to gain personal power from it.~ 
IF~~THEN REPLY ~ Take me in your arms, Sandrah, I am so tired of this.~ GOTO DreamReact24
IF~~THEN REPLY ~ Whatever the message. I see nothing wrong with the way we follow. It gives me my strength, not this blood and murder thing.~ GOTO DreamReact24
END

IF ~~ THEN BEGIN DreamReact24
SAY ~ (Sandrah silently holds you in her arms for a long time.)~
IF~~THEN REPLY ~ Thank you, my love. Let us go on.~ DO ~ SetGlobal("SanBG1DreamReact","GLOBAL",4)~ EXIT
END

// Found Second Cloth

IF ~ Global("SanHasTWOP","GLOBAL",2) ~ THEN BEGIN Twop1
SAY ~ <CHARNAME>, look, those two pieces fit together, they seem to belong to the same cloth.~
IF~~THEN REPLY ~  They do. Does that help you identify what is is or was?~ GOTO Twop2
IF~~THEN REPLY ~  What? They have been found very far apart from each other. However the pattern is unique, so they probably really belong to the same cloth.~ GOTO Twop2
END

IF ~~ THEN BEGIN Twop2
SAY ~ It looks somehow like the patterns that were on my bedcloth when I was very young back at my father's house in Waterdeep.~
IF~~THEN REPLY ~  Incredible, how would pieces of your bedcloth come to places shattered throughout the Sword Coast? ~ GOTO Twop3
IF~~THEN REPLY ~ Are you sure? I will not go out and chase phantoms all over Faerun for a bit of child's bedclothes.~ GOTO Twop3
END

IF ~~ THEN BEGIN Twop3
SAY ~ There was the mentioning of babies being in the traveller's party that was seen in both cases. But then again I am sure that I was never on the Sword Coast at this age. I only started travelling outside of Waterdeep when I was older and my father took me with him now and then.~
IF~~THEN REPLY ~ That would mean that you were not one of the children that were seen. But how do they got hold of your cloth. And then there are the hints directly to your interest. I am lost in this confusion.~ GOTO Twop4
IF~ GlobalGT("Mothdream1","GLOBAL",1)~ THEN REPLY~ In my dream of Khalindra there was mentioning of the second child of your mother...~  GOTO Twop5
END

IF ~~ THEN BEGIN Twop4
SAY ~ You are right, <CHARNAME>, we still know too little. Let us put this aside for the moment unless we want to burst our heads in speculations.~
IF ~~ THEN DO ~ SetGlobal("SanHasTWOP","GLOBAL",3) RealSetGlobalTimer("WiItemR","GLOBAL",3000) ~ EXIT
END

IF ~~ THEN BEGIN Twop5
SAY ~ Hm, this child was born in Waterdeep one year after me but I did never see it. It was brought away very soon after its birth- to where I do not know.~
IF~~THEN REPLY ~ So if it was brought to the Sword Coast by this party of travellers who were ambushed and lost the cloth from your father's house? That would explain part of it, right?~ GOTO Twop6
END

IF ~~ THEN BEGIN Twop6
SAY ~ Right - part of it. Shar and Mystra both seem to have their hands in it too, they want me to find out about that child. ~
IF ~~ THEN REPLY ~ And what about you. You once told me you wanted to find out some things when you first started to travel with me. Is this part of your quest and search then?~  GOTO Twop7
IF~~THEN REPLY ~ So are we now on a search for your mysterious brother or sister, a Bhaalspawn implanted to kill your mother and rob your father of his beloved wife. Do not forget that you joined me to follow my quest first.~ GOTO Twop7
END

IF~~ THEN BEGIN  Twop7
SAY ~ I believe that my search has pointed me to you in the first place. Your quest and mine seem to be somehow related. I am sure we will find the answers we both seek along our common path.~
IF ~~ THEN REPLY ~ We will not find that out by sitting here and talking. (Kiss her.) Answers are waiting to be found, let us move on.~ DO ~ SetGlobal("SanHasTWOP","GLOBAL",3) RealSetGlobalTimer("WiItemR","GLOBAL",3000) ~ EXIT
END

IF ~ Global("SanChildH","GLOBAL",4)~ THEN BEGIN Twop21
SAY ~ This strange piece of cloth and the story in the Rashemen Journal seem to be connected, <CHARNAME>. ~
IF~~THEN REPLY ~ Both seem to point back to the same period, the period when we were babies as well, Sandrah.~  GOTO Twop22
IF~~THEN REPLY ~ The cloth was probably torn to pieces during the bandit assault on the travellers. A Rashemen scout and a renegade drow were witnesses. A caravan leader goes mad in the event. And here are we, trying to solve an old riddle. Why?~ GOTO Twop22
END

IF~~THEN BEGIN Twop22
SAY ~ There is a connection to us, or at least to me. It is the pattern of this cloth that stirs up something in me, even if I cannot directly name it at this moment. And then we have these mysterious hints, as if I somebody or some power wants me to find these items. Of course I cannot ask you or our friends to help me with it. I myself do not really know what I could do other than to keep these things and hope that we will find more to fill the gaps in the puzzle.~
IF~~THEN REPLY ~ As it is the period of the lost part of my childhood, it soothes me to think that maybe we find out something about it as well. But anyway, let us move on for now.~ DO ~ SetGlobal("SanChildH","GLOBAL",5)~EXIT
END

// Sandrah Leaves PC with Branwen

IF ~ Global("SanLeaveBran","GLOBAL",1) ~ THEN BEGIN SanLeave41
SAY ~ <CHARNAME>, you do not care for me in the same way that I care for you. I cannot trudge along by your side and be your mere companion with all the feelings my heart holds.~
= ~ I have stayed with you to accomplish this task for freeing Branwen. Now you have another competent cleric and fighter by your side and I am no longer needed. I have already asked Branwen to take care of you from now on. ~
IF~~ THEN REPLY ~ No, Sandrah, no one leaves this group without my consent.~ GOTO SanLeave42
IF~~ THEN REPLY ~ If that is your final decision, Sandrah, I think I cannot hold you.~ GOTO SanLeave42
END

IF~~THEN BEGIN SanLeave42
SAY ~ Farewell, <CHARNAME>, go and learn your lesson well. Maybe one day we meet again, who knows. One shall never give up hope. (She turns away quickly, her face wet with tears.) ~
IF ~~ THEN DO ~ SetGlobal("SanLeaveBran","GLOBAL",2)SetGlobal("SandrahJoined","GLOBAL",4)LeaveParty() EscapeAreaMove("BG3402",270,497,0)~ EXIT
END

// PC loves Branwen

IF ~ Global("SanBranDec","GLOBAL",2) ~ THEN BEGIN SanBranDec1
SAY ~ So how do you feel with Branwen now, <CHARNAME>.~
IF ~~ THEN REPLY ~ Refreshing like a northern breeze. Do not deny it, you somehow seem to have wanted it that way?~ GOTO SanBranDec2
IF ~~ THEN REPLY ~ I am grateful you react in this way, Sandrah. I really would not know what to do if I had to decide between the two of you. A loss for all of us would be included for certain.~ GOTO SanBranDec2
IF ~~ THEN REPLY ~ I have the feeling we have all gained something very special. I am glad that you - somehow, eh, in your kind but steadfast way - have encouraged me to go this far with her.~ GOTO SanBranDec2
END

IF ~~ THEN BEGIN SanBranDec2
SAY ~ I am so happy, <CHARNAME>, I was a bit afraid you would not have the courage to follow your heart's course consequently. This is an experience we should enjoy as long as we can.~
IF ~~ THEN REPLY ~ You sound a bit strange now? You seem to love her so much yourself and still I sense a bit of reserve at this moment.~ DO ~ SetGlobal("SanBranDec","GLOBAL",3) ~ GOTO SanBranDec3
END

IF ~~ THEN BEGIN SanBranDec3
SAY ~ You are right in both. Yes, I love her and then again I am a bit afraid of her final decision.~
IF ~~ THEN REPLY~ You mean she will in the end decide between you and me instead of accepting her love for both of us?~ GOTO SanBranDec4
IF ~~ THEN REPLY~ Even if she decides for me in the end, that will change nothing of my love for you, Sandrah.~ GOTO SanBranDec4
IF ~~ THEN REPLY~ If finally her love for you will be stronger than her love for me, I am still content it will not affect our relationship.~  GOTO SanBranDec4
END

IF ~~ THEN BEGIN SanBranDec4
SAY ~ My darling, that is not what I fear. This is not the decision she will have to make. It is the choice between us or Tempus. Her god requires the total devotion of his priests. Our arguments that to fight for the good and the loved ones should be pleasing to Tempus, may not be strong enough in the end. I do not want to be a doomsayer on this happy day, but I do not want you to be completely unprepared.~
IF ~~ THEN REPLY~ And my priestess of Mystra? Are you maybe trying to prepare me for something in that respect as well?~ GOTO SanBranDec5
END

IF ~~ THEN BEGIN SanBranDec5
SAY ~ (Laughs) No chance, <CHARNAME>, it needs more than even a whole pantheon of gods to separate me from you.~
IF~~THEN EXIT
END

//Nashkel Mines Revisited

IF~Global("SanDrow","BG5403",2)~ THEN BEGIN MetQidrNahHint
SAY~We have found the book we need - but maybe it is worth to look further to find where those drow and spiders may have leaked into the mines.~
IF~~THEN REPLY~ You are right, we will not let our continuous efforts to keep the mines operating be in vain if they have this threat from below open all the times.~DO~ IncrementGlobal("Sanpoints","GLOBAL",1) SetGlobal("SanDrow","BG5403",3)~EXIT
IF~~THEN REPLY~ No, we can't keep on saving these mines every tenday. We must take care of our own mission now.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",-1) SetGlobal("SanDrow","BG5403",3)~EXIT
END

IF~Global("SanQuiNash","BG5404",4)~ THEN BEGIN MetQidrNah1
SAY~ So they really exist, the followers of the Dark Maiden, Eilistraee. And they have really achieved to live in peace across the races.~
IF~~THEN REPLY~ A fascinating woman, very unlike any of the drow we have met, including refugees on the surface. I am afraid my own knowledge on that specific subject is not very good.~ DO~SetGlobal("SanQuiNash","BG5404",5)~ GOTO MetQidrNah2
END

IF~~THEN BEGIN MetQidrNah2
SAY~ The Dark Lady herself is a child of Corellon Larethian and Araushnee - later known as Lolth the Queen of the Spider Pits. Regardless of her heritage Eilistraee became a good goddess of the moon, dance, song, the sword and the hunt who grants her followers special abilities to help them survive. They are usually drow who decided (or were forced to) leave the Underdark. However, not only drow may become Sword Dancers. There are also surface elves and half-elves among them.  ~
=~They usually live in forests or abandoned ruins which become both their shelter and temples. Eilistraee and Mystra are often worshipped together and lore has it that a temple exists deep below Waterdeep's Undermountain.~
IF~~THEN REPLY~This priestess somehow appeared to me as a dark counterpart to you, my beloved.~GOTO
MetQidrNah3
IF~~THEN REPLY~She was quite brave to make this appearance in front of a party who had just stopped a High Priestess of Lolth and her heavy forces.~ GOTO MetQidrNah4
END

IF~~THEN BEGIN MetQidrNah3
SAY~(Smiles) I take this as the compliment it was meant to be.~
IF~~THEN EXIT
END

IF~~THEN BEGIN MetQidrNah4
SAY~ Eilistraee is peaceful but her disciples are no cowards. You have to be very strong to follow the path they must follow.~
IF~~THEN EXIT
END

//Warn of Edwin
IF ~ Global("WarnEd","GLOBAL",1)~ THEN BEGIN WarnEd1
SAY ~ Be careful, <CHARNAME>, yonder on that bridge - a red wizard, the worst plague that Mystra allows to dwell in Faerun.~
IF~~ THEN REPLY ~ Calm down, Sandrah, if your own goddess allows their existence, you should not judge them harder than she does.~ GOTO WarnEd2
IF~~ THEN REPLY ~ You astonish me, Sandrah. You are normally the most content and indulging person I know. I had never expected you could condemn someone so harshly.~ GOTO WarnEd2
END

IF~~THEN BEGIN WarnEd2
SAY~ My goddess tolerates their schemings, and probably you should expect me to do the same. But my position is clear, Mystra's powers in the end have to be used to create something positive. The red wizards are only interested in the power they can gain from magic - they do not care for good or evil and work for anyone they expect to give them more power and wealth.~
IF ~~ THEN REPLY ~ I think, my counselor, at the moment I better trust my own judgement. Yours is somehow tinted by your dislike of the red wizards in general.~ DO ~ SetGlobal("WarnEd","GLOBAL",2)~EXIT
END

//Fireplain Hut
IF ~ Global("SanLoveHut","GLOBAL",2)~ THEN BEGIN firehut1
SAY ~ Darling, there is an old hut in this area, that is no longer occupied. It is not extremely comfortable, but it is a nice dry shelter nevertheless.~
IF~~THEN REPLY ~ I like that promising sparkle in your eye, Sandrah. I seldom can read your mind, but at this moment I think I can. (Kiss her.) Let us not stand here idle but go to find it.~ DO~ SetGlobal("SanLoveHut","GLOBAL",3)~ EXIT
IF~~THEN REPLY ~ An old hut in an area beset by Ogres. The true love nest for the die-hard adventurer. But with you, Sandrah, it may turn into a cozy little island of peace. Let's see.~ DO~ SetGlobal("SanLoveHut","GLOBAL",3)~ EXIT
END

IF~Global("SaOgmaIn","GLOBAL",5)~ THEN BEGIN firehut2
SAY~ Now that we are sure the area is safe, <CHARNAME>, are you still in the mood to visit that little hut again (She looks at you with that special little-girl-look that is almost irresistible.)~
IF~~THEN REPLY~Sorry, Sandrah, but somehow the moment is gone. Those are the ways of our adventurer's life. ~ DO ~ SetGlobal("SaOgmaIn","GLOBAL",6)~GOTO firehut3
IF~~THEN REPLY~Do you think a few ogres can spoil my mood when it comes to my love for you. I am more hungry for your sweet lips than I even was before.~ DO ~ SetGlobal("SaOgmaIn","GLOBAL",6)~GOTO firehut4
END

IF~~THEN BEGIN firehut3
SAY ~ *Sandrah is so very sweet even when she sulks, you cannot restrain yourself from embracing her and diving into a long kiss on her willing lips.*~
IF~~ THEN EXIT
END

IF~~THEN BEGIN firehut4
SAY ~ Here is something to help you for the moment. I cannot see you collapse on the way to our nest. (She revives your body with an electrifying assault on your hungry lips.)~
IF~~ THEN EXIT
END

IF ~ Global("SaOgmaIn","GLOBAL",8)~ THEN BEGIN firehut88
SAY ~ Darling, you are tired for today and our cosy little hut is nearby, you remember it?~
IF ~~ THEN REPLY ~ You are right. But then, I am not too tired. Let us go there but I do not need my sleep immediately (blink at her.)~ DO ~ SetGlobal("SaOgmaIn","GLOBAL",9)~ EXIT
IF ~~ THEN REPLY ~ You are so right. I could fall asleep within the next five steps. Let us quickly go there.~ GOTO firehut89
END

IF ~~ THEN BEGIN firehut89
SAY ~ (She gives you a passionate kiss while gently touching your earlobes and caressing your neck) I can make your tiredness go away for some time. You will see we can accomplish something sweet before you totally collapse.~
IF~~THEN REPLY~ You have the healing touch for every occasion, my sweetheart.~ DO ~ SetGlobal("SaOgmaIn","GLOBAL",9)~ EXIT
END

//Sunsplash

IF~ Global("SanSplash","GLOBAL",1)~ THEN BEGIN Sunsplash
SAY ~ Oh, darling, look at the sunshine dancing on the water! Come, friends, let us splash right in...~
IF~~THEN DO ~ SetGlobal("SanSplash","GLOBAL",2) SaveGame(0)~ EXIT
END

IF~ Global("SanSplash","GLOBAL",5) AreaCheck("CVSPLA")~ THEN BEGIN SunsplashE
SAY ~ (Slowly your senses return to reality.)~
= ~ The sun starts setting, I am getting cold, darling. Too bad we need to get moving. (Kisses you.) Hey all, do not forget to collect your stuff.~ 
= ~ Tell me, when you are all ready to move.~
IF ~~ THEN DO ~ SetGlobal("SanSplash","GLOBAL",6)~ EXIT
END

IF ~ IsGabber(Player1) Global("SanSplash","GLOBAL",6) AreaCheck("CVSPLA") ~ THEN BEGIN SunsplashR
SAY ~ Are we ready to go, Love?~
IF~~ THEN REPLY ~ Just a moment, not all of us have yet their equipment restored.~  EXIT
IF~~ THEN REPLY ~ Sad but true, we need to get moving again.~ DO ~ SetGlobal("SanSplash","GLOBAL",7)~ EXIT
END

// Shandalar

IF ~ Global("ShanIsl","GLOBAL",1)~ THEN BEGIN ShanMys1
SAY~ Not astonishing that magic leads to unwanted results when it falls into the hands of such as Shandalar.~
IF ~~ THEN REPLY ~ Whatever. If you were expecting something like that, why did you let me lead us into this trap? ~ GOTO ShanMys2
IF ~~ THEN REPLY ~ You knew that mage and let me take his quest nonetheless. I know you well enough to trust that you had your reasons for it? ~ GOTO ShanMys2
END

IF ~~ THEN BEGIN ShanMys2
SAY ~ I do not expect this contraption to be a real danger for us in the end, <CHARNAME>, just another challenge to make us more experienced and stronger as a group.~
= ~ So, yes, I know a bit about the likes of Shandalar and my position as a cleric of Mystra towards them.~
IF ~~ THEN REPLY ~ They are using the powers granted by Mystra just like you do. It looks like your goddess does not really do much to control the misuse of the magic she provides.~ GOTO ShanMys3
IF ~~ THEN REPLY ~ From what I understand from my studies back at Candlekeep, your goddess provides mages of any colour and kind with her gifts and cares little about the results that her disciples produce.~  GOTO ShanMys3
END

IF ~~ THEN BEGIN ShanMys3
SAY ~ You are not to blame for the misconception of Mystra, and many people would share your view. On first sight she may appear as a careless goddess, who grants great powers to good and evil alike and cares little about what damage may be done by some. She appears a bit the opposite of the ever-vigilant Helm, who likes to control each and every whim on Faerun.~
IF~~ THEN REPLY ~ But? I assume there is a *but*, Sandrah.~ GOTO ShanMys4
END

IF~~ THEN BEGIN ShanMys4
SAY~ Right, you would not expect me to follow a goddess of the nature just described. Mystra is a tolerant goddess as are her priests, such as I. My intention is to help and heel and support those who try to do good - those like you. Things are not always black or white, you surely know. Not every little bit of error needs the immediate intervention of a god, like a Helmite would make us believe.~
= ~ In the end, many of those who try to achieve great power and richess on behalf of their fellowbeings by misusing Mystra's gift end up like those we meet right here. They entangle themselves in their own traps, they put themselves far outside of the community of others and they end alone and helpless out in the cold.~
= ~ For the rest, well, true followers of Mystra like me and my father go out and deal with them. And we encourage others, even those who do not rely on magic resources, to stand up against those who err too far from what is still acceptable.~
IF ~~ THEN REPLY ~ So Mystra in the end helps those who first take their own courage to do something and decide to act against what is wrong.~ GOTO ShanMys5
END

IF~~ THEN BEGIN ShanMys5
SAY ~ You are not supposed to sit down and hope that help would come from the gods. But if you decide to act along the right course, you will receive the help and encouragement you need.~
IF ~~ THEN REPLY ~ Then you are a good priestess of Mystra, as I never once saw you pray to your goddess, but I often felt you encourage me and the group to gather up our courage and act. -
Which means we will stop talking now and fight our way out of here! ~ DO ~ SetGlobal("ShanIsl","GLOBAL",2)~ EXIT
IF ~~ THEN REPLY ~ A shrouded way of logic, I'd say. So, let's fight our way out of here! ~ DO ~ SetGlobal("ShanIsl","GLOBAL",2) IncrementGlobal("sanpoints","Global",-1)~ EXIT
END


// First travel to Waterdeep
IF ~ Global("RoadFound","GLOBAL",1)~ THEN BEGIN WDRoadTrav
SAY ~ <CHARNAME>, we are near the old entry to the forgotten Waterdeep road. With the help of this map I can lead us to where the road starts.~
IF~~ THEN REPLY ~ Waterdeep, fantastic, what are we still waiting for. I think we have all deserved a little time out after our recent adventures.~ GOTO WDTravl1
IF~~ THEN REPLY ~ Let us get a little rest at the inn and prepare for the journey. It may not be without some danger. We will come back here again to start to Waterdeep. ~ GOTO WDTrav1Lat
END

IF ~~ THEN BEGIN  WDTravl1
SAY ~ Of course you are all invited to my father's house. I can hardly await to see my home again - with you, with all of you!~
= ~ Come, let me lead on with this map...~
IF ~~ THEN DO ~ 
SetGlobal("RoadFound","GLOBAL",3) ~ EXIT
END

IF ~~ THEN BEGIN  WDTrav1Lat
SAY ~ Of course you are all invited to my father's house. I can hardly await to see my home again - with you, with all of you.~
= ~ Just return to west of the Inn and tell me when you are ready.~
IF ~~ THEN DO ~ SetGlobal("RoadFound","GLOBAL",2) ~ EXIT
END

IF~Global("WDIntrotalk","LOCALS",1)~THEN BEGIN FirstWDIntro1
SAY~Welcome to my hometown, <CHARNAME>. May I give you some initial introduction to this area.~
IF~~THEN REPLY~Hey, I'm an adventurer by now, I like to explore things myself.~DO~SetGlobal("WDIntrotalk","LOCALS",2)~GOTO FirstWDIntroO
IF~~THEN REPLY~The City of Splendor is quite large, your aid is much welcome.~GOTO FirstWDIntro2
IF~~THEN REPLY~Just tell me what is in our immediate surrounding.~DO~SetGlobal("WDIntrotalk","LOCALS",3)~GOTO FirstWDIntro2
END

IF~~THEN BEGIN FirstWDIntro2
SAY~We have arrived in the south western ward of town, centered around the Temples of Waukeen, Siamorphe, and Sharess. Here we find a lot of entertainment and - (laughs) - a warm thermal bath house in the south.~
IF~~THEN REPLY~Thanks, let us take a look at all that.~DO~SetGlobal("WDIntrotalk","LOCALS",3)~GOTO FirstWDIntroO
IF~~THEN REPLY~I know about Waukeen, the god of commerce and trade, but who are those other two you mentioned?~GOTO FirstWDIntroG
IF~~THEN REPLY~Where else can we go from here?~GOTO FirstWDIntro3
END

IF~~THEN BEGIN FirstWDIntroG
SAY~Sharess actually has no temple but a festhall to worship dance, music...all carnal pleasures, she is the goddess of Hedonism.~
=~Siamorphe is a local demi-goddess, her portifolio is the Devine Right by which the noble leaders rule the masses responsibly and she is thus worshipped by those with inherited wealth and power.~
IF~~THEN REPLY~Thanks, let us take a look at all that.~DO~SetGlobal("WDIntrotalk","LOCALS",3)~GOTO FirstWDIntroO
IF~~THEN REPLY~Where else can we go from here?~GOTO FirstWDIntro3
END

IF~~THEN BEGIN FirstWDIntroO
SAY~You may ask me anytime for assistance again.~
IF~~THEN EXIT
END

IF ~Global("Katcut","GLOBAL",8)~ THEN BEGIN WDniteRoom
SAY ~ Thank you for that beautiful evening, <CHARNAME>. We all could use a little break from our usual adventures, right? I love you for it. ~
IF~GlobalLT("Santlove","GLOBAL",4)~ THEN REPLY ~ Yes, dear, it was some fun. I almost forgot what is awaiting us again now. ~ DO ~ SetGlobal("Katcut","GLOBAL",9) ~ GOTO WDniteRoom2
IF~GlobalGT("Santlove","GLOBAL",3)~ THEN REPLY ~ Yes, dear, it was some fun. I almost forgot what is awaiting us again now. ~ DO ~ SetGlobal("Katcut","GLOBAL",9) ~ EXIT
END

IF ~~ THEN BEGIN WDniteRoom2
SAY ~ My father's house is not far away. Before the road gets us back again, I would really like to show it to you. It is still a very special place to me. It is home.~
= ~ (She takes your hand lightly.) And there is my own room in there. On the large bed I was dreaming my girl's dreams of romance and the hero that would come to rescue me. And now I dream of something else to do there...(She kisses you passionately.)~
IF~~ THEN REPLY ~ I can hardly wait to share the place and its memories with you, darling.~ EXIT
IF~~ THEN REPLY ~ Once we have found this villain Khattark, I would be more than willing to share the place and its memories with you, darling.~ EXIT
END



// PC not met Elminster for Narquest

IF ~ Global("SanNarQnotElm","GLOBAL",1) ~ THEN BEGIN SanNarQnotElm1
SAY ~ <CHARNAME>, time has run out to let my father wait for your assistance up there at the Friendly Arm. Elminster does not call us in such a manner just to let us run some errands for him. ~
= ~ As you find your other tasks more pressing than his plea, there is no other decision for me than to go and help him alone on behalf of the group. ~
IF ~~ THEN REPLY ~ Such is your loyalty, Sandrah? Go if you must. ~ GOTO  NarQnotElm
IF ~~ THEN REPLY ~ I see the dilemma we are in. I think we need to split the group for the time being. You may go to assist your father while we continue to pursue the task at hand. This is not an easy decision and please explain our situation to your father. We will meet again when both our tasks are done. ~ GOTO NarQnotElm
IF ~~ THEN REPLY ~ Wait a minute, Sandrah. We will go to the Inn at this instance. ~ GOTO NarQnotElm
END

IF ~~ THEN BEGIN  NarQnotElm
SAY ~ You have proven yourself a competent leader for our group so far. Even if not perfect, you are learning more day after day. I respect your decision, it is for the group and our goals. I am not so selfish as to complain.~
= ~ For this very moment however I have to follow my father. May Mystra's blessing be with you, <CHARNAME>. I cannot say if we meet again but my hope is that we do. Farewell.~
= ~ (She does not turn away quick enough - you still get a glimpse of the sadness on her face and the tears welling up in her eyes...) ~
IF ~~ THEN DO ~
   CreateVisualEffectObject("SPDIMNDR","CVSandr")
   ActionOverride("CVSandr",EscapeAreaObjectMove("BG3402","Tran3001a",270,497,0))
   SetGlobal("SandrahJoined","GLOBAL",5) LeaveParty()
   SetGlobal("ElminGaveNarQ","GLOBAL",4)
   AddJournalEntry(@72,INFO) ~
EXIT
END


// PC Guesses Elminster Daughter
IF ~ Global("PCTalkElmDaughter","GLOBAL",1) ~ THEN BEGIN WhoFather
SAY ~ (Your mind has been spinning around some of the recent encounters you had with different people, who all seem to know Sandrah. Or to be more precise - her father. A mighty mage from Waterdeep. You realize that the conversations always have changed the topic when the talk came to Sandrah's famous father.)~
= ~ (You have read a lot in the Candlekeep library. At least enough to know about the mysterious mage from Waterdeep who is famous throughout the realms. And what about that old mage who seems to follow your traces and who seems to know about all your deeds? You are sure now: They are one and the same.)~
IF ~~ THEN REPLY ~ (You clear your throat as you approach Sandrah who looks at you expectantly.) ~ GOTO WhoFather2
END

IF ~~ THEN BEGIN WhoFather2
SAY ~ Dear <CHARNAME>, so shy? What lays so heavy on your mind? (She smiles encouraging.) ~
IF ~~ THEN REPLY ~ Yes, Sandrah, there is something on my mind that keeps worrying me. Your heritage, em, I mean your father...~ GOTO WhoFather3
IF ~~ THEN REPLY ~ Em...you look lovely, Sandrah. (Give her a quick kiss on the cheek.) ~ GOTO WhoFatherShy
END

IF ~~ THEN BEGIN WhoFatherShy
SAY ~ Lovely liar. You do not need to be afraid to talk to me about anything. Let me help you then. You wanted to talk about my father, right?~
IF ~~ THEN REPLY ~ Your heritage, em, I mean your father...it worries me that everybody seems to know something that maybe I have missed...~  GOTO WhoFather3
END

IF ~~ THEN BEGIN WhoFather3
SAY ~ Understandable. My father worries a lot of people. But those are people different from you. You do not need to be worried by him, <CHARNAME>. (She takes your hand to walk beside you as you continue to talk.)~
IF ~~ THEN REPLY ~ Your father then - it is Elminster himself, isn't it? ~ DO ~ SetGlobal("PCKnowsElmDaughter","GLOBAL",1) SetGlobal("PCTalkElmDaughter","GLOBAL",2)RealSetGlobalTimer("NarQMess","GLOBAL",3800)~ GOTO WhoFather4
END

IF ~~ THEN BEGIN WhoFather4
SAY ~ Yes.~
= ~ I am Elminster's only daughter. ~ 
= ~ This is not a secret - as you have experienced through the people we have met during our travels together.~
IF ~~ THEN REPLY ~ How could I have been so blind? You must really think I am a fool and you secretly laugh about me? ~  GOTO WhoFather5
IF ~~ THEN REPLY ~ And you tried to hide this very fact from me? Why? What is your game here, Elminster's daughter? --- You are his spy!! ~ GOTO WhoFather5
IF ~~ THEN REPLY ~ Wow, that explains a lot. This must be quite a burdon for a young girl who wants to find her own way in life. ~ GOTO WhoFather5
END

IF ~~ THEN BEGIN WhoFather5
SAY ~ (Sandrah stops, still holding your hand, and faces you. She looks you straight in the eyes with this enigmatic smile of hers.)~
= ~ I never tried to hide the fact I am his daughter from you. And I never on the other hand tried to impress you with it. I thought, when the time was right, we would just talk about it.~
IF ~~ THEN REPLY ~ But why this secrecy? ~ GOTO WhoFather6
END

IF ~~ THEN BEGIN WhoFather6
SAY ~ <CHARNAME>, there is and was no secret! Our relationship is build on trust, so I will always be honest to you. Just some things need their real moment and their time to be ready for talk.~
= ~ Now, I just wanted you to take me for what I AM, not what or who my father is. In the same way I accept you for what you are and what you do -  ~
= ~ - and not for what your heritage may be. (The last part was delivered almost as a whisper.) ~
IF~~ THEN REPLY ~ I understand. I am sorry, Sandrah, I apologise for having given you the impression that I have any doubt in your loyalty and honesty. Just the fact to have the mighty Elminster's daughter holding my hand right now is so overwhelming...~ GOTO WhoFather7
IF~~ THEN REPLY ~ I think I understand you in a way. But are you not a little bit withholding things from me? ~ GOTO WhoFather7
END

IF ~~ THEN BEGIN WhoFather7
SAY ~ And this is exactly what I wanted to avoid. I AM SANDRAH. Yes, I am also Elminster's daughter - but I want you to take me as Sandrah and nothing else. I love my father dearly, but I am not his shadow. I learned from him and I try to follow his example. I even help him a bit in his work from time to time according to my abilities.~
= ~ But I have a mind and a life of my own. I go my own way through life - and that way is with you...(She embraces you now with both her arms and gives you another of these deep looks.) <CHARNAME>. ~
IF ~~ THEN REPLY ~ (You put your arms around her and kiss her.) It is Sandrah I kiss, not Elminster's daughter. ~ DO ~
StartCutSceneMode()
                SmallWait(4)
		FadeToColor([20.0],0)
		Wait(4)
		FadeFromColor([20.0],0)
                EndCutSceneMode()
		SaveGame(0)~ EXIT

IF ~~ THEN REPLY ~ Yes, you have proven that while by my side already, Sandrah. I can imagine that being Elminster's daughter can be a blessing and a curse at the same time. Come, Sandrah, I am glad to have you with me for your own virtues, not your father's. ~ DO ~
StartCutSceneMode()
                SmallWait(4)
		FadeToColor([20.0],0)
		Wait(4)
		FadeFromColor([20.0],0)
                EndCutSceneMode()
		SaveGame(0)
~ EXIT
END

// Tarnesh Attack

IF ~ Global("Tarded","GLOBAL",1) AreaCheck("bg2300") ~ THEN BEGIN BountyHu
SAY ~ (Sandrah cleans a bloodspot on her weapon with disgust.)~
IF~~THEN REPLY ~ How did you know in advance that this was a bounty hunter?~ GOTO BountyHu2
END

IF~~ THEN BEGIN BountyHu2
SAY ~ Intuition, his over-friendly inquiries were suspicious, or not? ~
IF ~ InParty("Imoen2") ~THEN EXTERN BIMOEN2 BountyHu3
IF ~ !InParty("Imoen2") ~ THEN GOTO BountyHu4
END

IF~~ THEN BEGIN BountyHu4
SAY ~ Whoever sends them after you knows that you are no longer at Candlekeep. ~
IF ~~ THEN REPLY ~ There were already two of them at Candlekeep before Gorion and I left. Whoever sent those will know by now they are dead. The armoured creature that killed Gorion knows I left home. We need more facts. ~ GOTO BountyHu5
IF ~~ THEN REPLY ~ Girl, you're stating the obvious. Any deeper insight?~ GOTO BountyHu5
END

IF~~ THEN BEGIN BountyHu5
SAY ~ The one who killed your father is either one of their kind or he is the one that sends them now. That would mean he knows not exactly where you are and he is too busy to come after you himself.~
= ~ Anyway, Jaheira and Khalid are probably inside the inn waiting for you.~
IF ~~ THEN REPLY ~ Yes, let us go inside. (Suddenly it comes to your mind that you always referred to *friends waiting at the arm*, never giving their names. How does Sandrah know them?)~ DO ~SetGlobal("Tarded","GLOBAL",2)~ EXIT
END

/*Imoen Still not in Party Reminder*/

IF ~ Global("Imoreminder","GLOBAL",3)~ THEN BEGIN ReturnToImo
SAY ~ <CHARNAME>, please, we need to rejoin with Imoen. Do not leave her out there like this. I know you care too much for her to lose her. - And she for you. ~
= ~ Your ways are together, believe me. ~
IF ~~ THEN DO ~SetGlobal("Imoreminder","GLOBAL",4)~EXIT
END

IF ~ Global("Imoreminder","GLOBAL",5)~ THEN BEGIN ReturndToImo
SAY~ I am so glad you will be with us, Imoen. I am Sandrah.~
IF ~ InParty("imoen2")~ THEN EXTERN BIMOEN2 IntroImoS2
END

IF ~~ ReturndToImo2
SAY ~ You are loyal to your friends, <CHARNAME>. We will stand to you when you need help and care. And you NEED help! ~ IF ~~ THEN DO ~ SetGlobal("Imoreminder","GLOBAL",6) ~ EXTERN BIMOEN2 IntroImoN2
END

//Found Belt of Gender

IF ~ Global("SanBeltGen","GLOBAL",1)~ THEN BEGIN SanBeltGen
SAY ~ Watch out, <CHARNAME>, this girdle is cursed. Do not consider putting it on unless you want to change to the opposite gender. I would rather you remain what you are. (Mumbles: I really like you as you are.)~
IF ~~ THEN REPLY ~ You have quite a bit of knowledge about all kind of things that are not obvious to the naked eye. How is that?~ GOTO SanBook1
END

IF ~~ THEN BEGIN SanBook1
SAY ~ Besides my education in the arts of Mystra I have this very special copy of Elminster's History of Faerun that you have seen me studying whenever time allows. So if I do not know what a thing is right away, chances are good that I may identify it with the help of this tome.~
IF ~~ THEN REPLY ~ With you, one has to expect a new surprise at every turn. (You smile at her) I will make use of your many talents as good as I can.~ DO ~ SetGlobal("SanBeltGen","GLOBAL",2)~ EXIT
END

// Find the second Demon Cave
IF~ Global("PixieHint","GLOBAL",2) ~ THEN BEGIN PixieHint
SAY ~ Have you heard, <CHARNAME>, the girl mentioned a cave with hellish smelling creatures. I am sure our goal is nearby.~
IF ~~THEN REPLY ~ We better prepare ourselves then, this will not be an easy battle. ~ DO ~ SetGlobal("PixieHint","GLOBAL",3)~EXIT
IF ~~THEN REPLY ~ Hm, childish phantasies, you heard her talk about her cat's seven lives. She is a bit deranged, I think, not to be believed.~ DO ~ SetGlobal("PixieHint","GLOBAL",3)~ EXIT
IF ~~THEN REPLY ~ Yes, I guessed so myself, first the demonic scroll and now this child. It all matches, we must be very close.~ DO ~ SetGlobal("PixieHint","GLOBAL",3)~ EXIT
END

IF~ Global("NotWFall","GLOBAL",1) ~ THEN BEGIN NotWFallAgain
SAY ~ It seems it is not again a waterfall that hides the demon's lair this time, <CHARNAME>. But I still think we must be close. Maybe the little girl up there has observed something.~
IF ~~THEN REPLY ~ (You follow her pointed finger and see a little girl standing higher up beside the waterfall.) Let us ask her.~ DO ~ SetGlobal("NotWFall","GLOBAL",2)~ EXIT
IF ~~THEN REPLY ~ Are we really relying on children and their babbling to find a mighty demon? ~ GOTO Catkill2
END

IF ~~ THEN BEGIN Catkill2
SAY ~ Someone obviously has killed this cat. And this someone smells pretty much like the hellish stench we encountered at the other lair.~
IF ~~THEN REPLY ~ I will be damned if you are right again. ~DO ~ SetGlobal("NotWFall","GLOBAL",2)~  EXIT
END

// In Baldur's Gate

IF ~ Global("SaBalCarn","GLOBAL",1)~ THEN BEGIN BaldMaekt1
SAY ~ A fun fair, <CHARNAME>, we have not had much amusement for quite a while.~
IF~PartyHasItem("sw1h19")~THEN REPLY~ And I do not feel much like having some now. Sandrah, just consider why we are here and don't play the little girl at the amusement park role, he.~ GOTO BaldMaekt12
IF~~THEN REPLY~ Counselor, I agree, our mission is grave and our prospect is dark. As one elf I know may say, we are doomed and may not even see tomorrow. So why not have some fun.~ GOTO BaldMaekt13
IF~!PartyHasItem("sw1h19")~THEN REPLY~ And I do not feel much like having some now. Sandrah, just consider why we are here and don't play the little girl at the amusement park role, he.~ GOTO BaldMaekt14
END

IF ~~ THEN BEGIN BaldMaekt12
SAY ~ Maybe that fortune teller over there may have some method of divination to apply on that vampiric sword we have found?~
IF~~THEN REPLY~ Oh, my lovely tease. Has somebody told you already that your optimism can brighten up any gloom - yes, I guess you heard that before. Let us enjoy ourselves then. ~ DO ~ SetGlobal("SaBalCarn","GLOBAL",2)~EXTERN CVSANDRJ BaldMaekt15
END
                     
IF ~~ THEN BEGIN BaldMaekt13
SAY ~ How about riding that Ferris wheel. It is fun and we also get a perspective of this whole town from above, which may be quite useful in our coming investigations?~
IF~~THEN REPLY~ Great! I have never seen such a thing in my life. And combining the useful with the playful, a great idea.~ DO ~ SetGlobal("SaBalCarn","GLOBAL",2)~EXTERN CVSANDRJ BaldMaekt15
END
                     
IF ~~ THEN BEGIN BaldMaekt14
SAY ~ As one elf I know may say, we are doomed and may not even see tomorrow. Let us ask this fortune teller about the way we die then - or about the love that will save us from such a fate.~
IF~~THEN REPLY~ Oh, my lovely tease. Has somebody told you already that your optimism can brighten up any gloom - yes, I guess you heard that before. Let us enjoy ourselves then. ~ DO ~ SetGlobal("SaBalCarn","GLOBAL",2)~EXTERN CVSANDRJ BaldMaekt15
END

IF~Global("SanSecrt","BG0300",2)~THEN BEGIN SanWallPass1
SAY~ Interesting...this must be the place. (Sandrah closes her tome and stares inquisitely at a haystack near the mighty castle wall.)~
IF~~THEN REPLY~Haha, have you found the needle we look for in this haystack?~DO~SetGlobal("SanSecrt","BG0300",3)~GOTO SanWallPass2
IF~~THEN REPLY~It must be more than an ordinary haystack if it is mentioned in your all-knowing book?~DO~SetGlobal("SanSecrt","BG0300",3)~GOTO SanWallPass2
END

IF~~THEN BEGIN SanWallPass2
SAY~ Many haystacks contain a needle that someone might be looking for, <CHARNAME>.~
=~Anyway this one seems to hide a secret passage that I found mentioned here on these pages. It is said that Balduran himself used a secret entrance in the well guarded walls of the city if he wanted to sneak in and out on some very private occasions.~
IF~~THEN REPLY~ A love tunnel? Let us take a look.~EXIT
END

IF~Global("HalItems","BG0153",2)~THEN BEGIN SanMagtrav1
SAY~The prospect of a lighter way of travelling instead of trudging dusty roads is very appealing...~
IF~~THEN REPLY~ Could a skilled disciple of Mystra make some use of what we have gathered today?~ GOTO SanMagtrav2
IF~~THEN REPLY~ He?~ GOTO SanMagtrav2
IF~~THEN REPLY~ We would loose much of the landscape and its sights by that, haha.~ GOTO SanMagtrav2
END

IF~~THEN BEGIN SanMagtrav2
SAY~ (Sandrah seems to be lost in her thoughts without paying much attention to your responses.)~
=~ A skyship would draw too much attention to a party that better operates more discreet...but those formulas in the book...integrated with my parcels abilities...hm, hm, hm...~
IF~~THEN REPLY~Anything in your considerations you like to share with us, Sandrah?~ DO~SetGlobal("HalItems","BG0153",3)~ GOTO SanMagtrav3
IF~~THEN REPLY~(Leave her to her musings knowing she will come out with her results when the time is ripe - which may be in quite a long while with her.)~DO~SetGlobal("HalItems","BG0153",3)~ EXIT
END

IF~~THEN BEGIN SanMagtrav3
SAY~ Ooops, was I thinking aloud, dear?~
=~Oh, I was considering a *long term project* for which I just found a little piece today. Nothing yet ripe enough to reveal. (Smiles at you.)~
IF~~THEN REPLY~You and your secrets. I know, if it helps the company you'll come out with it soon enough.~EXIT
END

IF ~ Global("SanIrThr","LOCALS",1)~ THEN BEGIN SanIrThrSar1
SAY ~ It seems that everything we had deducted so far is actually true. Rieltar and the Iron Throne have lost control of the operation. No one seems to really care about us anymore.~
IF~~THEN REPLY ~ No one except for Sarevok, that is. His plans in deed seem to be quite different from those of the Iron Throne's leaders - or we have disturbed him so much, that he somehow lost control himself.~ GOTO SanIrThrSar2
END

IF ~~ THEN BEGIN SanIrThrSar2
SAY ~ I am sure we have added our bit to the current disturbance. Another part of it nevertheless is internal trouble, probably clearer to us than to the Iron Throne's leaders themselves. They seem to be still unaware of Sarevok's true nature and intentions.~
IF~~THEN REPLY ~ Let us seize the moment and move further up. But carefully. We have heard about those mages on the fifth floor. We have experienced this Winski, so we have to expect some powerful resistance up there. ~ DO~ SetGlobal("SanIrThr","LOCALS",2)~ EXIT
END

IF ~ Global("SanIrThr","LOCALS",3)~ THEN BEGIN SanIrThrSar3
SAY~ Hm?~
IF~~THEN REPLY ~ That was quite a fight! What is *Hm*?~ GOTO SanIrThrSar4
IF~~THEN REPLY ~ Hm?~ GOTO SanIrThrSar4
END

IF ~~ THEN BEGIN SanIrThrSar4
SAY~ That was not what we have expected. Quite some fight, but just mercenairies nonetheless. Our real foe are not here it seems.~
IF~~ THEN REPLY ~ Haven't we heard a rumour before, that they might be at Candlekeep?~ DO~ SetGlobal("SanIrThr","LOCALS",4)~ EXIT
IF~~ THEN REPLY ~ Let us seek the rooms for any evidence we may produce to Eltan and the authorities. And for any trace of these bastards.~ DO~ SetGlobal("SanIrThr","LOCALS",4)~ EXIT
END

IF ~ Global("SanIrThr","LOCALS",5)~ THEN BEGIN SanIrTRetCC1
SAY ~ Do you think they will let you back into Candlekeep under these circumstances, <CHARNAME>?~
IF ~~ THEN REPLY ~ I doubt it. The monks are extremely strict in their rules and the fate of the Sword Coast outside is pretty remote for them. We must find some other way to gain access.~ GOTO SanIrTRetCC2
IF ~~ THEN REPLY ~ I hope they will if the Dukes themselves sent us officially. But I doubt the Dukes will do that on the poor evidence we can produce. Rieltar has taken everything with him.~ GOTO SanIrTRetCC2
END

IF~~THEN BEGIN SanIrTRetCC2
SAY ~ It is best to talk to Duke Eltan in private about our findings. You are right, the Dukes as such will require more facts and evidence to act or to let us act on their behalf. But Eltan may be able to get us some means of access for Candlekeep so we can continue our research.~
IF ~~ THEN REPLY ~ The paper chase continues then to the next station. ~ DO~ SetGlobal("SanIrThr","LOCALS",6)~ GOTO SanIrTRetCC3
END

IF~~THEN BEGIN SanIrTRetCC3
SAY ~ I would not take this step so lightly, <CHARNAME>. From this letter of Sarevok I sense something strange and cunning is afoot. Why does he lie to his father about your defeat? Why does he bring in the Zhentarim as scapegoats? He says he will *not* come to Candlekeep because of some quarrel in his troops. That is another lie as we have defeated them and he knows it.~
IF ~~ THEN REPLY ~ Hm, a whole package of lies to his father and his superior in the throne. And why shouldn't he go to Candlekeep at this important stage of the operation. Does he wait for us here?~ GOTO SanIrTRetCC4
END

IF~~THEN BEGIN SanIrTRetCC4
SAY ~ Clever questions, <CHARNAME>.~
IF ~~ THEN REPLY ~ (Smile) I am learning daily - from the best, my love, from you.~ GOTO SanIrTRetCC5
IF ~~ THEN REPLY ~ And has my clever counselor the answers?~GOTO SanIrTRetCC5
END

IF~~THEN BEGIN SanIrTRetCC5
SAY ~ First, I think he will go to Candlekeep but he does not want his father to know it.~
= ~Second, we have heard that he probably wants to take over the Iron Throne leadership himself pretty soon these days.~
= ~Third, he wants his father and the other leaders think that we are no longer a danger to be taken into account.~
= ~Fourth, the thrones forces and mercenaries that we have not yet destroyed are here in Baldur's Gate while the leaders set off to Candlekeep. Alone to keep the important meeting secret.~
IF ~~ THEN REPLY ~ Fifth, Candlekeep and its secluded walls will keep off any spying eyes from what will really happen there! Sarevok will eliminate the Iron Throne leaders, probably shifting the blame to the party they are supposed to meet there, and return as sole survivor.~ DO ~ AddexperienceParty(2800)~ GOTO SanIrTRetCC6
END

IF~~THEN BEGIN SanIrTRetCC6
SAY ~ Hm. Hm?~
IF ~~ THEN REPLY ~ You are not convinced of this interpretation?~ GOTO SanIrTRetCC7
END

IF~~THEN BEGIN SanIrTRetCC7
SAY ~ More or less I agree to your conclusion. Only - I have the feeling we are missing some small detail that might in the end prove to be important. Why, for example, does he lie about our elimination? ~
IF ~~ THEN REPLY ~ For some reason he wants us to be there as well.~GOTO SanIrTRetCC7
IF ~~ THEN REPLY ~ It is doubly a trap, a trap for his father and a trap for us. But how?~  GOTO SanIrTRetCC8
END

IF~~THEN BEGIN SanIrTRetCC8
SAY ~ The meeting is faked. There is no party from the south for negotiation. But there will be us. Does he expect us to do his dirty job for him?~
IF ~~ THEN REPLY ~ We might as well turn that against him and warn the Iron Throne leaders about him. But we will only find out by going there - and avoiding the trap as we know that it exists.~ EXIT
END

IF~ Global("SanTelscp","LOCALS",1) ~ THEN BEGIN SantelTheft1
SAY ~ Even if it was an admirably clever executed theft, I feel not so well to have robbed the people of Leonardo's famous invention, unless you convince me it is of better use to us than it is exposed for public admiration in the Hall of Wonders.~
IF ~~ THEN REPLY ~ You would admit then, it does not belong into a museum if it could be useful still?~ DO ~ SetGlobal("SanTelscp","LOCALS",2)~ GOTO  SantelTheft2
IF ~~ THEN REPLY ~ Hey, we have just proven that we are the most potent adventuring band on the Sword Coast. Does that mean nothing to you, Sandrah?~ DO ~ SetGlobal("SanTelscp","LOCALS",2)~GOTO  SantelTheft3
IF ~~ THEN REPLY ~ It was just gathering dust in that place. You heard that gnome wants to use it in the way it was once designed to be used by Leonardo himself.~ DO ~ SetGlobal("SanTelscp","LOCALS",2)~GOTO  SantelTheft4
END


IF~~ THEN BEGIN SantelTheft2
SAY ~ The purpose of exposing it there, as far as I can see, is to inspire young imaginative people to follow the science and maybe invent things like Leonardo did that may be of benefit for the population.~
IF~~ THEN REPLY ~ Which means, my love, any more practical use of it should then receive your approval.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
IF~~ THEN REPLY ~ A replica accompanied by some explanatory words can suit a similar purpose then, but only the real one can be used for an actual purpose.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
END

IF~~ THEN BEGIN SantelTheft3
SAY ~ No.~ 
IF ~~ THEN DO~ IncrementGlobal("Sanpoints","GLOBAL",-1)~EXIT
END

IF~~ THEN BEGIN SantelTheft4
SAY ~ I guess you are right, my love - in principle. The purpose of exposing it there, as far as I can see, is to inspire young imaginative people to follow the science and maybe invent things like Leonardo did that may be of benefit for the population. A replica accompanied by some explanatory words can suit a similar purpose then, but only the real one can be used for an actual purpose. Only I doubt this dwarf had more in his mind than to just sell it.~
IF~Global("SanRomPath","GLOBAL",1)~ THEN REPLY ~ Hm. Then maybe I just should keep it for myself. It is very useful to observe bathing girls on a faraway beach...haha.~EXIT
IF~Global("SanRomPath","GLOBAL",2)~ THEN REPLY ~ Hm. Then maybe I just should keep it to myself. It is very useful to us to observe handsome bathing males on a faraway beach...haha.~EXIT
IF~~ THEN REPLY ~ I believe the guy, Sandrah, those dwarves are always curious and practical people. Perhaps we contribute to a great discovery this way.~ EXIT
IF~~ THEN REPLY ~ A powerful tool in our situation if we need to observe a dangerous enemy from a safe distance. Or just to scan a waste landscape for possible trouble. I believe Leonardo would agree to such a use of his tool. Let's forget the dwarf and just keep it.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
END

IF~Global("SanTelscp","LOCALS",3)~THEN BEGIN SanSigStrgze1
SAY~ May I have that telescope for a minute, please, my love?~
IF~~THEN REPLY ~ Sure - do you want to stargaze?~ DO~ SetGlobal("SanTelscp","LOCALS",4)~GOTO SanSigStrgze2
END

IF~~ THEN BEGIN SanSigStrgze2
SAY~ Exactly. (She searches the starlit sky until she finds what she was looking for.) There they are indeed, in the same section of the sky, bright as it was reported.~
IF~~THEN REPLY ~Are you looking for those two new stars I heard talking of? Some superstitious people claim they represent new gods to rise. I never would have guessed you belong among them!~ GOTO SanSigStrgze3
IF~~THEN REPLY ~Those new stars that signal the arrival of new gods in the pantheon? Does Bhaal have a constellation representing him?~ GOTO SanSigStrgze4
END

IF~~ THEN BEGIN SanSigStrgze3
SAY~(Smiles) I am not superstitious although many claim truth on the fact that each re-incarnation of Mystra is represented by a new star in her belt. But a new one? Now? As her priestess and granddaughter I would know such a thing.~
=~ No, <CHARNAME>, as a healer and historian I am interested how such beliefs are fuelled, how observations made by mortals turn into myth or prejudice. Like those two stars.~
IF~~THEN REPLY ~What about that second one - Does Bhaal have a constellation representing him?~ GOTO SanSigStrgze4
END

IF~~ THEN BEGIN SanSigStrgze4
SAY~ No, unless you take the blackness in the absence of any star or light as his dark domain. That second new one is of a different nature, very bright. Here look at it yourself.~
IF~~THEN REPLY~ (You take a look at the respective section of the nightly sky and immediately find the two constellations.) This one is Mystra's Belt, sure. What is the other constellation?~ GOTO SanSigStrgze5
END

IF~~THEN BEGIN SanSigStrgze5
SAY~ (She has taken a piece of parchment and a quilt from her pack and puts five dots in the same constellation you had seen above on it. She then draws some connecting lines so you see a symbol that you are sure to have seen before.)~
IF~~THEN REPLY~ I feel like having seen that symbol before, some decoration, some old book...it is not a symbol of Bhaal, it is too beautiful for that.~ GOTO SanSigStrgze6
END

IF~~THEN BEGIN SanSigStrgze6
SAY ~ No it is not Bhaal, almost the opposite. It is a Certar, a rune symbol found in the heritage of the older races of Faerun - it represents *Hope*.~
IF~~THEN REPLY~ A new god bringing new hope... (sigh)... we could use him - or her.~
EXIT
END

// Shauhana Preview

IF ~ Global("SanBG1ShauPrev","GLOBAL",1)~ THEN BEGIN ShauPrevInGate1
SAY ~ I sense a very strong presence of the Weave, <CHARNAME>. It seems to be coming from one of these nearby houses.~
IF ~~ THEN REPLY ~ Your mystic powers astonish me every time. And they seem to get stronger with the experience and use during our travel. What do you propose?~ GOTO ShauPrevInGate2
IF ~~ THEN REPLY ~ Something positive or something dangerous, can you tell that?~GOTO ShauPrevInGate2
END

IF~~ THEN BEGIN ShauPrevInGate2
SAY ~ I cannot sense anything imminent dangerous with it. If you like, we can just saturate our curiosity and explore the surrounding buildings.~
IF~~THEN DO ~ SetGlobal("SanBG1ShauPrev","GLOBAL",2)~ EXIT
END

IF~Global("SanBG1ShauPrev","GLOBAL",6)~ THEN BEGIN ShauPrevInGate3
SAY ~ A very powerful but blind orc shaman and his guide, hm.~
IF ~~ THEN REPLY ~ Any idea what they were searching?~GOTO ShauPrevInGate4
END

IF~~ THEN BEGIN ShauPrevInGate4
SAY ~ Not much more than what they revealed by their words. They were Clan Orcs, meaning they come from the great orc clan nations far in the north - not to be compared with the orcs we encounter around here. They search for a godchild, but not one of the Bhaalspawns. Either your blood or Sarevok's has guided them to this town. But it was an error.~
IF~~THEN REPLY ~ Don't laugh at me and don't ask me why - but I have the strong feeling we will see them again.~GOTO ShauPrevInGate5
END

IF~~ THEN BEGIN ShauPrevInGate5
SAY ~ I do neither, my love. I think you are right. You demi-gods have a tendency to find each other as you all move on paths set aside from the masses. It is an orc girl they look for and maybe we will find her one of these days.~
IF~~THEN DO ~ SetGlobal("SanBG1ShauPrev","GLOBAL",7) AddJournalEntry(@700,QUEST)~ EXIT
END

IF~ Global("SanTamoko","LOCALS",1)~ THEN BEGIN SanTamoko1
SAY ~ You are not like him and you never could have been. I am blessed I am not in her place.~
IF ~~ THEN REPLY ~ Sandrah?~ DO~ SetGlobal("SanTamoko","LOCALS",2)~ GOTO SanTamoko2
END

IF ~~ THEN BEGIN SanTamoko2
SAY ~ That poor Tamoko, cursed to love the wrong Bhaalspawn like I am blessed to love the right one. Her story has confirmed everything we have learned about Sarevok so far.~
IF ~~ THEN REPLY ~ And such a fate could have been mine, had not Gorion and your father had their hands shielding over me. And Elminster's daughter in the times of ordeal.~ GOTO SanTamoko3
END

IF ~~ THEN BEGIN SanTamoko3
SAY ~ But she also revealed, that the way for you or him was not set but a path to be chosen and a path that can be altered even later on by redemption.~
IF ~~ THEN REPLY ~ One thing is strange however. He sees himself as my brother and me as his family. It is his prime reason to be after me like that.~GOTO SanTamoko4
END

IF ~~ THEN BEGIN SanTamoko4
SAY ~ One of his many errors. He is alone in his lust for power, as we heard from poor Tamoko, nobody has ever helped him to discover the true nature of his heritage. He only had this Orloth Winski that fed him with just the terms about the evil aspect of being a Bhaalspawn. And the only interest he has in his siblings is to eliminate them as possible rivals to the Throne of Bhaal.~
IF ~~ THEN REPLY ~ You sound as if you somehow understand and forgive him.~ GOTO  SanTamoko5
IF ~~ THEN REPLY ~ You think, I may have ended in his place under different circumstances. Does that make you sound so forgiving?~ GOTO  SanTamoko5
END

IF ~~ THEN BEGIN SanTamoko5
SAY ~ It is not for me to either condemn or forgive him, <CHARNAME>. That is your decision if it is to decide for any of us.~
IF ~~ THEN REPLY ~ You have been my counselor and my lover through all of this. So I may rightfully ask you for your opinion of that.~ GOTO  SanTamoko6
IF ~~ THEN REPLY ~ This venture has been our common one since the beginning, it is not my decision alone that counts here. You have heard it once again from Tamoko, this is not a *family affair*, millions of lives on Toril are at stake here.~  GOTO  SanTamoko6
END

IF ~~ THEN BEGIN SanTamoko6
SAY ~ I love you for every word that you have said. Yes, we cannot just decide for us here, but for the fate of the Sword Coast and the Realms. It will all depend on Sarevok once we have him tracked down. When he sees his defeat, it will be him to give us the evidence on which we will decide.~
IF ~~ THEN REPLY ~ So be it.~ EXIT
IF ~~ THEN REPLY ~ For the survival of the Realms, his defeat is as sure as his death.~ EXIT
END


// Umberlee's bowl
IF ~ Global("Umbowl","GLOBAL",1) ~ THEN BEGIN Umbowl
SAY ~ I apologise, <CHARNAME>, that had to be your decision not mine. I over acted.~
IF~~ THEN REPLY ~ I am not sure I understand what was really going on. Those poor fisherman asking for our help were really murderers and thieves? And how could you know?~ GOTO Umbowl2
END

IF ~~ THEN BEGIN Umbowl2
SAY ~ I knew because I saw it in my father's shard. I will tell you about it some other time.~
IF ~~ THEN REPLY ~ Whatever. I am leading this party and we follow my decisions. As you have apologised already, let us move on.~ DO ~ SetGlobal("Umbowl","GLOBAL",2)~ EXIT
IF ~~ THEN REPLY ~ Whatever told you, it looks you were right. I did not know that Mystra was a goddess to threaten people that way. Any idea how to finish this, now that we have this strange bowl?~
GOTO Umbowl3
END

IF ~~ THEN BEGIN Umbowl3
SAY ~ It is neither Mystra's habit nor mine to threaten people. I am sorry I let these vile men get me so angry. As to the bowl, we should give it to the priestess daughter when we meet her. She must be around here, along the river somewhere.~ 
IF~~ THEN DO ~ SetGlobal("Umbowl","GLOBAL",2)~ EXIT
END

// Nashkel Iron
IF ~ Global("SaNasIro","GLOBAL",1) ~THEN BEGIN SaNasIro1
SAY ~ <CHARNAME>, look there, I suggest we take a sample of this tainted iron with us back to Nashkel, maybe they can find out what causes it to decay and can do something about it. Perhaps even Taerom with his knowledge of iron could be helpful.~
IF~~THEN REPLY ~ Yes, we should even inspect these creatures down here, they may carry some evidence of what they use to cause the damage.~ DO ~ SetGlobal("SaNasIro","GLOBAL",2)~EXIT
IF~~THEN REPLY ~ It would be better, if we found some useable iron for Taerom and Braegar instead of loading our packs with some garbage, my *counselor*.~ DO ~ SetGlobal("SaNasIro","GLOBAL",2)~EXIT
END



//Find Branwen

IF ~ Global("SanBranSearchRem","GLOBAL",2) ~ THEN BEGIN GetPetScr1
SAY ~ Please, <CHARNAME>, give me a minute of your time. ~
IF ~~ THEN REPLY ~ Of course, Sandrah, you have been a bit silent recently.~ GOTO GetPetScr2
END

IF ~~ THEN BEGIN GetPetScr2
SAY ~ In my father's crystal shard, just shortly before I left home for the Sword Coast, I accidentally saw something that worries me. Now that we have left the wilderness I think we can do something about it.~
= ~ I saw another priestess, tall and blond, so I guess she must be from the North somewhere. She was with a very unpleasant mage in my vision and they were having a big quarrel about something.~
 = ~ Whatever it was, the mage cast a flesh to stone spell on the poor maid and thus petrified her. She must be like a statue right now and suffering badly from it. Please, <CHARNAME>, we need to find her and free her from this spell.~
IF ~~ THEN REPLY ~ Sandrah, with all our own problems, the least we will do is comb the Sword Coast for northern priestesses who got themselves into trouble. Forget it. ~ GOTO GetPetScrNo
IF ~~ THEN REPLY ~ Sandrah, is there anything more specific about this, any idea where to find her and how to free her? ~  GOTO GetPetScrInf
END

IF ~~ THEN BEGIN GetPetScrNo
SAY ~ <CHARNAME>, are you still yourself? I can't believe what I just heard. Let the girl's fate be a lesson to you and do not anger a potent priestess of Mystra. I will not ask you so nicely for your help a second time. ~
IF ~~ THEN REPLY ~ Yes, yes, Sandrah calm down. Seems that I have little to say in this matter. Have it your way then. ~  GOTO GetPetScrInf
END

IF ~~ THEN BEGIN GetPetScrInf
SAY ~ Well, first thing to do is to get us a mage scroll for our mission. As I do not have the spell memorized, we need to purchase one from a temple. The Morninglord Temple of Beregost or Helm's Temple at Nashkel should have a stone to flesh scroll that we can buy. ~
= ~ Then we need to find the statue. What I saw in the shard was an area with tents and merchants and banners. So it looked like a market in a big town or maybe a festival of sorts. We should try to find such an event and then keep our eyes open, maybe some derranged misfit uses the poor statue as a weird attraction to make some money. ~
IF ~ PartyHasItem("SCRLPET")~ THEN REPLY~ I have such a scroll with me, Sandrah, so will keep it for our task. Disgusting to think of what some people will do for a few coins. You were right to urge me for help. Wasn't there talk of some carnival I picked up recently? Where was it...~ DO ~ SetGlobal("SanBranSearchRem","GLOBAL",3) AddJournalEntry(@11,QUEST) ~ EXIT
IF~!PartyHasItem("SCRLPET")~ THEN REPLY ~ Disgusting to think of what some people will do for a few coins. You were right to urge me for help. Wasn't there talk of some carnival I picked up recently? Where was it...~
DO ~ SetGlobal("SanBranSearchRem","GLOBAL",3) AddJournalEntry(@11,QUEST) ~ EXIT
END

IF ~ Global("SanBranSearchRem","GLOBAL",4)~ THEN BEGIN PetScrCar1
SAY ~ <CHARNAME>, it must be here, I recognize the scenery, the tents and all!~
IF~~ THEN REPLY ~ What must be here? What are you talking about?~  GOTO PetScrCar2
IF~~ THEN REPLY ~ The petrified priestess? You said a market, a circus, alas! It may well be a carnival.~ GOTO PetScrCar3
END

IF ~~ THEN BEGIN PetScrCar2
SAY ~ The petrified priestess! I thought of a market or a circus, but it is a carneval.~
IF ~~ THEN REPLY ~ So you think it is here? ~ GOTO PetScrCar3
END

IF ~~ THEN BEGIN PetScrCar3
SAY ~ I am sure she is here, the scenery is exactly what I saw in the shard. We must hurry to her rescue, <CHARNAME>!~
IF ~!PartyHasItem("SCRLPET")~ THEN REPLY ~ But we do not yet have the spell you adviced me to buy for this purpose. ~ GOTO PetScrCar4
IF ~PartyHasItem("SCRLPET")~ THEN REPLY ~ We will free her as fast as we can. Everybody look out for a statue that looks almost human. Sandrah, I promise you, we will find her.~ DO ~ SetGlobal("SanBranSearchRem","GLOBAL",5)~ EXIT
END

IF ~~ THEN BEGIN PetScrCar4
SAY ~ Let us return to Nashkel immediately, the temple there will provide us with what we need.~
IF ~~ THEN REPLY ~ We will free her as fast as we can. Just a hike into town and then we will come back here. Sandrah, I promise you, we will find her.~ DO ~ SetGlobal("SanBranSearchRem","GLOBAL",5)~ EXIT
END

//PIDs while getting to know

IF ~ IsGabber(Player1) Global("SanPidPack","GLOBAL",0)~ THEN BEGIN SanPCInit1
SAY ~ (Sandrah walks beside you scanning the area for possible dangers. All seems quiet so you may take the opportunity to learn a bit more about her.) ~
IF ~~ THEN REPLY ~ (You decide there will be better occasions in the future.) ~ DO ~ SetGlobal("SanPidPack","GLOBAL",2)~ EXIT
IF ~~ THEN REPLY ~ It is good to have you in the party, Sandrah. ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO Nice1
IF ~~ THEN REPLY ~ You are a beautiful girl, Sandrah. ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO StandardComp
IF~~THEN REPLY~Your hammer seems to be stuck.~GOTO SanHamCl
END

IF~~THEN BEGIN SanHamCl
SAY~Let me check it.~
IF~~THEN DO~ReallyForceSpellRES("SanHamCL",Myself)~EXIT
END

IF ~~ THEN BEGIN Nice1
SAY ~ I am glad I found you in time. Well, not really in time considering Gorion. But at least not too late. ~
IF ~~ THEN DO ~ SetGlobal("SanPidPack","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN StandardComp
SAY ~ (Laughs) Oh, <CHARNAME>, do you not think I have heard that before. Let us move on before we end up in silly city smalltalk. (Sandrah grins brightly at you) ~
IF ~~ THEN DO ~ SetGlobal("SanPidPack","GLOBAL",3)~ EXIT
END

IF ~ IsGabber(Player1) Global("SanPidPack","GLOBAL",2) ~ THEN BEGIN SanPCInit2
SAY ~ (Sandrah walks beside you scanning the area for possible dangers. All seems quiet so you may take the opportunity to try a better conversation this time) ~
IF ~~ THEN REPLY ~ It is good to have you in the party, Sandrah. ~ GOTO Nice2
IF ~~ THEN REPLY ~ You are a beautiful girl, Sandrah. ~ GOTO StandardComp2
IF ~Global("SanAtGor","LOCALS",0)~ THEN REPLY ~ Sandrah, I was wondering...What brought you to the scene of Gorion's death? ~ GOTO GorionSite
IF~Global("SanNoMage","LOCALS",0)~THEN REPLY~I learned that Mystra is the goddess of all magic, so how come you are not a mage?~GOTO SanNoMage1
IF~~THEN REPLY~Your hammer seems to be stuck.~GOTO SanHamCl
END

IF ~~ THEN BEGIN StandardComp2
SAY ~ (Laughs) Oh, <CHARNAME>, don you not think I have heard that before. Let us move on before we end up in silly city smalltalk. (Sandrah grins brightly at you) ~
IF ~~ THEN DO ~ SetGlobal("SanPidPack","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN Nice2
SAY ~ I am glad I found you in time. Well, not really in time considering Gorion. But at least not too late. ~
IF ~~ THEN DO ~ SetGlobal("SanPidPack","GLOBAL",3)~ EXIT
END

IF ~ IsGabber(Player1) Global("SanPidPack","GLOBAL",3) ~ THEN BEGIN SanPCInit3
SAY ~ (Sandrah walks beside you scanning the area for possible dangers. It is a good time to get to know her better.) ~
IF ~~ THEN REPLY ~ Where are you from, Sandrah? ~ GOTO SanWater
IF ~Global("SanAtGor","LOCALS",0)~ THEN REPLY ~ Sandrah, I was wondering...What brought you to the scene of Gorion's death? ~ GOTO GorionSite
IF~Global("SanNoMage","LOCALS",0)~THEN REPLY~I learned that Mystra is the goddess of all magic, so how come you are not a mage?~GOTO SanNoMage1
IF~~THEN REPLY~Your hammer seems to be stuck.~GOTO SanHamCl
END

IF~~THEN BEGIN SanNoMage1
SAY~Mystra grants all arcane arts as well as the powers provided by the Weave. I never wanted to be just a spellcaster but to use the powers for healing and to improve the plane we dwell on. The rest is a long story that we will probably have a chance to exchange during our travels together, <CHARNAME>. ~
IF~~THEN REPLY~ I look forward to learn more about you.~DO~SetGlobal("SanNoMage","LOCALS",1)IncrementGlobal("Sanpoints","Global",1)~ EXIT
IF~~THEN REPLY~ I'm sure I can't avoid to learn more about you than I care for.~DO~SetGlobal("SanNoMage","LOCALS",1)IncrementGlobal("Sanpoints","Global",-1)~ EXIT
END

IF ~~ THEN BEGIN SanWater
SAY ~ I was born and raised in Waterdeep. My father is well known there, as well as in some other places... ~
IF ~~ THEN REPLY ~ So a real big city girl. I should have known by your exquisit robes and looks. ~ GOTO NoSnob
IF ~~ THEN REPLY ~ This is a surprise. Even with your exquisit robes and looks you make a pretty good fighter. You are not the average big city snob. ~ GOTO NoSnob
END

IF ~~ THEN BEGIN NoSnob
SAY ~ (Laughs), so much for prejudice. I hope we get to know each other well enough that you will never take me for the rich snob girl again.~
= ~ (Her face becomes very serious for a moment) I hope that very soon you will learn to trust me and our other companions and our abilities. Our common path depends on that. ~
IF ~~ THEN DO ~ SetGlobal("SanPidPack","GLOBAL",5)~ EXIT
END

IF ~~ THEN BEGIN GorionSite
SAY ~ That is not an easy question, <CHARNAME>. Call it over-confidence, call it ...call it a *calling*. I came across a bit of information that was not meant for me and I started to mingle with things I maybe should not. (Aside - Seems to run in the family.) ~
IF ~~ THEN REPLY ~ If this is really an answer, then it is a rather cryptic one. ~DO~SetGlobal("SanAtGor","LOCALS",1) ~GOTO SanCryptic
END

IF ~~ THEN BEGIN SanCryptic
SAY ~ I admit it is. I also admit that to say: just wait and see, is not any better. But I have to ask for your patience once more. Once you have learned more about yourself and the situation here and my father's envolvement, you will understand me. ~
IF ~~ THEN REPLY ~ Looks like your father plays quite some role here. ~  GOTO SanWater
END

IF ~ IsGabber(Player1) Global("SanPidPack","GLOBAL",5) ~ THEN BEGIN SanPCInit5
SAY ~ (Sandrah walks beside you scanning the area for possible dangers while glancing at you for a second now and then.)~
IF ~~ THEN REPLY ~ (You enjoy walking side by side with your beautiful companion. Sometimes life is just wonderful and no words seem to be adequate for such a situation.) ~ EXIT
IF ~ GlobalGT("Sprite_is_DeadBandit","GLOBAL",25) Global("SanFiSkills","LOCALS",0) ~ THEN REPLY ~ Sandrah, with your background from Waterdeep, I am wondering where you learned to fight like that.~DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SanFiSkills
IF ~ AreaType(FOREST) TimeOfDay(DAY) Global("SanStrBe","LOCALS",0) ~ THEN REPLY ~ Wild strawberries over there, what a rare sight!~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanStrBe
IF ~ Global("SanOrDiId","GLOBAL",3) ~ THEN REPLY ~ I want to talk with you now about that diary we found at Ulcaster, if you don't mind. ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO UlDarT
IF ~ Global("TORKIONNEEDYOU","GLOBAL",1) !PartyHasItem("Misc48") Global("SanTorq","LOCALS",0) ~ THEN REPLY ~ Sandrah, my little counselor, does your famous book tell us anything about this Torqion and the sword he requires from us? ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanTorq1
IF ~Global("SanAtGor","LOCALS",0)~ THEN REPLY ~ Sandrah, I was wondering...What brought you to the scene of Gorion's death? ~ GOTO GorionSite
IF~Global("SanNoMage","LOCALS",0)~THEN REPLY~I learned that Mystra is the goddess of all magic, so how come you are not a mage?~GOTO SanNoMage1
IF ~ GlobalGT("Santiax","LOCALS",3) Global("SantiaxPC","LOCALS",0)~ THEN REPLY ~ Tiax seems to think that your heritage in a way seems to imply what kind of future is waiting for you.~ GOTO SanTiaxPC1
IF~Global("BHHandSearch","GLOBAL",0) PartyHasItem("BHGHandn") PartyHasItem("BHGHand") ~THEN REPLY~Do you have any idea about this *Glorious Hand* issue, my learned counselor?~GOTO BHGHand
IF~ GlobalGT("RoadFound","GLOBAL",1) AreaCheck("bg2300") PartyHasItem("SanMap") ~ THEN REPLY ~ I am ready to start the journey to Waterdeep now, lead on, my love.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO WDTravl1
IF ~ Global("SanNarQ","GLOBAL",7) !Global("SanWDHi","GLOBAL",2) Global("SanVisWD","LOCALS",0)~ THEN REPLY~ Do you sometimes wish to visit your home at Waterdeep again, Sandrah? ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",3)~GOTO SanVisWD
IF ~ Global("SanNarQ","GLOBAL",7) Global("SanWDHi","GLOBAL",2) Global("SanVisWDFA","LOCALS",0)~ THEN REPLY~ Do you have to tell me something about that old man Jopi, Sandrah? ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanVisWDFA
IF~ Global("Drizztfight","GLOBAL",1) !InParty("Branwen") GlobalLT("SanDrizzt","GLOBAL",3) Global("SanFiSkills","LOCALS",0)~ THEN REPLY ~ It seems that the famous Drizzt Do'Urden knows you well, Sandrah? In a way I envy you for this.~ GOTO SanKnoDrizPC1
IF~ InParty("Coran") Global("SanRomPath","GLOBAL",2) Global("SanCorFem","LOCALS",0)~ THEN REPLY ~ Sandrah, what do you make of our cute companion Coran? ~GOTO SanCorFem1
IF ~Global("SanBreBa","GLOBAL",2) ~ THEN REPLY ~ You and Breagar seem to be a bit at odds with each other.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanBreCon1
IF ~ Global("SanWoodSt","LOCALS",2) AreaType(DUNGEON) ~ THEN REPLY ~ Can you provide us with some wooden stakes, Sandrah?~ GOTO SanMkStake5
IF ~ GlobalGT("Cowscroll","GLOBAL",9) Global("EdCursGon","LOCALS",0) ~ THEN REPLY ~ Mystra has finally taken her curse off from Edwin.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO EdCursGon1
IF~ InParty("Coran") Global("SanRomPath","GLOBAL",1) Global("SanCorMale","LOCALS",0)~ THEN REPLY ~ Sandrah, what do you make of our cute companion Coran? ~GOTO SanCorMal1
IF ~ Global("BHQuestaccept","GLOBAL",3) Global("SanAskBH1","LOCALS",0) ~ THEN REPLY ~ You have been to this island with your father, Sandrah?~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanAskBH11
IF~Global("SanVsTalos","GLOBAL",1) Global("Talostlk","LOCALS",0)~THEN REPLY ~Now we have made ourselves some new *friends*, those that follow the Storm Lord Talos.~ GOTO SanTalosF1
IF~Global("WDIntrotalk","LOCALS",2)OR(4)AreaCheck("CVROA2") AreaCheck("CVROA3") AreaCheck("CVElm1") AreaCheck("CVElm4")~ THEN REPLY~Can you tell me some more about Waterdeep?~  DO~SetGlobal("WDIntrotalk","LOCALS",4)~GOTO FirstWDIntro3
IF~Global("WDIntrotalk","LOCALS",3)OR(4)AreaCheck("CVROA2") AreaCheck("CVROA3") AreaCheck("CVElm1") AreaCheck("CVElm4")~ THEN REPLY~Can you tell me some more about Waterdeep?~  DO~SetGlobal("WDIntrotalk","LOCALS",4)~GOTO FirstWDIntro2
IF~~THEN REPLY~Your hammer seems to be stuck.~GOTO SanHamCl
END

IF~~THEN BEGIN SanKnoDrizPC1
SAY~ You would envy me even more if you learn that he was one of my teachers in combat, <CHARNAME>.~
IF~~THEN REPLY ~ It really explains a lot about your impressive abilities. I wish I had a teacher like that - or even a real teacher at all.~ GOTO SanKnoDrizPC2
END

IF~~THEN BEGIN SanKnoDrizPC2
SAY ~ As you had none, the result is then even more astonishing. Do you want to hear the story of how Drizzt and me became teacher and student?~
IF~~THEN REPLY ~ I'd like to learn anything I can about your past, my love.~ GOTO SanFiSkills
IF~~THEN REPLY ~ That really sounds like an interesting tale, Sandrah.~ GOTO SanFiSkills
IF~~THEN REPLY ~ A *good* drow is such a bore, thus any story with him can only be boring.~DO~IncrementGlobal("Sanpoints","Global",-1)~ EXIT
IF~~THEN REPLY ~ Sounds like an interesting topic for this eve, I will ask you about the tale later.~ EXIT

END

IF~~ THEN BEGIN SanCorFem1
SAY~ (Smiles) Does he advance you in the same shameless way he does with me?~
IF~~THEN REPLY~ I see, obviously he does it to every girl that is not completely undesireable or too fast to escape him in time.~ DO ~ SetGlobal("SanCorFem","LOCALS",1)~ GOTO SanCorFem2
END

IF ~~ THEN BEGIN SanCorFem2
SAY ~ I find it kind of amusing and entertaining. And knowing his ways, there is surely no chance any of us two will loose her heart in that trap.~ 
IF~~THEN REPLY~ You are willing to play along to his lines then? ~ GOTO SanCorFem3
IF~~THEN REPLY~ And which one of us do you think he prefers?~ GOTO SanCorFem3
IF~~THEN REPLY~ But we will surely not start a fight over this *ladies man*, cute as he may be.~ GOTO SanCorFem3
END

IF ~~ THEN BEGIN SanCorFem3
SAY ~ (Sandrah smiles knowingly at you.) Listen, as we both are quite entertained by his advances and we both know that there is nothing but a nice little adventure waiting for us, I see no reason why we should not allow ourselves to enjoy that little fun. We have no reason for jealousy and no way to loose our heart and soul. I am always willing to learn a bit more in the art of carnal love and Coran is a competent subject for learning.~
IF~~THEN REPLY~ You mean...you propose we can have him both, let's say, a kind of adventure and entertainment. Is that not a bit...hm, weird?~ GOTO SanCorFem4
IF~~THEN REPLY~ Are you really proposing that we two share him between us as our kind of *love toy*?~ GOTO SanCorFem4
END

IF ~~ THEN BEGIN SanCorFem4
SAY ~ It may sound funny but, yes, I propose we will both have a bit of fun with him without need to bother too much. He broke so many poor girl's hearts that I have no scruple to use him for my own joy - and I see no reason why you should not allow yourself the same freedom. What is the danger in that, <CHARNAME>? We know what to expect and we only pay him in his own currency.~ 
IF~~THEN REPLY~ Hm, and maybe learn a bit by the way. I must confess, the chances for boyfriends were really limited in Candlekeep. (Laugh). So we have a deal, Sandrah.~ EXIT
IF~~THEN REPLY~ Hey, I take it as a bit of a competition, let's see who has more success in seducing him.~ EXIT
END

IF~~ THEN BEGIN SanCorMal1
SAY~ (Smiles) Jealous that he advances me in such a shameless way?~
IF~~THEN REPLY~ I see, obviously he does it to every girl that is not completely undesireable or too fast to escape him in time.~ DO ~ SetGlobal("SanCorMale","LOCALS",1)~ GOTO SanCorMal2
END

IF ~~ THEN BEGIN SanCorMal2
SAY ~ I find it kind of amusing and entertaining. And knowing his ways, there is surely no chance I will loose my heart in that trap.~
IF~~THEN REPLY~ You are willing to play along to his lines then? ~ GOTO SanCorMal3
IF~~THEN REPLY~ Are you joking, Sandrah?~ GOTO SanCorMal3
IF~~THEN REPLY~ But I will surely not start a fight over you with this *ladies man*, cute as he may be.~ GOTO SanCorMal3
END

IF ~~ THEN BEGIN SanCorMal3
SAY ~ (Sandrah smiles knowingly at you.) Listen, as we both are quite entertained by his advances and we both know that there is nothing but a nice little adventure waiting , I see no reason why we should not allow ourselves to enjoy that little fun. You have no reason for jealousy and I have no way to loose my heart and soul. I am always willing to learn a bit more in the art of carnal love and Coran is a competent subject for learning.~
IF~~THEN REPLY~ You mean...you propose I should allow you to play with him, let's say, a kind of adventure and entertainment. is that not a bit...hm, weird?~ GOTO SanCorMal4
IF~~THEN REPLY~ Are you really proposing that we two share him between us as our kind of *love toy*?~ GOTO SanCorMal4
END

IF ~~ THEN BEGIN SanCorMal4
SAY ~ It may sound funny but, yes, I propose you will let me have a bit of fun with him without need to bother too much. He broke so many poor girl's hearts that a I have no scruple to use him for my own joy - and I see no reason why you should not allow yourself the same freedom. What is the danger in that, <CHARNAME>? We know what to expect and we only pay him in his own currency.~ 
IF~~THEN REPLY~ Hm, and maybe learn a bit by the way. I must confess, the chances to make our own relationship even more interesting are tempting. (Laugh). So we have a deal, Sandrah.~ EXIT
IF~~THEN REPLY~ Hey, I take it as a bit of a competition, let's see who has more success in seducing you.~ EXIT
END

IF~~THEN BEGIN  SanAskBH11
SAY ~ We are on the island of Lendore, far off the shore of Calimshan. It is ruled by the family of the Baron, who was mentioned by Pelltar. This town here and a place further to the south, Garotten, are the only settlements, except for one old castle rotting away somewhere on this island.~
IF~~THEN REPLY ~ Do you know anyone here on the island?~  GOTO SanAskBH12
IF~~THEN REPLY ~ Are you aware of any specific problems that may trouble the people here?~ GOTO SanAskBH13
END

IF~~THEN BEGIN  SanAskBH12
SAY ~ A gentle old half-elf named Billy Bob may still live here in his retirement. He is an aquaintance of my father and somehow also involved with the Harpers. If we find him, he may know of the problems in this otherwise boring place.~
IF ~~ THEN REPLY ~ A retired half-elf? Wonder what elves retire from, mh.~ DO ~ SetGlobal("SanAskBH1","LOCALS",1)~EXIT
END

IF~~THEN BEGIN  SanAskBH13
SAY ~ If we find an old half-elf named Billy Bob, he may know of the problems in this otherwise boring place. He is an aquaintance of my father and was somehow also involved with the Harpers before his retirement.~
IF ~~ THEN REPLY ~ A retired half-elf? Wonder what elves retire from, mh.~ DO ~ SetGlobal("SanAskBH1","LOCALS",1)~EXIT
END

IF ~~ THEN BEGIN SanTorq1
SAY ~ There is a mentioning here telling that the vampiric blade was constructed by vampires as a trap for those that oppose them. Each swing actually inflicts damage upon the wielder, as his life energies are drained  in order to heal his intended victim. Were this not enough, the weapon is cursed so as to prevent it's removal, and  the user is smitten with a wasting of the mind, that he might not even think of trying to rid himself of it. ~
IF ~~ THEN REPLY ~ So if we should really find it, then the only use of it is the relief of these threesome creature from its curse. ~  GOTO SanTorq2
IF ~~ THEN REPLY ~ So we better leave our hands off this task then?~ GOTO SanTorq2
END

IF ~~ THEN BEGIN SanTorq2
SAY ~ It would not endanger us, now that we know of its curse, as long as none of us really tries to wield the said weapon. So we should be able to help these ghosts and the town of Beregost, provided we find the item.~
IF ~~ THEN REPLY ~ But I assume the book does not tell us where the sword is to be found.~ GOTO SanTorq3
END

IF ~~ THEN BEGIN SanTorq3
SAY ~ No, it is not up-to-date with the current whereabouts of the sword as it is really missing for a very long time already. But that at least gives us a hint then. It is very ancient lore, so the places to search for on the Sword Coast must be those of the ancient times as well.~
IF ~~ THEN REPLY ~ As old as Candlekeep or Baldur's Gate perhaps.~ GOTO SanTorq4
END

IF ~~ THEN BEGIN SanTorq4
SAY ~ Those places you mention are not really old, compared to the long ages that were before them. No, this lore is from times further in the dark. Places like Ulcaster or the Firewine Bridge, or even places not longer remembered anymore by the people of the Sword Coast today. Some old ruins, places yet to be discovered.~
IF~~THEN REPLY~ Maybe we will find such places on our quests. I remember a guy who had been to Candlekeep a while ago, a scientist Charleston Nib who planned the excavation of some ancient settlement on the Sword Coast. Maybe such are places where we should keep our eyes open.~ DO ~ SetGlobal("SanTorq","LOCALS",1) ~EXIT
END

IF ~~ THEN BEGIN UlDarT
SAY ~ I will tell you what I found and then we will see together what it really reveals to us.~
IF~~ THEN REPLY ~ Fine, you seem to be puzzled. I have learned something from you by now. Let us put all the facts we know in front of us and then see where they may fit.~ GOTO SanOrDiId3
END

IF ~~ THEN BEGIN SanFiSkills
SAY ~ When I started to accompany my father on his missions from time to time, I soon found that not always his magic and diplomacy where enough to handle all situations. Sometimes a bit of weapon skills would come in handy, I thought.~
IF ~~ THEN REPLY ~ Excuse me, I am not meaning to fall in the same prejudice trap again with you, but a girl like you still seems to be the last person I would expect to pick up a war hammer and fight.~ DO ~ SetGlobal("SanFiSkills","LOCALS",1)~ GOTO SanFiSkills2
END

IF ~~ THEN BEGIN SanFiSkills2
SAY ~ (Laughs gently) You are absolutely right. I first tried some more *ladylike* weapons like daggers, and then I attempted ranged weapons to be further away from the enemy's direct attacks. Only when my father got a visit from an old friend, I found my real weapon by coincidence.~
IF ~~ THEN REPLY ~ Yes? Tell me.~ GOTO SanFiSkills3
END

IF ~~ THEN BEGIN SanFiSkills3
SAY ~ I was alone in our house at that hour and spent my time to decorate our entry hall for the coming birthday celebration of my father. It was a warm spring day, so I had left the main door to the town open to let the air in. I was just fixing some flower garlands to the wall with small nails and a tiny hammer when this old friend came in, one day too early for the birthday.~
= ~As Drizzt Do'Urden looks like anything but one of the Realm's most famous fighters, I was just taking him for a thief who had sneaked into the house sensing the unlocked front door. And of course I started to attack him with my little hammer.~
IF ~~ THEN REPLY ~ THAT Drizzt Do'Urden? A little girl with a hammer attacking HIM, that must have been quite a sight.~ GOTO SanFiSkills4
END

IF ~~ THEN BEGIN SanFiSkills4
SAY ~ I see, his name made it even to the enclosure of Candlekeep. So, Drizzt decided not to clarify the situation of him being a visitor to my father, but rather continued to fight with me. We went for a bit when suddendly my father was standing in the door and burst into a big laughter.~
= ~ So after the situation was clarified, Drizzt declared that he was quite impressed by my natural talent as a melee fighter, even showing a couple of real bad bruises he had taken from me. It was then decided that he would give me some real training whenever he was in Waterdeep and could spare the time.~
IF ~ Global("PCKnowsElmDaughter","GLOBAL",1)~ THEN REPLY ~ Fighting lessons from Drizzt Do'Urden, oh my, no wonder you know what you are doing.~ EXIT
IF ~ Global("PCKnowsElmDaughter","GLOBAL",0)~ THEN REPLY ~ Fighting lessons from Drizzt Do'Urden, oh my, no wonder you know what you are doing. Next thing I learn from you that Elminster himself tutored your spellcasting, haha. (Sandrah smiles secretly to herself.) ~  EXIT
END

IF ~~ THEN BEGIN SanStrBe
SAY ~ (Sandrah has dashed forward already and starts to pick the strawberries quickly.)~
IF~~ THEN REPLY ~ (Follow her slowly, waiting amused where this situation will lead to.) ~ GOTO SanStrBe2
IF~~ THEN REPLY ~ (Follow her head over heels to get some of the berries yourself before she can take them all.)~ GOTO SanStrBe3
END

IF ~~ THEN BEGIN SanStrBe2
SAY ~ (Sandrah holds one of the biggest berries between her teeth, smiling invitingly at you.)~
IF~~ THEN REPLY ~ (You close your eyes and open your mouth to receive the berry from her.)~ GOTO SanStrBe4
IF ~~ THEN REPLY ~ (You move close to her and put your lips around her mouth and the berry, while your tongue gently motions the berry out from between her teeth.)~ GOTO SanStrBe4
END

IF ~~ THEN BEGIN SanStrBe3
SAY~ Too late, <CHARNAME>, looks like you are not the fortunate one today. (Giggles lightly.)~
IF~~ THEN REPLY ~ Hey, that is not fair, I saw them first.~ GOTO SanStrBe2
END

IF ~~ THEN BEGIN SanStrBe4
SAY~ (Before you can get the whole berry, she quickly bites it in two and you both end up with half of it, some juice starting to drip from you mouth.) ~
IF ~~ THEN REPLY ~ (You stop any drooling juice with a series of kisses around Sandrah's mouth.) ~ DO ~ SetGlobal("SanStrBe","LOCALS",1)~ EXIT
END

//PIDs after LT1  Pack 6 or 36


IF ~ IsGabber(Player1) Global("SanPidPack","GLOBAL",36) ~ THEN BEGIN SanPCInit36
SAY ~ (Things have taken an unexpected road between you and Sandrah. You feel that now is a chance to clarify some issue with her.) ~
IF ~~ THEN REPLY ~ Sandrah, I have thought a bit about what is happening between us. It is all so unexpected and a bit confusing -- but I'm willing to take on to this adventure with you. I feel it too... (Take her in your arms and kiss her)~ DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO LoveStarts36
IF ~~ THEN REPLY ~ Sandrah, I have thought a bit about what is happening between us. It is all so unexpected and confusing. I have the feeling that there are many secrets you do not reveal to me. ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO ManySecrets36
END

IF ~~ THEN BEGIN LoveStarts36
SAY ~ (She responds passionately to your kiss) <CHARNAME>, Oh yes, it will be an adventure, but one we may end successful when our hearts are fully with it. ~
IF ~~ THEN REPLY ~ I'm willing to risk it and handle the surprises that may come. You are strong and passionate and much more than just a companion on this journey. Stop talking, give me another of these sweet kisses. (She closes her eyes as she sinks back into your embrace, her lips half opened for you to kiss.)  ~ DO ~ SetGlobal("SanPidPack","GLOBAL",8) SetGlobal("SanBranSearch","GLOBAL",6)~ EXIT
END

IF ~~ THEN BEGIN ManySecrets36
SAY ~ Yes, <CHARNAME>, there are secrets. But if I am not totally wrong, you are one who wants to reveal them. ~
= ~ Mind that some of these riddles and connections can only be solved by us together. Are you willing to take a small risk for a large gain? (Smiles at you invitingly) ~
IF ~~ THEN REPLY ~ Sandrah, if the prize is worth it, I will. And if the price is YOU, I am more than willing to fight for it. (Take her in your arms and kiss her)~ GOTO LoveStarts36
IF ~~ THEN REPLY ~ Oh, you clever tease. You are really the big city girl that breaks hearts by the dozend. And now you are working on mine. Well, I will reveal your secrets one by one (You open the first button of her robe and glance at her magic necklace hanging down between her two well-formed breasts). Watch out, darling, you may end up as the prize won by the fearless <CHARNAME>. (Laugh and take her in your arms to kiss her)~ GOTO LoveStarts36
END

IF ~ IsGabber(Player1) Global("SanPidPack","GLOBAL",6) ~ THEN BEGIN SanPCInit6
SAY ~ (Things have taken an unexpected road between you and Sandrah. You feel that now is a chance to clarify some issue with her.) ~
IF ~~ THEN REPLY ~ Sandrah, I have thought a bit about what is happening between us. It is all so unexpected and a bit confusing -- but I'm willing to take on to this adventure with you. I feel it too... (Take her in your arms and kiss her)~ DO~ IncrementGlobal("Sanpoints","GLOBAL",3)~GOTO LoveStarts
IF ~~ THEN REPLY ~ Sandrah, I have thought a bit about what is happening between us. It is all so unexpected and confusing. I have the feeling that there are many secrets you do not reveal to me. ~DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~ GOTO ManySecrets
IF ~~ THEN REPLY ~ Sandrah, I have thought long about what is happening between us and I have come to the decision that it is not right. You are young and curious for everything including love, but I don't want to be just another of your experiments. ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO ColdFeet
END

IF ~~ THEN BEGIN LoveStarts
SAY ~ (She responds passionately to your kiss) <CHARNAME>, Oh yes, it will be an adventure, but one we may end successful when our hearts are fully with it. ~
IF ~~ THEN REPLY ~ I'm willing to risk it and handle the surprises that may come. You are strong and passionate and much more than just a companion on this journey. Stop talking, give me another of these sweet kisses. (She closes her eyes as she sinks back into your embrace, her lips half opened for you to kiss.) ~ DO ~ SetGlobal("SanPidPack","GLOBAL",8) ~ EXIT
END

IF ~~ THEN BEGIN ManySecrets
SAY ~ Yes, <CHARNAME>, there are. But I if I am not totally wrong, you are one who wants to reveal them. ~
= ~ Mind that some of these riddles and connections can only be solved by us together. Are you willing to take a small risk for a large gain? (Smiles at you invitingly) ~
IF ~~ THEN REPLY ~ Sandrah, if the prize is worth it, I will. And if the price is YOU, I am more than willing to fight for it. (Take her in your arms and kiss her)~ GOTO LoveStarts
IF ~~ THEN REPLY ~ Oh, you clever tease. You are really the big city girl that breaks hearts by the dozend. And now you are working on mine. Well, I will reveal your secrets one by one (You open the first button of her robe and glance at her magic necklace hanging down between her two well-formed breasts). Watch out, darling, you may end up as the prize won by the fearless <CHARNAME>. (Laugh and take her in your arms to kiss her)~ GOTO LoveStarts
END

IF ~~ THEN BEGIN ColdFeet
SAY ~ Is that how I make you feel, an experiment? You see how unexperienced I am in these matters. I was taking the risk of doing it all wrong because doing nothing instead was even worse. I really care for you and that let me rush out straight away. Was I really that bad at it? ~
IF ~~ THEN REPLY ~ I guess you are right, we are both really beginners if it comes to romance, aren't we? You make me feel happy and afraid at the same moment, one minute hot one minute cold...oh damn, Sandrah. I am babbling like a fool instead of doing this.. (Take her in your arms and kiss her)~ GOTO LoveStarts
IF ~~ THEN REPLY ~ Oh, you clever tease. You are really the big city girl from Waterdeep that breaks hearts by the dozend. And now you are working on mine playing the innocent little cutie. I don't want to be entangled in your mess of secrets and traps, Sandrah. (She turns away quickly, but not quick enough to hide the small tear in the corner of her eyes - just another of her clever tricks?) ~ DO ~ SetGlobal("SanPidPack","GLOBAL",7) SetGlobal("SanBranRepl","GLOBAL",1)RealSetGlobalTimer("PIDSulk","LOCALS",5000)~ EXIT
END

// PID Pack 8

IF ~ IsGabber(Player1) Global("SanPidPack","GLOBAL",7) ~ THEN BEGIN SanPCInit7
SAY ~ (As Sandrah sees you come near, she starts to busily examine the tome of Faerun history she always studies at quiet moments. She makes you feel clearly that is is not the time to talk with you.) ~ 
IF ~ Global("TORKIONNEEDYOU","GLOBAL",1) !PartyHasItem("Misc48") Global("SanTorq","LOCALS",0) ~ THEN REPLY ~ Sandrah, my little counselor, does your famous book tell us anything about this Torqion and the sword he requires from us? ~ GOTO SanTorq1
IF ~ Global("BHQuestaccept","GLOBAL",3) Global("SanAskBH1","LOCALS",0) ~ THEN REPLY ~ You have been to this island with your father, Sandrah?~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanAskBH11
IF~ Global("SantalosDec","GLOBAL",10)~ THEN REPLY~What is it between you and Talos - or Mystra and Talos respectively? ~GOTO Talosvisit4
IF ~ GlobalGT("Santiax","LOCALS",3) Global("SantiaxPC","LOCALS",0)~ THEN REPLY ~ Tiax seems to think that your heritage in a way seems to imply what kind of future is waiting for you.~ GOTO SanTiaxPC1
IF~ Global("SanDesTroll","LOCALS",2) NumItemsPartyLT("arow04",5) AreaType(FOREST)  ~ THEN REPLY~ Sandrah, we are quickly running out of acid arrows. Can you provide us with some once again?~ GOTO SanAcArF
IF~ Global("SanDesTroll","LOCALS",2) NumItemsPartyLT("arow04",5) !AreaType(FOREST)  ~ THEN REPLY~ Sandrah, we are quickly running out of acid arrows. Can you provide us with some once again?~ GOTO SanAcArNF
IF~Global("BHHandSearch","GLOBAL",0) PartyHasItem("BHGHandn") PartyHasItem("BHGHand") ~THEN REPLY~Do you have any idea about this *Glorious Hand* issue, my learned counselor?~GOTO BHGHand
IF~ GlobalGT("RoadFound","GLOBAL",1) AreaCheck("bg2300") PartyHasItem("SanMap") ~ THEN REPLY ~ I am ready to start the journey to Waterdeep now, lead on, my love.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO WDTravl1
IF ~ Global("SanNarQ","GLOBAL",7) !Global("SanWDHi","GLOBAL",2) Global("SanVisWD","LOCALS",0)~ THEN REPLY~ Do you sometimes wish to visit your home at Waterdeep again, Sandrah? ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",3)~GOTO SanVisWD
IF ~ Global("SanNarQ","GLOBAL",7) Global("SanWDHi","GLOBAL",2) Global("SanVisWDFA","LOCALS",0)~ THEN REPLY~ Do you have to tell me something about that old man Jopi, Sandrah? ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanVisWDFA
IF ~Global("SanBreBa","GLOBAL",2) ~ THEN REPLY ~ You and Breagar seem to be a bit at odds with each other.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanBreCon1
IF~PartyHasItem("SW1H19") Global("TheVaultVamp","GLOBAL",2) !See([ENEMY]) CombatCounter(0)~THEN REPLY~ Can you call the Vault Sentry to make our traveling faster, please.~ GOTO SanvaultSum
IF ~ Global("SanWoodSt","LOCALS",2) AreaType(DUNGEON) ~ THEN REPLY ~ Can you provide us with some wooden stakes, Sandrah?~ GOTO SanMkStake5
IF ~ RealGlobalTimerExpired("PIDSulk","LOCALS")~ THEN REPLY ~ Sandrah, I have hurt your feelings, I admit. But, please see, for me it is all so unexpected and confusing. And I had the feeling that there are many secrets you do not reveal to me. Can we not talk about it again?~ DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO ManySecrets36
IF~Global("SanVsTalos","GLOBAL",1) Global("Talostlk","LOCALS",0)~THEN REPLY ~Now we have made ourselves some new *friends*, those that follow the Storm Lord Talos.~ GOTO SanTalosF1
IF~Global("WDIntrotalk","LOCALS",2)OR(4)AreaCheck("CVROA2") AreaCheck("CVROA3") AreaCheck("CVElm1") AreaCheck("CVElm4")~ THEN REPLY~Can you tell me some more about Waterdeep?~  DO~SetGlobal("WDIntrotalk","LOCALS",4)~GOTO FirstWDIntro3
IF~Global("WDIntrotalk","LOCALS",3)OR(4)AreaCheck("CVROA2") AreaCheck("CVROA3") AreaCheck("CVElm1") AreaCheck("CVElm4")~ THEN REPLY~Can you tell me some more about Waterdeep?~  DO~SetGlobal("WDIntrotalk","LOCALS",4)~GOTO FirstWDIntro2
IF ~~ THEN REPLY ~ Maybe another time.~ EXIT
IF~~THEN REPLY~Your hammer seems to be stuck.~GOTO SanHamCl
END

IF ~ IsGabber(Player1) Global("SanPidPack","GLOBAL",8) ~ THEN BEGIN SanPCInit8
SAY ~ (As Sandrah sees you come near, she smiles brightly:) <CHARNAME>, my love, what is on your mind? ~
IF ~Global("PCKnowsElmDaughter","GLOBAL",1)~ THEN REPLY ~ Sandrah, sweetheart, I want to ask you about Gorion again. I just recalled a small incident that I almost forgot in all the turmoil of the last days. You know, on that dreadful day I left Candlekeep with my foster father, I saw you talking to him on the library steps. You may not have seen me, as agitated as you stormed away from him. ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO Candlevisit
IF ~ Global("SanOrDiId","GLOBAL",3) ~ THEN REPLY ~ I want to talk with you now about that diary we found at Ulcaster, if you don't mind. ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO UlDarT
IF ~ Global("TORKIONNEEDYOU","GLOBAL",1) !PartyHasItem("Misc48") Global("SanTorq","LOCALS",0) ~ THEN REPLY ~ Sandrah, my little counselor, does your famous book tell us anything about this Torqion and the sword he requires from us? ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanTorq1
IF~ Global("SantalosDec","GLOBAL",10)~ THEN REPLY~What is it between you and Talos - or Mystra and Talos respectively? ~GOTO Talosvisit4
IF ~ GlobalGT("Santiax","LOCALS",3) Global("SantiaxPC","LOCALS",0)~ THEN REPLY ~ Tiax seems to think that your heritage in a way seems to imply what kind of future is waiting for you.~ GOTO SanTiaxPC1
IF ~ Global("SaOgmaIn","GLOBAL",6) AreaCheck("CVWOHA") ~  THEN REPLY ~This place does not really look like the kind of palace you must be used to, my love. ~DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SanloveHut1
IF~Global("BHHandSearch","GLOBAL",0) PartyHasItem("BHGHandn") PartyHasItem("BHGHand") ~THEN REPLY~Do you have any idea about this *Glorious Hand* issue, my learned counselor?~GOTO BHGHand
IF~ Global("Drizztfight","GLOBAL",1) !InParty("Branwen") GlobalLT("SanDrizzt","GLOBAL",3) Global("SanFiSkills","LOCALS",0)~ THEN REPLY ~ It seems that the famous Drizzt Do'Urden knows you well, Sandrah? In a way I envy you for this.~ GOTO SanKnoDrizPC1
IF ~ Global("BHQuestaccept","GLOBAL",3) Global("SanAskBH1","LOCALS",0) ~ THEN REPLY ~ You have been to this island with your father, Sandrah?~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanAskBH11
IF~ Global("SanDesTroll","LOCALS",2) NumItemsPartyLT("arow04",5) AreaType(FOREST)  ~ THEN REPLY~ Sandrah, we are quickly running out of acid arrows. Can you provide us with some once again?~ GOTO SanAcArF
IF~ Global("SanDesTroll","LOCALS",2) NumItemsPartyLT("arow04",5) !AreaType(FOREST)  ~ THEN REPLY~ Sandrah, we are quickly running out of acid arrows. Can you provide us with some once again?~ GOTO SanAcArNF
IF~PartyHasItem("SW1H19") Global("TheVaultVamp","GLOBAL",2) !See([ENEMY]) CombatCounter(0)~THEN REPLY~ Can you call the Vault Sentry to make our traveling faster, please.~ GOTO SanvaultSum
IF~GlobalGT("Santiax","LOCALS",3)Global("SanTiaHealQ","LOCALS",0)~ THEN REPLY~Sandrah, can you imagine that Tiax could be healed from his megalomania?~ GOTO SanTiaHel1
IF~ InParty("Coran") Global("SanRomPath","GLOBAL",1) Global("SanCorMale","LOCALS",0)~ THEN REPLY ~ Sandrah, what do you make of our cute companion Coran? ~GOTO SanCorMal1
IF~ InParty("Coran") Global("SanRomPath","GLOBAL",2) Global("SanCorFem","LOCALS",0)~ THEN REPLY ~ Sandrah, what do you make of our cute companion Coran? ~GOTO SanCorFem1
IF ~ GlobalGT("SanSharInt","GLOBAL",11) Global("SanSharCon","LOCALS",0) ~ THEN REPLY ~ You seem to go along with Shar-Teel quite well, Sandrah.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SanSharCon1
IF ~ Global("SanWoodSt","LOCALS",2) AreaType(DUNGEON)~ THEN REPLY ~ Can you provide us with some wooden stakes, Sandrah?~ GOTO SanMkStake5
IF ~ GlobalGT("SanBooTlk","GLOBAL",5) Global("MinskFlow","LOCALS",0) ~ THEN REPLY ~ That is a beautiful flower in your hair, Sandrah. Do you wear it for me?~ DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO MinscFlow1
IF ~Global("SanBreBa","GLOBAL",2) ~ THEN REPLY ~ You and Breagar seem to be a bit at odds with each other.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanBreCon1
IF ~ GlobalGT("Cowscroll","GLOBAL",9) Global("EdCursGon","LOCALS",0) ~ THEN REPLY ~ Mystra has finally taken her curse off from Edwin.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO EdCursGon1
IF~Global("SanVsTalos","GLOBAL",1) Global("Talostlk","LOCALS",0)~THEN REPLY ~Now we have made ourselves some new *friends*, those that follow the Storm Lord Talos.~ GOTO SanTalosF1
IF ~ Global("PCKnowsElmDaughter","GLOBAL",1) Global("SanElmInf1","LOCALS",0) GlobalGT("Chapter","GLOBAL",2) ~ THEN REPLY ~ Sandrah, your father and yourself have different reasons to be interested in me, at least this is my interpretation of what I heard from both of you.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",3)~GOTO SanElmInf11
IF ~ Global("Godtalk","LOCALS",0) !AreaType(DUNGEON)~ THEN REPLY ~ Sandrah, how important is it for you to be a priestess?~ DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SanGodtalk1
IF~Global("WDIntrotalk","LOCALS",2)OR(4)AreaCheck("CVROA2") AreaCheck("CVROA3") AreaCheck("CVElm1") AreaCheck("CVElm4")~ THEN REPLY~Can you tell me some more about Waterdeep?~  DO~SetGlobal("WDIntrotalk","LOCALS",4)~GOTO FirstWDIntro3
IF~Global("WDIntrotalk","LOCALS",3)OR(4)AreaCheck("CVROA2") AreaCheck("CVROA3") AreaCheck("CVElm1") AreaCheck("CVElm4")~ THEN REPLY~Can you tell me some more about Waterdeep?~  DO~SetGlobal("WDIntrotalk","LOCALS",4)~GOTO FirstWDIntro2
IF~~THEN REPLY~Your hammer seems to be stuck.~GOTO SanHamCl
END

IF~~THEN BEGIN SanAcArF
SAY ~ Let me get this small bootle of extract from acid slime out. Puuh, what a smell.~
=~ The remaining material is around, here is wood and over there are a lot of feathers where a buzzard has devoured his prey. It will not take long.~
IF~~THEN DO~ StartCutSceneMode()
SmallWait(4)
ForceSpell(Myself,CLERIC_SPIRITUAL_HAMMER)
SmallWait(4)
GiveItemCreate("arow04",Player1,80,0,0)
EndCutSceneMode()
SetGlobal("SanDesTroll","LOCALS",5) ~EXIT
END

IF~~THEN BEGIN SanAcArNF
SAY ~ We need some material for it, <CHARNAME>, which is not available around here. We will find it in the next forest on our way. I will produce us some arrows then.~
IF~~THEN REPLY~ I see, not everything you can do is by magic, it's alchemy and handicraft this time.~ DO~ SetGlobal("SanDesTroll","LOCALS",3) ~EXIT
END

IF~ Global("SanDesTroll","LOCALS",4)~THEN BEGIN SanAcArNF2
SAY~ You asked me for some acid arrows some time ago, <CHARNAME>. Around here is all I would need to produce us some.~
IF~~THEN REPLY~ Thank you, but our quivers are filled at the moment. I will ask you again if we need some.~ DO~ SetGlobal("SanDesTroll","LOCALS",2)~EXIT
IF~~THEN REPLY~ Very good, I almost forgot it, but my counselor did not. Go ahead, Sandrah.~  GOTO SanAcArF
END


IF~~THEN BEGIN SanloveHut1
SAY ~ Remember that it was me who told you of this hut. Take a look around, dear. The roof is still whole, the wind is kept outside, there is a bit of wood left for the fireplace. You bought that bottle of wine in the last town and we have those two rabbits we shot outside. Is it not all we need?~
IF~~THEN REPLY~ Almost, at least better than the cave full of old bear dung we had to take last night from the rain.~ GOTO SanloveHut2
END

IF~~THEN BEGIN SanloveHut2
SAY ~ This straw will make a wonderful playground for us, just give me a few minutes. How about you try to light us the fireplace?~
= ~ * Unexpectantly Sandrah has turned into some kind of busy housewife. She starts to arrange the straw from a half-eaten pile and covers it with one of her expensive coats that she has retrieved from her backpack. Your comrades join into the various activities, like rearranging boxes, barrels and planks, and as you turn around from your well-lit fire, you see a table and stools have been improvised. There is a blanket on the table and even a small bottle used as a vase with some sunflowers in it.*~
IF~~THEN REPLY ~ My, I have seen people in the city living in worse places than this. Amazing what a bit of creativity can create out of almost nothing.~ DO~ SetGlobal("SaOgmaIn","GLOBAL",7) RestParty()~ EXIT
END

IF~~ THEN BEGIN  SanElmInf11
SAY ~ Honestly, I cannot answer that, as I do not know my father's reason for his obvious interest in you. What I can confirm is, however, that we have not even once talked about you when we were at Waterdeep. Until I left, none of us was aware that the other one knew anything about you.~
IF ~~THEN REPLY ~ I have no reason to disbelieve you, Sandrah, even though the coincidence has puzzled me a bit in the beginning.~ GOTO SanElmInf12
IF~~THEN REPLY ~ I know you good enough by now to see you are telling the truth. Nonetheless, the coincidence of you two having an interest in me for different reasons seems farfetched.~ GOTO SanElmInf12
IF~~THEN REPLY~You and your meddling father...I know you well enough to know you just tell those things I already found out by myself and you cannot longer deny.~DO~ IncrementGlobal("Sanpoints","GLOBAL",-1)~GOTO SanElmInf12b
END

IF~~ THEN BEGIN  SanElmInf12b
SAY~If you think of me this way, why did you even bother to ask?~
=~Logical thinking, not one of your specialties, should have told you that even without having coordinated between ourselves, you have come to our attention for a similar reason. Which is in the end no wonder. If I thought that you and your fate would be important for the fate of the Realms, then my father would have come to the same conclusions in his enduring watch over Faerun.~
IF~~THEN REPLY ~ Important to the Realms. I thought I would be important to your heart and that is why you are here?~ GOTO SanElmInf13
IF~~THEN REPLY ~ Important to the Realms. What could be in a little orphan without power or fortune that would be connected to the fate of the Realms? ~GOTO SanElmInf14
END

IF~~ THEN BEGIN  SanElmInf12
SAY ~ I agree with you. Probably without having coordinated between ourselves, you have come to our attention for a similar reason. Which is in the end no wonder. If I thought that you and your fate would be important for the fate of the Realms, then my father would have come to the same conclusions in his enduring watch over Faerun.~
IF~~THEN REPLY ~ Important to the Realms. I thought I would be important to your heart and that is why you are here?~ GOTO SanElmInf13
IF~~THEN REPLY ~ Important to the Realms. What could be in a little orphan without power or fortune that would be connected to the fate of the Realms? ~GOTO SanElmInf14
END

IF~~ THEN BEGIN  SanElmInf13
SAY ~ Of course you are my love now. Now, that I have met you and got to know you. But remember, that happened only after I came to your side in order to protect you - and Gorion.~
IF ~~ THEN REPLY~ Well, yes, you knew about me already before we met, from what you said you saw when fiddling with your father's shard. ~ GOTO SanElmInf14
END

IF~~ THEN BEGIN  SanElmInf14
SAY ~ Since I learned about you and your fate from looking into my father's shard of Mystra, it is no great coincidence that he gained the same knowledge.~
IF~~THEN REPLY~ Sure that would explain how I came to your common attention. It does not explain what this *fate of the Realms* thing is all about.~ GOTO SanElmInf15
END

IF~~ THEN BEGIN  SanElmInf15
SAY ~ Do you not see it, <CHARNAME>? Think of all those faceless powers and mysterious assassins that are after you. Me and my father are not the only ones that sense something in you. With the rescue of the mines at Nashkel and the knowledge of a much greater conspiracy behind it, you are already taking on an important role for the Sword Coast.~
IF~~THEN REPLY ~ True. And Gorion knew it - on that fateful day we fled from home. If only he would have had the time to tell me something about it...~ DO ~ SetGlobal("SanElmInf1","LOCALS",1)~GOTO SanElmInf16
END

IF~~ THEN BEGIN  SanElmInf16
SAY ~ Do not forget the one that started it all for you, the murderer of Gorion! He knows who you are and he is the one who was after you in the first place. I have no doubt that a lot of answers will be received once we got to him.~
IF~~THEN REPLY ~ Oh, yes, he will have a lot to explain - when the tip of my sword pins him to the floor like he were a butterfly to be conserved. HA!~ EXIT
END

IF~~THEN BEGIN SanSharCon1
SAY ~ I could very well say the same about you and her, <CHARNAME>.~
IF~~THEN REPLY ~ Well, I...~ GOTO SanSharCon2
END

IF~~THEN BEGIN SanSharCon2
SAY ~ Oh, stop it, <CHARNAME>. (Sandrah laughs lightly and silences you with a small kiss.) Did you expect me to make you a scene now because of her. Do you know so little about me?~
IF~~THEN REPLY ~ Actually, I no longer know what to expect at all. Not anymore since I saw you having your fun with her. Is that your way of revenge on me?~ GOTO SanSharCon3
END

IF~~THEN BEGIN SanSharCon3
SAY ~ Listen, <CHARNAME>. I am not jealous and I am not persuing any revenge. We are making new experiences in a field that is new to both of us. I love you and I feel you love me too. But I do not want to cage you and control you. I appeared by your side out of nowhere and I conquered you without much opposition from your side. Maybe I just overwhelmed you before you could say no.~
IF~~THEN REPLY ~ Sandrah, I never wanted to object or say no, believe me...~ GOTO SanSharCon4
END

IF~~THEN BEGIN SanSharCon4
SAY ~ Make your experiences, darling, as I make mine. Find out how it is with Shar-Teel. It will only make your love for me deeper in the end. (Giggles) And you will learn some practical things on the side, to make our nights more interesting...~
IF~~THEN REPLY ~ You are not asking me to stop it with her. I cannot believe that?~ GOTO SanSharCon5
IF~~THEN REPLY ~ You sound like you are openly encouraging me to go on with Shar-Teel. You are strange sometimes, but there seems to be some intention behind your words.~ GOTO SanSharCon5
END

IF~~THEN BEGIN SanSharCon5
SAY ~ (She looks into your eyes with the enigmatic smile you know now so well.) My sweetest true love, I know that it can never last between you and her. But both of you can grow and learn from it. And it will be to your and my benefit as well as for the good of our group. To fight her off from my side is not necessary. And for you, to frustrate you will only mean you will forever have the feeling you will have missed something in your life. And you will blame my clinging to you and preventing it for that miss.~
= ~ (She kisses you so long and passionately that any word you still could have said has gone from your mind as she finally lets you recover your breath.) ~
IF ~~ THEN DO ~SetGlobal("SanSharCon","LOCALS",1)~ EXIT
END



IF ~~ THEN BEGIN Candlevisit
SAY ~ Yes, <CHARNAME>, you are right. I was there - it is not easy to explain, but I will try. Listen. ~
= ~ I wanted to warn him - but of course he already knew about the danger that was approaching. ~
= ~ I wanted to help him - but of course he refused that from a young girl whom he thought to be ambitious but not yet too competend. ~
= ~ Actually, I kind of knew that it would not really make much sense to talk to him. But I simply had to try, I could not just sit at home and do nothing. Not with what I already knew...~
IF ~~ THEN REPLY ~ But what did you know? And how did you know about Gorion and me at all, over there in Waterdeep? ~ GOTO Shard1
END

IF ~~ THEN BEGIN Shard1
SAY ~ That are already several questions, dear <CHARNAME>, but I will try to answer them one by one. Let us take a rest here with the group, it will take some time. ~
= ~ (The little group has made themselves comfortable as Sandrah continues) As you know already, my father is a mage highly respected throughout Faerun. He is also involved with the Harpers...~
IF ~~ THEN REPLY ~ The Harpers, I have read about them in the library...~ GOTO Shard2
END

IF ~~ THEN BEGIN Shard2
SAY ~ Shhhh, <CHARNAME>, I will never finish if you always interupt me. So, where was I...~
= ~ Ah yes, Elm....eh, my father's study and the crystal shard. (Puts her finger gently to your lips as she sees you want to interupt again). Right, one of the instruments in my father's study, one that he uses in his many activities to observe the realms and certain activities that he and his friends are interested in, is the Crystal Shard. ~
= ~ The Shard is an item he has directly received from Mystra herself. It allows you to see things at far away places like through an enourmous telescope. Sometimes the Shard even gives you a short glimpse into the future. ~
= ~ Of course I am strictly forbidden to go even near the shard without him - but then as a priestess of Mystra and having already finished my apprenticeship in some of Mystra's secrets, it is not really possible to keep it all hidden from me. (Laughs) after all I am my father's daughter, and he is known to interfere with quite a lot of things throughout the four corners of Faerun. ~
= ~ So, without going into every little detail, through the Shard I received some yet unclear information about Gorion and the danger that was approaching, and how it may be connected to some research in history that I am doing myself at the moment.~ 
IF ~~ THEN REPLY ~ (You can no longer keep quiet with the flood of information she unloads on you) But how come you know Gorion and me - and even Imoen before you even met her? ~ GOTO Shard3
END

IF ~~ THEN BEGIN Shard3
SAY ~ I had been to Candlekeep once before with my father when he met with Gorion, Jaheira and Khalid on some Harper business. It was at that time I also learned about you and Imoen. ~
IF ~~ THEN REPLY ~ Strange, I recall many of Gorion's visitors, but there never was a young girl among them - be sure I would have noticed such a beauty. ~ GOTO Shard4
END

IF ~~ THEN BEGIN Shard4
SAY ~ Imoen and you were not in Candlekeep at that time. You two were on a hiking trip in the Cloudpeaks. But Gorion had those little memory bubbles of you, you know the ones that capture your image and a short animated moment from your life. He had several from you and even one from Imoen. They were very life-like, I already liked you when I saw you in it.~
IF ~~ THEN REPLY ~ Look how time has flown by. I have much to think about from all the things you told me today. I only know this already: It was good to trust you and not to be afraid. It looks like there are explanations for all the mysterious things going on and together we will find them out. (Take her in your arms. You look long into her dark and almost bottomless eyes before you finally kiss her.) ~ DO ~ SetGlobal("SanPidPack","GLOBAL",9) ~ EXIT
END

// PIDs for Romance early

IF ~ IsGabber(Player1) Global("SanPidPack","GLOBAL",9) ~ THEN BEGIN SanPCInit9
SAY ~ (You are near Sandrah, your beautiful lover. There is so much you want to ask her. Her smile invites you to initiate a talk.)~
IF ~ Global("Santlove","GLOBAL",4) Global("SanFirNigh","LOCALS",0) ~ THEN REPLY ~ Now, here we are for the first time really alone in a room we can call or own.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",3)~GOTO SanFirstN1
IF~~ THEN REPLY ~ (Smile at Sandrah and kiss her quickly.) ~ EXIT
IF~ AreaType(FOREST) Global("Pid9Ankl","LOCALS",0)~ THEN REPLY ~ As you approach her, a sharp pain runs through your ankle and you have to sit down on a nearby rock.  ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO Pid9Ankl
IF ~ GlobalGT("Mothdream1","GLOBAL",6) Global("SammomQ","LOCALS",0) AreaType(OUTDOOR)~ THEN REPLY ~ Sandrah, would you mind to tell me a bit more about your mother. I am still totally confused by this dream or vision I had - and then to find her portrait with me. ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",3)~GOTO SammomQ1
IF~ Global("SanDesTroll","LOCALS",2) NumItemsPartyLT("arow04",5) AreaType(FOREST)  ~ THEN REPLY~ Sandrah, we are quickly running out of acid arrows. Can you provide us with some once again?~ GOTO SanAcArF
IF~Global("SanPCGay","LOCALS",0)~ THEN REPLY~Ahem, Sandrah...can you imagine that I really have no interest in women at all?~DO~SetGlobal("SanPCGay","LOCALS",1)~GOTO SanGay
IF~ Global("SantalosDec","GLOBAL",10)~ THEN REPLY~What is it between you and Talos - or Mystra and Talos respectively? ~GOTO Talosvisit4
IF~ Global("SanDesTroll","LOCALS",2) NumItemsPartyLT("arow04",5) !AreaType(FOREST)  ~ THEN REPLY~ Sandrah, we are quickly running out of acid arrows. Can you provide us with some once again?~ GOTO SanAcArNF
IF~Global("BHHandSearch","GLOBAL",0) PartyHasItem("BHGHandn") PartyHasItem("BHGHand") ~THEN REPLY~Do you have any idea about this *Glorious Hand* issue, my learned counselor?~GOTO BHGHand
IF~GlobalGT("Santiax","LOCALS",3)Global("SanTiaHealQ","LOCALS",0)~ THEN REPLY~Sandrah, can you imagine that Tiax could be healed from his megalomania?~ GOTO SanTiaHel1
IF~ Global("Drizztfight","GLOBAL",1) !InParty("Branwen") GlobalLT("SanDrizzt","GLOBAL",3) Global("SanFiSkills","LOCALS",0)~ THEN REPLY ~ It seems that the famous Drizzt Do'Urden knows you well, Sandrah? In a way I envy you for this.~ GOTO SanKnoDrizPC1
IF ~ GlobalGT("Santiax","LOCALS",3) Global("SantiaxPC","LOCALS",0)~ THEN REPLY ~ Tiax seems to think that your heritage in a way seems to imply what kind of future is waiting for you.~ GOTO SanTiaxPC1
IF~Global("ChartQuest","GLOBAL",1)GlobalGT("CalDone","GLOBAL",0)Global("SanMendas","LOCALS",0)~ THEN REPLY ~ Mmh, you would not by any chance know this Mendas of Waterdeep?~ GOTO SanMendas1
IF ~ Global("rainbFav","LOCALS",0) ~ THEN REPLY ~ Sandrah, what is your favourite colour?~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO rainbFav1
IF ~ GlobalGT("SanBooTlk","GLOBAL",5) Global("MinskFlow","LOCALS",0) ~ THEN REPLY ~ That is a beautiful flower in your hair, Sandrah. Do you wear it for me?~ DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO MinscFlow1
IF~PartyHasItem("SW1H19") Global("TheVaultVamp","GLOBAL",2) !See([ENEMY]) CombatCounter(0)~THEN REPLY~ Can you call the Vault Sentry to make our traveling faster, please.~ GOTO SanvaultSum
IF~Global("SanVsTalos","GLOBAL",1) Global("Talostlk","LOCALS",0)~THEN REPLY ~Now we have made ourselves some new *friends*, those that follow the Storm Lord Talos.~ GOTO SanTalosF1
IF~ Global("SanXanPC","GLOBAL",2)~THEN REPLY~ I observe you started to care for Xan quite a bit. Is it the healer that tries to cure this hopeless case?~DO~ IncrementGlobal("Sanpoints","GLOBAL",3)~GOTO SanXanPC13
IF ~ GlobalGT("Mothdream1","GLOBAL",6) Global("SammomQ","LOCALS",1)~ THEN REPLY ~ We started to talk about your mother a while back but we were interupted by this rainstorm. I would like to continue that issue, if you do not object.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SammomQ6
IF ~ GlobalGT("SanWDTempleRha","GLOBAL",0) GlobalGT("SanWDTempleHint","GLOBAL",1) Global("SanWDRespect","LOCALS",0)~ THEN REPLY ~ Sandrah, you seem to be highly respected at the Waterdeep temple.~ GOTO SanWDRespct1
IF ~ Global("SanWDRespect","LOCALS",1)~ THEN REPLY ~ We have a bit of time now, Sandrah. Please tell me a bit of your position and relation to the famous Mystra Temple in Waterdeep.~ GOTO SanWDRespct5
IF~ InParty("Coran") Global("SanRomPath","GLOBAL",1) Global("SanCorMale","LOCALS",0)~ THEN REPLY ~ Sandrah, what do you make of our cute companion Coran? ~GOTO SanCorMal1
IF~ InParty("Coran") Global("SanRomPath","GLOBAL",2) Global("SanCorFem","LOCALS",0)~ THEN REPLY ~ Sandrah, what do you make of our cute companion Coran? ~GOTO SanCorFem1
IF ~Global("SanBreBa","GLOBAL",2) ~ THEN REPLY ~ You and Breagar seem to be a bit at odds with each other.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanBreCon1
IF~ Global("SanEdLoveBoy","LOCALS",2)~ THEN REPLY ~ Your former hate for the red wizard Edwin seems to have changed quite a bit, Sandrah?~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanEdLoveBoy20
IF ~ Global("Godtalk","LOCALS",0) !AreaType(DUNGEON)~ THEN REPLY ~ Sandrah, how important is it for you to be a priestess?~ DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SanGodtalk1
IF ~ Global("SanRomPath","GLOBAL",1) AreaType(OUTDOOR) Global("ShirtM","LOCALS",0)~ THEN REPLY ~ (Sandrah has taken off her shining armour for the break you have announced for the group. She sits in the sun in just a shirt of some shiny clinging material that reveals more than it hides) You stretch out your hand to touch the shirt. ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO ShirtM
IF ~ Global("SanWoodSt","LOCALS",2) AreaType(DUNGEON)~ THEN REPLY ~ Can you provide us with some wooden stakes, Sandrah?~ GOTO SanMkStake5
IF ~ Global("SanRomPath","GLOBAL",2)AreaType(OUTDOOR) TimeOfDay(DAY) Global("ShirtF","LOCALS",0)~ THEN REPLY ~ (Sandrah has taken off her shining armour for the break you have announced for the group. She sits in the sun in just a shirt of some shiny clinging material that reveals more than it hides) You stretch out your hand to touch the shirt. ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO ShirtF
IF ~ Global("FavSpell","LOCALS",0)~ THEN REPLY ~ Say, Sandrah, my disciple of Mystra, what is your favourite spell.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO FavSpell1
IF ~ GlobalGT("Cowscroll","GLOBAL",9) Global("EdCursGon","LOCALS",0) ~ THEN REPLY ~ Mystra has finally taken her curse off from Edwin.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO EdCursGon1
IF ~ GlobalGT("SanSharInt","GLOBAL",11) Global("SanSharCon","LOCALS",0) ~ THEN REPLY ~ You seem to go along with Shar-Teel quite well, Sandrah.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",3)~GOTO SanSharCon1
IF~~ THEN REPLY ~ (Embrace Sandrah and give her a passionate kiss. ) ~ EXIT
IF~ AreaType(OUTDOOR) Global("Sanhairdo","LOCALS",0) ~ THEN REPLY~ (Sandrah has taken off all the scarfs and diadems she normally wears in her stylish hairdo and lets her auburn locks fly free in the wind. As usual you have to stop, stunned by her beauty.)~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO Sanhairdo1
IF ~ PartyHasItem("SanParc") Global("SanParcPid","LOCALS",0) ~ THEN REPLY~ When we brought the Shard back to your father, I noticed he slipped some small box into your robes. May I ask you what it was? ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanParcPid
IF ~ Global("SaOgmaIn","GLOBAL",6) AreaCheck("CVWOHA") ~  THEN REPLY ~This place does not really look like the kind of palace you must be used to, my love. ~DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SanloveHut1
IF~ GlobalGT("SanNarQ","GLOBAL",6) !AreaType(OUTDOOR) Global("SanAdveFa","LOCALS",0) !AreaType(DUNGEON) ~ THEN REPLY ~ You mentioned sometime that you used to travel with your father a bit on his adventures, Sandrah. Tell me about it, please. ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SanAdvenE1
IF~ GlobalGT("RoadFound","GLOBAL",1) AreaCheck("bg2300") PartyHasItem("SanMap") ~ THEN REPLY ~ I am ready to start the journey to Waterdeep now, lead on, my love.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO WDTravl1
IF ~ Global("SanNarQ","GLOBAL",7) !Global("SanWDHi","GLOBAL",2) Global("SanVisWD","LOCALS",0)~ THEN REPLY~ Do you sometimes wish to visit your home at Waterdeep again, Sandrah? ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",3)~GOTO SanVisWD
IF ~ Global("SanNarQ","GLOBAL",7) Global("SanWDHi","GLOBAL",2) Global("SanVisWDFA","LOCALS",0)~ THEN REPLY~ Do you have to tell me something about that old man Jopi, Sandrah? ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanVisWDFA
IF ~ Global("SanOrDiId","GLOBAL",3) ~ THEN REPLY ~ I want to talk with you now about that diary we found at Ulcaster, if you don't mind. ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO UlDarT
IF~Global("WDIntrotalk","LOCALS",2)OR(4)AreaCheck("CVROA2") AreaCheck("CVROA3") AreaCheck("CVElm1") AreaCheck("CVElm4")~ THEN REPLY~Can you tell me some more about Waterdeep?~  DO~SetGlobal("WDIntrotalk","LOCALS",4)~GOTO FirstWDIntro3
IF~Global("WDIntrotalk","LOCALS",3)OR(4)AreaCheck("CVROA2") AreaCheck("CVROA3") AreaCheck("CVElm1") AreaCheck("CVElm4")~ THEN REPLY~Can you tell me some more about Waterdeep?~  DO~SetGlobal("WDIntrotalk","LOCALS",4)~GOTO FirstWDIntro2
IF ~ Global("TORKIONNEEDYOU","GLOBAL",1) !PartyHasItem("Misc48") Global("SanTorq","LOCALS",0) ~ THEN REPLY ~ Sandrah, my little counselor, does your famous book tell us anything about this Torqion and the sword he requires from us? ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanTorq1
IF ~ Global("SanBranDec","GLOBAL",5)~ THEN REPLY ~ It feels a bit empty, Sandrah, without Branwen - even with the two of us together in love. Do you feel the same?~ DO~ IncrementGlobal("Sanpoints","GLOBAL",4)~GOTO BranLeft1
IF ~ Global("BHQuestaccept","GLOBAL",3) Global("SanAskBH1","LOCALS",0) ~ THEN REPLY ~ You have been to this island with your father, Sandrah?~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanAskBH11
IF ~ Global("SanPCGavInt","GLOBAL",1) Global("SanPCGavT","LOCALS",0) ~ THEN REPLY ~ Sandrah, I observe you talk quite a bit with Gavin. Say, dear, what do you think of him?~ DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SanPCGavT1
IF ~ Global("PCKnowsElmDaughter","GLOBAL",1) Global("SanElmInf1","LOCALS",0) GlobalGT("Chapter","GLOBAL",2) ~ THEN REPLY ~ Sandrah, your father and yourself have different reasons to be interested in me, at least this is my interpretation of what I heard from both of you.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SanElmInf11
IF ~ GlobalLT("PidLock","LOCALS",2) ~ THEN REPLY ~ (You blow a lock of stray hairs from Sandrah's forehead.) How come you look so splendid, regardless how hard the battle or the march was? ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO Pidlock2
IF~~THEN REPLY~Your hammer seems to be stuck.~GOTO SanHamCl
END

IF~~THEN BEGIN SanGay
SAY~(Laughs) Really? That means I can have you all for myself.~
IF~~THEN EXIT
END

IF~~ THEN BEGIN SanMendas1
SAY~ No, even if it were not that unlikely as both our quarters of town with the bookshops as well as Mystra's temple would be places where such a scholar and seeker of knowledge would have been.~
IF ~~ THEN REPLY ~And his strange accent?~ DO~ SetGlobal("SanMendas","LOCALS",1)~ GOTO SanMendas2
END

IF~~ THEN BEGIN SanMendas2
SAY~Different classes of our town speak different colloqial slangs - his is none of them. But then the City of Splendor holds people from all places and races and their languages.~
=~ Still....~
IF ~~ THEN REPLY ~Still?~ GOTO SanMendas3
END

IF~~ THEN BEGIN SanMendas3
SAY~ His way of talking seems to come from another time rather than from another place, if you know what I mean.~
IF ~~ THEN REPLY ~Hm, you think he isn't what he pretends to be?~ GOTO SanMendas4
END

IF~~ THEN BEGIN SanMendas4
SAY~ Oh, no, do not be overly suspicious. He just sounded like a man who has learned our language from some ancient tome or such. Or some very old creature who has not been to the Sword Coast for long.~
IF~~THEN REPLY~ (Wink) Maybe from Balduran himself, hihi.~EXIT
IF~~THEN REPLY~ (Laugh) He was probably raised in the lair of some ancient dragon.~EXIT
IF~~THEN REPLY~ Whatever, he did not look like a Lich to me.~EXIT
END


IF ~~ THEN BEGIN  rainbFav1
SAY ~ Would you accept *rainbow* as an answer?~ 
IF ~~ THEN REPLY ~ I almost expected that this *easy* question would not be such an easy thing when it comes to you.~  GOTO rainbFav2
IF ~~ THEN REPLY ~ I can't imagine any colour to suit you better, except maybe *chameleon*. ~ GOTO rainbFav2
END

IF ~~ THEN BEGIN  rainbFav2
SAY ~ It only shows that I am a young girl after all, just trying to make up my mind on a lot of things. I am not set in my opinions and I am willing to learn.~
IF ~~ THEN REPLY ~ That is true of course. But most of the time you are very straight forward and appear to be so very sure of your actions and beliefs.~ GOTO rainbFav3
END

IF ~~ THEN BEGIN  rainbFav3
SAY ~ Do you see a contradiction in that, my love? Cannot both aspects exist in a person at the same time?~
IF ~~ THEN REPLY ~ Probably that is true for all of us. Maybe I just chose the wrong question. So how about your favourite dish then? ~GOTO rainbFav4
END

IF ~~ THEN BEGIN  rainbFav4
SAY ~ (Laughs) <CHARNAME>, you really have a talent for the *wrong* question. I do not have one. Today I lust for a bowl of Waterdeep fishsoup, but probably just because there is no chance to get one. And you could make me happy with a very fresh piece of deer loin. But I am afraid with our hunting talents that will as well remain an illusion.~
=~ You see, it has some advantage to remain flexible. Whatever lands on our dining table tonight, might just turn out to become my favourite dish.~
IF ~~ THEN REPLY ~ One thing I can make sure for you. You will love the desert. Here is a little appetizer. (Kiss her on the lips.)~ DO ~ SetGlobal("rainbFav","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN SanMkStake5
SAY~ Let me see...This wooden artefact should be useable to make some. Nobody seems to need it anymore.~
IF~~THEN DO~ 
ForceSpell(Myself,CLERIC_SPIRITUAL_HAMMER)
GiveItemCreate("misc6w",Player1,2,0,0)
SetGlobal("SanWoodSt","LOCALS",3)
RealSetGlobalTimer("SanWoodStRep","LOCALS",600)~ EXIT
END

IF ~~ THEN BEGIN SanEdLoveBoy20
SAY ~ To be honest with you, <CHARNAME>, it has not. I still do not fully understand why you continue to have him with us. But, yes, I have changed in so far that I do not question it anymore and just endure it like the constant rainstorms that make the Sword Coast so unpleasant at times.~
IF ~Global("SanRomPath","GLOBAL",1)~ THEN REPLY ~ I had the feeling that a little bit more than that is emerging between you two.~ GOTO SanEdLoveBoy21
IF ~Global("SanRomPath","GLOBAL",2)~ THEN REPLY ~ I had the feeling that a little bit more than that is emerging between you two.~ GOTO SanEdLoveBoy22
END

IF ~~ THEN BEGIN SanEdLoveBoy21
SAY ~ Let me feel your forehead, my darling, is it fever that haunts you? Fine, a bit of jealousy does a woman good, it makes her feel wanted and desired by her true lover. But why did you chose Edwin? That is really an insult.~
IF ~~ THEN REPLY ~ Those Thayan red robes have a reputation in the arts of love. An issue that is of not too little interest to you as well.~ DO ~ SetGlobal("SanEdLoveBoy","LOCALS",3)~ GOTO SanEdLoveBoy23
END

IF ~~ THEN BEGIN SanEdLoveBoy22
SAY ~ Have you ever heard the term *one-side love*, dear? Here you have a splendid example for that. He may have the feeling I would be the crown of his harem, but that really does not need to bother us in any way. He will survive the disappointment.~
IF ~~ THEN REPLY ~ Those Thayan red robes have a reputation in the arts of love. An issue that is of not too little interest to you as well.~ DO ~ SetGlobal("SanEdLoveBoy","LOCALS",3)~ GOTO SanEdLoveBoy24
END

IF ~~ THEN BEGIN SanEdLoveBoy23
SAY ~ I really do not have much need for a wicked wizard in my bed at all. The space is already occupied by the most wonderful, tender, and satisfying lover of the Realms. If only this guy could use his mouth more often for useful things instead of utterly foolish babbling.~
IF~~ THEN REPLY ~ Useful things like this? (Kiss her passionately.) ~ EXIT
END

IF ~~ THEN BEGIN SanEdLoveBoy24
SAY ~ Neither is it for you, darling. So what do you intend? Let us use him to teach us things we may not dream up ourselves? I would rather we find everything out by our own than with him.~
IF~~ THEN REPLY ~ (Laugh.) I see, there is no way to convince you of his *usefulness*. Poor Edwin. Too bad he never tried on me.~ EXIT
END

IF ~~THEN BEGIN Sanhairdo1
SAY ~ (She sees you observing her and returns you a smile.) Do you feel that southern breeze, <CHARNAME>? I can almost smell those foreign lands and hear their exotic birds sing.~
IF~~THEN REPLY ~ I am more fascinated by what the present landscape has to offer with respect to beautiful creatures, my love.~ GOTO Sanhairdo2
IF~~THEN REPLY~ There is so much to explore in the exotic creature by my side, who shows me a new aspect of her beauty all the time.~ GOTO Sanhairdo2
END

IF~~THEN BEGIN Sanhairdo2
SAY ~ Then my efforts to look beautiful for the one I care for are not wasted, thank you. So you prefer this more natural look to the other one.~
IF~~THEN REPLY ~ Well, yes, if nature endows one so richly, any artifical attemt to improve it is wasted.~ GOTO Sanhairdo3
IF~~THEN REPLY ~ You have proven that there is no natural beauty that cannot be improved by a skilled artist to an even higher level.~ GOTO Sanhairdo3
IF~~THEN REPLY ~ One thing I adore in you, is that I do not have to make such decisions. Any new aspect you show me of yourself is wonderful. It is your ever-changing nature that makes you so special.~ GOTO Sanhairdo3
END

IF~~THEN BEGIN Sanhairdo3
SAY ~ The good thing is, that I do not have to make such decisions. Is it not wonderful to be able to show the different aspects of one's nature and change from one moment to another?~
IF~~THEN REPLY ~ I envy you for your ability to make the best out of any situation. Not that I want to compare you to Imoen, but one thing you two have in common is your cheerfulness, come what may.(embrace and kiss her.)~ DO ~ SetGlobal("Sanhairdo","LOCALS",1)~EXIT
IF~Global("Sanrompath","GLOBAL",1)~THEN REPLY ~ Oh, Women and vanity, isn't there a single one immune against that?~ DO ~ SetGlobal("Sanhairdo","LOCALS",1)~EXIT
IF~Global("Sanrompath","GLOBAL",2)~THEN REPLY ~ Oh, Women and vanity, seems none of us is immune against that.~ DO ~ SetGlobal("Sanhairdo","LOCALS",1)~EXIT
END

IF ~~ THEN BEGIN Pidlock2
SAY ~ A woman's secret. No, I do not have secrets with you, my love. So honestly I just use my magic skills.~
IF~Global("SanRomPath","GLOBAL",1)~THEN REPLY ~ Is that not totally unfair to the rest of us humble beings who are not blessed by Mystra? ~  GOTO Pidlock3M
IF~Global("SanRomPath","GLOBAL",2)~THEN REPLY ~ Is that not totally unfair to the rest of us humble beings who are not blessed by Mystra? ~ GOTO Pidlock3F
IF ~~ THEN REPLY ~ You really use your magic gifts on such trifle things? Is that not a real disrespect for Mystra?~ GOTO Pidlock3
END

IF~~THEN BEGIN  Pidlock3M
SAY~ You are the one to benefit most, sweetheart, you enjoy my lovely looks all the time. But let me be a bit selfish now, and improve your looks, as I need to endure them all day long.~
IF~~ THEN REPLY ~ *She casts some unknown spell and your armour and weapons start to sparkle like newly created.*~ DO~ IncrementGlobal("PidLock","LOCALS",1) CreateVisualEffectObject("SPFLESHS",Player1)~ EXIT
END

IF~~THEN BEGIN  Pidlock3F
SAY~ You are the one to benefit most, sweetheart, you enjoy my lovely looks all the time. But let me be a bit selfish now, and improve your looks, as I need to endure them all day long.~
IF~~ THEN REPLY ~ *She casts some unknown spell and your robe starts to sparkle like newly created and your ruffled locks all of a sudden are all in place and gleaming in their full beauty.*~ DO~ IncrementGlobal("PidLock","LOCALS",1) CreateVisualEffectObject("SPFLESHS",Player1)~ EXIT
END


IF~~THEN BEGIN  Pidlock3
SAY ~ Not at all! As you may recall the adventurer Midnight, the woman Mystra was before becoming a goddess, was not only known for her fighting powers. Bards have composed and sung countless songs about her legendary beauty. ~
IF~~THEN REPLY ~ Then you are performing your duty as her priestess perfectly, as I cannot imagine a bard in the Realms who would not sing of your beauty when he sees you.~ DO~ IncrementGlobal("PidLock","LOCALS",1)~EXIT
END

IF~~THEN BEGIN  SanPCGavT1
SAY ~ He is a nice man, if that is what you mean, a bit shy which sometimes makes him appear clumsy. And he lacks a bit of the decisiveness I like to see in a man - and in a woman as well.~
IF ~~ THEN REPLY ~ Hey, if you say *nice*, I can almost guess what you have in mind with him. Beware! You are all mine.~ GOTO SanPCGavT2
IF ~~ THEN REPLY ~ That is almost the same that I would say about him. How much do you like him, Sandrah.~ GOTO SanPCGavT2
END

IF~~THEN BEGIN  SanPCGavT2
SAY ~ Loveliest <CHARNAME>, do I hear something like jealousy from you. You will probably not forbid me a little fun with a man. I am only trying to learn to make things more wonderful for us.~
= ~ But honestly, darling, he is nice and all, but not really my choice. And - hm, he seems to be much more interested in you.~
IF ~~ THEN REPLY ~ Is that what you are talking about with him then? You are talking about me?~ DO ~ SetGlobal("SanPCGavT","LOCALS",1) ~ GOTO SanPCGavT3
END

IF~~THEN BEGIN  SanPCGavT3
SAY ~ He tries to, yes, but you know him by now, it does not come out so directly from him. But one must be blind not to see how he admires you.~
IF~~THEN REPLY ~ And you encourage him? You want me to gain some experience with men as well, Sandrah?~ GOTO SanPCGavT4
END

IF~~THEN BEGIN  SanPCGavT4
SAY ~ That are multiple questions again, <CHARNAME>. No, I neither encourage him nor frustrate him. I leave that decision to you and try not to influence either of you two.~
IF~~THEN REPLY ~ Fine. Let us see what happens then. I would not really reject him if he tries to get to know me a bit more, honestly.~  GOTO SanPCGavT5
IF~~THEN REPLY ~ This kind of indecision is not the Sandrah I know. Please, be open with me, what do you really think about him and me?~ GOTO SanPCGavT5
END

IF~~THEN BEGIN  SanPCGavT5
SAY ~ Gavin is an honest and earnest man, Sandrah, not like those I choose for my little fun. They know what to expect with me and they get it on a mutual basis. Gavin really cares for you. You should not misuse him if you do not feel more for him. I beg you not to just play with him, that would be unfair. If you just want a little flirt or one-night stand, we will find one for you in the next town we enter. ~
IF~~THEN REPLY ~ You are right, I guess. Also it would bring a lot of trouble to our common group if I did that just for a little fun. Best we let things just develop, I cannot make up my mind about him at the moment. ~ GOTO SanPCGavT6
IF~~THEN REPLY ~ You are right, I guess. Just one more thing, sweetheart. Does he have any idea about us two? ~ GOTO SanPCGavT7
END

IF~~THEN BEGIN  SanPCGavT6
SAY ~ If you give it a bit more time, he may even learn more about us two. I have no idea how he would react if he finds we are more than just very good friends. He appears to be quite tolerant and unbiased, but to imagine us as lovers may be beyond his imagination.~
IF~~THEN EXIT
END

IF~~THEN BEGIN  SanPCGavT7
 SAY ~ He knows that we are very good friends, <CHARNAME>. But I have no idea how he would react if he finds we are even more than that. He appears to be quite tolerant and unbiased, but to imagine us as lovers may be beyond his imagination.~
IF~~THEN EXIT
END

IF ~~ THEN BEGIN SanFirstN1
SAY ~ (Sandrah pours a glass of burgundy coloured thick wine from a decanter on the table and drinks a tiny sip of it, closing her eyes to fully appreciate the moment. She moves up to you and holds the glass to your lips. She now looks straight into your eyes with her own bottomless and unpenetrable look, that seems to say everything and nothing at the same time.)~
IF ~Global("SanRomPath","GLOBAL",1)~ THEN REPLY ~ (You take a small sip from the glass as well and then take it from her hand to put it on the table with your eyes still looking deeper and deeper into hers.) ~ DO ~ SetGlobal("Santlove","GLOBAL",5) SetGlobal("SanFirNigh","LOCALS",1)~ GOTO SanFirstN2m
IF ~Global("SanRomPath","GLOBAL",2)~ THEN REPLY ~ (You take a small sip from the glass as well and then take it from her hand to put it on the table with your eyes still looking deeper and deeper into hers.) ~ DO ~ SetGlobal("Santlove","GLOBAL",5) SetGlobal("SanFirNigh","LOCALS",1)~ GOTO SanFirstN2f
END

IF ~~ THEN BEGIN SanFirstN2m
SAY ~ Can you imagine how much I have hoped this moment would come to happen between us. And to be able to let it happen here.~
IF~~THEN REPLY~ I have lost all my doubt I once may have had in our relationship. I am so glad you have kept your faith and tried and tried again. You do not give up a case very easy and declare it as hopeless. Neither in our quests and fights, nor when it comes to love. ~ GOTO SanFirstN3m
IF~~THEN REPLY~ Yes, it is wonderful. It lets me even forget what is really waiting for me once we leave this lovely enclave, as surely we must again soon. Once this is all over, I dearly wish to return to here with you. ~ GOTO SanFirstN3h
IF~~THEN REPLY~ Do we really need so many words between us still. If I see something in your endlessly deep eyes, then it is the desire you feel for me right now, Sandrah. ~ GOTO SanFirstN3q
END

IF~~THEN BEGIN  SanFirstN3m
SAY ~ I want us to loose much more than just our doubts tonight, my sweet hero. (She slowly has taken off her armour and the clothes below and changed into a piece of weighless glimmering material, that lets you see every detail of her body but tempts you even more than pure nakedness.)~
IF~~ THEN REPLY ~ You were right to wait until tonight, Sandrah. This needs the right place and the right time. (You start to caress her breasts beneath their glimmering sheath.) And the right time is now.~  GOTO SanFirstN3q
IF~~ THEN REPLY ~ I am more than willing to loose myself to you, Sandrah (You start to slowly caress her body beneath the glimmering sheath.)~ GOTO SanFirstN3q
END

IF~~THEN BEGIN  SanFirstN3h
SAY ~ That is my wish as well. But it may only come true in a long, long while. Tonight is tonight, and it is a special occasion for us. We may want to take a preview of what awaits us in the future. ~
=~(She slowly has taken off her armour and the clothes below and changed into a piece of weighless glimmering material, that lets you see every detail of her body but tempts you even more than pure nakedness.)~
IF~~ THEN REPLY ~ You were right to wait until tonight, Sandrah. This needs the right place and the right time. (You start to caress her breasts beneath their glimmering sheath.) And the right time is now~  GOTO SanFirstN3q
IF~~THEN REPLY ~ You are precious, Sandrah, I would never forgive myself for letting this moment pass in the hope of some vague future. As always you are right in this.~ GOTO SanFirstN3m
END

IF~~THEN BEGIN  SanFirstN3q
SAY ~ I do not deny what you see is real, <CHARNAME>. But I am not in a hurry, we have all night to do it more than once. I want each moment of it to be what we wished for so long that it would be. ~
IF~~THEN REPLY ~ We will only find out about that by doing it. (You lift her light body up into your arms and carry her over to the bed.)~ GOTO SanFirtsBed
IF~~THEN REPLY ~ (You let her undress you slowly bit by bit while she kisses, bites and licks every part of your craving body that she reveals in that process. Finally she leads you over to the bed.)~
GOTO SanFirtsBed
END

IF ~~ THEN BEGIN SanFirstN2f 
SAY ~ Can you imagine how much I have hoped this moment would come to happen between us. And to be able to let it happen here.~
IF~~THEN REPLY~ I have lost all my doubt I once may have had in our relationship that at first seemed so odd to me. I am so glad you have kept your faith and tried to convince me in your gentle but steadfast manner. You do not give up a case very easy and declare it as hopeless. Neither in our quests and fights, nor when it comes to love. ~ GOTO  SanFirstN3f
IF~~THEN REPLY~ You have already changed the person I was before completely, Sandrah. Everything can be different when you look at it from another perspective. You have shown that to me in many instances - and also in love. I have come to trust your lead.~ GOTO SanFirstN3f
END

IF ~~ THEN BEGIN SanFirstN3f
SAY~ (She slowly has taken off her armour and the clothes below and changed into a piece of weighless glimmering material, that lets you see every detail of her body but tempts you even more than pure nakedness.)~
= ~ (She comes over to you and undresses you slowly bit by bit while she kisses, bites and licks every part of your craving body that she reveals in that process. She slips a neglige like her own over you in the end and leads you to one of the large mirrors of the room.)~
IF~~THEN REPLY ~ (As you look at yourself in an outfit you never had possessed before, you feel very beautiful and more of a woman than ever before. You love Sandrah for it and you want to show that love to her - now.) ~ GOTO SanFirstN4f
IF~~THEN REPLY ~ (As you look at yourself in the mirror, you see a new <CHARNAME>, a beautiful and strong woman, ready to be loved, ready to make new experiences - with your loving Sandrah.)~ GOTO  SanFirstN4f
END

IF~~THEN BEGIN  SanFirstN4f
SAY ~ I want us to loose much more than just our doubts tonight, my sweet heroine. To loose ourself in order to gain something new.~
=~ (She tenderly takes both your hands and leads you over to the bed.)~
IF~~ THEN REPLY ~ You were right to wait until tonight, Sandrah. This needs the right place and the right time. (You start to caress her breasts beneath their glimmering sheath.) And the right time is now.~  GOTO SanFirtsBed
IF~~ THEN REPLY ~ I am more than willing to loose myself to you, Sandrah (You start to slowly caress her body beneath the glimmering sheath.)~ GOTO SanFirtsBed
END

IF~~THEN BEGIN SanFirtsBed
SAY ~ You feel Sandrah's smooth skin through the thin material of her cloth all along the length of your body as she blows a warm kiss into your earlobe. You are drowned in a feeling of togetherness you have never known before. ~
= ~ You feel your bodies becoming like one, melting into one another as your hands start to caress her backside and slowly slide into the moisty area of her nether lips. ~
= ~ Her kisses are both inviting and demanding. Your own body erupts under the caresses of her fingers and lips that seem to be everywhere at once. You know that a point is reached where none of you can return anymore... ~
IF~~THEN DO ~ StartMovie("Restinn")~ EXIT
END


IF ~~THEN BEGIN SanAdvenE1
SAY ~ First thing, we did not really travel a lot in the way we do it now. With the potential of the Shard it was more like selecting some place in the morning and returning home after the adventure in the evening.~
IF ~~ THEN REPLY ~ But you mentioned also that you camped as well outside, even at something like an oasis. I only have read about such places in books.~ GOTO SanAdvenE2
END

IF ~~THEN BEGIN SanAdvenE2
SAY ~ Yes. When my father went on one of his missions with me, then often we did not transport directly into the place that needed his attention. It would not always be appropriate to materialise in the middle of an enemy crowd or even in a country town market place, scaring the unprepared peasants.~
= ~ So it happened that we mostly landed in a remote area near the scene of interest and then hiked like normal travellers to our destination. At other times my father used to visit people he knew in the area on such occasions when he was near their place.~
IF ~~ THEN REPLY ~ Wow, that must have been really exciting for a little girl. You saw much of the world.~ GOTO SanAdvenE3
IF ~~ THEN REPLY ~ What a way to see the world, really, I did it all from my little room at Candlekeep with the help of my books and my imagination.~ GOTO SanAdvenE3
END  

IF ~~THEN BEGIN SanAdvenE3
SAY ~ Your own way to do it with books and imagination spares you at least the spiders in your bedroll and the sunburn from the desert sun, haha. Oh, yes it was always great. And it was also what build our father and daughter relationship. I learned a lot and appreciated what my father actually did in Mystra's name.~
IF ~~ THEN REPLY ~ It was not only fun then?~ GOTO SanAdvenE4
END

IF ~~THEN BEGIN SanAdvenE4
SAY ~ It was sure a more entertaining way to learn than by sitting in a classroom. But it was education nonetheless. My father never tired to lecture on everything that lay at the wayside, be it plants, animals, ancient ruins or places of history, people of the present and of the past. I guess this large tome I carry along contains only a quarter of everything my father really knows about the Realms.~
= ~ But I think what was even more important than all the lore and the facts, was the way my father himself dealt with things and people. His whole attitude towards life has shaped me.~
IF ~~ THEN REPLY ~  Sandrah, my love, I have the feeling you are giving a bit of that back to me now. I never had this kind of experiences until now. But at your side a get a notion of what it must have been for you travelling with your father. Or even having one.~ DO ~ SetGlobal("SanAdveFa","LOCALS",1)~EXIT
END

IF~~ THEN BEGIN SanVisWDFA
SAY ~ Just a thought that comes to my mind when the Friendly Arm and old lore are mentioned. Something about my hometown Waterdeep.~
IF ~~ THEN REPLY ~ Do you sometimes wish to visit your home at Waterdeep again, Sandrah? ~ DO ~ SetGlobal("SanVisWDFA","LOCALS",1)~ GOTO SanVisWD
END


IF~~ THEN BEGIN SanVisWD
SAY ~ I very much would like to do so. Although we meet my father out here from time to time, I would dearly like to share with you a bit of where I came from.~
= ~ Besides, our house and garden would give us all the opportunity to relax for a day or so. And last but not least there is the City of Splendor itself with all its attractions.~
IF ~~ THEN REPLY ~ Now that I know you and your resources a bit better, I cannot imagine that you would not have a means to take us there somehow, am I right? ~ DO ~ SetGlobal("SanVisWD","LOCALS",1)~ GOTO SanVisWD2
IF ~~ THEN REPLY ~ Good ideas, but with the roads cut off by the present situation, Waterdeep is far beyond the regions we can go to at the moment, even if our current tasks would allow for a day of relaxation. ~ DO ~ SetGlobal("SanVisWD","LOCALS",1) ~ GOTO SanVisWD2
IF ~~ THEN REPLY ~ A town full of wealth and a palace filled with magical items! A valid perspective to leave ol' Sword Coast for a while. ~ DO ~ SetGlobal("SanVisWD","LOCALS",1) IncrementGlobal("Sanpoints","GLOBAL",-1)~ GOTO SanVisWD2
END

IF~~ THEN BEGIN SanVisWD2
SAY ~ I have no magic device or spell handy to take us there, <CHARNAME>, just a bit of old lore from my book. Whether it is true must be seen.~
IF ~~ THEN REPLY ~ Why do you not just tell us about it? We can see what to do or not to do afterwards, if we see any sense in it. ~ GOTO SanVisWD3
IF ~~ THEN REPLY ~ Spit it out already, woman!~ GOTO SanVisWD3
END

IF~~ THEN BEGIN  SanVisWD3
SAY ~ There is the story of the Old Waterdeep Road that was supposed to run between the City of Splendor and the Friendly Arm Inn. Even in the old times, it was kept secret among the elves and dwarves and other innates that helped in the building and development of Waterdeep. The lore has it, that on this road travelling times between the Sword Coast and Waterdeep would only be a few hours.~
IF ~~ THEN REPLY ~ But we know the vicinity of the Arm quite well. It seems that no such road is there today.~  GOTO SanVisWD4
IF ~~ THEN REPLY ~ If this road has ever existed, it is surely no longer there. We must have found it otherwise during our travels.~ GOTO SanVisWD4
IF ~~ THEN REPLY ~ Why do you hold us up with such boring old crap. There is no such road anymore and you know it.~ GOTO SanVisWD4
END

IF~~ THEN BEGIN SanVisWD4
SAY ~ The road would not be that obvious to the passerby's eye. Even those who used it in former days had to use a map to follow it. Maybe some of those maps still exist today on the Sword Coast.~
IF ~!Global("SanWDHi","GLOBAL",2)~ THEN REPLY ~ We surely have no time to start a search on the Sword Coast for a map we do not even know whether it exists or not, just to have a day off in Waterdeep. ~GOTO SanVisWD5
IF ~ Global("SanWDHi","GLOBAL",2)~ THEN REPLY ~ We surely have no time to start a search on the Sword Coast for a map we do not even know whether it exists or not, just to have a day off in Waterdeep. ~GOTO SanVisWD6
END

IF~~ THEN BEGIN SanVisWD5
SAY ~ That is true, <CHARNAME>. However, our journey takes us to the Friendly Arm every now and then and it would not hurt to ask old Bentley or Gellana about the road. Those two are there ever since the Friendly Arm exists and would surely know something about it.~
IF ~~ THEN REPLY ~ A valid proposal. We will make some inquiry next time we pass at the Inn. ~ DO ~ AddJournalEntry(@132,QUEST) SetGlobal("SanMapFAI","GLOBAL",1) ~ EXIT
END

IF~~ THEN BEGIN SanVisWD6
SAY ~ That is true, <CHARNAME>. However, we may just talk to Jopi, and if he really has some knowledge of old lore of the inn, maybe he can give us a hint.~
IF ~~ THEN REPLY ~ A valid proposal. We will make some inquiry then. ~ DO ~ AddJournalEntry(@132,QUEST) SetGlobal("SanMapFAI","GLOBAL",1) ~ EXIT
IF ~~ THEN REPLY ~ He's just as boring as you are. He'd better have something interesting to tell us when I inquire him. ~ DO ~ AddJournalEntry(@132,QUEST) SetGlobal("SanMapFAI","GLOBAL",1) ~ EXIT
END

IF ~~ THEN BEGIN Pid9Ankl
SAY ~ (Instead of casting a healing spell on you, Sandrah kneels in front of you and starts to unlace your boot slowly.)~
IF~~ THEN REPLY ~ My sweet priestess, why do you not just cast a healing spell on me? ~ GOTO Pid9AnklS
IF~~ THEN REPLY ~ (Lean back against the trunk of a tree. Close your eyes and let her continue. She is your healer and knows what is best for you.) ~ GOTO Pid9AnkL
END

IF ~~ THEN BEGIN Pid9AnklS
SAY ~ Lean your back against that tree behind you. Close your eyes and let me continue. I am your healer and know what is best for you. ~
IF~~ THEN REPLY ~ Sure. (Do as you are told.) ~ GOTO Pid9AnkL
IF~~ THEN REPLY ~ We need to be quick, danger may be always near. Hurry, please, just a quick spell and back to the road. ~ GOTO Pid9AnkE
END

IF ~~ THEN BEGIN Pid9AnkE
SAY ~ My mighty warrior, you are surely not hurt so bad as to need a healer. Bite on your lip, swallow the pain, and quickly back to the road. (Sandrah grins maliciously and leaves you to hobble behind the onmoving group.) ~ IF ~~ THEN DO ~ SetGlobal("Pid9Ankl","LOCALS",1) ~ EXIT
END

IF ~~ THEN BEGIN Pid9AnkL
SAY ~ (You feel her delicate fingers massage your ankle for a while and the pain is gone immediately.) ~
IF ~~ THEN REPLY ~ Oh, good...~ GOTO Pid9AnkL2
END

IF ~~ THEN BEGIN Pid9AnkL2
SAY ~ (Sandrah continues her massaging and caressing on your bare leg long after the pain has gone. Slowly and tenderly her fingers move up, passing your knee and on to your upper leg.) ~
= ~ (You feel her move a bit and next you realise her mouth is merging with your own in an endless kiss, while her hand is still moving further up on your leg...)~
IF ~~ THEN DO ~ SetGlobal("Pid9AnklCmt","LOCALS",1)~ EXTERN CVSANDRJ Pid9AnklComnts
END

IF ~~ THEN BEGIN SammomQ1
SAY ~ I can imagine how puzzled you are. I am confused no less, but maybe to tell what little I know about her will help us see something we have not considered yet. ~ 
IF ~~ THEN REPLY ~ From the copy of Leonardo's famous painting one can imagine her beauty. And then seeing her daughter only confirms that assumption. And she must have been so much younger than your father?~ GOTO SammomQ2
END

IF ~~ THEN BEGIN SammomQ2
SAY ~ Oh, <CHARNAME>, you are mistaken like most people when it comes to my father. He likes his disquise as an old man, yes, and he is by his years as a human. But Mystra has granted him longevity and health, so he can compete with any young man anytime. In any respect. ~
IF~~ THEN REPLY ~ Interesting, but today we wanted to talk about your mother. Let us leave your father as a topic for another occasion. ~ GOTO SammomQ3
IF~~ THEN REPLY ~ Are you trying to change the subject, Sandrah, we wanted to talk about your mother. Let us leave the old man aside for today. ~ GOTO SammomQ3
END

IF ~~ THEN BEGIN SammomQ3
SAY ~ You are right, but it is almost impossible to talk about my mother without mentioning Elminster in the context. But, well..~ 
= ~ Her name, as your vision has shown you already, was Khalindra. She was the daughter of a merchant from Innarlith at the eastern shore of the Lake of Steam.~
IF~~ THEN REPLY ~ But that is more than six tendays away from the Sword Coast and all treacherous seas in between.~ GOTO SammomQ4
IF~~ THEN REPLY ~ That must be many tendays away from the Sword Coast. I think I have never seen more than the name in the books back at Candlekeep.~ GOTO SammomQ4
END

IF ~~ THEN BEGIN SammomQ4
SAY ~ Yes it is very far away. Only seldom a ship makes the journey between the two places. Had it not been with my father's Shard and his magic means of transportation I would never have seen it in my life. It is beautiful, it is peaceful, full of exotic fruits and rare animals, the everblue sea in the warm breeze...~
IF~~ THEN REPLY ~ Oh stop it. See the dark cloud over there coming from the coastline. If we are lucky it will only rain...ah, the Sword Coast - let us seek some shelter, our talk must wait until later.~ DO ~ SetGlobal("SammomQ","LOCALS",1) StartRainNow() ~ EXIT
END

IF ~~ THEN BEGIN SammomQ6
SAY ~ So, I told you she was a merchant's daughter, Khalindra of Innarlith, who came to the Sword Coast with her father but never left Waterdeep again, after she met Elminster. I can tell you long stories about the courtship and the journeys the two did together, because that is the only memory I have of her - from the lovingly told tales of my father. ~
= ~ They married soon, as otherwise she would have needed to return with her father to Innarlith. One year later she had me. And another year later she was dead. ~
IF~~ THEN REPLY ~ I am sorry to open up old wounds for you.~ GOTO SammomQ7
IF~~ THEN REPLY ~ That's a life in the fast lane, if ever that expression was true.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",-1)~GOTO SammomQ7
END

IF ~~ THEN BEGIN SammomQ7
SAY ~ I am not hurt when I talk about her. Mind that the little baby I was back then did not really know her and thus I have no real memory of her. She exists only as the picture drawn by Leonardo and by the wonderful tales my father had to tell about her. ~
=~ But then, you must know how that feels as well. Was it not the same with your mother?~
IF~~ THEN REPLY ~ Yes and no. Me, I do not even have tales about her. Gorion has not even told me her name. I am sure he would have if not death and his cursed murderer had interrupted all. ~ GOTO SammomQ8
END

IF ~~ THEN BEGIN SammomQ8
SAY ~ (Sandrah has taken you in her arms and cuddles you in the way the mothers you both have never known might have done.) ~
IF ~~ THEN DO ~ SetGlobal("SammomQ","LOCALS",2) ~ EXIT
END

IF ~~ THEN BEGIN ShirtM
SAY ~ You would not think that this is a gift a father presents to his almost grown daughter, would you? ~
IF~~ THEN REPLY ~ Hardly. Maybe it was rather the gift of a lover then? ~ GOTO ShirtM2
IF~~ THEN REPLY ~ Maybe, if this father wants to loose his daughter to the next male being to pass by. ~ GOTO ShirtM3
END

IF ~~ THEN BEGIN ShirtM2
SAY ~ If this is what lovers give to their girls, I am curious what I will receive from you, now that you are my loverboy?~
IF~~THEN REPLY ~ You will find out soon enough. Meanwhile take this as the first rate. (Give her a passionate kiss, while you hands start to stroke that wonderful material and what is underneath.) ~ DO ~ SetGlobal("ShirtM","LOCALS",1)~ EXIT
IF~~THEN REPLY ~ How about this. (Try to attach a little yellow flower from a nearby bush on the shirt near her bossom, using the opportunity to explore a bit of what is hidden by the shiny wrapping.) ~ DO ~ SetGlobal("ShirtM","LOCALS",1)~ EXIT 
END

IF ~~ THEN BEGIN ShirtM3
SAY ~ Probably his Shard has told him already it would be you that would come along. And it looks like he has approved to you.~
IF~~THEN REPLY ~ Just like his wise daughter did. (Try to attach a little yellow flower from a nearby bush on the shirt near her bossom, using the opportunity to explore a bit of what is hidden by the shiny wrapping.) ~ DO ~ SetGlobal("ShirtM","LOCALS",1)~ EXIT
IF~~THEN REPLY ~ He's an old manipulator and it seems you learned that art quite well from him. ~ DO ~ SetGlobal("ShirtM","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN ShirtF
SAY ~ It is silk from Rashemen. My father brought it back from one of his missions.~
IF~~ THEN REPLY ~ Probably not noticing what it would do on such a beautiful girl like his daughter. ~ GOTO  ShirtF2
IF~~ THEN REPLY ~ I would dearly know how it feels to wear something like that. ~
GOTO  ShirtF2
IF~~THEN REPLY ~ He's an old manipulator and it seems you learned that art quite well from him. ~ DO ~ SetGlobal("ShirtF","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN ShirtF2
SAY ~ You must try it on, sweetheart, I insist. Wait.~
= ~ (Without anyone from the party noticing she takes your hand and leads you to a group of evergreen thick bushes nearby. She is out of the shirt in no time.)~
IF~~ THEN REPLY ~ (You take the wonderful material from her hand and let it drop to the ground, as your hands start to explore her soft skin that no silk can compare to.) ~ GOTO ShirtF3
IF~~ THEN REPLY ~ (Take the shirt and put it on. It feels wonderful.) Uh, you can probably not go back to the others like this. Take mine in return (Give her the woolen shirt you wear beneath your armour.)~ GOTO ShirtF3
END

IF ~~ THEN BEGIN ShirtF3
SAY ~ (She kisses you on the mouth and helps your hands to caress her naked breasts for a while. She laughs and helps you to put on the silk and then dresses in your old woolen one in return.) ~ 
=~ What will the others think if they see us returning from the bushes dressed like that.~
IF~~ THEN REPLY ~ Cultural exchange between the Sword Coast and Waterdeep.~ DO ~ SetGlobal("ShirtF","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN FavSpell1
SAY ~ Entangle. (Wraps her arms around you, entangling you completely.)~
IF~~ THEN REPLY ~ And what comes as second? ~ GOTO FavSpell2
END

IF ~~ THEN BEGIN FavSpell2
SAY ~ Silence. (Silences you completely with her lips on yours.)~ 
IF ~~ THEN DO ~ SetGlobal("FavSpell","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN SanParcPid
SAY ~ It was a little box I made myself sometimes back but left at home. An experiment in my studies of Mystra's arts. ~
IF ~~ THEN REPLY ~ Something magical then. What can it do? ~ GOTO SanParcPid2
IF ~~ THEN REPLY ~ A successful experiment? I hope it is not dangerous?~ GOTO  SanParcPid2
END

IF ~~ THEN BEGIN SanParcPid2
SAY ~ It is a bit like a bag of holding, only it can create some things in a magical way even if you never put them into it. Also it is a kind of remote access to my purse at home.~
IF ~~ THEN REPLY ~ Does that mean it can produce us things like gold and jewels and such?~ GOTO SanParcPid3
IF ~~ THEN REPLY ~ Useful things for the group or just your little girl's items from the past?~ GOTO SanParcPid3
END

IF ~~ THEN BEGIN SanParcPid3
SAY~ I think it can help us a bit. And maybe it has some surprises as I sense my father tampered a bit with it. Knowing his abilities and his humour I am not afraid, but maybe not everything I ask from it will be the expected.~
=~ We can ask it for gold coins or jewels from my purse at Waterdeep. So it will not be an endless supply, just what I actually own, but it will help us with the equipment we need and (laughs) the barbills from our endless parties..,~
IF ~~ THEN REPLY ~ And you are willing to give your personal riches for the sake of the group?~ GOTO SanParcPid4
END

IF ~~ THEN BEGIN SanParcPid4
SAY ~ Be glad you find me in such a mellow mood, my love. Otherwise I would be insulted by such a question. Of course what is mine is yours and for the group.~
IF ~~ THEN REPLY ~ Sorry, I did not mean any insult. So can we put the things we gain as a group back into it for storage? ~ GOTO SanParcPid5
END
  
IF ~~ THEN BEGIN SanParcPid5
SAY ~ A good reminder, <CHARNAME>. I wanted to do that in my experiment but laid it aside before I could finish that part. Maybe one of these days we may find a day of rest and I can spend some time working that bit out.~
IF~~ THEN REPLY ~ Only that I could imagine some other things to do with you should such a day really come along. (The kiss she gives you in return shows you that she was thinking in a similar vein.)~ DO ~ SetGlobal("SanParcPid","LOCALS",1)~ GOTO SanParcPid6
END
  
IF ~~ THEN BEGIN SanParcPid6
SAY ~ But meanwhile we may find another feature of the parcel very helpful during our travels. The box can retrieve items of some importance that we may have gained in our adventures but have lost one way or another.~
IF~~THEN REPLY ~ That sounds in deed very helpful. Your father is very caring to give such a useful item to you.~ EXIT
END

IF ~ Global("SaOgmaIn","GLOBAL",6) ~ THEN BEGIN SanLoveHutself
SAY ~ Finally we made it to this little shelter.~
IF ~~ THEN REPLY ~This place does not really look like the kind of palace you must be used to, my love. ~GOTO SanloveHut1
END

IF~Global("Sanbehbast","LOCALS",1)~THEN BEGIN Sanbast1
SAY~Just because you think you were born a bastard does not mean you need to behave like one.~
IF ~~ THEN REPLY ~What do you mean?~ + Sanbast2
IF ~~ THEN REPLY ~Another sermon from my favourite priestess?~ + Sanbast2
END

IF~~ THEN BEGIN Sanbast2
SAY~I can accept some open word when needed, I can even take some rudeness now and then, but your constant insults to me are pointless.~
++~Ah, I thought you'd never notice.~ + Sanbast3
++~I'm having my fun with Lady Waterdeep, like it or not.~ + Sanbast3
END

IF~~ THEN BEGIN Sanbast3
SAY~I have said what needed to be said. Do with it what you want. Just do not seek for your counselor's advice when you go on like that.~
IF~~THEN DO~SetGlobal("Sanbehbast","LOCALS",2)RealSetGlobalTimer("SanFlirTi","GLOBAL",3000)~ EXIT
END

IF~Global("Sanbehbast","LOCALS",3)~THEN BEGIN Sanbast4
SAY~On the outskirts of Waterdeep there is a racetrack where you can go an bet on a winning horse.~
IF ~~ THEN REPLY ~And I BET you always want to be the winner.~ GOTO  Sanbast5
IF ~~ THEN REPLY ~We're neither at Waterdeep nor at some rich people's fun fair, just in case you haven't noticed.~ GOTO  Sanbast5
END

IF~~ THEN BEGIN Sanbast5
SAY~ I know how it feels when you find that you placed your bet on the wrong horse, <CHARNAME>.~
=~It is exactly the feeling I have right now with you.~
IF ~~ THEN REPLY ~You dare to compare me with a race horse...~DO~SetGlobal("Sanbehbast","LOCALS",4)~ GOTO  Sanbast6
END

IF~~ THEN BEGIN Sanbast6
SAY~ Ah, shut up. Spare your anger for your enemies, spare it for Sarevok.~
=~I will no longer be your temper's toy and puppet. I would rather change my horse in midstream than to drown with it.~
IF~~THEN DO~ SetGlobal("Sandrahjoined","Global",83)LeaveParty() EscapeAreaDestroy(90)~EXIT
END

// PID Package 10

IF ~ IsGabber(Player1) Global("SanPidPack","GLOBAL",10) ~ THEN BEGIN SanPCInit10
SAY ~ (The enigmatic smile of your wonderful lover makes you move up to her and embrace her.)~
IF ~ Global("BHQuestaccept","GLOBAL",3) Global("SanAskBH1","LOCALS",0) ~ THEN REPLY ~ You have been to this island with your father, Sandrah?~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanAskBH11
IF~ Global("Drizztfight","GLOBAL",1) !InParty("Branwen") GlobalLT("SanDrizzt","GLOBAL",3) Global("SanFiSkills","LOCALS",0)~ THEN REPLY ~ It seems that the famous Drizzt Do'Urden knows you well, Sandrah? In a way I envy you for this.~ GOTO SanKnoDrizPC1
IF ~ GlobalGT("SanWDTemplWi","GLOBAL",8) Global("SanTmplHealL","LOCALS",0) ~ THEN REPLY ~ My love, you have taken quite an extraordinary risk to help a little girl you do not even even know. Your calling as a healer appears in a new light to me today.~ GOTO SanTmplHeal1
IF ~ GlobalGT("SanSharInt","GLOBAL",11) Global("SanSharCon","LOCALS",0) ~ THEN REPLY ~ You seem to go along with Shar-Teel quite well, Sandrah.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SanSharCon1
IF~GlobalGT("Santiax","LOCALS",3)Global("SanTiaHealQ","LOCALS",0)~ THEN REPLY~Sandrah, can you imagine that Tiax could be healed from his megalomania?~ GOTO SanTiaHel1
IF ~ GlobalGT("Santiax","LOCALS",3) Global("SantiaxPC","LOCALS",0)~ THEN REPLY ~ Tiax seems to think that your heritage in a way seems to imply what kind of future is waiting for you.~ GOTO SanTiaxPC1
IF~Global("CVGodag","GLOBAL",7)~THEN REPLY~My only heritage from Gorion appears to be the cult dagger of a Bhaalist, Sandrah. Does that make any sense to you? ~DO~SetGlobal("CVGodag","GLOBAL",8)~GOTO Godag11
IF~ GlobalGT("RoadFound","GLOBAL",1) AreaCheck("bg2300") PartyHasItem("SanMap") ~ THEN REPLY ~ I am ready to start the journey to Waterdeep now, lead on, my love.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO WDTravl1
IF ~ Global("SanNarQ","GLOBAL",7) !Global("SanWDHi","GLOBAL",2) Global("SanVisWD","LOCALS",0)~ THEN REPLY~ Do you sometimes wish to visit your home at Waterdeep again, Sandrah? ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",3)~GOTO SanVisWD
IF ~ Global("SanNarQ","GLOBAL",7) Global("SanWDHi","GLOBAL",2) Global("SanVisWDFA","LOCALS",0)~ THEN REPLY~ Do you have to tell me something about that old man Jopi, Sandrah? ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanVisWDFA
IF~ Global("SantalosDec","GLOBAL",10)~ THEN REPLY~What is it between you and Talos - or Mystra and Talos respectively? ~GOTO Talosvisit4
IF~~ THEN REPLY ~ (Smile at Sandrah and kiss her quickly.) ~ EXIT
IF ~ Global("Gorlet","LOCALS",0) GlobalGT("Formedcloth","GLOBAL",7)~ THEN REPLY ~ Sandrah, you must know on the day I found Gorion's dead body he had this letter, that Imoen had already seen before. The warning of what was approaching. ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",3)~GOTO GorLet1
IF~ Global("SanDesTroll","LOCALS",2) NumItemsPartyLT("arow04",5) AreaType(FOREST)  ~ THEN REPLY~ Sandrah, we are quickly running out of acid arrows. Can you provide us with some once again?~ GOTO SanAcArF
IF~Global("BHHandSearch","GLOBAL",0) PartyHasItem("BHGHandn") PartyHasItem("BHGHand") ~THEN REPLY~Do you have any idea about this *Glorious Hand* issue, my learned counselor?~GOTO BHGHand
IF~Global("SanVsTalos","GLOBAL",1) Global("Talostlk","LOCALS",0)~THEN REPLY ~Now we have made ourselves some new *friends*, those that follow the Storm Lord Talos.~ GOTO SanTalosF1
IF~ Global("SanDesTroll","LOCALS",2) NumItemsPartyLT("arow04",5) !AreaType(FOREST)  ~ THEN REPLY~ Sandrah, we are quickly running out of acid arrows. Can you provide us with some once again?~ GOTO SanAcArNF
IF ~ Global("SanOnBalduIsl","GLOBAL",1)~ THEN REPLY ~ Now, counselor, do you have any idea what we have to face here? ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO WWIsl1
IF~PartyHasItem("SW1H19") Global("TheVaultVamp","GLOBAL",2) !See([ENEMY]) CombatCounter(0)~THEN REPLY~ Can you call the Vault Sentry to make our traveling faster, please.~ GOTO SanvaultSum
IF ~ GlobalGT("SanWDTempleRha","GLOBAL",0) GlobalGT("SanWDTempleHint","GLOBAL",1) Global("SanWDRespect","LOCALS",0)~ THEN REPLY ~ Sandrah, you seem to be highly respected at the Waterdeep temple.~ GOTO SanWDRespct1
IF ~ Global("SanWDRespect","LOCALS",1)~ THEN REPLY ~ We have a bit of time now, Sandrah. Please tell me a bit of your position and relation to the famous Mystra Temple in Waterdeep.~ GOTO SanWDRespct5
IF ~ Global("SanWoodSt","LOCALS",2) AreaType(DUNGEON)~ THEN REPLY ~ Can you provide us with some wooden stakes, Sandrah?~ GOTO SanMkStake5
IF~ AreaType(FOREST) Global("Pid9Ankl","LOCALS",0)~ THEN REPLY ~ As you approach her, a sharp pain runs through your ankle and you have to sit down on a nearby rock.  ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO Pid9Ankl
IF ~ GlobalGT("Mothdream1","GLOBAL",6) Global("SammomQ","LOCALS",0) AreaType(OUTDOOR)~ THEN REPLY ~ Sandrah, would you mind to tell me a bit more about your mother. I am still totally confused by this dream or vision I had - and then to find her portrait with me. ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SammomQ1
IF ~ GlobalLT("PidLock","LOCALS",2) ~ THEN REPLY ~ (You blow a lock of stray hairs from Sandrah's forehead.) How come you look so splendid, regardless how hard the battle or the march was? ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO Pidlock2
IF ~ GlobalGT("Cowscroll","GLOBAL",9) Global("EdCursGon","LOCALS",0) ~ THEN REPLY ~ Mystra has finally taken her curse off from Edwin.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO EdCursGon1
IF~Global("WDIntrotalk","LOCALS",2)OR(4)AreaCheck("CVROA2") AreaCheck("CVROA3") AreaCheck("CVElm1") AreaCheck("CVElm4")~ THEN REPLY~Can you tell me some more about Waterdeep?~  DO~SetGlobal("WDIntrotalk","LOCALS",4)~GOTO FirstWDIntro3
IF~Global("WDIntrotalk","LOCALS",3)OR(4)AreaCheck("CVROA2") AreaCheck("CVROA3") AreaCheck("CVElm1") AreaCheck("CVElm4")~ THEN REPLY~Can you tell me some more about Waterdeep?~  DO~SetGlobal("WDIntrotalk","LOCALS",4)~GOTO FirstWDIntro2
IF~ InParty("Coran") Global("SanRomPath","GLOBAL",1) Global("SanCorMale","LOCALS",0)~ THEN REPLY ~ Sandrah, what do you make of our cute companion Coran? ~GOTO SanCorMal1
IF~ InParty("Coran") Global("SanRomPath","GLOBAL",2) Global("SanCorFem","LOCALS",0)~ THEN REPLY ~ Sandrah, what do you make of our cute companion Coran? ~GOTO SanCorFem1
IF~ Global("SanXanPC","GLOBAL",2)InParty("XAN") ~THEN REPLY~ I observe you started to care for Xan quite a bit. Is it the healer that tries to cure this hopeless case?~DO~ IncrementGlobal("Sanpoints","GLOBAL",3)~GOTO SanXanPC13
IF ~Global("SanBreBa","GLOBAL",2) ~ THEN REPLY ~ You and Breagar seem to be a bit at odds with each other.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanBreCon1
IF ~ Global("SanBranDec","GLOBAL",5)~ THEN REPLY ~ It feels a bit empty, Sandrah, without Branwen - even with the two of us together in love. Do you feel the same?~ DO~ IncrementGlobal("Sanpoints","GLOBAL",4)~GOTO BranLeft1
IF ~ Global("X#XALOVETALK","GLOBAL",39) InParty("XAN") Global("Xanrever","LOCALS",0) ~ THEN REPLY ~ May I ask you a very intimate question, my love? ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",4)~GOTO Xanrevery1
IF~Global("ChartQuest","GLOBAL",1)GlobalGT("CalDone","GLOBAL",0)Global("SanMendas","LOCALS",0)~ THEN REPLY ~ Mmh, you would not by any chance know this Mendas of Waterdeep?~ GOTO SanMendas1
IF ~ GlobalGT("Mothdream1","GLOBAL",6) Global("SammomQ","LOCALS",1)~ THEN REPLY ~ We started to talk about your mother a while back but we were interupted by this rainstorm. I would like to continue that issue, if you do not object.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SammomQ6
IF ~Global("SanBhaalRev","LOCALS",0) Global("SammomQ","LOCALS",2)~ THEN REPLY ~ Sandrah, you have indicated in recent conversations that the insemination of your mother by the God of Murder was a kind of revenge on Elminster. What did you mean by that? ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",3)~GOTO SanBhaalRev1
IF ~ Global("SanRomPath","GLOBAL",1) AreaType(OUTDOOR) Global("ShirtM","LOCALS",0)~ THEN REPLY ~ (Sandrah has taken off her shining armour for the break you have announced for the group. She sits in the sun in just a shirt of some shiny clinging material that reveals more than it hides) You stretch out your hand to touch the shirt. ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO ShirtM
IF ~ GlobalGT("SanBooTlk","GLOBAL",5) Global("MinskFlow","LOCALS",0) ~ THEN REPLY ~ That is a beautiful flower in your hair, Sandrah. Do you wear it for me?~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO MinscFlow1
IF ~ Global("Godtalk","LOCALS",0) !AreaType(DUNGEON)~ THEN REPLY ~ Sandrah, how important is it for you to be a priestess?~ DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SanGodtalk1
IF~ Global("SanEdLoveBoy","LOCALS",2)~ THEN REPLY ~ Your former hate for the red wizard Edwin seems to have changed quite a bit, Sandrah?~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanEdLoveBoy20
IF ~ Global("PCKnowsElmDaughter","GLOBAL",1) Global("SanElmInf1","LOCALS",0) GlobalGT("Chapter","GLOBAL",2) ~ THEN REPLY ~ Sandrah, your father and yourself have different reasons to be interested in me, at least this is my interpretation of what I heard from both of you.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SanElmInf11
IF ~ Global("SanRomPath","GLOBAL",2)AreaType(OUTDOOR) TimeOfDay(DAY) Global("ShirtF","LOCALS",0)~ THEN REPLY ~ (Sandrah has taken off her shining armour for the break you have announced for the group. She sits in the sun in just a shirt of some shiny clinging material that reveals more than it hides) You stretch out your hand to touch the shirt. ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO ShirtF
IF ~ Global("FavSpell","LOCALS",0)~ THEN REPLY ~ Say, Sandrah, my disciple of Mystra, what is your favourite spell.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO FavSpell1
IF ~ Global("SaOgmaIn","GLOBAL",6) AreaCheck("CVWOHA") ~  THEN REPLY ~This place does not really look like the kind of palace you must be used to, my love. ~DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SanloveHut1
IF~~ THEN REPLY ~ (Embrace Sandrah and give her a passionate kiss. ) ~ EXIT
IF ~ PartyHasItem("SanParc") Global("SanParcPid","LOCALS",0) ~ THEN REPLY~ When we brought the Shard back to your father, I noticed he slipped some small box into your robes. May I ask you what it was? ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanParcPid
IF~ GlobalGT("SanNarQ","GLOBAL",6) !AreaType(OUTDOOR) Global("SanAdveFa","LOCALS",0) !AreaType(DUNGEON) ~ THEN REPLY ~ You mentioned sometime that you used to travel with your father a bit on his adventures, Sandrah. Tell me about it, please. ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SanAdvenE1
IF ~ Global("SanOrDiId","GLOBAL",3) ~ THEN REPLY ~ I want to talk with you now about that diary we found at Ulcaster, if you don't mind. ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO UlDarT
IF ~ Global("TORKIONNEEDYOU","GLOBAL",1) !PartyHasItem("Misc48") Global("SanTorq","LOCALS",0) ~ THEN REPLY ~ Sandrah, my little counselor, does your famous book tell us anything about this Torqion and the sword he requires from us? ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanTorq1
IF ~ !AreaType(DUNGEON) ~ THEN REPLY ~ I can hardly wait until the dusk will fall and we have time for a rest. I long for you, Sandrah.~ GOTO SanNight2Inv
IF ~ AreaType(CITY) GlobalLT("SanBuySweet1","LOCALS",2) ~THEN REPLY ~ Wait here, a minute, I need to get us something quickly. (You rush into a nearby shop.) ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SanBuySweet11
IF ~ Global("SanPCGavInt","GLOBAL",1) Global("SanPCGavT","LOCALS",0) ~ THEN REPLY ~ Sandrah, I observe you talk quite a bit with Gavin. Say, dear, what do you think of him?~ DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SanPCGavT1
IF~ AreaType(OUTDOOR) Global("Sanhairdo","LOCALS",0)~ THEN REPLY~ (Sandrah has taken off all the scarfs and diadems she normally wears in her stylish hairdo and lets her auburn locks fly free in the wind. As usual you have to stop, stunned by her beauty.)~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO Sanhairdo1
IF ~ Global("Formedcloth","GLOBAL",9)~ THEN REPLY ~ I am a Bhaalspawn then. Hence my dreams, my powers, the mysterious foe and assassins, Elminster's interest in me - your interest in me.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO PidBhaal10
IF ~ Global("Formedcloth","GLOBAL",10)~ THEN REPLY ~ Sandrah, this is a good place for a rest. Friends, let us sit down and listen to Sandrah and a story that hopefully will bring some light into this confusing quest about my heritage. ~ GOTO PidBhaal13
IF ~ Global("XanDecide","GLOBAL",3) InParty("Xan")~ THEN REPLY ~ Sandrah, my love, we must talk about Xan urgently.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",3)~GOTO Xanchos1
IF ~ Global("rainbFav","LOCALS",0) ~ THEN REPLY ~ Sandrah, what is your favourite colour?~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO rainbFav1
IF~~THEN REPLY~Your hammer seems to be stuck.~GOTO SanHamCl
END

IF ~~ THEN BEGIN Xanchos1
SAY ~ The healing process for our elf friend was successful, <CHARNAME>. We have really made him  find hope and love.~
IF ~~ THEN REPLY ~ But the price for it is not cheap for you. I am afraid, you pay with a great loss for his happiness.~   GOTO Xanchos2
IF ~~ THEN REPLY ~ You know already what is happening?~ GOTO Xanchos2
END

IF ~~ THEN BEGIN Xanchos2
SAY ~ Oh, my silly sweetheart. First him and now you. I appreciate your care for my feelings, but you both misunderstand me completely. <CHARNAME>, I am completely happy for you both. My beloved friends have finally discovered their true feelings for each other, is that not wonderful?~
IF~~THEN REPLY ~ But you love Xan yourself, don' you...?~ GOTO Xanchos3
END

IF ~~ THEN BEGIN Xanchos3
SAY ~ Yes, and I love you, too. So how can I stand in the way between your two hearts? Know that love does not express itself by ownership. I own neither him nor you for myself. To be part of your happiness and Xan's newfound hope for life is what I have gained today. (She kisses you and her sparkling eyes show you the true joy she feels for you.)~
IF ~~ THEN REPLY ~ Do you mean my love for Xan does not stand in the way between us, Sandrah?~ GOTO Xanchos4
END

IF ~~ THEN BEGIN Xanchos4
SAY ~ My, how could it? Our love has gained another dimension today. Love does not lessen just because you share it with more people - it is an endless resource in itself. Now run and kiss your love-hungry elf before he faints from neglection and we have to carry him.~
IF ~~ THEN REPLY ~ Sandrah, you are so wonderful, so different from anyone I know. Probably that is why I love you so.~DO ~ SetGlobal("XanDecide","GLOBAL",4)~EXIT
END

IF ~~ THEN BEGIN GorLet1
SAY ~ Do you still have preserved it, I would be interested to see it. It may tell us something that you may have not understood then, but may become apparent with the insight we have gained until now.~
IF ~ PartyHasItem("SCRL3Z")~ THEN REPLY ~ Here it is, let us read it again together. (Hand her the letter and glance over her shoulder at the words you almost know by heart now.) ~ GOTO GorLet2
IF ~ !PartyHasItem("SCRL3Z")~ THEN REPLY ~ I do not have it anymore, but I have read it so often, I can recite it to you word by word. (Recite Gorion's letter.)~ GOTO GorLet3
END

IF ~~ THEN BEGIN GorLet2
SAY ~ This letter is from my father, it is his handwriting and it is signed *E.* As Elminster.~
IF~~THEN REPLY ~ It just confirms what we know already. Your father had sensed the approaching danger. You had seen the same in his shard, Sandrah. Anything else? Something I may have overseen?~ GOTO GorLet4
END

IF ~~ THEN BEGIN GorLet3
SAY ~ You say, it was signed *E.* As Elminster. That would make sense.~
IF~~THEN REPLY ~ It just confirms what we know already. Your father had sensed the approaching danger. You had seen the same in his shard, Sandrah. Anything else? Something I may have overseen?~ GOTO GorLet4
END

IF ~~ THEN BEGIN GorLet4
SAY ~ (She repeats slowly) *We have done what we can for those in thy care, but the time nears when we must step back and let matters take what course they will.  We have, perhaps, been a touch too sheltering to this point.* Those in thy care!~
IF ~~ THEN REPLY ~ The two babies! ~ DO ~ SetGlobal("Gorlet","LOCALS",1)~ GOTO GorLet5
END

IF ~~ THEN BEGIN GorLet5
SAY ~ OH MY! <CHARNAME>, do you know what that means? If my father had written that letter a few days before you left Candlekeep and he refers to *those in thy care* - more than just one...~
IF~~THEN REPLY ~ ...he has not known all those years that only one reached Candlekeep. Strange.~ GOTO GorLet6
IF~~THEN REPLY ~ ...but he has visited Gorion at Candlekeep. With you - you told me about that yourself. Ah, but we were not there during that visit. Should he still have not known that only one had reached Candlekeep? ~ GOTO GorLet6
END

IF ~~ THEN BEGIN GorLet6
SAY ~ Unless...~
IF~GlobalGT("OrcPrison","GLOBAL",9)~THEN REPLY ~ Both had actually reached Candlekeep. The second one had disappeared later. That would explain the story of Imoen coming to Candlekeep much later than me. ~ GOTO GorLet7
IF~~ THEN REPLY ~ It is impossible that he had not known this. Unless the error is in our thoughts. Both were there. The second one had disappeared later. That would explain the story of Imoen coming to Candlekeep much later than me.~ GOTO GorLet8
IF~~THEN REPLY ~ ...unless both were really there all the time...Impossible. I would know it.~ GOTO GorLet8
END

IF ~~ THEN BEGIN GorLet7
SAY~ Or not. (Mumbles) The Slayer...~
= ~ (Sandrah turns away and slowly walks away muttering to herself in deep thought).~
IF~~THEN REPLY~ (You know you can only leave her to her musing at this moment. She will come to you with her results, you are sure.)~ EXIT
IF~~THEN REPLY ~ (You let her follow her thoughts while you try to bring order into your own wild guesses.)~ EXIT
END

IF ~~ THEN BEGIN GorLet8
SAY ~ Or not. The second one has been there before our eyes all the time... ~
= ~ (Sandrah turns away and slowly walks away muttering to herself in deep thought).~
IF~~THEN REPLY~ (You know you can only leave her to her musing at this moment. She will come to you with her results, you are sure.)~ EXIT
IF~~THEN REPLY ~ (You let her follow her thoughts while you try to bring order into your own wild guesses.)~ EXIT
END

IF ~~ THEN BEGIN WWIsl1
SAY ~ Wolves that were once men and men that turn to wolves. The island seems to be inhabited by a type of werewolves different from those we have encountered on the mainland up to now. The ones here seem to by Lycanthropes, which means they may change between a human and a wolf form.~
IF~~THEN REPLY ~ Does that mean that humans we encounter outside of this compound may in reality be werewolves?~ GOTO WWIsl2
IF~~THEN REPLY ~ So we cannot trust anyone on this island as he or she may be a wolf in reality, ready to attack anytime.~ GOTO WWIsl2
END

IF ~~ THEN BEGIN WWIsl2
SAY ~ The bad thing is that we will not be able to tell until the human changes into the wolf form for the attack. To be careful on any encounter and have our weapons ready is sadly all I can advise.~
IF~~THEN REPLY ~ Which has become our second nature by now anyway (Laugh). Anything else, like garlic against vampires or such.~ GOTO WWIsl3
END

IF ~~ THEN BEGIN WWIsl3
SAY ~ Some of the really mighty Lycanthropes can only be defeated with a silver weapon, I have read.~
IF~ Global("ItemWerDag","GLOBAL",1)!PartyHasItem("dagg09")~THEN REPLY ~ Like the werebane dagger for example, that we once had. Can your parcel maybe retrieve it again for us?~ EXIT
IF~ Global("ItemWerDag","GLOBAL",1)PartyHasItem("dagg09")~THEN REPLY ~ Like the werebane dagger for example.~ EXIT
IF~ !Global("ItemWerDag","GLOBAL",1)~THEN REPLY ~ If we could only find such a thing! ~ EXIT
END

IF~~THEN BEGIN SanBhaalRev1
SAY ~ You know the lore of the Times of Trouble well, <CHARNAME>, as it is preserved at Candlekeep where you grew up with it. When talking of the Gods that stole the Tablets of Fate from Ao you have to free yourself of our mortal views of time and space, which did not exist for them outside of their mortal avatar.
It is thus that Bhaal was aware of his coming death and he took his preparation in putting his seed into women of various races and at different times for them to be awakened from beyond his grave and rise again in his name. This part you know well from Alaundo's writings. ~
=~ But for the moment let us concentrate on those four adventurers sent out by AO.~
IF ~~ THEN REPLY ~ Adon, a cleric of Sune, Cyric, Kelemvor, and Midnight were successful in finding the Tablets and returning them to Ao. Three of that company, excepting only Adon, were raised to godhood in place of the slain gods - Bane, Bhaal, Myrkul and Mystra.
Bane went to the City of Tantras where He was slain in battle with Torm, but Torm had perished as well. Bhaal was slain by Cyric, who wielded the magical sword Godsbane at Boareskyr Bridge. Myrkul was destroyed atop Mount Waterdeep by Midnight, who had the power of Mystra. Mystra herself was dead by Helm's hand, but Midnight chose to keep the mantle and name when she ascended.~ DO~ SetGlobal("SanBhaalRev","LOCALS",1) ~GOTO SanBhaalRev2
END

IF~~THEN BEGIN SanBhaalRev2
SAY ~ Yes, you know your lore well <CHARNAME>. But there are some important details to be added. The adventurers went out in pairs to pursue the renegade gods. So Cyric and his betrothed Midnight went to chase Myrkul and Bhaal together, as they were partners also in love. You must know that those two were also parents already of a son that had come to adulthood shortly before the events.~
IF ~~ THEN REPLY ~ I see, so as Bhaal had foreseen his death he was also aware who would kill him, or at least he knew it would be the pair of Midnight and Cyric. And your father is the most prominent disciple of Mystra on Toril. The target of his revenge.~ GOTO SanBhaalRev3
END

IF~~THEN BEGIN SanBhaalRev3
SAY ~ Almost true, <CHARNAME>. Now add to this the fact that the name of Midnight's son is - Elminster.~
IF ~~ THEN REPLY ~ Oh, so Elminster is really the son of a goddess - and Mystra is your grandmother then! ~ GOTO SanBhaalRev4
END

IF~~THEN BEGIN SanBhaalRev4
SAY ~ Not exactly, <CHARNAME>, Midnight was a mortal human when she gave birth to Elminster, so he as well is born a mortal. When Midnight was raised to godhood she gave him her special blessings and also his duties in the name of Mystra. And me, I am the spawn of Elminster and Khalindra, who was also a normal human. And by this I am the grandchild rather of Midnight, a human adventurer of good heart and the courage to fight renegade Gods, than the grandchild of a goddess. ~
IF ~~ THEN REPLY ~ Then Bhaal chose the wife of the son of his executioners to make her the vessel of his revenge and spawn. To bring grief and destruction from even beyond the grave. ~ GOTO SanBhaalRev5
END

IF~~THEN BEGIN SanBhaalRev5
SAY ~ Mind something else that is important in this context, <CHARNAME>. Our mortal notions of father, mother, brother, sister and family cannot be applied when it comes to descendends of the Gods. Elminster is Midnight's son not Mystra's, as I am Midnight's granddaughter not Mystra's - and such is true for the spawns of Bhaal, they are not brothers and sisters among each other. And they may be instruments of the God of Murder but they are not sons and daughters. ~
IF~~THEN EXIT
END

IF~~THEN BEGIN  PidBhaal10
SAY ~ Yes, all of that is true - except for the last one. My interest in you is of a different nature, my love.~
IF ~~ THEN REPLY~ But you knew who I was all the time, did you not?~ GOTO PidBhaal11
IF ~~ THEN REPLY~ This is not really true. Yes, you love me now, but you came to me in search of a Bhaalspawn not in search of a lover.~ GOTO PidBhaal11
END

IF~~THEN BEGIN  PidBhaal11
SAY ~ Truth is that I did not know that it was you who was the Bhaalspawn I came looking for. Let me tell you everything step by step and you will see. I had no picture of this whole connections until now, just little pieces here and there of the puzzle - just like that torn bedsheet we found together piece by piece. And I had no idea how wonderful and loving you were.~
IF ~~ THEN REPLY~ I have found in our relationship already that you cannot be so easily judged. Please forgive me my words. I know that the explanation is probably more complex than I quickly assumed.~ GOTO PidBhaal12
END

IF~~THEN BEGIN  PidBhaal12
SAY ~ You are right. This will be a long story to tell. Do you think the time is right just now or should I tell it to you later?~
IF ~~ THEN REPLY ~ This is a good place for a rest. Friends, let us sit down and listen to Sandrah and a story that hopefully will bring some light into this confusing quest.~ GOTO PidBhaal13
IF ~~ THEN REPLY ~ You are right, we should look for a calm location to settle down and listen to that story with all patience. I will ask you again later, my love. (Kiss her.) ~ DO ~ SetGlobal("Formedcloth","GLOBAL",10) ~EXIT
END

IF~~THEN BEGIN  PidBhaal13
SAY ~ I have been gathering information and studied all various sources about Bhaal, his spawns, the prophesies of Alaundo and related topics since the day I learned how my poor mother had to die. You know that the God of Murder had implanted one of his seeds into her as his last revenge against my father and Mystra. She died giving birth to that child.~
= ~ We have witnessed now the scene of why this child had to leave Waterdeep and my father. Khalindra's spawn and all the others that the dead god had left behind throughout Faerun were hunted by the various parties with their different interests at that time. ~
=~ The Harpers, including my father, Gorion, and to our surprise also Winthrop, however believed that the Bhaalspawns by themselves were innocent babies that were not evil and murderous from their blood alone. It is this belief that was given on to me by my father. And now with you, <CHARNAME>, by my side it has been proven. The power of that god is sleeping in you and is awakened part by part as you grow and learn to use it. But how you make use of that power, that is your own decision and guarded by your own will. A fact that only few people can understand.~
IF ~~ THEN REPLY ~ The dreams I had, the ones about blood and murder, those voices trying to convince me that there is only one way for me to follow - that was Bhaal pulling me to the evil side? ~ DO ~ SetGlobal("Formedcloth","GLOBAL",11)~ GOTO PidBhaal14
END

IF~~THEN BEGIN  PidBhaal14
SAY~ Yes, but your dreams also included Gorion and what he had given to you. The means to withstand this pulling, and the vision of a life where you use your powers against that evil. That is the other face of your heritage, the one that your foe are not able to see.~
IF ~~ THEN REPLY ~ They will see it soon enough - but it will be too late for them by then.~ GOTO PidBhaal15
END

IF~~THEN BEGIN  PidBhaal15
SAY~ So let me continue my tale. For a long time my search for the second child of Khalindra was in studies mostly, and some few talks I had with my father, who always closed up on me when the topic was brought up by me.~
= ~ Then suddely at the end of this winter, things started to get in motion. As could be expected, the children that were spawned by Bhaal all at the same time, shortly before his destruction, reached the age of adulthood. If you trust Alaundo - or rather the interpretation that is believed by the most - this would be the time when they would become aware of who they are, and according to the prophesies would begin their rush for power.~
IF ~~ THEN REPLY ~ In that rush they would eventually be confronted with one another. The result would be an enourmous war and the resulting bloodshed would be the source for Bhaal's children to gather more and more power. Or at least those that would survive. In the end the remaining spawns would fight over the Throne of Bhaal for the winner to become the new God of Murder. This is the version I heard at Candlekeep every day from the Chanters.~GOTO  PidBhaal16
END

IF~~THEN BEGIN  PidBhaal16
SAY~ This is the interpretation of Alaundo that most people know, yes. It is not what I believe and it is not what my father believes. It is not what Gorion has fought and died for and it is not what Wintrop thinks is true.~
= ~ Your Candlekeep chanters are the best example for what is wrong. They repeat the same thing every day without questions or doubts. It is said and heard so often, that in the end everyone believes it is true.~
= ~And here we have <CHARNAME>. A Bhaalspawn. Powerful, yes. A leader, yes and we follow <PRO_HIMHER>. Yes, <PRO_HESHE> kills foe at great number, yes -but <PRO_HESHE> is not evil, <PRO_HESHE> is only defending <PRO_HIMHER>self.~
= ~ Read again Alaundo with this example in mind and you will see what was really said. Bhaalspawns will rise, they will be good or bad. In the attempt to rise to power they will inevitably find each other. But in two possible ways - either as rivals for that bloody throne or as the two sides of a medal. The one, according to Alaundo that will have the necessary power and will to stop the victorious Bhaalspawn to ascend to the godhood and throne of the dead god - will be one who possesses equal abilities, ergo another Bhaalspawn.~
IF ~~THEN REPLY ~ Is this what we are facing now, Sandrah? Our mysterious foe in the dark is a Bhaalspawn and here is the good one to stop him? The weapon the Harpers forged to stop evil.~ GOTO  PidBhaal17
END

IF~~THEN BEGIN  PidBhaal17
SAY~ No, <CHARNAME>, this episode here is far from what a clash of the Bhaalspawns for power will look like. And, my lovely hero, you are not a brainless weapon in somebody's powerplay. You are a fighter and force by your own means.~
IF~~THEN REPLY ~ Thank you, Sandrah. I have much to think about now. Your tale is not even halfways told but it is getting late now. Let us continue another time.~ EXIT
END


IF~~THEN BEGIN SanGodtalk1
SAY ~ You want to talk about religion with me <CHARNAME>?~
IF~~THEN REPLY ~ Honestly, I am not a religious person at all, but I know most other people are. Since I start to care for you, as well as you do for me, I do not want to hurt your feelings in that area.~  GOTO SanGodtalk2
IF~~THEN REPLY ~ Even if it not that obvious, as you are never praying and I never hear you shout *For Mystra* when you go into battle, you are a priestess. I do not want to hurt your feelings when it comes to your beliefs.~ GOTO SanGodtalk2
END

IF~~THEN BEGIN SanGodtalk2
SAY ~ Remember your history lessons in Candlekeep, <CHARNAME>, what did you learn about my goddess?~
IF~~THEN REPLY~ Actually she was just an adventurer who slayed the former goddess during the period when the avatars walked on Toril. She took the slain one's name and cloak and was made her successor by the Overgod Ao.~ GOTO SanGodtalk3
IF~~THEN REPLY~ She was human in the beginning. Midnight was one of the adventurers who were called by the Overgod Ao to pursue the renegade gods' avatars on Toril during the Time of Troubles. She and her partner Cyric traced Bhaal and Mystra, and in a fight of several days finally slayed them. The adventurers were later granted godhood themselves.~ GOTO SanGodtalk3
END

IF~~THEN BEGIN SanGodtalk3
SAY ~ (Laughs) You have a way to tell these fundamental religious stories in an even more profane way than I could. Nevermind, you do not hurt anything in me with that. You are completely right. Midnight was an adventurer, providing her magic skills and fighting power to fight evil. A well-known heroine in her time.~
= ~ She and her friends were appointed then by Ao, alongside Helm, to bring the renegade gods to reason and stop their destructive ploy for power. Ao trusted those mortals more than his godly fellowers to help the good side to win against the darkness. ~
IF~~THEN REPLY ~ So you see in her more a figure to identify with than a heavenly power that rules your life. I mean, you being yourself an adventurer with magic skills and remarkable fighting power.~GOTO  SanGodtalk4
END

IF~~THEN BEGIN SanGodtalk4
SAY ~In a simplified way that sums it up, I would say. So you do not have to deal with topics of religion like with raw eggs, as far as I am concerned.~
IF~~THEN REPLY ~ Thank you for the confirmation, I was already guessing as much. ~ DO ~ SetGlobal("Godtalk","LOCALS",1)~EXIT
IF~~THEN REPLY ~ I confess I am relieved. A religious fanatic would not be easily acceptable for me. Not that you gave the impression you were one.~ DO ~ SetGlobal("Godtalk","LOCALS",1)~EXIT
END

IF~~ THEN BEGIN SanNight2Inv
SAY ~ My <CHARNAME>, I am hungry again for your tenderness. Please give me a small appetizer right now.~
IF ~~THEN REPLY ~ (Give her a long passionate kiss while both of your hands tenderly grab the two halfes of her behind, that are unprotected by her armour.) ~ GOTO SanNight2InvGr
IF~~THEN REPLY ~ (Feed her expectant mouth with a series of short kisses, like a parent bird feeds its hungry young ones.)~ EXIT
END

IF~~ THEN BEGIN SanNight2InvGr
SAY ~ (Sandrah responds with moving her hips invitingly against your pelvis.)~
IF~Global("SanRomPath","GLOBAL",1)~ THEN REPLY~ (You feel your flesh responding immediately to the temptation by getting painfully stiff.) Ooh. ~ EXIT
IF~Global("SanRomPath","GLOBAL",2)~ THEN REPLY~ (You feel your flesh responding immediately to the temptation by getting lustingly moist.) Aah. ~ EXIT
END

IF~~ THEN BEGIN SanBuySweet11
SAY ~ You look as if you found an egg that can stand alone on its tall end in that shop yonder.~
IF~~THEN REPLY ~ Mmh. Something much better. Close your eyes darling.~ DO ~ IncrementGlobal("SanBuySweet1","LOCALS",1)~ GOTO SanBuySweet12
IF~~THEN REPLY ~ A magic egg? Sometimes even for the mighty mage's daughter some very simple things can provide a greater pleasure. ~ DO ~ IncrementGlobal("SanBuySweet1","LOCALS",1)~ GOTO SanBuySweet13
IF~~THEN REPLY ~ They did not have what I wanted to get for you, sorry Sandrah. Another day perhaps. (You secretly smile when you see her disappointed look. Like the little girl she has been not so long ago with her father forgetting her birthday.)~ DO ~ IncrementGlobal("SanBuySweet1","LOCALS",1)~GOTO SanBuySweet14
END

IF~~ THEN BEGIN SanBuySweet12
SAY ~ (You slip an exquisit dried and caramelized Thayan fig between her expectant lips.)~
 = ~ Hm, good. (Her mouth is on yours with her tongue forcing the other half of the sweet between your lips in return.)~
IF~~ THEN EXIT
END
 
IF~~ THEN BEGIN SanBuySweet13
SAY ~ Everything I receive from you in love contains something magic for me in itself.~
IF ~~ THEN REPLY ~ Let us stop for a moment and let us all digest these fresh sweet grapes I just bought.~ GOTO SanBuySweet15
END
 
IF~~ THEN BEGIN SanBuySweet14
SAY ~ I am afraid I cannot let you go like that. You have raised my expectation so high, I need some compensation.~
IF ~~THEN REPLY~ Like this? (Kiss her lightly).~ GOTO SanBuySweet16
END

IF~~ THEN BEGIN SanBuySweet15
SAY ~ (Sandrah has taken a handful of the grapes and pushes your head back to look at the sky. She squeezes the juice from the grapes into your mouth, that you have opened when caught by the surprise.)~
IF~~THEN REPLY ~ Wow, the finest wine I ever tasted.~ EXIT
END

IF~~ THEN BEGIN SanBuySweet16
SAY ~ Hardly adequate. (Her hand around your neck is tender but nevertheless demanding, as she pulls your mouth down to hers for a long kiss.)~
IF ~~ THEN REPLY ~ Thank you for this advice, my teacher. I am glad you never tire to show me how to do things right.~ EXIT
END

IF ~~ THEN BEGIN Xanrevery1
SAY~ Are we not lovers who share exactly that, <CHARNAME> ?~
IF ~~ THEN REPLY ~ It is not about you and me this time, my love, it is about Xan.~ GOTO Xanrevery2
END

IF ~~ THEN BEGIN Xanrevery2
SAY ~ I have no secrets with him that you may not ask me about. It may even be easier to ask me then him. (Smiles conspiratorially.) We both know him too well, sweetheart.~
IF ~Race(Player1,ELF) ~ THEN REPLY ~ Did you experience the revery once with him?~ GOTO Xanrevery3
IF ~Race(Player1,HALF_ELF) ~ THEN REPLY ~ Did you experience the revery once with him?~ GOTO Xanrevery4
END

IF ~~ THEN BEGIN Xanrevery3
SAY ~ No, my dear, that is the priviledge of your race and an experience from which I will forever be excluded. ~
IF ~~ THEN REPLY ~ But you had every other sweet experience with him, so you may imagine how wonderful it is to share his revery with him.~ GOTO Xanrevery5
IF ~~ THEN REPLY ~ I am sorry, I did not think of that restriction. I just wanted to tell you how wonderful it is, not to make you feel the loss.~ GOTO Xanrevery5
END

IF ~~ THEN BEGIN Xanrevery4
SAY ~ No, my dear, that is the priviledge of your bein partly of his race and an experience from which I will forever be excluded.~
IF ~~ THEN REPLY ~ But you had every other sweet experience with him, so you may imagine how wonderful it is to share his revery with him.~ GOTO Xanrevery5
IF ~~ THEN REPLY ~ I am sorry, I did not think of that restriction. I just wanted to tell you how wonderful it is, not to make you feel the loss.~ GOTO Xanrevery5
END

IF ~~ THEN BEGIN Xanrevery5
SAY ~ You did not hurt me in any way, you just confirmed how much of a better choice you are for Xan in the end. I would never have been able to give him this ultimate fulfilment of my love. I am more than well rewarded to see you two have come to that wonderful point in your relationship.~
IF ~~ THEN REPLY ~ Oh, Sandrah, how much I love you!~ DO~ SetGlobal("Xanrever","LOCALS",1)~EXIT
END

// PID Package 11

IF ~ IsGabber(Player1) Global("SanPidPack","GLOBAL",11) ~ THEN BEGIN SanPCInit11
SAY ~ (Your wonderful lover's smile welcomes you.) <CHARNAME>?~
IF ~ GlobalGT("SanWDTemplWi","GLOBAL",8) Global("SanTmplHealL","LOCALS",0) ~ THEN REPLY ~ My love, you have taken quite an extraordinary risk to help a little girl you do not even even know. Your calling as a healer appears in a new light to me today.~ GOTO SanTmplHeal1
IF ~ GlobalGT("SanSharInt","GLOBAL",11) Global("SanSharCon","LOCALS",0) ~ THEN REPLY ~ You seem to go along with Shar-Teel quite well, Sandrah.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SanSharCon1
IF ~ GlobalGT("Santiax","LOCALS",3) Global("SantiaxPC","LOCALS",0)~ THEN REPLY ~ Tiax seems to think that your heritage in a way seems to imply what kind of future is waiting for you.~ GOTO SanTiaxPC1
IF~Global("CVGodag","GLOBAL",7)~THEN REPLY~My only heritage from Gorion appears to be the cult dagger of a Bhaalist, Sandrah. Does that make any sense to you? ~DO~SetGlobal("CVGodag","GLOBAL",8)~GOTO Godag11
IF ~RandomNum(3,1)~THEN REPLY~ You look hungry, my love, what do you think of a snack?~ GOTO LoveSnak1
IF ~RandomNum(3,2)~THEN REPLY~ You look hungry, my love, what do you think of a snack?~ GOTO LoveSnak2
IF ~RandomNum(3,3)~THEN REPLY~ You look hungry, my love, what do you think of a snack?~ GOTO LoveSnak3
IF~~ THEN REPLY ~ What would our day be if we cannot find a moment to tell each other of our love? (Embrace her and kiss her willingly offered lips.) ~ EXIT
IF ~ Global("Gorlet","LOCALS",0) GlobalGT("Formedcloth","GLOBAL",7)~ THEN REPLY ~ Sandrah, you must know on the day I found Gorion's dead body he had this letter, that Imoen had already seen before. The warning of what was approaching. ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",3)~GOTO GorLet1
IF~ Global("Drizztfight","GLOBAL",1) !InParty("Branwen") GlobalLT("SanDrizzt","GLOBAL",3) Global("SanFiSkills","LOCALS",0)~ THEN REPLY ~ It seems that the famous Drizzt Do'Urden knows you well, Sandrah? In a way I envy you for this.~ GOTO SanKnoDrizPC1
IF ~ GlobalGT("Sprite_is_DeadBandit","GLOBAL",25) Global("SanFiSkills","LOCALS",0) ~ THEN REPLY ~ Sandrah, with your background from Waterdeep, I am wondering where you learned to fight like that.~DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanFiSkills
IF~Global("ChartQuest","GLOBAL",1)GlobalGT("CalDone","GLOBAL",0)Global("SanMendas","LOCALS",0)~ THEN REPLY ~ Mmh, you would not by any chance know this Mendas of Waterdeep?~ GOTO SanMendas1
IF~ GlobalGT("RoadFound","GLOBAL",1) AreaCheck("bg2300") PartyHasItem("SanMap") ~ THEN REPLY ~ I am ready to start the journey to Waterdeep now, lead on, my love.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO WDTravl1
IF ~ Global("SanNarQ","GLOBAL",7) !Global("SanWDHi","GLOBAL",2) Global("SanVisWD","LOCALS",0)~ THEN REPLY~ Do you sometimes wish to visit your home at Waterdeep again, Sandrah? ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",3)~GOTO SanVisWD
IF ~ Global("SanNarQ","GLOBAL",7) Global("SanWDHi","GLOBAL",2) Global("SanVisWDFA","LOCALS",0)~ THEN REPLY~ Do you have to tell me something about that old man Jopi, Sandrah? ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanVisWDFA
IF~GlobalGT("Santiax","LOCALS",3)Global("SanTiaHealQ","LOCALS",0)~ THEN REPLY~Sandrah, can you imagine that Tiax could be healed from his megalomania?~ GOTO SanTiaHel1
IF ~ GlobalGT("SanWDTempleRha","GLOBAL",0) GlobalGT("SanWDTempleHint","GLOBAL",1) Global("SanWDRespect","LOCALS",0)~ THEN REPLY ~ Sandrah, you seem to be highly respected at the Waterdeep temple.~ GOTO SanWDRespct1
IF ~ Global("SanWDRespect","LOCALS",1)~ THEN REPLY ~ We have a bit of time now, Sandrah. Please tell me a bit of your position and relation to the famous Mystra Temple in Waterdeep.~ GOTO SanWDRespct5
IF~Global("BHHandSearch","GLOBAL",0) PartyHasItem("BHGHandn") PartyHasItem("BHGHand") ~THEN REPLY~Do you have any idea about this *Glorious Hand* issue, my learned counselor?~GOTO BHGHand
IF~ Global("SantalosDec","GLOBAL",10)~ THEN REPLY~What is it between you and Talos - or Mystra and Talos respectively? ~GOTO Talosvisit4
IF~Global("SanVsTalos","GLOBAL",1) Global("Talostlk","LOCALS",0)~THEN REPLY ~Now we have made ourselves some new *friends*, those that follow the Storm Lord Talos.~ GOTO SanTalosF1
IF~ Global("SanEdLoveBoy","LOCALS",2)~ THEN REPLY ~ Your former hate for the red wizard Edwin seems to have changed quite a bit, Sandrah?~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanEdLoveBoy20
IF~ Global("SanDesTroll","LOCALS",2) NumItemsPartyLT("arow04",5) AreaType(FOREST)  ~ THEN REPLY~ Sandrah, we are quickly running out of acid arrows. Can you provide us with some once again?~ GOTO SanAcArF
IF~ Global("SanDesTroll","LOCALS",2) NumItemsPartyLT("arow04",5) !AreaType(FOREST)  ~ THEN REPLY~ Sandrah, we are quickly running out of acid arrows. Can you provide us with some once again?~ GOTO SanAcArNF
IF ~ GlobalGT("Mothdream1","GLOBAL",6) Global("SammomQ","LOCALS",0) AreaType(OUTDOOR)~ THEN REPLY ~ Sandrah, would you mind to tell me a bit more about your mother. I am still totally confused by this dream or vision I had - and then to find her portrait with me. ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SammomQ1
IF ~ Global("SanNobility","LOCALS",0) AreaType(CITY) ~ THEN REPLY ~ As a child from a metropole's society I wonder how you feel about nobility and ranks and all such. ~DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SanSociety1
IF~PartyHasItem("SW1H19") Global("TheVaultVamp","GLOBAL",2) !See([ENEMY]) CombatCounter(0)~THEN REPLY~ Can you call the Vault Sentry to make our traveling faster, please.~ GOTO SanvaultSum
IF ~ GlobalLT("PidLock","LOCALS",2) ~ THEN REPLY ~ (You blow a lock of stray hairs from Sandrah's forehead.) How come you look so splendid, regardless how hard the battle or the march was? ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO Pidlock2
IF ~ Global("SanWoodSt","LOCALS",2) AreaType(DUNGEON)~ THEN REPLY ~ Can you provide us with some wooden stakes, Sandrah?~ GOTO SanMkStake5
IF ~ Global("SanOnBalduIsl","GLOBAL",1)~ THEN REPLY ~ Now, counselor, do you have any idea what we have to face here? ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO WWIsl1
IF~ InParty("Coran") Global("SanRomPath","GLOBAL",1) Global("SanCorMale","LOCALS",0)~ THEN REPLY ~ Sandrah, what do you make of our cute companion Coran? ~GOTO SanCorMal1
IF~ InParty("Coran") Global("SanRomPath","GLOBAL",2) Global("SanCorFem","LOCALS",0)~ THEN REPLY ~ Sandrah, what do you make of our cute companion Coran? ~GOTO SanCorFem1
IF ~ GlobalGT("Cowscroll","GLOBAL",9) Global("EdCursGon","LOCALS",0) ~ THEN REPLY ~ Mystra has finally taken her curse off from Edwin.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO EdCursGon1
IF ~Global("Formedcloth","GLOBAL",18)~ THEN REPLY ~ My love, I know you well enough to guess the thoughts you roll around in your pretty head may be the same that I have been working on all day. Let us see if our conclusions about Imoen are the same.~  DO~ IncrementGlobal("Sanpoints","GLOBAL",3)~GOTO SanImoBhaCon2
IF ~ Global("XanDecide","GLOBAL",3) InParty("Xan")~ THEN REPLY ~ Sandrah, my love, we must talk about Xan urgently.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",3)~GOTO Xanchos1
IF ~Global("SanBreBa","GLOBAL",2) ~ THEN REPLY ~ You and Breagar seem to be a bit at odds with each other.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanBreCon1
IF ~ Global("SanBranDec","GLOBAL",5)~ THEN REPLY ~ It feels a bit empty, Sandrah, without Branwen - even with the two of us together in love. Do you feel the same?~ DO~ IncrementGlobal("Sanpoints","GLOBAL",4)~GOTO BranLeft1
IF ~ Global("SanPCMarAj1","LOCALS",0) Global("X#AJANTISROMANCEACTIVE","GLOBAL",2)GlobalGT("SanAjanProp2","GLOBAL",2)~ THEN REPLY~ Sandrah, I would like to ask you for a favour regarding my relationship to Ajantis.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",4)~GOTO SanMarAj1
IF ~ Global("GithHint","LOCALS",0) Global("SanGithVS","GLOBAL",8)~ THEN REPLY ~ I am pondering these strange words of the Githyanki, *Among you is one destined to rise to the Weave*. ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",3)~GOTO GithHint1
IF ~ GlobalGT("SanBooTlk","GLOBAL",5) Global("MinskFlow","LOCALS",0) ~ THEN REPLY ~ That is a beautiful flower in your hair, Sandrah. Do you wear it for me?~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO MinscFlow1
IF~ Global("SanXanPC","GLOBAL",2)InParty("Xan")~THEN REPLY~ I observe you started to care for Xan quite a bit. Is it the healer that tries to cure this hopeless case?~DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SanXanPC13
IF ~ GlobalGT("Mothdream1","GLOBAL",6) Global("SammomQ","LOCALS",1)~ THEN REPLY ~ We started to talk about your mother a while back but we were interupted by this rainstorm. I would like to continue that issue, if you do not object.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SammomQ6
IF ~Global("SanBhaalRev","LOCALS",0) Global("SammomQ","LOCALS",2)~ THEN REPLY ~ Sandrah, you have indicated in recent conversations that the insemination of your mother by the God of Murder was a kind of revenge on Elminster. What did you mean by that? ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",3)~GOTO SanBhaalRev1
IF ~ Global("Chapter","GLOBAL",5) Dead("Davaeorn") Global("BSHunt1","LOCALS",0)  GlobalGT("WinskApp1","GLOBAL",8)~ THEN REPLY ~ This name Sarevok, I read him in the papers we found with Davaeorn. I have the feeling he says something to you.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO BSHunt1
IF ~ Global("SaOgmaIn","GLOBAL",6) AreaCheck("CVWOHA") ~  THEN REPLY ~This place does not really look like the kind of palace you must be used to, my love. ~DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SanloveHut1
IF~~ THEN REPLY ~ Oh, my light on this dreadful day. (Embrace Sandrah and give her a passionate kiss. ) ~ EXIT
IF~ InParty("Imoen2") Global("ImoBio1","LOCALS",0) ~ THEN REPLY ~ I never did regret to follow your advice to take Imoen along with us.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO ImoBio1
IF~ GlobalGT("SanNarQ","GLOBAL",6) !AreaType(OUTDOOR) Global("SanAdveFa","LOCALS",0) !AreaType(DUNGEON) ~ THEN REPLY ~ You mentioned sometime that you used to travel with your father a bit on his adventures, Sandrah. Tell me about it, please. ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SanAdvenE1
IF ~ Global("X#XALOVETALK","GLOBAL",39) InParty("XAN") Global("Xanrever","LOCALS",0) ~ THEN REPLY ~ May I ask you a very intimate question, my love? ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",3)~GOTO Xanrevery1
IF ~ Global("SanOrDiId","GLOBAL",3) ~ THEN REPLY ~ I want to talk with you now about that diary we found at Ulcaster, if you don't mind. ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO UlDarT
IF~Global("WDIntrotalk","LOCALS",2)OR(4)AreaCheck("CVROA2") AreaCheck("CVROA3") AreaCheck("CVElm1") AreaCheck("CVElm4")~ THEN REPLY~Can you tell me some more about Waterdeep?~  DO~SetGlobal("WDIntrotalk","LOCALS",4)~GOTO FirstWDIntro3
IF~Global("WDIntrotalk","LOCALS",3)OR(4)AreaCheck("CVROA2") AreaCheck("CVROA3") AreaCheck("CVElm1") AreaCheck("CVElm4")~ THEN REPLY~Can you tell me some more about Waterdeep?~  DO~SetGlobal("WDIntrotalk","LOCALS",4)~GOTO FirstWDIntro2
IF ~ Global("TORKIONNEEDYOU","GLOBAL",1) !PartyHasItem("Misc48") Global("SanTorq","LOCALS",0) ~ THEN REPLY ~ Sandrah, my little counselor, does your famous book tell us anything about this Torqion and the sword he requires from us? ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanTorq1
IF ~ !AreaType(DUNGEON) ~ THEN REPLY ~ I can hardly wait until the dusk will fall and we have time for a rest. I long for you, Sandrah.~ GOTO SanNight2Inv
IF ~ Global("SanPCGavInt","GLOBAL",1) Global("SanPCGavT","LOCALS",0) ~ THEN REPLY ~ Sandrah, I observe you talk quite a bit with Gavin. Say, dear, what do you think of him?~ DO~ IncrementGlobal("Sanpoints","GLOBAL",3)~GOTO SanPCGavT1
IF ~ TimeOfDay(NIGHT) AreaType(OUTDOOR) Global("NiteMass","LOCALS",0) ~ THEN REPLY ~ My back hurts badly and it's myself I have to blame. As the leader of our group I should have called us to rest already hours ago.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO NiteMass1
IF ~ Global("Formedcloth","GLOBAL",9)~ THEN REPLY ~ I am a Bhaalspawn then. Hence my dreams, my powers, the mysterious foe and assassins, Elminster's interest in me - your interest in me.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO PidBhaal10
IF ~Global("Homesail","GLOBAL",7)~THEN REPLY ~ Well, friends, let's make ourselves comfortable and learn from Sandrah what is so special about a pile of old parchments, that so many people had to die for them already.~ GOTO ZomHom13
IF~ Global("DimDay","GLOBAL",2) ~ THEN REPLY ~ I loved the song you performed with our wildcat the other day. I did not know about your musical skills before that.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanDimDay1
IF ~ Global("Formedcloth","GLOBAL",10)~ THEN REPLY ~ Sandrah, this is a good place for a rest. Friends, let us sit down and listen to Sandrah and a story that hopefully will bring some light into this confusing quest about my heritage. ~ GOTO PidBhaal13
IF ~ Global("SanOrDiId","GLOBAL",8) GlobalGT("Formedcloth","GLOBAL",5) ~ THEN REPLY ~ So we have come close to the enemy but the picture has not become clearer to me. You seemed to be able to make more out of that Orloth's appearance.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanWinskApp20
IF ~ Global("SanOrDiId","GLOBAL",8) GlobalLT("Formedcloth","GLOBAL",5) ~ THEN REPLY ~ So we have come close to the enemy but the picture has not become clearer to me. You seemed to be able to make more out of that Orloth's appearance.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanWinskApp30
IF~~THEN REPLY~Your hammer seems to be stuck.~GOTO SanHamCl
END

IF~~THEN BEGIN LoveSnak1 
SAY~ Something just attracted my appetite. (She comes up to you and starts to nibble gently at your earlobe.)~
IF~~THEN REPLY~ Eeek, it tickles...(laugh)~EXIT
END

IF~~THEN BEGIN LoveSnak2
SAY~ Something as sweet as honey would suit me well. (She comes very close and her tongue darts out suddenly to lick imaginary honey from your lips.)~
IF~~THEN REPLY~ (You manage to catch the tip of her tongue with your teeth.) I prefer tender young meat...~EXIT
END

IF~~THEN BEGIN LoveSnak3
SAY~ (Dreamily) Raspberries...chocolate pie...vanilla flan...~
IF~~THEN REPLY~ (Look into your backpack). A dried bisquit...a mouldy walnut...hey, here's a find - pickled herring, oh, but it looks like Haiass has nibbled on it already...Now, how about this. (You serve her a big kiss.)~ EXIT
END

IF~~THEN BEGIN  SanTmplHeal1
SAY ~ You have done the same, <CHARNAME>, have you forgotten already? It was your blood you gave that rescued Leyala. I was only Mystra's instrument in that.~
IF~~THEN REPLY ~ I observe that you are a bit shy to be appreciated for your enourmous healing abilities. Not even the high priests at the Temple were able to use the power of the Weave like you did.~ DO~ SetGlobal("SanTmplHealL","LOCALS",1) ~ GOTO SanTmplHeal2
END

IF~~THEN BEGIN  SanTmplHeal2
SAY ~ (Smiles) Do not forget that your eager counselor nearly killed the both of us in her blind attempt to do good by using powers that are beyond her control. I promise you this, I will not let such behaviour become a habit to me.~
IF~~THEN REPLY ~ We have paid the price but your goddess seems to have further plans for you. Rely on her protection.~ GOTO SanTmplHeal3
IF~~THEN REPLY ~ I have agreed with my free will to help you - and I do not regret it. Yet I know what you mean. We cannot do such things every day. However I do not think you acted foolishly or blind. I would call it a calculated risk instead, (laugh) if a risk really can be calculated at all.~EXIT
END


IF~~THEN BEGIN  SanTmplHeal3
SAY ~ Hm. I am reluctant to do so. As I have told you before, Mystra is not one to protect or guide her disciples on their everyday struggle.~
IF~~THEN REPLY ~ I see, let us not gamble our lives on the protection we might receive from any God. Let us explore and refine our own resources and rely on those.~ EXIT
IF~~THEN REPLY ~ Mystra helps those who attempt to help themselves - those were your own words once. I understand now that we have to make our own decicions and take our own risks and she might be our aid - or not.~EXIT
END

IF ~~ THEN BEGIN  BranLeft1
SAY ~ I do. Even though there was nothing we could have done about it. It was the risk involved in it from the very beginning.~
IF~~THEN REPLY ~ You have warned me about the possibility. But even though, I do not regret a single moment of it.~ DO ~ SetGlobal("SanBranDec","GLOBAL",6)~ GOTO BranLeft2
END

IF ~~ THEN BEGIN  BranLeft2
SAY ~ Neither do I. We will keep all these sweet moments we had with her in our common memory. Who knows, we may see her again some day on our travels.~
IF ~~ THEN REPLY ~ I love you, Sandrah. Let us raise our glasses to her and to many a victorious battle waiting ahead for us. This is the spirit she would expect from us.~ EXIT
IF ~~ THEN REPLY ~ You have sworn that Mystra will demand never such a step from you. I would not be able to take that loss, Sandrah. But this eve let us raise our glasses to her and to many a victorious battle waiting ahead for us. This is the spirit she would expect from us.~ EXIT
END

IF ~~ THEN BEGIN  MinscFlow1
SAY ~ I would wear one for you, if the space were not already occupied. This one is from a secret admirer.~
IF ~~ THEN REPLY ~ What. Who is it? ~ GOTO MinscFlow2
END

IF ~~ THEN BEGIN  MinscFlow2
SAY ~ (Smiles) The essence of a secret admirer is that he is secret, <CHARNAME>. Nothing however for you to worry about, I swear it to you.~
IF ~~ THEN REPLY ~ If you say so, I have no reason to doubt it. (Kiss her.) Don't blame me if I rise a bit earlier tomorrow morning, so I can be the one to give you my flower to wear for the new day.~ GOTO MinscFlow3
IF ~~ THEN REPLY ~ Hm, I will keep my eyes open, my love. You should warn your *secret admirer* about my deadly jealousy however. (Laugh and kiss her gently.)~ GOTO MinscFlow3
END

IF ~~ THEN BEGIN  MinscFlow3
SAY ~ (She responds to your kiss so passionately that any doubt about whom she loves is dismissed immediately.) ~
IF~~THEN DO ~ SetGlobal("MinskFlow","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN  EdCursGon1
SAY ~ Imagine that scum wanted to celebrate the event with me.~
IF ~Global("SanRomPath","GLOBAL",2)~ THEN REPLY ~ And you really could say no to *such* a man. I'm not so sure I would let such a chance go past.~ GOTO EdCursGon2
IF ~ Global("SanRomPath","GLOBAL",1)~ THEN REPLY ~ I am glad you let the chance go past. There is nothing he may have in all his sophistication and experience that I could not learn - with you.~ GOTO EdCursGon3
IF ~~ THEN REPLY ~ You should have taken the chance and learn something from him - just that the two of us can enjoy it together afterwards.~ GOTO EdCursGon4
END

IF ~~ THEN BEGIN  EdCursGon2
SAY ~ I would rather continue to learn it slowly bit by bit - together with you, like we have enjoyed to experience before.~
IF ~~ THEN REPLY ~ Oh, yes, this promise I can give you gladly. But say - were you in anyway involved in Mystra's change of mind, I can hardly imagine that? ~ DO ~ SetGlobal("EdCursGon","LOCALS",1)~ GOTO
EdCursGon5
END

IF ~~ THEN BEGIN  EdCursGon3
SAY ~ I take your promise verbally, <CHARNAME>, I would rather continue to learn it slowly bit by bit - together with you, like we have enjoyed to experience before.~
IF ~~ THEN REPLY ~ Oh, yes, this promise I can give you gladly. But say - were you in anyway involved in Mystra's change of mind, I can hardly imagine that? ~ DO ~ SetGlobal("EdCursGon","LOCALS",1)~ GOTO
EdCursGon5
END

IF ~~ THEN BEGIN  EdCursGon4
SAY ~ Darling, I am sure we do not need such help from one like Edwin. I would rather continue to learn it slowly bit by bit - together with you, like we have enjoyed to experience before.~
IF ~~ THEN REPLY ~ Oh, yes, this promise I can give you gladly. But say - were you in anyway involved in Mystra's change of mind, I can hardly imagine that? ~ DO ~ SetGlobal("EdCursGon","LOCALS",1)~ GOTO
EdCursGon5
END

IF ~~ THEN BEGIN  EdCursGon5
SAY ~ I have no idea why Mystra did that. I had nothing to do with her cursing him nor with her forgiving him again. I can only guess it is because he is with you and Mystra blesses your path - even in the presence of a red wizard.~
IF ~~ THEN REPLY~ I never doubted your statement on that before. Now I hope you and Edwin will get along a bit better - as comrades I mean.~ EXIT
IF~~ THEN REPLY~ I'm glad to hear once again that you were innocent of his curse, but I still would not have blamed you for being a bit more active towards Mystra to undo the curse.~ EXIT
IF~~ THEN REPLY~ The ways of your goddess, if you don't know them, then how could I? It's just good that this internal quarrel in the group is now over. Try to be a bit more cooperative with Edwin, please, out of love for me.~ EXIT
END

IF~~THEN BEGIN SanTalosF1
SAY~You have at the same time won the respect of a priestess of Mystra and through that increased the sympathy of her goddess for you. This should weight much more than the ever-changing whims of the Lord of Destruction.~
IF~~THEN REPLY~ A bit more stability in my life does never hurt.~ GOTO SanTalosF2
IF~~THEN REPLY~ One mighty foe more or less, haha. (You try to sound self-assured but you are not.)~ GOTO SanTalosF2
END

IF~~THEN BEGIN SanTalosF2
SAY~A confrontation with the Storm Lord would have come sooner or later anyway, <CHARNAME>.~
IF~GlobalGT("PCKnowsElmDaughter","GLOBAL",0)~THEN REPLY~ What do you mean?~ DO~SetGlobal("Talostlk","LOCALS",1)~GOTO SanTalosF3
IF~Global("PCKnowsElmDaughter","GLOBAL",0)~THEN REPLY~ What do you mean?~ DO~SetGlobal("Talostlk","LOCALS",1)~GOTO SanTalosF3n
END

IF~~THEN BEGIN SanTalosF3
SAY~ You are starting to become a prominent figure on the Sword Coast, my love. And you are harbouring Elminster's daughter in your company. It is unavoidable for you to gather the unwanted attention of the evil forces of Faerun one of these days.~
IF~~THEN REPLY~ It's just bad timing then, I guess.~ GOTO SanTalosF4
IF~~THEN REPLY~ We are torn deeper and deeper into this maelstrom of forces that we cannot defend...~GOTO SanTalosF4
END

IF~~THEN BEGIN SanTalosF3n
SAY~ You are starting to become a prominent figure on the Sword Coast, my love. And you are harbouring Mystra's priestess in your company. It is unavoidable for you to gather the unwanted attention of the evil forces of Faerun one of these days.~
IF~~THEN REPLY~ It's just bad timing then, I guess.~ GOTO SanTalosF4
IF~~THEN REPLY~ We are torn deeper and deeper into this maelstrom of forces that we cannot defend...~GOTO SanTalosF4
END

IF~~THEN BEGIN SanTalosF4
SAY~Darkness and light, <CHARNAME>. Talos has as many opponents as he has powerful followers. To be visible as a possible oponent may as well mean that you will become an interesting ally for some others.~
IF~PartyHasItem("soaitm01")~THEN REPLY~ Maybe someone is interested in this item from Mecorima we have gained.~EXIT
IF~~THEN REPLY~ I would not object if they show their sympathy and support a bit more open. (Sigh).~GOTO SanTalosF5
IF~~THEN REPLY~ Nice words...I would prefer strong arms at my side.~GOTO SanTalosF5
END

IF~~THEN BEGIN SanTalosF5
SAY~(Mumbles) I am here, in case you forgot...~
IF~~THEN EXIT
END

IF ~~ THEN BEGIN GithHint1
SAY ~ To rise to The Weave, not a very common expression. The Weave that provides the energy and power used by the gods. But *to rise to it*?~
IF~~THEN REPLY ~ As a healer you are granted access to the Weave, isn't that so?~  GOTO GithHint2
IF~~THEN REPLY ~ Whatever it means, it refers to one of the females in our group.~ GOTO GithHint2
END

IF ~~ THEN BEGIN GithHint2
SAY ~ Healers are said to gain their power from the god they serve and they use the power of the Weave for their work. But that is surely not meant here. He also said that his folk would *greet her on that day*. So one of us females in the group.~
IF~~THEN REPLY ~ I agree, it is not about healing. It sounds like something to happen in the future, something more permanent. One of the women here will *rise*, but to what or where. These Githyanki travel other planes than our material one - they will greet her on one of those. ~ DO ~ SetGlobal("GithHint","LOCALS",1)~ GOTO GithHint3
END

IF ~~ THEN BEGIN GithHint3
SAY ~ The Githyanki travel indeed other planes, some say even those of the gods. I heard this strange expression once - from my father - he was telling me about the woman Midnight who became the goddess Mystra. He used this expression, *she was raised to the Weave". ~
IF ~~ THEN REPLY ~ The woman Midnight, your grandmother, whose example and way you try to follow. Who became the goddess you serve when she was raised to the Weave. Coincidence?~ GOTO GithHint4
IF~Global("SanRomPath","GLOBAL",2)~ THEN REPLY ~ I hope it is not again about the Bhaal prophesies and the spawn trying to raise to godhood following her father. ~ GOTO GithHint5
IF ~~ THEN REPLY ~ One of the women here destined to visit the gods, to travel their plane one day? Or even become a goddess?~ GOTO GithHint6
END

IF ~~ THEN BEGIN GithHint4
SAY ~ Hm. I follow Midnight's way as I see she did the right things. And she is Mystra now, part and inhabitant of the Weave. Am I granted the priviledge to see her one day? I sure would have a lot to tell her and especially to ask her. About me - about you - about my father - about herself.~
IF ~~ THEN REPLY ~ A possible explanation, but not the only one.~ EXIT
IF~InParty("CVJenlig")~THEN REPLY~Maybe Jen'lig can provide us with some insight here?~EXTERN CVJenliJ GithhintJ1
END

IF ~~ THEN BEGIN GithHint5
SAY ~ Would the Githyanki look forward to greet the new goddess of murder? They are a warrior race, brutal, oppressive and selfish. But they are not known to be especially fond of Bhaal. ~
IF ~~ THEN REPLY ~ I am glad to hear that, otherwise it would really mean one of us Bhaalspawns here would be the new god of murder and not the one to stop the rising spawn.~ EXIT
IF ~~ THEN REPLY ~ Then maybe one of us will rise to the Weave to deliver this message, the message that the *rising god* will not arrive.~ EXIT
IF~InParty("CVJenlig")~THEN REPLY~Maybe Jen'lig can provide us with some insight here.?~EXTERN CVJenliJ GithhintJ1
END

IF ~~ THEN BEGIN GithHint6
SAY~ Beware! We heard already about the one *rising god*. No future goddess of murder is among us, <CHARNAME>! ~
IF ~~ THEN REPLY ~ Then maybe one of us will rise to the Weave to deliver this message, the message that the *rising god* will not arrive.~ EXIT
IF~InParty("CVJenlig")~THEN REPLY~Maybe Jen'lig can provide us with some insight here.?~EXTERN CVJenliJ GithhintJ1
END

IF ~~ THEN BEGIN SanBreCon1
SAY ~ It looks like I am the incarnation of the arch evil for him.~
IF~~THEN REPLY ~ You? Hard to believe!~ GOTO SanBreCon2
IF~~THEN REPLY ~ Are you too tall for his liking?~ GOTO SanBreCon2
IF~~THEN REPLY ~ I do not want my companions to quarrel with each other. I expect you to apologize to him, if you have hurt him in any way.~ GOTO SanBreCon2
END

IF ~~ THEN BEGIN SanBreCon2
SAY ~ There is not much I can do from my side. I practice the magic arts, and even worse, I am a priestess of the goddess of magic. Nothing can be more horrible in his eyes.~
IF~~THEN REPLY ~ But you use all your abilities for the sake of our party. He profits from your healing skills as well as anyone else. That should make him see your value in a bit of time, don't you think?~ GOTO SanBreCon3
END

IF ~~ THEN BEGIN SanBreCon3
SAY ~ (Laughs trenchant.) Maybe his horizon is a bit limited, he cannot see as far as taller people can.~
IF~~THEN REPLY ~Please, Sandrah, I can see you are hurt by such narrow mindedness, but please do not make it worse. I cannot change a granite headed dwarf's oppinions, so I beg you to just be strong enough to ignore his insults.~ GOTO SanBreCon4
END

IF ~~ THEN BEGIN SanBreCon4
SAY ~ (Grimly) I will - for you. I just keep my chin up and look beyond him.~
IF ~~ THEN DO~ SetGlobal("SanBreBa","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN  SanSociety1
SAY ~ Huh, <CHARNAME>, do not walk so close to me, please, we might be seen together. My, what would people think! (Laughs heartily.)~
IF~~THEN REPLY ~Right, I confess my question came out a bit silly. I mean I know that obviously you don't care at all about such things. ~ DO~SetGlobal("SanNobility","LOCALS",1)~ GOTO SanSociety2
END

IF ~~ THEN BEGIN  SanSociety2
SAY ~ I try to take people for what they are and pay them the respect I think they deserve, not the one they appoint to themselves by fancy or inherited titles.~
IF~~THEN REPLY ~ You seem to treat all nobles, dukes and such as your equal and I bet you wouldn't even bow to a king. But isn't part of the respect people pay to you due to your father.~ GOTO SanSociety3
END

IF ~~ THEN BEGIN  SanSociety3
SAY ~ I admit that, but I already told you long ago that my aim is to be recognised for my own deeds and not for being Elminster's daughter. I think I can well distinguish between those who compliment me for my own sake and those who do it due to my father.~
IF ~~ THEN REPLY ~ What is the status of your father in Waterdeep or in the Realms. Is he one of the masked rulers of the city of splendor or Mystra's archpriest - or both?~ GOTO SanSociety4
END

IF ~~ THEN BEGIN  SanSociety4
SAY ~ (Laughs) Elminster is...Elminster, no titles, no land to rule. He is himself and at home where he lays his head. He is the most free man I know.~
IF ~~ THEN REPLY ~ As seems to be his daughter. Yes, and I love and respect you for that.~ GOTO SanSociety5
IF ~~ THEN REPLY ~ His influence on you cannot be denied. You follow him in that, but I understand you do it by your own choice and not by any other obligation. And you follow the path of your grandmother Midnight.~GOTO SanSociety5
IF ~~ THEN REPLY ~ You free yourself of your heritage first, but then you voluntarily follow your father's ways. Complicated, but I guess I understand you.~ GOTO SanSociety5
IF ~~THEN REPLY~ An arrogant fool thinking to be better than any of us. You can't deny that you're his daughter and heiress.~DO~IncrementGlobal("Sanpoints","Global",-2)~EXIT
END

IF ~~ THEN BEGIN  SanSociety5
SAY ~ Actually it is for me to pay my respect to you, my love. With the heritage that is yours and a majority of people believing that your path is set by this, you overcome it all to be - you. I love you.~
IF~~ THEN EXIT
END


IF ~~THEN BEGIN ZomHom13
SAY ~ This is about an ancient legend that is common to all the older races on Toril, like the elves, the orcs and the dwarfs. For many it is more than just a legend but a place that really exists.~
=~ Sharkta Fai - according to their belief - is a fountain that is said to restore the bodies of those who have fallen in battle before they go hale to the next world after life. It is guarded by a mighty watcher who makes sure that only those who deserve it will be cleaned and restored by the fountain. Any living creature attempting to use it will lose its life to the Guardian without any hope to enter the afterworld.~
= ~ Some necromancers however think, that if a living creature bathes in the fountain, it will not only be restored with enourmous power but also will gain endless life.~
IF ~~ THEN REPLY ~ This will explain the pirate's actions. The prospect of eternal life is reason enough for such a man to kill a whole ship crew and more.~ GOTO ZomHom14
END

IF ~~THEN BEGIN ZomHom14
SAY ~ After his deeds so far we can be sure that he will not stop until he has found the papers and us. Regardless how useless they will be for him. It is my impression that he does not know this little bit yet.~
IF ~~ THEN REPLY ~ Useless? You mean that all his crimes and all our own adventures have been on behalf of a useless stack of parchments? You cannot be true, Sandrah, you must have missed something in your studies...~ GOTO ZomHom15
END

IF ~~THEN BEGIN ZomHom15
SAY ~ <CHARNAME>, if I say useless, I mean that from the pirate's point of view. The papers themselves tell a lot about the fountain, even that it is located in the Stormhorn Mountains, far up in the North of Faerun. But two important bits of information are missing in the stack.~
= ~ One is the exact location in the large lands up there which are the land of the Clan Orcs, orcs much stronger and wilder than any we encounter down here on the Sword Coast.~
= ~ The second missing part is the way how to enter Sharkta Fai. It has not a door you just open and step in. The papers mention a stone and a ritual to be used for that, but nothing more.~
IF ~~ THEN REPLY ~ And you mean that Monteelah does not know about those missing parts?~ GOTO ZomHom16
END

IF ~~THEN BEGIN ZomHom16
SAY ~ I am sure he has not yet studied those papers himself, otherwise he would not have hidden them and now would need to hunt them. If he had, he would not need them anymore but would rather be out to find those two missing parts. The papers come from different sources and are written in quite a number of differents scripts and old languages. I doubt that a pirate has the knowledge to decipher them. He would need a very learned scholar for such a task.~
IF ~~ THEN REPLY ~ Someone like you then, my knowledgeable counselor. But tell me, who do you think has taken the missing bits from the stack then?~ GOTO ZomHom17
END

IF ~~THEN BEGIN ZomHom17
SAY ~ You are making the assumption that they were in the stack, <CHARNAME>. Well, that might have been the case or not, I have no evidence. The papers, like I said, are a collection of vast parchments on the subject. Many of them are redundant but none of them contains the complete picture. Whoever collected them together may or may not have found the missing parts.~
IF ~~ THEN REPLY ~ Hm. so let me think. We have different possibilities. The missing parts were never in the stack, but Monteelah does not even know that. Or, they were originally in the stack but are missing now.~ GOTO ZomHom18
END

IF ~~THEN BEGIN ZomHom18
SAY ~ With again two possibilities. They were already missing before Monteelah got them into his possession. Which would mean, that the original collector knew he would only really need these crucial bits and we just look at the leftovers here.~
IF ~~ THEN REPLY ~ Or they were taken from Monteelah by someone else. This same mysterious someone we have sensed all the time somehow. The one from whom the pirate himself was trying to hide with his faked death in Ulgoth's beard.~ DO~ SetGlobal("Homesail","GLOBAL",8)~GOTO ZomHom19
END

IF ~~THEN BEGIN ZomHom19
SAY ~ So this is the end of this story then, friends.~
IF ~~ THEN REPLY ~ So the entrance to the afterlife is by a heroic death but not by these papers, just in case anybody wants that already, haha.~ EXIT
IF ~~ THEN REPLY ~ So we can just get rid of these papers, or hand them to Monteelah, in case he asks us politely enough for them. There is not the threat of a king of pirates with eternal life.~ EXIT
IF ~~ THEN REPLY ~ So we can just hand these papers to Monteelah, in case he asks us politely enough for them. We will get rid of him, at least until he finds out about their contents himself and assumes that we have the missing parts. If he ever will.~ EXIT
END

IF ~~ THEN BEGIN BSHunt1
SAY ~ It is good to ask, <CHARNAME>, I was waiting for a chance to tell you already. As you know I had the suspicion for a long time, that our true enemy behind this one-man-behind-another-man intrigue would be a Bhaalspawn lusting for power.~
= ~ Now I am about sure that I was right.~
IF ~~ THEN REPLY ~ And this Bhaalspawn is this Sarevok, you mean?~ GOTO BSHunt2
END

IF ~~ THEN BEGIN BSHunt2
SAY ~ Ever since I learned how my poor mother had to die, I studied all the lore about the Bhaalspawn topic I could get a hand on. And you can imagine that in Elminster's house that means something, especially with my father having a similar interest. So there are some names I came across when travelling with my father or spying a bit in his study or with the Shard.~
= ~ There are some people all over Toril that for some reason or other have shown some special abilities, talents and such that point to a Bhaalspawn. My father was observing some of them if he was unsure about them or the direction they would take.~
IF ~~ THEN REPLY ~ And this Sarevok was one of them?~ GOTO BSHunt3
END

IF ~~ THEN BEGIN BSHunt3
SAY ~ Yes. A young man, about your own age, so born at the Times of Trouble when Bhaal spread his seed over Faerun. He showed enourmous physical and mental powers early on. But then all of a sudden he disappeared without a trace. My suspicion is now, that this Orloth we encountered finally found him.~
IF ~~ THEN REPLY ~ So like you told earlier, this Sarevok and his Bhaal powers are misused by this strange Rashemen wizard - but how does that fit to Gorion's death, his hunting us and finally the whole iron crisis?~ GOTO BSHunt4
END

IF ~~ THEN BEGIN BSHunt4
SAY ~ That is exactly the question, <CHARNAME>. I am afraid the answer is, that it does not fit. And that worries me more than everything else.~
IF ~~ THEN REPLY ~ Why?~ GOTO BSHunt5
END

IF ~~ THEN BEGIN BSHunt5
SAY ~ Because it leads me to believe that Sarevok has rather used the Orloth than vice versa. He has learned all he could from this wizard of significant power, but now he is using what he has learned for his own purpose.~
IF ~~ THEN REPLY ~ But what might that purpose be and how does it explain our role in it?~  GOTO BSHunt6
END

IF ~~ THEN BEGIN BSHunt6
SAY ~ The prophesies of Alaundo, <CHARNAME>! Sarevok attempts to fulfil them, with himself rising to Bhaal's throne. Remember the Orloth's warning about the *rising god*. This crisis and the possible war with Amn, that will be a bloodshed to feed the growing power of the God of Murder.~
IF ~~ THEN REPLY ~ Gorion's death, my dreams about rivers of blood. For whatever reason he seems to know that I would be the one to try and stop him. But I guess he doesn't know that I have you by my side in this.~DO ~ SetGlobal("BSHunt1","LOCALS",1)~EXIT
END


IF~~THEN BEGIN SanWinskApp20
SAY ~ By now you have certainly found one of my methods of investigation. Pretend that you know more than you actually do and bluff the rest out of your subject. It worked well on this guy again.~
IF ~~ THEN REPLY ~ Let me catch up with you. He is the same one that way back then chased Gorion and Winthrop with the babies across the Sword Coast. But it seems he had failed. Due to your father's involvement. Right so far?~ GOTO SanWinskApp21
END

IF~~THEN BEGIN SanWinskApp21
SAY ~ Perfectly right. Those children were special in their heritage and their abilities. ~
IF ~~ THEN REPLY ~ Bhaalspawns, destined to grow in them the powers of the God of Murder. Your father and his friends protected them - as we know him, he did it to prevent them being mistreated and misused for an evil purpose. A purpose like that one of the Orloth.~ GOTO SanWinskApp22
END

IF~~THEN BEGIN SanWinskApp22
SAY ~ Again perfectly right. But the Orloth did not get them, so much he confessed to my bluff. They came safely to Candlekeep. But somehow he got possession of another one, Sarevok. Mind that the God of Murder has spread his spawn widely to make sure enough of his blood would survive.~
= ~ So the Orloth in the end succeeded to find Sarevok to raise and train him to his liking. At least initially. Sarevok is behind the events we are currently dealing with.~
IF ~~ THEN REPLY ~ And he is the armoured figure that killed Gorion!~ GOTO SanWinskApp23
END

IF~~THEN BEGIN SanWinskApp23
SAY ~ That is very likely the case. As well as the fact that he is not doing what his mentor had expected him to do. The powers of Bhaal have taken on their own shape, the Orloth is no longer his master. Things have gone out of control, but not only for this misguided wizard. The Bhaalspawn has become a threat for the whole Sword Coast by now. And we are in the middle of events - and maybe the only ones who can still stop him.~
IF ~~ THEN REPLY ~ So you knew it - my mission and your mission are in the end the same. You found the spawn your father had protected to lead him against the one that rises to follow his godly father. Only a Bhaalspawn has the power to defeat another Bhaalspawn. You found me!~ GOTO SanWinskApp24
END

IF~~THEN BEGIN SanWinskApp24
SAY ~ This time you are not fully right, <CHARNAME>. I did not know all of that from the beginning. All I knew was, you were the key to this whole mystery, one of those children. And then I fell in love with you and everything has changed. My reason to be by your side now is - you.~
= ~ And still you are right. You are now the one to stop the one who tries to become the God of Murder.~
IF ~~ THEN REPLY ~ Let me think about all of that in a quiet moment, if we still are granted one in these days. I feel you tell the truth and you always did. And I know that you love me and I will hold on to that for strength.~ DO ~ SetGlobal("SanOrDiId","GLOBAL",9)~EXIT
END

IF~~THEN BEGIN SanWinskApp30
SAY ~ By now you have certainly found one of my methods of investigation. Pretend that you know more than you actually do and bluff the rest out of your subject. It worked well on this guy again.~
IF ~~ THEN REPLY ~ Let me catch up with you. He is the same one that way back then chased the refugees with the babies across the Sword Coast. But it seems he had failed. Due to your father's involvement. Right so far?~ GOTO SanWinskApp31
END

IF~~THEN BEGIN SanWinskApp31
SAY ~ Perfectly right. Those children were special in their heritage and their abilities.~
IF ~~ THEN REPLY ~ Bhaalspawns, destined to grow in them the powers of the God of Murder. Your father protected them - as we know him, he did it to prevent them being mistreated and misused for an evil purpose. A purpose like that one of the Orloth.~ GOTO SanWinskApp32
END

IF~~THEN BEGIN SanWinskApp32
SAY ~ Again perfectly right. But the Orloth did not get them, so much he confessed to my bluff. But somehow he got possession of another one, Sarevok. Mind that the God of Murder has spread his spawn widely to make sure enough of his blood would survive.~
= ~ So the Orloth in the end succeeded to find his spawn and to raise and train him to his liking. At least initially. We know now that it is this spawn that is behind the events we are currently dealing with.~
IF ~~ THEN REPLY ~ And he is the armoured figure that killed Gorion!~ GOTO SanWinskApp33
END

IF~~THEN BEGIN SanWinskApp33
SAY ~ That is very likely the case. As well as the fact that he is not doing what his mentor had expected him to do. The powers of Bhaal have taken on their own shape, the Orloth is no longer his master. Things have gone out of control, but not only for this misguided wizard. The Bhaalspawn has become a threat for the whole Sword Coast by now. And we are in the middle of events - and maybe the only ones who can still stop him.~
IF ~~ THEN REPLY ~ So you knew it - my mission and your mission are in the end the same. You found the spawn your father had protected to lead him against the one that rises to follow his godly father. Only a Bhaalspawn has the power to defeat another Bhaalspawn. You found me!~ GOTO SanWinskApp34
END

IF~~THEN BEGIN SanWinskApp34
SAY ~ This time you are not fully right, <CHARNAME>. I did not know all of that from the beginning. All I knew was, you were the key to this whole mystery. And then I fell in love with you and everything has changed. My reason to be by your side now is - you.~
= ~ And still you are right. You are one of the children that were hunted and you are now the one to stop the one who tries to become the God of Murder.~
IF ~~ THEN REPLY ~ Let me think about all of that in a quiet moment, if we still are granted one in these days. I feel you tell the truth and you always did. And I know that you love me and I will hold on to that for strength.~ DO ~ SetGlobal("SanOrDiId","GLOBAL",9)~EXIT
END

IF~~THEN BEGIN NiteMass1
SAY ~ You will feel like brandnew in a few minutes, my love, if you follow my healer's advice strictly. Lay down on this blanket face down now.~
IF ~~ THEN REPLY ~ (Follow her advice.)~ GOTO NiteMass3
IF ~~ THEN REPLY ~ In a minute, I first must...(You find yourself face down on the blanket by her feet. You have hardly recognised the slight push and your feet suddenly loosing their grip below you.) ~ GOTO NiteMass2
IF~~ THEN REPLY ~ But...~ GOTO NiteMass2
END

IF ~~ THEN BEGIN NiteMass2
SAY~ No *ifs or buts*. Be leader tomorrow again, now the healer is in command.~
IF~~THEN GOTO NiteMass3
END

IF ~~ THEN BEGIN NiteMass3   
SAY~ (Your armour and boots are removed within seconds. You feel her hands move under your shirt at the back, they feel cool from some creamy substance she uses. Slowly her massage begins to remove the strain and aches from your muscles)~
IF ~~ THEN REPLY ~ Oooh, yes. Continue, sweetheart.~ GOTO NiteMass4
IF ~~ THEN REPLY ~ (You make a playful attempt to escape her. She just applies two fingertips to a specific nerve near your left shoulder and you sink back helplessly to the blanket. Resistance seems to be pointless here.)~ GOTO NiteMass4
END

IF ~~ THEN BEGIN NiteMass4
SAY~ (The darkness is now complete around you and Sandrah removes your remaining clothes bit by bit, massaging carefully every new part of your body that becomes undressed.)~
IF ~~ THEN REPLY ~ (She has turned you now on your back and starts her work on the front part of your body. Whenever you get a chance, you manage to remove a part of her clothes in return.)~ DO ~ SetGlobal("NiteMass","LOCALS",1)~ GOTO NiteMass5
END

IF ~~ THEN BEGIN NiteMass5
SAY~ (It does not take long for both of you to be completely naked. The massage has slowly turned from the medical to a more erotic treatment of your body.)~
IF ~~ THEN REPLY ~ (You now start to return the caresses to Sandrah as the healer turns into a lover. As Sandrah gets more and more aroused, you feel it necessary to silence her mouth with your own lips and tongue - you do not want to keep your tired comrades awake at this hour...)~ DO ~ RestParty()~ EXIT
END


IF ~~ THEN BEGIN  SanMarAj1
SAY~ I will do anything that will make you two happy together, my sweetheart.~
IF ~~ THEN REPLY ~ It is about our marriage plans, Sandrah.~ GOTO SanMarAj2
IF ~~ THEN REPLY ~ You have seen the ring Ajantis gave me. It is an engagement ring - so that means there will be a marriage some time.~ GOTO SanMarAj2
END

IF ~~ THEN BEGIN  SanMarAj2
SAY~ Yes, Ajantis told me already. Before you ask me anything, please grant me one small wish, <CHARNAME>. Let me help you to choose your wedding dress. (Giggles) I promise it will not be pink.~
IF~~ THEN REPLY ~ Of course you must do that. I was about to ask you for your advice on that subject anyway. But I wanted to ask you for even more. I want you to be my maid of honor on the celebration.~ DO ~SetGlobal("SanPCMarAj1","LOCALS",1)~ GOTO SanMarAj3
END

IF ~~ THEN BEGIN  SanMarAj3
SAY~ With pleasure. I can be as close as possible to you on that special event. And near Ajantis, too. But is there already a date set for the fortunate event?~
IF~~ THEN REPLY ~ Ajantis has suggested to wait until he is knighted. You know how important this is to him. And I have agreed, I mean, why hurry as long as I have my loving man by my side.~ GOTO SanMarAj4
END

IF ~~ THEN BEGIN  SanMarAj4
SAY~ I see. Yes - I mean it makes him happy and it will make this special day in your life a real splendid occassion, with knights and their ladies and all of us dressed up for the event. And I guess the hero and heroine of the Sword Coast will have their big day in the Helm's Temple in Amn.~
IF~~THEN REPLY ~ Amn? But that will not be possible with the threat of a war we have?~ GOTO SanMarAj5
IF~~THEN REPLY ~ That is the headquarter of the order, isn't it? A real large temple. How would we get there and then, would the authorities admit us there?~ GOTO SanMarAj5
END

IF ~~ THEN BEGIN  SanMarAj5
SAY~ If our mission will succeed, everything will look much different, my love. Not only the war threat will hopefully vanish into thin air, but also Ajantis will become a knight of the order.~
= ~ With the influence of his family and your own reputation as the heroine of the Sword Coast and the foster child of the famous Gorion, it is not just a dream to walk down the aisle of the Temple of Amn as the proud bride you deserve to be, my little princess.~
IF~~THEN REPLY ~ Oh, Sandrah you are so wonderful! Your fantastic visions make any waiting for the great day worthwhile. But I am sure it will still take some time until then.~ GOTO SanMarAj6
END

IF ~~ THEN BEGIN  SanMarAj6
SAY ~ Does time really matter. You have a husband for life already, marriage or not,  and you can live and savour every single day of it.~
IF~~THEN REPLY ~ And I will! With him and with you. (You kiss Sandrah dearly and then look for your future husband to tell him the news.) ~ EXIT
END

IF~~THEN BEGIN ImoBio1
SAY~ If I joke with her about being *besta friends*, we both know in our hearts that it is the truth. She really is my best friend and yours. It is magnificent to see her grow and develop her personality almost daily.~
IF ~~ THEN REPLY ~ She is in deed strong and full of enthusiasm. I would really miss her if she would not be in our group.~ GOTO ImoBio2
IF ~~ THEN REPLY ~ One has to be strong to endure her but - yes - she is growing constantly and somehow the nerves you have to invest seem to pay back.~ GOTO ImoBio2
END

IF~~THEN BEGIN ImoBio2
SAY ~ I still hope we will find out a bit about her past and heritage, even if she herself does not seem to care about that as much as you care about yours.~
IF ~~ THEN REPLY ~ I thought it was you who said that one must look behind Imoen's easy going facade. It is not that she has sleepless nights about not knowing where she came from but I still think she cares a bit for it.~  GOTO ImoBio3
END

IF~~THEN BEGIN ImoBio3
SAY ~ She still tries to find out who she really is. Just as we do. And in order to do this one needs to know about the past as well. With her we have even fewer clues than we have for you.~
IF ~~ THEN REPLY ~ If we could only manage to get back into Candlekeep. Winthrop must know something, maybe he even knows something about my past.~ DO ~ SetGlobal("ImoBio1","LOCALS",1)~ EXIT
END

IF~~ THEN BEGIN SanDimDay1
SAY ~ And Shar-Teel's beautiful voice was quite a surprise as well, I guess. She really could have been someone completely different if her damned father had not stood in the way.~
IF ~~ THEN REPLY~ It is an adventure to bring it all to the light piece by piece. It is really worth doing so.~ DO ~ SetGlobal("DimDay","GLOBAL",3) ~ GOTO SanDimDay2
END

IF~~ THEN BEGIN SanDimDay2
SAY ~ From what I have heard, my musical side must be part of my mother's heritage. Elminster has many talents, but singing? Huuh, he may use that as a weapon like those wailing deadbringers I have read about.~
IF ~~ THEN REPLY~ Imagine that, my love, our own place one day - you sit down to play some tune while Shar-Teel's beautiful voice fills the room. And I - I will silently adore you both, with my own voice similar to your father's.~ GOTO SanDimDay4
IF ~~ THEN REPLY~ What about your own singing, Sandrah? I just imagine my two lovecats performing a duet for me.~ GOTO SanDimDay3
END

IF~~ THEN BEGIN SanDimDay3
SAY ~ *Cat* is the keyword here. it will sound like that, I am afraid. I can play quite some instruments but I better keep my mouth shut. Sorry but the voice is Elminster's ingredience to my musical side.~
IF ~~ THEN REPLY~ One cannot have all. And I am quite lucky to be able to compensate it with my other girl. (Laugh and kiss her gently.)~ EXIT
END

IF~~ THEN BEGIN SanDimDay4
SAY ~ Ha, slowpoke, we will get some sounds out of you afterwards. So much pleasure is never for free, my *loverboy*.~
IF ~~ THEN REPLY~ One cannot have all. But some prices are happily paid, pussycat. (Laugh and kiss her gently.)~ EXIT
END

IF~~THEN BEGIN BHGHand
SAY~I have discovered in my tome that the Glorious Hand is made from the hand of a dead thief. Another interesting fact is that Restenford used to have a thieves guild. Baron Grellus destroyed it when he became the baron. It was located in the sewers under the west side of town.~
IF~~THEN REPLY~Hm, that sheds some light on it but does not really explain it for me.~EXIT
IF~~THEN REPLY~There is that hanging tree near the Restenford temple. I guess we should find out if there was a thief executed there recently - maybe his hand is missing...~DO~ SetGlobal("BHHandSearch","GLOBAL",2) SetGlobal("BHHandSewerOpen","GLOBAL",1) ~EXIT
END


// PID Package 12 - After candlekeep

IF ~ IsGabber(Player1) Global("SanPidPack","GLOBAL",12) ~ THEN BEGIN SanPCInit12
SAY ~ (As you approach her, Sandrah's eyes sparkle and her lips display that undecipherable smile you love so much.)~
IF ~ Global("Criminal","GLOBAL",1) ~ THEN REPLY ~ I was wondering about one thing from Gorion's letter about my heritage, Sandrah.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",4)~GOTO Gorlover1
IF ~ AreaType(OUTDOOR) !TimeOfDay(DAY) GlobalLT("SanCampFire","LOCALS",3)~ THEN REPLY ~ (Sandrah has taken off her armour and stretches her wonderous body in the dim light letting you admire her beauty and grace to full extend. Once again you recognise in wonder how young and fragile your companion is - a fact you tend to forget when she acts as your fighter cleric in the daily battles.)~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO CampireSc1
IF~Global("CVGodag","GLOBAL",7)~THEN REPLY~My only heritage from Gorion appears to be the cult dagger of a Bhaalist, Sandrah. Does that make any sense to you? ~DO~SetGlobal("CVGodag","GLOBAL",8)~GOTO Godag11
IF ~~ THEN REPLY ~ I cannot hold it back another moment, Sandrah. I love you.~ EXIT
IF ~ GlobalGT("SanSharInt","GLOBAL",11) Global("SanSharCon","LOCALS",0) ~ THEN REPLY ~ You seem to go along with Shar-Teel quite well, Sandrah.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SanSharCon1
IF ~ GlobalGT("Sprite_is_DeadBandit","GLOBAL",25) Global("SanFiSkills","LOCALS",0) ~ THEN REPLY ~ Sandrah, with your background from Waterdeep, I am wondering where you learned to fight like that.~DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanFiSkills
IF ~RandomNum(3,1)~THEN REPLY~ You look hungry, my love, what do you think of a snack?~ GOTO LoveSnak1
IF ~RandomNum(3,2)~THEN REPLY~ You look hungry, my love, what do you think of a snack?~ GOTO LoveSnak2
IF ~RandomNum(3,3)~THEN REPLY~ You look hungry, my love, what do you think of a snack?~ GOTO LoveSnak3
IF~Global("ChartQuest","GLOBAL",1)GlobalGT("CalDone","GLOBAL",0)Global("SanMendas","LOCALS",0)~ THEN REPLY ~ Mmh, you would not by any chance know this Mendas of Waterdeep?~ GOTO SanMendas1
IF~ Global("SanDesTroll","LOCALS",2) NumItemsPartyLT("arow04",5) AreaType(FOREST)  ~ THEN REPLY~ Sandrah, we are quickly running out of acid arrows. Can you provide us with some once again?~ GOTO SanAcArF
IF~Global("SanVsTalos","GLOBAL",1) Global("Talostlk","LOCALS",0)~THEN REPLY ~Now we have made ourselves some new *friends*, those that follow the Storm Lord Talos.~ GOTO SanTalosF1
IF~ Global("SanDesTroll","LOCALS",2) NumItemsPartyLT("arow04",5) !AreaType(FOREST)  ~ THEN REPLY~ Sandrah, we are quickly running out of acid arrows. Can you provide us with some once again?~ GOTO SanAcArNF
IF~ Global("SantalosDec","GLOBAL",10)~ THEN REPLY~What is it between you and Talos - or Mystra and Talos respectively? ~GOTO Talosvisit4
IF~GlobalGT("Santiax","LOCALS",3)Global("SanTiaHealQ","LOCALS",0)~ THEN REPLY~Sandrah, can you imagine that Tiax could be healed from his megalomania?~ GOTO SanTiaHel1
IF ~ GlobalGT("SanWDTempleRha","GLOBAL",0) GlobalGT("SanWDTempleHint","GLOBAL",1) Global("SanWDRespect","LOCALS",0)~ THEN REPLY ~ Sandrah, you seem to be highly respected at the Waterdeep temple.~ GOTO SanWDRespct1
IF ~ GlobalGT("Santiax","LOCALS",3) Global("SantiaxPC","LOCALS",0)~ THEN REPLY ~ Tiax seems to think that your heritage in a way seems to imply what kind of future is waiting for you.~ GOTO SanTiaxPC1
IF~PartyHasItem("SW1H19") Global("TheVaultVamp","GLOBAL",2) !See([ENEMY]) CombatCounter(0)~THEN REPLY~ Can you call the Vault Sentry to make our traveling faster, please.~ GOTO SanvaultSum
IF~ Global("Drizztfight","GLOBAL",1) !InParty("Branwen") GlobalLT("SanDrizzt","GLOBAL",3) Global("SanFiSkills","LOCALS",0)~ THEN REPLY ~ It seems that the famous Drizzt Do'Urden knows you well, Sandrah? In a way I envy you for this.~ GOTO SanKnoDrizPC1
IF ~ Global("SanWDRespect","LOCALS",1)~ THEN REPLY ~ We have a bit of time now, Sandrah. Please tell me a bit of your position and relation to the famous Mystra Temple in Waterdeep.~ GOTO SanWDRespct5
IF ~ Global("GithHint","LOCALS",0) Global("SanGithVS","GLOBAL",8)~ THEN REPLY ~ I am pondering these strange words of the Githyanki, *Among you is one destined to rise to the Weave*. ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",3)~GOTO GithHint1
IF~ Global("SanEdLoveBoy","LOCALS",2)~ THEN REPLY ~ Your former hate for the red wizard Edwin seems to have changed quite a bit, Sandrah?~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanEdLoveBoy20
IF ~Global("SanMysRise","GLOBAL",2)~ THEN REPLY ~ Sandrah, are you familiar with the studies of Narvantial of Soubar?~ GOTO SanMysSucc1
IF ~ Global("Formedcloth","GLOBAL",10)~ THEN REPLY ~ Sandrah, this is a good place for a rest. Friends, let us sit down and listen to Sandrah and a story that hopefully will bring some light into this confusing quest about my heritage. ~ GOTO PidBhaal13
IF ~ Global("SanOrDiId","GLOBAL",8) GlobalGT("Formedcloth","GLOBAL",5) ~ THEN REPLY ~ So we have come close to the enemy but the picture has not become clearer to me. You seemed to be able to make more out of that Orloth's appearance.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanWinskApp20
IF ~ Global("SanOrDiId","GLOBAL",8) GlobalLT("Formedcloth","GLOBAL",5) ~ THEN REPLY ~ So we have come close to the enemy but the picture has not become clearer to me. You seemed to be able to make more out of that Orloth's appearance.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanWinskApp30
IF ~ Global("SanNobility","LOCALS",0) AreaType(CITY) ~ THEN REPLY ~ As a child from a metropole's society I wonder how you feel about nobility and ranks and all such. ~DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanSociety1
IF ~ GlobalLT("PidLock","LOCALS",2) ~ THEN REPLY ~ (You blow a lock of stray hairs from Sandrah's forehead.) How come you look so splendid, regardless how hard the battle or the march was? ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO Pidlock2
IF ~ Global("SanOnBalduIsl","GLOBAL",1)~ THEN REPLY ~ Now, counselor, do you have any idea what we have to face here? ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO WWIsl1
IF~ InParty("Coran") Global("SanRomPath","GLOBAL",1) Global("SanCorMale","LOCALS",0)~ THEN REPLY ~ Sandrah, what do you make of our cute companion Coran? ~GOTO SanCorMal1
IF~ InParty("Coran") Global("SanRomPath","GLOBAL",2) Global("SanCorFem","LOCALS",0)~ THEN REPLY ~ Sandrah, what do you make of our cute companion Coran? ~GOTO SanCorFem1
IF ~ GlobalGT("Cowscroll","GLOBAL",9) Global("EdCursGon","LOCALS",0) ~ THEN REPLY ~ Mystra has finally taken her curse off from Edwin.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO EdCursGon1
IF ~Global("Formedcloth","GLOBAL",18)~ THEN REPLY ~ My love, I know you well enough to guess the thoughts you roll around in your pretty head may be the same that I have been working on all day. Let us see if our conclusions about Imoen are the same.~  DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SanImoBhaCon2
IF ~ Global("XanDecide","GLOBAL",3) InParty("Xan")~ THEN REPLY ~ Sandrah, my love, we must talk about Xan urgently.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",3)~GOTO Xanchos1
IF ~ Global("SanWoodSt","LOCALS",2) AreaType(DUNGEON)~ THEN REPLY ~ Can you provide us with some wooden stakes, Sandrah?~ GOTO SanMkStake5
IF ~Global("SanBreBa","GLOBAL",2) ~ THEN REPLY ~ You and Breagar seem to be a bit at odds with each other.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanBreCon1
IF ~ Global("SanBranDec","GLOBAL",5)~ THEN REPLY ~ It feels a bit empty, Sandrah, without Branwen - even with the two of us together in love. Do you feel the same?~ DO~ IncrementGlobal("Sanpoints","GLOBAL",4)~GOTO BranLeft1
IF ~ Global("SanPCMarAj1","LOCALS",0) Global("X#AJANTISROMANCEACTIVE","GLOBAL",2)GlobalGT("SanAjanProp2","GLOBAL",2)~ THEN REPLY~ Sandrah, I would like to ask you for a favour regarding my relationship to Ajantis.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",3)~GOTO SanMarAj1
IF ~ GlobalGT("SanBooTlk","GLOBAL",5) Global("MinskFlow","LOCALS",0) ~ THEN REPLY ~ That is a beautiful flower in your hair, Sandrah. Do you wear it for me?~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO MinscFlow1
IF~ Global("SanXanPC","GLOBAL",2)InParty("Xan")~THEN REPLY~ I observe you started to care for Xan quite a bit. Is it the healer that tries to cure this hopeless case?~DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SanXanPC13
IF ~ Global("SaOgmaIn","GLOBAL",6) AreaCheck("CVWOHA") ~  THEN REPLY ~This place does not really look like the kind of palace you must be used to, my love. ~DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SanloveHut1
IF ~ Global("X#XALOVETALK","GLOBAL",39) InParty("XAN") Global("Xanrever","LOCALS",0) ~ THEN REPLY ~ May I ask you a very intimate question, my love? ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",3)~GOTO Xanrevery1
IF ~ Global("TORKIONNEEDYOU","GLOBAL",1) !PartyHasItem("Misc48") Global("SanTorq","LOCALS",0) ~ THEN REPLY ~ Sandrah, my little counselor, does your famous book tell us anything about this Torqion and the sword he requires from us? ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanTorq1
IF ~ Global("SanPCGavInt","GLOBAL",1) Global("SanPCGavT","LOCALS",0) ~ THEN REPLY ~ Sandrah, I observe you talk quite a bit with Gavin. Say, dear, what do you think of him?~ DO~ IncrementGlobal("Sanpoints","GLOBAL",3)~GOTO SanPCGavT1
IF ~ TimeOfDay(NIGHT) AreaType(OUTDOOR) Global("NiteMass","LOCALS",0) ~ THEN REPLY ~ My back hurts badly and it's myself I have to blame. As the leader of our group I should have called us to rest already hours ago.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO NiteMass1
IF ~Global("Homesail","GLOBAL",7)~THEN REPLY ~ Well, friends, let's make ourselves comfortable and learn from Sandrah what is so special about a pile of old parchments, that so many people had to die for them already.~ GOTO ZomHom13
IF~ Global("DimDay","GLOBAL",2) ~ THEN REPLY ~ I loved the song you performed with our wildcat the other day. I did not know about your musical skills before that.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanDimDay1
IF ~ Global("SanOrDiId","GLOBAL",8) GlobalGT("Formedcloth","GLOBAL",5) ~ THEN REPLY ~ So we have come close to the enemy but the picture has not become clearer to me. You seemed to be able to make more out of that Orloth's appearance.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SanWinskApp20
IF ~ GlobalGT("SanFlirt","GLOBAL",19) Global("SanMysRise","GLOBAL",3)~THEN REPLY ~ We were talking about children the other day, Sandrah, and about my heritage in this context.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~ GOTO SanBLine1
IF~~THEN REPLY~Your hammer seems to be stuck.~GOTO SanHamCl
END

IF~~THEN BEGIN SanvaultSum
SAY~ Let me check on the option, just one second.~
IF~~THEN DO~ CreateCreatureObjectDoor("sanvault","CVSandr",0,0,0)~EXIT
END

IF~~ THEN BEGIN SanTiaxPC1
SAY~And we both agree that this gnome is uncureable mad, do we not?~
IF ~ Global("SanRomPath","GLOBAL",1)~ THEN REPLY ~ Maybe or maybe not. Often truth comes out of the mouth of children or fools. A new perspective for you, Sandrah. Did you never think that your destiny may be to rule or lead yourself?~ GOTO SanTiaxPC3
IF ~ Global("SanRomPath","GLOBAL",2)~ THEN REPLY ~ Maybe or maybe not. Often truth comes out of the mouth of children or fools. A new perspective for you, Sandrah. Did you never think that your destiny may be to rule or lead yourself?~  GOTO SanTiaxPC2
END


IF~~ THEN BEGIN SanTiaxPC2
SAY~No - but history shows that good and mighty rulers very often had good advisors to support them. Or good and intelligent lovers.~
IF ~~ THEN REPLY ~ Or both. The lucky ones had both of it even in the same person. (You kiss her passionately.)~ DO~ SetGlobal("SantiaxPC","LOCALS",1) ~EXIT
END

IF~~ THEN BEGIN SanTiaxPC3
SAY~ No - but history shows that good and mighty rulers very often had good advisors to support them. Or good and intelligent wives.~
IF ~~ THEN REPLY ~Or both. The lucky ones had both of it even in the same person. (You kiss her passionately.)~DO~ SetGlobal("SantiaxPC","LOCALS",1) ~EXIT
END

IF~~ THEN BEGIN SanBLine1
SAY~ Hm, I have stirred up something there, it seems.~
IF ~~ THEN REPLY ~ You have given me a lot of hope with your knowledge, darling. It is a precious thought that the terrible heritage ends with my generation of Bhaalspawns - unless one of them would raise to godhood.~ GOTO SanBLine2
END

IF~~ THEN BEGIN SanBLine2
SAY~ Which is something that we will prevent!~
IF ~~ THEN REPLY ~The reason I started this conversation was actually aimed at your own heritage and especially your own relationship to godly blood.~ GOTO SanBLine3
END

IF~~ THEN BEGIN SanBLine3
SAY~ Do I need to remind you, that my grandparents, although Gods by now, where of human origin and my father was received while both where still in their human form. My father is blessed by Mystra with special abilities but he and my mother are mortal humans, and so am I.~
IF ~~ THEN REPLY ~ Yes, yes, I know all of that. But other than the blood of a god in my veins that ends with me, your bloodline continues through the generations - and it is a very special one.~ GOTO SanBLine4
END

IF~~ THEN BEGIN SanBLine4
SAY~ What are you aiming at, my love?~
IF ~~ THEN REPLY ~ We have the evidence that from the same blood that runs in your veins at least two gods - Mystra and Cyric - have been elevated in the past. I say at least, because according to the scriptures of Narvantial there were even more in the past - and there will be future gods coming from that line you represent.~ DO ~ SetGlobal("SanMysRise","GLOBAL",4)~ GOTO SanBLine5
END

IF~~ THEN BEGIN SanBLine5
SAY~ Oh, no, <CHARNAME>, that is just too much! Shall I think of myself as the possible mother or grandmother of future gods just based on some vague and lost studies of an obscure historian? ~
IF ~~ THEN REPLY ~ Forgive me for bringing this topic up. You are right, it's really very vague - and you are surely not the woman to base your decisions on rumours like that.~ EXIT
IF ~~ THEN REPLY ~ It is vague, I agree. But what if there was a grain of truth in the whole story...?~ EXIT
IF ~~ THEN REPLY ~ I should have known it, Sandrah, you would draw your own conclusions and make your own fearless decisions nonetheless...~ EXIT
END

IF~~THEN BEGIN Godag11
SAY~Gorion must have had a reason to keep such an artifact, so much is sure. Just the same we can take it as granted that he was no supporter of the God of Murder.~
IF ~~ THEN REPLY ~Definitely not, he was surely opposing the remainder of the dead gods followers at any occasion.~  GOTO Godag12
IF ~~ THEN REPLY ~I know little about his involvement with any such cults but from the few words he ever said about the subject I am sure he hated Bhaal like nothing else.~ GOTO Godag12
END

IF~~THEN BEGIN Godag12
SAY~ I knew him even less than you did but he did not seem to be the man to keep trophies of any defeated foe. That dagger was one to be used in the bloody sacrifices of Bhaal's followers but Gorion's reasaon to keep it must go deeper than that.~
=~If we only could find out who that woman *A* was...~
IF ~~ THEN REPLY ~She MUST have been a Bhaalist and she must at the same time have been someone whom Gorion had known. Who knows if that really has any relevance to my past, it may be something from his early days altogether.~GOTO Godag13
IF ~~ THEN REPLY ~I know really very little about the man who gave his life for mine. But we probably have other things at hand than to dig into my stepfather's unknown past.~ GOTO Godag13
END

IF~~THEN BEGIN Godag13
SAY~(Nodding) I guess you are right, let us move on.~
IF~~THEN REPLY~(The way she quickly lets the topic drop leaves you with suspicion. You know her well enough to see she is not convinced this is the end of this story - and neither are you. But it seems none of you have any further clue at the moment of how to pursue the issue.)~DO~EraseJournalEntry(@904) Wait(2) AddJournalEntry(@906,QUEST)~EXIT
END

IF~~ THEN BEGIN SanWDRespct1
SAY~ (Smiles) My fellow priests of Mystra like me a lot, and those that are at Waterdeep are my teachers since my earliest years, and yes, my friends as well.~
IF~~THEN REPLY ~ To me it looks more like the kind of respect one pays to his superior - and since I know you much better now, it is because of yourself, not due to your father or grandmother.~ GOTO  SanWDRespct2
IF~~THEN REPLY ~ The *Guardian of the Cloak*, mh. Knowing the importance of Mystra's cloak I can only assume that this is not a title attached to a minor servant of the temple.~ GOTO  SanWDRespct2
END

IF ~~ THEN BEGIN SanWDRespct2
SAY~ You are a good observer, <CHARNAME> and you know me quite well by now. My standing at the temple here is really a special one and it is something I am a bit proud of, because I owned it myself and it is not due to the heritage I bear.~
IF~~THEN REPLY ~ Will you tell me about it, please? ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanWDRespct3
IF~~THEN REPLY ~ Another bunch of secrets that comes to the surface, Sandrah? Will I really ever get to really know you?~ GOTO SanWDRespct4
END

IF ~~ THEN BEGIN SanWDRespct3
SAY~ Yes, sure, it is not a secret, just one more aspect of me that we only barely have touched until now. I can tell you about it right now or later when we have more time, as you wish, darling.~
IF~~THEN REPLY ~ I am anxious to hear about it right now.~ DO ~ SetGlobal("SanWDRespect","LOCALS",2)~ GOTO SanWDRespct5
IF~~THEN REPLY ~ (Smile) Sounds like this will be a longer story for a more quiet moment. I will ask you about it later, sweetheart.~ DO ~ SetGlobal("SanWDRespect","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN SanWDRespct4
SAY~ Oh, <CHARNAME>, will you ever learn to trust me, dear? It is not a secret, just one more aspect of me that we only barely have touched until now. I can tell you about it right now or later when we have more time, just as you wish, darling.~
IF~~THEN REPLY ~ I am anxious to hear about it right now.~ DO ~ SetGlobal("SanWDRespect","LOCALS",2)~ GOTO SanWDRespct5
IF~~THEN REPLY ~ (Smile) Sounds like this will be a longer story for a more quiet moment. I will ask you about it later, sweetheart.~ DO ~ SetGlobal("SanWDRespect","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN SanWDRespct5
SAY~ Fine. So I told you already a bit about my struggle to come to accept my fellowship of Mystra. Just because with my heritage it seems to be the obvious way for me to become a priestess of the goddess, it made it hard for me to accept it. As you know by now, I do not like the feeling of just following a path that I have not chosen myself and I do not believe that anyone's fate is decided and sealed from the very beginning.~
IF~~THEN REPLY ~ I am feeling the same, Sandrah. So many think we are just puppets on strings pulled somewhere else, by the Gods or some other manipulators. I am glad we have found each other, trusting in our own judgement and our ability to change things.~ GOTO SanWDRespct6
IF~~THEN REPLY ~ We are strong, too strong to be mere puppets on strings pulled somewhere else, by the Gods or some other manipulators. We shall only trust in our own judgement and our ability to change things to our liking.~ GOTO SanWDRespct6
END

IF ~~ THEN BEGIN SanWDRespct6
SAY~  Neither my father nor my teachers at the temple ever tried to push me in any direction, for which I am forever thankful. They provided me with all the knowledge and guidance that let me find my own decision in the end. As Mystra is not a goddess of strict rules and crusted ceremonies but actually requires their fellowers to be open minded and able to decide on the right terms to conduct their duties in her name, I finally came to accept my calling as a healer and a priestess. (Laughs) As was observed already, I do in her name what I would be doing on my own principles more or less anyway.~
IF~~THEN REPLY ~ Yes, that is the Sandrah I have learned to respect and to love. But how does that explain your role in the Temple?~ GOTO SanWDRespct7
IF~~THEN REPLY ~ So it's your strength and pride that gains you your role in the Temple? Well done.~ GOTO SanWDRespct7
END

IF ~~ THEN BEGIN SanWDRespct7
SAY~ My teachers very early recognised my *rebellious* ways when it comes to authorities and strict observing of rules and such. But they also admired and encouraged my analytic skills and my ability to assimilate magic skills that are a bit off the average path. In council with my father and later also with me, it was decided that my duties for the Temple would not be restricted to the routine service in the ranks but I would be given a special treatment for my own good and for the benefits of Mystra.~
IF~~THEN REPLY ~ Does this encompass adventuring through the Realms with me or are you on a kind of leave from your duties right now?~ GOTO SanWDRespct8
IF~~THEN REPLY~ Your obligation is now with me and my quest, your Temple has no right to interfere with that, have I made myself clear?~DO~IncrementGlobal("Sanpoints","Global",-1)~GOTO SanWDRespct8a
END

IF~~THEN BEGIN SanWDRespct8a
SAY~In the end, that decision is mine not yours, have I made MYSELF clear?~
IF~~THEN GOTO SanWDRespct8
END

IF ~~ THEN BEGIN SanWDRespct8
SAY~  Actually there is no contradiction between the two. I serve Mystra and the adequate use of her powers in the Realms out there any day. I do my work at your side both as a teacher and counselor as well as with my healing skills. And I follow the quest of an admirable hero whose fate may turn out to be of great importance for us all.~
IF~~THEN REPLY ~ But you always claimed that neither you father nor your temple sent you to my side. How does that fit?~ GOTO SanWDRespct9
END

IF ~~ THEN BEGIN SanWDRespct9
SAY~ It is true that I found the way to you on my own, without any involvement of my father or Mystra's Temple. However it seems to me now, that my place at your side very well coincides with the general missions and duties I perform in the name of my goddess.~
= ~ During my education and also by helping my father on his missions from time to time, it soon became obvious that I would become a priestess to go out into the world and to actively work and fight for Mystra where needed. I studied and  I still study the ways and adventures of Midnight and what she did before she was lifted to the godly status. This is my way, I am sure. So I hold no official title and no position in the ranks of the Temple. And it is that and my interest for the family history that has led me to your side.~  
IF~~THEN REPLY ~ In the end you are a kind of secret agent of Mystra then. (Laugh) It is funny to see that you tried to escape the obvious, which is the ways of Elminster and Midnight, just to end exactly there again - a kind of junior successor.~
GOTO SanWDRespct10
END

IF ~~ THEN BEGIN SanWDRespct10
SAY~ Yes, in a way that is how it can be described. The main difference for me is still, that it was all my own choice and a mission I now accept wholeheartedly.~
IF~~  THEN REPLY ~ From the respect they seem to pay you, you are quite successful. Which I would admit any time, should they ask me about my statement. (You take her in your arms for a long and rousing kiss.)~ DO ~ SetGlobal("SanWDRespect","LOCALS",2)~EXIT
IF~~  THEN REPLY ~ Well, good that we have clarified the issue now, let's get moving.~ DO ~ SetGlobal("SanWDRespect","LOCALS",2)~EXIT
END

IF ~~ THEN BEGIN CampireSc1
SAY ~ If you like what you see, <CHARNAME>, why do you not let me feel it more intensively?~
IF ~~ THEN REPLY~ You are a bit too sweaty for my taste at the moment, why don't we two go down to that small creek down there and you let me clean up your body a bit.~ GOTO CampireSc2
IF ~Global("SanRomPath","GLOBAL",1)~ THEN REPLY~ If I were a painter, I would sit down right here to draw you - if I were a poet you would be my inspiration in a moment like this...~ GOTO CampireSc3
IF ~Global("SanRomPath","GLOBAL",2)~ THEN REPLY~ If I were a painter, I would sit down right here to draw you - if I were a poet you would be my inspiration in a moment like this...~ GOTO CampireSc4
IF ~~ THEN REPLY ~ My lovely pussycat, what would you do if you would meet a hungry tiger out there in the dark, as unarmed as you currently are?~ GOTO CampireSc5
END

IF ~~ THEN BEGIN CampireSc2
SAY ~ (Wordlessly she retrieves a small bottle of potion from her pack and takes your hand gently to lead you to the water.) There are a couple of spots I cannot reach easily by my own, that clearly need some expert attention, darling.~
IF ~~ THEN REPLY~ You don't need to tell me, Sandrah, I know exactly where they are. Be sure they will all been taken care of in just a minute...~ DO ~ IncrementGlobal("SanCampFire","LOCALS",1)StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~ EXIT
END

IF ~~ THEN BEGIN CampireSc3
SAY ~ ...but as you are the greatest loverboy in the Realms, you have your own special abilities to show your girl how much you care for her.~
IF ~~ THEN REPLY~ (You take her offered hand to lead her away from the camp to a romantic clearing you had seen earlier when you decided on the camp location for tonight. Her remaining clothes are removed within seconds before you show her how much passion a demi-god still possesses after a hard day.)~ DO ~ IncrementGlobal("SanCampFire","LOCALS",1)StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~ EXIT
END

IF ~~ THEN BEGIN CampireSc4
SAY ~ ...but as you are the most passionate godchild in the Realms, you have your own special abilities to show your girlfriend how much you care for her.~
IF ~~ THEN REPLY~ (You take her offered hand to lead her away from the camp to a romantic clearing you had seen earlier when you decided on the camp location for tonight. Her remaining clothes are removed within seconds before you show her how much passion a demi-god still possesses after a hard day.)~ DO ~ IncrementGlobal("SanCampFire","LOCALS",1)StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~ EXIT
END

IF ~~ THEN BEGIN CampireSc5
SAY ~ If that tiger's name were by chance <CHARNAME> I would let myself be swallowed whole by its hunger. My lust for fighting and resistance has been saturated for today, I am in a mood to willingly surrender.~
IF ~~ THEN REPLY~ Come, my willing prey, let your tiger digest its booty over there in the soft moss...~ DO ~ IncrementGlobal("SanCampFire","LOCALS",1)StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~ EXIT
END

IF~~THEN BEGIN Gorlover1
SAY ~ I can imagine what it is. The relationship between my mother Khalindra and Gorion.~
IF ~~ THEN REPLY~ Smart lovely counselor, I would have really struggled to get the question out if you had not known it already. And do you also know the answer then?~ GOTO Gorlover2
END

IF ~~THEN BEGIN  Gorlover2
SAY ~ Yes, my father told me about it after our visit to Gorion at Candlekeep when I observed that they referred to my mother's death as their *common grief*. So here is the story in brief. I will tell you other episodes I heard from my father when we have more time on our long calm evenings together.~
= ~ You know that my mother came to Waterdeep accompanying her father who came on some Harper's business besides his trade. So father and daughter met with Gorion, Winthrop and my father at our house and both, Gorion and Elminster fell for Khalindra immediately, with Winthrop already in love with Ismanelda.~
= ~They both courted her for a period of time, but they managed to stay friends even while being rivals for her love. According to my father's anecdotes, Gorion was Khalindra's favourite for some time with his charms, but in the end my father's constant and steadfast manners won him her heart. Gorion accepted that decision and stayed their true friend, as you have experienced yourself, however he never took another wife himself.~
IF ~~ THEN REPLY~ Thank you, Sandrah, for sharing this. I would really like to hear more in a silent moment. Even if Gorion and Khalindra were not my *parents* in the real sense, they are those who come closest to it for a poor demi-god like me.~ DO~SetGlobal("Criminal","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN SanMysSucc1
SAY ~ There are many aspects about my Goddess Mystra that are dealt with by Narvantial. The most widely accepted of his theories is the human origin of Mystra since the very beginning.~
IF ~~ THEN REPLY ~ And?~ GOTO SanMysSucc2
IF ~~ THEN REPLY ~ Since the very beginning...?~  GOTO SanMysSucc2
IF ~~ THEN REPLY ~ You must have an opinion on that issue yourself, I guess.~ GOTO SanMysSucc2
END

IF ~~ THEN BEGIN SanMysSucc2
SAY ~ We both know that this is true for the current incarnation of Mystra, as Midnight is my own grandmother and she was a human priestess and adventurer before Ao elevated her to the Weave.~
= ~ What Narvantial claims to have found out is the fact that there has been a succession of incarnations of the Goddess of All Magic and that all of them had been humans before Ao made them wear the godly mantle.~
IF ~~ THEN REPLY ~ Why should Ao do such - I mean if anyone can guess at all why gods act the way they do?~ GOTO SanMysSucc3
END

IF ~~ THEN BEGIN SanMysSucc3
SAY ~ Hm. Remember that Ao chose humans during the Times of Trouble to aid him against the renegade gods. With Mystra's role to rule over the Weave while all the gods in one way or another require access to that source of power at the same time, Ao might have followed a similar concept. Instead of giving one of the other celestials that advantage over all the others, he tasked a *mere* human with it, trusting her more than any other god.~
IF ~~ THEN REPLY ~ But why?~ GOTO SanMysSucc4
END

IF ~~ THEN BEGIN SanMysSucc4
SAY ~ Maybe because a human elevated to such power would not so easily join the everlasting competition for more power that seems to continue among the other gods.~
IF ~~ THEN REPLY ~ I found something else of interest in a book about Narvantial's studies. I mean the way he made his choices among the human candidates for the task...~ GOTO SanMysSucc5
END

IF ~~ THEN BEGIN SanMysSucc5
SAY ~ (She remains silent and thoughtful for a moment.)~
= ~ I think I know what you mean, <CHARNAME>. His thesis that a specific human bloodline has been chosen by Ao and that all incarnations of Mystra have come from that line - up to my grandmother.~
IF ~~ THEN REPLY ~ And is that true, Sandrah?~ GOTO SanMysSucc6
END

IF ~~ THEN BEGIN SanMysSucc6
SAY ~ (Again Sandrah seems to hesitate.) You can imagine that I have investigated quite a bit about that issue, my darling. If it were true, it would mean with both Midnight and my father being the only spawns left from that bloodline...~
IF ~~ THEN REPLY ~ ...then you and your children if you would have them one day are the sole heirs of that blood!~ GOTO SanMysSucc7
END

IF ~~ THEN BEGIN SanMysSucc7
SAY ~ Provided that Narvantial's theorie was true?~ 
IF ~~ THEN REPLY ~ Are you saying it is not true?~ GOTO SanMysSucc8
END

IF ~~ THEN BEGIN SanMysSucc8
SAY ~ (This time Sandrah does not hesitate to answer.) To be honest, I do not know.~
= ~ See, Narvantial's original studies and papers have not been seen since the Times of Trouble. Nothing of the evidence he may have had for his theory is known. All that is left is the fact that in conclusion from his findings he could foresay that my grandmother Midnight would be the next incarnation of Mystra. Why and how he came to that conclusion is unknown, as well as it remains unknown if the same thing had in deed ever happened in previous times. Which of course means that we have no evidence that it will happen again in the future.~
IF ~~ THEN REPLY ~ What about your father or the priests of Mystra's temple? Would they hide such things from you for some reason?~ GOTO SanMysSucc9
END

IF ~~ THEN BEGIN SanMysSucc9
SAY ~ (Smiles) I do not think so. All I know about this whole story comes from my father and the priests and I am pretty sure that it is all that any living person on Toril knows about it. Why this Narvantial should really have known more about it or even once held some evidence in his hand remains a mystery.~
IF ~~ THEN REPLY ~ So the whole story - true or not true - has no influence on you in some way?~ GOTO SanMysSucc10
END

IF ~~ THEN BEGIN SanMysSucc10
SAY ~ Definitely not. You know me well enough by now. We are responsible for our lives and deeds and it lies in our hands to shape Toril to be the reality we want it to be. I think my grandmother knew that - my father surely knows it - and I believe and act according to that credo too. ~ 
IF ~~ THEN DO ~ SetGlobal("SanMysRise","GLOBAL",3)~EXIT
END

IF~~THEN BEGIN  SanTiaHel1
SAY~ I have not gathered much experience as a healer with this type of madness. There is illness of the mind that comes from a loss or a hurt or some other traumatic event. You can slowly find your way into the mind of the suffering person with gaining the person's  trust and listening to his story to find out about the reason for the state.~
IF~~THEN REPLY~ I see that such a procedure is not very feasible during a life on the road like ours.~ DO~ SetGlobal("SanTiaHealQ","LOCALS",1)~GOTO SanTiaHel2
IF~~THEN REPLY~ Can a couple of spells not make him more endurable? I'd hate to loose his abilities in the party.~ DO~ SetGlobal("SanTiaHealQ","LOCALS",1)~GOTO SanTiaHel3
END

IF~~THEN BEGIN  SanTiaHel2
SAY~ It puts me in a bit of a dilemma, I have to confess, <CHARNAME>. Through his strange fixation on my *grandfather* I may gain his trust and he may open up to me so I may learn something about the origin of his state. Probably how he was treated in his childhood. And as a sworn healer it would be my duty to do so.~
IF~~THEN REPLY~ Sounds like now comes a *but*...?~  GOTO SanTiaHel4
END

IF~~THEN BEGIN  SanTiaHel3
SAY~ This is not a confusion caused by a spell which can be reversed by another spell I could cast. His state comes from deeper inside the mind where you can only venture with the assistance of the patient himself through words and care.~
IF~~THEN REPLY~ I see. Maybe you will find some time during our travel...even if I would loose those moments to spend with you.~ GOTO SanTiaHel2
END


IF~~THEN BEGIN  SanTiaHel4
SAY~ ...but I definitely dislike the gnome - like I dislike any follower of Cyric.~
IF~~THEN REPLY~ Because he is your grandfather?~ GOTO SanTiaHel5
IF~~THEN REPLY~ Your own goddess slept with Cyric.~ GOTO SanTiaHel5
END

IF~~THEN BEGIN  SanTiaHel5
SAY~NO! Have you still not understood. The mad God of Lies is neither my grandfather nor was he the man loved by Midnight. It was Cyric the thief and adventurer who is in my bloodline, not the god he was transformed to.~
IF~~THEN REPLY~ Yes, sorry. You make that an important point all the time.~EXIT
END




// Khalindra's Child

IF ~ Global("Formedcloth","GLOBAL",13) ~ THEN BEGIN KhalChi1
SAY ~ (Sandrah has come up to you and silently takes your hand. You walk side by side for a while and you feel the power of her love and her nearness giving you strength and confidence.)~
= ~ My love, you bear the discovery of your heritage quite well.~
IF ~~ THEN REPLY~ Don't forget I have the power of a God in me, even if I do not give in to his dark luring.~ GOTO KhalChi2
IF~~ THEN REPLY~ The power of a wonderful lover helps me to keep the dark deceiver's persuasions at far distance from my heart. ~ GOTO KhalChi3
END

IF~~ THEN BEGIN KhalChi2
SAY~ You can always count on your lover and healer to help you with that struggle as well.~
IF ~~ THEN REPLY~ I love you, Sandrah.~ GOTO KhalChi4
END


IF~~ THEN BEGIN KhalChi3
SAY ~ Together we can channel the powers of the godly seed inside of you into the direction that Gorion had wanted for you.~
IF ~~ THEN REPLY~ I love you, Sandrah.~ GOTO KhalChi4
END

IF~~ THEN BEGIN KhalChi4
SAY ~ And I love you, <CHARNAME>.~
IF ~~ THEN REPLY ~ Even at the risk that our mother may be the same? ~ DO ~ SetGlobal("Formedcloth","GLOBAL",14) RealSetGlobalTimer("SandrahMorningTalkTime","GLOBAL",1800)~ GOTO KhalChi5
END

IF~~ THEN BEGIN KhalChi5
SAY ~ I need to remind you then, that even if you were the child that she has born, you cannot think of her as your mother - not in the way she was a vessel for Bhaal's seed only. And for the same reason I am not your sister, or even half-sister.~
IF ~~ THEN REPLY~ But you are rightfully my lover, Sandrah. Still I am sure that I am the child whose birth has caused your mother's death.~ GOTO KhalChi6
END

IF~~ THEN BEGIN KhalChi6
SAY ~ I admit that you are surely the <PRO_GIRLBOY> that we have seen with Gorion. But there is no evidence whether this was Khalindra's spawn.~
IF ~~ THEN REPLY~ The dreams I had, Sandrah. Twice I had those referring to your mother and her second child. Why should those be send to me if I were born to another woman? You said yourself once that you think Mystra gave those hints to me.~GOTO KhalChi7
END

IF~~ THEN BEGIN KhalChi7
SAY ~ It is soothing to think that. When we look into the sky at night and see this star up there watching us, we look at the same one then. Her death is the source of new love and new hope, thus not in vain. The evil God's plan to revenge on Elminster and his beloved wife has failed.~
IF ~~ THEN REPLY~ Even more it has failed as it will be this spawn that puts an end to the one who attempts to rise in his name.~ EXIT
END

// Imoen is Bhaalspawn

IF ~ Global("Formedcloth","GLOBAL",17)~ THEN BEGIN SanImoBhaCon1
SAY ~ (It is bedtime already, but Sandrah still sits staring at the flames of the dying fire.)~
IF ~~ THEN REPLY ~ A penny for your thoughts. I will go to warm the bed for us, love, don't be too long.~ DO ~ SetGlobal("Formedcloth","GLOBAL",18)~ EXIT
IF ~~ THEN REPLY ~ My love, I know you well enough to guess the thoughts you roll around in your pretty head may be the same that I have been working on all day. Let us see if our conclusions are the same.~ GOTO SanImoBhaCon2
END

IF~~ THEN BEGIN SanImoBhaCon2
SAY ~ It is indeed that second Bhaal child that went on the journey with you. Winthrop's girl.~
IF ~~ THEN REPLY ~ And you think we know who it is? ~ DO ~ SetGlobal("Formedcloth","GLOBAL",19)~ GOTO SanImoBhaCon3
END

IF~~ THEN BEGIN SanImoBhaCon3
SAY ~ A girl of about your own age. A girl sent off with Winthrop to Candlekeep in the same way you were sent with Gorion. No real evidence that this girl had not reached Candlekeep at the same time that you reached there with Gorion.~
IF ~GlobalLT("OrcPrison","GLOBAL",8)~  THEN REPLY ~ The torn bedcloth? A pirate's trick then to mislead the hunters. We are sure the Orloth has not got her.~ GOTO SanImoBhaCon4
IF ~GlobalGT("OrcPrison","GLOBAL",8)~  THEN REPLY ~ The torn bedcloth? A pirate's trick then to mislead the hunters. We are sure the Orloth has not got her.~ GOTO SanImoBhaCon5
END


IF~~ THEN BEGIN SanImoBhaCon4
SAY ~ A girl nicknamed 'Immi'. A girl with significant courage and growing powers. ~
IF ~~ THEN REPLY ~ A girl that grew up in Candlekeep at my side all those years. A girl named Imoen!~ GOTO SanImoBhaCon6
END

IF~~ THEN BEGIN SanImoBhaCon5
SAY ~ A girl nicknamed 'Immi'. A girl with significant courage and growing powers. A girl that turns into the Bhaal avatar before our own eyes.~
IF ~~ THEN REPLY ~ A girl that grew up in Candlekeep at my side all those years. A girl named Imoen!~ GOTO SanImoBhaCon6
END

IF ~~ THEN BEGIN SanImoBhaCon6
SAY ~ If all other possibilities fail on a case and only one remains in the end, must not that one then be the truth?~
IF ~~ THEN REPLY ~ But she has not those dreams I have. She is not hunted like me. If the same seed is in her, then it has not grown up in the same way as in me, except for that slayer manifestation once.~ GOTO SanImoBhaCon7
END

IF ~~ THEN BEGIN SanImoBhaCon7
SAY ~ You are perfectly right, <CHARNAME>. It is this difference I am still thinking about at the moment. I have an idea why that is, but please give me a bit more time. It would be premature to talk about it now already.~
IF ~~ THEN REPLY ~ I trust you in this. I also think we should not talk to Imoen about it before we are not sure about all the aspects. I care too much for my *sister* to hurt her unnecessarily.~ DO~ RestParty()~ EXIT
END

//Get out of Naronguth Cave

IF ~ Global("NarCavOut","GLOBAL",1) ~ THEN BEGIN NarCavOut
SAY ~ <CHARNAME>, look there, the demon has lost some items on his hasted departure.~
IF ~~ THEN REPLY ~ Oh, yes, maybe even the shard? ~ GOTO NarShard1
IF ~~ THEN REPLY ~ I do not care for demon garbage. We must get out of this hole, if you have no ideas, then just shut up. ~ GOTO NarShard1
END

IF ~~ THEN BEGIN NarShard1
SAY ~ If we find the shard, there is a chance I can do something with it. I am not my father, but it recognises my blood and responds to me in a limited way. ~
= ~ Maybe I can get us to the surface with it or at least somehow notify my father through the shard.~
IF ~~ THEN REPLY ~ A straw to cling on, but better than nothing, thank you, Sandrah.~ DO ~ SetGlobal("NarCavOut","GLOBAL",2) ~ GOTO NarPlunder
IF ~~ THEN REPLY ~ A straw to cling on, but better than nothing. Hm, sorry, Sandrah, if I was a little bit gruffy with you, but this demon thing has put my nerves on trial. (Give her a kiss on the cheek.)~ DO ~ SetGlobal("NarCavOut","GLOBAL",2) ~ GOTO NarPlunder
END

IF ~~ THEN BEGIN NarPlunder
SAY ~ Let us investigate this hole for anything useful and when ready let me try to activate the shard. ~
IF ~~ THEN REPLY ~ Sounds like a plan now. I will talk to you again when we are ready to go.~ EXIT
END

IF ~ Global("NarCavOut","GLOBAL",3) ~ THEN BEGIN NarCavLeav
SAY ~ Shall we try the shard now, <CHARNAME>? ~
IF ~~ THEN REPLY ~ Yes, Sandrah. Let me say we all put our hope in you now.~ DO ~ AddExperienceParty(14700)~ GOTO NarShardActiv
END

IF ~~ THEN BEGIN NarShardActiv
SAY ~ Thank you for your trust (Smiles). ~
= ~ As soon as Sandrah touches the shard with both of her hands, it starts to glimmer softly. Obviously it really recognises Elminster's blood in Sandrah.~
= ~ Shard, I am Sandrah, you have identified me. Take me to my father!~
IF ~~ THEN DO ~ ClearAllActions()
		SmallWait(2)
		StartCutSceneMode()
		FadeToColor([30.0],0)
		Wait(2)
		ActionOverride(Player1,LeaveAreaLUA("BG5300","",[3800.1600],4))
		ActionOverride(Player1,LeaveAreaLUA("BG5300","",[3800.1600],0))
		ActionOverride(Player2,LeaveAreaLUA("BG5300","",[3800.1600],0))
		ActionOverride(Player3,LeaveAreaLUA("BG5300","",[3800.1600],0))
		ActionOverride(Player4,LeaveAreaLUA("BG5300","",[3800.1600],0))
		ActionOverride(Player5,LeaveAreaLUA("BG5300","",[3800.1600],0))
		ActionOverride(Player6,LeaveAreaLUA("BG5300","",[3800.1600],0))
                FadeFromColor([30.0],0)
		EndCutSceneMode()
                SetGlobal("NarCavOut","GLOBAL",4)~ EXIT
END

IF ~ Global("NarCavOut","GLOBAL",5)~ THEN BEGIN NarQShardHome
SAY ~ The Shard did not take us all the way, probably my powers are not yet enough for that distance.~
IF ~~ THEN REPLY ~ At least it got us to the surface again. A little bit of hiking in fresh air may suit us well after this hellish smelling adventure.~  GOTO QShardHome1
IF ~~ THEN REPLY ~ Hahaha, defeating archdemons with peanuts and performing transportation spells of stonethrow length? What kind of priestess are you, my darling. (Smile broadly at her.) ~ GOTO QShardHome1
END

IF ~~ THEN BEGIN QShardHome1
SAY ~ You have seen my accomplishment with this powerful tool. We have to admit, it still belongs into my father's hand. Let us make haste then to meet him and return the Shard.~
IF~~ THEN DO ~ SetGlobal("NarCavOut","GLOBAL",6)~ EXIT
END

IF~Global("Orcalert","CVROA5",5)~THEN BEGIN WDShaThDis1
SAY~A strange discovery, <CHARNAME>. The shadow thieves were supposed to be removed from Waterdeep since sometime.~
IF~~THEN REPLY~Maybe this Khattark plays a role in their return.~ GOTO WDShaThDis2
IF~~THEN REPLY~Maybe they played a hand in the stealing of the shard from your father.~ GOTO WDShaThDis2
IF~~THEN REPLY~The events around Khattark already have shown that security is no longer as strong as should be in this capitale.~GOTO WDShaThDis2
END

IF~~THEN BEGIN  WDShaThDis2
SAY~I heard already rumours about the Commander when I left Waterdeep to come to the Sword Coast. The Open Lord seems to near retirement.~
IF~~THEN REPLY~We should keep that in mind...maybe they will have a vacancy for a competent <PRO_RACE> in the future.~DO~SetGlobal("Orcalert","CVROA5",6) ~ EXIT
END


//  ENCOUNTERS
//__________________________________________________________________________________

INTERJECT_COPY_TRANS INNKE2 0 MystHint
== INNKE2 IF ~!PartyHasItem("GIFTOFM")~ THEN ~ <CHARNAME>, The twerp's grown up, I see. Now, there was that young cleric girl that searched for you and your foster father. Didn't really get her name, Sanna maybe, but she left me this to give to you. Can't sell it anyway since I dunno what it does and I can't hurt a customer selling somethin' dangerous.~ DO ~ GiveItemCreate("GIFTOFM",Player1,0,0,0)~
END

// First Elminster encounter

INTERJECT_COPY_TRANS ELMIN1 5 HiddenOne
== CVSandrJ IF ~ InParty("CVSandr") ~THEN ~ (During the conversation Sandrah has retreated into the shadow of the large waysign and even pulled her hood close around her face)~
== ELMIN1 IF ~ InParty("CVSandr") ~THEN ~Now how about that secret one in the shade? Won't thou show thy face to a harmless old man? Maybe there is a worried father out somewhere looking for his daughter who left without any notice?~
== CVSandrJ IF ~ InParty("CVSandr") ~THEN ~Or maybe there is a not-so-worried father somewhere who has trust in his daughter and knows she has a reason to do what she does.~ DO ~ IncrementGlobal("ElmHint","GLOBAL",1) ~
== ELMIN1 IF ~ InParty("CVSandr") ~THEN ~Thou art the smart one here, I see, shady little lady, hoho. Not so bad for y'all. Then, smart daughter of a not-so-worried father, I take it thou will take care that this odd company will not be wandering too far off the trail, mmh?~
== CVSandrJ IF ~ InParty("CVSandr") ~THEN ~Yes, Fa...Master Mage, I take this as my responsibility - and in turn my curiosity for some specific facts may be satisfied.~ 
END


// Second regular Elminster
INTERJECT_COPY_TRANS ELMIN2 0 HiddenDau
== CVSandrJ IF ~ InParty("CVSandr") ~THEN ~ (Once again the old mage turns to Sandrah.)~
== ELMIN2 IF ~ InParty("CVSandr") ~THEN ~ So now, my silent little one, thou have taken good care of thine friends from the looks of y'all. ~
== CVSandrJ IF ~ InParty("CVSandr") ~THEN ~ (Sandrah has moved up to the mage and puts now both her arms around his neck.) A not-so-worried father has not been betrayed by putting his full trust in his daughter. (Kisses him on the cheek.)  ~
== ELMIN2 IF ~ InParty("CVSandr") ~THEN ~ Well, that can really warm and old man's heart...~
== CVSandrJ IF ~ InParty("CVSandr") ~THEN ~ Oh, Fa......~
== ELMIN2 IF ~ InParty("CVSandr") ~THEN ~ Ssshh , Sandrah...~
== CVSandrJ IF ~ InParty("CVSandr") Global("PCKnowsElmDaughter","GLOBAL",0)~THEN ~ (Laughs friendly.) Oh, you can really give up the charade now in the presence of my friends. Father, if they have not guessed it themselves by now it is time to tell them.~
== CVSandrJ IF ~ InParty("CVSandr") Global("PCKnowsElmDaughter","GLOBAL",1)~THEN ~ (Laughs friendly.) Oh, you can really give up the charade now in the presence of my friends. Father, they know already who I am.~
== ELMIN2 IF ~ InParty("CVSandr") ~THEN ~ Well, darling, then once more I am the ever-trusting father. If thou say it, thou know them better than I can do from afar.~
== CVSandrJ IF ~ InParty("CVSandr") ~THEN ~ So, father, as you are now here as my witness, please tell them I am not with them as your secret spy or something the like.~
== ELMIN2 IF ~ InParty("CVSandr") ~ THEN ~ (The old man takes Sandrah in his arms now and kisses his daughter back.) Children...hoho...~
== CVSandrJ IF ~ InParty("CVSandr") ~THEN ~ You do not have such a lot of them to sigh like that. (Turning to you:) You must know that I am his only child.~
== ELMIN2 IF ~ InParty("CVSandr") Global("PCKnowsElmDaughter","GLOBAL",0)~ THEN ~ And the one dearest to mine heart. (Smiles behind his beard.) But now it is time to say farewell, the realms are calling. Calling me this way, thy calling is to the other way. Until we meet again. (Embraces Sandrah again. Was there a tear in his eye?) ~ DO ~ SetGlobal("PCKnowsElmDaughter","GLOBAL",1) RealSetGlobalTimer("NarQMess","GLOBAL",1800)~
== ELMIN2 IF ~ InParty("CVSandr") Global("PCKnowsElmDaughter","GLOBAL",1)~ THEN ~ And the one dearest to mine heart. (Smiles behind his beard.) But now it is time to say farewell, the realms are calling. Calling me this way, thy calling is to the other way. Until we meet again. (Embraces Sandrah again. Was there a tear in his eye?) ~
END

// Third regular Elminster
INTERJECT_COPY_TRANS ELMIN3 0 Dau3
== CVSandrJ IF ~ InParty("CVSandr") ~THEN ~ (Sandrah has left her place at your side and has silently moved into the arms of the old man. She lovingly caresses his beard while his smile broadens. You think she has almost become a little girl once again.]~
END

// Elminster at Baldur's Gate
INTERJECT_COPY_TRANS ELMIN5 3 DauShield
== ELMIN5 IF ~ InParty("CVSandr")~THEN ~ But now let us have a word between father and daughter, darling  of mine heart.~
== CVSandrJ IF ~ InParty("CVSandr") ~THEN ~ Yes, father?~
== ELMIN5 IF ~ InParty("CVSandr") ~THEN ~ Thine way with <CHARNAME> has not been unnoticed by one who's path you follow.~
== CVSandrJ IF ~ InParty("CVSandr") ~THEN ~ Have you come to talk to me on Mystra's behalf, father?~
== ELMIN5 IF ~ InParty("CVSandr") ~THEN ~ Daughter, if Mystra wants thine attention she will find it without her servant in between. No, it is the woman who so much guides thine path and whose ways thou follow led by thine blood.~
== CVSandrJ IF ~ InParty("CVSandr") ~THEN ~ It is the woman Midnight then, you are talking about father, your own mother, who is my guidance by the actions that have been passed down in the lore and legends dear to my heart.~
== ELMIN5 IF ~ InParty("CVSandr") ~THEN ~ 'tis in deed Midnight who had tasked me long ago with what I do today. Thou hath found thine way to righteousness and great deeds which would be to her liking. It resembles the path thine own grandmother hath chosen for herself at her time.~
== CVSandrJ IF ~ InParty("CVSandr") ~THEN ~ These words are soothing to my heart, father. The ways of Midnight are indeed a guideline I attempt to follow.~
== ELMIN5 IF ~ InParty("CVSandr") ~THEN ~ Thine grandmother hath hoped for such before Ao raised her to her current status. She hath tasked me to give thee the items of her adventuring days when thou would be ripe to receive them by your deeds. This day is one on which thou shallst gain one of them.~ DO ~ GiveItemCreate("CVMidshi","CVSandr",0,0,0) SetGlobal("SanMidshi","GLOBAL",1)~
== CVSandrJ IF ~ InParty("CVSandr") ~THEN ~ I will prove myself worthy of this gift, father, even if it is not gods that I have to fight and godhood I will achieve.~
== ELMIN5 IF ~ InParty("CVSandr") ~THEN ~ (Elminster strokes his beard in thought.) The end of this story, Sandrah, hath still to be written.~
END

// Haiass
INTERJECT HAIASS 11 SanIntervHaiKick
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ Haiass, come to me. All is fine. The one we normally love is a brute today and deserves to be alone for a while.~
==HAIASS IF ~ InParty("CVSandr")~ THEN ~ (Haiass gladly jumps to Sandrah and wags his tail. He gives you a suspicious glance from the distance.)~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ Understand, Haiass, this is a lot of stress. In a while all will be good, just stay by my side meanwhile, good wolf.~
= ~ (She looks at you and shakes her head.) If you are ready to apologize, you know where to find us. (Sandrah and Haiass move to the edge of your party and pretend to ignore you.)~
END HAIASS 7

INTERJECT Zeke 0 SanBranThre
== CVSandrJ IF ~ InParty("CVSandr")!InParty("jaheira")Global("X#JaheiraZeke","GLOBAL",0)
StateCheck("branwen",CD_STATE_NOTVALID) ~THEN ~ You mean that you have the scroll with which to release this petrified woman from her stone prison, imbecile? ~
=~*THWACK!*~
==ZEKE IF ~ InParty("CVSandr")!InParty("jaheira")Global("X#JaheiraZeke","GLOBAL",0)
StateCheck("branwen",CD_STATE_NOTVALID) ~THEN ~ Ouch! You... you hit me!~
== CVSandrJ IF ~ InParty("CVSandr")!InParty("jaheira")Global("X#JaheiraZeke","GLOBAL",0)
StateCheck("branwen",CD_STATE_NOTVALID) ~THEN ~YOU are alive enough to notice it. We will relieve you of that scroll, thank you very much. Now get out of here, and quickly, before one of us feels the urge to hit you again. This party has little patience for miscreants seeking profit in the misfortune of others. ~
==ViconJ IF~Global("X#ZEKE0","GLOBAL",0) InParty("viconia")InParty("CVSandr")!InParty("jaheira")Global("X#JaheiraZeke","GLOBAL",0) StateCheck("branwen",CD_STATE_NOTVALID) ~THEN ~Well done...though such mercy is... infrequent from me, petrification is a terrible fate. ~ DO~SetGlobal("X#ZEKE0","GLOBAL",1)~
==ZEKE IF ~ InParty("CVSandr")!InParty("jaheira")Global("X#JaheiraZeke","GLOBAL",0)
StateCheck("branwen",CD_STATE_NOTVALID) ~THEN ~Well... Oookay. I wanted to see myself if that scroll would work... ~
DO~GiveItemCreate("SCRLPET","cvsandr",1,0,0) EscapeAreaDestroy(90)~END Zeke 6

//Khalid + Jaheira at Friendly Arm
INTERJECT_COPY_TRANS JAHEIR 4 FurtherHint
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ (Jaheira studies Sandrah's features for a moment.) ~
== JAHEIR IF ~ InParty("CVSandr")~ THEN ~ But, then, if I am not mistaken, somebody has already sent you company...~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ ...you are mistaken, Jaheira, I was not sent by the one you refer to, honestly he just found out by chance. I am following my own mission trying to help <CHARNAME> meanwhile best as I can.~
== JAHEIR IF ~ InParty("CVSandr")~ THEN ~ So my eyes have not betrayed me, Sandrah, although you have quite changed from the little girl I saw with your father. ~
== KHALID IF ~ InParty("CVSandr")~ THEN ~ A-a-a real fine lady she has become, j-just like her mother was... ~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ Please, Jaheira, Khalid, let us forget the past days for a moment, the present holds its challenges for our immediate attention.~
== JAHEIR IF ~ InParty("CVSandr")~ THEN ~ Well spoken, truely El....~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ Sorry, Khalid, I interrupted you..~ DO ~ IncrementGlobal("ElmHint","GLOBAL",1) ~
END

// XZar Montaron encounter

INTERJECT_COPY_TRANS MONTAR 0 SanRoadScum1
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ Uh, all the scum of the roads in Faerun comes together in one place. <CHARNAME>, do not get involved with these imbeciles. ~
== Montar IF ~ InParty("CVSandr")~ THEN ~ Ooops.~
END

INTERJECT_COPY_TRANS MONTAR 1 SanRoadScum2
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ Uh, all the scum of the roads in Faerun comes together in one place. <CHARNAME>, do not get involved with these imbeciles. ~
== Montar IF ~ InParty("CVSandr")~ THEN ~ Ooops.~
END


//Marl
INTERJECT_COPY_TRANS MARL 0 CutMarl
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ Sir? Calm down, we are not the ones you look for. ~
== MARL IF ~ InParty("CVSandr")~ THEN ~ (Starts to tremble under Sandrah's gaze and takes a step back.) Sssorry, mylady. ~ DO ~ AddexperienceParty(400) EscapeArea() ~
END

//NOOBER
INTERJECT NOOBER 4 NobCous
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ I met your cousin Roober in Waterdeep recently.~
== NOOBER IF ~ InParty("CVSandr")~ THEN ~ That hammer you carry! You must be the lady who made Roober take a bath in the harbour...~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ There is a river right next to here...~
END NOOBER 23

//Kaishas

INTERJECT KAISH2 12   SanIntKai
== CVSandrJ IF ~ InParty("CVSandr") CheckStatLT(Player1,14,INT) CheckStatLT(Player1,14,WIS)~ THEN ~ Kaishas, do you take us all for fools? I knew you were werewolves before we even spoke to Karoug... frankly we were already suspicious within five minutes of entering the village! If you're going to try to kill us then go right ahead, but for Ao's sake give us some credit for intelligence!~
END  KAISH2 16

//Brage after rescue
INTERJECT_COPY_TRANS BRAGE 9 SharkT
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ Have faith, there will be a cure for your soul, my friend.~
== BRAGE IF ~ InParty("CVSandr")~ THEN ~ Sharkta Fai, the Stormhorns, but even you do not know where that is...~ DO ~ EscapeArea()~
END

//Tarnesh Assassin at Friendly Arm
INTERJECT_COPY_TRANS TARNES 0 BounH
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ Looks like someone put the bounty hunters on your scent now. ~
== Imoen2_ IF ~ InParty("Imoen2")~ THEN ~ Scarry. Like bloodhounds. ~
END

// Delsvir Ulgoth Pirate Info
INTERJECT DELSVIR 1 Pira1
== CVSandrJ IF ~ InParty("CVSandr")GlobalGT("SanSuBH","GLOBAL",18) Global("Delsvir","LOCALS",0)~ THEN ~ You see and hear a lot of what happens around here, right?~
== DELSVIR IF ~ InParty("CVSandr")GlobalGT("SanSuBH","GLOBAL",18) Global("Delsvir","LOCALS",0)~ THEN ~ And I sell everything that anybody around here may want.~
== CVSandrJ IF ~ InParty("CVSandr")GlobalGT("SanSuBH","GLOBAL",18) Global("Delsvir","LOCALS",0)~ THEN ~ And you got yourself a deal if you tell us about that strange man's burnt house not so long ago.~
== DELSVIR IF ~ InParty("CVSandr")GlobalGT("SanSuBH","GLOBAL",18) Global("Delsvir","LOCALS",0)~ THEN ~ And I tell you he did it himself, who knows why, but he did.~
== CVSandrJ IF ~ InParty("CVSandr")GlobalGT("SanSuBH","GLOBAL",18) Global("Delsvir","LOCALS",0)~ THEN ~ And you surely have good reason to think so.~
== DELSVIR IF ~ InParty("CVSandr")GlobalGT("SanSuBH","GLOBAL",18) Global("Delsvir","LOCALS",0)~ THEN ~ And I tell you why would anybody just dig a hole to bury his belongings in just one night before his house is destroyed - with no corpse found inside and the man gone.~
== CVSandrJ IF ~ InParty("CVSandr")GlobalGT("SanSuBH","GLOBAL",18) Global("Delsvir","LOCALS",0)~ THEN ~ And probably someone who sees him put things in said hole can go there and dig them out again.~
== DELSVIR IF ~ InParty("CVSandr")GlobalGT("SanSuBH","GLOBAL",18) Global("Delsvir","LOCALS",0)~ THEN ~ And I tell you if that were the case, a dead man don't need worthless stuff himself anymore. Nothing of worth and all sold if you claim something.~
== CVSandrJ IF ~ InParty("CVSandr")GlobalGT("SanSuBH","GLOBAL",18) Global("Delsvir","LOCALS",0)~ THEN ~ And just books and such, sold on already, I guess.~
== DELSVIR IF ~ InParty("CVSandr")GlobalGT("SanSuBH","GLOBAL",18) Global("Delsvir","LOCALS",0)~ THEN ~ And I tell you peddlers come through from Waterdeep that always give you a coin to sell that grub for good money to the bookworms up there.~
== CVSandrJ IF ~ InParty("CVSandr")GlobalGT("SanSuBH","GLOBAL",18) Global("Delsvir","LOCALS",0)~ THEN ~ And they enjoy business with you just as much as we do.~ DO ~ SetGlobal("Delsvir","LOCALS",1)~
END DELSVIR 15

INTERJECT DELSVIR 2 Pira2
== CVSandrJ IF ~ InParty("CVSandr")GlobalGT("SanSuBH","GLOBAL",18) Global("Delsvir","LOCALS",0)~ THEN ~ You see and hear a lot of what happens around here, right?~
== DELSVIR IF ~ InParty("CVSandr")GlobalGT("SanSuBH","GLOBAL",18) Global("Delsvir","LOCALS",0)~ THEN ~ And I sell everything that anybody around here may want.~
== CVSandrJ IF ~ InParty("CVSandr")GlobalGT("SanSuBH","GLOBAL",18) Global("Delsvir","LOCALS",0)~ THEN ~ And you got yourself a deal if you tell us about that strange man's burnt house not so long ago.~
== DELSVIR IF ~ InParty("CVSandr")GlobalGT("SanSuBH","GLOBAL",18) Global("Delsvir","LOCALS",0)~ THEN ~ And I tell you he did it himself, who knows why, but he did.~
== CVSandrJ IF ~ InParty("CVSandr")GlobalGT("SanSuBH","GLOBAL",18) Global("Delsvir","LOCALS",0)~ THEN ~ And you surely have good reason to think so.~
== DELSVIR IF ~ InParty("CVSandr")GlobalGT("SanSuBH","GLOBAL",18) Global("Delsvir","LOCALS",0)~ THEN ~ And I tell you why would anybody just dig a hole to bury his belongings in just one night before his house is destroyed - with no corpse found inside and the man gone.~
== CVSandrJ IF ~ InParty("CVSandr")GlobalGT("SanSuBH","GLOBAL",18) Global("Delsvir","LOCALS",0)~ THEN ~ And probably someone who sees him put things in hole can go there and dig them out again.~
== DELSVIR IF ~ InParty("CVSandr")GlobalGT("SanSuBH","GLOBAL",18) Global("Delsvir","LOCALS",0)~ THEN ~ And I tell you if that were the case, a dead man don't need worthless stuff himself anymore. Nothing of worth and all sold if you claim something.~
== CVSandrJ IF ~ InParty("CVSandr")GlobalGT("SanSuBH","GLOBAL",18) Global("Delsvir","LOCALS",0)~ THEN ~ And just books and such, sold on already, I guess.~
== DELSVIR IF ~ InParty("CVSandr")GlobalGT("SanSuBH","GLOBAL",18) Global("Delsvir","LOCALS",0)~ THEN ~ And I tell you peddlers come through from Waterdeep that always give you a coin to sell that grub for good money to the bookworms up there.~
== CVSandrJ IF ~ InParty("CVSandr")GlobalGT("SanSuBH","GLOBAL",18) Global("Delsvir","LOCALS",0)~ THEN ~ And they enjoy business with you just as much as we do.~ DO ~ SetGlobal("Delsvir","LOCALS",1)~
END DELSVIR 15


// Durlag's Tower
INTERJECT STONEDL 0 SanAnsw1
== CVSandrJ IF ~ InParty("CVSandr") ~THEN ~ From the west it came, and then the south. The east held it next, and now it rests in the north.~
END STONEDL 1

INTERJECT STONEDL 4 SanAnsw2
== CVSandrJ IF ~ InParty("CVSandr") ~THEN ~ It began with you and your need for a home. It grew with your clan, as you feared losing them. It manifested in the invaders that came, but you feared their coming already. It became your home, where it keeps you safe.~
END STONEDL 6

INTERJECT STONEDL 7 SanAnsw3
== CVSandrJ IF ~ InParty("CVSandr") ~THEN ~ The blame begins with the invaders, but they attacked with supposed good reason. It could be on your people, but they were in the shelter of your confidence. The craftsmen only did their jobs as directed. In your eyes, you are the one to blame for all that has happened.~
END STONEDL 9


// Shar-Teel Initial Fight
INTERJECT_COPY_TRANS SHARTE 4  SanFight4
== CVSandrJ IF ~ InParty("CVSandr") ~THEN ~ If men are so pathetic, why did you choose only them for your game. Are you afraid to get into a real fight with a strong oponent. ~
== SHARTE IF ~ InParty("CVSandr") ~THEN ~ Like whom, like you little weekend warrior princess - with your playtoy hammer and your designer shop armour. I bet you wet your silk panties when you see a hobgoblin.~
== CVSandrJ IF ~ InParty("CVSandr") ~THEN ~ Which means any hobgoblin would scare me more than you do. At least my silk panties are currently dry like the Calimsha Desert.~
== SHARTE IF ~ InParty("CVSandr") ~THEN ~ With your big words that could make one start to weep if they were not so laughable, you could almost get along for a male. When stupidity is the criteria for gender, I mean.~
== CVSandrJ IF ~ InParty("CVSandr") ~THEN ~ If could get along as male, then why not extend your bet to include me. Just to teach me a lesson, maybe? ~
== SHARTE IF ~ InParty("CVSandr") ~THEN ~ Tell you what bigmouth. I now would love to wiggle this toy hammer out of your hand and then put you across my lap for a nice little spanking of your silken panties. They will be wet pretty soon. You arrogant rich bitch girls are no better than those male 'cavaliers'. Ha, another 20 gold easily gained and such fun on top of it. Let's go!~ DO ~
ChangeAIScript("SHARTEL3",OVERRIDE)
CreateItem("SHARTHP1",0,0,0)
ActionOverride("CVSandr",Attack("Sharteel"))
SetGlobal("SanShartDuel","GLOBAL",1)
FillSlot(SLOT_AMULET)~
END

INTERJECT_COPY_TRANS SHARTE 12  SanFight12

== CVSandrJ IF ~ InParty("CVSandr") ~THEN ~ If men are so pathetic, why did you choose only them for your game. Are you afraid to get into a real fight with a strong oponent. ~
== SHARTE IF ~ InParty("CVSandr") ~THEN ~ Like whom, like you little weekend warrior princess - with your playtoy hammer and your designer shop armour. I bet you wet your silk panties when you see a hobgoblin.~
== CVSandrJ IF ~ InParty("CVSandr") ~THEN ~ Which means any hobgoblin would scare me more than you do. At least my silk panties are currently as dry as the Calimsha Desert.~
== SHARTE IF ~ InParty("CVSandr") ~THEN ~ With your big words that could make one start to weep if they were not so laughable, you could almost get along for a male. When stupidity is the criteria for gender, I mean.~
== CVSandrJ IF ~ InParty("CVSandr") ~THEN ~ If I could get along as male, then why not extend your bet to include me. Just to teach me a lesson, maybe? ~
== SHARTE IF ~ InParty("CVSandr") ~THEN ~ Tell you what bigmouth. I now would love to wiggle this toy hammer out of your hand and then put you across my lap for a nice little spanking of your silken panties. They will be wet pretty soon. You arrogant rich bitch girls are no better than those male 'cavaliers'. Ha, another 20 gold easily gained and such fun on top of it. Let's go!~ DO ~
ChangeAIScript("SHARTEL3",OVERRIDE)
CreateItem("SHARTHP1",0,0,0)
ActionOverride("CVSandr",Attack("Sharteel"))
SetGlobal("SanShartDuel","GLOBAL",1)
FillSlot(SLOT_AMULET)~
END

//   Firebead     
INTERJECT_COPY_TRANS FIREBE 1 StrangeScroll1
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ (Firebead looks at Sandrah, puzzled for a second.) ~
== FIREBE IF ~ InParty("CVSandr")~ THEN ~ Sandrah, now I recognise you. The world is small, I would never have expected to meet you with <CHARNAME>. Anyway, I have received a very strange scroll carried by a dead duergar slave that was found by farmers in the wilderness nearby recently. It may be of interest to your father. If you chance to meet him these days, just show it to him. I sense something demonic on it, so I put it into a chest upstairs. With your abilities you may carry it with you, I do not dare to do this myself. ~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ You're welcome, Firebead. We will do as you say. In a chest just upstairs... ~ DO ~ IncrementGlobal("ElmHint","GLOBAL",1) ~
END

INTERJECT_COPY_TRANS FIREBE 6 StrangeScroll2
== FIREBE IF ~ InParty("CVSandr") Global("ElminGaveNarQ","GLOBAL",2) !PartyHasItem("SCRLALZ")~ THEN ~ Sandrah?~
== CVSandrJ IF ~ InParty("CVSandr") Global("ElminGaveNarQ","GLOBAL",2) !PartyHasItem("SCRLALZ")~ THEN ~ Good day, dear friend. My father sent us to retrieve a mysterious scroll you have recently found.~
== FIREBE IF ~ InParty("CVSandr") Global("ElminGaveNarQ","GLOBAL",2) !PartyHasItem("SCRLALZ")~ THEN ~ In deed, the thing was carried by a dead duergar slave that was found by farmers in the wilderness nearby. I sense something demonic on it, so I put it into a chest upstairs. With your abilities you may carry it with you, I did not dare to do this myself. ~
END


// Thalantyr

INTERJECT_COPY_TRANS THALAN 2 MagesDaughter1
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ (You look expectantly at Sandrah. Will this rude mage know your companion like all the other mages you met before?) ~
== THALAN IF ~ InParty("CVSandr")~ THEN ~ By the mighty Mystra! May Melf's Meteor burn down this house if this is not El.....~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ Thalantyr, calm down, yes it is me in deed. ~
== THALAN IF ~ InParty("CVSandr")~ THEN ~ Girl, how you have grown. (Oh - that is what old people say to the young - am I that old already?) Sandrah, this house has never seen such beauty before!~ DO ~ IncrementGlobal("ElmHint","GLOBAL",1) ~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ You are still the charming mage you always were, Thalantyr, rough to the outside and a gentleman at heart. ~
END

// Melicamp
INTERJECT_COPY_TRANS MELICA 10 MagesDaughter2
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ (Mumbles to herself) Melicamp, who else could get into such a predicament.~
END

INTERJECT_COPY_TRANS MELICA 23 MagesDaughter3
== MELICA IF ~ InParty("CVSandr")~ THEN ~ Sandrah, you do not seem so happy to see me again, eh?~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ Oh, you bloody fool! I am very happy to see you alive and well after this misguided experiment. And I blame myself for still caring about such an outright idiot like you.~
== MELICA IF ~ InParty("CVSandr")~ THEN ~ It is all your fault, Sandrah, you decided to give up on me, so what else have I left now but my magic experiments.~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ This cannot be true. This is a dream. You accuse me for your crazy attempts to tamper with magic that is sizes too big for you...~
== Bimoen2 IF  ~ InParty("Imoen2") InParty("CVSandr")~ THEN ~ Hey, someone bring in some chairs 'n' a bit of snacks. This here will get interesting...and long...~
== THALAN IF ~ InParty("CVSandr")~ THEN ~ My little Sandrah, one thing he said is correct. You have yourself to blame for still caring for this foolish little boy. But who am I to critisize, I think I have just made the same mistake by forgiving him once again.~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ Well. (Embraces Melicamp and gives him a long kiss.) I am happy you are well and have Thalantyr here to watch over you. I will not do that again. Farewell, my love, I am off with the one who rescued you and whom you forgot to thank.~
== MELICA IF ~ InParty("CVSandr")~ THEN ~ But, darling...~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ <CHARNAME>, please let us get out of here quickly, before this apprentice-for-all-times tries to entangle me again.~
END

// Ajantis 1st Meeting

INTERJECT AJANTI 0 WDFriends
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ Greeting, Ajantis, will you really consider me as a foe? ~
== AJANTI IF ~ InParty("CVSandr")~ THEN ~ Lady Sandrah, is that really you? Oh, where are my manners, sweet lady, if you are with that party, their goal must be just - or at least not an evil one. ~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ (Walks up to Ajantis and kisses him on the cheek.) ~
== AJANTI IF ~ InParty("CVSandr")~ THEN ~ (Ajantis blushes to deep red) M-m-mylady! Please!!~
== BIMOEN2 IF ~ InParty("Imoen2") InParty("CVSandr")~ THEN ~ (Giggles) Has-been lovers, haha, our cleric has a checkered past...~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ Ajantis, still the stiff little paladin-to-be? ~
== AJANTI IF ~ InParty("CVSandr")~ THEN ~ Lady Sandrah, you err, I'm no longer the little paladin-to-be you once knew, but a member of the order now, following Helm's righteous way.~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ That was more or less to be expected, Sir Ajantis, never taking even the slightest step from your designated path. ~
== AJANTI IF ~ InParty("CVSandr")~ THEN ~ Sorry, it is not Sir Ajantis - not yet - I am still waiting to be knighted, mylady. ~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ As no doubt you will. So, I am with the party of <CHARNAME> investigating the recent events on the Sword Coast.~
END AJANTI 5

// Ribbons from Setta

INTERJECT_COPY_TRANS X#Setta 0 SanSetRibbs
== BMINSC IF ~ InParty("Minsc") InParty("CVSandr") GlobalGT("SanBooTlk","GLOBAL",3) ~ THEN~ I do not know about others in this party, but I will not let this opportunity pass. I'd buy one for my girl surely, good lady.~
== BDynah IF ~ InParty("Dynaheir") InParty("Minsc") InParty("CVSandr") GlobalGT("SanBooTlk","GLOBAL",3) ~ THEN ~Minsc, Minsc, you know what wouldst be said about you at home for that...~
== BMINSC IF ~ InParty("Dynaheir") InParty("Minsc") InParty("CVSandr") GlobalGT("SanBooTlk","GLOBAL",3) ~ THEN ~They would joke about it with no end trying to bethrot me to my sweet Sandrah right away.~
== BSANDR IF ~ InParty("Minsc") InParty("CVSandr") GlobalGT("SanBooTlk","GLOBAL",3) ~ THEN~So you would buy one for me then, Minsc?~
== BMINSC IF ~ InParty("Minsc") InParty("CVSandr") GlobalGT("SanBooTlk","GLOBAL",3) ~ THEN~You know so much, Sandrah, but maybe you know not all about Rashemen customs. It is for all loved girls at the Midsummer Festival in Rashemen to wear such a ribbon in their hair, given to them by their boy. Boo would be ashamed if our girl would be seen there without our colour in her hair.~
== BSANDR IF ~ InParty("Minsc") InParty("CVSandr") GlobalGT("SanBooTlk","GLOBAL",3) ~ THEN~A lovely custom, even if it is neither Midsummer nor we are near Rashemen. But one needs to be prepared. So which colour do I get from my Minsc?~
== BMINSC IF ~ InParty("Minsc") InParty("CVSandr") GlobalGT("SanBooTlk","GLOBAL",3) ~ THEN~Oh, my...hm. What do you say Boo? Red, as her mouth and the colour of a rose that she is? Too blantant?~
= ~ Yellow, like the morning sun that lights everything just like she lights our day? Or maybe green like s spring day, fresh and new like herself.~
== BSANDR IF ~ InParty("Minsc") InParty("CVSandr") GlobalGT("SanBooTlk","GLOBAL",3) ~ THEN~Minsc, I will only wear one, otherwise all people would think I got multiple lovers, so you have to make up your mind.~
== BMINSC IF ~ InParty("Minsc") InParty("CVSandr") GlobalGT("SanBooTlk","GLOBAL",3) ~ THEN~There is a good reason for any of her colours. Setta, I buy that rainbow coloured one as my lady appears in a different way to me each time I look at her.~
== X#SETTA IF ~ InParty("Minsc") InParty("CVSandr") GlobalGT("SanBooTlk","GLOBAL",3) ~ THEN~And each aspect is a lovely as the other, you lucky hero. Such a girl is worth to spend even the 150 Gold this rare ribbon will cost you. A rainbow ribbon is as rare as the girl you want to buy it for.~ DO ~ TakePartyGold(150)~
== BSANDR IF ~ InParty("Minsc") InParty("CVSandr") GlobalGT("SanBooTlk","GLOBAL",3) ~ THEN~Thank you, my cavalier. I look ahead to the day I wear it for you at the Midsummer Festival in Rashemen jumping over the bonfire hand in hand with you. (She gives the happy warrior a kiss.)~
==BKIVAN IF~ InParty("Kivan")InParty("CVSandr") GlobalGT("Kivshil","GLOBAL",7) ~ THEN~I will buy a blue one for a very special girl~
== X#SETTA IF~ InParty("Kivan")InParty("CVSandr") GlobalGT("Kivshil","GLOBAL",7) ~ THEN~The colour of peace and the colour of soul.~ DO ~ TakePartyGold(50)~
==BKIVAN  IF~ InParty("Kivan")InParty("CVSandr") GlobalGT("Kivshil","GLOBAL",7) ~ THEN~This is the meaning it has for the elves as well. What suits the lady who brings me peace for my soul better? My healer, please give me the pleasure to accept it.~
== BSANDR IF~ InParty("Kivan")InParty("CVSandr") GlobalGT("Kivshil","GLOBAL",7) ~ THEN~The ribbon and the promise that you give me with it - I accept them both with joy. (She embraces Kivan for a long kiss.)~
== BXANNN IF ~ InParty("Xan") InParty("CVSandr") GlobalGT("SanXanA","GLOBAL",6) ~ THEN~White is the only colour that would suit the lady I will give it to.~
== BSANDR IF ~ InParty("Xan") InParty("CVSandr") GlobalGT("SanXanA","GLOBAL",6) ~ THEN~Has white the same meaning for the elves than it has for us humans, Xan?~
== BXANNN IF ~ InParty("Xan") InParty("CVSandr") GlobalGT("SanXanA","GLOBAL",6) ~ THEN~It stands for flawless beauty and perfection and is the only colour that can grace you, Sandrah.~
== BSANDR IF ~ InParty("Xan") InParty("CVSandr") GlobalGT("SanXanA","GLOBAL",6) ~ THEN~(Laughs) I gladly accept that from you, Xan, thinking also it is the opposite of black, the opposite of hopelessness and depression. (Sandrah embraces and kisses the Moonblade Wielder.)~
END

// Viconia First Rescue (Sword Coast)

INTERJECT_COPY_TRANS viconi_ 0 SanVicInve
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ Quick, <CHARNAME>, nobody should have to suffer just because of the race. ~
END

INTERJECT_COPY_TRANS viconi_ 5 SanVicObli1
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ We have an obligation here to help her, <CHARNAME>. If you rescue somebody's life you have a responsibility to give that one a chance to find a way to continue.~ DO ~ RealSetGlobalTimer("VicBantT","GLOBAL",300) ~
END

INTERJECT_COPY_TRANS viconi_ 6 SanVicObli2
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ We have an obligation here to help her, <CHARNAME>. If you rescue somebody's life you have a responsibility to give that one a chance to find a way to continue.~ DO ~ RealSetGlobalTimer("VicBantT","GLOBAL",300) ~
END

INTERJECT viconi_ 8 SanVicObli4
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ <CHARNAME>! ~ 
== viconi_ IF ~ InParty("CVSandr")~ THEN ~ Priestess, I recognise how you tried to bring this jaluk to <PRO_HISHER> senses. Maybe you will kill <PRO_HIMHER> soon to lead this group on. Take this from me - we two will meet again.~ DO ~ GiveItemCreate("Sanwi1","CVSandr",0,0,0) AddJournalEntry(@148,QUEST)SetGlobal("IWasKickedOut","LOCALS",1)EscapeAreaMove("BG3304",800,1085,0)~EXIT

INTERJECT_COPY_TRANS  FLAM2 0 DefendVic
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ You want to kill her just for the reason of being a drow? What kind of justice do you represent? ~
== FLAM2 IF ~ InParty("CVSandr")~ THEN ~ I am the law here, and I sentence her to death - and everyone who stands by her side! She is a killer. ~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ A killer because she is drow or a killer by proven evidence? ~
== FLAM2 IF ~ InParty("CVSandr")~ THEN ~ Stand aside, I will not discuss with you. She is to be executed. ~ DO ~ AddexperienceParty(700) ReputationInc(1)~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ You have to go through us first. This is not justice you represent. You are the killer here regardless of any emblems you wear. ~
== FLAM2 IF ~ InParty("CVSandr")~ THEN ~ Help her and you will go down with her! ~
END

CHAIN
IF WEIGHT #-4~  Dead("FlamingFist2") ReactionLT(LastTalkedToBy,NEUTRAL_LOWER) InParty("CVSandr")~ THEN viconi_ Anyway1
~I thank you for your help, but more will be on their way, perhaps our paths will cross again.~
== CVSandrJ ~ <CHARNAME>! ~
== viconi_ ~ Priestess, I recognise how you tried to bring this jaluk to <PRO_HISHER> senses. Maybe you will kill <PRO_HIMHER> soon to lead this group on. Take this from me - we two will meet again.~ DO ~ GiveItemCreate("Sanwi1","CVSandr",0,0,0) AddJournalEntry(@148,QUEST)SetGlobal("IWasKickedOut","LOCALS",1)EscapeAreaMove("BG3304",800,1085,0)~EXIT

// The Fishermen and Umberlee

INTERJECT SONNER 5  SanUmberbowl
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ You better give to us what you have stolen or you will feel the anger of a Goddess that only laughs about such as Umberlee and Talos. ~
==  JEBADO  IF ~ InParty("CVSandr")~ THEN ~ Hell, Sonner the witch knows. ~
= ~ We had lots of trouble with a young priestess of Umberlee seeking revenge on us 'cos we had to kill her mother. That Talos priest told us we need to do it to get his god's favour. So what? We are caught in a tangle of gods playing with us. ~
== Sonner IF ~ InParty("CVSandr")~ THEN ~I suppose I have little choice then.  I've had the evidence for Talos on me the entire time; we felt it was safest that way.~
==  JEBADO  IF ~ InParty("CVSandr")~ THEN ~Give them the bowl, they may know how to bequiet Umberlee, I'd say.~
== Sonner IF ~ InParty("CVSandr")~ THEN ~ Take it, but know that the Storm Lord knows who it is that opposes him.~DO~GiveItem("MISC53",[PC])~
=~Now you best get out of here.  I should stay well away from any Talos shrine if I were you.  Vengeful things these gods.~DO~AddexperienceParty(300) ActionOverride("Telman",EscapeAreaDestroy(90)) ActionOverride("Jebadoh",EscapeAreaDestroy(90))  EscapeAreaDestroy(90)~
EXIT


// Join Bandits

INTERJECT RAIKEN 0 JoinBandtR
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ Raiken, wow, guy you make it big these days, quite impressive. (I never thought I could lie like that in all my life.)~
== RAIKEN IF ~ InParty("CVSandr")~ THEN ~ Sandrah, princess of Waterdeep, finally you take notice of me. I knew this road to wealth would get me the best of chicks in the end. ~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ See this band with me. Guess you and your boss don't want to have such as us against them, sweety.~
== RAIKEN IF ~ InParty("CVSandr")~ THEN ~ You want to threaten us, hammer girl, beware!~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ My, man, you really need me by your side. Someone's got to do the thinking. We want to be with you of course, can't you see that's why we came. Tazok would be delighted to have us in the ranks. I can even think he will promote you to be my boss in the troups.~
== RAIKEN IF ~ InParty("CVSandr")~ THEN ~ Hoi, be your boss! Guess what my first mission will be with you. I knew one day you would come crawling for me, they all do in the end. Well let's move.~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ (Spits on the ground as Raiken turns his back.) Puh, can there be really girls that get so low as to act like this moroon thinks I would?~
END RAIKEN 9

INTERJECT TEVEN 0 JoinBandtT
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ Teven, wow, guy you make it big these days, quite impressive. With your talent for magic it had to come one day. (I never thought I could lie like that in all my life.) ~
== TEVEN IF ~ InParty("CVSandr")~ THEN ~ Sandrah, princess of Waterdeep, finally you take notice of me. I knew this road to wealth would get me the best of chicks in the end. ~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ See this band with me. Guess you and your boss don't want to have such as us against them, sweety.~
== TEVEN IF ~ InParty("CVSandr")~ THEN ~ You want to threaten us, hammer girl, beware!~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ My, man, you really need me by your side. Someone's got to do the thinking. We want to be with you of course, can't you see that's why we came. Tazok would be delighted to have us in the ranks. I can even think he will promote you to be my boss in the troups.~
== TEVEN IF ~ InParty("CVSandr")~ THEN ~ Hoi, be your boss! Guess what my first mission will be with you. I knew one day you would come crawling for me, they all do in the end. Well let's move.~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ (Spits on the ground as Teven turns his back.) Puh, can there be really girls that get so low as to act like this moroon thinks I would?~
END TEVEN 5

// Bandit Camp
INTERJECT_COPY_TRANS KIVANJ 242 Kivrevenge
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ (Sandrah has taken Kivan's hand and presses it reassuringly).~
== KIVANJ IF ~ InParty("CVSandr")~ THEN ~ This time, Tazok, I am not helplessly bound and I have an arrow with your heart's name on it.~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ And you are not alone this time.~
== KIVANJ IF ~ InParty("CVSandr")~ THEN ~ With you at my side I feel like the strongest man on Toril, mellamina. Even if it is my last day on this plane.~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ It will be the first day of the newly born Kivan of Shilmista, (whispers), my love.~
END



INTERJECT_COPY_TRANS KNOTT 2 ImoCamp1
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ This guy seems to know nothing of interest.~
== KNOTT IF  ~ InParty("CVSandr") InParty("Imoen2") Global("SANIMONASHINT","GLOBAL",19)~ THEN ~ Aarg, the dreaded Red Head. Let me get outa here!~
== Bimoen2 IF  ~ InParty("CVSandr") InParty("Imoen2") Global("SANIMONASHINT","GLOBAL",19)~ THEN ~ That name know only the orcs that got Henning! Speak where is he? I beat the words outa you, you ugly dwarf if I must.~
== KNOTT IF  ~ InParty("CVSandr") InParty("Imoen2") Global("SANIMONASHINT","GLOBAL",19)~ THEN ~ PLEASE, no need for torture, ask them arrested in the cave just north, I know nothing, PLEASE.~
== Bimoen2 IF  ~ InParty("CVSandr") InParty("Imoen2") Global("SANIMONASHINT","GLOBAL",19)~ THEN ~ You smell terrible with your soiled pants, leave quickest before I change my mind. And no word to no one or I'll get ya after all.~
== KNOTT IF  ~ InParty("CVSandr") ~ THEN ~ No word!~
END

INTERJECT_COPY_TRANS TERSUS 0 ImoCamp2
== TERSUS IF  ~ InParty("CVSandr") InParty("Imoen2") Global("ImoCamp","LOCALS",0) Global("SANIMONASHINT","GLOBAL",19)~ THEN ~ Aarg, the dreaded Red Head. Let me get outa here!~
== Bimoen2 IF  ~ InParty("CVSandr") InParty("Imoen2") Global("SANIMONASHINT","GLOBAL",19)~ THEN ~ That name know only the orcs that got Henning! Speak where is he? I beat the words outa you, you ugly dwarf if I must.~
== TERSUS IF  ~ InParty("CVSandr") InParty("Imoen2") Global("SANIMONASHINT","GLOBAL",19)~ THEN ~ PLEASE, no need for torture, ask them arrested in the cave just north, I know nothing, PLEASE.~
== Bimoen2 IF  ~ InParty("CVSandr") InParty("Imoen2") Global("SANIMONASHINT","GLOBAL",19)~ THEN ~ You smell terrible with your soiled pants, leave quickest before I change my mind. And no word to no one or I'll get ya after all. ~
== TERSUS IF  ~ InParty("CVSandr") InParty("Imoen2") Global("SANIMONASHINT","GLOBAL",19)~ THEN ~ No word!~
END

INTERJECT_COPY_TRANS ENDER 6 ImoCamp6
== Bimoen2 IF  ~ InParty("CVSandr") InParty("Imoen2") Global("ImoCamp13","GLOBAL",0) Global("ImoCamp18","GLOBAL",0)GlobalGT("SANIMONASHINT","GLOBAL",18)~ THEN ~ The Cloakwood again. So now we have two reasons to go there quickest. How good!~
== ENDER IF  ~ InParty("CVSandr") InParty("Imoen2") Global("ImoCamp13","GLOBAL",0) Global("ImoCamp18","GLOBAL",0)GlobalGT("SANIMONASHINT","GLOBAL",18)~ THEN ~ Imoen, or the Red Head as your enemies call you.~
== Bimoen2 IF  ~ InParty("CVSandr") InParty("Imoen2") Global("ImoCamp13","GLOBAL",0) Global("ImoCamp18","GLOBAL",0)GlobalGT("SANIMONASHINT","GLOBAL",18)~ THEN ~ Elfman, you have seen my Henning, yes? He is fine, yes? He knows I am coming, yes? Elfman, speak, will you, yes?~
== ENDER IF  ~ InParty("CVSandr") InParty("Imoen2") Global("ImoCamp13","GLOBAL",0) Global("ImoCamp18","GLOBAL",0)GlobalGT("SANIMONASHINT","GLOBAL",18)~ THEN ~ Yes, yes, yes, and yes.~
== Bimoen2 IF  ~ InParty("CVSandr") InParty("Imoen2") Global("ImoCamp13","GLOBAL",0) Global("ImoCamp18","GLOBAL",0)GlobalGT("SANIMONASHINT","GLOBAL",18)~ THEN ~ Hu? ~
== ENDER IF  ~ InParty("CVSandr") InParty("Imoen2") Global("ImoCamp13","GLOBAL",0) Global("ImoCamp18","GLOBAL",0)GlobalGT("SANIMONASHINT","GLOBAL",18)~ THEN ~ If you give me a chance to answer, yes. Your boyfriend was here two nights ago. They kept him with me here in the tent. Tazok urged the orc leader to quickly move on with their hostage to the Cloakwood. He was afraid that you would find his basis here and cause too much trouble because of Henning. Your boy is a bit battered but relatively unhurt. He is not a milkbaby and his spirit is unbeaten.~
== Bimoen2 IF  ~ InParty("CVSandr") InParty("Imoen2") Global("ImoCamp13","GLOBAL",0) Global("ImoCamp18","GLOBAL",0)GlobalGT("SANIMONASHINT","GLOBAL",18)~ THEN ~ Oh, my poor dearest darling. He has to suffer all this just because of me. Thank you elfman, I love ya for the news. (She squeezes a big wet kiss on the surprised elf's cheek.)~
== CVSandrJ IF ~ InParty("CVSandr") InParty("Imoen2") Global("ImoCamp13","GLOBAL",0) Global("ImoCamp18","GLOBAL",0)GlobalGT("SANIMONASHINT","GLOBAL",18)~ THEN ~ Does the name Davaeorn mean anything to you?~
== ENDER IF  ~ InParty("CVSandr") InParty("Imoen2") Global("ImoCamp13","GLOBAL",0) Global("ImoCamp18","GLOBAL",0)GlobalGT("SANIMONASHINT","GLOBAL",18)~ THEN ~ I suspect he is the one operating from the Cloakwood Mine, Tazok's superior. You should investigate that trapped chest with Tazok's papers right here. I am sure you will find more in there than I can tell you about it.~
END

INTERJECT_COPY_TRANS ENDER 13 ImoCamp13
== Bimoen2 IF  ~ InParty("CVSandr") InParty("Imoen2") Global("ImoCamp6","GLOBAL",0) Global("ImoCamp18","GLOBAL",0)GlobalGT("SANIMONASHINT","GLOBAL",18)~ THEN ~ The Cloakwood again. So now we have two reasons to go there quickest. How good!~
== ENDER IF  ~ InParty("CVSandr") InParty("Imoen2") Global("ImoCamp6","GLOBAL",0) Global("ImoCamp18","GLOBAL",0)GlobalGT("SANIMONASHINT","GLOBAL",18)~ THEN ~ Imoen, or the Red Head as your enemies call you.~
== Bimoen2 IF  ~ InParty("CVSandr") InParty("Imoen2") Global("ImoCamp6","GLOBAL",0) Global("ImoCamp18","GLOBAL",0)GlobalGT("SANIMONASHINT","GLOBAL",18)~ THEN ~ Elfman, you have seen my Henning, yes? He is fine, yes? He knows I am coming, yes? Elfman, speak, will you, yes?~
== ENDER IF  ~ InParty("CVSandr") InParty("Imoen2") Global("ImoCamp6","GLOBAL",0) Global("ImoCamp18","GLOBAL",0)GlobalGT("SANIMONASHINT","GLOBAL",18)~ THEN ~ Yes, yes, yes, and yes.~
== Bimoen2 IF  ~ InParty("CVSandr") InParty("Imoen2") Global("ImoCamp6","GLOBAL",0) Global("ImoCamp18","GLOBAL",0)GlobalGT("SANIMONASHINT","GLOBAL",18)~ THEN ~ Hu? ~
== ENDER IF  ~ InParty("CVSandr") InParty("Imoen2") Global("ImoCamp6","GLOBAL",0) Global("ImoCamp18","GLOBAL",0)GlobalGT("SANIMONASHINT","GLOBAL",18)~ THEN ~ If you give me a chance to answer, yes. Your boyfriend was here two nights ago. They kept him with me here in the tent. Tazok urged the orc leader to quickly move on with their hostage to the Cloakwood. He was afraid that you would find his basis here and cause too much trouble because of Henning. Your boy is a bit battered but relatively unhurt. He is not a milkbaby and his spirit is unbeaten.~
== Bimoen2 IF  ~ InParty("CVSandr") InParty("Imoen2") Global("ImoCamp6","GLOBAL",0) Global("ImoCamp18","GLOBAL",0)GlobalGT("SANIMONASHINT","GLOBAL",18)~ THEN ~ Oh, my poor dearest darling. He has to suffer all this just because of me. Thank you elfman, I love ya for the news. (She squeezes a big wet kiss on the surprised elf's cheek.)~
== CVSandrJ IF ~ InParty("CVSandr") InParty("Imoen2") Global("ImoCamp6","GLOBAL",0) Global("ImoCamp18","GLOBAL",0)GlobalGT("SANIMONASHINT","GLOBAL",18)~ THEN ~ Does the name Davaeorn mean anything to you?~
== ENDER IF  ~ InParty("CVSandr") InParty("Imoen2") Global("ImoCamp6","GLOBAL",0) Global("ImoCamp18","GLOBAL",0)GlobalGT("SANIMONASHINT","GLOBAL",18)~ THEN ~ I suspect he is the one operating from the Cloakwood Mine, Tazok's superior. You should investigate that trapped chest with Tazok's papers right here. I am sure you will find more in there than I can tell you about it.~
END


INTERJECT_COPY_TRANS ENDER 18 ImoCamp18
== Bimoen2 IF  ~ InParty("CVSandr") InParty("Imoen2") Global("ImoCamp6","GLOBAL",0) Global("ImoCamp13","GLOBAL",0)GlobalGT("SANIMONASHINT","GLOBAL",18)~ THEN ~ The Cloakwood again. So now we have two reasons to go there quickest. How good!~
== ENDER IF  ~ InParty("CVSandr") InParty("Imoen2") Global("ImoCamp6","GLOBAL",0) Global("ImoCamp13","GLOBAL",0)GlobalGT("SANIMONASHINT","GLOBAL",18)~ THEN ~ Imoen, or the Red Head as your enemies call you.~
== Bimoen2 IF  ~ InParty("CVSandr") InParty("Imoen2") Global("ImoCamp6","GLOBAL",0) Global("ImoCamp13","GLOBAL",0)GlobalGT("SANIMONASHINT","GLOBAL",18)~ THEN ~ Elfman, you have seen my Henning, yes? He is fine, yes? He knows I am coming, yes? Elfman, speak, will you, yes?~
== ENDER IF  ~ InParty("CVSandr") InParty("Imoen2") Global("ImoCamp6","GLOBAL",0) Global("ImoCamp13","GLOBAL",0)GlobalGT("SANIMONASHINT","GLOBAL",18)~ THEN ~ Yes, yes, yes, and yes.~
== Bimoen2 IF  ~ InParty("CVSandr") InParty("Imoen2") Global("ImoCamp6","GLOBAL",0) Global("ImoCamp18","GLOBAL",0)GlobalGT("SANIMONASHINT","GLOBAL",18)~ THEN ~ Hu? ~
== ENDER IF  ~ InParty("CVSandr") InParty("Imoen2") Global("ImoCamp6","GLOBAL",0) Global("ImoCamp13","GLOBAL",0)GlobalGT("SANIMONASHINT","GLOBAL",18)~ THEN ~ If you give me a chance to answer, yes. Your boyfriend was here two nights ago. They kept him with me here in the tent. Tazok urged the orc leader to quickly move on with their hostage to the Cloakwood. He was afraid that you would find his basis here and cause too much trouble because of Henning. Your boy is a bit battered but relatively unhurt. He is not a milkbaby and his spirit is unbeaten.~
== Bimoen2 IF  ~ InParty("CVSandr") InParty("Imoen2") Global("ImoCamp6","GLOBAL",0) Global("ImoCamp13","GLOBAL",0)GlobalGT("SANIMONASHINT","GLOBAL",18)~ THEN ~ Oh, my poor dearest darling. He has to suffer all this just because of me. Thank you elfman, I love ya for the news. (She squeezes a big wet kiss on the surprised elf's cheek.)~
== CVSandrJ IF ~ InParty("CVSandr") InParty("Imoen2") Global("ImoCamp6","GLOBAL",0) Global("ImoCamp13","GLOBAL",0)GlobalGT("SANIMONASHINT","GLOBAL",18)~ THEN ~ Does the name Davaeorn mean anything to you?~
== ENDER IF  ~ InParty("CVSandr") InParty("Imoen2") Global("ImoCamp6","GLOBAL",0) Global("ImoCamp13","GLOBAL",0)GlobalGT("SANIMONASHINT","GLOBAL",18)~ THEN ~ I suspect he is the one operating from the Cloakwood Mine, Tazok's superior. You should investigate that trapped chest with Tazok's papers right here. I am sure you will find more in there than I can tell you about it.~
END


INTERJECT_COPY_TRANS IRON2 0 MineInf
== CVSandrJ IF  ~ InParty("CVSandr") InParty("Imoen2") GlobalGT("SANIMONASHINT","GLOBAL",18)~ THEN ~ And where are the orcs with their prisoner?~
== Bimoen2 IF  ~ InParty("CVSandr") InParty("Imoen2") GlobalGT("SANIMONASHINT","GLOBAL",18)~ THEN ~ Out with it quickest, man!~
== IRON2 IF~ InParty("CVSandr") InParty("Imoen2") GlobalGT("SANIMONASHINT","GLOBAL",18)~ THEN ~ They keep the orcs in their own quarter at the prison level. Scares dem prisoners like mad to have that bunch next door, haha.~
== CVSandrJ IF  ~ InParty("CVSandr") InParty("Imoen2") GlobalGT("SANIMONASHINT","GLOBAL",18)~ THEN ~ Did you see their prisoner with them? Did they deliver him to Daevorn?~
== IRON2 IF ~ InParty("CVSandr") InParty("Imoen2") GlobalGT("SANIMONASHINT","GLOBAL",18)~ THEN ~ They brought a human with 'em, just two days ago. But not for the boss. The orcs keep 'im in their quarters. Must be the prisoner for someone else, boss is not interested in him.~
== Bimoen2 IF  ~ InParty("CVSandr") InParty("Imoen2") GlobalGT("SANIMONASHINT","GLOBAL",18)~ THEN ~ He?~
== CVSandrJ IF  ~ InParty("CVSandr") InParty("Imoen2") GlobalGT("SANIMONASHINT","GLOBAL",18)~ THEN ~ Do not worry, Imoen, we will see him pretty soon and he will tell us all about the background of his kidnapping himself.~
== IRON2 IF ~ InParty("CVSandr") InParty("Imoen2") GlobalGT("SANIMONASHINT","GLOBAL",18)~ THEN ~ Imoen? I'm out of here! The redhead!~
== Bimoen2 IF  ~ InParty("CVSandr") InParty("Imoen2") GlobalGT("SANIMONASHINT","GLOBAL",18)~ THEN ~ Wow, my Henning must tell 'em quite some stories about me. I'll needa have a word with him, I guess. They all act like I'm a devil in person.~
== CVSandrJ IF  ~ InParty("CVSandr") InParty("Imoen2") GlobalGT("SANIMONASHINT","GLOBAL",18)~ THEN ~ Yes, it better end soon. This smell when they wet their pants on hearing your name really starts to hurt my nose.~
== IRON2 IF ~ InParty("CVSandr") InParty("Imoen2") GlobalGT("SANIMONASHINT","GLOBAL",18)~ THEN ~ Noo!~
END 

// Return to Candlekeep

INTERJECT_COPY_TRANS WINTHR2 8 ImoDaddy
== Bimoen2 IF ~ InParty("Imoen2") GlobalGT("Formedcloth","GLOBAL",23)~ THEN~ DADDY!~
== WINTHR2 IF ~ InParty("Imoen2") GlobalGT("Formedcloth","GLOBAL",23)~ THEN~Imoen, darling, --- hey, what was it you said. It's me, ol' Puffguts. <CHARNAME>, whatcha done to my lil' one out there, how many ogres have knocked her on her red head?~
== Bimoen2 IF ~ InParty("Imoen2") GlobalGT("Formedcloth","GLOBAL",23)~ THEN~Oh, my bestest puffing daddy, let me kiss and kiss ya quickest. (She embraces the innkeeper whose eyes are already wet with tears.)~
== WINTHR2 IF ~ InParty("Imoen2") GlobalGT("Formedcloth","GLOBAL",23)~ THEN~Yes, yes, yes, I love you, too, my little Immi and you were missed much.~
== Bimoen2 IF ~ InParty("Imoen2") GlobalGT("Formedcloth","GLOBAL",23)~ THEN~Oh, there is so much I have learned out there, daddy, so much about me and so much about you - how good you really have been for taking one such as me and all.~
== WINTHR2 IF ~ InParty("Imoen2") GlobalGT("Formedcloth","GLOBAL",23)~ THEN~(Winthrop all of a sudden seems to change completely, his shoulders straighten and he seems to grow in height. His normally jolly face becomes grave.)~
== Bimoen2 IF ~ InParty("Imoen2") GlobalGT("Formedcloth","GLOBAL",23)~ THEN~No need to worry, see yourself, <CHARNAME> and me handle that together, no bloody dead god gets to rule us from his grave, no and no.~
== WINTHR2 IF ~ InParty("Imoen2") InParty("CVSandr") GlobalGT("Formedcloth","GLOBAL",23)~ THEN~Well, you two, the day had to come, we knew it, Gorion and me. And it became a fact the day that letter from Elminster came and then you. (He turns to Sandrah.) ~
== CVSandrJ IF ~ InParty("Imoen2") InParty("CVSandr") GlobalGT("Formedcloth","GLOBAL",23)~ THEN~Yes, I was with them all the time, as my father and even more my mother Khalindra are much involved in this as well.~
== WINTHR2 IF ~ InParty("Imoen2") InParty("CVSandr") GlobalGT("Formedcloth","GLOBAL",23)~ THEN~Elminster's firstborn, Sandrah, you haven't told me that when you came to leave the weapon for <CHARNAME>. Secretive like your father thou art.~
== WINTHR2 IF ~ InParty("Imoen2") !InParty("CVSandr") GlobalGT("Formedcloth","GLOBAL",23)~ THEN~ Well, you two, the day had to come, we knew it, Gorion and me. And it became a fact the day that letter from Elminster came.~
== Bimoen2 IF ~ InParty("Imoen2") GlobalGT("Formedcloth","GLOBAL",23)~ THEN~ That's why you let me go so easily with <PRO_HIMHER>, right? First I was a bit pissed for not being really searched after, but now I understand. I understand so much and much now. Daddy.~
== WINTHR2 IF ~ InParty("Imoen2") GlobalGT("Formedcloth","GLOBAL",23)~ THEN~ (They hold each other in their arms for a long time. It looks to you as if they communicate without any words and both seem to understand everything.)~
== Bimoen2 IF ~ InParty("Imoen2") GlobalGT("Formedcloth","GLOBAL",23)~ THEN~ We need to go now, daddy. There is still the end of this plot waiting for us and the villains are right here in Candlekeep.~
== WINTHR2 IF ~ InParty("Imoen2") GlobalGT("Formedcloth","GLOBAL",23)~ THEN~The Iron Throne leaders are in the library. It's those you seek. Seems a bit of useless to say this, but please be careful.~
== Bimoen2 IF ~ InParty("Imoen2") GlobalGT("Formedcloth","GLOBAL",23)~ THEN~ Sure we will. I needa present your son-in-law to you still, next time we come around...~
== WINTHR2 IF ~ InParty("Imoen2") GlobalGT("Formedcloth","GLOBAL",23)~ THEN~ My son-in... Well, the day had to come, I shoulda known it...tututu, Imoen.~
END

INTERJECT_COPY_TRANS KOVERA 3 Candletrapa
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ It is as we expected, Sarevok, oh, yes Koveras spelled backwards, really wants to use us to eliminate the Iron Throne leaders for him. The ring of one of the victims to be found on his supposed murderer later on. A clumsy plan that shows us we have a good chance against this opponent.~
== KOVERA IF ~ InParty("CVSandr")~ THEN ~ You then must be this mysterious advisor for Gorion's ward, who is reported to cause so much damage to the Iron Throne's operations.~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ And to your operations, I assume, if you know those reports so well.~
== KOVERA IF ~ InParty("CVSandr")~ THEN ~ Your choice of the wrong advisors, <CHARNAME>, has led you into this trouble and it will lead you to your downfall if you continue to follow this lying witch.~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ The words of the cornered rat seeking for any chance to escape the fate that is obvious. This here will not be the location to seal your destruction, Sarevok. We will not be the scapegoats in your wicked plan.~
== KOVERA IF ~ InParty("CVSandr")~ THEN~ You may consider yourself clever, but you are no match for the powers at work here, silly child.~
END

INTERJECT_COPY_TRANS KOVERA 9 Candletrapb
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ It is as we expected, Sarevok, oh, yes Koveras spelled backwards, really wants to use us to eliminate the Iron Throne leaders for him. The ring of one of the victims to be found on his supposed murderer later on. A clumsy plan that shows us we have a good chance against this opponent.~
== KOVERA IF ~ InParty("CVSandr")~ THEN ~ You then must be this mysterious advisor for Gorion's ward, who is reported to cause so much damage to the Iron Throne's operations.~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ And to your operations, I assume, if you know those reports so well.~
== KOVERA IF ~ InParty("CVSandr")~ THEN ~ Your choice of the wrong advisors, <CHARNAME>, has led you into this trouble and it will lead you to your downfall if you continue to follow this lying witch.~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ The words of the cornered rat seeking for any chance to escape the fate that is obvious. This here will not be the location to seal your destruction, Sarevok. We will not be the scapegoats in your wicked plan.~
== KOVERA IF ~ InParty("CVSandr")~ THEN~ You may consider yourself clever, but you are no match for the powers at work here, silly child.~
END

INTERJECT_COPY_TRANS Tethto3 0 SanOwnDaughN
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~Since when do you have those green eyes, my *grandfather*?~
== ELMINS4 IF ~ InParty("CVSandr")~ THEN ~Come closer to me and to the light, child, so I may see which grandchild is talking to me.~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~Oh, you have so many that little *Pippy* has surely slipped your mind.~
END

// Nalin Nashkel Temple
INTERJECT_COPY_TRANS NALIN 0 AnPries
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ Thank you for this warm welcome, Nalin.~
== NALIN IF ~ InParty("CVSandr")~ THEN ~ If this is not El..mpf.~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ (Sandrah has quickly moved up to the young handsome priest and silences him with a kiss.)~
== NALIN IF ~ InParty("CVSandr")~ THEN ~ That was...however, welcome all to the temple. ~ DO ~ IncrementGlobal("ElmHint","GLOBAL",1)~
END

// Ashen
INTERJECT ASHEN 0  AsImposter
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ Ha, I doubt you will be very much welcome there. Unless your pockets are filled with gold to pay all your debitors you left behind after your bankruptcy.~
== AJANTJ IF ~ InParty("Ajantis") InParty("CVSandr")~ THEN ~ Even my superiors at the temple gave this man some credit before he was finally found out.~
== ASHEN IF ~ InParty("CVSandr")~ THEN ~ The hardships one must endure! The Sword Coast is not far enough from Waterdeep to remain unnoticed for long.~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ Silly to think you can escape the eyes of Helm or Elminster, dumb imposter.~
== ASHEN IF ~ InParty("CVSandr")~ THEN ~ I better get out of here quick.~
END ASHEN 5


// Drizzt

INTERJECT_COPY_TRANS DRIZZT 10 Drowfr
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ (Drizzt jumps away and out of reach of Sandrah's hammer.)~
== DRIZZT IF ~ InParty("CVSandr")~ THEN ~ But then you have the great mages own daughter at your side, so I sense you will know well which path to take, my friend. The friend of all who tread the good road has taught her well. But, girl, put that hammer away. (laughs kindly.)~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ May the peace you seek so hard be with you, friendly drow.~ DO ~ IncrementGlobal("ElmHint","GLOBAL",1)~
END

INTERJECT_COPY_TRANS DRIZZT 19 DrDuMeetUlg
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ Drizzt, you seek out our humble little party for an adventure at your side! What an honor, <CHARNAME>.~
== DRIZZT IF ~ InParty("CVSandr") Global("SanBranSharDzt","GLOBAL",0)~ THEN ~ The pleasure is mine, Sandrah, to have my most talented student ever by my side. Sadly enough, it is not only pleasure but also need that makes me appeal to the most heroic party on the Sword Coast today.~ DO~SetGlobal("SanBranSharDzt","GLOBAL",1) ~
== DRIZZT IF ~ InParty("CVSandr") !Global("SanBranSharDzt","GLOBAL",0)~ THEN ~ The pleasure is mine, Sandrah, to have my most talented student ever by my side. Sadly enough, it is not only pleasure but also need that makes me appeal to the most heroic party on the Sword Coast today.~ 
END

INTERJECT_COPY_TRANS IF_FILE_EXISTS F_DRIZZT 0 FDrDuMeetUlg
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ Drizzt, you seek out our humble little party for an adventure at your side! What an honor, <CHARNAME>.~
==IF_FILE_EXISTS F_DRIZZT IF ~ InParty("CVSandr") Global("SanBranSharDzt","GLOBAL",0)~ THEN ~ The pleasure is mine, Sandrah, to have my most talented student ever by my side. Sadly enough, it is not only pleasure but also need that makes me appeal to the most heroic party on the Sword Coast today.~ DO~SetGlobal("SanBranSharDzt","GLOBAL",1) ~
==IF_FILE_EXISTS F_DRIZZT IF ~ InParty("CVSandr") !Global("SanBranSharDzt","GLOBAL",0)~ THEN ~ The pleasure is mine, Sandrah, to have my most talented student ever by my side. Sadly enough, it is not only pleasure but also need that makes me appeal to the most heroic party on the Sword Coast today.~ 
END

ADD_STATE_TRIGGER Tranzi 7
~!InParty("CVSandr")!InParty("Imoen2")~

//Galken at Ulguth's Inn
REPLACE_STATE_TRIGGER GALKEN 2
~NumTimesTalkedTo(0) ReactionGT(LastTalkedToBy(Myself),NEUTRAL_UPPER)!InParty("CVSandr")~

REPLACE_STATE_TRIGGER GALKEN 3
~NumTimesTalkedTo(0) OR(2) ReactionGT(LastTalkedToBy(Myself),HOSTILE_UPPER)InParty("CVSandr")~

REPLACE_STATE_TRIGGER GALKEN 4
~NumTimesTalkedTo(0) ReactionLT(LastTalkedToBy(Myself),NEUTRAL_LOWER)!InParty("CVSandr")~

ADD_TRANS_TRIGGER GALKEN 3
~!InParty("CVSandr")~

INTERJECT GALKEN 3 BetterNow
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ Rather than to wait for some far away treasures that may or may not exist, I would be interested in that wine - and especially the desert thereafter - right here and now.~
== GALKEN IF ~ InParty("CVSandr")~ THEN ~ Wow, an unexpected offer from a lady who could not be expected to come into such quarters very often.  How about moving over to the fireplace, mylady, and exploring our possibilities in more depth.~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ A splendid thought, dear friend, let us not hesistate. ~
== GALKEN IF ~ InParty("CVSandr")~ THEN ~ ....~ DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT


// Shandalar

INTERJECT_COPY_TRANS SHANDAL2 15 UlghMag
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ Tread carefully, mageling.~
== SHANDAL2 IF ~ InParty("CVSandr")~ THEN ~ Damn, the mighty mages daughter in person. Must HE interfer ever and always.~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ <CHARNAME>, consider to listen to his offer only with utmost suspicion. However, I am too curious to find out what his cunning little mind has conjured for us.~ DO ~ IncrementGlobal("ElmHint","GLOBAL",1)~
== SHANDAL2 IF ~ InParty("CVSandr")~ THEN ~ Oh, damn El...~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ NOT A WORD TO ME ANYMORE!~
END

//Keldath & Red Wizards
INTERJECT_COPY_TRANS KELDDA 20 SanRedWizHateK
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ The red scum! Dealing with demonic powers they can hardly control at all - but what do those Thayans care about the consequences of their misuse of magic!~
==KELDDA IF ~ InParty("CVSandr")~ THEN ~ A priestess of Mystra will surely make them aware of what evil they do.~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ It will be a lesson that will come too late for them, good Keldath, as they cannot make any use of it after I have dealt with them.~
==KELDDA IF ~ InParty("CVSandr")~ THEN ~ Your hatred for them seems to root deeper than usual with the servants of Mystra.~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ (Calm) Yes, it does.~
END

// Volo

INTERJECT_COPY_TRANS VOLO 2 Knowbetter
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ Mmh.~
== Volo IF ~ InParty("CVSandr")~ THEN ~ Mylady? May you know these stories better than me?~ 
= ~ Huh, oh yes, I see you may indeed know them, my excuse, mylady Sandrah.~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ Do not worry, master Volo, any story is largely improved if it is told by you. ~
== Volo IF ~ InParty("CVSandr")~ THEN ~ Is there a bit of irony in your voice and in the corner of your eye.~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ Only heartfelt compliments, good Volo, I always enjoyed your stories back then in Waterdeep.~
= ~ But regarding the corner of my eye, Volo, you are standing too far away to really see what is there.~
== Volo IF ~ InParty("CVSandr")~ THEN ~ Truely observed, mylady. (Volo moves close to Sandrah and pretends to study one of her eyes.) Right, now I see what it is...~ DO ~ IncrementGlobal("ElmHint","GLOBAL",1)~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ Well then, my experienced traveller?~
== Volo IF ~ InParty("CVSandr")~ THEN ~ With your allmighty father out of sight this time, well - As they say from Calimshan to Soubar, *Your place or mine*, mylady...~ 
END

INTERJECT_COPY_TRANS VOLO 3 Knowbetter3
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ Mmh.~
== Volo IF ~ InParty("CVSandr")~ THEN ~ Mylady? May you know these stories better than me?~ 
= ~ Huh, oh yes, I see you may indeed know them, my excuse, mylady Sandrah.~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ Do not worry, master Volo, any story is largely improved if it is told by you. ~
== Volo IF ~ InParty("CVSandr")~ THEN ~ Is there a bit of irony in your voice and in the corner of your eye.~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ Only heartfelt compliments, good Volo, I always enjoyed your stories back then in Waterdeep.~
= ~ But regarding the corner of my eye, Volo, you are standing too far away to really see what is there.~
== Volo IF ~ InParty("CVSandr")~ THEN ~ Truely observed, mylady. (Volo moves close to Sandrah and pretends to study one of her eyes.) Right, now I see what it is...~ DO ~ IncrementGlobal("ElmHint","GLOBAL",1)~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ Well then, my experienced traveller?~
== Volo IF ~ InParty("CVSandr")~ THEN ~ With your allmighty father out of sight this time, well - As they say from Calimshan to Soubar, *Your place or mine*, mylady...~ 
END

//Naskel Mine
INTERJECT Beldin 1 KivanNotInMine1
== CVSandrJ IF ~ InParty("CVSandr")!InParty("Kivan")Global("X#KivanBeldin","GLOBAL",0)~ THEN ~Kobolds! Fall back, old man, fall behind us...~
DO ~SetGlobal("X#KivanBeldin","GLOBAL",1) ActionOverride("beldin",JumpToPoint([2180.2739])) CreateCreature("KOBOLDAB",[2227.2390],0) CreateCreature("KOBOLDAB",[2227.2390],0) CreateCreature("KOBOLDAB",[2227.2390],0) CreateCreature("KOBOLDAB",[2227.2390],0)~ EXIT

CHAIN
IF WEIGHT #-2~ InParty("CVSandr")!InParty("Kivan")Global("X#KivanBeldin","GLOBAL",1)~THEN Beldin KivanNotInMine2
~Th-thank you, adventurers. I... I have found this gem when mining... was saving it for my lady, but... you gave me my life back, and I have nothing else to pay you for your bravery...~
END
++ ~Then it is for your lady, my friend. Now go, before more of the 'demons' come.~ DO ~SetGlobal("X#KivanBeldin","GLOBAL",2)~ EXTERN CVSandrJ Beldin1ChainS
++ ~But your life is a gift enough for her. Thank you for the gem.~ DO ~SetGlobal("X#KivanBeldin","GLOBAL",3) GiveItemCreate("MISC18",Player1,1,0,0) ActionOverride("beldin", EscapeArea())~ EXIT
++ ~Are you still here, coward? Get out of my sight, before I kill you myself. Heh, scared of kobolds!~ DO ~SetGlobal("X#KivanBeldin","GLOBAL",3) ActionOverride("beldin", EscapeArea())~ EXIT

CHAIN
IF~~THEN CVSandrJ Beldin1ChainS
~Try to stay to the shadows and ask the guards to escort you to the surface.~
==Beldin~I will, good priestess. I'll tell the guards and Master Emerson himself how brave you are. Hope you'll kill all the monsters down below quickly - a man has to earn his living.~ DO ~SetGlobal("X#KivanBeldin","GLOBAL",3)ReputationInc(1) ActionOverride("beldin", EscapeArea())~
EXIT

INTERJECT Elmin3 4 Enhancedag1
==Elmin3 IF ~InParty("CVSandr") Global("CVGodag","GLOBAL",3)PartyHasItem("Godag01")~ THEN ~ Anyway, thou hath inherited one of Gorion's items that hath not yet revealed its true nature.~
DO~SetGlobal("CVGodag","GLOBAL",4)TakePartyItem("Godag01") SmallWait(5) ForceSpell(Myself,CLERIC_DRAW_UPON_HOLY_MIGHT) SmallWait(5) GiveItemCreate("Godag02",Player1,1,1,0) EscapeArea() ~EXIT

INTERJECT Elmin3 5 Enhancedag2
==Elmin3 IF ~InParty("CVSandr") Global("CVGodag","GLOBAL",3)PartyHasItem("Godag01")~ THEN ~ Anyway, thou hath inherited one of Gorion's items that hath not yet revealed its true nature.~
DO~SetGlobal("CVGodag","GLOBAL",4)TakePartyItem("Godag01") SmallWait(5) ForceSpell(Myself,CLERIC_DRAW_UPON_HOLY_MIGHT) SmallWait(5) GiveItemCreate("Godag02",Player1,1,1,0) EscapeArea() ~EXIT

//Dynaheir in Gnoll Prison

INTERJECT_COPY_TRANS DYNAHE 4 Dynaforc4
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ <CHARNAME>, you are a beast to leave an unarmed captured woman in a hole like this! The minimum I expected from you was to take her safely to Nashkel.~
==DYNAHE IF~ InParty("CVSandr")~ THEN ~ I have come to possess an item I wanted to debate with you, cleric girl. I ask you to take into your custody for the moment. ~ DO ~ GiveItemCreate("Sanwi2","CVSandr",0,0,0) ~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ And is there more you can tell me about it, where did you for example get it from?~ DO ~ SetGlobal("SanNotCloth","GLOBAL",3)~
==DYNAHE IF~ InParty("CVSandr")~ THEN ~  I found it near a place thine folk call the Firewine. But it must have been lost in older times, me guesses at the end of the Time of Troubles...Thou priestess should know the lore, or so I hope. That is all to say for now. Keep it safe, I beg of thee.~
END

INTERJECT_COPY_TRANS DYNAHE 5 Dynaforc5
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ <CHARNAME>, you are a beast to leave an unarmed captured woman in a hole like this! The minimum I expected from you was to take her safely to Nashkel.~
==DYNAHE IF~ InParty("CVSandr")~ THEN ~ I have come to possess an item I wanted to debate with you, cleric girl. I ask you to take into your custody for the moment. ~ DO ~ GiveItemCreate("Sanwi2","CVSandr",0,0,0) ~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ And is there more you can tell me about it, where did you for example get it from?~ DO ~ SetGlobal("SanNotCloth","GLOBAL",3)~
==DYNAHE IF~ InParty("CVSandr")~ THEN ~  I found it near a place thine folk call the Firewine. But it must have been lost in older times, me guesses at the end of the Time of Troubles...Thou priestess should know the lore, or so I hope. That is all to say for now. Keep it safe, I beg of thee.~
END

INTERJECT_COPY_TRANS DYNAHE 23 Dynaforc23
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ <CHARNAME>, you are a beast to leave an unarmed captured woman in a hole like this! The minimum I expected from you was to take her safely to Nashkel.~
== DYNAHE IF~ InParty("CVSandr")~ THEN ~ I have come to possess an item I wanted to debate with you, cleric girl. I ask you to take into your custody for the moment. ~ DO ~ GiveItemCreate("Sanwi2","CVSandr",0,0,0) ~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ And is there more you can tell me about it, where did you for example get it from?~ DO ~ SetGlobal("SanNotCloth","GLOBAL",3)~
== DYNAHE IF~ InParty("CVSandr")~ THEN ~  I found it near a place thine folk call the Firewine. But it must have been lost in older times, me guesses at the end of the Time of Troubles...Thou priestess should know the lore, or so I hope. That is all to say for now. Keep it safe, I beg of thee.~
END


INTERJECT_COPY_TRANS DYNAHE 21 Dynajoin6
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ From your accent I deduct you are from Rashemen.~ 
== DYNAHE IF ~ InParty("CVSandr")~ THEN~ Thou art right and well learned, young priestess, I am Dynaheir, a witch of Rashemen. ~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN~ So far from your home I would assume you are on a dajemma? ~
== DYNAHE IF ~ InParty("CVSandr")~ THEN~ Oh, my age for dajemma is past. I was sent to the Sword Coast by the Wychalarn in search of other knowledge. But here and now 'tis not place nor time for prolonged lore. We should go back to the topic when we know each other better. ~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN~ Agreed. I look forward to exchange what knowledge we both may have on the current and past proceedings hereabout.~
= ~ (You see that Dynaheir looks puzzled for a moment back at Sandrah. Something seems to be shared between these two women that has slipped your attention.)~
END

INTERJECT_COPY_TRANS DYNAHE 7 Dynajoin36
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ From your accent I deduct you are from Rashemen.~ 
== DYNAHE IF ~ InParty("CVSandr")~ THEN~ Thou art right and well learned, young priestess, I am Dynaheir, a witch of Rashemen. ~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN~ So far from your home I would assume you are on a dajemma? ~
== DYNAHE IF ~ InParty("CVSandr")~ THEN~ Oh, my age for dajemma is past. I was sent to the Sword Coast by the Wychalarn in search of other knowledge. But here and now 'tis not place nor time for prolonged lore. We should go back to the topic when we know each other better. ~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN~ Agreed. I look forward to exchange what knowledge we both may have on the current and past proceedings hereabout.~
= ~ (You see that Dynaheir looks puzzled for a moment back at Sandrah. Something seems to be shared between these two women that has slipped your attention.)~
END

INTERJECT_COPY_TRANS DYNAHE 1 Dynajoin31
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ From your accent I deduct you are from Rashemen.~ 
== DYNAHE IF ~ InParty("CVSandr")~ THEN~ Thou art right and well learned, young priestess, I am Dynaheir, a witch of Rashemen. ~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN~ So far from your home I would assume you are on a dajemma? ~
== DYNAHE IF ~ InParty("CVSandr")~ THEN~ Oh, my age for dajemma is past. I was sent to the Sword Coast by the Wychalarn in search of other knowledge. But here and now 'tis not place nor time for prolonged lore. We should go back to the topic when we know each other better. ~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN~ Agreed. I look forward to exchange what knowledge we both may have on the current and past proceedings hereabout.~
= ~ (You see that Dynaheir looks puzzled for a moment back at Sandrah. Something seems to be shared between these two women that has slipped your attention.)~
END

INTERJECT_COPY_TRANS DYNAHE 0 Dynajoin30
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ From your accent I deduct you are from Rashemen.~ 
== DYNAHE IF ~ InParty("CVSandr")~ THEN~ Thou art right and well learned, young priestess, I am Dynaheir, a witch of Rashemen. ~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN~ So far from your home I would assume you are on a dajemma? ~
== DYNAHE IF ~ InParty("CVSandr")~ THEN~ Oh, my age for dajemma is past. I was sent to the Sword Coast by the Wychalarn in search of other knowledge. But here and now 'tis not place nor time for prolonged lore. We should go back to the topic when we know each other better. ~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN~ Agreed. I look forward to exchange what knowledge we both may have on the current and past proceedings hereabout.~
= ~ (You see that Dynaheir looks puzzled for a moment back at Sandrah. Something seems to be shared between these two women that has slipped your attention.)~
END

// Meilum Firewine
INTERJECT_COPY_TRANS MEILUM 0 Thirdpart
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ For how long have you been in this forsaken place already, you look as if it were a lifetime?~
== MEILUM IF ~ InParty("CVSandr")~ THEN ~ I guide the caravans and travellers safely through these roads.~
==Imoen2_ IF ~ InParty("CVSandr") InParty("Imoen2")~ THEN ~ Caravans, roads, traveller, wonder if there's been one of 'em round here ever since the Time of Troubles. ~
== BSHART IF ~ InParty("CVSandr") InParty("Sharteel") ~ THEN~He has seen no caravan round here since you or me were born.~
== MEILUM IF ~ InParty("CVSandr")~ THEN ~ I was guarding and guarding them. Where are they now? This is all I have found of them when they were gone that night.~ DO~ GiveItemCreate("Sanwi3","CVSandr",0,0,0) ~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ Poor man, have you been here ever since you lost that fated caravan so long ago? ~
== MEILUM IF ~ InParty("CVSandr")~ THEN ~ I hear them cry, the poor babies, where are they now - do not doubt my words fools, I am the greatest fighter on the Sword Coast.~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ I am afraid we just witnessed one of his last moments of clearness. His mind is uncurable gone.~
END

//Drienne Cloudpeaks

INTERJECT_COPY_TRANS DRIENN 1 Catkiller
== CVSandrJ IF ~ InParty("CVSandr") Global("SanNarQ","GLOBAL",2)~ THEN ~ Drienne, do you have any idea who killed your cat, maybe some smelly frightening creatures not from around here. ~
== DRIENN IF ~ InParty("CVSandr") Global("SanNarQ","GLOBAL",2)~ THEN ~ Others than those smelly frightening gnolls, yes, maybe the ones in the cave, all glowing eyes and smelling hellish, maybe they killed little Pixie.~ DO ~ SetGlobal("PixieHint","GLOBAL",1) ~
END

INTERJECT_COPY_TRANS DRIENN 7 Catkiller2
== CVSandrJ IF ~ InParty("CVSandr") Global("SanNarQ","GLOBAL",2)~ THEN ~ Drienne, do you have any idea who killed your cat, maybe some smelly frightening creatures not from around here. ~
== DRIENN IF ~ InParty("CVSandr") Global("SanNarQ","GLOBAL",2)~ THEN ~ Others than those smelly frightening gnolls, yes, maybe the ones in the cave, all glowing eyes and smelling hellish, maybe they killed little Pixie.~ DO ~ SetGlobal("PixieHint","GLOBAL",1) ~
END

//Taerom in Beregost

INTERJECT_COPY_TRANS TAEROM 14 TaeAmu
== CVSandrJ IF ~ InParty("CVSandr") Global("SanHadTae","GLOBAL",1)~ THEN ~ I hope you can help me, if you would please be so kind and take a look at this. (Sandrah moves up to Taerom and opens her dress at the collar.)~
== TAEROM IF ~ InParty("CVSandr") Global("SanHadTae","GLOBAL",1)~ THEN ~ Mylady, that is a very interesting ..em..amulet, in deed...~
== CVSandrJ IF ~ InParty("CVSandr") Global("SanHadTae","GLOBAL",1)~ THEN ~ The only problem is that it has this little spot, you see it, maybe a bit rusty?~
== TAEROM  IF ~ InParty("CVSandr") Global("SanHadTae","GLOBAL",1)~ THEN ~ Oh yes, a little spot I spot there..yes..let me take a closer look, mylady. ~
== CVSandrJ IF ~ InParty("CVSandr") Global("SanHadTae","GLOBAL",1)~ THEN ~ Yes, master smith, I knew you would see the problem and be able to help.~
== TAEROM IF ~ InParty("CVSandr") Global("SanHadTae","GLOBAL",1)~ THEN ~ If you do not mind, please, mylady, follow me this way to the backroom, I need to get a special..eh..*tool* for the problem at hand.~
== CVSandrJ IF ~ InParty("CVSandr") Global("SanHadTae","GLOBAL",1)~ THEN ~ Of course, dear master, I was sure you would possess the right *tool* for this...(Sandrah follows Taerom to the backroom of the smitty.)~
== TAEROM IF ~ InParty("CVSandr") Global("SanHadTae","GLOBAL",1)~ THEN ~ (When the two return a while later, you observe that the smith must have worked hard.)~
== CVSandrJ IF ~ InParty("CVSandr") Global("SanHadTae","GLOBAL",1)~ THEN ~ Thank you, Taerom, good work. You are a crafty gentlemen, I will return whenever I have a problem like this.~ 
== TAEROM IF ~ InParty("CVSandr") Global("SanHadTae","GLOBAL",1)~THEN ~ Always welcome, mylady. (The handsome smith winks at Sandrah.)~ DO ~ SetGlobal("SanHadTae","GLOBAL",2) RealSetGlobalTimer("SanTaeT","GLOBAL",600) ~
END

INTERJECT_COPY_TRANS TAEROM 14 TaeGir
== CVSandrJ IF ~ InParty("CVSandr") Global("SanHadTae","GLOBAL",3)~ THEN ~ Good day, master Taerom.~
== TAEROM IF ~ InParty("CVSandr") Global("SanHadTae","GLOBAL",3)~ THEN ~ Mylady, you look splendid once again, your repaired..em..amulet, suits you well...~
== CVSandrJ IF ~ InParty("CVSandr") Global("SanHadTae","GLOBAL",3)~ THEN ~ Oh, good master, if I could only say the say the same about the rest of my equipment.~
== TAEROM IF ~ InParty("CVSandr") Global("SanHadTae","GLOBAL",3)~ THEN ~ Anything you think I can help you with, mylady Sandrah?~
== CVSandrJ IF ~ InParty("CVSandr") Global("SanHadTae","GLOBAL",3)~ THEN ~ I hope so, Taerom, the clasp of my girdle is somehow stuck.~
== TAEROM IF ~ InParty("CVSandr") Global("SanHadTae","GLOBAL",3)~ THEN ~ (Looks around at his tools.) I just do not have the right equipment here, just wait a minute...~
== CVSandrJ IF ~ InParty("CVSandr") Global("SanHadTae","GLOBAL",3)~ THEN ~ (Sandrah follows the smith to the sideroom where he seems to be looking for the right tools to help her with her girdle...)~
== TAEROM IF ~ InParty("CVSandr") ~ THEN ~ No problem, lady Sandrah, you are always welcome here with your little problems...~ DO ~ SetGlobal("SanHadTae","GLOBAL",4) ~
END

// In Baldur's Gate

INTERJECT_COPY_TRANS SCAR 30 SanScar1
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ I understand, master Scar, that you wanted to give me something that my father has left in your care?~
==SCAR IF ~ InParty("CVSandr")~ THEN ~ Mylady Sandrah? Eh - oh, yes, yes, that little, eh, something. I think I have left it in my quarter, just...~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ It is probably best I just come with you to retrieve it, spares you one way, dear master.~
==SCAR IF ~ InParty("CVSandr")~ THEN ~ Eh, yes (blush), sure, this way...~ DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
END

INTERJECT_COPY_TRANS SCAR 31 SanScar4
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ Master Scar, did you have time meanwhile to find the little something we could not locate last time?~
==SCAR IF ~ InParty("CVSandr")~ THEN ~ Oh, well, yes, I have it now. Hm, oh yes it must be on my bedside table, if you could...~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ Yes, let us go and get it right now.~
==SCAR IF ~ InParty("CVSandr")~ THEN ~ Sure, this...you know the way by now, Sandrah.~ 
END

INTERJECT_COPY_TRANS LOBAR 0 LowLatern
==LOBAR IF ~ InParty("CVSandr")~ THEN ~ Mylady, we are acquainted to serve customers of every class and variety here, but rarely in my years have I encountered a lady of such distinction and beauty.~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ Thank you very much, kind sir, you flatter me in a much welcome way, if I may say.~
==LOBAR IF ~ InParty("CVSandr")~ THEN ~ While your companions may enjoy themselves on cost of the house, may I take the freedom to show you a bit of the specialities I have gathered over time?~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ It would be indeed a welcome excurse from the daily routine, for which your establishment has a reputation beyond the city's walls.~
==LOBAR IF ~ InParty("CVSandr")~ THEN ~ This is quite a compliment from a lady of the world like you~
END

INTERJECT_COPY_TRANS BORK 5 SanEdBlush
==CVSandrJ IF ~ InParty("CVSandr") InParty("Edwin") GlobalLT("X#EdwinBlushing","GLOBAL",5)~ THEN ~ This really destroys all my hopes I had for a possible relationship, dearest mage?~
==Bedwin IF ~ InParty("CVSandr") InParty("Edwin") GlobalLT("X#EdwinBlushing","GLOBAL",5)~ THEN ~Uh, Sandrah, our relationship, eh, what?~
==CVSandrJ IF ~ InParty("CVSandr") InParty("Edwin") GlobalLT("X#EdwinBlushing","GLOBAL",5)~ THEN ~How could I ever dream to compete with the beauties of the Blushing Mermaid or the Undercellars. Your taste in women is for those at a level I can never reach.~ DO ~ SetGlobal("SanEdBlushTa","GLOBAL",2) ~
==Bedwin IF ~ InParty("CVSandr") InParty("Edwin") GlobalLT("X#EdwinBlushing","GLOBAL",5)~ THEN ~Your training with the smith of Beregost and others may help...~
==CVSandrJ IF ~ InParty("CVSandr") InParty("Edwin") GlobalLT("X#EdwinBlushing","GLOBAL",5)~ THEN ~Still I am afraid I can never reach the level you prefer in women. I wonder how any girl can ever sink so low.~
==BORK IF ~ InParty("CVSandr") InParty("Edwin") GlobalLT("X#EdwinBlushing","GLOBAL",5)~ THEN~ Surely not one like you, mylady.~
END

INTERJECT_COPY_TRANS PHANDA 1 SanBiggPa
== CVSandrJ IF ~ InParty("CVSandr") ~ THEN ~ I would rather wish you attempted to molest me, bigot fool, so I could claim the right to defend myself.~
== PHANDA IF ~ InParty("CVSandr") ~ THEN ~ Such rage from one who is righteous herself? ~ DO ~ ForceSpell(Myself,CLERIC_SYMBOL_FEAR)~
END


INTERJECT_COPY_TRANS LAOLA 0 SanSharGirlFFist
== CVSandrJ IF~ InParty("Sharteel") InParty("CVSandr") ~ THEN ~ A girl in the ranks of the flaming fist, what do you say now, wildcat.~
== BSHART IF~ InParty("Sharteel") InParty("CVSandr")~ THEN ~ Paah, and see what she has to do, deliver unimportant messages like any errand boy could do. Say, do you see much fighting, Laola?~
== LAOLA IF~ InParty("Sharteel") InParty("CVSandr")~ THEN ~ Not, yet, I am pretty new in the Fist.~
== BSHART IF~ InParty("Sharteel") InParty("CVSandr")~ THEN ~ Fighting off those male pigs in the barracks will keep you busy at least.~
== LAOLA IF~ InParty("Sharteel") InParty("CVSandr")~ THEN ~ It's not that bad, I mean it happens even in the Fist, but not worse than anywhere else.~
== BSHART IF~ InParty("Sharteel") InParty("CVSandr")~ THEN ~ Could only mean you haven't met the worst swine of them all, Angelo Dosan.~
== LAOLA IF~ InParty("Sharteel") InParty("CVSandr")~ THEN ~ Psst, you shouldn't insult Commander Dosan...~
== BSHART IF~ InParty("Sharteel") InParty("CVSandr")~ THEN ~ Ha, *Commander* Dosan, by the Iron Throne's grace. Didn't I promise it, pussycat, he can be found with the scum trying to make his profit, this bastard.~
== LAOLA IF~ InParty("Sharteel") InParty("CVSandr")~ THEN ~ You are insulting a high officer of the...~
== BSHART IF~ InParty("Sharteel") InParty("CVSandr")~ THEN ~ Don't wet your panties about it, girly soldier, I can talk about my father how I want. And now  piss off.~
END

INTERJECT_COPY_TRANS REGINA 2 Sanbore2
== CVSandrJ IF ~ InParty("CVSandr") ~ THEN ~ Please, <CHARNAME>, let us leave this guy to dwell in his boredom. It was society people like this who drove me off to the road. Them and my family blood, that is.~
== Bimoen2 IF ~ InParty("Imoen2") ~ THEN ~ They drove you right into <CHARNAME>'s arms, so you shoulda thank 'em instead of blamin', haha.~
END



//_________________________________________________
//APPENDS Go Below


APPEND BRANWJ
IF ~Global("TranzRevBG","LOCALS",0) ~ THEN BEGIN TranzRevBG
SAY ~ I would sure like to crush that nasty mage to shreds, by Tempus. His magic will be of no use to him this time as I am not caught unaware like last time. Let us not hesitate any longer, my friends.~
IF~~THEN REPLY ~ So back all the way to the north, it seems.~ DO ~ SetGlobal("TranzRevBG","LOCALS",0)~EXIT
END
END

APPEND BIMOEN2

IF ~~ THEN BEGIN IntroImoS2
SAY ~(Imoen shakes Sandrah's hand with a bright grin on her face.) Nice to meet you, Sandrah, wow, what a nice robe, bad it's not pink at all. ~ 
IF ~~THEN EXTERN CVSANDRJ ReturndToImo2
END
END

APPEND BIMOEN2

IF ~~ THEN BEGIN IntroImoN2
SAY ~(Imoen wildly nods to these words.) You will see. ~
IF ~~THEN EXIT
END
END

APPEND SHARTE

IF ~ Global("BeatSharteel","GLOBAL",4) ~ THEN BEGIN SanSharBeatJ
SAY ~ I am beat by such a tiny warrior imitation like you? How is that. Well, I will find out soon enough, as I stand by my word. <CHARNAME>, you command my swordarm as of now.~
IF ~~ THEN REPLY ~ We will see your worth soon. But do not sulk too much, you have been beaten by Sandrah, one of the best fighters of the Sword Coast, whatever your prejudice against her looks might have suggested. ~ DO ~ ActionOverride("CVSandr",ForceSpell("Sharteel",CLERIC_CURE_SERIOUS_WOUNDS)~ GOTO SanSharBeatJ2
END

IF ~~ THEN BEGIN SanSharBeatJ2
SAY ~ Be sure I will study your strange cleric fighter girl carefully. The time in your pathetic group seems to hold no other visible pleasure for me anyway. ~
IF~~ THEN DO~  DestroyItem("SHARTHP1")
AddexperienceParty(300)
ChangeAIScript("SHARTEEL",OVERRIDE)
SetGlobal("BeatSharteel","GLOBAL",5)
ReallyForceSpellRES("fjxpmooc",Myself)
JoinParty() ~ EXIT
END
END

APPEND BIMOEN2

IF~~ THEN BEGIN BountyHu3
SAY ~ Imoen, the Terrier Nose smelled the rat, me too. Never seen one all ma life but know their stink by instinct. Who sent 'im? ~ IF ~~ THEN EXTERN CVSANDRJ BountyHu4
END
END

APPEND SHANDAL2

IF WEIGHT #-999 ~ InParty("CVSandr")
        PartyHasItem("CLCK22")
	OR(2)
        Global("Evilsh","GLOBAL",1)
        Global("Goodsh","GLOBAL",1)~ THEN BEGIN Punish
SAY ~It is an odd place, to be sure. Teleportations are affected most drastically in effect trapping the occasional passing mage. Those that are there will find their way off in time. Those that are not there anymore have found their own way off. I think you will agree that the ones that you met were not inclined to work together and effect their own release. An excellent judge of character in a supposedly natural phenomenon, wouldn't you say? I must be off. Fare ye well. ~
IF ~~ THEN DO ~ TakePartyItem("CLCK22")
                TakePartyItem("MISC2H")
                AddexperienceParty(900)
                ForceSpell(Myself,WIZARD_FLAME_ARROW)
                DisplayStringWait(Myself,@137)
                ForceSpell(Myself,WIZARD_AGANNAZAR_SCORCHER)
                SetGlobal("GoShand","BG1000",1)
		ForceSpell(Myself,WIZARD_LIGHTNING_BOLT) ~EXIT

END
END

APPEND IF_FILE_EXISTS NTHAEBAL

IF WEIGHT #-9 ~  !Dead("NTHASDAR")
!Global("TalkedToReedigInBeard","GLOBAL",1)
InParty("CVSandr")
Global("SanMageDM","LOCALS",0)
OR(2)
PartyHasItem("NTMISC10")
PartyHasItem("DSGBBOW")
~ THEN BEGIN SanHasItms1
  SAY  ~Travelers, I recognized again the devilish mage's presence in your companion. But I also sense you have an item of interest for me as well. So now...Whatever you do, do not give a certain book to anyone who asks you for it, you will certainly be betrayed.~
IF~~ THEN DO~ SetGlobal("SanMageDM","LOCALS",1)~EXTERN CVSandrJ SanHasItms2
END
END

APPEND KAHRK
IF WEIGHT #-2  ~Global("SanKahrk","GLOBAL",4)~ THEN BEGIN SanDropJar
SAY~ Ha, the stupid mortal wench could not hold on to that jar. She has not delivered my name but failed nevertheless.~
IF~~ THEN DO~ SetGlobal("SanKahrk","GLOBAL",5)~ GOTO 0
END
END




//________________________________________________________________________
// CHAINS Go Below

// Go To Hell Reactions

CHAIN
IF~ Global("NarHellAfter","GLOBAL",2)~ THEN CVSANDRJ NarGoneComm
~ A homesick demon, can you really believe this? ~
DO ~ SetGlobal("NarHellAfter","GLOBAL",3) ~
== Bimoen2 IF~ InParty("Imoen2") ~ THEN ~ Demon hunting is the funnest of funs. Let's get out and do some more. Watch out, demons I will get me a peanut sling...~
== BSHART IF~ InParty("Sharteel") ~ THEN ~ A male demon, how pathetic. Even down there in hell males are nothing but stupid scum. ~
== Bviconi  IF~ InParty("Viconia") ~ THEN ~ A male, no doubt. But even unusable as a slave. What a waste. ~
== BKIVAN  IF~ InParty("Kivan") ~ THEN ~ Just to think that such creatures are considered the threat of Shilmista - one never finishes learning. ~
== IF_FILE_EXISTS BSUFINCH  IF~ InParty("Sufinch") ~ THEN ~ (Scribble, scribble) Oh no, I have no idea how I can put this into words. The heroic deed reads just like a joke, oh my. ~
== BAJANT  IF~ InParty("Ajantis") ~ THEN ~ Once again evil has been smashed! Well, *smashed* may not be the right word. But then, even a peanut can smite evil when thrown by the hand of the righteous. ~
== IF_FILE_EXISTS k-roseB  IF~ InParty("k-rose") ~ THEN ~ Well, I am not sure if we want this adventure spread in a bardsong through the realms. But maybe it can be used on stage - for a comedy. ~
==CVJenliJ IF~InParty("CVJenlig")~THEN~A foe is defeated. Victory asks not for method to achieve it.~
== IF_FILE_EXISTS ~B!GAVINJ~ IF ~InParty("B!GAVIN")~ THEN ~ Oh, mylady, if I only once had the courage and energy to act out with such strength for the good, instead of faltering in indecision.~
== IF_FILE_EXISTS BRH#ISRA  IF~ InParty("RH#ISRA") ~ THEN ~Sandrah, thou arest the strangest kind of paladin one can imagine - but 'tis said that your goddess is different from others as well.~
== IF_FILE_EXISTS ACBreB IF~ InParty("ACBre") ~ THEN  ~ Buzzurk! How many beers did I have last night? Hit me with Clangeddin's Axe, I need to wake up. ~
== IF_FILE_EXISTS BNeera IF~ InParty("Neera") ~ THEN  ~ Are you sure you're not a wild mage at heart, Sandrah?~ 
== BSandr IF~ InParty("Neera") ~ THEN  ~Not a wild mage but a woman, who can get wild at times.~
== BBRANW  IF~ InParty("Branwen") ~ THEN ~ What? No honest fight, no bloodshed? By Tempus, those are demons for babies. ~
== BXANNN  IF~ InParty("Xan") ~ THEN ~ This victory is glorious but still just an illusion. He will come back and we all are doomed. ~
== Bedwin  IF~ InParty("Edwin") ~ THEN ~ Such intelligence in a woman is both admirable and dangerous (I need to get this pet under my thumb soon.)~
== BCORAN  IF~ InParty("Coran") ~ THEN  ~ This lair is now ours to loot. The whole thing reminds me of a story I once encountered with the daughter of...ah..maybe another time...  ~
== IF_FILE_EXISTS BGARRI IF~ InParty("Garrick") ~ THEN  ~  Well,
The mighty mage's courageous daughter,
Trying to avoid a slaughter,
Defeated the demon with a yell,
Telling him to GO TO HELL.~
== IF_FILE_EXISTS BRasaad IF~ InParty("Rasaad") ~ THEN  ~An unconventional way to solve problems, you are full of surprises, Sandrah. ~ 
== BDynah  IF~ InParty("Dynaheir") ~ THEN ~ There has been nothing alike this deed in the happenings from the times of Raumathar and Narfell until present days.~ 
== BJAHEIR  IF~ InParty("Jaheira") ~ THEN ~ The balance is restored again that was disturbed by this presence on the surface. Let us move, <CHARNAME>. ~
==BDorn IF~InParty("Dorn")~THEN~(Fiercely) You are fool to think you can fool a demon, woman.~
== BSANDR ~ I wonder if he will come back? ~
EXIT

CHAIN
IF ~~ THEN CVSANDRJ BaldMaekt15
~ Oh, my lovely competent leader, what is your plan? ~
DO ~ SetGlobal("NarHellAfter","GLOBAL",3) ~
== Bimoen2 IF~ InParty("Imoen2") ~ THEN ~ Let us go buy some pink balloons and some ribbons for the girls, and then we could...~
== BSHART IF~ InParty("Sharteel") ~ THEN ~ There sure is some arena around here where we can train on some male scum. Ha, all aboard for funtime! ~
== Bviconi  IF~ InParty("Viconia") ~ THEN ~ Another strange surfacer habit, these carnevals. But there seem to be a lot of willing males in the crowd. Excuse me, I think I spied a really decent prey...~
== BKIVAN  IF~ InParty("Kivan") ~ THEN ~ My heart bursts in remembering the Daoine Teague Feer, the great celebration of Shilmista. ~
== BSANDR IF~ InParty("Kivan") ~ THEN ~ This is not as sacred as the Feer, but maybe you will remember it once as well with joy - as a moment you have spent with one you loved.~
== BKIVAN  IF~ InParty("Kivan") ~ THEN ~ (Kivan wordlessly kisses Sandrah. He has a small tear in his eye.)~
== IF_FILE_EXISTS BSUFINCH  IF~ InParty("Sufinch") ~ THEN ~ Hey, I have not been to a fair since I left Waterdeep. I'll ride that wheel and see the town from a much higher perspective, hihi. Books are kept closed for tonight. ~
== BAJANT  IF~ InParty("Ajantis") ~ THEN ~ Friends, do not be too careless in this crowd. Evil loves to hide in places where people are enjoying their leisure too much. ~
== IF_FILE_EXISTS k-roseB  IF~ InParty("k-rose") ~ THEN ~ My, there is a bard's competition over there on the stage just starting. I expect you all to cheer for me! ~
== IF_FILE_EXISTS ~B!GAVINJ~ IF ~InParty("B!GAVIN")~ THEN ~ I'm sure sooner or later I will find my brother Jolun here in the crowd, enjoying himself with some girl probably.~
== IF_FILE_EXISTS ACBreB IF~ InParty("ACBre") ~ THEN  ~ Buzzurk! Do what you want. You will find me in the Drakon Tavern over there with a good beer, once you have finished your childish amusements. ~
== IF_FILE_EXISTS BRH#ISRA  IF~ InParty("RH#ISRA") ~ THEN ~A place where Sune's spirit becomes visible even to those not following her faith!~
==CVJenliJ IF~InParty("CVJenlig")~THEN~Jen'lig remembers celebration of coming to maturity. Only festival for Githyanki.~
== BBRANW  IF~ InParty("Branwen") ~ THEN ~ By Tempus, we have deserved this. Let us show them how heroes can celebrate. ~
== BXANNN  IF~ InParty("Xan") ~ THEN ~ This whole installation is just an illusion created to let us forget doom for a few quickly passing hours. ~
== BSANDR IF~ InParty("Xan") ~ THEN ~ Then sweet elf let us do just that, forget doom and enjoy the illusion as if it were real. Nothing of it can hurt us, right?~
== Bedwin  IF~ InParty("Edwin") ~ THEN ~ Haha, all these willing dumb women just waiting for the master to teach them tonight. (Damned, if I could only get this arrogant wonderful Waterdeep pussy into a state to recognize my qualities...chances may be good tonight...) ~
== BCORAN  IF~ InParty("Coran") ~ THEN  ~ Purses and more purses. Women and girls and more girls and more women. Where to start... ~
== BGARRI IF~ InParty("Garrick") ~ THEN  ~ My, there is a bard's competition over there on the stage just starting. I expect you all to cheer for me! ~
== BDynah  IF~ InParty("Dynaheir") ~ THEN ~ A welcome change from our usual life on the road. A tradition only too rare in my suffering homeland. But we canst enjoy a day if the chance appears.~
== BMINSC IF ~InParty("Minsc") ~ THEN~ Boo has reminded Minsc about the good tradition for us fighters of Rashemen to celebrate with mead our victories.~
== BDynah  IF~ InParty("Dynaheir") InParty("Minsc") ~ THEN ~ Oh, I fear the worst, Minsc always gets drunk heavily on such occasions and will be unusable the next day. But he never learns.~
== BSANDR IF~ InParty("Dynaheir") InParty("Minsc") ~ THEN ~ Do not worry, Dynaheir. I will gladly celebrate with our courageous protector and my healing skills will help us avoid the consequences afterwards. Let everybody enjoy the day.~
== BJAHEIR  IF~ InParty("Jaheira") ~ THEN ~ Blind citizens. I pity them for the arificial joys they need to install, never getting the chance of dwelling in nature's endless celebration and beauty. ~
== BSANDR ~ Look at that merchant, <CHARNAME>. On an occassion like this your girl should receive a nice ribbon for her hair.~
END
++ ~ Do not be too selfish, Sandrah, I will buy one for each girl in the party.~
EXIT


CHAIN
IF~Global("Pid9AnklCmt","LOCALS",1) ~ THEN CVSANDRJ Pid9AnklComnts
~ (The world around does no longer exist at this moment..)  ~
DO ~ SetGlobal("Pid9AnklCmt","LOCALS",2) SetGlobal("Pid9Ankl","LOCALS",1) ~
== Bimoen2 IF~ InParty("Imoen2") ~ THEN ~ Huuh, Huh, lovee dovees, watcha doing while all of us are waiting. Oh healer, please, I need help, hahaha...~
== BSHART IF~ InParty("Sharteel") ~ THEN ~ How pathetic. Can you not even be decent enough to go beneath the blankets. Think I must throw up.. ~
== Bviconi  IF~ InParty("Viconia") ~ THEN ~ Which of my sisters taught you in these arts, Sandrah? <CHARNAME>, remember you have another healer in your group if it REALLY hurts. (Licks her lips seductively.) ~
== BKIVAN  IF~ InParty("Kivan") ~ THEN ~ What a lovely scene, oh how I yearn for the forests of Shilmista and my beloved Deheriana to do the same. ~
== IF_FILE_EXISTS BSUFINCH  IF~ InParty("Sufinch") ~ THEN ~ (Scribble, scribble) Hups, I have not misplaced my notepad around here, no probably not. ~
== BAJANT  IF~ InParty("Ajantis") ~ THEN ~ Oh, ehem, sorry, mylady. I did not recognise you were behind that tree. (The color of his face could be named as *purple*.)~
== IF_FILE_EXISTS k-roseB  IF~ InParty("k-rose") ~ THEN ~ Just call on me if you need some romantic music to accompany you. ~
== IF_FILE_EXISTS ACBreB IF~ InParty("ACBre") ~ THEN  ~ Buzzurk! Can this not wait until we get to a decent inn, so the rest of us can get a cool nice beer while you do whatever you want to do. ~
== IF_FILE_EXISTS ~B!GAVINJ~ IF ~InParty("B!GAVIN")~ THEN ~ I always wish I could my courage together and make such a move myself. Looks as if I have to be the bystander again.~
==CVJenliJ IF~ InParty("CVJenlig") ~ THEN ~Mammals at play not much different from Githyanki. Jen'lig misses being pleasured this way.~
== BBRANW  IF~ InParty("Branwen") ~ THEN ~ By Tempus, you are lucky to be still alive. I heard a rumour in these bushes and just wanted to behead some nasty gibberlings. ~
== BXANNN  IF~ InParty("Xan") ~ THEN ~ Oh, this young love on the eve of doom. Keep on with it while you still can. Too sad there is no tomorrow for you and all of us. ~
== BCORAN  IF~ InParty("Coran") ~ THEN  ~ Want me to join. I learned the Thay type of massage from a lady I met in...ah, no, I think it was...nevermind. ~
== BDynah  IF~ InParty("Dynaheir") ~ THEN ~ Thou are not aware of the presence of danger, but thou shouldst.~
== BJAHEIR  IF~ InParty("Jaheira") ~ THEN ~ Our competent leader through this wilderness and <PRO_HISHER> likely competend couselor, see, see. I assume you two are taking special training in survival. Ha! (Stamps away angrily.) Let us move, <CHARNAME>. ~
==BGARRI IF~InParty("Garrick")~THEN~A few lines to add to my heroine's epos...the aspects of  romance in between the great deeds.~ 
==Bedwin IF~InParty("Edwin")~THEN~(I hope she'll recognise my limping tomorrow - I must arrange a similar scene for us.)~
== IF_FILE_EXISTS BRH#ISRA  IF~ InParty("RH#ISRA") ~ THEN ~ The Lady Firehair can be worshipped in many ways (Smile).~
== BSANDR ~ (Sigh). Too good we have caring companions with us. ~
EXIT

CHAIN
IF ~ Global("SanSplash","GLOBAL",3) AreaCheck("CVSPLA") ~ THEN CVSANDRJ Sunsplash2
~ What are you waiting for slowpokes, to the water, dive in...  ~
DO ~ SetGlobal("SanSplash","GLOBAL",4)~
== Bimoen2 IF~ InParty("Imoen2") ~ THEN ~ Hooray, lets's run - loser gets dunked.~
== BSHART IF~ InParty("Sharteel") ~ THEN ~ Uh, those pathetic men. In armour they can hide at least some of it! ~
== Bviconi  IF~ InParty("Viconia") ~ THEN ~ If that sunlight will not kill me then the water surely will. If it is Shar's will however, I will survive all these trials. ~
== BKIVAN  IF~ InParty("Kivan") ~ THEN ~ Sandrah, little elf-at-heart, I feel like a firefly dancing on the lake in the midday sun. ~
== IF_FILE_EXISTS BSUFINCH  IF~ InParty("Sufinch") ~ THEN ~ No, no I will not write anything down about this scene. ~
== IF_FILE_EXISTS BRH#ISRA  IF~ InParty("RH#ISRA") ~ THEN ~ The Lady Firehair must have arranged this scene for us. ~
== IF_FILE_EXISTS Bneera  IF~ InParty("Neera") ~ THEN ~ If this isn't the wildest of wild magic, I don't know.~
== Bedwin IF~ InParty("Edwin") ~ THEN ~ (What a chance to show the princess what is really to be explored beneath the red robe - if she would once just look in my direction. A bit of splashing might help...)~
== BMINSC IF~ InParty("Minsc") ~ THEN ~ No, Boo stays on the beach, your fur will get all wet and ruffled and you complain afterwards. And get out of the sun, It's too hot for you. What? - Yes, I command you. I do in matters I know best and you do where you have more insight, right?~
==CVJenliJ IF~InParty("CVJenlig")~THEN~Jen'Lig likes be out of disguise clothes. Water caress scales like lover should.~
== BAJANT  IF~ InParty("Ajantis") ~ THEN ~ Oh, ehem, sorry, mylady. I did not look your way, eeh, and not yours of course. (Dives under water.)~
== IF_FILE_EXISTS k-roseB  IF~ InParty("k-rose") ~ THEN ~ Starts to sing *In the summertime, when the weather is fine.... ~
== IF_FILE_EXISTS Brasaad  IF~ InParty("Rasaad") ~ THEN ~ I'd prefer bathing in Selune's light but it's better than not bathing at all.~
== IF_FILE_EXISTS ACBreB IF~ InParty("ACBre") ~ THEN  ~ What are you staring at, he! Did you think I have a fur on my skin or what. Buzzurk! ~
== IF_FILE_EXISTS ~BB!GAVIN~ IF~ InParty("B!Gavin") ~THEN~ Just like in the good old days on the beach in Ulgoth's Beard, with Jolun and the rest. What a wonderful idea, Sandrah!~
== BBRANW  IF~ InParty("Branwen") ~ THEN ~ My, is that water warm. Try to do that in Norheim, you will be an iceblock even in summertime. ~
== IF_FILE_EXISTS BT2Val IF~ InParty("T2Val") ~THEN~I have not had such simple innocent pleasure since I was a little girl, yipee.~ 
== BXANNN  IF~ InParty("Xan") ~ THEN ~ The pleasure and the priviledge is mine to die by your side. ~
== BCORAN  IF~ InParty("Coran") ~ THEN  ~ Ladies, out of the way. Let me show you my swandive! ~
== BDynah  IF~ InParty("Dynaheir") ~ THEN ~ Thou art never too old for a bit of healthy fun.~
== BDorn  IF~ InParty("Dorn") ~ THEN ~Water? I don't even drink it, ever!~
== BJAHEIR  IF~ InParty("Jaheira") ~ THEN ~ Let us encompass nature like nature made us to be. ~
EXIT

// Diary and Cloth Pieces

CHAIN
IF~ Global("SanChildH","GLOBAL",1)~ THEN CVSANDRJ ChiHin10
~ This piece of cloth and that scouts diary seem to be somehow connected.~
DO ~ SetGlobal("SanChildH","GLOBAL",2)~
== Bviconi  IF~ InParty("Viconia") ~ THEN ~ So that was the scene I witnessed way back then, the ambush on the travellers. The occasion where I found the piece I gave you. I was the drow that as usual was considered to be anyone's enemy just because I was there.~
==CVSandrJ IF~ InParty("Viconia") ~ THEN ~ But you are also our witness that the children with the travellers could escape.~
== BDynah  IF~ InParty("Dynaheir") ~ THEN~ 'tis that mine assumption was right with this cloth piece, it was lost here way back then. The children that were so much sought after and cared for, they musta been special ones.~
==IF_FILE_EXISTS BSUFINCH  IF~ InParty("Sufinch") ~ THEN ~ Whenever I read about those Time of Troubles, it scares me a lot. I am glad we live in lighter times now.~
==CVSandrJ IF~ InParty("Sufinch") ~ THEN ~ Those times cast a long, long shadow, Finch. They can block off the sun even for us today.~
== BSHART IF~ InParty("Sharteel") ~ THEN ~ I hate these riddles. Why this complications, gut every male swine that is involved and the truth will come out by itself.~
== Bimoen2 IF~ InParty("Imoen2") ~ THEN ~ Lotsa little children were carried cross the coast back then. Soothing for me I wasn't the only one hiking around with ol' Puffguts.~
==CVSandrJ ~ What we have is the story of two baby children on a flight across the Sword Coast. From where to where? Mmh. They are protected by one party, the travellers. They are pursued by one or more other parties, at least the one that attacked and the one from Thay. But they escaped, leaving those torn cloths behind, that remind me of something I should know but cannot recall.~
END
++ ~ I think my head is spinning a bit. It is a confusing tale, it seems to be connected with you, but will it help us with our urgent problems at hand?~ + ChiHin11
++ ~ As much as I can understand your constant seeking for tales from the past, I do not see anything we can do with the information we have gathered. This trail is old and cold. How can it lead us to our ever pressing enemy of today?~ + ChiHin11

CHAIN
IF~~ THEN CVSANDRJ ChiHin11
~ You are right, <CHARNAME>, there is no direct hint to anything we would need at the moment. It does not yet help us directly. Unless we get to learn more by any chance the trail is as cold as you said.~
= ~ It is still, I cannot get these children out of my thoughts. They must be nearly grown by now, about our age if they have survived. And somehow their tale is intwined with ours.~
END
++ ~ *For one short moment, a thought rushes through your mind. You are an orphan that came to Candlekeep with Gorion just about that time, seemingly out of nowhere...*~
EXIT

CHAIN
IF ~ Global("SanChildH","GLOBAL",3)  ~ THEN CVSANDRJ ChiHin20
~ Let us stop for a moment, <CHARNAME>. I want to develop the theory I have made out of the different items we found and the information we gathered in addition. I think something has emerged from it, even if it is not totally clear yet what the connection is to our current quest.~
= ~* Sandrah appears to be obviously excited. Whatever she has found out touches her deeply.*~
DO~SetGlobal("SanChildH","GLOBAL",4)~
== BDynah  IF~ InParty("Dynaheir") ~ THEN ~ 'tis not only thee that is feeling such.~
== IF_FILE_EXISTS ~B!GAVINJ~ IF ~InParty("B!GAVIN")~ THEN ~ Are you well, Sandrah. You look like you have seen a ghost.~
==CVSandrJ IF ~InParty("B!GAVIN")~ THEN ~ A ghost indeed. Maybe worse.~
== Bimoen2 IF~ InParty("Imoen2") ~ THEN ~ <CHARNAME>, we gotta listen. I don't like how my besta friends looks now. Gloomy.~
== Bviconi  IF~ InParty("Viconia") ~ THEN ~ I know this feeling of the past trying its prying fingers into present life, like the Spiderqueen trying to hunt the renegade on the surface.~
== Bajant  IF~ InParty("Ajantis") ~ THEN ~ Helm's everwatching eye will keep safe those that do not follow false gods.~
==CVSandrJ ~ Those two children with the travellers were Bhaalspawns.~
END
++ ~ Hunted by some while others tried to hide and save them. From the time of occurance that would make sense. But its the bad hunting for them and the good trying to save them?~ +  ChiHin21
++ ~ And one of them might have been the one your mother gave life to. I see your interest in them now. But it seems they have survived. But who were the ones who tried to save them - and why?~ + ChiHin21

CHAIN
IF~~ THEN CVSANDRJ ChiHin21
~ One of them was the other child my mother gave birth to. Covered in the cloth with the emblems of my father's house. But the other child? The Othlor's scout thought it was a Bhaalspawn as well. So, was my own father one of those travellers? He and his Harper friends were trying to save the spawns? ~
== BDynah  IF~ InParty("Dynaheir") ~ THEN ~ I hath sensed the Bhaal presence in this cloth all along. Has the renegade Othlor finally found them or has he found another one for his purpose?~
== BBRANW  IF~ InParty("Branwen") ~ THEN ~ Let me tell you a story of my people and the northern pirates. One of our captains who was hunted by a fleet of their black boats happened to escape with his ship between the cliffs of an island. He told his men to throw wooden planks and old barrels and some clothes overboard. The tide moved the relics towards the pirate fleet and the pirates sailed away thinking that our ship has wrecked on those cliffs.~
==CVSandrJ IF~ InParty("Branwen") ~ THEN ~ You mean these cloth pieces served a similar purpose. The hunters should find them and think the children were no more.~
END
 IF~ !InParty("Branwen")~ THEN REPLY~ I heard a story once from a captain you manoeuvred his ship between the dangerous cliffs below Candlekeep in escape from a fleet of pirate boats. He told his men to throw wooden planks and old barrels and some clothes overboard. The tide moved the relics towards the pirate fleet and the pirates sailed away thinking that our ship has wrecked on those cliffs. These cloth pieces could have served a similar purpose. The hunters should find them and think the children were no more. So you are hunting your own brother or sister now. Do you think its the one responsible for what is going on at the Sword Coast?~ + ChiHin22
 IF~ InParty("Branwen")~ THEN REPLY~ So you are hunting your own brother or sister now. Do you think its the one responsible for what is going on at the Sword Coast?~ + ChiHin22

CHAIN
IF~~ THEN CVSANDRJ ChiHin22
~ The answer is not so easy, <CHARNAME>. I think that the events we are trying to discover, this Iron Crisis, the bandit raids, and the rumours of war with Amn are indeed machinations of one who wants to profit from them to gain power. And gaining power is what a rising Bhaalspawn would be after, in conjunction with major bloodshed.~
= ~ But is the Bhaalspawn that I see behind this the same one that my father once tried to save? Mind again that this spawn is not really brother or sister to me. And mind that a Bhaalspawn is a powerful being, but not necessarily evil.~
==IF_FILE_EXISTS BSUFINCH  IF~ InParty("Sufinch") ~ THEN ~ The prophesy of Alaundo says that all Bhaalspawns aim at power and that there will come a time of war between them for power.~
==CVSandrJ IF~ InParty("Sufinch") ~ THEN ~ True, but Alaundo says nowhere that the fight for power is because they all have the same aim - the Throne of Bhaal. Maybe one of them uses his powers for a better aim.~
== BDynah  IF~ InParty("Dynaheir")!InParty("Sufinch") ~ THEN ~ The prophesy of Alaundo says that all Bhaalspawns aim at power and that there will come a time of war between them for power.~
==CVSandrJ IF~ InParty("Dynaheir")!InParty("Sufinch") ~ THEN ~ True, but Alaundo says nowhere that the fight for power is because they all have the same aim - the Throne of Bhaal. Maybe one of them uses his powers for a better aim.~
== Bjaheir  IF~ InParty("Jaheira") !InParty("Dynaheir")!InParty("Sufinch")~ THEN ~ The prophesy of Alaundo says that all Bhaalspawns aim at power and that there will come a time of war between them for power.~
==CVSandrJ  IF~ InParty("Jaheira") !InParty("Dynaheir")!InParty("Sufinch")~ THEN ~True, but Alaundo says nowhere that the fight for power is because they all have the same aim - the Throne of Bhaal. Maybe one of them uses his powers for a better aim.~
END
++~ Elminster would try to save a Bhaalspawn to use its power to fight those spawns trying to raise to power in their father's wake. Or maybe two of them, in order to make sure. One of them being of his own beloved wife Khalindra, thus giving her death a special meaning - the god of murder in the end defeated by his own cunning plan.~
EXIT

// Waterdeep Temple
CHAIN
IF~~THEN CVSANDRJ SanWDTemple1
~ Thank you for the welcome, Rhanthona, although I have well heard the slight hint in it regarding my abscence.~
DO ~ SetGlobal("SanWDTempleHint","GLOBAL",2)~
==SAMYSTP1~ Mylady, it was not intended as critisism, we just miss your joyful and encouraging presence here. Your father has advised us on your mission which we follow with great interest. The fame of your ventures reaches us regularly. So this must be the famous <CHARNAME> then?~
END
++~Famous? I have not known that the Temple of Waterdeep has such an interest in me.~+ SanWDTemple2

CHAIN
IF~~THEN CVSANDRJ SanWDTemple2
~ You know about my father's interest in you already, and the temple has an interest in you and me - and many means to receive information from the Realms. Be sure that little of what we accomplish remains unnoticed for long.~
==SAMYSTP1~ Do not be irritated, young friend, your way is a special one and much depends on your actions, and the actions of our priestess as well.~
== CVSandrJ ~ Let us stop now, Rhanthona, before we give <CHARNAME> the impression that Mystra's disciples are trying to mingle with <PRO_HISHER> fate.~
==SAMYSTP1~ I am sorry, Mylady, if my words should have given that impression. No, young friend, your fame is spreading by your deeds and many follow your progress with interest. It is not the nature of Mystra to interfere with the decisions of the mortals. Even if our priestess is by your side, she does all of this on her own responsibility.~
== CVSandrJ ~ Thank you, Rhanthona...~
==SAMYSTP1~ Before you continue onwards, Mylady, if your time allows you may want to pay a visit to the Inner Temple with your friends. We have taken care of a problem case here but we are stuck in our progress. I assume that your healing talents may assist us to accomplish a result.~
END
++~ We have already dwelled here long enough, Sandrah, our own mission calls us forward.~ DO~
IncrementGlobal("Sanpoints","GLOBAL",-2)~ EXIT
++~ Lead us to the Inner Temple, Sandrah, let us see what we can do.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~ EXIT
++ ~ They seem to hold you at high esteem here, Sandrah. Another of your little secrets, my wonderful companion.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~ EXIT

CHAIN
IF~ Global("SanWDTemplWi","GLOBAL",8)~ THEN CVSANDRJ SanWDTempleLey
~ Aaah....little one,...are you fine...?~
DO~ SetGlobal("SanWDTemplWi","GLOBAL",9)~
==CVLEYG ~ I think I am - I have been away long, like in an endless dream. But you, mylady, what is it with you?~
== CVSandrJ ~ Aaah...do not worry, Leyala, I will be fine soon...just a bit of rest for all of us.~
==CVLEYG ~ I was very sick before the dream began but now I feel well. Have...have you done that, mylady?~
== CVSandrJ ~ This here is Mystra's temple and I am one of her healers. I am glad you feel better, Leyala.~
==CVLEYG ~ Yes, this is Mystra's temple, you look just like the goddess as I saw her in my dream state...~
DO ~ EscapeArea() AddexperienceParty(11300) RestParty()~EXIT

CHAIN
IF WEIGHT #-2~Global("SanXzarDea","GLOBAL",1) Global("SanResurAva","GLOBAL",1) InParty("Xzar")~ THEN CVSANDRJ Sanxzarhandsoff
~What do you intend to do with our comrade's body, greedy vulture?~
DO~SetGlobal("SanXzarDea","GLOBAL",2) ~
==BXZAR~ (Mumbles) Magnificient material...bones...sinews...Eh, what is it, healer girl?~
== CVSandrJ ~ Step back, necromancer, or you will feel the whole wrath of Mystra! This body is none of your business.~
==BXZAR~(We will see, we will see...the day will come when your body will be on my workbench...)~
END
++~What is going on here?~ EXTERN CVSandrJ SanRessur1

CHAIN
IF~~THEN CVSandrJ FirstWDIntro3
~The North East ward of town is of no interest to us, worker's quarters, markets, inns - the gates lead to northern wastelands and an abandoned Sune temple.~
==CVSandrJ IF~!AreaCheck("CVELM1")~THEN~East of the Waukeen ward is where my home is, Elminster's house, also there is the famous Bloomwiffler's book shop and the most expensive restaurant of Faerun, Le Coq d'Or aux l'Eau Basse.~
==CVSandrJ IF~AreaCheck("CVELM1")~THEN~This ward is where my home is, Elminster's house, also there is the famous Bloomwiffler's book shop and the most expensive restaurant of Faerun, the Coq d'Or au l'eau Basse.~
=~West of my father's house is the West Gate and the Commander's house, he is one of the Hidden Lords of Waterdeep.~
==CVSandrJ IF~!AreaCheck("CVELM4")~THEN~North of Elminster's House is Mystra's Temple facing Mount Waterdeep which is tunnelled by the infamous subterranean Undermountain. ~
==CVSandrJ IF~AreaCheck("CVELM4")~THEN~ Here we are at Mystra's Temple facing Mount Waterdeep which is tunnelled by the infamous subterranean Undermountain. ~
==CVSandrJ IF~!AreaCheck("CVROA3")~THEN~Further to the north we can visit the fish market ward.~
==CVSandrJ IF~AreaCheck("CVROA3")~THEN~ Right here we can visit the fish market.~
END
IF~~THEN REPLY~A lot of things to see and visit, I admit.~ DO~SetGlobal("WDIntrotalk","LOCALS",4)~EXIT


//Winski Firts Appearance

CHAIN
IF ~~ THEN CVSANDRJ Winsk1Dis7
~ Those were the Othlor's words. ~
DO ~ SetGlobal("WinskApp1","GLOBAL",8) ~
== BIMOEN2 IF~ InParty("Imoen2") ~ THEN ~ Dying Gods...Rising Gods..uuh scary.~
== BDynah  IF~ InParty("Dynaheir") ~ THEN ~ In the Times of Trouble Gods had been slain. Thus says the wise Alaundo, that dead not all may remain. Bhaal may rise again and maybe others.~
==IF_FILE_EXISTS BSUFINCH  IF~ InParty("Sufinch") ~ THEN ~ Had I only been granted access to the inner parts of Candlekeep to study Alaundo's writings. The prophesy of the dead God that will rise again. Bhaal.~
== Bjaheir  IF~ InParty("Jaheira") ~ THEN ~ Those like me who remember the Times of Trouble still tremble when they hear words like these. Ao has restored the balance when the revolting gods were slain. The rising of one of them or the rising of a new one on their behalf will mean the destruction of that tiny balance and a catastrophe for Faerun.~
== BSANDR ~ The peace after the Times of Trouble may be a tiny flower, easily to be trampled by those who lust for power. I do not believe in rising gods, but I fear those corrupt mortals and their deeds who follow such ideas.~
END
++ ~ The Times of Trouble, the slain gods, the prophecies of Alaundo concerning the spawn of the dead god Bhaal - my head is spinning. What does all of that have to do with us? I need fresh air, let us move on.~
EXIT

CHAIN
IF ~ Global("SaOgmaIn","GLOBAL",2)~ THEN CVSANDRJ saogma30
~ Say, little girl, do you have an idea where you last saw your mama?~
DO ~ SetGlobal("SaOgmaIn","GLOBAL",3) ~
==SAOGMA ~ My friends were right, hahaha, you <PRO_RACE>s always fall for that little girl in distress crap.~
==CVSandrJ ~ What is that? This is no thing to make jokes about, little one. ~
==SAOGMA ~ We will use this little trick now more often, haha!~
DO ~ StartCutSceneMode()
SmallWait(7)
CreateVisualEffectObject("SPFLESHS",Myself)
Enemy()
Polymorph(OGRE_MAGE)
CreateCreatureObject("Ogrema01",Myself,0,0,0)
CreateCreatureObject("ogrema_a",Myself,0,0,0)
SmallWait(4)
EndCutSceneMode()~ 
EXIT

CHAIN
IF ~ Global("SANIMONASHINT","GLOBAL",19) Global("OrcimoTalk","GLOBAL",0) OR(2) AreaCheck("arr019") AreaCheck("BG1903") ~ THEN CVSANDRJ ImoWoundOrc
~ A wounded orc left behind. He must be from Knawlod's group, as there seem to be no other orcs in this camp.~
DO ~ SetGlobal("SANIMONASHINT","GLOBAL",20)~
== orcimo1 ~ UUUAAAH!~
== BIMOEN2~ This orc then must know where Henning is!~
== orcimo1 ~ UUUAAAH!~
== CVSandrJ ~ He will not be able anymore to tell us anything.~
== BIMOEN2~ Please, please besta Sandrah, do something to make him heal, we need to ask 'im about my Henning, quickest help!~
== CVSandrJ ~ You really want me to heal this orc slayer that maybe has hurt your dear boy.~
== BIMOEN2~ Sandrah, please, you must and must. If he knows where Henning is, we must know.~
== CVSandrJ ~ I will do as you ask. You will bear the consequences, Imoen.~ DO ~ ForceSpell("orcimo1",CLERIC_HEAL)~
EXIT

// Sandrah Henning Rescue
CHAIN
IF~ Global("SanPrisDo","GLOBAL",1)~ THEN CVSANDRJ SanPrisDo
~ This looks like the prison level.~
DO ~ SetGlobal("SanPrisDo","GLOBAL",2)~
== BIMOEN2~ Looka that door, uuh, it's locked. Must be the prison. HENNING! Are you in there?~
== CVSandrJ ~ Fine, Imoen, keep shouting like that, then we do not need to search all the wardens ourself. We just wait here and let them all come to us.~
== BIMOEN2~ And they will fall one by one, from the hand of Imoen the Magnificent, ha! No one takes my loverboy and is spared, I tell ya.~
END
++ ~ Please, Imoen. A bit more restraint. We are near your boy for sure. We better sneak in most silently before they do him harm in the end.~ + SanPrisDo2

CHAIN
IF~~ THEN CVSANDRJ SanPrisDo2
~ Imoen, <PRO_HESHE> is right. We can do the big revenge once we hold Henning safely. You know about the cornered rat, do you?~
== BIMOEN2~ Yeah, guess you gotta point there. They will bite an' scratch like dem rats and maybe hurt my darling in the end. Imoen the Shadow of Revenge will sneak up on them. Let's go.~
END
++ ~ Have your arms ready, when we open that door.~
EXIT

CHAIN
IF ~ Global("OrcPrison","GLOBAL",9) Global("ImoSlay1","LOCALS",0)~  THEN CVSANDRJ ImoSlay1
~ (You are still shocked about Imoen's strange transformation during the battle.)~
END
++ ~ Imoen, what the hell has happened? What was this creature? A demon? ~ + ImoSlay2

CHAIN
IF ~~ THEN CVSANDRJ ImoSlay2
~ Are you well again, Imoen? Here, let me look at you?~
DO ~ SetGlobal("ImoSlay1","LOCALS",1) ~ 
== BIMOEN2~ I dunno what happened. A miscast spell from Tarnesh's spellbook maybe. I cannot remember anything clearly. 'twas all blood and blurry, n' I guess I killed some orcs with empty hands, huh?~
== CVSandrJ ~ To me it looked like more than a spell to be found on the pages of a third rate mage's spellbook. But I am not completely sure yet if it really was what I think it could have been.~
== BIMOEN2~ I swear I will never do that again, that was really scary. I was so very strong and at the same time so helpless.~
END
++ ~ Right, we need to continue. I told you, Imoen, be careful with those spells, never use one you are not completely sure of. Especially not when we are in a combat like this. I need you, little one - and I do not want to loose you, little sister.~ EXIT
++ ~ Sandra will you tell me about your suspicion? If there is anything we can do for Imoen, then you need to tell me. I do not want to loose my little sister.~ + ImoSlay3

CHAIN
IF ~~ THEN CVSANDRJ ImoSlay3
~ No, <CHARNAME>, it is just a vague thought. I need to investigate further. It is not something to discuss now in the middle of this dungeon. We shall talk about it at a more quiet moment and after I have consulted with my book again on the topic. I hope that I was mistaken, but what we have seen could have been the mortal form of Bhaal. The Slayer. ~
END
++ ~ Bhaal again. Somehow this dead god is involved in all of this, and still we have no clue about how. But you are right, this dungeon is no place for futher talk. Knawlod is waiting here somewhere.~
EXIT

CHAIN
IF ~ Global("OrcPrison","GLOBAL",13)~ THEN CVSANDRJ HenToWD
~ <CHARNAME>, I must urgently take Henning to my father's house. Imoen, he will survive his wounds if I take him there to the care of Elminster and Mystra.~
DO ~ SetGlobal("OrcPrison","GLOBAL",14)~
== BIMOEN2~ Please, please besta Sandrah, do everything to make him heal, quickest we go to Waterdeep!! Right, <CHARNAME>?~
== CVSandrJ ~ Hold on for a moment, Imoen. We have little time for this - we cannot travel all to Waterdeep - and do not forget, we will have all our enemies against us if we do not continue our strike now.~
== BIMOEN2~ But what do we do? You do not give up Henning, no, you would never, I know you, Sandrah.~
== CVSandrJ ~ (Sandrah has taken a small item from her magical box. It looks like a very small splinter of glass but it starts to expell a soft blue light as soon as she holds it in her hand.]~
== BIMOEN2~ Whatcha do, be careful, very very much.~
== CVSandrJ ~ Listen closely and do not discuss with me, <CHARNAME>, this is the only way to rescue Henning.~
END
++ ~ Sure, Sandrah, you have all our trust in that. We all want Imoen and Henning happily together once again. Do whatever must be done.~+ HenToWD2
++~ The one thing we don't need at this moment is some unnessessary hocus pocus.~ + HenToWD2

CHAIN
IF ~~ THEN CVSANDRJ HenToWD2
~ This is a small splinter from Mystra's shard given to me by my father for the use to rescue my life if in the deadliest of dangers. It can be used one time only and only by one of Elminster's blood, like the Shard itself. It can take me to Waterdeep in an instant.~
== BIMOEN2~ Oh, you wonderful besta friend of all, you will give this for Henning. But how?~
== CVSandrJ ~ I will activate it now to transport me and Henning to my father's garden and the altar of Mystra. ~
END
++ ~ I see that it needs to be done, Sandrah, even at the price of losing your help now at this crucial moment in our quest. Imoen, we will not hold her back. It is the only way to save Henning.~ + HenToWD3
++ ~ You propose to desert me at this crucial moment? No way!~ + HenToWD4

CHAIN
IF ~~ THEN CVSANDRJ HenToWD3
~ <CHARNAME>, you prove yourself a competent leader once again. Do not worry about the task here in the mines. If this splinter works, I will be at Waterdeep in a moment. Once there with Elminster and Mystra, I am sure that they will have a way to locate you and send me back here to your side.~
== BIMOEN2~ I cannot come with you, Sandrah, are you sure?~
== CVSandrJ ~ Poor darling, there is no way for you to come with us. The splinter only carries me and what I have on me. I can only take Henning as he is presently unconcious. And, Imoen, mind you, with all your multiple talents you still are no healer. What Henning needs now is healing and rest. When I am back we will find a way to go to him. I swear it as your *besta* friend.~
== BIMOEN2~ Henning, I love you. And you too, Sandrah. ~ DO~ AddXPObject("Imoen2",10000)IncrementGlobal("Sanpoints","Global",1)~
EXIT

CHAIN
IF ~~ THEN CVSANDRJ HenToWD4
~ Hush, <CHARNAME>, selfish idiot. Do not worry about the task here in the mines. If this splinter works, I will be at Waterdeep in a moment. Once there with Elminster and Mystra, I am sure that they will have a way to locate you and send me back here to your side.~
== BIMOEN2~ I cannot come with you, Sandrah, are you sure?~
== CVSandrJ ~ Poor darling, there is no way for you to come with us. The splinter only carries me and what I have on me. I can only take Henning as he is presently unconcious. And, Imoen, mind you, with all your multiple talents you still are no healer. What Henning needs now is healing and rest. When I am back we will find a way to go to him. I swear it as your *besta* friend.~
== BIMOEN2~ Henning, I love you. And you too, Sandrah. ~ DO~ AddXPObject("Imoen2",10000)IncrementGlobal("Sanpoints","Global",-2)~
EXIT

// Rejoined in Cloakwood Mines

CHAIN
IF~ Global("OrcPrison","GLOBAL",15)~ THEN CVSANDRJ ClckWMines1
~Henning is at Waterdeep and my father has sent me back by means of the Shard. He sends greetings to all of you.~
DO ~ SetGlobal("OrcPrison","GLOBAL",16) AddXPObject("CVSandr",7000)~
== BIMOEN2~ SANDRAH!!! Quickest tell me how is Henning.~
== CVSandrJ ~ (Takes Imoen in her arms.) Everything is fine, little one. Henning will be well again soon. Mystra herself oversees his healing, together with my father. There can be no better care on Toril than that.~
== BIMOEN2~ I love you and love you and love you...~
END
++ ~ And I love you too, Sandrah. (You gently move Imoen aside to embrace Sandrah yourself.)~ + ClckWMines2
++ ~ At least you kept your word and brought your hammer along.~ + ClckWMines2

CHAIN
IF~~ THEN CVSANDRJ ClckWMines2
~ We will all be able to visit Waterdeep and meet Henning in a ten-day if we want. My father has assured me, that he will be completely restored by then.~
== BIMOEN2~ Wonderful, I will dream about that now every night. <CHARNAME>, you slowpoke, let us crush these bastards now and clear out the mines. Let them know how it is to deal with Imoen, the Magnificent.~
END
++ ~ This is the courage we need now, friends. Let us get it on.~
EXIT

CHAIN
IF WEIGHT #-6~Global("Chapter","GLOBAL",5)Global("HelpAldeth","GLOBAL",2)InParty("CVSandr") Global("SanAldth","LOCALS",0)~ THEN Aldeth SanAldth1
~ I'm sorry, but I have much to do in rebuilding my shattered consortium.  Perhaps we will meet again.~
== CVSandrJ ~ Did you have the chance to relish the quietness of your lovely cabin again, Aldeth?~
== ALDETH ~ Not yet, mylady. And then, if you allow me to say, at the moment I am lacking the company to enjoy the place in the way it deserves to be savoured - on a warm lovely sundown with a distinguished lady of equal taste by one's side...oh I am dreaming.~ DO~ SetGlobal("SanAldth","LOCALS",1)~
== CVSandrJ ~ I see the picture, Aldeth, it is quite enjoyable.~
== ALDETH ~ Maybe, if your time would allow...~
== CVSandrJ ~ I am afraid, Aldeth, the cabin will remain but a dream for foreseeable time, but maybe this town offers a place to enjoy oneself as well.~
== ALDETH ~ You are quite right, mylady, with the right company and the necessary fantasy almost any place can be made into a small oasis away from the daily bustle.~
== CVSandrJ ~And you know of such a place, maybe in the vicinity.~
== ALDETH ~Let me take you there, sweet lady...~
 DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~ EXIT
 
CHAIN
IF WEIGHT #-5~Global("SanCldKBo","LOCALS",12)~ THEN IF_FILE_EXISTS Emerso EmDrowhint
~ You must be on the trail of that strange man with the books.~
DO~SetGlobal("SanCldKBo","LOCALS",1)ActionOverride("CVSandr",SetGlobal("SanCldKBo","LOCALS",1)) ~
== CVSandrJ ~He went to the mine, Emerson?~
==EMERSO~ I warned him because of that spider infestation that had started the day before he arrived. But he just laughed and told me that the spiders were a good sign that he was at the right place.~
== CVSandrJ ~In deed puzzling. Spiders as a good sign for what? What or whom may he want to find down there...?~
==EMERSO~ That's what I asked him as well, but he just gave me one of his books for an answer. Here look yourself, you are far more knowledgable than me, mayhaps I gives you some hint.~ DO~ GiveItemCreate("book39","CVSandr",1,0,0)~EXIT

CHAIN
IF WEIGHT #-4~Global("EmDrow","BG5400",1)~ THEN IF_FILE_EXISTS Emerso EmDrowhint2
~ You must be on the trail of that strange man with the books.~
DO~SetGlobal("EmDrow","BG5400",2) ~
== CVSandrJ ~He went to the mine, Emerson?~
==EMERSO~ I warned him because of that spider infestation that had started the day before he arrived. But he just laughed and told me that the spiders were a good sign that he was at the right place.~
== CVSandrJ ~In deed puzzling but it confirms what we had suspected. He was on his way to those who admire the spiders most of all. ~
==EMERSO~ That can mean no good. Drow are worse than any danger of the deep we have encountered here so far. Good luck my friends~ EXIT

ADD_TRANS_TRIGGER GALILE 0
~!InParty("CVSandr")~

EXTEND_BOTTOM GALILE 0
IF ~InParty("CVSandr")~ THEN REPLY ~And what have your observations revealed to you?~ GOTO 66
IF ~InParty("CVSandr")~ THEN REPLY ~Study on, I shall not distract your gaze.~ GOTO 66
END

APPEND GALILE
IF~~THEN BEGIN 66
SAY~ Two bright new stars were born on the firnament just recently. One of them in Mystra's belt, the other is even more strange as it now adds to an insignificant unnamed constallation a new meaning - it is the old elvish symbol for *hope*. ~
IF~~THEN REPLY~ What meaning has the appearance of a new star for us? ~ GOTO 67
END

IF~~THEN BEGIN 67
SAY~ They were both born in the region of the night sky where the gods are represented. Strange indeed.~
IF~~THEN REPLY~ There are probably no new gods born these days. Anything else of more interest?~ GOTO 2
END
END

ADD_TRANS_TRIGGER Keshee 0
~!InParty("CVSandr")~

EXTEND_BOTTOM Keshee 0
IF ~InParty("CVSandr")~ THEN REPLY ~Any tales of the sea you'd like to share?~ GOTO 2
IF ~InParty("CVSandr")~ THEN REPLY ~I've no time to talk to you.~GOTO 3
END

EXTEND_BOTTOM Keshee 2
IF ~InParty("CVSandr")Global("Homesail","GLOBAL",0)GlobalGT("SanSuBH","GLOBAL",13)~ THEN REPLY ~ Of the men of the sea I would be more interested in one named Monteelah...~
GOTO Keshmurd
END

APPEND Keshee
IF~~THEN BEGIN Keshmurd
SAY~ Are you mad!! That name is DEATH itself!!~
IF~~THEN DO~
ClearAllActions()
StartCutSceneMode()
StartCutScene("CVKesh")~EXIT
END
END

ADD_TRANS_TRIGGER ALDETH 28
~!InParty("CVSandr")~


ADD_TRANS_ACTION POGHM9 BEGIN 0 END BEGIN 0 END ~ SetGlobal("SanDGHere","BG2627",1)~

ADD_TRANS_ACTION Centeo BEGIN 6 END BEGIN 0 END ~ SetGlobal("Centejon","BG2101",1)~

ADD_TRANS_TRIGGER Elmins4 1
~!InParty("CVSandr")~

EXTEND_BOTTOM Elmins4 1
IF ~InParty("CVSandr")~ THEN REPLY ~I know you, mirrorkin, and you be no more an Elminster than I'm Drizzt the Drow!~ GOTO 2
IF ~InParty("CVSandr")~ THEN REPLY ~You said that these walls were soaked with innocent blood. Then who was it that chased me down these wretched halls, calling my name in voices I once knew, only to close and attack in trait'rous form?~GOTO 3
IF ~InParty("CVSandr")~ THEN REPLY ~What more proof do I need than you not knowing your own only daughter - doppelganger.~GOTO 5
END

ADD_TRANS_ACTION Voleta BEGIN 0 END BEGIN 0 1 2 END ~ SetGlobal("SanVolHeal","BG0146",1)~

INTERJECT_COPY_TRANS IF_FILE_EXISTS ACQX0004 7 DrglInfiltr
== CVSandrJ IF ~ InParty("CVSandr") InParty("ACBre")~THEN ~ (Psst) Breagar, pretend to be interested, even if it untrue, it will serve the right purpose.~
== ACBreB IF~ InParty("CVSandr") InParty("ACBre") ~ THEN  ~ These clanless bastards do not deserve the name Dwarf. We will smash these snakes.~
== CVSandrJ IF ~ InParty("CVSandr") InParty("Kagain")~THEN ~ (Psst) Kagain, pretend to be interested, even if it untrue, it will serve the right purpose.~
== BKAGAI IF~ InParty("CVSandr") InParty("Kagain") ~ THEN  ~ These clanless bastards do not deserve the name Dwarf. We will smash these snakes.~
== CVSandrJ IF ~ InParty("CVSandr") InParty("Yeslick")~THEN ~ (Psst) Yeslick, pretend to be interested, even if it untrue, it will serve the right purpose.~
== BYESLI IF~ InParty("CVSandr") InParty("Yeslick") ~ THEN  ~ These clanless bastards do not deserve the name Dwarf. We will smash these snakes.~
END

APPEND ACQ40001

IF WEIGHT #-9 ~ Global("SanSuBH","GLOBAL",16)~ THEN BEGIN BHuntMontHint
SAY ~ Your faces are registered with me. Maybe I may have something for you today?~
IF~~ THEN EXTERN BSANDR BHFurlon
END
END

CHAIN
IF~~ THEN BSANDR BHFurlon
~ You mentioned pirate stories once, and maybe maps...of islands...~
DO ~ SetGlobal("SanSuBH","GLOBAL",17)~
==ACQ40001 ~ You are hunting pirate treasures. M'lady, 'scuse me, but you don't look that type.~
== BSANDR ~  As you yourself once observed, fine cloth and good manners may hide the darkest soul beneath, all that has been seen in the Realms one time or another.~
==ACQ40001 ~ Ya mem'ry's as sharp as mine. Well done. A pirate it is. A name, a year, a face?~
== BSANDR ~ The island description is a bit vague, but maybe a name...How about Monteelah?~
==ACQ40001 ~ Puuh (Looks nervously around). Lower your voice, m'lady, maybe he's not as dead as he tried to make us think.~
== BSANDR ~ I have a good prescription agains fear. ~ DO ~ TakePartyGold(500)~
==ACQ40001 ~ Ya must be fearless, lady, few dare to speak that name at all.~
== BSANDR ~ I see, we are talking about the pirate Monteelah here? ~
==ACQ40001 ~ Sure, but we ain't talkin' much longer if ya keep repeating that dreadful name. Killed all his crew they say. Not one returned from that island where he's s'pposed to have hid his treasure.~
== BSANDR ~ None but him, you mean.~
==ACQ40001 ~ Ha, so you're clever, lady, few guessed that and fewer know. And none lives to tell.~
== BSANDR ~ Tell about his hiding up at the Beard before his death?~
==ACQ40001 ~ If dead he is. Ask dem up in Ulgoth's Beard if one saw the corpse. House burned down and he gone, but no corpse. Who's sure he's really gone this time?~
== BSANDR ~ And the island? Who knows about that?~
==ACQ40001 ~ Jus' him, with all other's probably dead by his hand.~
== BSANDR ~ Let us assume I knew what it looks like but not exactly where it is.~
==ACQ40001 ~ Dem guys at the Charter House in the Gate would know, if ever somebody charted it. But would they tell a lady like you?~
== BSANDR ~ Would they tell a captain?~
==ACQ40001 ~ If they knew him - you plan to disguise as one, he? Forget it...but...go to the Flushin' Mermaid, you may find one for hire, hahaha, but never let 'im run ya ship.~
== BSANDR ~ A drunkard? Maybe he serves to get the information from the Charter House and then we will see.~
==ACQ40001 ~ Always a pleasure dealin' with you. You understand your way 'round. Gotta go now, good luck. ~ DO ~ EscapeArea()~
END
++ ~ That was a quick disappearance. He must be really scared. Or he has another customer for the information he just got?~ DO~ RealSetGlobalTimer("BloomwT","GLOBAL",300)~EXIT

CHAIN
IF~~THEN CVJenliJ GithhintJ1
~(Hiss) Young captain not much experience with Prime. Should not have said words. Not good in linear time of manlings to step out of sequence.~
==CVSandrJ~We should not be aware of things to come, you mean?~
==CVJenliJ~One like Sandrah will never accept what given to her without question or fight. If know what to come may try to change things in the now. Change thing in now ripples in consequence for things that are to be. If future is changed, then knowledge in now is wrong.~
==CVSandrJ~It will be a vicious circle, you mean. If I act today based of knowledge of the future I may change the future - but with that action the knowledge I had would have been obsolete...~
==CVJenliJ~Commander and Sandrah in union are strong for any future. Not need knowledge as they shape their own time line, (hiss).~EXIT

CHAIN
IF~~THEN BYESLI SwCoaUWY1
~Ya gal's got bright eyes an' a bright mind. (Spits)~
 ==CVSandrJ~You do not like what I was saying about your kin?~
 ==BYESLI~I Don't like it at all, that's for sure...I don't like it 'cause ya so damned right, gal. This IS dwarven handicraft down here, solid 'n' good. ~
 ==CVSandrJ~What is your problem then?~
 ==BYESLI~ Problem is that ya right about dem duergar scum and blasted black elves as well, that's the problem. These caves have been lost by my kin long ago.~
 ==CVSandrJ~How about some house cleaning in this case?~
 ==BYESLI~Ha, that's the spirit, gal! Only...me guesses we will leave a nice bloody mess down here.~EXIT
 
ADD_TRANS_TRIGGER Tamoko 23
~!InParty("CVSandr")~

EXTEND_BOTTOM Tamoko 23
IF~InParty("CVSandr")~THEN REPLY~ If you would throw your life away, then you are already dead. If that is your choice, then you do not need me.~DO~IncrementGlobal("Sanpoints","Global",4) ReputationInc(1)~GOTO 25
IF~InParty("CVSandr")~THEN REPLY~ You're a fool to love the bastard and a fool to oppose me!~DO~IncrementGlobal("Sanpoints","Global",-5) ~GOTO 21
IF~InParty("CVSandr")~THEN REPLY~ If I must kill you to pass, then so be it. I do so forgiving you your transgressions against me. ~DO~IncrementGlobal("Sanpoints","Global",4) ReputationInc(1)~GOTO 25
END

