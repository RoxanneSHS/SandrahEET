CHAIN
IF~Global("SanSarev","GLOBAL",2)~ THEN BSandr25 FirstSarev
~It is a slightly irritating feeling to walk as comrad with one who has once been our *enemy number one*.~
DO~SetGlobal("SanSarev","GLOBAL",3)~
==BSAREV25 ~ If that is irritating for you then you can imagine how it is to walk beside the one whose gleaming deadly hammer was the last conscious vision I had before I ended my first mortal life.~
==BSandr25~In some way we had to meet way back on the Sword Coast, even if it was a long process to reveal why I was searching you.~
==BSAREV25 ~ You were searching me? That explains a lot and on the other hand opens a stream of new questions. It explains the persistent power I felt opposing me, the destructive results that I had trouble attributing to my staggering sibling - before I learned about the counselor who was on my trail with <PRO_HIMHER>.~
==BSandr25~You must know that I left Waterdeep for the Sword Coast in search of a Bhaalspawn. The one that was insaminated to my mother and resulted in her early death. I did not know whom I may find and which alignment he or she would have...I found <CHARNAME>...~
==BSAREV25 ~ ...it may have been me - or <CHARNAME> may have been one with aspirations similar to the ones I had.~
==BSandr25~This was what I was contemplating as well recently.~
==BSAREV25 ~Excuse my curiosity, Sandrah, but what would you have done if you had found one of the others - not <CHARNAME>?~
==BSandr25~What I did to you and what I am now out to do still - prevent him or her from taking Bhaal's heritage and Throne.~
==BSAREV25 ~I see your determination to that task, ha, I have even felt it myself, so to say. It appears to me that you are a factor in all the equations and even in Alaundo's prophesies that none had ever accounted for. At least I made the mistake to overlook it - and I paid for it.~ DO~SetGlobal("CVSareded","Global",1)~EXIT

CHAIN
IF~Global("SanSarev","GLOBAL",4)~ THEN BSandr25 SecondSarev
~Sarevok, I was just remembering a woman we have met very long ago in Baldur's Gate, her name was Tamoko.~
DO~SetGlobal("SanSarev","GLOBAL",5)~
==BSAREV25 ~ Oh, I had no idea you ever met her. I have not thought of her for a long time now.~
==BSandr25~ Yes, I was guessing such, she surely has not meant as much to you as you did to her.~
==BSAREV25 ~ Honestly, the women I had met in my life were too weak for me so far. I never cared much for any of them.~
==BSandr25~ You have never experienced love...no, how could you - being used as a tool from the beginning and consequently seeing others as tools only.~
==BSAREV25 ~ You say that Tamoko had loved me?~
==BSandr25~  I do not know for sure, at least she tried to save you and asked us to spare your life. She was hoping that some redemption for you was possible.~
==BSAREV25 ~ I...I have never guessed she had such feelings - I never had much feelings for anyone. Do you think some other kind of youth than mine might have led to other results, despite my heritage.~
==BSandr25~ Do you have to ask, Sarevok? Simply look at <CHARNAME>.~
==BSAREV25 ~<CHARNAME>, even if such a weak Bhaalspawn, always was blessed in a way. First with Elminster and Gorion - and then with you, Sandrah. Maybe such a strong influence was lacking for me. Some good willing Tamoko cannot be compared to a woman like you.~EXIT

CHAIN
IF~Global("SanSarev","GLOBAL",6)~ THEN BSandr25 ThirdSarev
~Sarevok?~
DO~SetGlobal("SanSarev","GLOBAL",7)~
==BSAREV25 ~ I have thought about our recent conversations, Sandrah. I mean, the lack of a woman to match my abilities and ambitions. Just to imagine that with one like you I may have changed the course of the Sword Coast to our liking.~
==BSandr25~ You are a fool, Sarevok, and you have not listened to me. *I* have changed the course of the Sword Coast together with <CHARNAME> and to my liking - the outcome is surely not what you had in mind.~
==BSAREV25 ~Imagine my goal would have been a different one than that implicated by my blood's taint.~
==BSandr25~ You are a strong man, Sarevok, ambitious and capable. Hm...given the right direction, you may have accomplished something.~
==BSAREV25 ~My heritage in the end destines me to be a ruler, don't you think?~
==BSandr25~ No - your powers and ambitions are much too unfocussed if not chaotic. One thing that makes <CHARNAME> a competent leader is the ability to build relationship, friendship - and love - <PRO_HISHER> companions are friends, not hirelings or tools. You built your reign on corruption, fear, blackmail and malice. Sure it is a foundation but never in the long term. ~
==BSAREV25 ~Has anyone ever heard of a kingdom build on peace, love and understanding, you sweet little dreamer?~
==BSandr25~ (Smiles.) I never thought you were capable to pronounce these words without your tongue  falling off your mouth - what a surprise. Is there some hope for you after all? Hm, at least I like your calling me a *dreamer*. Where would we be without those sweet dreams - and do not confuse dreams with illusions, Sarevok.~EXIT

CHAIN
IF~Global("SanSarev","GLOBAL",8)~ THEN BSandr25 FourthSarev
~Are you making progress with your attempt to understand yourself, Sarevok?~
DO~SetGlobal("SanSarev","GLOBAL",9)~
==BSAREV25 ~ I may need your help in that, Sandrah - I mean as a witness.~
==BSandr25~ A witness, a counselor, a listener - whatever, you have my attention.~
==BSAREV25 ~ Back then when you and <CHARNAME> were about to defeat me at Baldur's Gate after you spoiled my attempt to become Grand Duke - did you advocate for my death?~
==BSandr25~ We discussed what we should do with you, yes, and <CHARNAME> asked for my advice after Tamoko had begged for your life.~
==BSAREV25 ~And what was your answer, if I may know this detail?~
==BSandr25~ We agreed that it was not for us to decide on your fate, that all would depend on your own reaction when you had to admit your error and your defeat.~
==BSAREV25 ~Really? Hm...once I would have said that this was weakness, but knowing you better now I see that it was not. To give a chance for redemption to a foe like me requires maybe more strength than to administer the final blow. To hold yourself back in the hour of ultimate triumph instead of ending it in blood - you are a mystery.~
==BSandr25~ But finally you left us no choice, Sarevok...~
==BSAREV25 ~ In the end it is only me that is to blame for how it ended? I have to think about it. Thank you for your openess and kindness, Sandrah.~EXIT

CHAIN
IF~Global("SanSarev","GLOBAL",10)~ THEN BSandr25 FifthSarev
~You have come to some conclusions, Sarevok?~
DO~SetGlobal("SanSarev","GLOBAL",11)~
==BSAREV25 ~ Yes, concerning myself I did - concerning you...mh...more questions than answers have appeared before me.~
==BSandr25~ Why should you start to contemplate about me anyway?~
==BSAREV25 ~I have learned from our comrads that your heritage, even if different from <CHARNAME>'s or my own, puts you in a similar position with respect to power.~
==BSandr25~ I am not a godchild, someone must have told you a misleading story.~
==BSAREV25 ~ No, you are no godchild - you are far more. You are from the blood that have killed gods in the past and according to your own confession you would be willing yourself to do such a deed. I know quite well that the idiot Cyric was just a tool used to kill my *father* - the true executioner had been the one you call your grandmother.~
==BSandr25~ You are right, Sarevok, and you are also right that I follow Midnight's example where I can map it to my own situation.~
==BSAREV25 ~ Yes, you do - but do you consider the ultimate consequences, Sandrah? The women of your bloodline have not only killed gods. They are among the few mortals who were chosen by the Overloard Ao and found worth to become godesses themselves. Does such a perspective not raise ambitions in one as capable and superior as yourself?~
==BSandr25~ I do not estimate myself superior to anyone, Sarevok. And have you ever thought clearly about what it really means to have the power of a god? Do you only see the possibilities of bloodshed and destruction in it? What about the responsibility that comes with the power?~
==BSAREV25 ~Responsibility of a god? For the dirt crawling mob of worthless mortals, the blind lemmings rushing to their death with open eyes while drooling from greed...Why should a goddess care about them?~
==BSandr25~What makes a god a god if not the belief of those who follow him? Is it not the role to be an example and a guidance to those who seek the truth? I see the goddess I follow with such eyes.~
==BSAREV25 ~...and the goddess you follow was once a mortal priestess of Mystra just like you...keep following your grandmother's step - prevent the new rising of the murderous god she herself once defeated - follow the logic of this to the end, Sandrah.~
==BSandr25~Sarevok, I am human and I am mortal. It is the primary plane where I live and where I try to help shaping a Toril that I enjoy living in. If I had the power to do it I would use it to improve the everyday life of the *drooling mob of lemmings* - I am one of them.~EXIT

CHAIN
IF~Global("SanSarev","GLOBAL",12)~ THEN BSandr25 FifthSarev
~Sarevok, you have sworn to <CHARNAME> that you no longer follow your ambitions for power and that you just want to live again.~
DO~SetGlobal("SanSarev","GLOBAL",13)~
==BSAREV25 ~ I have not lied - still the subject is still of interest to me for studying and has become more so since I learned a bit more about yourself.~
==BSandr25~ You play with fire, Sarevok?~
==BSAREV25 ~ Ah, do not get me wrong, Sandrah, I was referring to my studies of power and ruling people and you as my living example.~
==BSandr25~ And I told you I was not a good example here.~
==BSAREV25 ~Oh, you are, now that I know your motives better. You are not a Helmite or such, you are more practical. As a historian I would assign you to the forgotten Amaunator...~
==BSandr25~ I have chosen Mystra and I have never doubted her once I had made the choice, which was not an easy one.~
==BSAREV25 ~Because of the family bonds involved?~
==BSandr25~ (Smiles.) Yes - you should understand that better than any, had you questioned your heritage you may have come to other decisions. Your possibility to make an educated decision in your youth was probably not comparable to mine.~
==BSAREV25 ~(Harshly) Elminster was probably a better teacher than the Orloth Winski. But a teacher was not the only thing that has missed in my former life. Love was the second. I understand that your actions are rather fuelled by love than by ambition or hatred.~
==BSandr25~ (Smiles again.) The moth returns to play with the fire again.~
==BSAREV25 ~ (Returns a grimace that might be his first attempt ever to show a *smile*) Do not forget I have been to hell, Sandrah, an inviting little flame cannot scare me.~DO~RestParty()~EXIT

CHAIN
IF~Global("SanSarev","GLOBAL",14)~ THEN BSandr25 SixthSarev
~There it is again, Sarevok, that strange grimace on your face. Is it a smile?~
DO~SetGlobal("SanSarev","GLOBAL",15)~
==BSAREV25 ~It was supposed to be one - did it fail?~
==BSandr25~ (Smiles brightly.) You need some training, that is for sure.~
==BSAREV25 ~I could never match up to yours, but not many can reach that. The beauty and the power your face expresses, even with a smile that lightens a whole dungeon. I have never looked at women in that way before.~
==BSandr25~ I have met some of them, Sarevok. What were they to you or you to them?~
==BSAREV25 ~I am unsure about Tamoko after what you told me about her. All the others, well, they gave me passion, lust, the power to possess them - I gave them the prospect of wealth, domination and respect advancing to Grand Duke and more.~
==BSandr25~ The usual triggers but far from what love is about. The way you look at them now reveals that you are not satisfied with that yourself.~
==BSAREV25 ~I had my ideas about how people who possess power would use it and what it would gain them - including *love*. You do not fit into any of those patterns.~
==BSandr25~ I would not guess the *new* Sarevok would follow the former patterns again.~
==BSAREV25 ~A woman who would match this new Sarevok as you call him would not be corrupted by wealth, power or carnal passion. She owns all of that in abundance. In addition to the fearlessness and impartiality to accept the love of a Bhaalspawn. ~ EXIT

CHAIN
IF~Global("SanSarMys","LOCALS",1)~ THEN BSandr25 SanSarevCoat
~(Sandrah's finger explore the fabric of the famous coat she has received from Mystra in deep thought.)~
DO~SetGlobal("SanSarMys","LOCALS",2)~
==BSAREV25 ~ Battallions of mages and sorcerers would have sacrificed most of Faerun to gain what is given to you while you still try to reject it.~
==BSandr25~ I have not fiercly rejected it, I have only considered whether I am really worth it and whether I am really willing to accept the responsibilities that come with it.~
==BSAREV25 ~You have mentioned your strange concept of responsibility before but never the endless freedom that a power like that seemingly offered to you might bring you.~
==BSandr25~ Freedom? No ruler or leader is ever free, exposed to the greed of his neighbours while having to care for his people. The same applies in my view even for the gods. Freedom is for a man with nothing to loose, no family to care for, no property to defend.~
==BSAREV25 ~Have you studied the writings of Narvantial of Soubar on the origin of your goddess?~
==BSandr25~ I know them and I have also discovered my motherly bloodline going back to the beginning of time and including the likes of Quilue Veladorn among others.~
==BSAREV25 ~And now wearing Mystra's cloak yourself you are still content to follow a Bhaalspawn instead of claiming your own fortune?~
==BSandr25~ My way and <CHARNAME>'s way have been together since the day we met, Sarevok. If something like destiny really exists then it has brought us together. If I were after power than it would be our combined one to reshape Faerun for the good.~
==BSAREV25 ~Even if I have my doubt that you will be granted such a possibility it would be, eh, challenging, eh, to accompany you in that.~
==BSandr25~ (Smiles at Sarevok.) I am happy for you, my friend, I appreciate that the *new Sarevok* has found some interest to follow.~
==BSAREV25 ~No one has ever called me *my friend* the way you just did...~
EXIT

CHAIN
IF~Global("SanSarev","GLOBAL",16)~ THEN BSandr25 SeventhSarev
~The moth once again ventures to the flame?~
DO~SetGlobal("SanSarev","GLOBAL",17)~
==BSAREV25 ~ It is no longer the power this woman may possess or may even dare to reject, Sandrah, it is the woman herself that attracts the moth.~
==BSandr25~ Poetry issued by one who would have slaughtered bards by the hundred if they had refused to sing his praise. Everything is possible under the sun of Toril.~
==BSAREV25 ~Does it come so unexpected for you - or undesired?~
==BSandr25~Unexpected? No, somehow it is a logical consequence of the change I have observed in you since we travel together.~
==BSAREV25 ~And?~
==BSandr25~I think you are about to make a mistake, Sarevok. You do not know me well enough, you just see the courageous, poweful and unbiased woman who has no problems to accept a Bhaalspawn by her side and in her bed. Where do you think a way by my side will lead you?~
==BSAREV25 ~A constellation maybe similar to one that has once been - Midnight and Cyric. Yet, I have overcome my madness already and see clearer than the Prince of Lies could.~
==BSandr25~I have to admit that a man who has been to hell and back already cannot be easily scared off. Do not take this as a yes however.~
==BSAREV25 ~(Sarevok quickly steps up to her and lifts her chin for her to face him directly. His eyes seem to blister as he looks long into hers. She does not flinch under his intensive gaze nor does she reject the kiss he finally puts to her lips.)~ DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT


