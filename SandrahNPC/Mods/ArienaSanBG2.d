APPEND MWBarn
IF WEIGHT #-13~Global("MWleaveShau","GLOBAL",2)~THEN BEGIN GoClan1
SAY~ <CHARNAME>, Ariena decided!~
IF~~THEN REPLY~ Whom did you decide to smash this time?~ GOTO GoClan2
IF~~THEN REPLY~ Decided to do what?~ GOTO GoClan2
IF~~THEN REPLY~ You want me tonight, Ariena?~ GOTO GoClan2
IF~~THEN REPLY~ Oh, what foolishness has your befuddled brain come up with this time?~GOTO GoClan2
END

IF~~ THEN BEGIN GoClan2
SAY~You now listen and accept as Ariena will not change mind.~
=~Ariena never had home in human land and will never find. Me see Clan Orc land and people and now learn where Ariena belong. <CHARNAME> is good leader but has no home. Shauhana is good leader and has all Orc land.~
IF~~THEN REPLY~ You want to go and join Shauhana?~DO~SetGlobal("MWleaveShau","GLOBAL",3)~GOTO GoClan3
END

IF~~ THEN BEGIN GoClan3
SAY~ Ariena know it's right and Ariena know that <CHARNAME> know is right. If <CHARNAME> not know it's right then ask Sandrah, she know it's right.~
=~Now will go and will always be friend.~
=~(For a second she gives you a very special kind of smile.) There good strong Clan Orc Berserkers with Minsc men. Maybe Ariena like one for herself...~
IF~~THEN DO~SetGlobal("ArienaJoined","LOCALS",0) SetLeavePartyDialogFile() LeaveParty() EscapeAreaMove("CVSh15",831,1004,6)~EXIT
END
END

APPEND MWArnP
IF WEIGHT #-5~Global("ArienaJoined","LOCALS",0) Global("MWleaveShau","GLOBAL",3)~THEN BEGIN AtClan1
SAY~Ariena found good live with Clan. This be Ruggnock, fierce to crush enemies and more fierce to make good love to Ariena.~
IF~~THEN REPLY~ That's nice to hear. Good luck to you and your *berserker*.~GOTO AtClan2
IF~~THEN REPLY~ That is good to hear. But we need your strong arm for another time. Please join us again.~GOTO AtClan3
END

IF~~THEN BEGIN AtClan2
SAY~You were good leader but Shauhana is great Orc Queen to follow. You made Ariena find way and can always come when need strong arm to help.~
IF~~THEN EXIT
END

IF~~THEN BEGIN AtClan3
SAY~Shauhana is great Orc Queen to follow but you were good leader, too. You make Ariena find way and me always come when need strong arm to help. Me know Ariena can return to home when finish what you need.~
IF~~THEN DO~SetGlobal("MWleaveShau","GLOBAL",4) SetGlobal("ArienaJoined","LOCALS",1)JoinParty() ~EXIT
END
END

CHAIN
IF WEIGHT #-11~Global("SanHealMWA","GLOBAL",3)~THEN MWBarn SanHeal1
~ You think Ariena so weak to need your spellcasting to move on? No need gifts from your woman god.~
DO~SetGlobal("SanHealMWA","GLOBAL",4)~
==BSandr~This group needs you in full power and strength, Ariena. My role is to help us to maintain your health and welfare.~
== MWBarn~Fine, keep Ariena fit to crush foes of <CHARNAME>. Not think of receiving thanks.~ EXIT

CHAIN
IF WEIGHT #-12~Global("SanHealMWA","GLOBAL",6)~THEN MWBarn Sanfight
~ Sandrah, you powerful fighter. Why you need to follow weak woman god? Ariena spits on gods.~
DO~SetGlobal("SanHealMWA","GLOBAL",7)~
==BSandr~ Do you know who Mystra is, Ariena?~
== MWBarn~She gives power to spellcaster too weak to fight regular fight. You not need her, your hammer can kill alone.~
==BSandr~ Do you know that this hammer is a heritage from a great fighter and adventurer? Her name was Midnight.~
== MWBarn~Ha, Ariena know that heroine. She was not afraid to fight gods. Why you have her hammer?~
==BSandr~ She is my grandmother. And even more, she became a goddess herself after the Time of Troubles.~
== MWBarn~Wonder why she accepted that...maybe got weak when old...baah, gods are useless. You not need them just like Ariena not need them.~EXIT

EXTEND_BOTTOM MWARNJ 37
IF ~ InParty("CVSandr") ~ THEN REPLY~ I think Sandrah can explain that better than anyone else could.~EXTERN CVSandrJ MWArAAsi
END

CHAIN
IF~~THEN CVSandrJ MWArAAsi
~(Sandrah turns around to you with a questioning look as she hears her name. She obviously had not listened to Ariena and you before.) May I help you?~
==MWarnJ~Ariena has Orc blood and Aasimar blood. You know all much. Tell me what means Aasimar. Ariena no knows good what they is.~
==CVSandrJ~If one is an Aasimar, it means that their ancestors have the blood of a good extraplanar creature within them. Like the blood of an Archon or Deva. Most Aasimar have a tendency to be a good person as well.~
==MWarnJ~That big nonsense. Never say anyone that Ariena is good. Orc blood very strong in Ariena.~
==CVSandrJ~A tendency indicates a possibility, Ariena. Thus, not all Aasimar do good deeds. Like <CHARNAME> is the child of Bhaal but is no murderer through this.~
==MWarnJ~So what mean 'tendency' word?~
==CVSandrJ~You are an Aasimar! You just do not 'always' do good things. But the legacy of an Aasimar continues for many generations. You, Ariena, also have this taint. It can be seen in your beauty and your resilience. Many Aasimar cling, because of their blood, to the side of good. Their blood pulls them towards this side. Though it is not law, it is the general rule.~
==MWarnJ~If Aasimar are good then makes Ariena think why mother of Ariena left Ariena. Me wonder what you knows of Aasimar is right. Ariena starts to wonder about mother of Ariena, when Ariena came south. Me come from north and they tells Ariena mother flees from north. Me no know much, but me know only way you can goes from north is to south.~
==CVSandrJ~There is only one person who could answer this, Ariena. Your mother is still alive, right?~ 
==MWarnJ~Hm... (The half-orc has grabbed your arm almost desperately. You clench your teeth not to show the pain her agitated grib causes.)~
=~Can Ariena ask favour of you?~
END
++~ Hm... depends. What is it?~ EXTERN MWarnJ 42
++~ Hell no! I took you in my party for brawn not brain. Just kill and ask no questions or favours, okay?~ EXTERN MWarnJ 40
