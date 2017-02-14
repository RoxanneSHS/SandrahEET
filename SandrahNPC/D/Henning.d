BEGIN HENNING

IF~
AreaCheck("CVorc2")
NumberOfTimesTalkedTo(0)
~ THEN BEGIN Uhh
SAY ~ Ooooh!~ 
IF ~~ THEN EXIT
END

IF ~
AreaCheck("BG4803")
!Global("DMWWNashkelPelt","GLOBAL",1)
OR(2)
!InParty("CVSandr") 
!InParty("Imoen2")
NumberOfTimesTalkedTo(0)
~ THEN BEGIN NK0
  SAY ~Interested in a little business on the side, friend?  I've a man who swears by his grandmother he glimpsed a white wolf up in the Cloudpeak ice fields.  It was but a short ways south, and she be easy pickings for a smart sword.  I'd pay you good money for its pelt, so it's a guaranteed sale if you go.  Keep it in mind on your travels.  Can I interest you with anything here in my humble shop?~
  IF ~~ THEN REPLY ~Yes, what do you have for sale?~  DO ~StartStore("sto4803",LastTalkedToBy(Myself))AddJournalEntry(@175,QUEST) ~ EXIT
  IF ~~ THEN REPLY ~Nothing right now.~ DO~  AddJournalEntry(@175,QUEST) ~ EXIT
END

IF ~AreaCheck("BG4803") InParty("CVSandr") InParty("Imoen2") Global("SanImoNashInt","GLOBAL",4) PartyHasItem("MISC01")~THEN BEGIN NK1f
 SAY ~There be a fine looking pelt, if I have ever seen one.  Good on you!  Here is a fair price for you.  Pleasure doing business with you.~
 IF~~THEN DO ~TakePartyItemNum("MISC01",1)
GiveGoldForce(500)
IncrementGlobal("DMWWNashkelPelt","GLOBAL",1)
EraseJournalEntry(@175)
DestroyItem("MISC01")
~ GOTO NK1c
END
  
IF ~
AreaCheck("BG4803")
!Global("DMWWNashkelPelt","GLOBAL",1)
InParty("CVSandr") 
InParty("Imoen2")
NumberOfTimesTalkedTo(0)
~ THEN BEGIN NK1a
SAY ~Interested in a little business on the side, friend?  I've a man who swears by his grandmother he glimpsed a white wolf up in the Cloudpeak ice fields.  It was but a short ways south, and she be easy pickings for a smart sword.  I'd pay you good money for its pelt, so it's a guaranteed sale if you go.  Keep it in mind on your travels.  ~
  IF ~~ THEN EXTERN HENNING ForImo1
END

IF ~
AreaCheck("BG4803")
!Global("DMWWNashkelPelt","GLOBAL",1)
PartyHasItem("MISC01")
~ THEN BEGIN NK1b
  SAY ~There be a fine looking pelt, if I have ever seen one.  Good on you!  Here is a fair price for you.  Pleasure doing business with you.~
  IF ~InParty("CVSandr") InParty("Imoen2") Global("SanImoNashInt","GLOBAL",4)~ THEN DO ~TakePartyItemNum("MISC01",1)
GiveGoldForce(500)
IncrementGlobal("DMWWNashkelPelt","GLOBAL",1)
EraseJournalEntry(@175)
DestroyItem("MISC01")
~ GOTO NK1c
IF ~ OR(2)!InParty("CVSandr") InParty("Imoen2")~ THEN DO ~TakePartyItemNum("MISC01",1)
GiveGoldForce(500)
IncrementGlobal("DMWWNashkelPelt","GLOBAL",1)
EraseJournalEntry(@175)
DestroyItem("MISC01")
~ EXIT
END

IF~~ NK1c
SAY ~ Did you accomplish that, mylady?~
IF ~~ THEN EXTERN HENNING ForImo2
END

IF ~
AreaCheck("BG4803")
!Global("DMWWNashkelPelt","GLOBAL",1)
!PartyHasItem("MISC01") 
OR(2) 
!Global("SanImoNashInt","GLOBAL",7) 
!Global("SanImoNashInt","GLOBAL",10)
~ THEN BEGIN NK2
  SAY ~Interested in a little business on the side, friend?  I've a man who swears by his grandmother he glimpsed a white wolf up in the Cloudpeak ice fields.  It was but a short ways south, and she be easy pickings for a smart sword.  I'd pay you good money for its pelt, so it's a guaranteed sale if you go.  Keep it in mind on your travels.  Can I interest you with anything here in my humble shop?~
  IF ~~ THEN REPLY ~Yes, what do you have for sale?~ DO ~StartStore("sto4803",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY~Nothing right now.~  EXIT
END

IF ~
AreaCheck("BG4803")
Global("DMWWNashkelPelt","GLOBAL",1)
!PartyHasItem("misc01")
!AreaCheck("CVORC2")
OR(2) 
!Global("SanImoNashInt","GLOBAL",7) 
!Global("SanImoNashInt","GLOBAL",10)
~ THEN BEGIN NK3
  SAY ~Well, if it ain't the fine hunter who brought me that winter wolf pelt! Can I interest you in anything in my humble shop?~
  IF ~~ THEN REPLY~Yes, what do you have for sale?~ DO ~StartStore("STO4803",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~Nothing right now.~ EXIT
END

IF ~
AreaCheck("BG4803")
Global("DMWWNashkelPelt","GLOBAL",1)
PartyHasItem("misc01")
!AreaCheck("CVORC2") 
OR(2) 
!Global("SanImoNashInt","GLOBAL",7)
!Global("SanImoNashInt","GLOBAL",10)
~ THEN BEGIN NK4
  SAY ~Well, if it isn't another winter wolf pelt! Thing is, I had a buyer lined up for the last one... don't think I can be taking another one off your hands right now. Maybe some trader a bit closer to civilization could help you out. But perhaps I can interest you in something else?~
  IF ~~ THEN REPLY ~Perhaps. What do you have for sale?~ DO ~StartStore("STO4803",LastTalkedToBy(Myself)) ~ EXIT
  IF ~~ THEN REPLY ~Not right now.~EXIT
END


// Imoen Interest in Nashkel

CHAIN
IF~ Global("Nashtalk","LOCALS",0) ~ THEN HENNING ForImo1
~ Excuse me, mylady, would you mind to come a bit aside with me for a personal question? ~
=~ This is not my usual attitude, mylady, please believe me, but your lively red-headed friend...~
DO ~ SetGlobal("ImoNashSK","GLOBAL",1)SetGlobal("Nashtalk","LOCALS",1)~
== CVSandrJ IF ~ InParty("CVSandr") InParty("Imoen2") ~ THEN ~ Ah, you mean Imoen!~
== HENNING IF ~ InParty("CVSandr") InParty("Imoen2") ~ THEN ~ Imoen is her name - Imoen - Eh, what I wanted to ask you, please excuse me for my directness. But is Imoen, I mean is she...(Blushes deep red)~
== CVSandrJ IF ~ InParty("CVSandr") InParty("Imoen2") ~ THEN ~ She has no steady boyfriend at the moment.~
== HENNING IF ~ InParty("CVSandr") InParty("Imoen2") ~ THEN ~ Thank you for your understanding, mylady, that is exactly what I wanted to ask you...My name, by the way, is Henning.~
== CVSandrJ IF ~ InParty("CVSandr") InParty("Imoen2") ~ THEN ~ Imoen, my friend, please come over here for a moment, will you. Fine. Let me introduce you then, Henning of Nashkel, this is Imoen of Candlekeep.~
== BIMOEN  IF ~ InParty("CVSandr") InParty("Imoen2") ~ THEN ~ Heya, Henning, nice to meet ya, quite a nice shop ya got yourself here. Say, I desperately am searchin' for some pink garnments...~
== HENNING IF ~ InParty("CVSandr") InParty("Imoen2") ~ THEN ~ Oh, lady Imoen, yes...pink..this way please, let me show you...~ DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~EXIT

CHAIN
IF~ Global("SanImoNashInt","GLOBAL",4)~ THEN HENNING ForImo2
~ You are a true admirable heroine!~
== BIMOEN  IF ~ InParty("CVSandr") InParty("Imoen2") ~ THEN ~ Heya, Henning, quite some of these nasty beasts out there. But no match for Imoen and her sidekicks.~
== HENNING IF ~ InParty("CVSandr") InParty("Imoen2") ~ THEN ~ Imoen, I am so glad you return without hurt. I need to think all the time about the dangers you may encounter.~
== BIMOEN  IF ~ InParty("CVSandr") InParty("Imoen2") ~ THEN ~ Ha, don't wet your pants about us. We can handle much more than just a few winterwolves, right on. Say, how's business. Any perils from those Nashkel housewifes that come in here frequently?~
== HENNING IF ~ InParty("CVSandr") InParty("Imoen2") ~ THEN ~ Other women? Oh yes they come and go, but everytime that door opens, I just hope it might be you.~
== BIMOEN  IF ~ InParty("CVSandr") InParty("Imoen2") ~ THEN ~ Oooh, how romantic. Betcha can't think what I got for ya. (Imoen rumages in her backpack for quite a while until she finds some badly battered dried pink berries.) Hey, let's just sit out into the sun and munch these sweeties together, watcha think.~ DO ~ SetGlobal("SanImoNashInt","GLOBAL",5) AddJournalEntry(@932,QUEST)~EXIT

CHAIN
IF WEIGHT #-999 ~ Global("SanImoNashInt","GLOBAL",7)InParty("Imoen2") InParty("CVSandr") ~ THEN HENNING ImoFurC
~ Oh, my wonderful Imoen, how good to see you again and well and unharmed.~
DO ~ SetGlobal("SanImoNashInt","GLOBAL",8)~
== BIMOEN ~ Henning, my sweetest of sweetest loverboy, kissa me quickly.~
== HENNING ~ Mmm, this kiss and another. But now here, darling, today I have something very special for you.~
== BIMOEN ~ Wow, a parcel, mysterious, I so love to get gifts, uh I can't wait to open it. Oh, you're the bestest of the bestest...(tears the wrapping nervously from the gift..)~
= ~ Uh, - - - WONDERFUL, oh, Henning, let me drown ya in my kisses, you wonderful man. No girl has never ever received such a present. I need to put it on immediately. ~ DO ~ GiveItemCreate("imofurc","Imoen2",0,0,0)~
== HENNING ~ I hope you like the colour, my sweetheart.~
== BIMOEN ~ I love and love and love it. And it's so cosy and so soft. Tell ya what...I will get rid of all else and wear it for you with nothing underneath, oh you sweetest of all sweetest loverboys - hey don't stand there with your mouth all drooling, get upstairs with me quickly! ~ DO ~ StartMovie("restinn")~
EXIT

CHAIN
IF WEIGHT #-999~ Global("SanImoNashInt","GLOBAL",10)InParty("Imoen2") InParty("CVSandr") ~ THEN HENNING ImoFur2
 ~ IMOEN! My, how beautiful you are, my darling, this coat really brings out all your natural beauty to shine!~
 DO ~ SetGlobal("SanImoNashInt","GLOBAL",11)~
 == BIMOEN ~ Henning, my sweetest dreamboy, I love it so much and much. And I love you so much more. It must have cost you a fortune, but it is worth it every bit of coin. Now listen...(tells Henning about the shop ideas, she has developped with Sandrah.]~
== HENNING ~ Now, Imoen, all of that would be much easier for both of us if you were here with me, but...~
 == BIMOEN ~ But what? I thought you loved me to be your adventuring heroine with loads of tales to tell when I come ...home?~
== HENNING ~ Yes, yes, yes. Of course. You are not one to be kept behind the counter of a small but wealthy shop. And did you just say *home* to our little nest here?~
 == BIMOEN ~ Did I? Mmh, I always had my heart on my tongue, as old Puffguts used to say. Nevermind, anyway, I like it here so much but I have my obligations to <CHARNAME> as well. Now, <PRO_HESHE> would be lost out there without me!~
== HENNING ~ Sweetheart, I would never dare to chain you to the home, I mean house...Just, please, pray to <CHARNAME> to drop by more often - with you.~
END
++ ~ Henning, you knew of Imoen's way before you started to court her. You have to live with the fact that she is coming and going at my demands.~ EXIT
++ ~ Henning, Imoen, my quest is pressing us a bit, but there will be lighter times for all of us one day. Until then I promise, we will come to Nashkel whenever our course comes within reasonable reach of the town.~ EXIT

CHAIN
IF WEIGHT #-999 ~ Global("SanImoNashInt","GLOBAL",13) InParty("Imoen2") InParty("CVSandr")~  THEN HENNING ImoSana
~ Sweetest Suzanna!~
DO ~ SetGlobal("SanImoNashInt","GLOBAL",15)~
 == BIMOEN ~ Henning...?~
 == HENNING ~ I-I-Imoen?~
 == BSANDR~ Henning?~
 END
 ++ ~ Suzanna ~ + ImoSanaSD
 
 CHAIN 
 IF ~~ THEN HENNING ImoSanaSD
 ~ Ehh...~
 == BIMOEN ~ <CHARNAME>, Lets get outa here quickest!~
 == BSHART IF~ InParty("Sharteel") ~ THEN ~ Male pig, I skewer you just so much that you can be ressurected by Sandrah - and then little Imoen can do the same again to you. Puuh. ~
== BVICONI  IF~ InParty("Viconia") ~ THEN ~ The wraith of the spider queen upon you. Imoen you have deserved better than this male scum. ~
== BKIVAN  IF~ InParty("Kivan") ~ THEN ~ My saddest day since Deheriana vanished. ~
== IF_FILE_EXISTS BSUFINCH  IF~ InParty("Sufinch") ~ THEN ~ Oh no, poor little Imoen. You hateful man (Throws her heaviest tome at Henning.) ~
== BAJANT  IF~ InParty("Ajantis") ~ THEN ~ Mylady Imoen, take my arm, please, I will lead you from this rotten place. Helm may smash it to pieces! ~
== IF_FILE_EXISTS k-roseB  IF~ InParty("k-rose") ~ THEN ~ The tale of this treachery will be sung across the Swordcoast. No decent customer will enter this shop again.~
== IF_FILE_EXISTS ~B!GAVINJ~ IF ~InParty("B!GAVIN")~ THEN ~ Oh, mylady, this is ..unexpected. You have not deserved this. Take the hand of a friend, please.~
== IF_FILE_EXISTS ACBreB IF~ InParty("ACBre") ~ THEN  ~ Buzzurk! Clangeddin's Axe lay this place to ruins. ~
== BBRANW  IF~ InParty("Branwen") ~ THEN ~ By Tempus, lousy moneygrabber, squeal in your own blood and intestines. ~
== BXANNN  IF~ InParty("Xan") ~ THEN ~ Love is an illusion. Waking up is the hardest part of it. ~
== BCORAN  IF~ InParty("Coran") ~ THEN  ~ Hm. Man, that was not very clever. One should not been caught in the act like this, believe one who knows.  ~
== BGARRI IF~ InParty("Garrick") ~ THEN  ~  (Starts to rip a piece of parchment.) This wedding gift is no longer needed, I assume. ~
== BDYNAH  IF~ InParty("Dynaheir") ~ THEN ~ Treacherous and cunning. The books of lore are full of deeds from cowards and the revenge done by the strong maidens thus betrayed.~
== BJAHEI  IF~ InParty("Jaheira") ~ THEN ~ Oh, Imoen, all my care for you could not prevent this. Let us get the little one away from here immediately, <CHARNAME>. ~ 
== BSANDR ~ (Sandrah takes Imoen's hand and leads her outside.)~
DO ~
 StartCutSceneMode()
		FadeToColor([30.0],0)
		Wait(2)
		ActionOverride("Shopkn",DestroySelf())
		ActionOverride("Sanana",DestroySelf())
		ActionOverride(Player1,LeaveAreaLUA("BG4800","",[1747.1139],13))
		ActionOverride(Player2,LeaveAreaLUA("BG4800","",[1747.1139],13))
		ActionOverride(Player3,LeaveAreaLUA("BG4800","",[1747.1139],13))
		ActionOverride(Player4,LeaveAreaLUA("BG4800","",[1747.1139],13))
		ActionOverride(Player5,LeaveAreaLUA("BG4800","",[1747.1139],13))
		ActionOverride(Player6,LeaveAreaLUA("BG4800","",[1747.1139],13))
		FadeFromColor([30.0],0)
                EndCutSceneMode()~
EXIT




