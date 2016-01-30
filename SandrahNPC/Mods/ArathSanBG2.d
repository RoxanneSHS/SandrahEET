INTERJECT_COPY_TRANS LK#Arath 2 SanMeetArath
== CVSANDRJ IF~ InParty("CVSandr")~ THEN~It seems to me like you are not here yourself to enjoy the glorious spectacle.~
==LK#Arath IF~ InParty("CVSandr")~ THEN~I would not expect to find like minded company right here - yet, everything is possible.~
=~I see a sparkle in your pretty eye that may well be hatred against what's going on here.~
END

CHAIN
IF WEIGHT #-5~Global("SanMeetArath","GLOBAL",2)~THEN BLK#Arat SanMeetArath2
~With respect to slavery we seem to share the same opinion, mylady.~
DO~SetGlobal("SanMeetArath","GLOBAL",3)RealSetGlobalTimer("SanInterArath","LOCALS",1700)~
==BSandr~Is it so unusual to care for one's fellowbeings and fight against those who do treat them like possession and worse?~
==BLK#Arat~I'd say it is not - still it is unusual for one like you.~
==BSandr~And what would *one like me* be in your view?~
==BLK#Arat~Well, obviously you belong to that so-called upper class who generally profit from the suffering of slaves and often enforce it to dwell in their luxury.~
==BSandr~Generally? Some do, so much is obvious, some do not - some object to it and some fight against it. There are all variations in your *so-called upper class*. I have the feeling you know that just too well as you do not appear to me as one who spent his former life in poverty.~
==BLK#Arat~(Smiles) Is it so easy to get you out of your reserves, mylady?~
==BSandr~Normally not, but two things sure succeed for that purpose. One is slavery - the other is prejudice.~EXIT

CHAIN
IF WEIGHT #-5~Global("SanMeetArath","GLOBAL",4)~THEN BLK#Arat SanMeetArath3
~Your black plains cat is an impressive animal and I observe you treat her with great respect.~
DO~SetGlobal("SanMeetArath","GLOBAL",5)RealSetGlobalTimer("SanInterArath","LOCALS",1700)~
==BSandr~Pelligram is my oldest companion, Arath, she is not a pet and she is not my possession.~
==BLK#Arat~Unnecessary then to ask you whether you tamed or trained her, I guess.~
==BSandr~I did neither. She does what she chooses to do and she follows me because it is her will or her destiny. I am glad she does.~
==BLK#Arat~Sounds like you're not really sure about what bond there is between you?~
==BSandr~I do not try to explain her actions and feelings towards me with human expressions. Still, I am sure she acts by other motivation than pure animalistic instinct. I am not even sure she truly is an animal.~
==BLK#Arat~You think she's a special kind of creature? Well, she sure does not fit into any of my ranger's experiences up to now. (Just like you don't fit into my rich girl's experience scheme.)~
==BSandr~You said something?~
==BLK#Arat~Sorry, I might just have been thinking out loud...~EXIT

CHAIN
IF WEIGHT #-5~Global("SanMeetArath","GLOBAL",6)~THEN BLK#Arat SanMeetArath4
~Whenever I think I learned a bit about you, Sandrah, I discover another bit that confuses me just again.~
DO~SetGlobal("SanMeetArath","GLOBAL",7)RealSetGlobalTimer("SanInterArath","LOCALS",1700)~
==BSandr~That is not so unusual when you take time to learn a bit more about companions you spend a lot of time with. Rarely a person is that easy to be categorised and one-sided not to cause one or the other bewilderment.~
==BLK#Arat~Well, yes...but rarely the different aspects of another person are so confusingly far apart like with you.~
==BSandr~Do you spend that much time with observing and thinking about me?~
==BLK#Arat~Like you said...we spend much time together and there is not always some other interesting object around.~
==BSandr~(Laughs) You are a master in issuing compliments to women, really.~
==BLK#Arat~I'm not at that stage yet with you - not before I see abit clearer.~
=~How can a Bhaalspawn and a priestess of Mystra be as close as you are with <CHARNAME>? My lore of the Times of Trouble tells me that the current incarnation of your goddess and her company were the ones to defeat and kill the God of Murder.~
==BSandr~My personal hatred towards Bhaal goes even deeper as he caused the early death of my mother by impregnating her with one of his spawns.~
==BLK#Arat~Oops...so my question is further fuelled by this fact. Unless you secretly plan to take revenge on <CHARNAME> but still wait for some strange reason.~
==BSandr~Fact is that our paths have crossed because of the relationship you just revealed and we stayed companions and fell in love with each other meanwhile. Over time we found more and more indications that we share some common fate that still needs to found. We are connected by the bloodline that each of us have inherited but we are not slaves to our blood.~
==BLK#Arat~I'm relieved to hear that. I couldn't find much of Bhaal's influence on <CHARNAME> and you hatred of the dead god was even more hidden until today.~
=~I'm not sure I gained more clarity about either of you two now...let me think a bit.~EXIT

CHAIN
IF~ Global("SanMeetArath","GLOBAL",8)~ THEN CVCatCe SanFindArat1
~ Miau, miau.~
DO~ SetGlobal("SanMeetArath","GLOBAL",9)~
== BSANDR~ Wait a minute, <CHARNAME>, let me take care of that poor limping creature.~
==BLK#Arat~ You are very caring, Sandrah. Look, it is the hind leg that is injured.~
== BSANDR~ Come here, poor kitten.~ DO~ ReallyForceSpell("CVCATCE",CLERIC_CURE_MEDIUM_WOUNDS)~
END
++~ You never tire to help suffering creatures, Sandrah.~ + SanFindArat2
++~ What's the next patient, a three-legged frog?~ + SanFindArat2

CHAIN
IF~~ THEN CVCatCe SanFindArat2
~ Miau (The cat stretches and tests its healed leg cautiously. It expells a satisfied purring.)~
==BLK#Arat~ Look at it, Sandrah, it is not a tame one, it is a wild mountain cat. How did it get here?~
== BSANDR~ Probably brought here by some hunter or menagerie and then thrown out in the street when they found it was injured.~
==BLK#Arat~ (Sighs) I am afraid you are right, my friend.~
== BSANDR~ What do you propose to do, Arath, what does your druid knowledge suggest?~
==BLK#Arat~ It would be cruel to let it here where it does not belong and cannot survive long. Let us take it with us and give it back its freedom when we come to a suitable area in the wilderness.~
== BSANDR~ That is a wonderful suggestion, I hate it myself when people cage and mistreat those wild creature just to satisfy their hunger for sensations.~
==Pellig~ * Do not fear, little friend, these are good people. You will be home soon.*~
==CVCatCe~ Miau.~
EXIT


CHAIN
IF~Global("SanMeetArath","GLOBAL",11)~ THEN BSandr ArathFreeCat
~ Arath, do you think this area here is adequate for our mountain cat.~
DO~ SetGlobal("SanMeetArath","GLOBAL",12)~
==BLK#Arat~ I was just thinking the same, Sandrah. Maybe you should examine her one last time to make sure all is well and then we can give her back her freedom.~
== BSANDR~ (Sandrah carefully inspects the cat which Arath has cupped in his hands. She looks into the druid's eyes and smiles.) She is fine, my friend, ready to conquer the wilderness again.~
==BLK#Arat~ This is a wonderful moment. Thank you for it, my friend.~
DO~ AddXPObject("BLK#Arat",5000) AddXPObject("CVSandr",5000) TakePartyItem("CVCatce") DestroyItem("CVCatce") CreateCreatureObjectOffset("CVCatCe","CVSandr",[25.-25]) ~EXIT

CHAIN
IF~ Global("SanMeetArath","GLOBAL",12)~ THEN CVCatCe SanFindAr3
~ (The mountain cat carefully inspects the new area around.)~
DO~ SetGlobal("SanMeetArath","GLOBAL",13)ActionOverride("CVSandr",AddSpecialAbility("CVDra15"))RealSetGlobalTimer("SanInterArath","LOCALS",2700)~
==BLK#Arat~ This is were you belong, friend. Tread carefully.~
== BSANDR~ (Sandrah smiles and takes Arath's hand while watching the cat explore its new world.)~
==Pellig~ *Hush, little one, do not get yourself caught again. Live long and prosperous.*~
==BLK#Arat~ Huh, there it was again, Sandrah, I think I overheard some kind of telepathic message from Pelligram to that cat.~
== BSANDR~ You are a druid, do you not communicate with the wild beings all the time?~
==BLK#Arat~ In some way yes, you are right, Sandrah, but this was different, much clearer than what I receive from a *normal* animal.~
== BSANDR~ Pelligram surely does not fit into that category. Anyway, I am glad our little guest has now found what she needs, Arath.~
==BLK#Arat~ So am I. (Instictively Arath keeps Sandrah's hand in his own while the group continues their march.)~
==CVCatCe~ Miau.~DO~ MoveToPointNoInterrupt([0.0])~ EXIT

CHAIN
IF WEIGHT #-5~Global("SanMeetArath","GLOBAL",14)~THEN BLK#Arat SanMeetArath6
~If you don't mind me saying so, you're a damned attractive girl, Sandrah. I guess, I can call myself a rather attractive man. ~
DO~SetGlobal("SanMeetArath","GLOBAL",15)~
== BSANDR~(Laughs) Is this a full frontal attack, Arath?~
==BLK#Arat~Subtlety isn't my strong point. I think you can see where I'm going with this. I had time to study you a bit. You sure know how to have some fun now and then, if you know what I mean. ~
== BSANDR~I cannot deny that. And I agree with your view of yourself - you are an attractive man. ~
==BLK#Arat~Fine, so the preliminaries are done, shall we go ahead? ~
== BSANDR~What if my heart already belongs to another? ~
==BLK#Arat~That doesn't bother me if it doesn't bother you. I adore you, Sandrah. But I want to make it clear. I'm not interested in anything long-term and I guess nor are you, at least not with me. ~
== BSANDR~(Sigh) It is obvious I cannot expect some scented bed decorated with rose petals and candle light or other such ingrediences from you. ~
==BLK#Arat~I have an acceptable bottle of wine for the occasion.~
== BSANDR~(Laughs) That is more than expected. But let us skip the drink, I do not think we need this to find each other tempting...~DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() Wait(2) AddSpecialAbility("Spin517r")~EXIT

CHAIN
IF WEIGHT #-5~Global("SanMeetArath","GLOBAL",16)~THEN BLK#Arat SanMeetArath7
~You did that, didn't you, Sandrah. I mean, bringing me back from the death. ~
DO~SetGlobal("SanMeetArath","GLOBAL",17)~
== BSANDR~It is the duty of a healer.~
==BLK#Arat~Just that? Not the fact that you would've missed me - just a bit?~
== BSANDR~It was the deed of a healer as I would have done for anyone in <CHARNAME>'s group if it were within the limits of my skill.~
==BLK#Arat~Hm, if you say so...~
== BSANDR~Arath.~
==BLK#Arat~Oh, you don't need to say more. You are a great healer indeed.~
== BSANDR~Apart from my professional care for my friends and companions...I would have missed you indeed - just a bit.~EXIT