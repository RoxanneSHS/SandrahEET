BEGIN CVSANDR

IF ~NumTimesTalkedTo(0)~ THEN BEGIN FirstJoin
SAY ~<CHARNAME>! I am too late (Looks down at Gorion's body with horror). You desperately need help.~
= ~You need MY help.~
= ~<CHARNAME>, you may call me Sandrah.~
IF ~~ THEN REPLY ~Sandrah, I'm so glad to meet you. What is going on? Will you help me? ~ GOTO SanJoin
IF ~ PartyHasItem("GIFTOFM")~ THEN REPLY ~An unknown cleric girl was in Candlekeep yesterday and left this magical sword for *a hero to be*. Was that unknown cleric maybe you, Sandrah? ~ GOTO GiftofM
IF ~~ THEN REPLY ~Sandrah, can I really trust you? ~ GOTO Trust
END

IF ~~ THEN BEGIN SanJoin
SAY ~We are comrades in arms and partners from now on. You will not regret it, <CHARNAME>. ~
IF ~~ THEN REPLY ~Welcome, Sandrah. ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO IntroImo1
END

IF ~~ THEN BEGIN GiftofM
SAY ~Yes, this sword is a gift of my goddess Mystra. I was afraid I may miss you before the danger arrived, so I left it with a watcher to make sure you would not be totally defenceless. ~
IF ~~ THEN REPLY ~So you already tried to help me once, and now you are here yourself to help me again. You have proven your trustworthiness to me, my friend, I will be honored if you join me. ~ GOTO SanJoin
IF ~~ THEN REPLY ~Even then, what would make you do such a thing? What are your motives? I am not sure whether I can trust a total stranger that provides me with an enourmous gift. ~ GOTO Trust
END

IF ~~ THEN BEGIN Trust
SAY ~You CAN and you MUST. There is no other way. What are your other options, <CHARNAME>? ~
IF ~~ THEN REPLY ~ Well, I think I must trust someone or I'm lost. Something tells me you are sent to help me, Sandrah, come with me.~ GOTO SanJoin
IF ~~ THEN REPLY ~ I can trust no one out here. I'm sorry. Maybe another day? ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",-1)~GOTO AnotherDay
END

IF ~~ AnotherDay
SAY ~I will wait for you. Think about it, <CHARNAME>, for Gorion's sake. (As you turn to leave you feel forlorne, like walking into a growing darkness - why did you not trust her?)~
IF ~~ THEN DO ~ AddJournalEntry(@12,INFO) ~ EXIT
END

IF ~~ IntroImo1
SAY ~ You will need friends by your side if you want to survive on the path that is waiting for you out there. ~
IF ~ InParty("imoen2") ~ THEN REPLY ~ Imoen is here with me. She is like a sister to me. ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO IntroImo2b
IF ~ !InParty("imoen2")~ THEN REPLY ~ I was alone until now... ~ GOTO WhereIsImo
END

IF ~~ IntroImo2b
SAY ~ Well...~
IF ~ InParty("imoen2")~ THEN EXTERN BIMOEN IntroImoS
IF ~ !InParty("imoen2")~ THEN EXIT
END

IF ~~ IntroImo2
SAY ~ Ah, Imoen, another of those who cannot follow the elders' orders.~
IF ~~ THEN REPLY ~ First you know who I am, now you even know Imoen? ~ GOTO IntroImo3
IF ~~ THEN REPLY ~ I could not reject her help, she has been with me as long as I can think. Like her or not, you have to cope with her. ~ GOTO IntroImo3
END

IF ~~ IntroImo3
SAY ~ You are loyal to your friends, <CHARNAME>. We will stand to you when you need help and care. And you NEED help! ~ IF ~~ THEN DO ~ SetGlobal("SandrahJoined","GLOBAL",1) JoinParty()~ EXTERN BIMOEN IntroImoN
END

IF ~~ WhereIsImo
SAY ~ Did you see Imoen from Candlekeep? Was she not with you when you left there?~
IF ~~ THEN REPLY ~ I cannot stand her babbling all the time. I did not care to take her with me. ~ GOTO SeeBehindMask
IF ~~ THEN REPLY ~ I cannot endanger her by taking her with me. I care too much for her to see her suffer. ~ GOTO LovelyFool1
IF ~~ THEN REPLY ~ How the hell do you know about Imoen? ~ GOTO SeeBehindMask
END

IF ~~ LovelyFool1
SAY ~ She is much stronger than you may think, <CHARNAME>.You must be careful to keep the friends you still have. ~
= ~ Let us return immediately to her and ask her to join us. She needs you as much as you need her.~
= ~ You can take care of her much better if she is with you than if she is out there alone. ~
IF ~~ THEN REPLY ~ Hm, I think you are right, Sandrah. It was foolish of me to separate from her. We will go back and search for her. ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO LovelyFool2
IF ~~ THEN REPLY ~ But now I have you by my side. If she is as strong as you say, she will be able to manage her own way. Surely we shall meet her again. ~ GOTO LovelyFool2
END

IF ~~ LovelyFool2 
SAY ~ <CHARNAME>, you lovely fool, you already miss her, admit it or not. ~
IF ~~ THEN DO ~ SetGlobal("SandrahJoined","GLOBAL",1) JoinParty() ~ EXIT
END

IF ~~ SeeBehindMask
SAY ~ Oh, <CHARNAME>, little blind bird. You need to look behind her mask of cheerful babbling. ~
= ~ Behind all her funny words and jokes she is a clever girl and she cares for you. Remember all the times you had together and you will find that I'm right. ~
IF ~~ THEN REPLY ~ Yes, you are right, she is my best friend as long as I can think and almost like a sister to me. When it came hard, I could always rely on her. ~ GOTO LovelyFool2
IF ~~ THEN REPLY ~ Oh, no! She is a pain and a headache. You say that all of this is just a clever disguise, hm?  ~ GOTO LovelyFool2
END

IF ~NumTimesTalkedToGT(0) ~ THEN BEGIN SecondChance
SAY ~I see you have returned, <CHARNAME>. (Suddenly you start to feel a comfort and warmness growing inside you.)~
IF ~~ THEN REPLY ~ Well, I think I must trust someone or I'm lost. Something tells me you are sent to help me, Sandrah, come with me.~ GOTO SanJoin
END

APPEND BIMOEN

IF ~~ THEN BEGIN IntroImoS
SAY ~(Imoen shakes Sandrah's hand with a bright grin on her face.) Nice to meet you, Sandrah, wow, what a nice robe, bad it's not pink at all. ~ 
IF ~~THEN EXTERN CVSANDR IntroImo2
END

IF ~~ THEN BEGIN IntroImoN
SAY ~(Imoen wildly nods to these words.) You will see. ~
IF ~~THEN EXIT
END
END
