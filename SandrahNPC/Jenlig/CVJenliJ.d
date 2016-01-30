BEGIN CVJenliJ

IF~Global("CleanInn","LOCALS",2)~THEN BEGIN CleanInn
SAY~Allow me to leave inn clean behind us. No need to investigate anyone for this dead scum.~
IF~~THEN DO~SetGlobal("CleanInn","LOCALS",3) ClearAllActions() StartCutSceneMode() CreateVisualEffectObject("SPUNHOLY",Myself) Wait(2) CreateVisualEffectObject("SPUNHOLY","CVJenDe") Wait(2) ActionOverride("CVJenDe",DestroySelf()) EndCutSceneMode() RealSetGlobalTimer("JenligT","LOCALS",1300)~ EXIT
END

IF~IsGabber(Player1)GlobalGT("SanGithSwJ","GLOBAL",0)~THEN BEGIN JenPid
SAY~*Smouldering black eyes embedded in gleaming yellow scales stare at you as you turn to Jen'lig. Her emotions are unpenetrable.*~
IF~Global("JenOrigin","LOCALS",0)~THEN REPLY~Tell me something about your race.~GOTO Jrace
IF~Global("SanRomPath","GLOBAL",1)~THEN REPLY~Would male Githyanki estimate you a beautiful female?~GOTO JBeaum
IF~Global("SanRomPath","GLOBAL",2)~THEN REPLY~Would male Githyanki estimate you a beautiful female?~GOTO JBeauf
IF~Global("JenOrigin","LOCALS",1)~THEN REPLY~You once said that your anchestors may have human sources.~DO~SetGlobal("JenOrigin","LOCALS",2)~GOTO JRace2
IF~Global("Goodfight","LOCALS",11) Global("AfterFirst","LOCALS",0)~THEN REPLY~Your nighly visit was very suprising, Jen'lig.~DO~SetGlobal("AfterFirst","LOCALS",1)~GOTO GoodcapP1
IF~Global("Goodfight","LOCALS",13) Global("AfterFirst","LOCALS",1)~THEN REPLY~Will you enjoy some pleasure with me again, Jen'lig?~GOTO GoodcapP7
END

IF~~THEN BEGIN JRace2
SAY~Jen'lig breeds like mammal female but lay eggs like reptile. Illithids once could manipulate eggs much better to evolve as they desired. Now growing in hatchery is what family is to you.~
IF~~THEN REPLY~You don't know your parents this way.~ GOTO JRace3
IF~~THEN REPLY~Parents will never know their children this way.~ GOTO JRace3
END

IF~~THEN BEGIN JRace3
SAY~Families consist of our fellow rookmates, we hatched at same time and became innate on same festive day. Cadre is strong bound, we form psychic bonds in line of command. Jen'lig would control her subordinates fast and efficient in battle this way.~
IF~~THEN REPLY~You sound like you are a high ranked military back home?~ GOTO JRace4
END

IF~~THEN BEGIN JRace4
SAY~(Sigh) Is dangerous to be. Those with too much skill are "honored" by queen Vlaakith with sacrifice, their spiritual energy captured for her use, to assimilate and make her stronger and longer-lived.~
=~Is good to be trusted with important mission on Prime Plane.~
IF~~THEN REPLY~You mean...success of your mission may be dangerous for you?~GOTO JRace5
IF~~THEN REPLY~To bring back this sword of yours would put you in great danger then?~GOTO JRace5
END

IF~~THEN BEGIN JRace5
SAY~One not can tell. Matters not. It must be done for all in fortress and city. Jen'lig sentinel and hunter with mission, mission values more than Jen'lig.~
IF~~THEN REPLY~You are a courageous woman.~EXIT
END

IF~~THEN BEGIN JBeaum
SAY~This concept is of no matter for us. Is important for you? So tell Jen'lig if she is beautiful.~
IF~~THEN REPLY~Exotic, fascinating, not the type of beauty comparable to a <PRO_RACE> female.~EXIT
IF~~THEN REPLY~According <PRO_RACE> standards probably not, but they are not applicable here. You are fascinating for me even more as you show little of yourself.~EXIT
IF~~THEN REPLY~I have nothing to compare with. It is interesting that a thing of great importance for us means so little to another race.~EXIT
END

IF~~THEN BEGIN JBeauf
SAY~This concept is of no matter for us. Is important for you? So tell Jen'lig if she is beautiful.~
IF~~THEN REPLY~I have nothing to compare with. It is interesting that a thing of great importance for us means so little to another race.~EXIT
IF~~THEN REPLY~Exotic, fascinating, not the type of beauty comparable to a <PRO_RACE> female.~EXIT
END

IF~~THEN BEGIN Jrace
SAY~Githyanki long ago emerged from an illithid slave race - most believe it to have been early humans. Generations of selective breeding created a people that would best serve the mind flayers. But Githyanki too strong to be slave and Gith freed us and destroyed illithid empire.~
=~Rebellion goes on until all illithid are destroyed. Fight we must and stay forever free.~
IF~~THEN DO~SetGlobal("JenOrigin","LOCALS",1)~EXIT
END

IF~Global("SanGithSwJ","GLOBAL",1)~THEN BEGIN Murd1
SAY~You think Jen'lig murderer - no?~
IF~~THEN REPLY~Our first meeting was with your weapon over the bloody body of a flaming fist sergeant. But first impressions can somtimes mislead.~ GOTO Murd2
IF~~THEN REPLY~You gave some explanation, even if I must confess, I did not fully understand it.~ GOTO Murd2
END

IF~~THEN BEGIN Murd2
SAY~What a soldier does always is focused on the greater good of our race. Opposing the Githyanki is crime, stealing our most valued is crime.~
=~The dead manling was one of those who did both. Jen'lig will find others and punish them. Stolen sword will return to Tu'narath, the great city.~
IF~~THEN REPLY~So you have come all the long way from your plane to find a sword? It must be a very special item.~DO~SetGlobal("SanGithSwJ","GLOBAL",2) RealSetGlobalTimer("JenligT","LOCALS",1800)~ GOTO Murd3
END

IF~~THEN BEGIN Murd3
SAY~ Know that it is not a silver sword like mine. Every regiment supreme of rank has such one. If the weapon is lost or stolen, the Githyanki must seek it out at all costs or be killed by its superiors for the dishonor. ~
=~I seek the one of my citadel city. It be forged from a splinter of the very one wielded by Gith herself to free all gith-kind from their ages-long enslavement by the illithids. Ages later it be used in the battle between the King of Shadows and a mysterious mage, in which it shattered and the shards were spread across the Mere of Dead Men.~
IF~~THEN REPLY~For a people without gods such a symbol is pretty important.~ GOTO Murd4
IF~~THEN REPLY~Surely a rare artefact but still you take pretty much effort to retrieve it.~ GOTO Murd4
END

IF~~THEN BEGIN Murd4
SAY~Thief disgraced my clan and city. Thief will use sword to do harm in your world, <CHARNAME>. Any misdeed of the thief stains our honor. Every astral travelers’ silver cord cut by the thief will be my failure.~
IF~~THEN REPLY~So the sergeant involved was from Baldur's Gate. It is a big city to search for such an item.~ GOTO Murd5
IF~~THEN REPLY~Looks like you search for a needle in a haystack. But maybe we find some clues together.~ GOTO Murd5
END

IF~~THEN BEGIN Murd5
SAY~ Any obstacle, no matter how large can be overcome. It simply a challenge to be overcome through greater intellect and perseverence.~
IF~~THEN DO~AddJournalEntry(@923,QUEST)~EXIT
END

IF~Global("SanGithSwJ","GLOBAL",3) ~THEN BEGIN MulShe1
SAY~Show what found to Jen'lig, <CHARNAME>?~
IF~~THEN REPLY~Do you know what it is?~DO~ActionOverride("CVJenlig",TakePartyItem("CVheath")) SetGlobal("SanGithSwJ","GLOBAL",4)~ GOTO  MulShe2
IF~~THEN REPLY~It's decoration looks much like the nice things you wear.~ DO~ActionOverride("CVJenlig",TakePartyItem("CVheath")) SetGlobal("SanGithSwJ","GLOBAL",4)~ GOTO  MulShe2
IF~~THEN REPLY~It's decoration looks much like the junk you attach to your body. ~ DO~ActionOverride("CVJenlig",TakePartyItem("CVheath")) SetGlobal("SanGithSwJ","GLOBAL",4)~ GOTO  MulShe2
IF~~THEN REPLY~I already assumed it might be of githyanki origins...~ DO~ActionOverride("CVJenlig",TakePartyItem("CVheath")) SetGlobal("SanGithSwJ","GLOBAL",4)~ GOTO  MulShe2
IF~~THEN REPLY~You could say *please* if you want something, githyanki.~ DO~ActionOverride("CVJenlig",TakePartyItem("CVheath")) SetGlobal("SanGithSwJ","GLOBAL",4)~ GOTO  MulShe2
END

IF~~THEN BEGIN MulShe2
SAY~This Kastya's sheath. Once held silver blade of Gith.~
IF~~THEN REPLY~And who is that Kastya?~  GOTO  MulShe3
IF~~THEN REPLY~And what does that mean?~ GOTO  MulShe3
END

IF~~THEN BEGIN MulShe3
SAY~ Kastya was marshall who carried sword I seek. Was wounded on Prime and detected by evil human magic. Six men come to scene of fallen hero.~
IF~~THEN REPLY~How do you know that, Jen'lig?~DO~RealSetGlobalTimer("JenligT","LOCALS",1800)AddJournalEntry(@924,QUEST)~GOTO  MulShe4
END

IF~~THEN BEGIN MulShe4
SAY~The high psions followed the trace of the sword. Detection found but one man. Man was sergeant Horvok of Flaming Fist.~
IF~~THEN REPLY~Ha, the man you killed at the Friendly Arm...~ GOTO  MulShe5
IF~~THEN REPLY~And you made him talk before you murdered him which we came too late to prevent, didn't you?~ GOTO  MulShe5
END

IF~~THEN BEGIN MulShe5
SAY~Horvok story says that six robbed and killed wounded marshall for sword he carried. Men is cadre in large organisation in Baldur town. Detection cannot scrutinize them, hidden by mighty dark shielding, same shielding as Mulahey cave.~
=~<CHARNAME> commander follow trail of foes, Jen'lig follows commander. We hunt same cadre.~
IF~~THEN REPLY~So far you have proven yourself loyal and useful, so let's continue.~ EXIT
IF~~THEN REPLY~Looks like this is a valid thing to do, we're more efficient in union than separate.~ EXIT
IF~~THEN REPLY~You use me - I use you. Githyanki friendship defined in a  nutshell.~EXIT
END

IF~Global("SanGithSwJ","GLOBAL",5)~THEN BEGIN DeadGo1
SAY~(Hiss) Strange to think that commander child of useless dead god. <CHARNAME> is strong leader by own skill, not require bloody heritage for that.~
IF~~THEN REPLY~Maybe those skills have there origin in that darkness. A disgusting thought - but maybe the truth.~GOTO DeadGo2
IF~~THEN REPLY~It's me that designs the useage of what the blood gave me. Bhaal is dead but I am alive.~GOTO DeadGo2
IF~~THEN REPLY~ I rely on dead gods just as little as you do, Jen'lig. If I have Bhaal's power, be sure I will use it - following my design, not to his.~GOTO DeadGo2
END

IF~~THEN BEGIN DeadGo2
SAY~Jen'lig trust commander. Dead god will stay dead as long as commander alive. (Hiss) Counselor Sandrah and Jen'lig make vow that this will remain case.~
IF~~THEN REPLY~There are a few tasks to be done still, let's move.~DO~SetGlobal("SanGithSwJ","GLOBAL",6) ~EXIT
END

IF~Global("SuninMeetJen","GLOBAL",1)~THEN BEGIN Knowname1
SAY~Good that Jen'lig stays with commander <CHARNAME>. Where is your foe also is mine. Now has name - Semaj.~
IF~~THEN REPLY~He seems to be a mighty magic user very close to that Sarevok. This would be why he has your relict, for his sorceries.~DO~SetGlobal("SuninMeetJen","GLOBAL",2)~GOTO Knowname2
END

IF~~THEN BEGIN Knowname2
SAY~Will not have chance for longer use. United force of cadre will destroy them. Sword will return home, (sigh), as will Jen'lig.~
IF~~THEN DO~AddXPObject("CVJenlig",8000) ~EXIT
END

IF~Global("Goodfight","LOCALS",1)~THEN BEGIN Goodcomm1
SAY~<CHARNAME> lead good to battle, leads good in battle. Jen'lig say we make progress for both of us this way.~
IF~~THEN REPLY~You fight quite well yourself.~ GOTO Goodcomm2
IF~~THEN REPLY~If you'd adhere to my orders more often we would loose less blood.~ GOTO Goodcomm2
END

IF~~THEN BEGIN Goodcomm2
SAY~(Hiss) Jen'lig not follows easy, she uses to lead battles. We serve both common purpose, let continue.~
IF~~THEN DO~SetGlobal("Goodfight","LOCALS",2)~EXIT
END

IF~Global("Goodfight","LOCALS",3)~THEN BEGIN Goodcomm3
SAY~<CHARNAME> prove once more as good commander for Jen'lig. Feel more easy to follow and progress in our task.~
IF~Global("SanRomPath","Global",2)~THEN REPLY~The more blood we shed the happier you get, is that so?~ DO~SetGlobal("Goodfight","LOCALS",4)RealSetGlobalTimer("JenligT","LOCALS",2800)~GOTO Goodcomm4f
IF~Global("SanRomPath","Global",1)~THEN REPLY~The more blood we shed the happier you get, is that so?~ DO~SetGlobal("Goodfight","LOCALS",5)RealSetGlobalTimer("JenligT","LOCALS",2800)~GOTO Goodcomm4m
END

IF~~THEN BEGIN Goodcomm4f
SAY~(Hiss) Blood not important, competence and leadership of <CHARNAME> counts for Jen'lig. Gives hope that will find murderer of Gorion, gives hope find murderer of Kastya and sword.~
IF~~THEN REPLY~(Sigh) It's sad but true, our way to success is through bloodshed and violence.~GOTO Goodcomm5f
IF~~THEN REPLY~(Sigh) It's sad but true, our way to success is through bloodshed and violence. You may like that but I don't.~GOTO Goodcomm5f
IF~~THEN REPLY~Our way to success is through bloodshed and violence. Only an evil creature like you can praise this way.~GOTO Goodcomm5f
END

IF~~THEN BEGIN Goodcomm5f
SAY~Jen'lig not praises methods, only appreciates progress. Our aims justify our methods. Not good if commander doubts our deeds or even doubts Jen'lig's loyalty to our goals.~
IF~~THEN EXIT
END

IF~~THEN BEGIN Goodcomm4m
SAY~(Hiss) Blood not important, competence and leadership of <CHARNAME> counts for Jen'lig. Gives hope that will find murderer of Gorion, gives hope find murderer of Kastya and sword.~
IF~~THEN REPLY~(Sigh) It's sad but true, our way to success is through bloodshed and violence.~GOTO Goodcomm5m
IF~~THEN REPLY~(Sigh) It's sad but true, our way to success is through bloodshed and violence. You may like that but I don't.~GOTO Goodcomm5m
IF~~THEN REPLY~Our way to success is through bloodshed and violence. You are right to remind me of our common goals.~GOTO Goodcomm5m
END

IF~~THEN BEGIN Goodcomm5m
SAY~Jen'lig not praises methods, only appreciates progress. Our aims justify our methods. Not good if commander doubts our deeds or even doubts Jen'lig's loyalty to our goals.~
=~(Hiss) <CHARNAME> has become important for Jen'lig. Even if is mammal reminds Jen'lig that she is female with female desires...(hiss).~
IF~~THEN REPLY~Are you trying to say that you start to consider the *male* in me, githyanki?~ GOTO Goodcomm6m
IF~~THEN REPLY~Is this some type of love declaration, Jen'lig?~GOTO Goodcomm6m
END

IF~~THEN BEGIN Goodcomm6m
SAY~Listen good and not misunderstand. Githyanki breed for maintaining the race. Githyanki also mate for pleasure as well. Githyanki know not of your love concept. Githyanki will not mate with one of not of respect and status. Jen'lig values <CHARNAME>.~
=~You not say nothing now. Think. You once ask if Jen'lig is beautiful? Jen'lig very desireable Githyanki female, can choose from many males.~ 
IF~~THEN EXIT
END

IF~Global("Goodfight","LOCALS",6) ~THEN BEGIN JenCommLu1
SAY~*Preparing herself for sleep you observe that Jen'lig has taken off her heavy gloves she wears at all times. You see the razor sharp talons on each of her bony fingers that are normally hidden.*~
IF~~THEN REPLY~*When you see she has recognized your fascinated stare, you smile and nod at her.*~GOTO JenCommLu2
IF~~THEN REPLY~ *When you see she has recognized your fascinated stare, you quickly lower your eyes and try to turn away.*~ GOTO JenCommLu2
END

IF~~THEN BEGIN JenCommLu2
SAY~Good to kill without weapon, good to eat without cutlery. (Hiss) Heritage from illithid breeding of useful slaves.~
=~*She comes closer to show you the talon of her forefinger. You can see that it is richly ornamented with inset gold pieces and unknown small jewels.*~
=~Also is good for showing affection to her mate. Jen'lig misses much. (Hiss)~
IF~~THEN DO~SetGlobal("Goodfight","LOCALS",7)~EXIT
END

IF~Global("Goodfight","LOCALS",8) ~THEN BEGIN JenCommLu3
SAY~*Preparing herself for sleep you observe that Jen'lig has taken off her heavy gloves she wears at all times. You see the razor sharp talons on each of her bony fingers that are normally hidden.*~
IF~~THEN REPLY~*When you see she has recognized your fascinated stare, you smile and nod at her.*~GOTO JenCommLu4
IF~~THEN REPLY~ *When you see she has recognized your fascinated stare, you quickly lower your eyes and try to turn away.*~ GOTO JenCommLu4
END

IF~~THEN BEGIN JenCommLu4
SAY~Good to kill without weapon, good to eat without cutlery. (Hiss) Heritage from illithid breeding of useful slaves.~
=~*She comes closer to show you the talon of her forefinger. You can see that it is richly ornamented with inset gold pieces and unknown small jewels.*~
=~Also is good for showing affection to her mate. Jen'lig misses much.~
IF~~THEN REPLY~You come close to inspect the details of the advanced skills that have been applied to her decorations.~ DO~SetGlobal("Goodfight","LOCALS",9)RealSetGlobalTimer("JenligT","LOCALS",3800)~GOTO JenCommLu5
END

IF~~THEN BEGIN JenCommLu5
SAY~*Her hissing has become more tender to your ears. She slowly moves her talon along your forehead and down your cheek. The feeling is strange but yet compelling.*~
=~*She continues along the line of your upper lip and then explores the jawbones under your skin, all the time taking great care not to hurt you.*~
IF~~THEN REPLY~You close your eyes to fully enjoy the strange sensation of her touch.~GOTO JenCommLu6
IF~~THEN REPLY~You take a finger and kiss the sensitive talon shortly.~ GOTO JenCommLu6
END

IF~~THEN BEGIN JenCommLu6
SAY~Is new to feel such fragile skin and flesh. Not too bad. May do more sometime.~
IF~~THEN DO~RestParty()~EXIT
END

IF~Global("Goodfight","LOCALS",10)~ THEN BEGIN JenCommLu7
SAY~*The warm, slender body that sneaks into the bedroll beside you feels unfamiliar.*~
=~*At first you think your nightly companion is wearing a leather armour still - then you recognise the warmth and responsiveness of the soft scales close to your naked skin...*~
IF~~ THEN REPLY~*She has taken the initiative, you wait for her next action.*~ GOTO JenCommLu8
IF~~ THEN REPLY~Jen'lig...!~ GOTO JenCommLu8
END

IF~~THEN BEGIN JenCommLu8
SAY~*Her long bony fingers with the dangerous talons cover your mouth so your reaction would not alert your other sleeping companions.* ~
=~*You feel her fingers starting to explore your unknown body, slow and tenderly. She reacts instincly to your body's reactions and needs little time to find the areas that pleasure you most.~
IF~~THEN REPLY~*Your hands reach out towards her body as well and you start to caress her unfamiliar hide. You are surprised how warm her body feels and that despise her scales she reacts very sensitive to your every touch.~ DO~SetGlobal("Goodfight","LOCALS",11)RealSetGlobalTimer("JenligT","LOCALS",9000)~GOTO JenCommLu9
END

IF~~THEN BEGIN JenCommLu9
SAY~*As you explore her torso you stop all of a sudden. Her chest is flat like yours and you search in vain for the sensitive nipples you wanted to pleasure.*~
IF~~ THEN REPLY~*You remind yourself that by nature she is not equipped to feed her young with milk - still she reacts passionately to your touches.*~ GOTO JenCommLu10
END

IF~~THEN BEGIN JenCommLu10
SAY~(Soft hissing) <CHARNAME> do good. Not clumsy manling as expected. Jen'lig chose well.~
=~*She leads your other hand to her nether regions that are feeling moisty and formed like those of a human female - Githyanki were supposed to have similar origins you remember.*~
IF~~THEN DO~ClearAllActions() SmallWait(2) SetInterrupt(FALSE) TextScreen("JenliN1")SmallWait(2) RestParty()~EXIT
END

IF~~THEN BEGIN GoodcapP1
SAY~Was? Jen'lig told that chose captain, captain was alone in bed and Jen'lig was needing.~
IF~~THEN REPLY~It was unexpected, like I said, but a good experience.~ GOTO GoodcapP2
IF~~THEN REPLY~Needing? I almost forgot that this is all for you, no love or deeper feelings.~GOTO GoodcapP2
END

IF~~THEN BEGIN GoodcapP2
SAY~Was well to choose commander for lust. Jen'lig feels better for things to come. May do again if commander liked as well.~
IF~~THEN REPLY~I would very much...~GOTO GoodcapP3
IF~~THEN REPLY~It is wrong and I...~GOTO GoodcapP3
IF~~THEN REPLY~A good exercise apart from all that fighting...~GOTO GoodcapP3
END

IF~~THEN BEGIN GoodcapP3
SAY~*You see that she has already turned without awaiting a response - it seems she has made up her mind already.*~
IF~~THEN EXIT
END

IF~Global("Goodfight","LOCALS",12)~THEN BEGIN Jeneggs1
SAY~*When you awake you find that Jen'lig has already left the camp before you and your companions awoke. In the wet grass it is easy to see her footsteps leading to the south.*~
IF~~THEN REPLY~She may have gone hunting for her own meal, why not assist her?~ GOTO Jeneggs2
IF~~THEN REPLY~This may be your chance for another exotic encounter with her.~ GOTO Jeneggs2
IF~~THEN REPLY~You want to break up the camp soon and need her to move on.~ GOTO Jeneggs2
END

IF~~THEN BEGIN Jeneggs2
SAY~*You find her in a hidden grove not too far away. She kneels in front of two large eggs, one of which she has already broken with her silver sword, its contents flowing over leaves and grass.*~
IF~~THEN REPLY~Is that your morning meal, Jen'lig?~GOTO Jeneggs3
IF~~THEN REPLY~What are you doing with those strange eggs?~ GOTO Jeneggs3
END

IF~~THEN BEGIN Jeneggs3
SAY~HISS!!~
=~*As she turns you see that those eggs are of a kind you have never seen before on Toril. They are as large as a human skull and encrusted with yellow streaks in the same colour as Jen'lig's scales.~
IF~~THEN REPLY~What sort of eggs are those anyway...you do not consume them but just destroy?~DO~SetGlobal("Goodfight","LOCALS",13)~ GOTO Jeneggs4
END

IF~~THEN BEGIN Jeneggs4
SAY~HISS!!~
=~These Jen'lig's eggs. Not good for hatchery. Must be destroyed, not use fertilized by <PRO_RACE>.~
IF~~THEN REPLY~You mean...this is the product of our intercourse?~ GOTO Jeneggs5
IF~~THEN REPLY~You are destroying our...eh...children...eh...our eggs...?~GOTO Jeneggs5
END

IF~~THEN BEGIN Jeneggs5
SAY~(Hiss) Githyanki breed to maintain race. Varsh at hatchery will destroy misbreed if find and blame Jen'lig for deed. No place on Astral Plane and no place on Prime for what is in egg. Jen'lig and commander not do for breeding.~
=~*With an experienced hit of the silver sword she splits the second egg's sturdy shell.*~
IF~~THEN REPLY~It would have been interesting to see what result we may have produced. Anyway, it probably is better not to know. ~GOTO Jeneggs6
IF~~THEN REPLY~That is probably the best. ~GOTO Jeneggs6
IF~~THEN REPLY~Cruel but necessary, githyanki-like. ~GOTO Jeneggs6
IF~~THEN REPLY~You are nothing but an evil beast after all, how could I forget. ~GOTO Jeneggs6
END

IF~~THEN BEGIN Jeneggs6
SAY~Jen'lig knew commander <CHARNAME> would understand.~
IF~~THEN DO~ClearAllActions() StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~ EXIT
END

IF~~THEN BEGIN GoodcapP7
SAY~Good that commander ask. Jen'lig will enjoy - will make <CHARNAME> enjoy.~
IF~~THEN DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~ EXIT
END

IF~Global("JenSilver","LOCALS",1)~THEN BEGIN Silver1
SAY~Jen'lig must look for silver amulet. Not rare on prime, <CHARNAME>?~
IF~~THEN REPLY~We should find one sooner or later, they are not worth much.~ DO~SetGlobal("JenSilver","LOCALS",2)RealSetGlobalTimer("JenligT","LOCALS",900)~GOTO Silver2
IF~~THEN REPLY~There are lots of them and cheap to buy - maybe even a killed foe carries one.~ DO~SetGlobal("JenSilver","LOCALS",2)~GOTO Silver2
END

IF~~THEN BEGIN Silver2
SAY~(Hiss) Prime creatures not know worth of silver. Good for magical things. If find, give to Jen'lig. Githyanki can put to good use.~
IF~~THEN REPLY~If we find one we keep it for you, sure.~ EXIT
IF~~THEN REPLY~At your command, mylady.~ EXIT
IF~~THEN REPLY~Not a big challenge, we'll do if it pleases you. You obviously seem to like all that ornamental stuff.~ EXIT
IF~~THEN REPLY~Is it so hard for you to say *please* sometimes?~EXIT
END

IF~Global("JenAmul","LOCALS",1)~THEN BEGIN Amulmake1
SAY~This silver necklace much use for Jen'lig, <CHARNAME>, give to improve.~
IF~~THEN REPLY~Here you have it, it's not worth much and not comparable to the decorative style you prefer.~GOTO Amulmake2
IF~~THEN REPLY~You could say *please* if you want something, githyanki.~ GOTO Amulmake2
END

IF~~THEN BEGIN Amulmake2
SAY~Maybe little chance to meet Illithid around here but Jen'lig likes be prepared.~
IF~~THEN DO~ SetGlobal("JenAmul","LOCALS",2) ClearAllActions() StartCutSceneMode() CreateVisualEffectObject("SPUNHOLY",Myself) Wait(2) TakePartyItem("Amul09") DestroyItem("Amul09") GiveItemCreate("CVJenam","CVJenlig",1,0,0) EndCutSceneMode()~ EXIT
END

IF~Global("Jencow","CVROA3",1)~THEN BEGIN Jencow1
SAY~(Hiss) Manlings keep herds of mammals for eating. Pray to useless gods of manlings that animals not will revolt.~
IF~~THEN REPLY~Hu, what brings such thoughts to your mind, Jen'lig?~ GOTO Jencow2
IF~~THEN REPLY~Do Githyanki not breed any animals for such purpose?~ GOTO Jencow2
END

IF~~THEN BEGIN Jencow2
SAY~ When Githyanki need meal, male will go hunt, female will collect fruit and fungus.~
=~(Hiss) Is Illithids kept Githyanki for slave work and war but also to devour brain when not useful anymore. (Hiss)~
=~Githyanki broke chains with Gith lead, now Illithids tremble at rage of my strong kin. (Hiss).~
IF~~THEN REPLY~I guess, I'll just have some vegetables for dinner tonight.~DO~SetGlobal("Jencow","CVROA3",2) ~EXIT
END

IF~Global("JenMineF","BG1700",1)~THEN BEGIN MineFe
SAY~We come closer again, commander <CHARNAME>, same darkness than in other mine, same magic shield.~
IF~~THEN REPLY~Maybe this Davaeorn is the sorcerer you look for.~DO~SetGlobal("JenMineF","BG1700",2)~ EXIT
IF~~THEN REPLY~If this Davaeorn is the sorcerer you look for, I still hope for your further support of MY mission.~DO~SetGlobal("JenMineF","BG1700",2)~ GOTO MineFe2
END

IF~~THEN BEGIN MineFe2
SAY~ (Hiss) Not doubt Jen'lig's loyalty. Must return home with sword but must keep word to bring down murderer of commander's Gorion.~
IF~~THEN REPLY~Thanks for this clarification.~EXIT
IF~~THEN REPLY~My trust in you was justified, who would have thought.~EXIT
IF~~THEN REPLY~Even if you're an evil creature, you're having your own version of honor.~EXIT
END

IF~Global("SanTazPatrl","GLOBAL",6) ~THEN BEGIN Daelet1
SAY~(Hiss) One less needle in haystack, Davaeorn.~
=~And now two needles in haystack have names - Jardak, Sunin. Commander's needle is Sarevok.~
IF~~THEN REPLY~Sarevok seems somehow be connected to that Iron Throne. Maybe it's where your *needles* can be found as well.~GOTO Daelet2
IF~~THEN REPLY~We still should be careful, Jen'lig, our foes seem to be quite powerful and influential in Baldur's Gate.~GOTO Daelet2
END

IF~Global("JenStone","BG3500",1) ~THEN BEGIN StoneGods1
SAY~(Hiss) The god-isles of the Astral Plane are dead useless gods turned to stone. Githyanki of Tu'narath walk them like manlings walk ground. Not fate for one who still is living.~
IF~~THEN REPLY~A rare case where I can agree to your assessment, Jen'lig.~
DO~SetGlobal("JenStone","BG3500",2)~GOTO StoneGods2
IF~~THEN REPLY~A new side of you, Jen'lig? You care for one who was too weak to defend against such a curse?~ DO~SetGlobal("JenStone","BG3500",2)~ GOTO StoneGods2
END

IF~~THEN BEGIN StoneGods2
SAY~Is like captivity, is like thralldom and slavery. (HISS) Is for no one to endure.~
IF~~THEN EXIT
END

IF~Global("JenVamMF","LOCALS",1)~ THEN BEGIN Vamcom1
SAY~Vampires of manlings suck life blood like illithid suck brain from githyanki - if can.~
IF~~THEN REPLY~And the victim becomes a mindless slave afterwards.~DO~SetGlobal("JenVamMF","LOCALS",2)~GOTO Vamcom2
END

IF~~THEN BEGIN Vamcom2
SAY~(Hiss) Good work to destroy the one like the other. Good fighting with commander <CHARNAME>.~
IF~~THEN REPLY~After some time I really come to think there is more in common between githyanki and *manlings* than is apparent from the beginning.~ GOTO Vamcom3
IF~~THEN REPLY~We more often agree than I'd ever thought possible, good to know you better, Jen'lig.~ GOTO Vamcom3
IF~~THEN REPLY~We always agree when it comes to destroying our enemies.~GOTO Vamcom3
END

IF~~THEN BEGIN Vamcom3
SAY~Githyanki race is to survive on astral plane. Maybe <PRO_RACE> same for prime.~
IF~~THEN EXIT
END

IF~Global("JenDeadR","LOCALS",1)~THEN BEGIN FoundR1
SAY~*Jen'lig inspects the freshly killed body of her kinsmen.*~
=~(Hiss) Dead rider captain of githyanki. Misses red mount. Misses silver sword. Drow killed captain in ambush. ~
IF~~THEN REPLY~Drow seem to be our common target down here.~GOTO FoundR2
IF~~THEN REPLY~You will have a good chance to avenge his death, we will clean those tunnels of drow and their allies.~ GOTO FoundR2
END

IF~~THEN BEGIN  FoundR2
SAY~Jen'lig eyes open. Sword and riding steed may still be around in these caves. Good to find and send home.~
IF~~THEN DO~SetGlobal("JenDeadR","LOCALS",2)AddXPObject("CVJenlig",3500)~ EXIT
END

IF~Global("JenSilvwr","GLOBAL",1)~THEN BEGIN Silvdsc1
SAY~This silver sword not belongs to Prime - is not one that Jen'lig seeks (HISS!!).~
IF~~THEN REPLY~Can we take it?~ GOTO Silvdsc2
IF~~THEN REPLY~It looks like a quite useful weapon to keep, unless you oppose in the name of the githyanki.~GOTO Silvdsc2
END

IF~~ THEN BEGIN Silvdsc2
SAY~You do and keep...but, <CHARNAME> commander, soon will come those who seek for it. Make not fight but give what due to them. Jen'lig cares for her commander, want not hurt for nothing.~
=~(Hiss)...please.~
IF~~THEN REPLY~*Did she really say *please*? It seems she means it this time*.~DO~SetGlobal("JenSilvwr","GLOBAL",2)~EXIT
IF~~THEN REPLY~*One look into her black eyes tells you she will not hesitate to take the sword from your dead body if you force her to.*.~DO~SetGlobal("JenSilvwr","GLOBAL",2) ~EXIT
IF~~THEN REPLY~*The weapon is powerful - but is it worth to oppose the githyanki and to maybe loose a worthy companion for it?*~DO~SetGlobal("JenSilvwr","GLOBAL",2) ~EXIT
END

IF~Global("JenZanHunt","LOCALS",1)~THEN BEGIN BookZen1
SAY~(HISS!) Thiefling took commander unprepared but not experienced thief, left trail easy to follow.~
IF~~THEN REPLY~Damned...his disguise took me off guards for a second - we must regain the book!~ GOTO BookZen2
IF~~THEN REPLY~Looks like he even fooled you for that crucial second. Any hint how we can get him?~ GOTO BookZen2
END

IF~~THEN  BEGIN BookZen2
SAY~Manling was at fortress inn where Jen'lig and commander met. Has friends there that cadre should investigate.~
IF~~THEN REPLY~South to the Friendly Arm then.~DO~SetGlobal("JenZanHunt","LOCALS",2)~ EXIT
IF~~THEN REPLY~South to the Friendly Arm then. Good to have companions who keep their eyes open.~DO~SetGlobal("JenZanHunt","LOCALS",2)~ EXIT
END

IF~Global("JenBhaal","LOCALS",1)~THEN BEGIN Bhaal1
SAY~(Hiss) Useless manling god gave seed to make <CHARNAME>. Concept of gods is crap but creature to spawn commander was strong - made commander strong...~
IF~~THEN REPLY~Strong but outcast and hunted...~DO~SetGlobal("JenBhaal","LOCALS",2)~GOTO Bhaal2
END

IF~~THEN BEGIN Bhaal2
SAY~Is spawn from own hatchery that hunts commander the most. If from same breed may be as strong as <CHARNAME>.~
=~Is counselor Sandrah who always say that commander is much stronger than any because has true fearless cadre to follow. Other spawn may not have such companions.~
IF~~THEN REPLY~(Laugh) Sureley he has no Githyanki in his *cadre*.~ GOTO Bhaal3
IF~~THEN REPLY~So far we have only seen hirelings and lesser followers of Sarevok. Still, he may have some inner circle of more powerful associates when we come closer.~ GOTO Bhaal3
END

IF~~THEN BEGIN Bhaal3
SAY~Jen'lig sure there is one close to him who waits for her sword to kill him...(Hiss) Murderer of Kastya. ~
IF~~THEN EXIT
END

IF~Global("JenEBHide","BG0123",1)~THEN BEGIN LikeEB1
SAY~(HISS!!!) hides in middle of cellar like coward, one that is your foe, one that is mine!~
=~Will be easy to kill like Illithid Elder Brain - remove minions and defences and mighty foe falls easily.~
IF~~THEN REPLY~Yes, simple. Only some things are easier said than done.~DO~SetGlobal("JenEBHide","BG0123",2)~GOTO LikeEB2
END

IF~~ THEN BEGIN LikeEB2
SAY~Was good experience to follow <CHARNAME> commander to here. Joint powers of companions have made fall all who stand against. Is great force that will end Sarevok...~
=~...and Semaj...~
IF~~THEN EXIT
END

IF~Global("JenFouSem","BG0125",6)~THEN BEGIN FoundSwFin
SAY~(Hiss) Here is sword Jen'lig set out to find. Here is end of Sarevok from commander.~
=~Give sword to Jen'lig for keep...please.~
IF~~THEN REPLY~You deserve it...my githyanki friend.~DO~SetGlobal("JenFouSem","BG0125",7) AddXPObject("CVJenlig",17000) AddXPObject(Player1,17000)ActionOverride("CVJenlig",TakePartyItem("CVyensw2"))~EXIT
END

IF~Global("JenGoHome","BG0146",1)~THEN BEGIN JenLeavePr1
SAY~Time is to deliver sword to my kin.~
IF~~THEN REPLY~	What will you do?~GOTO JenLeavePr2
IF~~THEN REPLY~	Will you leave us now? ~GOTO JenLeavePr2
IF~~THEN REPLY~	Is there a way for you to send it back without leaving us? ~  GOTO JenLeavePr2
END

IF~~THEN BEGIN JenLeavePr2
SAY~Jen'lig must return to Astral Plane now. Commander mission and own are finished.~
IF~~THEN REPLY~	What about facing your queen and her hunger?~GOTO JenLeavePr2a
IF~~THEN REPLY~	You are a soldier following your queen even if it means your life?~GOTO JenLeavePr2a
END

IF~~THEN BEGIN JenLeavePr2a
SAY~Jen'lig learned much on Prime. Grown in ability and mind more than most githyanki. Jen'lig confident that she can *persuade* queen that survival of both is what githyanki race needs.~
IF~Global("SanRomPath","GLOBAL",1)~THEN REPLY~	You are a proud and fearless woman, I am proud to have known you.~ GOTO JenLeavePr3
IF~Global("SanRomPath","GLOBAL",2)~THEN REPLY~ You are a proud and fearless woman, I am proud to have known you.~ GOTO JenLeavePr4
END

IF~~THEN BEGIN JenLeavePr3
SAY~*She has taken off one of her gloves and her decorated talon follows the line of your upper lip almost tenderly.* ~
IF~~THEN REPLY~Jen'lig...~GOTO JenLeavePr4
END

IF~~THEN BEGIN JenLeavePr4
SAY~Was good time with commander. Jen'lig will not forget.~
IF~~THEN DO~SetGlobal("JenGoHome","BG0146",2) EraseJournalEntry(@927) SetGlobal("CVJenTOBRet","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("JenLePl")~EXIT
END

IF ~Global("SanPCIdiot","LOCALS",1)~THEN BEGIN HereCity
SAY~Follow weak commander was mistake. Not keeping counselor Sandrah in cadre shows weakness. City with silver sword is here, is open now. Jen'lig finds sword by herself.~
IF~~THEN DO~ SetGlobal("SanPCIdiot","LOCALS",2) SetDialog("CVJenliP") LeaveParty() EscapeAreaMove("BG0125",339,800,10) ~EXIT
END

IF~~THEN BEGIN Redatt3
SAY~(Hiss) Manlings try to move creatures between planes mostly fail. Not have control of what they do.~
=~Jen'lig once need rescue young commander conjured by sorcerer from Astral Planes before her eyes. Sorcerer drew young githyanki into lava pool. Jen'lig kill him and rescue youngster. (Hiss)~
IF~GlobalLT("Goodfight","LOCALS",11)~THEN REPLY~You are quite fearless.~ GOTO Redatt4
IF~GlobalGT("Goodfight","LOCALS",10)~THEN REPLY~You are quite fearless.~ GOTO Redatt5
END

IF~~THEN BEGIN Redatt4
SAY~Jen'lig show commander burnt toe talon when out of boots at next rest, (Hiss).~
IF~~THEN EXIT
END

IF~~THEN BEGIN Redatt5
SAY~Jen'lig show commander burnt scales on hip when out of clothes at next rest, (soft hiss).~
IF~~THEN REPLY~ Seduction githyanki style, I guess.~ EXIT
IF~~THEN REPLY~ An interesting perspective.~ EXIT
IF~~THEN REPLY~ I prefer darkness, your body is smooth but not necessarily something to look at.~EXIT
END

//======================================================================


CHAIN
IF~Global("SanHealJen","GLOBAL",4)~THEN CVJenliJ SanHealJen1
~You are g'lathk, Sandrah? ~
DO~SetGlobal("SanHealJen","GLOBAL",5)~
==BSandr~Are those the healers of the Githyanki?~
==CVJenliJ~They cultivate our hydroponic gardens in the depths of a city's mass. When injured they bring you to these chambers with the rejuvenation pods to gain natural healing. ~
==BSandr~You have no gods to allow you access to the source I have, the Weave. But at times I also use natural resources for healing where I can. I would be eager to learn more about those techniques.~
==CVJenliJ~Jen'lig cannot tell you more what g'lathk do, she is a hr'a'cknir of some sorts even if different from others.~
==BSandr~You are a sentinel, a hunter of thieves? ~
==CVJenliJ~This is good way to say what Jen'lig do. But children of Gith never are thieves. Is new concept to persue our enemies that way. ~EXIT

CHAIN
IF~Global("SanTazPatrl","GLOBAL",4)~THEN CVJenliJ After3
~Now know more about cadre we oppose. Murderer two was Tazok, cadre name Iron Throne. Can find in Baldur's Gate.~
DO~SetGlobal("SanTazPatrl","GLOBAL",5)~
==BSandr~Two of those who killed your Kastya have been found, that is right. Still we have no access yet to the big town. Our next step still is the other mine in Cloakwood.~
==CVJenliJ~Commander leads well, Sandrah councels well, Jen'lig confident we soon know name of sorcerer with sword. Our Intellect and perseverence will bring to fall thieves of sword and killer of Gorion. One has name now other will have soon.~ DO~AddJournalEntry(@925,QUEST)~EXIT

CHAIN
IF~~THEN CVJenliJ Daelet2
~Githyanki love hunting. In hunting not approach prey by moving up to face. *Needles* must not know we search haystack for them. (Hiss)~ 
DO~SetGlobal("SanTazPatrl","GLOBAL",7)~
=~Jen'lig has learned to act different from other githyanki planewalkers, act like thief hunting thief. Move in dark not means cowardice, means success against prey when alarmed.~
==CVSandrJ IF~InParty("CVSandr")~THEN~There is a section of the Shadow Thieves of Amn in Baldur's Gate. We should try to get in contact with them to learn about those men we search.~
==CVJenliJ IF~InParty("CVSandr")~THEN~(Hiss) Sandrah know hunting practice, too.~DO~AddJournalEntry(@926,QUEST)~EXIT

CHAIN
IF WEIGHT #1~PartyHasItem("HELM07") InParty("CVJenlig")~THEN Degrod JenNec
~Thank you for returning with the helm of Balduran.  It was so good to do business together.  Here is your payment, and I shall take the helm.  Now I must be off, I'll leave you with some of my servants to escort you out.  My servants aren't known for their gentle nature, so I would leave as soon as possible.~
==CVJenliJ~(Hiss!) Manling sorcerers all same to steal artifacts belong to others for power.~
==Degrod~YOU would make a fine artifact, nicely petrified and silent. Let us try this, won't you, my dear.~
==CVJenliJ~(Hiss!) Jen'lig make artifact of sorcerer. Will expose nicely on tip of her silver sword.~
==Degrod~We'll see about that.~
DO~GiveGoldForce(5000) CreateCreature("HELMHO",[371.427],0) CreateCreature("DOOMGU",[418.460],0) CreateCreature("DOOMGU",[326.489],0) CreateCreature("STALKE",[351.605],0) Enemy()~EXIT


//======================================================================
//Interjects

INTERJECT_COPY_TRANS Husam 0 JenHintJard
==CVJenliJ IF~InParty("CVJenlig")~THEN~Prove worth, manling, tell us of people you know. ~
==Husam IF~InParty("CVJenlig")~THEN~Strange lady, whoever you'd be, I know a thief if A see one, who's the lucky guy you search?~
==CVJenliJ IF~InParty("CVJenlig")~THEN~(Hiss) Lucky to leave Prime with knowledge of having paid for murderous deeds, name is Jardak.~ DO~TakePartyGold(150)~
==Husam IF~InParty("CVJenlig")~THEN~If ya meet 'im, give 'im some extra kick from me with greetings, that bloody bastert.~
==CVJenliJ IF~InParty("CVJenlig")~THEN~Meet him we want. Manling only need tell where to find.~
==Husam IF~InParty("CVJenlig")~THEN~He hides with that blasted butler of his in the northern part 'round that crazy mages tower. Cant miss him, m'lady.~
==CVJenliJ IF~InParty("CVJenlig")~THEN~Take gold for words, manling.~END

INTERJECT SUNIN 0 SuninMeetJen
==CVJenliJ IF~InParty("CVJenlig")~THEN~You were with murderers of Kastya, the wounded sword bearer. You tell where sword is.~
==Sunin IF~InParty("CVJenlig")~THEN~Damned, you never give up! I warned Semaj not to mingle with a kin who are fearsome and tireless foes who don’t know when to quit.~
==CVJenliJ IF~InParty("CVJenlig")~THEN~That name of thief? Semaj. Where is that man? Speak your last word, mammal.~
==Sunin IF~InParty("CVJenlig")~THEN~Ha, he's chosen his company well, that conjurer. Even you will not be able to touch Sarevok's adjutant. You will not even survive the current encounter, lizard woman.~
END SUNIN 1

EXTEND_BOTTOM Jardak 0
IF ~InParty("CVJenlig")~ THEN REPLY ~We have information that you were involved in robbing and murdering a wounded githyanki.~ EXTERN CVJenlij AskJardak
END

CHAIN
IF~~THEN CVJenlij AskJardak
~Not use deny, mammal. You on list of murderers.~
DO~AddXPObject("CVJenlig",8000)~
==CVJenlij IF~Global("SuninMeetJen","GLOBAL",0)~THEN ~You were with murderers of Kastya, the wounded sword bearer. You tell where sword is.~
==CVJenlij IF~Global("SuninMeetJen","GLOBAL",2)~THEN~Sunin dead already. We know sword with Semaj who with Sarevok.~
==Jardak IF~Global("SuninMeetJen","GLOBAL",0)~THEN~Who told you, that coward Sunin? Baah, I knew the mage would whine like a girl when meeting your kin.~
==CVJenlij IF~Global("SuninMeetJen","GLOBAL",0)~THEN ~(Hiss) New name on list, Sunin. Jen'lig finds if seeks whole Baldur's Gate city.~
==Jardak IF~Global("SuninMeetJen","GLOBAL",2)~THEN~You found that coward Sunin? Baah, I knew the mage would whine like a girl when meeting your kin.~
==Jardak ~It makes not difference what you know or not know, you will not leave here to make use of that information.~ EXTERN Jardak 2

INTERJECT_COPY_TRANS IF_FILE_EXISTS AGGnom01 4 JenNoSlav1
==CVJenliJ IF~InParty("CVJenlig")~THEN~Pathetic weakling. Can never break slavery by own force. Set him free, <CHARNAME>. Slavery shall not endure anyone.~
END

I_C_T Surgeo 4  CVSurgJenlig
==Surgeo IF~InParty("CVJenlig") InParty("CVSandr")~THEN~With you, strange creature, I am not sure my skills will be sufficient.~
==CVJenliJ IF~InParty("CVJenlig") InParty("CVSandr")~THEN~Manling not worry. Companion Sandrah better than any githyanki g'lathk for heeling.~ 
==Surgeo IF~InParty("CVJenlig") InParty("CVSandr")~THEN~Let me begin.~
END


BEGIN CVMindd

CHAIN
IF~Global("MiFlExists","BG3802",2)~THEN CVJenliJ MFLCave
~(HISS!!) Beware, my captain, evil lurks!~
DO~SetGlobal("MiFlExists","BG3802",3)~
==CVMindD~*You have the feeling that a voice manifests itself inside your brain. Underneath the swirl and hiss of many tongues some words are audible.*~ DO~Polymorph(MINDFLAYER) Enemy()~
=~This is the wrong place, no entry to below...WHAT?? Where does THAT creature come from?~
==CVJenliJ~An Illithid searching for food, maybe searching for our hatcheries! (HISS!!)~
DO~JumpToPoint([403.177]) Attack("CVJenMiH")~EXIT

CHAIN
IF~Global("MiFlExists","BG3802",4)~THEN CVJenliJ MFLCave2
~(HISS!!) Just a minor one and almost dead already.~
==CVSandrJ~Those are your enemies and former masters, Jen'lig?~
==CVJenliJ~Was Illithid. Searching food which is manling's or beast's brains. Or maybe seached for hatchery of my kin's eggs. (Hiss). Be good for you was dying and not strong.~
END
++~I heard that creature talking - it was inside my head!~+ MFLCave3
++~He created sounds and pictures in my head, I saw an injured elf and heard him talk!~+ MFLCave3

CHAIN
IF~~THEN CVJenliJ MFLCave3
~(Hiss) Try to talk? Maybe try to take control of my captain, is way of Illithid fighting and enslaving.~
=~Jen'lig swear to protect her captain from Mind Flayers with own life.~
DO~SetGlobal("MiFlExists","BG3802",5)~
END
++~You are quite brave to stand up to such beasts.~DO~AddXPObject("CVJenlig",5500)~EXIT
++~I think I start to understand why your kin are such scary fighters.~DO~AddXPObject("CVJenlig",6500)~EXIT

EXTEND_TOP Stepha 4 #0
IF ~ InParty("CVJenlig")~ THEN EXTERN CVJenliJ SteNoGo
END

EXTEND_TOP Stepha 6 #0
IF ~ InParty("CVJenlig")~ THEN EXTERN CVJenliJ SteNoGo
END

EXTEND_TOP Stepha 8 #0
IF ~ InParty("CVJenlig")~ THEN EXTERN CVJenliJ SteNoGo
END

EXTEND_TOP Stepha 9 #0
IF ~ InParty("CVJenlig")~ THEN EXTERN CVJenliJ SteNoGo
END

CHAIN
IF~~THEN CVJenliJ SteNoGo
~Will not go apprentice of Kastya's murderer. Share life with scum, die with scum.~ DO~Attack("Stephan") ~
==Stepha~What kind of creature are you anyway?~DO~Enemy()~EXIT

BEGIN Semaj
CHAIN
IF~Global("JenFouSem","BG0125",1)~THEN CVJenliJ Semfound
~The darkness lifts, the spell is broken - here is the sword.~
DO~SetGlobal("JenFouSem","BG0125",2)DialogInterrupt(FALSE)~
=~You sorcerer be Semaj.~
==Semaj~So it is true, you githyanki never give up the hunt for a silver sword. Baah, but you are alone, just like the one that carried the sword.~
==CVJenliJ~Jen'lig not alone, is supreme primewalker with commander <CHARNAME> and most powerful  force of the prime. Is end of Semaj and end of sword hunt.~DO~MoveToObject("Semaj") Attack("Semaj")~
==Semaj~It's a bunch of fools coming to sacrifice themselves to the new God of Murder and his chosen!~EXIT

CHAIN
IF WEIGHT #-3 ~InParty("CVJenlig") Global("CVWarnjen","LOCALS",0)~THEN Bellam Jenwarn
~That's a githyanki hiding 'neath those thief's clothing, right. No wonder ol' Phandalyn is huffing and puffing with righteous fury and all.~
DO~SetGlobal("CVWarnjen","LOCALS",1) SetNumTimesTalkedTo(0)~
==CVJenliJ~(Hiss) Small manling sharp eyes. Hope mind is also sharp and will not yell loudly about what sees.~
==Bellam~I'm Just a friend tryin' to warn ya. ~
==CVJenliJ~Warn of Phandalyn? ~
==Bellam~He is a powerful paladin here in the city and he poses a grave danger to you. I would suggest that you avoid him altogether. You can usually find him in one of the taverns close to the docks, but I don't recommend you do. If you have business there, I suggest you do it after sundown. ~
==CVJenliJ~Manling paladins call themselves men of honor. They see not honor when vision is blurred by their manling gods they follow. (Hiss.)~EXIT