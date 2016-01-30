APPEND BSandr

IF~Global("SanseaYou","GLOBAL",3)~THEN BEGIN SaerYoung1
SAY~ The girl you have fallen in love with is pretty young still, <CHARNAME>. ~
IF~~THEN REPLY~ You are about a year older than me, if I am not wrong?~ GOTO SaerYoung2
IF~~THEN REPLY~ We are both not that much older than Saerileth is.~ GOTO SaerYoung3
IF~~THEN REPLY~ Do you take Saerileth for a child still? How were you at that age which is not so long ago, my love?~ GOTO SaerYoung3
END

IF~~ THEN BEGIN SaerYoung2
SAY~ (Smiles) Yes, and we are both not that much older than Saerileth. Some may take her for a child still, in other cultures she would be accepted as a woman already.~
IF~~THEN REPLY~ I take her for the second, Sandrah. Some girls grow faster than others at that age. I can imagine yourself being much similar just a little time back, right?~ DO~ SetGlobal("SanseaYou","GLOBAL",4)~GOTO SaerYoung4
END

IF~~ THEN BEGIN SaerYoung3
SAY~ You are absolutely right. I think I was like that not so long ago. Some may take her for a child still, in other cultures she would be accepted as a woman already.~
IF~~THEN REPLY~ I take her for the second, Sandrah. Some girls grow faster than others at that age. It is soothing to hear that you agree to my accessment on her.~ DO~ SetGlobal("SanseaYou","GLOBAL",4)~GOTO SaerYoung4
END

IF~~ THEN BEGIN SaerYoung4
SAY~ (She blushes) It reminds me of how I fell uncurable in love with the older hero I encountered. Just like her now.~
IF~~THEN REPLY~ If you talk of Drizzt, my dear, you are the living proof that such a love can mature along with you. It is not necessarily just a young girl's insecurity with her new world of feelings.~ GOTO SaerYoung5
IF~~THEN REPLY~ And is that so bad. Either you will later reveal that you were just overwhelmed by your hormons or you may find that youth may not prevent a solid decision.~GOTO SaerYoung5
END

IF~~ THEN BEGIN SaerYoung5
SAY~ I fully agree with your views, I just wanted to remind you that not every one we meet will share our educated and liberal ways. But other people's prejudice have never had an influence on us.~
IF~~THEN REPLY~ You say it. (The warm feeling of your love for your counsellor rushes over you like a mighty wave on an ocean shore.)~EXIT
END
END

CHAIN
IF~Global("SansearAdvise","GLOBAL",1)~ THEN BSandr SanSearWhyTh1
~ You seem to be distressed by something, Saerileth. Maybe I can help you with my advice if you care to share your thoughts with me.~
DO~ SetGlobal("SansearAdvise","GLOBAL",2)~
== BSaerile~ I have come to thine and <CHARNAME>'s company in search of help for a holy task. Now I see that thou are not as honest and pure as need thee be.~
== BSandr ~ Is that so? Be assured that this company destroys evil where we find it. But often things are different from what they appear to be at first glance.~
== BSaerile~ I trust thee very much, Sandrah, and if you follow <CHARNAME> in his action then there might be a cause I do not see. You are <PRO_HISHER> counsellor and wouldst deny loyalty to an unjust act. So how come <CHARNAME> leads a thieves guild?~
== BSandr ~ We have destroyed this guild that was led by the evil Mae'Var. <CHARNAME> has taken control of the activities now as the group itself cannot be completely destroyed. Instead of letting another criminal murderer gather these thieves it is now us who lead the activities and thus control them. Admitted, it is not the clear righteous road we are taking, but since we cannot destroy the evil it is the second best solution to control it and minimise the harm done to innocents.~
== BSaerile~ Life on this plane is more complicated than it appears from the distance from which I observed so far. I am used to think in good or bad only - so where is this behaviour to be classified?~
== BSandr ~ Sometimes on our plane here it is the only way to fight a fire with fire.~
== BSaerile~ Or to control the criminals by enforcing your reign over them? I will contemplate on thine words, Sandrah, and I thank thee for them as I was about to judge <CHARNAME> prematurely.~
EXIT

CHAIN
IF~~ THEN BSandr SanHealSaer2
~ I am a healer by the power my goddess has granted me, Saerileth, I am not the goddess myself. Are healers like me an unknown where you come from?~
== BSaerile~ I know healers, Sandrah, only...thy power is different from any I have encountered from one who is not a celestial herself.~
= ~ (The girl steps back and takes another of her intense looks at Sandrah.)~
== BSandr ~ Do I puzzle you that much?~
== BSaerile~ Indeed. thou dost. Would I only remember where I have encountered your very vibrations before. I swear it was not on the primary plane.~EXIT

CHAIN
IF~Global("SanHealSaer","GLOBAL",6)~ THEN BSandr SanHealSaer3
~ You indicated recently that you had the feeling you knew me already before we met in Athkatla. Have you had time to think about that strange notion again?~
DO~ SetGlobal("SanHealSaer","GLOBAL",7) RealSetGlobalTimer("SanSaerT","LOCALS",1500)~
== BSaerile~ In deed I didst so and it puzzled me deeply. 'tis best I tell thee and with thine wisdom we find a reason for mine confusion.~
== BSandr ~ Very well.~
== BSaerile~ 'tis on the eighth step of the Mount Celestia I saw thee walking once. I called thee a goddess once, perhaps in mistake, as the high planes of the Mount Celestia are where the gods themselves dwell.~
== BSandr ~ Hm. I can assure you that I have never been to that place, not even in my dreams. But it is odd that I have heard some hints and was told of some people's visions who also saw me walking near the Weave and among the celestials. What that may mean I do not know.~
== BSaerile~ I reliefs me that thee do not blame me a fool. Knowst that time in the linear way of the Prime is of no matter at Celestia.~
== BSandr ~ You mean that what you *remember* to have seen is something that is still in the future according to the time line of the material plane?~
== BSaerile~ This explanation appears logical if I have seen it in the timeless sphere I come from and thou swear it has not happened to thee yet in your time. Still, no mortal has ever been known that was allowed to that region - except for the priestess Midnight. But she never left again but became Mystra on the event.~
== BSandr ~ I know, not only because I am a priestess of that Goddess, but also because the human Midnight is my grandmother.~
== BSaerile~ 'tis that bond then that I must feel in the aura that surrounds thee, Sandrah. I need to contemplate what thou just told me.~ EXIT

CHAIN
IF~Global("SanUddSar","LOCALS",1)~THEN BSandr SanUddSaer
~ Is everything well, Saerileth?~
DO~ SetGlobal("SanUddSar","LOCALS",2)~
== BSaerile~ Thou have shamed me, Sandrah, in the face of <CHARNAME> and in the face of Tyr himself.~
== BSandr ~ By what wrongdoing have I done so. Believe me, I had no intention to do so!~
== BSaerile~ Oh, I notst mean thou did wrong. Thou braveheartedly defended us from the evil when I stoodst pale with terror. I have proven unworthy a paladin while thee deserve such honors.~
== BSandr ~ (Sandrah comes close to the younger girl and lays her hands on her shoulders. She kindly brushes a small tear from Saerileth's eye.) We all have our moments when the terror of what we face overwhelms us for a moment, my friend. You were sensing a danger that I did not. You were shocked by the sudden impact of your vision while I was not impacted by such a thing and just acted according to what I saw. Ignorance is bliss.~
== BSaerile~ (The girl's eyes clear and a shy smile appears.) Thou areth as far from ignorance than anyone can be, Sandrah. Thine courage cometh not from the absence of fear but from mastering it.~
== BSandr ~ Do not punish yourself unnecessarily, Saerileth, it comes with experience. I have simply faced horrors like these a few times more often than you. You need not to worry, you have proven your strength more than once.~
== BSaerile~ This has been very helpful, I thank thee...dost thou think <CHARNAME> will see me likewise?~
== BSandr ~ <PRO_HESHE> had own experience with it more than once, believe me...(You do not hear which stories from your long journey together Sandrah tells the young paladin, but you hear the girl's giggle and observe some amused looks in your direction after a short while.)~EXIT

CHAIN
IF~ Global("SanSaerFight","GLOBAL",3)~ THEN BSandr SanSaerQuaPC
~ (Sandrah and you walk hand in hand enjoying each other's closeness wordlessly.)~
DO~SetGlobal("SanSaerFight","GLOBAL",4)~
== BSaerile~ (Saerileth must have approached you from behind as she adresses you unexpectedly.)~
= ~Why dost thou not accept the fact that <CHARNAME> is my man now and leave thine hands off him?~
== BSandr ~ Is that so, Paladin? Have you some exclusive rights on him? Do you think you own him?~
== BSaerile~ Nobody hath rights to own another, thus would be slavery which we both most despise.~
== BSandr ~ I am glad we agree on this, Saerileth. You know that I have my place in the heart of our Bhaalspawn in the same way you have your domain there.~
== BSaerile~Both is not possible at the same time. A counsellor thus as thineself knowest that. It is me whose husband he shall be in the name of Tyr.~
== BSandr ~ I have not objected your interest in <CHARNAME> in any way, nor his for you. Love is a resource that multiplies itself instead of getting used up. There is enough love here for all of us.~
== BSaerile~'tis maybe the ways of thine strange goddess but not the way of Tyr or mine. Such can never be!~
== BSandr ~ And have you asked your beloved if he agrees to that? His hand in mine at this moment should answer your question.~ DO~ ChangeEnemyAlly("CVSandr",NEUTRAL) ~
== BSaerile~No, Sandrah, my weapon guided by the holy hand of Tyr will answer this question!!~ DO~ ChangeEnemyAlly("Saerileth",NEUTRAL) EquipMostDamagingMelee() AttackOneRound("CVSandr")~
EXIT

CHAIN
IF~ Global("SanSaerFight","GLOBAL",5)~ THEN BSandr SanSaerQuaPC2
~ Tyr himself has shown you the way, Saerileth, can you accept now the fact that I will always have my place at <CHARNAME>'s side? Can you share him with me in peace. ~
DO~SetGlobal("SanSaerFight","GLOBAL",6) RealSetGlobalTimer("SanSaerT","LOCALS",600)~
== BSaerile~ (Saerileth's blue eyes swim in tears as she turns to you.) Do you still love me, my one and only?~
END
++~(Take your beloved paladin in your arms and kiss her.) This was not necessary, my love, learn from it.~ EXIT
++~ All is well, Saerileth, I love you - as I do with Sandrah. (Embrace and kiss her.)~ EXIT
++~ You are still young and have a lot to learn. Be thankful that Sandrah is the most understanding woman on Toril. You are both close to my heart, each in her own rights. (You kiss away the tears from her eyes.)~EXIT 

CHAIN
IF~Global("SanSaerFight","GLOBAL",12) ~THEN BSandr SanSaesexAdv
~Yes? (Your warm hearted healer's voice is icy as Saerileth shyly approaches her.)~
DO~SetGlobal("SanSaerFight","GLOBAL",13)~
== BSaerile~ Ah...Sandrah...I wanted...(She is about to turn away again red faced.)~
== BSandr ~ What is it? Do you need a healer's help?~
== BSaerile~(Her face is almost purple now and she casts down her eyes.) Y-yes...a healer, and and a woman's advice and thou arth the only one here I can ask such things...~
== BSandr ~ You are a virgin still, are you not?~
== BSaerile~I am and I willst keep my virginity until it is rightfully mine to give it to my beloved.~
== BSandr ~ Which is when you hold a stamped and sealed marriage certificate from Tyr himself in your possession, right?~
== BSaerile~Thou arest sarcastic when I ask thine cleric's advice.~
== BSandr ~What advice do you want from me. You will not give yourself to <CHARNAME> until he marries you lawfully, so you do not need my elixirs to prevent pregnancy. What else can you want? I know him well enough not to assume he did to you what you had not consented to.~
== BSaerile~(Slowly) He didst not... ~
== BSandr ~But you feel that he has a strong desire for you.~
== BSaerile~Yes...can thou not...I mean, I will give myself with pleasure when he rightfully may enjoy me...but it's not now - is there not a way to...make his lust go?~
== BSandr ~ What is your idea, I mix something in his meal or what? ~
== BSaerile~I know not - I thought thou wouldst know.~
== BSandr ~I give him the pleasures you deny to him already. If you want I can teach you some techniques I know he likes without the need to loose your precious virginity...~
== BSaerile~ Thou arth disgusting! THOU ARTH NAUGHT BUT A WHORE JUST LIKE THE GODDESS THOU SERVE. You cast thine body to all like she giveth her magic to good and evil alike.~
== BSandr ~Insult me, bigotting paladin, but dare not to insult Mystra.~
== BSaerile~(Saerileth angryly stamps her feet as Sandrah leaves her standing alone.)~
DO ~ DropInventory() CreateVisualEffectObject("CALLLIGH",Myself) ReallyForceSpellRES("Spin714",Myself) ApplyDamage(Myself,80,CRUSHING)~EXIT

           	
CHAIN
IF~ Global("SanSaerFight","GLOBAL",7)~ THEN BSandr SanSaerQuaPC3
~ (Sandrah has sat down with her large tome before her and studies it silently.) ~
DO~SetGlobal("SanSaerFight","GLOBAL",8) RealSetGlobalTimer("SanSaerT","LOCALS",600)~
== BSaerile~ (Saerileth has stepped behind your own chair and tenderly massages your aching shoulders. You lean back to relish this rare moment of peace.)~
== BSandr ~ (Sandrah looks up from her book at you when she sees the young paladin behind you.)~
=~There is a question that has been on my mind for a while now, Saerileth.~
== BSaerile~ (You feel Saerileth's finger stiffen in their action.)...yes, Sandrah?~
== BSandr ~ When you attacked me the other day over <CHARNAME> - would you really have killed me if you would have been able to?~
== BSaerile~ (You feel Saerileth's fingernails dig deep into your flesh as her fingers clench. Her hands start to tremble. Finally she whispers underneath her breath:) Yes.~
== BSandr ~ (Sandrah nods wordlessly and continues to study her book.)~ DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~ EXIT

CHAIN
IF~Global("SanSaerFight","GLOBAL",15)~ THEN BSandr SanSaerWedPres
~ Saerileth, <CHARNAME>, my best wishes and Mystra's blessing to both of you. May your marriage be as happy as you wish it to be.~
DO~SetGlobal("SanSaerFight","GLOBAL",16) RealSetGlobalTimer("SanSaerT","LOCALS",600)~
== BSaerile~ I can see no falsehood in thy words even if I mistrust thy goddess and your blessing still.~
== BSandr ~I have expected such rejection from the bride. But know that I love <CHARNAME> more than anything in my life and that his happiness an wellfare are my utmost concern. I can only be consent if the marriage he has sworn will be a happy one. My wishes come from a loving heart, Saerileth.~
== BSaerile~ Thou giveth not up him even as he belongs to me now?~
== BSandr ~No one is owned by another, thus would be slavery which both of us most despise. Let me give you this small present, it will probably make you understand that I am neither your rival nor your enemy.~ DO~ GiveItemCreate("CVSaeWed","Saerileth",0,0,0)~
END
++~ Thank you, Sandrah, I will try to make my wife understand that your intentions are as pure and good as anyone's can be.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~ EXIT
++~ Thank you for your attempt, Sandrah, I value that you try to make peace with my wife. Come, Saerileth, let us look at Sandrah's gift together.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~ EXIT
++~ (Shake your head.) Do not put further oil to the fire, Sandrah. Just let my wife be from now on.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",-2)~ EXIT


CHAIN
IF~~THEN BSAERILE San2
~And Tyr's blessing to thee, Holy Father. In what may I serve thee?~
DO~ SetGlobal("NSToldCleric","GLOBAL",2)~
==NSCleric~ We were told that the Chosen of Tyr from Mount Celestia was journeying with the Bhaalspawn, and that she searched for Kesevar, the Fallen.~
=~He has been found!~
== BSaerile~Found? Then may Tyr grant that his servant may discharge her duty. Where is Kesevar the Fallen?~
==NSCleric~He has taken refuge outside the gates of Athkatla in a wilderness known as Small Teeth.~
== BSaerile~Then there is no time to be lost. <CHARNAME>, we must go at once!~
END
IF~ !Global("SaerilethRomanceActive","GLOBAL",2)~ THEN REPLY~We can't, Saerileth. We don't have time.~ + San3
++~Of course, Saerileth. We will go there now.~ + San4
IF~ Global("SaerilethRomanceActive","GLOBAL",2)~ THEN REPLY~We can't, Saerileth. We don't have time.~ + San5

CHAIN
IF~~THEN BSAERILE San3
~<CHARNAME>, my god commands that I go, and so I shall. (Saerileth's jaw is set, and her eyes are blue flames.)~
==NSCleric~No, child of Bhaal! It is the will of the gods that you go with the Chosen of Tyr. Surely you will not abandon her quest now.~
== BSaerile~Wilt thou join me or no?~
END
++~I'm sorry, Saerileth. I can't go.~ + San7
++~Of course, Saerileth. We will go there now.~ + San4

CHAIN
IF~~THEN BSAERILE San5
~My love, my god commands that I go, and so I shall, even if I must leave my heart--and thee--behind.~
==NSCleric~No, child of Bhaal! It is the will of the gods that you go with the Chosen of Tyr. Surely you will not abandon her quest now.~
=~(Saerileth's lips are trembling, but her eyes are blue flames.) I beg that thou wilt not leave me to this.~
END
++~I'm sorry, Saerileth. I can't go.~ + San6
++~Of course, Saerileth. We will go there now.~ + San4

CHAIN
IF~~THEN BSAERILE San4
~ Come, Holy Father. Let us to Kesevar the Fallen.~
==NSCleric~Good. I will take you there now, before Kesevar the Fallen flees!~
DO ~SetGlobal("FoundKesevar","GLOBAL",1) ClearAllActions()StartCutSceneMode() StartCutScene("CVCut105")~ EXIT

CHAIN
IF~~THEN BSAERILE San6
~Then I wast deceived in thee, <CHARNAME>. I hadst thought that thy love for me matched mine for thee.~
=~'Tis as well I learn the truth now. Fare thee well, my love. Never shall I see thee more.~
=~Come, Holy Father. Let us to Kesevar the Fallen.~ DO~ SetGlobal("SaerilethRomanceActive","GLOBAL",3)LeaveParty() EscapeArea() ~
==NSCleric~I will show her the way. Farewell, Bhaalspawn.~ DO ~EscapeArea() ~EXIT

CHAIN
IF~~THEN BSAERILE San7
~Fare thee well, then, <CHARNAME>. I obey Blind Tyr in all things, even if the obedience is difficult. ~
=~May the Maimed God keep thee, for never shall we meet again.~
=~Come, Holy Father. Let us to Kesevar the Fallen.~ DO~ SetGlobal("SaerilethRomanceActive","GLOBAL",3)LeaveParty() EscapeArea() ~
 ==NSCleric~I will show her the way. Farewell, Bhaalspawn.~ DO ~EscapeArea() ~EXIT

//______________APPENDS______//

APPEND Saerilet

IF WEIGHT #-9~  NumberOfTimesTalkedTo(0)
Gender(Player1,MALE)
OR(2)
Alignment(Player1,MASK_GOOD)
Alignment(Player1,MASK_GENEUTRAL)
InParty("CVSandr")
OR(3)
Race(Player1,HUMAN)
Race(Player1,HALF_ELF)
Race(Player1,ELF)
~ THEN BEGIN 500
SAY  ~Hail, godchild. (The young maid's face suddenly pales.) O, thou wonder!~
IF ~~ THEN GOTO 501
END

IF~~THEN BEGIN 501
SAY~ (The young maid forces her gaze from your face and quickly looks at Sandrah.) I must have met the right company as the might of the Weave is powerful with you.~ 
IF ~~ THEN GOTO 1
END
END

APPEND BSaerile

IF WEIGHT #-9~ Global("SanHealSaer","GLOBAL",3) ~ THEN BEGIN SanHealSaer1
SAY~ I have noticed your closeness to the Weave the very instant I lay eyes on thee, goddess.~
IF~~THEN DO ~ SetGlobal("SanHealSaer","GLOBAL",4)~ EXTERN BSandr SanHealSaer2
END
END

APPEND NSCleric
IF WEIGHT #-9~ InParty("CVSandr") InParty("Saerileth")!StateCheck("Saerileth",STATE_SLEEPING)
Global("NSToldCleric","GLOBAL",1) ~ THEN BEGIN San1
SAY~Greetings, Saerileth, Favored One of Tyr.~
IF ~~ THEN EXTERN BSAERILE San2
END
END

ADD_TRANS_ACTION Saerilet BEGIN 9 END BEGIN 0 END
 ~SetGlobal("SaeWait","Ar0900",1) RealSetGlobalTimer("AR0900SaerRetry","GLOBAL",860) ~

ADD_TRANS_ACTION Saerilet BEGIN 16 END BEGIN 0 END
 ~SetGlobal("SaeWait","Ar0900",1) RealSetGlobalTimer("AR0900SaerRetry","GLOBAL",860) ~
 
ADD_TRANS_ACTION Saerilet BEGIN 23 END BEGIN 0 END
 ~SetGlobal("SaeWait","Ar0900",1) RealSetGlobalTimer("AR0900SaerRetry","GLOBAL",860) ~

ADD_TRANS_ACTION Saerilet BEGIN 61 END BEGIN 0 END
 ~SetGlobal("SaeWait","Ar0900",1) RealSetGlobalTimer("AR0900SaerRetry","GLOBAL",860) ~

ADD_TRANS_ACTION Saerilet BEGIN 68 END BEGIN 0 END
 ~SetGlobal("SaeWait","Ar0900",1) RealSetGlobalTimer("AR0900SaerRetry","GLOBAL",860) ~

