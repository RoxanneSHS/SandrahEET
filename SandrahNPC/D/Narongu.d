BEGIN NARONGU

// Naronguth Returns

IF ~ Global("SanNarQ","GLOBAL",9) AreaCheck("CVRoa1") ~ THEN BEGIN  NarRRet1
SAY ~ STAND!! The band of slippery slipper thieves. What did you expect? ~
= ~ YOU EXPECTED TO HIDE FROM NARONGUTH WITH HIS SLIPPERS OF LUCK??
    FOOLS!~
IF ~~ THEN REPLY ~ Ha, old friend, you are completely mistaken. You are the one who lost his slippers after the party, remember? ~ DO ~ SetGlobal("SanNarQ","GLOBAL",10)~ GOTO NarRRet2
END

IF ~~THEN BEGIN  NarRRet2
SAY ~ Did I, I do not remember very well, but I sense you have them, THEY ARE MINE!~
IF ~~ THEN REPLY ~ Calm down, Naronguth, no need to worry. We have taken your slippers and kept them save for you. We are no ordinary thieves.~  GOTO NarRRet3
END

IF ~~THEN BEGIN  NarRRet3
SAY ~ WHAT? You have them and you give them to me? No fighting, no lying and cheating? ~
= ~ HOW DISAPPOINTING! MORTALS, MAKE IT QUICK, I HAVE TO LEAVE THIS NOTORIOUSLY PEACEFUL PLACE IMMEDIATELY! ~
IF ~ PartyHasItem("Sandebo") ~ THEN REPLY ~ Here you go. (Give Naronguth his slippers.) ~ DO ~ SetGlobal("NarSlipTr","CVRoa1",1) TakePartyItem("SanDeBo")EraseJournalEntry(@127)AddExperienceParty(2000) ~ EXIT
IF ~ PartyHasItem("Sanetg") ~ THEN REPLY ~ Your slippers, Sir. (Give Elminsters cursed slippers to Naronguth.) ~ DO ~ SetGlobal("NarSlipFa","CVRoa1",1) TakePartyItem("SanEtg") AddExperienceParty(5000) EraseJournalEntry(@127) ~ EXIT
IF ~~ THEN REPLY ~ I am afraid, I have the slippers not here. ~ DO ~ ChangeEnemyAlly("Narongu",ENEMY) Attack(Player1) ~ EXIT
END

IF ~NumTimesTalkedTo(0)InMyArea("CVSandr")PartyHasItem("Scrlalz") AreaCheck("CVNar1")~ THEN BEGIN FindAlz
SAY ~ MORTAL, YOUR JOURNEY HAS COME TO AN END!
 (It seems to you, that this demon was puzzled for a moment, not expecting anyone to approach from this direction of the path.) ~
IF ~ ~ THEN REPLY ~ Who, or what are you? ~ GOTO FindAlz1
IF ~ ~ THEN REPLY ~ Where are we now? ~ GOTO FindAlz1
END

IF ~~ THEN BEGIN FindAlz1
SAY ~ HAHA, SINCE YOU WILL NOT LEAVE THIS PLACE ALIVE I MIGHT AS WELL TELL YOU! ~
= ~ I AM NARONGUTH....??...NARONGUTH!!!. ~
IF ~ ~ THEN REPLY ~ Are we supposed to know you? (The horrible sound of crashing rocks is heard as the entry behind you collapses.)~  DO ~ CreateItem("SANBOUL",0,0,0) DropItem("SANBOUL",[302.586])~ GOTO FindAlz2
IF ~ ~ THEN REPLY ~ Interesting. Not that it means anything to us. (The horrible sound of crashing rocks is heard as the entry behind you collapses.)~  DO ~ CreateItem("SANBOUL",0,0,0) DropItem("SANBOUL",[302.586])~ GOTO FindAlz2
END

IF ~~ THEN BEGIN FindAlz2
SAY ~ (Again the Demon seems a bit puzzled. Obviously he thought that everyone would know him.)~
IF ~~ THEN EXTERN CVSANDRJ NarSanInt1
END

IF ~~ THEN BEGIN Whisp1
SAY~ WHAT IS THIS WHISPER, CLERIC GIRL? NOTHING REMAINS SECRET TO THE MIGHTY NARONGUTH!!~
= ~ IMPERTINENT FOOLS, YOU WILL RATHER SUFFER MY WRAITH FOR A LONG TIME THAN TO DIE HERE QUICKLY!!~
= ~ LET ME THINK. ~
= ~ ONLY SOMEONE AS MIGHTY AS ELMINSTER WOULD BE ABLE TO FIND ME. (Puzzled again) NONE OF YOU IS ELMINSTER , HEY. BUT....~
= ~ LITTLE CLERIC GIRL, COME CLOSER, THERE IS SOMETHING I SENSE ABOUT YOU.~
IF ~ ~ THEN REPLY ~ You nasty fiend, don't dare to touch Sandrah. ~ DO~IncrementGlobal("Sanpoints","Global",1)~GOTO FindAlz4
IF ~ ~ THEN REPLY ~ Sandrah, I think you got us into some trouble here. ~GOTO FindAlz4
END

IF  ~~ THEN BEGIN FindAlz4
SAY ~ HOHOHO! SANDRAH, SO THAT IS IT, YOU FOOL. MY TAKING OF THE SHARD HAS WORKED BETTER THAN EXPECTED.~
= ~ SO IT IS NOT ELMINSTER COMING TO HUNT IT, BUT HIS BELOVED BABY DAUGHTER. EVEN BETTER. WHAT A FESTIVAL IN HELL, WHAT A CATCH.....~
= ~ I WILL LET YOU ALL GO TO SUFFER FOR YOUR INTRUSION. SO, NOW I WILL PUT YOUR CHOICES BEFORE YOU. HAVING TO MAKE A CHOICE WILL ONLY LET YOU SUFFER MORE!~
= ~ ONE - You will loose some of your health permanently. ~
= ~ TWO - Your little friend Sandrah will spent a tenday in hell with me (the demon licks his greasy lips). ~
= ~ THREE - You can fight me and try to get the shard which is the only means to go back the way you came. FIGHT ME, HAHAHA!!!~
IF ~ ~ THEN REPLY ~ What? ~ GOTO AlzChoices
END

IF  ~~ THEN BEGIN AlzChoices
SAY ~  SO, MORTAL, HOW WOULD YOU LIKE TO SUFFER FOR YOUR WAY OUT?~
IF ~ Global("Alzhealth","GLOBAL",0)~ THEN REPLY ~ I will give you a some of my health on behalf of my group. ~ GOTO AlzHealth
IF ~ ~ THEN REPLY ~ Sandrah, I know it is very much to ask, but I know you would do anything for your friends. If you stay with him he will not dare to do you harm (whisper: and we will try to get your father to help us while you distract him from the inside). ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",-1)~GOTO AlzTakeSan
IF ~~ THEN REPLY ~ Demon, your choices are unacceptable. We will rather fight and die than to give you anything! ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",-2)~GOTO AlzFight
IF ~~THEN REPLY ~ ...mmh, what about your old friend Alzaligundrel...~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO AlzDeal1
END

IF ~~ THEN BEGIN AlzFight
SAY ~ AAARGH!!! ~ IF ~~ THEN DO ~ ChangeEnemyAlly("Narongu",ENEMY) Attack(Player1)~ EXIT
END

IF  ~~ THEN BEGIN AlzTakeSan
SAY ~ WELCOME, ELMINSTER BABY DAUGHTER, LET THE FUN BEGIN!!~
IF ~ ~ THEN REPLY ~ We will get her back unharmed, Demon, or even hell will be no safe place for you anymore. ~ DO ~ GiveItemCreate("SanParc","CVSandr",0,0,0) SetGlobal("SanparcT","GLOBAL",1) GiveItemCreate("SANDEBO","CVSandr",0,0,0) SetGlobal("SandrahJoined","GLOBAL",5) LeaveParty() CreateVisualEffectObject("SPDIMNDR","CVSandr") ActionOverride("CVSandr",EscapeAreaObjectMove("BG3402","Tran3001a",270,497,0)) ~ GOTO ImoCommAlz
IF ~ ~ THEN REPLY ~ I decided I cannot trust you in this. We will not give her to you without fight. To arms! For Sandrah!~ GOTO AlzAtt
IF ~~THEN REPLY ~ ...mmh, what about your old friend Alzaligundrel...~ GOTO
AlzDeal1
END

IF ~~ THEN BEGIN  ImoCommAlz
SAY ~ HAHAHA!~
IF ~ InParty("Imoen2") ~ THEN EXTERN IMOEN2_ ImoNarong
IF ~ !InParty("Imoen2") ~ THEN EXIT
END


IF ~~ THEN BEGIN AlzAtt
SAY ~ WHAT? ARE YOU STUPID? ~
IF ~~ THEN REPLY ~(Sandrah whispers again) <CHARNAME>, Don not try to be my guardian against this creature, he is too powerful for us. We must find a better way than to fight him. ~ GOTO Recons
IF ~~ THEN REPLY ~ No more talking! ~ GOTO AlzFight
END

IF ~~ THEN BEGIN Recons
SAY ~ AGAIN THIS WHISPER, CLERIC GIRL? AARGH!!~
IF ~~ THEN REPLY ~ ...mmh, what about your old friend Alzaligundrel...~ GOTO AlzDeal1
END

IF ~~ THEN BEGIN AlzHealth
SAY ~ HAHAHA!! THE TRUE HERO, GIVING FOR THE GROUP, HIHI. This was just a test, mortal, your health state is of no interest to me. I start to like this game.~
IF ~~ THEN REPLY ~ ...mmh, then what about another choice...~ DO ~ SetGlobal("Alzhealth","GLOBAL",1) ~ GOTO AlzChoices
END

IF  ~~  THEN BEGIN AlzDeal1
SAY ~ WHAT IS THAT? WHAT DO YOU KNOW.......~
= ~ Ah...now I recognise that perculiar stench I have in my nose since you came in. You have something that is of Alzaligundrel. SPEAK MORTAL, IT MAY BE YOUR LAST WORD!~
IF ~~THEN REPLY ~ (Bluff) Your archenemy knows of your lair. We know about his. Those may be interesting facts to start a deal. ~ GOTO AlzDeal2
IF ~~THEN REPLY ~ (Tell truth) We have this scroll that opens the portal to his lair. Would that not be of some interest to you? ~ GOTO DealFail
END

IF  ~~ THEN BEGIN DealFail
SAY ~ MORTAL, I KNEW IT. So I will take this scroll from you now and you are back to your choices. HAHAHA ~
IF ~ ~ THEN REPLY ~ Sandrah, I know it is very much to ask, but I know you would do anything for your friends. If you stay with him he will not dare to do you harm (whisper: and we will try to get your father to help us while you distract him from the inside). ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",-1)~GOTO AlzTakeSan2
IF ~~ THEN REPLY ~ Demon, your choices are unacceptable. We will rather fight and die than to give you anything! ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",-2)~GOTO AlzFight
END

IF  ~~THEN BEGIN AlzTakeSan2
SAY ~ WELCOME, ELMINSTER BABY DAUGHTER, LET THE FUN BEGIN!!~
IF ~ ~ THEN REPLY ~ We will get her back unharmed, Demon, or even hell will be no safe place for you anymore. ~ DO ~ GiveItemCreate("SanParc","CVSandr",0,0,0) SetGlobal("SanparcT","GLOBAL",1) GiveItemCreate("SANDEBO","CVSandr",0,0,0) SetGlobal("SandrahJoined","GLOBAL",5) LeaveParty() CreateVisualEffectObject("SPDIMNDR","CVSandr") ActionOverride("CVSandr",EscapeAreaMove("BG3402",270,497,0)) ~ EXIT
IF ~ ~ THEN REPLY ~ I decided I cannot trust you in this. We will not give her to you without fight. To arms! For Sandrah!~ GOTO AlzFight
END

IF  ~~ THEN BEGIN AlzDeal2
SAY ~ (You are now used to see the demon puzzled once again). Well, mmh, yes...So you know about his lair. But I cannot go there. I cannot pass beyond that damned wall of water you passed through. But you can.... ~
IF ~~ THEN EXTERN CVSANDRJ NarSanInt2
END

IF ~~THEN BEGIN DealDone
SAY~(The demon must be really irritated by now as he no longer objects against your whispers.)~
= ~ I have already sensed Alzaligundrel's presence around here but my minions are too stupid to locate him. After the clash of our last fight down there in the unfarthomed depth he might have been thrown up to here into these mountains by the explosions. I hope he is stuck in an equal awful hole as I am. ~
= ~So - If you bring me the black heart of Alzaligundrel, I will give you Elminster's shard and we will part in peace. DEAL? ~
IF ~~ THEN REPLY ~ DEAL!~ DO ~ GiveItemCreate("DEMSCR","CVSandr",0,0,0) AddJournalEntry(@42,QUEST) ~ EXIT
END

// End First Part
IF ~ NumTimesTalkedToGT(0) Global("SanNarQ","GLOBAL",1)~ THEN BEGIN AlzOut
SAY ~ HAHA. Oh, yes I have to get you to the outside again. ~
IF ~~ THEN DO ~ SetGlobal("SanNarQ","GLOBAL",2) ~ EXIT
END

//
// End First Part
//

IF ~ Global("SanNarQ","GLOBAL",5) ~ THEN BEGIN HomeRun1
SAY ~ YOU HAVE RETURNED, MORTALS. As you are here you must have defeated my archenemy, RIGHT? ~
IF~ PartyHasItem("AlzaHrt2")~ THEN REPLY ~ Well, we are ready to make the exchange. (Give the fake demon heart to the demon.) ~ DO ~ TakePartyItem("AlzaHrt2") ~ GOTO HomeRun2
IF~ PartyHasItem("AlzaHrt1")~ THEN REPLY ~ We are ready to make the exchange. (Give the black heart of Alzaligundrel to the demon.) ~ DO ~ TakePartyItem("AlzaHrt1")~ GOTO  HomeRun2
END

IF ~~THEN BEGIN HomeRun2
SAY~ WONDERFUL! HAHAHA!!!! AFTER ALL! ~
= ~It's party time now, my friends, my new friends. Make yourself comfortable while I will advise the cook to prepare us freshly slaughtered basilisks. ~
= ~ And of course the black heart of Alzaligundrel cooked in its own blood as a starter.~
= ~ WELCOME, WELCOME, PARTY TIME!!!!~
IF ~~ THEN REPLY ~ Thank you for the invitation, Naronguth, but we would rather prefer to get our deal finished now. Do not forget to give us the shard.~ GOTO HomeRun4
IF ~~ THEN REPLY ~ We did your bloody deed, but we are not your friends, demon. Give us the shard and you will have all the time of hell to party afterwards.~ GOTO HomeRun4
IF ~~ THEN REPLY ~ Just hand us the shard according to our DEAL, and let the cook prepare us some sandwiches for the road. We are finished with you. ~ GOTO HomeRun4
END

IF ~~THEN BEGIN HomeRun4
SAY~ WHAT?? NASTY PARTY POOPERS, GET OUT OF HERE NOW!!! ~
= ~ NO FUN FOR YOU, NO SHARD FOR YOU, OUT! ~
IF ~~ THEN REPLY ~ I should have known better!!! A deal with a demon can never work. There is no other way than to take the shard from you then. DIE!~ GOTO AlzFight
IF ~~ THEN REPLY ~ I should have known better. 
(Turn to Sandrah:) That was your idea. Any suggestions, counselor? ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO GoToHell
IF ~~ THEN REPLY ~ Even a demented demon like you should have a minimum of honour. A DEAL IS A DEAL! Hand over the shard! ~ GOTO DealIsDeal
END

IF ~~THEN BEGIN  GoToHell
SAY ~ THOSE WHISPERS AGAIN WITH YOUR LITTLE CLERIC GIRL?~
IF ~~ THEN EXTERN CVSANDRJ NarSanInt3
END

IF ~~THEN BEGIN  DealIsDeal
SAY ~ ARE YOU DUMB?? ARE YOU DEAF?? NO PARTY, NO DEAL, YOU ARE STILL HERE, SO DIE! ~
IF ~~ THEN DO ~ ChangeEnemyAlly("Narongu",ENEMY) Attack(Player1)  ~ EXIT
END

IF ~~THEN BEGIN  GoToHell2
SAY ~ Go to Hell? ~
= ~ Hm.~
= ~ Home, sweet home. (Begins to hum:) Home, oh, sweet home.~
= ~ (It seems that some kind of slippers have appeared at the demon's feet.)~
= ~ There is no place like home! (Clicks the heels of his slippers.)~
= ~ There is no place like home! (Clicks his heels again.) ~
IF ~~ THEN DO ~  ClearAllActions()
                 SmallWait(2)
                 StartCutSceneMode()
                 CreateVisualEffectObject("SPDIMNDR","Narongu")
                 CreateItem("Sandebo",0,0,0) DropItem("Sandebo",[502.586])
                CreateItem("EShard",0,0,0) DropItem("EShard",[507.591])
                CreateItem("BOW16",0,0,0) DropItem("BOW16",[511.566])
                CreateItem("HELMDEM",0,0,0) DropItem("HELMDEM",[500.576])
                SetGlobal("SanNarQ","GLOBAL",6)
                SetGlobal("NarHellAfter","GLOBAL",1)
                AddJournalEntry(@67,QUEST)
                Wait(5)
                EndCutSceneMode()
                ActionOverride("Narongu",ForceSpell(Myself,DRYAD_TELEPORT))
                DisplayStringHead("CVSandr",@66) ~ EXIT
END
//

// Narongu and Drizzt

CHAIN
IF~ Global("SanDriDrowAmb","GLOBAL",3)~ THEN NARONGU NarDrzt1
~ HELLO~
DO ~ SetGlobal("SanDriDrowAmb","GLOBAL",4)~
== BSANDR ~ Hello.~
= ~ I confess, it was a bit blue-eyed of me to assume you were really dead.~
== F_DRIZTJ~ (Laughs) Did we not talk about meeting old acquaintances from time to time. This one seems to be one of yours.~
== BSANDR ~ Right, Drizzt, Naronguth, thief of my father's Shard, fetishist for footwear and peanut hater.~
== NARONGU~ DRIZZT?? IS THAT DRIZZT DO'URDEN?? SURE, IS THERE ANY OTHER DRIZZT?~
== BSANDR ~ Well, my dear, your reputation is widespread if they even know you down there where this creature comes from.~
== NARONGU~ DRIZZT DO'URDEN AND ELMINSTER'S BABY GIRL IN ONE CATCH - CELEBRATION TIME AGAIN!!!~ DO ~ ChangeEnemyAlly("Narongu",ENEMY) Attack("CVSandr") ~ EXIT

//Narongu Final in Nine Hells - Haer'Dalis
CHAIN
IF~Global("SanHaerRel1","GLOBAL",33)Global("NarFinal","CVHel1",0)~ THEN NARONGU HaerHel1
~You are desperately seeking your end, Elminster's daughter. Your wish may finally be granted today.~
DO~SetGlobal("NarFinal","CVHel1",1)~
== BSANDR ~ My wish to get rid of you is the wish that will be granted to me today, so much is true.~
== NARONGU~ BIG WORDS FOR A MORTAL WHO DARES TO COME DOWN HERE FOR THIS CRAZY INVENTION CALLED LOVE SPIT LOVE!!~
== BSANDR ~ You have really done me a favour after all, Naronguth. Every time we kill you on the Prime you get restored and persue us again. Your defeat down here in Demogorgon's very own Realm will be permanent.~
== NARONGU~ FIRST THE DEED MUST BE DONE, CRAZY PRIESTESS, HAHAHA. BUT EVEN A VICTORY WILL COST YOU DEEPLY AS YOU CAN NEVER GET BACK OUT OF HERE.~
== BSANDR ~ Too bad you will not be able to witness your error. You felt save here but we have found a way to come. And as sure as that we will return with our comrad once we have done our business with you.~
== NARONGU~ENOUGH OF YOUR IMPERTINENCE!!~DO~ApplyDamage(Myself,286,CRUSHING) Enemy()~ EXIT

// Others

APPEND IMOEN2_

IF ~~ THEN BEGIN ImoNarong
SAY ~<CHARNAME> NO! You cannot betray Sandrah so, no, no (bursts into tears). ~ IF ~~ THEN EXIT
END
END

APPEND CVSANDRJ

IF~~ THEN BEGIN NarSanInt1
SAY ~ (Whispers to you:) As this is not Alzaligundrel, then probably this is the archenemy mentioned by the scroll. <CHARNAME>, maybe we can use this to our advantage. ~ IF ~~THEN EXTERN NARONGU Whisp1
END

IF~~THEN BEGIN NarSanInt2
SAY ~(Whispers again:) Ha, <CHARNAME>, We have him now, with his hellish fire inside he cannot go pass the waterfall. If we offer him to deal with Alzaligundrel on his behalf, we can request the shard in return. ~ IF ~~THEN  EXTERN NARONGU DealDone
END

IF ~~ THEN BEGIN NarSanInt3
SAY ~ (Sandrah's face turns to anger like you have never seen her before. She takes some peanuts from a pocket of her robe and throws them at the demon:) HERE, SOME NUTS FOR YOUR PARTY - NOW GO TO HELL!~
= ~ GO TO HELL!~ IF ~~THEN EXTERN NARONGU GoToHell2
END
END
