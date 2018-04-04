BEGIN Elminsa

//Elminsters Revenge
IF ~ Global("ElmRevDau","GLOBAL",3)~ ElmRevDau
SAY ~ Young arrogant fool. Mine daughter has trusted her life and future and hope in thee! Thou have so betrayed the jewel of mine heart, leave her rotten in the dirt with no attempt to resurrect her. The rage of Mystra may come over thee and all the fools that follow thee still!~
IF~~THEN REPLY ~ But, Great Mage, have you done anything for her?~
DO ~ SetGlobal("ElmRevDau","GLOBAL",4) ReputationInc(-9)~ EXIT
END

// Bring Gifts
IF ~ Global("MystrGift","GLOBAL",2) ~ ElmBringGift
SAY ~ Greetings, my daughter. Greetings, <CHARNAME>. Thine company is fairing well in thine doings in these troubled times. Thine deeds have not been unobserved by those who care for your well being.~
=~ My daughter, thine goddess is pleased by what thou didst in her name. Take these small trinkets as a symbol of her blessings.~
IF~~ THEN DO ~ SetGlobal("MystrGift","GLOBAL",3) ~EXIT
END

// Elminster Shard Quest

CHAIN
IF ~Global("ElminGaveNarQ","GLOBAL",1)~ THEN  Elminsa ElminGaveNarQI
~Well, well, Sandrah, my heart, I see thou found thine way to thine troubled father.~
== CVSandrJ ~Oh, father! (Embraces the old man) You look indeed troubled - and it is not because of me and my following <CHARNAME>. Something bad must have happened, please tell me.~
== Elminsa ~Indeed, indeed, Sandrah, <CHARNAME>, trouble has come to Faerun from the depth below, the demonic Realms that are always lurking to send their troubles up to us. ~
= ~<CHARNAME>, thine little company has proven thyself rather competent in handling the troubles of the Sword Coast recently. And then mine darling Sandrah is with thee and the problem at hand now is in a way also some kind of family business.~
== CVSandrJ ~ Speak, father, if there is trouble we will do as best as we can, even if we have our own mission to follow, right <CHARNAME>? ~
END
++ ~ (Nod silently and continue to listen, this seems to be family business) ~ + GaveNarQ2
++ ~ As nice as it is to meet your dear father from time to time, we cannot waste more time now. We bid you farewell, Elminster, until the next time. Come on, Sandrah. ~ DO ~ EraseJournalEntry(@76) ~ + GaveNarRej
++ ~ Elminster, Sandrah, If there is a problem with you and even with the Realms, we are of course willing to do anything we can - within our limits.~ DO ~ EraseJournalEntry(@76) ~ + GaveNarQ2

CHAIN
IF ~~ THEN Elminsa GaveNarRej
~I have misjudged thou then <CHARNAME>, and put too much hope in the ways Gorion would raise and teach thee. Fare thee well then, may thine judgement become wiser on thine way. Sandrah?~
== CVSandrJ ~Father, Let me talk to <CHARNAME> for a second. If you have erred in <PRO_HIMHER> so much, I did the same. My heart tells me that it is not so. Please, <CHARNAME>, if you will not help for my father's plea or even mine, at least listen for the sake of the Realms. My father would not seek our help if this business would not be very serious.~
END
++ ~ Sandrah, Elminster, maybe you misunderstood me. I have my urgent mission at hand to clarify Gorion's and my fate. Anything else would have to stand back until that task is done. Sandrah?~ + GaveNarRej2
++ ~ I am sorry for my rudeness, friends, of course we will listen to your problem. Afterwards we will council in our group whether we can do anything to help. ~ + GaveNarQ2

CHAIN
IF ~~ THEN Elminsa GaveNarRej2
~ So be it. Thine word has been spoken and we all must live with this decision. (Looks at Sandrah.) ~
== CVSandrJ ~  A bad day for you, father. But even a worse day for me. <CHARNAME>, I have never felt so bad in all my life. Whatever made you come to this decision is beyond my understanding. May you fare well on your way and maybe be wiser if we should meet again on the Sword Coast one day.~
== Elminsa ~ Sandrah, at least I have thou then to assist me in this thing. Thine judgement is wise. The task of thine friends is an important one, no doubt, but with the demonic trouble at hand, they may find that the Realms will become a slaughterhouse before they come to close their mission. Let's go, time flies. ~
== CVSandrJ ~ Farewell <CHARNAME> (Steps up to you all trembling and gives you a kiss on the cheek. Her face is wet from tears. She turns away quickly.) Fa-father, let us go. ~ DO ~
                CreateVisualEffectObject("SPDIMNDR","CVSandr")
		CreateVisualEffectObject("SPDIMNDR","Elminsa")
		Wait(3)
		ActionOverride("CVSandr",EscapeAreaMove("BG3402",270,497,0))
		ActionOverride("Elminsa",EscapeAreaMove("BG3402",291,500,0))
                ActionOverride("NarQMes",EscapeAreaMove("BG3402",251,490,0))
	        SetGlobal("SandrahJoined","GLOBAL",5) LeaveParty()
		SetGlobal("ElminGaveNarQ","GLOBAL",4)
		AddJournalEntry(@72,INFO)
                END ~ EXIT

CHAIN
IF ~~ THEN Elminsa GaveNarQ2
~ Fine, fine. So let me brief y'all on this matter. ~
= ~ Maybe mine daughter had already the chance to tell thou about Mystra's Shard and how I use it for the sake of the Realms... (Looks aside to Sandrah).. and sometimes little girls use what they shouldn't.~
== CVSandrJ ~ (Grins) Only for the sake of good and truth, father.~
== Elminsa ~ The Shard is gone!~
== CVSandrJ ~ WHAT? ~
== Elminsa ~ Indeed, I never had guessed this could occur. The Shard does not work for anyone that is not of my blood, so it is useless to take it unless in want to harm me and the Realms. ~
== CVSandrJ ~ FATHER, you do not accuse me of theft?~
== Elminsa ~ Hohoho, Sandrah, calm down, little one!~
= ~ Nothing can be further from me than accusing thee. I let thee do your own little things with it from time to time so thou will learn and grow. My trust in thee is enough to know thou will not overstep thine limits. ~
= ~ No, this deed was done by one that cannot use the Shard but wants to do harm to us. There is some evidence that a group of duergar and demon knights have been to Waterdeep lately. But those creatures can only be the minions of someone much more evil and planning.~
END
IF ~ PartyHasItem("SCRLALZ") ~ THEN REPLY ~ We have encountered the mage Firebead, who mentioned a scroll found on a dead duergar near Beregost recently. Sandrah has it now. It has something demonic on it as well. May there be a connection to the duergars you mentioned? ~ + GaveNarQ3
IF ~ !PartyHasItem("SCRLALZ") ~ THEN REPLY ~ Go on, please.~ + GaveNarScrl

CHAIN
IF ~~ THEN Elminsa GaveNarScrl
~ My friend Firebead has given me notice that a dead duergar was found near Beregost. The creature carried a strange scroll that he wants me to examine. For the scrolls demonic attributes he does not dare to deliver me the thing himself.~
= ~ I pense that Sandrah's powers from Mystra are great enough to deal with such an item. So I ask thee to retrieve this scroll from Firebead so we can examine it.~
END
++ ~ Where do we find Firebead and where shall be bring the scroll afterwards? ~  + GaveNarScr2

CHAIN
IF ~~ THEN Elminsa GaveNarScr2
~  Firebead stays at a friend's house opposite to the Feldepost. Once you have the artefact, bring it to Thalantyr's High Hedge. ~
= ~ I will do mine own research meanwhile and rejoin with you at the Hedge once Thalantyr sends me notice of your arrival. ~
END
++ ~ Sandrah, friends, let us not waste time then, off to Beregost. See you soon, Elminster. ~ DO ~ SetGlobal("ElminGaveNarQ","GLOBAL",2) ActionOverride("Elminsa",EscapeArea()) ActionOverride("Narqmes",EscapeArea())AddJournalEntry(@71,QUEST) ~  EXIT

CHAIN
IF ~~ THEN Elminsa GaveNarQ3
~ Interesting and well done my daughter. Thine having the scroll will indeed save us a lot of time. Let us take a look at it then. (Give the scroll to Elminster)~
= ~ Hm,hm ----- aaah, see see. Oh yes, interesting....~
= ~ Well, friends, that sheds indeed a light on things.~
== CVSandrJ ~ The scroll can talk in a limited way, I found out. And it knows about some portal, maybe it is even the key to it. Someone named Alzaligrundel and someone he calls his arch enemy are somehow involved in the affair. Go, tell us father, have you found out more?~
== Elminsa  ~ Congratulations! Years of good education have not been wasted on thee, my pretty little daughter, clever, clever. Thou know much already. ~
= ~ So the two hellish arch enemies are behind all of this. BAD, BAD. One of them must have the shard and he must be somewhere on the Sword Coast waiting for his duergar scout to return. The scroll was given to the duergar to find the demon's arch enemy and then report to his master. The scroll may also be the key to get back into his master's lair with the news.~
END
++ ~ But the duergar is dead. Did the arch enemy kill him?~ + GaveNarQ4

CHAIN
IF ~~ THEN Elminsa GaveNarQ4
~ The duergar was found near Beregost, but neither mineself nor Thalantyr or Firebead have sensed any demonic activities around here. And then the demon would have taken the scroll from the duergar of course. ~
= ~ So, no, the death of the scout was probably an accident or a bandit deed and they had no use for the scroll. But odds are in our favour by this turn of events, as we have the scroll now. ~
== CVSandrJ ~ Yes, father, if you are right we can use the scroll to enter the lair of one of the demons. Either the one with the Shard or the other who knows how to find the one with the shard.~
==  Elminsa ~ (You see a bright smile lighten the old man's face) Mine daughter, thou art the pride of thine father. Brilliant. This is exactly what to do. ~
= ~ But beware! These demons are not to be compared with any enemy thou found on the Sword Coast until now. Try to avoid a fight by all means. Use thine wits and skills rather than violence. I do not want to see any of thine group be hurt or killed.~
END
++ ~ So we are on a demon hunt now. But the Sword Coast is wide and we are looking for a needle in a haystack. This lair may be anywhere. ~ + ClP1
IF ~ Global("UsedScrlLoc","GLOBAL",1) ~ THEN REPLY ~ There was some mentioning of misty mountains and water by the scroll. So we are on a demon hunt now but the location of that lair is still vague. ~ + ClP2
++ ~ Hm, we know some now but we still have no idea where to start our search. ~  + ClP1

CHAIN
IF ~~ THEN Elminsa ClP1
~ The scroll says: Mountains that peak the sky, southern mountains...water running and falling...mist...much mist...~
== CVSandrJ ~ A waterfall maybe? High mountains of course, southern mountains however still on the Sword Coast?  ~
== Elminsa ~  Something that can be the entrance to the depth. Or from the way they see it, the exit to the surface. But <CHARNAME> is a child of these regions, I trust <PRO_HIMHER> to lead thee in this. ~
END
IF~!AreaCheck("BG3402")~ THEN REPLY~ Thank you for your trust. High mountains and waterfalls point us to the Cloudpeaks. They are on the southern border of the Sword Coast guarding against Amn. Remember, Imo when we hiked up there (Imoen smiles brightly remembering your trip to the Cloudpeaks long ago). It is still a large area to search, but at least a hint. So we have a mission at hand. Farewell, Elminster, I think Sandrah will know what to do with the shard, once we have it.~ DO ~ SetGlobal("SanNarQ","GLOBAL",1) SetGlobal("ElminGaveNarQ","GLOBAL",4) AddJournalEntry(@70,QUEST) EraseJournalEntry(@76)~ EXIT
IF~ AreaCheck("BG3402")~ THEN REPLY~ Thank you for your trust. High mountains and waterfalls point us to the Cloudpeaks. They are on the southern border of the Sword Coast guarding against Amn. Remember, Imo when we hiked up there (Imoen smiles brightly remembering your trip to the Cloudpeaks long ago). It is still a large area to search, but at least a hint. So we have a mission at hand. Farewell, Elminster, I think Sandrah will know what to do with the shard, once we have it.~ DO ~ SetGlobal("SanNarQ","GLOBAL",1) SetGlobal("ElminGaveNarQ","GLOBAL",4) AddJournalEntry(@70,QUEST) EraseJournalEntry(@76)~ + MoveElm

CHAIN
IF ~~ THEN Elminsa ClP2
~  Something that can be the entrance to the depth. Or from the way they see it, the exit to the surface. But <CHARNAME> is a child of these regions, I trust <PRO_HIMHER> to lead thee in this. ~
END
IF~!AreaCheck("BG3402")InParty("Imoen2")~ THEN REPLY~ Thank you for your trust. High mountains and waterfalls points us to the Cloudpeaks. They are on the southern border of the Sword Coast guarding against Amn. Remember, Imo when we hiked up there (Imoen smiles brightly remembering your trip to the Cloudpeaks long ago). It is still a large area to search, but at least a hint. So we have a mission at hand. Farewell, Elminster, I think Sandrah will know what to do with the shard, once we have it.~ DO ~ AddexperienceParty(2000) SetGlobal("SanNarQ","GLOBAL",1) SetGlobal("ElminGaveNarQ","GLOBAL",4) AddJournalEntry(@70,QUEST) EraseJournalEntry(@76)~ EXIT
IF~!AreaCheck("BG3402")!InParty("Imoen2")~ THEN REPLY~ Thank you for your trust. High mountains and waterfalls points us to the Cloudpeaks. They are on the southern border of the Sword Coast guarding against Amn. I remember, Imoen and me used to hike up there. It is still a large area to search, but at least a hint. So we have a mission at hand. Farewell, Elminster, I think Sandrah will know what to do with the shard, once we have it.~ DO ~ AddexperienceParty(2000) SetGlobal("SanNarQ","GLOBAL",1) SetGlobal("ElminGaveNarQ","GLOBAL",4) AddJournalEntry(@70,QUEST) EraseJournalEntry(@76)~ EXIT
IF~ AreaCheck("BG3402")InParty("Imoen2")~ THEN REPLY~ Thank you for your trust. High mountains and waterfalls point us to the Cloudpeaks. They are on the southern border of the Sword Coast guarding against Amn. Remember, Imo when we hiked up there (Imoen smiles brightly remembering your trip to the Cloudpeaks long ago). It is still a large area to search, but at least a hint. So we have a mission at hand. Farewell, Elminster, I think Sandrah will know what to do with the shard, once we have it.~ DO ~ SetGlobal("SanNarQ","GLOBAL",1) SetGlobal("ElminGaveNarQ","GLOBAL",4) AddJournalEntry(@70,QUEST) EraseJournalEntry(@76)~ + MoveElm
IF~ AreaCheck("BG3402")!InParty("Imoen2")~ THEN REPLY~ Thank you for your trust. High mountains and waterfalls point us to the Cloudpeaks. They are on the southern border of the Sword Coast guarding against Amn. I remember, Imoen and me used to hike up there. It is still a large area to search, but at least a hint. So we have a mission at hand. Farewell, Elminster, I think Sandrah will know what to do with the shard, once we have it.~ DO ~ SetGlobal("SanNarQ","GLOBAL",1) SetGlobal("ElminGaveNarQ","GLOBAL",4) AddJournalEntry(@70,QUEST) EraseJournalEntry(@76)~ + MoveElm

CHAIN
IF~~ THEN Elminsa MoveElm
~ We will wait for thee at the Temple of Wisdom, young friends. Fare thee well.~
DO~ ActionOverride("Elminsa",EscapeAreaMove("BG2304",479,242,1))
    ActionOverride("NarQMes",EscapeAreaMove("BG2304",436,381,4)) ~ 
EXIT

CHAIN
IF ~ Global("ElminGaveNarQ","GLOBAL",2) PartyHasItem("SCRLALZ") ~ THEN Elminsa ThalWScr
~ Ah, thou have returned with the scroll. Have you found out even more?~
== CVSandrJ ~ A talking demonic scroll and maybe a key to a portal.~
END
++ ~ We seek your further advice on it. Sandrah has found out some things, but we are not sure of the proper things to do now. You said that much on the Sword Coast depends on acting the right way on this matter. ~ DO ~AddexperienceParty(2000)EraseJournalEntry(@71) AddJournalEntry(@73,QUEST_DONE)~+ GaveNarQ3

CHAIN
IF ~ Global("ElminGaveNarQ","GLOBAL",2) !PartyHasItem("SCRLALZ") ~ THEN Elminsa ThalWoScr
~ Thou have not the scroll yet. Friends, hurry to Firebead in Beregost, please.~
END
++ ~ Sure.~ EXIT

CHAIN
IF ~ GlobalGT("SanNarQ","GLOBAL",0) GlobalLT("SanNarQ","GLOBAL",6)~ THEN Elminsa
NarQNotYet
~ Thou have not yet found the lair with the Shard? ~ 
== CVSandrJ ~ We made some progress but we are not yet at the goal.~
END
++ ~ Is there any advice you can give us, Elminster, any further hint you found?~ +  NarQNotYetH


CHAIN
IF ~~ THEN Elminsa NarQNotYetH
~ Without the Shard, my possibilities to locate these demons are limited and I depend on information just like you.~
= ~ All evidence we have so far points us to the Cloudpeaks, a place near water and something that can be an entrance to the depth below the surface. ~
END
++ ~ Farewell.~
EXIT 

CHAIN
IF ~ Global("SanNarQ","GLOBAL",6) PartyHasItem("EShard")~ THEN Elminsa SharRetI
~ Sandrah, mine pride and joy, thou really have found Her, Mystra's Shard.~
= ~ And of course thou as well, good young friend <CHARNAME> and thy fearless company. Sandrah , thou hast done well in choice of thine friends, hoho.~
== CVSandrJ ~ Yes, father.~
== BIMOEN  IF ~ InParty("Imoen2")~ THEN ~ And you shoulda see her do it, peanut style an all shoutin'...~
== BBRANW IF~ InParty("Branwen") ~ THEN ~ A doubtful victory Tempus would not approve.~
== Elminsa ~ Does that mean the demons are destroyed?~
END
++ ~ They were send back to the deep by us, but not destroyed.~ + NarqLeft1
++ ~ We could master only the minor one, we had to use our wits for the other, just as you advised us to do.~ + NarqLeft1
++ ~ We killed them and got you your shard. ~ + NarqLie
++ ~ We used our wits and tricks to get hold of the shard, but they were invincible. ~+ NarqLeft1

CHAIN
IF ~~ THEN Elminsa NarqLie
~ Mine young friends. Thine deeds are great enough without need to exaggeration, learn this <CHARNAME> and do not belittle what thou really achieved.~
= ~ Well, we have what we need for the moment. I fear we have not seen the last of those creatures. But for now farewell and take good care of mine daughter. ~
= ~ (As he hugs and kisses Sandrah again, you see him slip a small parcel into  her robe.) ~ DO ~ GiveItemCreate("SanParc","CVSandr",0,0,0)
SetGlobal("SanparcT","GLOBAL",1)
AddJournalEntry(@77,QUEST_DONE) 
AddexperienceParty(5000)
SetGlobal("SanNarQ","GLOBAL",7)
TakePartyItem("EShard")
EraseJournalEntry(@13)
EraseJournalEntry(@17)
EraseJournalEntry(@21)
EraseJournalEntry(@42)
EraseJournalEntry(@48)
EraseJournalEntry(@58)
EraseJournalEntry(@67)
EraseJournalEntry(@70)
EraseJournalEntry(@76)
StartCutSceneMode()
CreateVisualEffectObject("SPDIMNDR","Elminsa")
Wait(3)
EndCutSceneMode()
ActionOverride("Elminsa",EscapeAreaMove("CVDRE2",834,775,12))
ActionOverride("Narqmes",EscapeAreaMove("CVDRE2",844,795,12))
~EXIT

CHAIN
IF ~~ THEN Elminsa NarqLeft1
~ Thou art a competent leader already, <CHARNAME>, using all thine and thine companions abilities where it is needed. Do go on like this and take good care of y'all.~
= ~ For now farewell and take good care of mine daughter. ~
= ~ (As he hugs and kisses Sandrah again, you see him slip a small parcel into  her robe.) ~ DO ~ GiveItemCreate("SanParc","CVSandr",0,0,0)
SetGlobal("SanparcT","GLOBAL",1)
AddJournalEntry(@77,QUEST_DONE) 
AddexperienceParty(5000)
SetGlobal("SanNarQ","GLOBAL",7)
TakePartyItem("EShard")
EraseJournalEntry(@13)
EraseJournalEntry(@17)
EraseJournalEntry(@21)
EraseJournalEntry(@42)
EraseJournalEntry(@48)
EraseJournalEntry(@58)
EraseJournalEntry(@67)
EraseJournalEntry(@70)
EraseJournalEntry(@76)
StartCutSceneMode()
CreateVisualEffectObject("SPDIMNDR","Elminsa")
Wait(3) 
EndCutSceneMode()
ActionOverride("Elminsa",EscapeAreaMove("CVDRE2",834,775,12))
ActionOverride("Narqmes",EscapeAreaMove("CVDRE2",864,795,12))
~ EXIT

// Elminster at Waterdeep

CHAIN
IF ~ Global("SanNarQ","GLOBAL",7) AreaCheck("CVDRE2")~ THEN Elminsa WelWD
~ Mine beloved daughter! Welcome at Waterdeep, my friends, welcome, <CHARNAME>.~
= ~ Sandrah and Landrel will make thee comfortable during your stay. I will go back to my business now.~
== CVSandrJ ~ (Embraces and kisses the old man.) It feels good to be home once again, father. I will take care of my friends and we will disturb you as little as possible. Is there anything urgent that requires your attention? ~
== Elminsa ~  I am still investigating the matter, but it seems that this demon thee sent back down to hell has discovered his mistake of leaving some items when he made his retreat. He is probably searching now for the missing things. I have to retreat to the shard now, to find out some more details.~
= ~ I recommend to thee to visit me in my study when thou art ready to leave Waterdeep. I will fill thee in with the latest information then.~
== CVSandrJ ~ We will do that, father.~
== BIMOEN IF~ InParty("Imoen2") ~ THEN ~ Wow, adventuring is just my thing. The halls of the mighty Elminster visited by Imoen the Magnificent herself!~
== BSHART IF~ InParty("Sharteel") ~ THEN ~ Gosh, the only decent man on Faerun must be an old mage still moaning his long dead wife. What a waste. I must dwell on with those pathetic fools that are left.  ~
== BVICON  IF~ InParty("Viconia") ~ THEN ~ The drow do well to avoid mingling with this mighty man. ~
== BKIVAN  IF~ InParty("Kivan") ~ THEN ~ Cities of the humans normally make me feel the loss of Shilmista even more. But this place is different. Sandrah, your father has more insight into things than anyone I have met before. ~
==IF_FILE_EXISTS BSUFINCH  IF~ InParty("Sufinch") ~ THEN ~ (Scribble, scribble) The most wonderful place one can visit is the house and the gardens of the famous mage Elminster... ~
== BAJANT  IF~ InParty("Ajantis") ~ THEN ~ So while we are in Waterdeep I may also recommend that we go to my family if time permits. ~
==IF_FILE_EXISTS k-roseB  IF~ InParty("k-rose") ~ THEN ~ A place that stirs the imagination of any bard. Would anyone believe me if I start a song about it? ~
==IF_FILE_EXISTS ~BB!GAVIN~ IF~ InParty("b!gavin") ~ THEN  ~Waterdeep already is quite some sight, but this place stands apart from that city in many ways, as do its inhabitants.~
==IF_FILE_EXISTS ACBreB IF~ InParty("ACBre") ~ THEN  ~ By Clangeddin's Axe, only the halls of a true dwarf clan can be done with more craftsmanship and skill. But then, considering our host, I guess it was done by dwarfs. ~
== Elminsa IF~ InParty("ACBre") ~ THEN  ~ In deed, good Breagar, thou kin were involved in the making, as were elves and planetars and other creatures.~
== IF_FILE_EXISTS BRH#ISRA  IF~ InParty("RH#ISRA") ~ THEN ~This place has the blessing of many Gods and I can feel Sune's spirit reigns here as well. It becomes clear why Sandrah is who she is.~
== BBRANW  IF~ InParty("Branwen") ~ THEN ~ I can smell the breezes of my northern seas on the wind here. ~
== BXANNN  IF~ InParty("Xan") ~ THEN ~ What a place of hope and stability in a world were all else is doomed. It does a suffering soul good to see a bit of light once in a while. ~
== BCORAN  IF~ InParty("Coran") ~ THEN  ~ What riches may be here to loot. I can only imagine what a curious and able thief may lift out of here. ~
== Elminsa  IF~ InParty("Coran") ~ THEN  ~ I wouldst advise thou better not try your luck, elf. ~
== BDYNAH  IF~ InParty("Dynaheir") ~ THEN ~ Many paths did I travel but nothing alike did I encounter until present days. The old scripts werst correct when it cometh to Elminster.~
== BJAHEI  IF~ InParty("Jaheira") ~ THEN ~ I enjoy the balance that is present in this place wherever I cast my eyes. ~
== BJenli IF~ InParty("CVJenlig") ~ THEN ~ This place has connection to the planes itself. It's an isle of different matter and time, almost like our towns on the Astral Plane. Wondrous.~
==IF_FILE_EXISTS BT2Val IF~ InParty("T2Val") ~ THEN ~ My cowled teachers would tremble when facing this legendary master. In company other than my present one, I would tremble too, I guess.~
== Elminsa IF~ InParty("CVJenlig") ~ THEN ~It is rare that a creature like thee comes to our Prime. My best wish for thine mission, githling.~
== BSANDR ~ Let me show you the gardens and the view of the endless sea, my friends. ~
END
++ ~ Thank you, Elminster. This is really a refuge for one who seems not to be too welcome anywhere unless it is paid for. ~
+ WelWD2

CHAIN
IF ~~ THEN Elminsa WelWD2
~ Remember to pass by mine study room on thy way out.~
DO ~ EscapeAreaMove("CVSTUD",450,256,3)~ EXIT

CHAIN
IF ~ Global("SanNarQ","GLOBAL",7) AreaCheck("CVSTUD") ~ THEN Elminsa FalSlip1
~ I hope thou hath enjoyed thine stay.~
DO ~ SetGlobal("SanNarQ","GLOBAL",8)~
== BSANDR ~ Father, you seemed to be nervous about those demons that might have returned and may even be searching for us.~
== Elminsa ~ Mine Sandrah, yes, I fear that Naronguth is after thee and those with thee. He cannot trace thee here in my house, for mine magic defences work against him, but it wouldst not take him too long to find thee when out of Waterdeep.~
== BSANDR ~ As much as we enjoyed our stay here, father, you know that <CHARNAME> has <PRO_HISHER> own path and mission to follow. We cannot dwell on here much longer.~
END
++ ~ Sandrah is right, Elminster, as much as we enjoyed your hospitality, we must now move on. Hiding out here is not an option. If we must face Naronguth again, then it must be done.~ + FalSlip2
++ ~ Naronguth cannot find us here. Why should we not stay until he gives up his search and we can move again safely?~ + FalSlipHide

CHAIN
IF ~~ THEN Elminsa FalSlipHide
~ HoHo, strong hero, thou wantst not hide the rest of your life, wouldnst thee? Such a demon hath all the time of eternity on his side. Thou must face him sooner or later.~
END
++ ~ May there be any help from your side for us?~ + FalSlip2

CHAIN
IF ~~ THEN Elminsa FalSlip2
~ Mine heroic friends, I will not let thou go without providing some assistance, for sure.~
= ~ Harken! An item the demon wouldst miss from his possession art his silver slippers.~
== BIMOEN IF~ InParty("Imoen2") ~ THEN ~ Hoops, what comes now? More silly demon defence strategies?~
== Elminsa IF~ InParty("Imoen2") ~ THEN~ Laugh not, little bright redhead, thou art right indeed.~
== BSANDR ~ Those slippers have betrayed him once already?~
== Elminsa ~ But art he aware of this? That demon is stupid enough to lust for his slippers again and thus his downfall can once more be accomplished by the fearless.~
END
++ ~ Let me guess, if you say *by the fearless* you mean by us. ~ + FalSlip3
++ ~ *By the fearless*, hm, that excludes us. ~ + FalSlip3

CHAIN
IF ~~ THEN Elminsa FalSlip3
~ I hath prepared a magic device for thee to play a trick with Naronguth again. Force alone wouldst not accomplish thine victory. (He pulls out a pair of silver dancing shoes, exactly like the ones Naronguth left behind at his last retreat.)~
== BSANDR ~ I sense something magic about them, father, will you tell us about it.~
== Elminsa ~ I wouldst advise thee to never put those slippers on to thy feet. Once thee wouldst try to move, the entangle spell wouldst start to work.~
== BSANDR ~ Slippers of entanglement. You think that this would fool him?~
== Elminsa ~ At least he wouldst be hampered enough for thine chances to be improved. ~ DO ~ GiveItemCreate("SanEtg","CVSandr",0,0,0) AddJournalEntry(@127,QUEST) SetGlobal("SanNarQ","GLOBAL",9) EscapeArea()~  EXIT

CHAIN
IF~ Global("SanAcadMission","GLOBAL",3)~ THEN Elminsa SendAcad
~ A good day to thee, famous heroes. A welcome sight for an old man - and a father. ~
DO ~ SetGlobal("SanAcadMission","GLOBAL",4)~
== BSANDR IF ~ AreaCheck("CVDRE2")~ THEN ~ (Embraces her father) Lore has surely reached you, father, about the reason we have come.~ DO ~ AddexperienceParty(1100)~
== BSANDR IF ~ !AreaCheck("CVDRE2")~ THEN ~ (Embraces her father) Lore has surely reached you faster than we could make it to Waterdeep ourselves, father.~ DO ~ AddexperienceParty(600)~
== Elminsa ~ Good lore indeed but also a difficult situation arising from that. With thy friends help thou hath finally been able to give that hateful Academy a blow it long has deserved. 'tis I sense the presence of an artefact that wouldst allow us to take that blow even deeper into the heart of the enemy.~
== BSANDR ~ I sensed myself, that the fibula we have gained may be the entry into the Academy itself. A chance like we will not get easily again.~
== Elminsa ~ (Elminster strokes his beard in deep thought.) True, true. But knowest, Sandrah, 'tis not anonymity that guards thee this time. The enemy will know and attack thee on sight.~
== BSANDR ~ But I am not alone this time but with experienced and fearless companions. And I am not the green novice I was last time.~
== Elminsa ~ MhMhMh, true again. Nonetheless, last time thou hadthed a back door to slip out by. 'tis not the case now. Whence I transport thine party to the Academy, thou are there alone. Of a way to recall thee I know not.~
== BSANDR ~ Do not worry, father. Once the academy is in our hands, we will also have their means to return to the Sword Coast or to Waterdeep.~
== Elminsa ~ (Elminster turns to you now:) Young friend, thou hath now heared what lies before thee shouldst thou choose to go to Legencase. Ask thine questions if thou willst.~
END
++~ I see that Sandrah is determined to go there. Nobody knows better than she what awaits us there. As she is determined to take the opportunity to finish this enemy once and for all, I see no reason to hesitate. But I have to think not only of myself and my ambitions, there are also my companions to be considered.~ + SendAcad2
++~ You have provided us with a number of reasons why the risk to go there may not justify the possible result. The Sword Coast will not see this bunch again in some foreseeable time. I have to think not only of myself and my ambitions, there are also my companions to be considered.~ + SendAcad2

CHAIN
IF~~THEN  Elminsa SendAcad2
~ <CHARNAME>, once again thou reveal the makings of a real leader and competent captain. Mine daughter hath done well to follow thee. 'tis also the burden of a leader to make such decisions where the life of some may be endangered for the sake of many.~
== BIMOEN IF~ InParty("Imoen2") ~ THEN ~ Mr. E, hey man, don't doubt my <CHARNAME>. 'jus send us off and we'll be back with their heads in less time than ya need to recite the names of cities along the coast from north to south.~
== BSHART IF~ InParty("Sharteel") ~ THEN ~ Even an academy led by a female can be bashed. Just let the right group do the job and you'll see. <CHARNAME>, we are wasting time, blood could already be flowing - and not ours. ~
== BVICON  IF~ InParty("Viconia") ~ THEN ~ That witch is more cunning than a spider queen. But she is no match at all for our joined forces. On, <CHARNAME>, for Shar! ~
== BKIVAN  IF~ InParty("Kivan") ~ THEN ~ I have my arrows ready to strike down these magelings. They have no right to threaten the Realms with magic for sale. ~
==IF_FILE_EXISTS BSUFINCH  IF~ InParty("Sufinch") ~ THEN ~ Another heroic deed on the pages of the famous hero <CHARNAME>. Another incredible task and another victory for the good. ~
== BAJANT  IF~ InParty("Ajantis") ~ THEN ~ These blasphemous misuser of Mystra's great gifts deserve only total destruction. ~
==IF_FILE_EXISTS k-roseB  IF~ InParty("k-rose") ~ THEN ~ I know of no other in the Realms who would be able to do this, should <CHARNAME> refuse the task. He has my trust. ~
==IF_FILE_EXISTS ~B!GAVINJ~ IF ~InParty("B!GAVIN")~ THEN ~ Risks are high. But is it not by deeds like this that the good in the end can persist against evil. ~
==IF_FILE_EXISTS ACBreB IF~ InParty("ACBre") ~ THEN  ~ Magic is to be mistrusted in itself. But these infamous misusers callsfor a mighty hammer to crush them. ~
== BBRANW  IF~ InParty("Branwen") ~ THEN ~ By Tempus, we will be victorious without doubt. ~
==IF_FILE_EXISTS ~BB!GAVIN~ IF~ InParty("b!gavin") ~ THEN  ~We have come so far, it doesn't make sense to turn away now, doensn't it? We have proven we can do our bit to improve Faerun and we should keep on doing it.~
== BXANNN  IF~ InParty("Xan") ~ THEN ~ Any road we may chose has no return. Does it really matter whether we go down in Legencase or the Cloakwood or some unnamed wilderness... ~
== BCORAN  IF~ InParty("Coran") ~ THEN  ~ An Academy like this will burst out of its seams from wealth that desperately seeks a new owner. The old one may oppose to that, you say? Who cares.  ~
== IF_FILE_EXISTS BRH#ISRA  IF~ InParty("RH#ISRA") ~ THEN ~Aye, we cannot let such a danger continue to loom over the Realms. Our joint forces must correct this evil.~
== BGARRI IF~ InParty("Garrick") ~ THEN  ~  Well, eh, it could really wait a bit more. I have not yet found time to finish the ballad about our last deed. The pace this hero moves
can be held by no decent bard.~
==IF_FILE_EXISTS BT2Val IF~ InParty("T2Val") ~ THEN ~ (Sigh) What must be done...must be done. That academy is not alike the school I experienced with the cowled wizards in Amn.~
== BDYNAH  IF~ InParty("Dynaheir") ~ THEN ~ 'tis this hero who can do the deed at hand. No other. Doubt remains none.~
== BYESLI IF~ InParty("Yeslick") ~ THEN ~ The son and the granddaughter of Cyric demand it, ' still the deed is a heroic one. Yeah, I may be puzzled but I am d'termined.~ 
==BTIAX IF ~ InParty("Tiax") ~ THEN ~ Blood flows in the name of CYRIC as the great hero TIAX crushes another mighty opponent who tries to rule without OUR blessing!~
== BJAHEI  IF~ InParty("Jaheira") ~ THEN ~ <CHARNAME> has learned all there is to learn for <PRO_HIMHER>. I trust his decisions by now with all my heart ~
== BSAFAN IF~ InParty("Safana") ~ THEN~Apart from the fighting - done by my hero companions - this place is full of jewellery. My, and I've seen those fashionable robes on the sorceresses we defeated earlier!~
==BJenli IF~ InParty("CVJenlig") ~ THEN ~Jen'lig follow commander to battle worth joint ability. (Hiss) Fall down will Legencase fortress.~ 
== BSANDR ~ (Sandrah has taken your hand and squeezes it lightly but reassuring. You know this time she will follow you, whatever decision you may make.) ~
END
++ ~ The quicker we act, Elminster, the greater the element of surprise that works in our favour. Send us off right away.~  + SendAcad3
++ ~ Clearly the threat coming from the iron throne and its intrigues is the more urgent one for the Sword Coast. But with your magic means we can be at the Academy in no time and I trust Sandrah to find an equally quick way to get us back after the foes are crushed. So let us go now. ~ + SendAcad3
++ ~ Clearly the threat coming from the iron throne and its intrigues is the more urgent one for the Sword Coast. Once we have dealt with that, there may be a time to look into this Academy topic once again. I am sure you will understand this decision, Elminster.~ +  SendAcad4

CHAIN
IF~~THEN  Elminsa SendAcad3
~ Good luck and save return, young heroes. Fare thee well, Sandrah, my light.~
DO ~ SetGlobal("SanAcad","GLOBAL",1) EscapeArea()~
EXIT

CHAIN
IF~~THEN  Elminsa SendAcad4
~ Thine decision is made and thine reasons are understandable, <CHARNAME>. I fare thee well. Fare thee well, Sandrah, my light. I will send thee to the Friendly Arm for your onward journey.~ DO ~ SetGlobal("SanAcad","GLOBAL",1) SetGlobal("SanAkadMistake","GLOBAL",1) EscapeArea()~
EXIT


// Story of the Second Child

CHAIN
IF~ Global("Formedcloth","GLOBAL",3) AreaCheck("CVDRE2") ~ THEN  Elminsa KHChild1
~ Mine daughter, thou both hath come to finally hear the lore that needeth to be hidden from you so long.~
DO~ SetGlobal("Formedcloth","GLOBAL",4) ~
== BSANDR ~ I see that you know why we have come here this time. <CHARNAME> and I, we both trust you to have had your reasons to act like you did.~
== Elminsa ~ The past and the future of Toril come together in the fate of thee, <CHARNAME>, and thee, my beloved daughter. The past is now to be revealed. The future will depend on YOUR decisions. Listen well as thou hath done before. Choose well as thou did till now.~
==BSANDR ~ Tell us, father, what you know about <CHARNAME>'s heritage and what you know about my mother's second child.~
END
++ ~ I am not afraid of the truth, Elminster. You know that. I think I have proven my worth and I deserve to know.~ + KHChild2
++ ~ I have kept quiet with your scheming long enough. I deserve to know the truth, whatever it is.~ + KHChild2

CHAIN
IF~~ THEN  Elminsa KHChild2
~ It is true, thou deserve to know. And all that are with you. Please, Sandrah, take <CHARNAME> and thine friends to Mystra's altar in the garden. Thine goddess has led thine way to find out what thee seek to know so much. She will reveal it to thee. I am a weak old man, too weak to face this painful scene once again. Go to the garden, I will retire now. ~ DO ~ EscapeArea()~ EXIT

CHAIN
IF ~ Global("Formedcloth","GLOBAL",24) AreaCheck("CVStud") ~ THEN  Elminsa SanImoMoth
~ Thou hath come far in thine search for the old times. Are thou content with the answers thee hath found?~
DO ~ SetGlobal("Formedcloth","GLOBAL",25)~
== BIMOEN ~ Dearest old mage. Thee, Thou or whatever, have done so much for us, and for a little girl you may remember, one called Immi.~
== Elminsa ~ Imoen, do not think thine way hath not been taken care of, innocent child. Thou hath been the truest of companion to <CHARNAME> so far and thou willst continue with <PRO_HIMHER> for what is still to be done. Old friend Winthrop hath raised thee well.~
== BIMOEN ~ Oh, yes, he sure done that. Even if I'm late to thank him, I see it now. But - greatest master mage, it's not the one I call *father* when I think of the good ol' man, why I come to inquire. You musta known who my mama was?~
== Elminsa ~ Well, yes, thou deserve to know even if it will grieve thee and me and all who listen.~
= ~ Your mother's name was Ismanelda. Red haired, quick witted, ever cheerful young Ismanelda.~
== BIMOEN ~ Hey, now tell me her bestest colour was pink and I know she's really the one.~
== Elminsa ~ (The old mage seems perplexed for a second.) Well, however thee gained that knowledge - but yes, she often wore pink garments around the house.~
== BIMOEN ~ She lived here, in Waterdeep, in this house? Slowpoke be quicker, man, tell me and tell me.~
== Elminsa ~ I would if thou let me. Yes, she lived here as she was working in mine and Khalindra's household. She was a Waterdeep girl who worked in our kitchen. She was just - by coincidence...well..~
== BIMOEN ~ PLEASE, mighty mage. If I can stand it you should as well, be no baby.~
== Elminsa ~ Bhaal had sneaked into the house to inseminate Khalindra at night when I was away. For some reason Ismanelda was still awake and he sensed her presence in the house. With his evil instinct he searched and found her. He raped her for no other cause than that she was there at that moment.~
== BIMOEN ~ Bloody bastard. I'd kill him if he would still be alive. Ha, I will kill that Sarevok of his instead. But...~
= ~ ...hey, did Winthrop know her? I mean did he...~
== Elminsa ~ Good Winthrop. Well. He is a Harper, thou know that by now and thus came to my house regularly. He came more often once Ismanelda was in the household and he never left the house without paying a visit to the kitchen or the kitchen garden. All in the house sensed that some romance was afoot there. And then came the black day.~
== BIMOEN ~ Is that why he took me as his child?~
== Elminsa ~ When the truth was found about Khalindra and Ismanelda and the spawns they were growing, Winthrop wanted to marry her to be the child's father, yet she refused him to become husband and widower at the same time, knowing she had to perish with childbirth.~
== BIMOEN ~ And he became my father anyhow, stubborn wonderful man. Thank you, Elminster for giving me a mother now I can think of. Feels good. Hope it feels good for you, too, for the sharing, he?~
== Elminsa ~ Indeed, young Imoen. It hath felt good to share with thee, even if it is a sad tale and so unjust to ones as innocent as Ismanelda and thineself.~ DO ~ EscapeArea()~
EXIT

