BEGIN CVEntar

CHAIN
IF ~ Global("SanSafaBan","GLOBAL",9)~ THEN CVEntar SafAccus1
~ What have we here, officer?~
DO~ SetGlobal("SanSafaBan","GLOBAL",10)~
== CVSafgua~ Quite some catch, Duke, Sir! A pirate of the Exzesus, found here in Baldur's Gate by this brave citizen, Sir. There is no doubt, she must be hanged, Sir!~
== BSAFAN~ Dearest Duke, darling, you cannot believe that. It's all a big misunderstanding...~
== BSANDR~ Duke Entar, I am Sandrah of Waterdeep, Elminster's daughter and this girl's companion. We have heard only some rather vague and excited accusations so far. I assume you are the man here to shed some light into this case with your experience and calm judgement.~
== CVEntar ~ Well spoken, milady - and it is a pleasure to meet a lady of your reputation, Sandrah, even if the circumstances seem to be not the best. But let us investigate the case now. Will you act as defender of the accused, milady?~
END
++ ~ Duke, I am <CHARNAME>, the leader of this group. It is my responsibility to defend the comrade who is *falsely* accused here.~ + SafPCDef1
++ ~ Sandrah, my counsellor, I put my trust in you for this. If I were the accused I could think of no better defender to chose for myself.~ + SafSandDef1

CHAIN
IF~~ THEN CVEntar SafPCDef1
~ Then it is time to hear some facts, please.~
== CVSafcit ~ I am Finngur, a well respected merchant, Sir. This woman, Safana is her name, came into the Elfsong some weeks ago. Her undeniable charm attracted me immediately and we had some drinks and a conversation.~
== BSAFAN~ Which revealed you as quite a bore...~
== CVEntar ~ So you admit the witness speaks the truth, Safana?~
== BSAFAN~ Well, yes, why not, I had a drink with that guy and gave him the boot when I found what a boring old fart he... ~
END
++~ Please, Safana, no need to get upset or rude. Duke, I see no crime in that so far?~ + SafPCDef2

CHAIN
IF~~ THEN CVEntar SafSandDef1
~ Then it is time to hear some facts, please.~
== CVSafcit ~ I am Finngur, a well respected merchant, Sir. This woman, Safana is her name, came into the Elfsong some weeks ago. Her undeniable charm attracted me immediately and we had some drinks and a conversation.~
== BSAFAN~ Which revealed you as quite a bore...~
== CVEntar ~ So you admit the witness speaks the truth, Safana?~
== BSAFAN~ Well, yes, why not, I had a drink with that guy and gave him the boot when I found what a boring old fart he... ~
== BSANDR~ Please, Safana, no need to get upset or rude. Duke, I see no crime in that so far?~
END
++~ Good point.~ + SafSandDef2

CHAIN
IF~~ THEN CVEntar SafPCDef2
~ Neither do I so far. Let the witness continue. <CHARNAME>, please advise the culprit to stop her interruptions.~
== CVSafcit ~  In that conversation Safana boasted with her past on board of the Exzesus and even her affair with the Pirate Lord. Duke, your honour, the deeds of that crew are well known...~
== CVEntar ~ Yes, yes. So, Safana, is that true, you confessed your deeds to that man?~
== BSAFAN~ No, no - I mean yes - I mean I told him some stories to pepper up that dull tavern talk. That bore had nothing of interest by himself.~
END
++ ~ Safana, is that true? You told him everything. How am I to defend you here?~ +  SafSandDef3
++ ~ Sandrah, my counsellor, do you have any advice for this case? ~+ SafSandDef3

CHAIN
IF~~ THEN CVEntar SafSandDef2
~ Neither do I so far. Let the witness continue. Sandrah, please advise the culprit to stop her interruptions.~
== CVSafcit ~  In that conversation Safana boasted with her past on board of the Exzesus and even her affair with the Pirate Lord. Duke, your honour, the deeds of that crew are well known...~
== CVEntar ~ Yes, yes. So, Safana, is that true, you confessed your deeds to that man?~
== BSAFAN~ No, no - I mean yes - I mean I told him some stories to pepper up that dull tavern talk. That bore had nothing of interest by himself.~
END
++ ~ Safana, is that true? You told him everything? ~ +  SafSandDef3


CHAIN
IF~ ~ THEN CVEntar SafSandDef3
~ A statement from Safana herself about her deeds. A grave evidence.~
== BSANDR~ Excuse me, Duke. I cannot yet see the evidence. So, Finngur, the girl told you a few tales from her past in a tavern, is that right?~
== CVSafcit ~ She tried hard to impress me with her relationship to that pirate and her adventures on board of the Exzesus.~
== BSANDR~ And she told you about the people she had killed and the villages she had raided?~
== CVSafcit ~ Eh...it was more the amorous side of her pirate life, how she first entangled the first mate of that ship until she caught the eye of the Pirate Lord himself...~
== BSANDR~ You mean, in between all of her confessions of bloodshed she also told you her love life?~
== CVSafcit ~ It was her sole topic, trying to impress me, I guess.~
== BSANDR~ Let me see if I get that right, Finngur. Safana spent that evening with you telling you romantic stories of sealife among the pirates?~
== CVSafcit ~ You can say that! She boasted quite a bit about her way with men.~
== BSANDR~ You did not believe half of it, right?~
== CVSafcit ~ Lady, I am an experienced merchant, you cannot fool me that easily. Those stories were largely exaggerated, if they were true at all.~
== BSANDR~ You have your doubts there?~
== CVSafcit ~ Oh, she's an attractive woman, no doubt, but her fantasy is a bit girlish, don't you think, I mean love affairs with a pirate captain and half his crew - you have probably read such novels yourself when you were a girl...~
== CVEntar ~ (The Duke silently smiles to himself following Sandrah's investigation.)~
== BSANDR~ Back to the other aspect of her *pirate life*, the not-so-romantic deeds she had executed on that ship. Can you recall one of them in a bit more detail, please?~
== CVSafcit ~ Eh, we did not spend time on them really, it was more about the carnal pleasures with that crew, you know.~
== BSANDR~ Hm - so the confession is not a confession so much. A cheap pirate love novel of a romantic girl, that is what we have so far - if even that is true.~
== BSAFAN~ Sandrah, is that your revenge on me? To make me stand here like a storyteller in full public...~
END
++ ~ Hm.~ + SafSandDef4

CHAIN
IF~ ~ THEN CVEntar SafSandDef4
~ Safana, your counsellor is really trying to save your neck from the hangman. And I have the feeling she will succeed...~
== BSANDR~ Let us all forget this romantic kitsch with pirates for the moment. It does not matter anyway.~
== BSAFAN~ Puuh...~
== BSANDR~ To make that clear, Finngur, the girl did not confess to you a single crime that evening in the tavern?~
== CVSafcit ~ Eh, not specifically. But is not being member of a pirate crew crime enough to be hanged?~
== BSANDR~ Sure. If we find the evidence for that. Say, Finngur, were you yourself ever witness of a raid from the Exzesus on Baldur's Gate? Were you maybe robbed by them yourself?~
== CVEntar ~ The Exzesus never attacked on Baldur's Gate, milady.~
== BSANDR~ I see, Duke. But maybe the witness has seen them elsewhere.~
== CVSafcit ~ Elsewhere? I have been in the Gate all my life.~
== BSANDR~ Hm, so you are neither a witness of Safana's membership in the crew of the Exzesus, nor did she confess any pirate deeds to you on the aforementioned night. I guess that is all we can learn from this *witness*, Duke Entar, a girl with some romantic fantasies of a pirate love affair.~
== BSAFAN~ You are dismantling me piece by piece, Sandrah.~
== CVEntar ~I see what you are aiming at, Lady Sandrah.~
== BSANDR~ Duke, unless you have any other witnesses or evidence that Safana *really* was ever part of that pirate crew other than in her love fantasies, I assume you have no case against her at all.~
== CVEntar ~Do we have such, officer?~
== CVSafgua~ Duke, Sir? Eh...no, the Exzesus has never come close to Baldur's Gate. I know of no one who has ever seen the Pirate Lord or any of his crew in real life.~
== CVEntar ~Well, then. Ehem, the case is closed, the arrested are free to go. And...~
= ~ Safana, let this be a lesson to you - about men and about storytelling. You owe your beautiful neck to your companion Lady Sandrah. Good day to you all.~ DO~ AddexperienceParty(5000) EscapeArea() ~
EXIT


