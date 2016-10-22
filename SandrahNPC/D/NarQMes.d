BEGIN NarQMes

CHAIN
IF ~Global("NarQMessSees","GLOBAL",1)~ THEN NarQMes NarQGiveMes
~ Misses Sandrah, so good I found you.~
== CVSandrJ ~Landrel! You look troubled, my father must have send you! Talk quickly, what is wrong? ~
== NarQMes ~Indeed, Miss Sandrah, there are events that have alerted your father much and he sent me out to find you quickly. You must come to meet him urgently. You - and he also asked for the ones that are with you to feel invited. ~
== CVSandrJ ~ That sounds distubing. <CHARNAME>, if my father takes to such an action, then there must be real trouble, something that even he is not able to deal with alone. Please, we must follow his call.~
END
++ ~ The old tyrant calls and we jump, right Sandrah? ~ + GiveMesId
++ ~ If Elminster himself is disturbed, so should we, let us listen to Landrel. ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~+ GiveMes1

CHAIN
IF ~~ THEN NarQMes GiveMesId
~ Misses? ~
== CVSandrJ ~ Oh, shut up with your sarcasm, <CHARNAME>, no time to joke now.~
END
++ ~ Well, if the Misses insists, go ahead, Landrel. ~ + GiveMes1

CHAIN
IF ~~ THEN NarQMes GiveMes1
~  I was lucky to find you so quickly as we only knew of your last position from yesterday and your group moves quite a lot..~
== CVSandrJ ~ Why did you not use the shard to locate me? ~
== NarQMes ~That is part of the current problem, the shard...It is better for your father to tell you about all of that. You will of course set off immediately to see him, Misses Sandrah?~
== CVSandrJ ~ <CHARNAME>? ~
END
++ ~ We are supposed to leave everything and go to Waterdeep. That is a tenday away, Sandrah, I have no idea how we could get there in time...~  + GiveMes2

CHAIN
IF ~~ THEN NarQMes GiveMes2
~  Oh no, <PRO_SIRMAAM>, the Master is here on the Sword Coast already, coming from the Gate to meet with you at Gellana's place. ~
== CVSandrJ ~ See, <CHARNAME> we only  need to go to the Friendly Arm then. To buy some supplies and take a rest at a civilized place will do the company some good as well. ~
END
++ ~ Friendly Arm? ~ + GiveMes3

CHAIN
IF ~~ THEN NarQMes GiveMes3
~  Yes, <PRO_SIRMAAM>, the Master will be at Gellana's place, the Temple of Wisdom. ~ DO ~ SetGlobal("NarQMessApp","GLOBAL",2) SetGlobal("NarQMessSees","GLOBAL",2) AddJournalEntry(@76,QUEST) RealSetGlobalTimer("NarqMesRemTTime","GLOBAL",7600) EscapeArea()~
== CVSandrJ ~ <CHARNAME>, you know Gellana, Bentley's wife at the Friendly Arm. She provides her healing services at the Temple of Wisdom in the Inn and sells scrolls and potions as well.~
END
++ ~ Now I remember her. So if there is nothing else to learn here, we should set off to the Inn then. ~ EXIT
IF~OR(2)Alignment(Player1,MASK_EVIL) ReputationLT(Player1,8) ~THEN REPLY~Oh,that old hag...if Elminster calls, that may turn out to be profitable in the end, let's go and find out.~DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~ GOTO GiveMespr
IF~PartyGoldLT(5000)~THEN REPLY~I hope there will be some profit for us in the end!~GOTO GiveMespr
IF~PartyGoldGT(4999)~THEN REPLY~I hope there will be some profit for us in the end!~ DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~ GOTO GiveMespr

CHAIN
IF~~THEN NarQMes GiveMespr
~(Raises an eyebrow) There is always a profit for helping master Elminster, young <PRO_MANWOMAN>.~DO~EscapeArea()~EXIT

CHAIN
IF ~ Global("NarQMessApp","GLOBAL",2) AreaCheck("BG2304")~ THEN NarQMes NarQGInn
~ Glad to see you have arrived. Master Elminster is here.~ 
DO ~ SetGlobal("NarQMessApp","GLOBAL",3) ~
END
++ ~ Thank you, Landrel.~ EXIT
++ ~ Do you read such text from a scroll, old fool?~EXIT

CHAIN
IF ~ Global("NarQMessApp","GLOBAL",4)~ THEN NarQMes NarQGRem
~ Oh, Misses Sandrah, <CHARNAME>, where are you? Master Elminster desperately waits for you at the Temple of Wisdom.~  
DO ~ SetGlobal("NarQMessApp","GLOBAL",5) RealSetGlobalTimer("NarqMesRemTTime","GLOBAL",2400) EscapeArea()~
== CVSandrJ ~ <CHARNAME>, Do you really need to be reminded? Please let us go now to meet my father.~
END
++ ~ Sorry for the delay, Sandrah. Landrel, please tell Elminster we are on our way.~
EXIT

CHAIN
IF ~ Global("NarQMessApp","GLOBAL",5) AreaCheck("BG2304")~ THEN NarQMes NarQGInn2
~ Glad to see you have arrived. Master Elminster is here.~
DO ~ SetGlobal("NarQMessApp","GLOBAL",6) ~
END
++ ~ Thank you, Landrel.~ 
EXIT

CHAIN
IF ~ Global("SanVisitedWD","GLOBAL",1) AreaCheck("CVDRE2") Global("SanWDWelc","LOCALS",0) ~ THEN NarQMes WelWDPel
~ Welcome home, Misses Sandrah, this house will become alive once again, now the lady and her friends have arrived.~
DO~SetGlobal("SanWDWelc","LOCALS",1)~
== CVSandrJ ~ Thank you for this warm welcome, Landrel. We will be ready for one of your delicious meals in a short while. I will show my friends around a bit in the meantime.~
== NarQMes ~ I propose to go for the garden first, (up the stairs to the left, he adds to you) as there is somebody eagerly expecting your return. ~
== CVSandrJ ~ Pelligram!~
== NarQMes ~ Yes, Misses, the same.~
END
++ ~ Who is Pelligram? I never heard you mention that name before. ~ + WelWDPel2
++ ~ Pelligram? Another of those surprising ex-lovers of yours. Must have a lot of nerve to come around to your house and garden.~ + WelWDPel2

CHAIN
IF ~~ THEN NarQMes WelWDPel2
~ It is actually a *She*, <PRO_SIRMAAM>.~
== CVSandrJ ~ Let us go out to the garden, <CHARNAME>, I truely hope that you will like her. I wish so much that she can come with us when we leave this time. I was not sure what I would meet, when I set out for my little adventure, so I left her at home. But now things are so much different...~
END
++ ~ You and your secrets. Something new is waiting for me every minute with you. (Give her a kiss.) So let us see Pelligram then.~ 
EXIT

CHAIN
IF ~ Global("SanVisitedWD","GLOBAL",1) AreaCheck("CVDRE2") Global("SanWDWelc","LOCALS",1) GlobalLT("SanNarQ","GLOBAL",9)~ THEN NarQMes WelWDremE
~ Please remember to see your Father before you go.~
END
++ ~ Yes, thank you, Landrel.~
EXIT

CHAIN
IF ~ Global("SanVisitedWD","GLOBAL",1) AreaCheck("CVDRE2") Global("SanWDWelc","LOCALS",1) Global("SanNarQ","GLOBAL",9)~ THEN NarQMes WelWDremE
~ Good journey to you all. I hope I will see you all well and alive again soon.~
== BSHART IF~ InParty("Sharteel") ~ THEN ~ (Shart-Teel wets her finger in her mouth and draws a kind of heart-shape sign with the moist on Landrel's forehead.) Try to stay alive, acceptable males are such a rare find. ~
== BVICON  IF~ InParty("Viconia") ~ THEN ~ (Instead of shaking his outstretched hand, Viconia's own has vanished for a moment beneath Landrel's robe. His groan is not completely one of pain and his face shows that the dark elf knows how to pleasure a man.) ~
END
++ ~ Goodbye, Landrel, thank you for all.~
EXIT

CHAIN
IF ~ Global("SanSharInt","GLOBAL",28) ~ THEN NarQMes SanSharBir
~ The master and lady Shar-Teel send their greetings. The time has come, <CHARNAME>. Sandrah, I will bless you in the name of Mystra with this spell that enables you to travel to Waterdeep and back at your will. You will be just in time to witness and assist the happy event. Congratulations.~
DO ~ SetGlobal("SanSharInt","GLOBAL",29) EscapeArea()~
END
++ ~ That is good news, Landrel. Don't wait, Sandrah, take us there right now.~
EXIT

CHAIN
IF ~ Global("SanSharInt","GLOBAL",30) ~ THEN NarQMes SanSharBit1
~ You have come not a minute too late for the happy event. We have set up the lady Shar-Teel in your quarters, mylady Sandrah. Huh, it is really time for a bit of quietness in this house again.~
DO ~ SetGlobal("SanSharInt","GLOBAL",31)~
== CVSandrJ ~ Hoho, you cannot expect such with a little baby in the house, Landrel, especially not from such parents.~
== NarQMes ~ (Sigh) At least the mother will be occupied with childcare a bit without the necessity to search out trouble in town.~
== CVSandrJ ~ Did she do anything wrong, Landrel?~
== NarQMes ~ Do not worry, mylady, actually she did things right - only just in her own special way.~
= ~ <CHARNAME>, can you imagine the sight of a highly pregnant woman emerging in a nightgown and sandals from the Waterdeep sewers with a bloody sword in hand?~
END
++ ~ If the woman's name was Shar-Teel I believe I can imagine such a thing easily. What happened?~ + SanSharBit2
++ ~ WHAT? Is the baby hurt?~ + SanSharBit2

CHAIN
IF~~ THEN NarQMes SanSharBit2
~ Lady Shar-Teel found traces of Khattark's former gang a while ago and occasionally hunted down an old member or two. Just two weeks ago she got excited as her street boy scouts brought her news about the remaining gang members getting very nervous about that persue and would gather again to join forces to defend themselves.~
= ~ So the lady, regardless of her state, quickly decided to make the first move herself...Well, she raided the former hideout of Khattark and destroyed her enemies. When our militia followed her trace they found about forty slain bandits and monsters down there.~
== CVSandrJ ~ A caring mother, <CHARNAME>, she wants your child to grow up in a save environment.~
END
++~Let us get up there to her room to witness the happy event, friends.~
EXIT

CHAIN
IF ~ Global("SanKhalBlood","GLOBAL",4)~THEN NarQMes BookWriteL
~ Dearest Sandrah, I am so glad to see you and <CHARNAME>. Your visit serves a purpose, my girl, I can sense it from your tension. But unfortunately the master is away.~
DO~ SetGlobal("SanKhalBlood","GLOBAL",5) ~
== BSANDR~ You are right, dear Landrel, you could always read me like an open book.~
== NarQMes ~ It is simple as you never closed your pages to my eyes. So?~
== BSANDR~ We are already at the topic - books. Maybe you can help me as good as my father as your knowledge in those things is not small . I am interested in one particular book - the one which writes itself.~
== NarQMes ~ (His eyes widen.) The goddess herself has talked to you, she must have, as she has sealed our lips by her oath on it - until now, that is.~
== BSANDR~ Honestly, she did not mention the book itself, rather she hinted at the fact that all the reigns of the incarnations of Mystra are not eternal but a succession chosen from the bloodline of the very first of them all. Through the book I hope to learn about those bloodlines.~
== NarQMes ~ The Seeker has found the trail and follows the scent. It is early but you have grown faster than anyone could have expected.~
== BSANDR~ Will you be able to help me then? Have you ever seen that book?~
== NarQMes ~ I know my record is in it as is yours and any other who serves the goddess. No, I had never a reason to search for it. Even if I did it would not help you as it is said it appears in a different place for every seeker.~
== BSANDR~ (Sigh) I heard the same. But maybe there is a hint of where the trail may lead?~
== NarQMes ~ Keepers of knowledge have been at all times. The knowledge you seek goes to the beginning of time since when the lines of the Gods have been recorded in the book.~
== BSANDR~ Hmm, such a book cannot be mere parchment, it would not endure. It must be in a sacred place as old as the gods themselves, older even than Oghma who was not from the beginning.~
== NarQMes ~The Seeker has found the trail and follows the scent. The place you may find the book must be one that can be deducted by lore. You will succeed.~
== BSANDR~ Farewell, my friend.~
EXIT

CHAIN
IF ~ GlobalGT("SanSharInt","GLOBAL",36) Global("SanSharNewHome","GLOBAL",0) AreaCheck("CVDRE2")~ THEN NarQMes SanSharNewHome1
~ Mylord, you may have come to visit your beloved and your son. They await you in their new quarters.~
DO ~ SetGlobal("SanSharNewHome","GLOBAL",1)~
== CVSandrJ ~New quarters...? Of course my little old tower may have become a bit too small for a growing family.~
== NarQMes ~ Indeed, Lady Sandrah. That and besides Lady Shar-Teel's own reputation with Waterdeep now - and her new role with the Lords of Waterdeep.~
== CVSandrJ ~She has cleaned up the town from some scoundrels and criminals is what we have heard.~
== NarQMes ~ It does the town good to have a capable Commander now at the head of our Militia and security forces...~
== CVSandrJ ~Shar-Teel is...~
== NarQMes ~ Yes, she is - she issued something about her father revolving in his grave about it, whatever that means.~
END
++~Hey, now, can any of you two let the poor partner and father know what you are talking about?~+ SanSharNewHome2

CHAIN
IF ~ Global("SanSharCom","GLOBAL",8)Global("SanSharNewHome","GLOBAL",0) AreaCheck("CVDRE2") ~ THEN NarQMes SanSharNewHome3
~ Oh yes, peace has come once again to Waterdeep with our new Commander of the Forces taking her duties so seriously.~
DO ~ SetGlobal("SanSharNewHome","GLOBAL",1)~
== CVSandrJ ~New Commander? My, good old Shar-Teel must really have given the veiled rulers a hard time for not acting against the bandits.~
== NarQMes ~ Indeed, Lady Sandrah. That and besides Lady Shar-Teel's own reputation with Waterdeep now - and her new role with the Lords of Waterdeep.~
== CVSandrJ ~She has cleaned up the town from some additional scoundrels and criminals is what we have heard.~
== NarQMes ~ It does the town good to have a capable Commander now at the head of our Militia and security forces...~
== CVSandrJ ~Shar-Teel is...~
== NarQMes ~ Yes, she is - she issued something about her father revolving in his grave about it, whatever that means.~
END
++~Hey, now, can any of you two let me know what you are talking about?~+ SanSharNewHome2

CHAIN
IF~~ THEN NarQMes SanSharNewHome2
~ Mylord, of course. I guess mylady Sandrah will remember where the House of the Commander of Waterdeep is.~
== CVSandrJ ~Say, good Landrel, does it mean that Shar-Teel has also inherited the other duties that are associated with the House and the position.~
== NarQMes ~Mylady, do I need to remind you that this is not subject to open discussion, not even between us?~
== CVSandrJ ~(Laughs.) I understand this as *yes* and will not inquire further. Quite a career for Angelo Dorsan's daughter.~
=~I assume you urgently want to see our Wildcat at her new home north of the Westgate. At least I cannot wait to congratulate and embrace her once again.~
END
++~That secret mansion between the Inner Walls and the Westgate is now her home? Let's go then.~ EXIT
IF~CheckStatGT(Player1,12,INT) ~THEN REPLY~That mansion? I heard talk that one of the veiled rulers of Waterdeep dwells there. Let's go then.~ EXIT

CHAIN
IF~Global("SanVampWDQuest","GLOBAL",3)~ THEN NarQMes SanWDVampQ1
~ Mylady Sandrah, greetings from the Temple at Waterdeep this time.~
DO~ SetGlobal("SanVampWDQuest","GLOBAL",4)~
== CVSandrJ ~Good old Landrel, bringer of good or bad news, but always welcome to me.~
==NarQMes ~ Thank you, my good girl. This time it is neither good nor bad news, but a request from your temple to assist in a challenge worth your presence.~
== CVSandrJ ~One of those missions that require both my fighting skills and my priest skills for Mystra?~
==NarQMes ~ Exactly - and of course your well known courage and that of <CHARNAME> and your companions. To learn more, the Chosen Ringhontal asks you to consult him at the Temple within two days.~
==NarQMes IF~GlobalLT("SanSharInt","GLOBAL",29)~THEN~ I will bless you in the name of Mystra with this spell that enables you to travel to Waterdeep and back at your will.~ 
==NarQMes ~ Danger is lurking on the whole town of Waterdeep.~
DO~ EscapeArea()~EXIT

CHAIN
IF~Global("SanXephRet","GLOBAL",1)~THEN NarQMes SanWDXephRet
~ Mylady Sandrah, darkness has befallen all who follow Mystra!~
DO~ SetGlobal("SanXephRet","GLOBAL",2)~
== CVSandrJ ~ One look at your pale face tells me the news is grave indeed.~
==NarQMes ~ Our Goddess herself is amiss, Sandrah! Captured by the most villaineous sorcerer Faerun has ever known.~
== CVSandrJ ~ An old acquaintance of mine I suspect, hence you were sent for me.~
==NarQMes ~ I was sent also for you, <CHARNAME>, and your other friends, <PLAYER3>, <PLAYER4>, <PLAYER5>, <PLAYER6>, and <PLAYER2>. All the Chosen followers of our Goddess are awaiting you at the Temple.~
== CVSandrJ ~I anticipate one of those occasion where the gods need the aid of the mortals on our home plane.~
==NarQMes ~My girl, you are right in everything - but let us not waste time in talking as the mages at the Temple will inform you about all you need to know for your mission.~ EXIT

CHAIN
IF WEIGHT #1 ~ Global("CowElmVis","LOCALS",1) ~ THEN NarQMes SanWiEdinWD
~ Misses Sandrah, you must have the best of reasons to bring the red scourge to your father's house!~
DO ~ SetGlobal("CowElmVis","LOCALS",2)~
== CVSandrJ IF ~ !InMyArea("Pellig") ~ THEN ~ He travels with <CHARNAME> but he is under my constant observation.~
== CVSandrJ IF ~ InMyArea("Pellig") ~ THEN ~ He travels with <CHARNAME> but he is under my constant observation. And you know Pelligram, she would swallow him whole if she suspected one false move from the mageling.~
== BEDWIN IF ~ InMyArea("Pellig") ~ THEN ~  That cat has really had her eyes on me all the time. (I wished some other pussycat would be as observant to me.) ~
== BEDWIN IF ~ !InMyArea("Pellig") ~ THEN ~ (If this pussycat had her eyes on me all the time she MUST have recognized my enourmous qualities - ha, in no time now she will be mine.)~
== NarQMes ~ Move carefully in this house, scum, and you may leave it alive. Although I doubt very much that one of your kind can restrain himself such.~
== BEDWIN ~ As if you had the means to threaten me, apprentice. I keep peace because I chose so, and for <CHARNAME>'s benefit.~
== CVSandrJ ~ Psst, Edwin, you are still needed, do not quarrel with Landrel, he will send you to the Nine Hells with just a snap of his finger.~
== BEDWIN ~ I doubt that but I will behave. (Oh, sweet girl, you really care for my well being - your rude mask has betrayed you once again...)~
EXIT