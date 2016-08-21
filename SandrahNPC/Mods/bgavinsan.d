APPEND  CVSANDRJ
END

//Gavin Meeting

INTERJECT_COPY_TRANS ~B!GAVIN~ 0 HelloGav
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ Hello, Dawnbringer Gavin. Or maybe Gavin Mor of Ulgoth's Beard?~
==~B!GAVIN~ IF ~ InParty("CVSandr")~ THEN ~ Mylady, I must admit I am confused. I would surely remember if I had ever met someone as beautiful as you are (blushes).~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ Your memory does not betray you, we have never met. I was just guessing, the name Gavin is not that common in these areas.~
==~B!GAVIN~ IF ~ InParty("CVSandr")~ THEN ~ But then I am anything but famous, how can a lady such as you have heard of me -- oh, let me guess, you are from Waterdeep?~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ Right.~
==~B!GAVIN~ IF ~ InParty("CVSandr")~ THEN ~ Then my brother Jolun must have mentioned my name...but you? You have met Jolun...~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ You are right, I know your brother, but that is a different story for another day. Nice to meet you, Gavin (shakes Gavin's hand smiling.)~
==~B!GAVIN~ IF ~ InParty("CVSandr")~ THEN ~ Oh, eh, yes, thank you mylady, (blushes again), oh my, Jolun...I fear the worst...~
END

// Reed
INTERJECT_COPY_TRANS IF_FILE_EXISTS ~B!REED~ 12 SanMetreedGav
== ~B!GAVINJ~ IF ~InParty("CVSandr")~ THEN ~ This is Sandrah of Waterdeep, Elminster's own daughter.~
== IF_FILE_EXISTS~B!REED~ IF ~InParty("CVSandr")~ THEN ~ The beautiful Sandrah, Jolun has told stories on end about you as he met you at Waterdeep. The poor boy, you have really turned his head, and now I see why.~
== BSANDR IF ~InParty("CVSandr")~ THEN ~ Yes, we had a bit of fun up there, but nothing too serious. You have a pair of nice brothers, Reed.~
== IF_FILE_EXISTS~B!REED~ IF ~InParty("CVSandr")~ THEN ~ You enjoy travelling with Gavin then?~
== BSANDR IF ~InParty("CVSandr")~ THEN ~ Oh, yes, he is a wonderful companion and friend.~
== ~B!GAVINJ~ IF ~InParty("CVSandr")~ THEN ~ Sandrah is a caring and lovely person, Reed, and not the least arrogant or distant like you would expect from one of her heritage.~
== IF_FILE_EXISTS~B!REED~ IF ~InParty("CVSandr")~ THEN ~  Wow, Gavin, what do I hear there between your words, she has entangled you already just like Jolun.~
== ~B!GAVINJ~ IF ~InParty("CVSandr")~ THEN ~ (Blushes)~
== ~B!GAVINJ~ IF ~InParty("CVJenlig")~ THEN ~This is Jen'lig. Can you imagine that, Reed, I'm travelling in the company of a githyanki planewalker?~
==BJenli IF ~InParty("CVJenlig")~ THEN ~(Hiss) Too much talking on Prime Plane, too much family concept. Cadre is what counts.~
== IF_FILE_EXISTS~B!REED~ IF ~InParty("CVJenlig")~ THEN ~ A bit scary...but surely interesting...~
== ~B!GAVINJ~ IF ~InParty("CVJenlig")~ THEN ~She is exotic, for sure, but her race has a deep respect for loyalty and duty - even if they have no gods like Lathander to guide them.~
END

//Jolun if with Gavin
INTERJECT_COPY_TRANS IF_FILE_EXISTS ~B!JOLUN~ 23 SanJolInto
== ~BB!GAVIN~ IF~ InParty("CVSandr")~ THEN ~ And this beautyful lady...~
==  ~B!JOLUN~ IF~ InParty("CVSandr")~ THEN ~ ...is Sandrah of Waterdeep, the one and only...~
== ~BB!GAVIN~ IF~ InParty("CVSandr")~ THEN ~ Oh, yes, I forgot you had - I mean you are - I mean you met before.~
== BSANDR  IF~ InParty("CVSandr")~ THEN ~ (Kisses Jolun quickly) Hello, sweetheart, a place like this here is an endless source of inspirations for an artist like you.~
==  ~B!JOLUN~ IF~ InParty("CVSandr")~ THEN ~ Of course, sweetest priestess, all the faces - but mind one thing, the face of my goddess of Magic on the fresco in the ducal palace is already chosen. How great to meet the original now for a direct comparison!~
== BSANDR  IF~ InParty("CVSandr")~ THEN ~ You are painting my face onto that piece of art, Jolun?~
==  ~B!JOLUN~ IF~ InParty("CVSandr")~ THEN ~ Where it belongs, sweetheart. And what role would suit you better than that of the goddess you follow.~
== BDYNAH  IF~ InParty("CVSandr") InParty("Dynaheir")~ THEN ~ Prophetic, I'd dare to say.~
== BXANNN IF ~ InParty("CVSandr") !InParty("Dynaheir") InParty("XAN")~ THEN ~ Prophetic, I'd dare to say.~
== ~BB!GAVIN~ IF~ InParty("CVJenlig")~ THEN ~ And this exotic creature is Jen'lig, a githyanki planewalker.~
==  ~B!JOLUN~ IF~ InParty("CVJenlig")~ THEN ~ I will make a sketch of her immediately. She must be on that fresco as well. A thrilling experience indeed.~
==BJenli IF ~InParty("CVJenlig")~ THEN ~(Hiss) Make conterfeit is manling silly concept. Keep picture in mind if need to remember.~
END


//Gavin First
CHAIN
IF ~ Global("SanGavBant","GLOBAL",1)~ THEN BSANDR GavJolu
~ (Gavin has made several attempts during the last hour to approach Sandrah, but has always decided otherwise at the last moment.)~
= ~Gavin, I guess you surely like to know about my encounter with your brother?~
DO ~  SetGlobal("SanGavBant","GLOBAL",2)RealSetGlobalTimer("SanGavLATime","GLOBAL",600)~
==~BB!GAVIN~ ~Um, ah, I do not want to bother you too much, mylady.~
==BSANDR ~ Gavin, (laughs lightly), I am a healer. I cannot watch while people suffer. ~
= ~ So -. Your brother is a talented artist and he did a bit of work for the academy at Waterdeep last year. And yes, of course he advanced me the very moment I caught his eye.~
==~BB!GAVIN~ ~I cannot blame him for that...I hope he did not...embarrass you too much.~
==BSANDR ~ Oh, Gavin, do not think too badly of your brother. He is straight forward and upright, something you could need maybe now and then. Yes, his manners are not extremely gentlemanlike, but he is not a wrong person at all.~
==~BB!GAVIN~ ~I am glad, mylady, you take it humourously and do not blame him too much.~
==BSANDR ~ What is there to blame? He met a young beautiful girl and started to flirt a bit. I have suffered worse, dear Gavin. Your brother has his charm and I enjoyed his attention for what it was, a little flirt.~
==~BB!GAVIN~ ~Maybe I am just old fashioned and you are a modern girl, playing with the boys hearts like that.~
==BSANDR ~ You worry too much, Gavin. I am not toying with boys hearts like that. But I like to have a little fun sometimes just like your brother does. We met on equal terms without spectaculous expectations and we enjoyed it. That is all. No tragedy, nobody hurt, no broken hearts.~
==~BB!GAVIN~ ~Then I was mistaken, mylady, I did not think you step through life that lightly.~
==BSANDR ~ You are mistaken now! I do not dance through life like a careless plaything. But let seriousness reign where it is necessary, and have some fun where it is allowed.~
==~BB!GAVIN~ ~And once again I have made a complete fool of myself, I guess.~
==BSANDR ~ (Sandrah touches Gavin's cheek gently.) Not at all, my friend. You only showed what a caring and goodhearted person you are. Just do not forget the lighter sides of life exist as well.~
EXIT

//Gavin Second

CHAIN
IF ~ Global("SanGavBant","GLOBAL",3)~ THEN BSANDR GavEnq1
~ Are those furrows of sorrow, Gavin, or of deep thought.~
DO ~  SetGlobal("SanGavBant","GLOBAL",4)RealSetGlobalTimer("SanGavLATime","GLOBAL",600)~
==~BB!GAVIN~ ~ Probably the second, mylady Sandrah, I was thinking if you could help me a bit with a little problem. ~
==BSANDR ~ Sure, Gavin, anytime. Let us take a seat over there, this stump looks like a natural seat to me.~
==~BB!GAVIN~ ~ Thank you,..eh, yes, eh.., mylady you know <CHARNAME> a bit longer and better, I assume.~
==BSANDR ~ Not that long and not so much better, I have to confess. ~
==~BB!GAVIN~ ~ But you are a kind of friend and counselor to her, if I observe right.~
==BSANDR ~ I try my best to be both, yes. ~
==~BB!GAVIN~ ~ You counsel her quite well in matters of fighting and finding our way across the Sword Coast.~
==BSANDR ~ And? ~
==~BB!GAVIN~ ~ I was wondering if your counselling goes sometimes beyond that? ~
 ==BSANDR ~ I would not venture to advise her in matters I am not too much acquainted with myself. ~
==~BB!GAVIN~ ~ Eh, like what, mylady?~
==BSANDR ~ Like those, dear Gavin, you like to steer at right now.~
==~BB!GAVIN~ ~ (Blushes) What do you think I am steering at, mylady. ~
==BSANDR ~ (Laughs) Bees and honey and why the flowers grow.~
==~BB!GAVIN~ ~(Blushes even deeper) Eh, we are falling behind the group a bit, mylady, eh, let us catch up with them again... ~
EXIT

//Gavin Third

CHAIN
IF ~ Global("SanGavBant","GLOBAL",5)~ THEN BSANDR GavEnq2
~ Bees, Gavin, or Flowers?~
DO ~  SetGlobal("SanGavBant","GLOBAL",6)RealSetGlobalTimer("SanGavLATime","GLOBAL",600)~
==~BB!GAVIN~ ~ You are joking at my indecision again, mylady, and rightfully so. I have you as the best example for the opposite. I am not yet too old to learn.~
==BSANDR ~ Actually it is my turn to apologise, dear Gavin. My behaviour is clearly unfair. So you want to talk about relationships, that go deeper than friendship, right.~
==~BB!GAVIN~ ~ You can be both cruel and charming, mylady, but as always, you are right.~
==BSANDR ~ There is no other man in <CHARNAME>'s life at the moment.~
==~BB!GAVIN~ ~ Eh, well, straight to the heart of the matter, Sandrah, as usual. ~
==BSANDR ~ Life is short. So the next answer is, no. ~
==~BB!GAVIN~ ~ No to what?~
==BSANDR ~ No, we did not have any talk about you, girl's talk or whatever you like to call it. She did not express a specific interest for you nor did she ever mention anything of the opposite. ~
==~BB!GAVIN~ ~ Hm, not at all. I am maybe not noticeable enough. ~
==BSANDR ~ Or maybe you over estimated my role as her confidant in these matters, Gavin. As I said earlier, I am not the expert in the matters of the heart myself. ~
==~BB!GAVIN~ ~ You said that, yes, mylady, but honestly this is a bit hard to believe - I mean, eh, sorry I am not calling you a liar - but coming from the big City of Splendor and looking like the most beautiful girl on the Sword Coast, well, it is hard to believe you had not lovers by the dozend.~
==BSANDR ~ Maybe I am a bit too choosing there. But you have the clear proof now, I am not the expert in this matter that you seek. Especially not if my own might be involved here as well. Follow your own heart, Gavin, not my advice. That is my advice in that.~
==~BB!GAVIN~ ~ You are a competent counselor, mylady, believe it or not. You have just told me what I should have told myself already. But how is your own heart involved here...Oh, please forgive me...(Rushes away redfaced.)~
EXIT

// Gavin Fourth Sandrah PC Relationship

CHAIN
IF ~ Global("SanGavBant","GLOBAL",7)~ THEN BSANDR GavEnq3
~So, have you taken all your courage together, Gavin, and spoken to <CHARNAME>? I saw you talking together earlier.~
DO ~ SetGlobal("SanGavBant","GLOBAL",8)~ 
==~BB!GAVIN~ ~ Well, yes. She is an adorable woman.~
==BSANDR ~ Yes, she is.~
==~BB!GAVIN~ ~ Oh, Sandrah, so of course are you, I mean, I did not want to...~
==BSANDR ~ Gavin, Gavin. We are not talking about me right now. How did she react? What did she say? You seem to be quite happy.~
==~BB!GAVIN~ ~ Well, yes, I am happy. But what did she say? To be honest, I think I was too nervous to remember it now. All I recall is that it felt right and she is such a kind and wonderful soul. I have the feeling she really accepts me for what I am. And she likes me.~
==BSANDR ~ That is wonderful.~
==~BB!GAVIN~ ~ Oh, yes it is. I can talk to her about everything that is in my heart and on my soul, just like I can with you...~
==BSANDR ~ Yes, Gavin? Please go on...~
==~BB!GAVIN~ ~ Hm, it is strange...what I just said...what I just felt. I mean to say to you that I can talk to her as open as I do it with you. That is a strange thing to say. In this situation.~
==BSANDR ~ In this situation?~
==~BB!GAVIN~ ~ I mean to talk with you about my feelings - for another woman...and you said some time back that your own heart was also...I..~
==BSANDR ~ I told you to follow your heart as I follow mine. ~
==~BB!GAVIN~ ~ I do not want to hurt you, Sandrah, you mean very much to me, your friendship, your undertstanding. ~
==BSANDR ~ Gavin, you do not hurt me by telling me you love <CHARNAME>. I am happy for you, it is wonderful. Do not worry about me, my friend. Come on, I want to tell you something about her...(Sandrah has taken Gavin's hand and they walk away happily chatting - about you, or at least that is what you guess.)~
EXIT


CHAIN
IF ~ Global("SanGavkilBant","GLOBAL",3)~ THEN BSANDR GavEnq4
~ (Smiles invitingly as Gavin approaches her in his usual hesitant way.)  ~
DO ~ SetGlobal("SanGavkilBant","GLOBAL",4)~
==~BB!GAVIN~ ~ M'lady Sandrah?~
==BSANDR ~ Sandrah, Gavin, just plainly Sandrah. We are comrades in arms, friends.~
==~BB!GAVIN~ ~ Is that how you see me, hm Sandrah, as a friend.~
==BSANDR ~ Yes, my friend. So what is bothering you at this moment?~
==~BB!GAVIN~ ~ Your perception of the fighting we do, of all this killing. I have observed you - I mean as far as the heat of a battle allows such a thing. You are quite different from all other fighters I have observed, apart from the fact of course that you are better as any I have seen before.~
= ~ I know you will not take it as a compliment of course. You do not seem proud of what you do in battle, not like others of our party.~
==BSANDR ~ Philosophy for philosophy's sake, my friend, or real interest in the one you want to discuss it with?~
==~BB!GAVIN~ ~ Yes. - I mean, yes, both. I want to learn about your motivation. ~
==BSANDR ~ I do what needs to be done. Too easy? Well, it would sum it up quite well nevertheless. But to satisfy you, I must add more detail, right?~
= ~ Fighting itself is an art. Do not look at me so sceptical, my friend. I really mean what I say. It is an art involving both the body and the mind. It includes force and power, but also tactics, and a bit of reading your enemy's mind in the blinking of an eye. All of that is challenging and arousing. But we both know, it does not end with that.~
= ~ You could say, the arena would be the place for me. It is not. It is a show and a carnival at best, or a bloody exploit at worst. It has no worthwhile motivation. ~
==~BB!GAVIN~ ~ You hate the killing, right Sandrah. Somebody looses his one and only life at the end of the challenge and that overshadows everything else.~
==BSANDR ~ You understand it well. We can congratulate ourselves in the end, saying that we once again have crushed evil. And that is true most of the time, and it may be satisfactory for some of us.~
==~BB!GAVIN~ ~ Not enough for you? Is that not a worthy goal, Sandrah.~
==BSANDR ~ It would be, if our definition of evil is true and it would be, if there would exist no other means to stop evil. But you know as well as I know it is not so, there is not only black and white in this world - unless you have the view of a helmit.~
==~BB!GAVIN~ ~ You were right. You do what needs to be done. But many questions are left open. It soothes me that I am not the only one that is seeking for answers where many people stop at the first idea that pleases their mind. ~
==BSANDR ~ You are right, my friend. I am a seeker. I am the daughter of the most famous seeker of the Realms. I can assure you that even he still has a lot of questions. But one great thing I have learned from him is that we nevertheless can do a lot of things and be sure that they are at least not wrong.~
==~BB!GAVIN~ ~ Thank you for that, Sandrah. - My friend.~
EXIT

// Gavin Secret

CHAIN
IF ~ Global("SangavNoHurt","GLOBAL",1)~ THEN BSANDR GavHur1
~ Gavin?~
DO ~ SetGlobal("SangavNoHurt","GLOBAL",2)~
==~BB!GAVIN~ ~ Yes, M'..yes, Sandrah, my friend?~
==BSANDR ~ Gavin, you know that I care about <CHARNAME> very deeply.~
==~BB!GAVIN~ ~ Eh, yes, I..I observed as much already (Blushes.)~
==BSANDR ~ Gavin, that is not exactly what I wanted to detail right now. I was aiming at something else, my dear friend.~
==~BB!GAVIN~ ~ *My dear friend*?~
==BSANDR ~ I do not want <CHARNAME> to be hurt. I mean hurt by you.~
==~BB!GAVIN~ ~ I would never do that! I respect and love her too much to ever do that!...~
==BSANDR ~ Hm, you love her, secret lover. Do not worry, your secret is safe with me, until you decide to tell her yourself. So maybe I was just mistaken and I need to apologize for the doubts I was having about you just moments ago.~
==~BB!GAVIN~ ~ Sandrah, you are so honest, and caring, and lovely, eh, you have no reason to apologise for your suspicion. I guess you are referring to that little encounter at my old home in Beregost.~
==BSANDR ~ This, yes, and some others, and the whole reason why you joined us - initially. But I admit, everybody has the right to have some little secret. If you tell me that <CHARNAME> will not be hurt, I have no right to mistrust you and insist any further.~
==~BB!GAVIN~ ~ You are a real friend and you understand well. There is a time to tell her about an episode in my past and I hope I will find the right moment and the right words. Thank you so much for your trust. (Gavin gives Sandrah a light kiss on the forehead.)~
EXIT

CHAIN
IF ~ Global("SanGavMorn","GLOBAL",1) ~ THEN BSANDR SanGavMor1
~ Hailing the sunrise and Lathander, Gavin?~
DO ~ SetGlobal("SanGavMorn","GLOBAL",2) ~
==~BB!GAVIN~ ~ You are right, Sandrah, such is the duty of a Morninglord. But what about you? Mystra does not require a morning service from her priests if I know correctly.~
==BSANDR ~ No, it is part of my own weird habits. I just like these calm hours, with the world awakening, the birds rising and  then the sun. The prospect of a day ahead that can bring so much - just about everything.~
==~BB!GAVIN~ ~ (Smiles) Almost the view of a priest of Lathander. I have already realised that you have this optimistic view on life - I mean that in a very positive way. You are not optimistic in a foolish or ignorant way, still you always try to see the positive side of things. Hm, I am probably not expressing myself very well.~
==BSANDR ~ (Smiles back) That is just how I am - not so very easy to define in a few words, I guess.~
==~BB!GAVIN~ ~ Like getting to bed late, getting up early, and generally doing things more or less just how you like them to do.~
==BSANDR ~ That is most likely due to my upbringing by my always busy father. There was never this *bedtime for the little one* or *tidy your room now* or any of that organised lifestyle.~
==~BB!GAVIN~ ~ But your father has surely not neglected you, Sandrah?~
==BSANDR ~ Oh no, not at all. He was always there for me and caring and loving. We just never lived this routine type of life. Every day was different and a new adventure. Nothing was set, a new experience could be gained any moment. Even your judgement on a thing, person or situation could change any time - the praised hero turned out to be the villain, the apparently mighty ruler just a puppet on somebody's strings.~
==~BB!GAVIN~ ~ It explains quite a bit about you. Your flexible views and your tolerant lifestyle. But I observe that you still follow some rules, even if they might be not be so strict and apparent than those of Helm and Lathander.~
==BSANDR ~ In this aspect we are very similar, Gavin. Just like you, I try to do what is good - and just like you I can spend hours in trying to explain what *good* really means, or if it could be defined at all.~
==~BB!GAVIN~ ~ You are a seeker, Sandrah, and one with open heart and an open mind. What I envy in you is the courage you show in that. I am sometimes reluctant to open a door as it may hide something I'd rather not find. You would simply open it because it is the only way to find out.~
==BSANDR ~ (Laughs) But not without having my hammer ready to strike if necessary...But, let us hurry now to get the breakfast ready, those sleepyheads are beginning to stir.~
==~BB!GAVIN~ ~ You are right. I forget time and space when I talk to you, Sandrah. I look forward already to another morning.~
EXIT

CHAIN
IF ~ Global("SanGavMorn","GLOBAL",3) ~ THEN BSANDR SanGavpray
~ Sorry, Gavin, I did not see you do your prayer.~
DO ~ SetGlobal("SanGavMorn","GLOBAL",2) ~
==~BB!GAVIN~ ~ Sandrah, please stay. You did not disturb me, actually this type of prayer is really more a kind of contemplation for me than a religious service. I am not that type of fanatic.~
==BSANDR ~ But you rise before sunrise to greet your god every morning.~
==~BB!GAVIN~ ~ Yes, but we talked about that before, in a way that is also a kind of preparation for the coming day. But you have hopefully observed that I am always willing to put my prayers aside when I can have one of our talks instead.~
==BSANDR ~ You are about to give me a guilty conscience, dear.~
==~BB!GAVIN~ ~ Not my intention at all. Our relationship gives me as well insight and reassurance, the same things I seek in my prayers. But let us not always talk about me alone. I never see you praying to your goddess.~
==BSANDR ~ Mystra is not one who can be petitioned with prayer, nor does she grant me any insight when I kneel before her as her disciple. Following her is expressed through what you do and think any moment.~
==~BB!GAVIN~ ~ I would say that is true for Lathander as well, the service is one thing but the obedience of the rules and the way are a permanent duty for his clerics.~
==BSANDR ~ Mystra's way is not so obvious as it is not expressed by rules to obey and such. You often have to seek in in your heart and your consciousness.~
==~BB!GAVIN~ ~ What I know of Mystra is, that she was human once, an adventurer actually, even if you might call her a crusader as well.~
==BSANDR ~ You hit the point exactly, Gavin. (Sandrah has taken his hand and sat down with him. She smiles, looking intensively at Gavin.) Her name was Midnight, and she is really my guidance and my inspiration.~
= ~ It has taken me long to decide on that way, as you know I am not very good at obedience and following rules. It was her example and her way of making her choices rather than my interest in her arts that convinced me. And besides that my natural instinct to heal.~
==~BB!GAVIN~ ~ Is it right to say that your goddess' human period is more important to you than the goddess she became?~
==BSANDR ~ A valid observation, my friend. By the way, Midnight was my grandmother.~
EXIT

CHAIN
IF ~ Global("SanCldKBo","LOCALS",4) ~ THEN BSANDR SanGavSpiMin
~ Worry not, we will go through this together, my hero. (Sandrah presses Gavin's hand reassuringly for a moment.)~
DO ~ SetGlobal("SanCldKBo","LOCALS",5) ~
==~BB!GAVIN~ ~ How can you call this trembling fool at your side your *hero* - I am so ashamed you see me this way.~
==BSANDR ~ These spiders are extremely dangerous and nasty, Gavin, and I will not even try to convince you they are not. I call you hero, because I have witnessed you facing foes of all nature before with courage. And I know I can rely on you down here as well, even being a greater hero by facing those monsters and your own phobia at the same time.~
==~BB!GAVIN~ ~ I suppose you're right once again. It simply has to be done and we have to go on. Without that book <CHARNAME>'s quest will fail and I will surely not take the blame for that.~
==BSANDR ~ Hero.~
==~BB!GAVIN~ ~ For you.~
EXIT


CHAIN
IF ~ Global("SanPCGavMar","GLOBAL",1) ~ THEN BSANDR SanGavMar1
~ Congratulations. I have seen the ring, let me be the first to wish you all the best.~
DO~ SetGlobal("SanPCGavMar","GLOBAL",2) ~
==~BB!GAVIN~ ~ Thank you so much, Sandrah, your wishes mean so much to me. Your role to finally make me propose to <CHARNAME> was the most important one. You were my advisor as well as hers.~
==BSANDR ~ I hope I was and will remain more to each of you than just the counselor. I love you both and that will always be so.~
==~BB!GAVIN~ ~ I know you do and then again it was you who always assured me to follow my heart. You made it easy and complicated at the same time.~
==BSANDR ~ You do not need to explain, Gavin, I understand you better than maybe you yourself do. You are a family man, with your folks at home as well as now with Lanie and <CHARNAME>. That will not change my feelings for you two, it just makes me love you more. Today you have proven yourself worth of her.~
==~BB!GAVIN~ ~ (Gavin kisses Sandrah, overwhelmed by his own feelings for her.) Yes, it is true, I love you Sandrah. And you made it, that I feel nothing wrong with it.~
== BSANDR ~ (She takes Gavin's hand.) Let us go and see the bride. I must congratulate her, too.~
END
++ ~ (Show Sandrah your ringfinger and smile.)~ + SanGavMar2
++ ~ Hands off from my man, sweetheart! (Laugh at her.)~ + SanGavMar2
++ ~ You would make a wonderful pair, you two. Just as Gavin and me will. (Kiss Gavin.)~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~+ SanGavMar2

CHAIN
IF ~~THEN BSANDR SanGavMar2
~ Oh I am so happy for you, my love. I was starting to get a bit nervous thinking all my counselling on him would be in vain. (She blows a kiss at Gavin.)~
==~BB!GAVIN~ ~ We still will need your advice now, there is so much to be planned and discussed. The wedding, my family, Lanie...~
== BSANDR ~ Once you start to move it is hard to stop you, Gavin Mor. But in all your joy do not forget that there is still a quest to be finished before all of that may happen.~
END
++ ~ What would we do without our counselor, Gavin! (Give Sandrah a kiss before you fall into Gavin's strong and welcoming arms.)~
EXIT

//Gavin if PC Male
CHAIN
IF ~ Global("SanGavLA","GLOBAL",2)~ THEN BSANDR GavEnqM1
~ Are those furrows of sorrow, Gavin, or of deep thought.~
DO ~  SetGlobal("SanGavLA","GLOBAL",3) RealSetGlobalTimer("SanGavLATime","GLOBAL",3600)~
==~BB!GAVIN~ ~ Probably the second, mylady Sandrah, I was thinking if you could help me a bit with a little problem. ~
==BSANDR ~ Sure, Gavin, anytime. Let us take a seat over there, this stump looks like a natural seat to me.~
==~BB!GAVIN~ ~ Thank you,..eh, yes, eh.., mylady you know <CHARNAME> a bit longer and better, I assume.~
==BSANDR ~ Not that long but...mhm..yes, I have to confess. ~
==~BB!GAVIN~ ~ But you are a kind of close friend and counselor to <PRO_HIMHER>, if I observe right.~
==BSANDR ~ I try my best to be both, yes. ~
==~BB!GAVIN~ ~ You counsel <PRO_HIMHER> quite well in matters of fighting and finding our way across the Sword Coast.~
==BSANDR ~ And? ~
==~BB!GAVIN~ ~ I was wondering if your counselling goes sometimes beyond that? ~
 ==BSANDR ~ I would not venture to advise anyone in matters I am not too much acquainted with myself. ~
==~BB!GAVIN~ ~ Eh, like what, mylady?~
==BSANDR ~ Like those, dear Gavin, you like to steer at right now.~
==~BB!GAVIN~ ~ (Blushes) What do you think I am steering at, mylady. ~
==BSANDR ~ (Laughs) Bees and honey and why the flowers grow.~
==~BB!GAVIN~ ~(Blushes even deeper) Eh, we are falling behind the group a bit, mylady, eh, let us catch up with them again... ~
EXIT

CHAIN
IF ~ Global("SanGavLA","GLOBAL",4)~ THEN BSANDR GavEnqM2
~ Bees, Gavin, or Flowers?~
DO ~  SetGlobal("SanGavLA","GLOBAL",5) RealSetGlobalTimer("SanGavLATime","GLOBAL",4600)~
==~BB!GAVIN~ ~ You are joking at my indecision again, mylady, and rightfully so. I have you as the best example for the opposite. I am not yet too old to learn.~
==BSANDR ~ Actually it is my turn to apologise, dear Gavin. My behaviour is clearly unfair. So you want to talk about relationships, that go deeper than friendship, right.~
==~BB!GAVIN~ ~ You can be both cruel and charming, mylady, but as always, you are right.~
==BSANDR ~ There is no loving woman in your life at the moment?~
==~BB!GAVIN~ ~ Eh, well, straight to the heart of the matter, Sandrah, as usual. ~
==BSANDR ~ Life is short. So the next answer is, no. ~
==~BB!GAVIN~ ~ No to what?~
==BSANDR ~ No, I do not think you are clumsy or stupid or whatever you like to call it. I know my presence disturbs you a bit and it attracks you at the same time. ~
==~BB!GAVIN~ ~ Hm, yes disturbing... in a sweet kind of way...Oh, Sandrah, I feel almost naked to your observant eye when I thought I am maybe not noticeable enough for you. ~
==BSANDR ~ Or maybe you over estimated my worldliness in these matters, Gavin. As I said earlier, I am not the expert in the matters of the heart myself. ~
==~BB!GAVIN~ ~ You said that, yes, mylady, but honestly this is a bit hard to believe - I mean, eh, sorry I am not calling you a liar - but coming from the big City of Splendor and looking like the most beautiful girl on the Sword Coast, well, it is hard to believe you had not lovers by the dozend.~
==BSANDR ~ Maybe I am a bit too choosing there. But you have the clear proof now, I am not the expert in this matter that you seek. Especially not if my own heart might be involved here as well. Follow your own heart, Gavin, not my advice. That is my advice in that.~
==~BB!GAVIN~ ~ You are a competent counselor, mylady, believe it or not. You have just told me what I should have told myself already. But how is your own heart involved here...Oh, please forgive me...(Rushes away redfaced.)~
EXIT

CHAIN
IF ~ Global("SanGavLA","GLOBAL",6)~ THEN BSANDR GavEnqM3
~So, have you taken all your courage together, Gavin, and spoken to <CHARNAME>? I saw you talking together earlier.~
DO ~ SetGlobal("SanGavLA","GLOBAL",7) RealSetGlobalTimer("SanGavLATime","GLOBAL",3600)~
==~BB!GAVIN~ ~ Well, yes. <PRO_HESHE> is a very special person.~
==BSANDR ~ Yes, <PRO_HESHE> is.~
==~BB!GAVIN~ ~ Oh, Sandrah, so of course are you, I mean, I did not want to...~
==BSANDR ~ Gavin, Gavin. We are not talking about me right now. How did <PRO_HESHE> react? What did <PRO_HESHE> say? You seem to be quite happy.~
==~BB!GAVIN~ ~ Well, yes, I am happy. But what did <PRO_HESHE> say? To be honest, I think I was too nervous to remember it now. All I recall is that it felt right and <PRO_HESHE> is such a kind and wonderful soul. <CHARNAME> loves you - but says <PRO_HESHE> does not own you. Whatever that means...~
==BSANDR ~ That is wonderful. I knew <PRO_HESHE> would say that.~
==~BB!GAVIN~ ~ Oh, yes it is. I think <CHARNAME> is really what I would call my friend. I can talk to <PRO_HIMHER> about everything that is in my heart and on my soul, just like I can with you...~
==BSANDR ~ Yes, Gavin? Please go on...~
==~BB!GAVIN~ ~ Hm, it is strange...what I just said...what I just felt. I mean to say to you that I can talk to <CHARNAME> as open as I do it with you. That is a strange thing to say. In this situation.~
==BSANDR ~ In this situation?~
==~BB!GAVIN~ ~ I mean to talk with you about my feelings - and you are loved by another ...and you said some time back that your own heart was also...I..~
==BSANDR ~ I told you to follow your heart as I follow mine. ~
==~BB!GAVIN~ ~ I do not want to hurt you, Sandrah, you mean very much to me, your friendship, your undertstanding. ~
==BSANDR ~ Gavin, you do not hurt me by telling me you love me. Come on, I want to tell you something about us...(Sandrah has taken Gavin's hand and they walk away happily chatting - about you and him and herself - or at least that is what you guess.)~ DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT

CHAIN
IF ~ Global("SanGavLA","GLOBAL",8)~ THEN BSANDR GavEnqM4
~Gavin, my love.~
DO ~ SetGlobal("SanGavLA","GLOBAL",9) RealSetGlobalTimer("SanGavLATime","GLOBAL",3600)~
==~BB!GAVIN~ ~ Sandrah, my lady..eh..my love...~
==BSANDR ~ You seem to be uncertain about something once again. Is it about us?~
==~BB!GAVIN~ ~ Well, yes...mmh..it is not easy.~
==BSANDR ~ Let me try to help you, my sweetheart. Our relationship is not what you expected in your life at all.~
==~BB!GAVIN~ ~ You can say that - I mean...in a pleasant kind of way, you are so wonderful and warm hearted and beautiful, everything I could ever dream of...~
==BSANDR ~ But...~
==~BB!GAVIN~ ~ What do you mean?~
==BSANDR ~ There needs to be a *but*, in the way you started this conversation.~
==~BB!GAVIN~ ~ It is so hard to express my feelings of it, I am not even sure I completely understand myself.~
==BSANDR IF~Global("SanRomPath","Global",1)~THEN~ (She kisses Gavin dearly.) I sure understand you. A young adventuress in love with you and loving another man as well is not really what a family man like you really ever dreamed of. I cannot help it, those things can never be planned.~
==BSANDR IF~Global("SanRomPath","Global",2)~THEN~ (She kisses Gavin dearly.) I sure understand you. A young adventuress in love with you and loving another woman as well is not really what a family man like you really ever dreamed of. I cannot help it, those things can never be planned.~
==~BB!GAVIN~ ~ Still your own grandmother, the heroine Midnight you estimate so high, did the same thing with Cyric...~
==BSANDR ~ Even if they never settled down and started a family. But that is a different story. They sure never planned what would become of themselves, they just lived their life and their love.~
==~BB!GAVIN~ ~ And you propose the same for us, Sandrah, to just...hm...accept it and let it happen?~
==BSANDR ~ For the moment, yes. We have no way to make much of a plan for our future right now. Following <CHARNAME> we both have accepted there will be no such thing as a settled lifestyle or a family, at least not as long as our quest is ongoing. But that does not prevent us to enjoy the love we have found.~
==~BB!GAVIN~ ~ As always, my wonderful woman, you are right. Unsettling, disturbing, confusing - so different - and probably that is what attracts me, just like the madman Cyric was attracted by your grandmother.~
==BSANDR ~ Cyric was no madman in his human form as he loved Midnight, and nor are you. (Any answer Gavin may have had got muffled by the passionate serie of kisses from Sandrah's longing mouth.)~  DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT

CHAIN
IF ~ Global("SanGavLA","GLOBAL",10)~ THEN BSANDR GavEnqM5
~Gavin, Mystra does not dictate chastity to her servants.~
DO ~ SetGlobal("SanGavLA","GLOBAL",11) RealSetGlobalTimer("SanGavLATime","GLOBAL",3600)~
==~BB!GAVIN~ ~ Sandrah, my lady..eh..my love...(Blushes.) Nor does Lathander require it of his priests...~
==BSANDR ~ It is your past, Gavin, right? Your former experiences? They were not nice ones, I guess. Do you mind to tell me about it?~
==~BB!GAVIN~ ~ Now...yes...there is no reason not to be open to you, my sweetest love. I know you will listen and understand.~
= ~ I have a daughter. She's five years old, her name is Lanie, and she lives with her mother. I am adventuring to raise money for her education.~
==BSANDR ~ (Sandrah has taken Gavin's hand to reassure him that nothing is wrong due to his delivery.) That is unexpected - like anything else in our relationship. You love your daughter dearly, Gavin, your eyes give you away. But not her mother.~
==~BB!GAVIN~ ~ Lanie means everything to me. I met Lanie's mother when I was nineteen, and I'd only been a priest a short time. I was too naïve to suspect that the woman was not as honest with me as I was with her, or to doubt that her interest in me was genuine. Anyway, Lanie was born some seven months after Miranda and me got acquainted.~
==BSANDR ~ But you took Lanie as your daughter anyway? Sure you did, I know you well enough.~
==~BB!GAVIN~ ~When Lanie was born, I acknowledged her as mine, and prayed that Miranda's infidelity was behind her. Even so, I could not bring myself to marry her. I sincerely wanted to be a father, so I was willing to endure the lies in order to become one. And fatherhood has been rewarding. I could not be closer to Lanie if she were my own flesh and blood. ~
==BSANDR ~ I do not doubt that. Nevertheless the little family you had wished for did not come out of that. What happened?~
==~BB!GAVIN~ ~ I would be with them, still, had Miranda's... desire for men other than me been satisfied. After Lanie's birth, I had been prepared to forget any past unpleasantness. I would have gladly forgotten my hurt and married her and would have happily enlarged our family further. But she never again welcomed my touch. I took it as the distance some new mothers place between themselves and men, and did not realize the full scope of the matter. Her distaste for male company extended only as far as my own person, I later found out. Her affection was free enough with others while I was away on temple business. She would leave Lanie with a neighbor and disappear for days at a time. ~
=~ Finally, Miranda pushed me too far. She brought a stranger into the bed we shared out of habit. I returned from a journey and our neighbor Roe asked after a new boarder he had seen many times in the garden with Lanie and Miranda. After I found her out, I left the house. Now, I only return when Lanie's mother is gone, so that Lanie could be with her father, not some stranger. ~
==BSANDR ~ Poor good hearted man, it never could get in the way between you and Lanie, I assume.~
==~BB!GAVIN~ ~ I am the only father Lanie has known. I have never regretted my decision to become a father for a moment, though I do wish I had made wiser choices about her mother. By claiming her as my daughter, I have committed myself to caring for her for the rest of my life. I will never break that promise. I tried to tell her how much I love her, and I visit her whenever I can. She still calls me "Daddy."~
==BSANDR ~ Know this, Gavin, I admire your behaviour in the past and in the present - and I love you for it. It will be our common goal from now on to find a way to get your fatherhood and our love for each other in perspective to our sworn mission for <CHARNAME>. ~
==~BB!GAVIN~ ~ Oh, Sandrah...I..I have no words,...you are just...it is so wonderful, what you say.~
= ~ I love you.~
==BSANDR ~ (Sandrah kisses Gavin long and passionately) Your past does not prevent you from showing me your love tonight, as a healer I can assure you there will be no unpleasant surprises from me.~
==~BB!GAVIN~ ~ But so many pleasant ones...~ DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() RestParty()~
EXIT

CHAIN
IF ~ Global("SanGavLA","GLOBAL",12)~ THEN BSANDR GavEnqM6
~You look concerned, Gavin, how can I cheer you up a bit?~
DO ~ SetGlobal("SanGavLA","GLOBAL",13) RealSetGlobalTimer("SanGavLATime","GLOBAL",3600)~
==~BB!GAVIN~ ~ There is no need to cheer me up, your sole presence is enough for that. But you can lift something from my heart and I am sure you will do it. You know that Lanie means everything to me. What we are doing is dangerous. I know that. If I die, and you survive, would you do something for me?~
==BSANDR ~ Anything you would ask me for, be assured.~
==~BB!GAVIN~ ~ I want you to take a message to both Lanie and to Miranda, her mother. I want you to tell Lanie that I love her, and that I'm very proud of her. Tell her that I did not want to leave her, but I was doing something I believed in. If you can get it off my hand, give her my ring. But the most important thing is that she knows that I love her very, very much. ~
==BSANDR ~  What will happen to the girl herself?~
==~BB!GAVIN~ ~ I'd like you to remind Miranda of our agreement that my brother Gordon would stand as Lanie's godfather, if anything happened to me. She agreed to this years ago, but I'm not sure she remembers. Gordon is older than me, but his youngest is even younger than Lanie. He is a fine man, and a good father. If Miranda needs any help, as far as Lanie is concerned, she can count on Gordon and his wife, Emma, whenever she needs it.~
= ~ There is also the matter of Lanie's education. She is supposed to be enrolled at the temple of Oghma in Baldur's Gate. Her education is going to cost over a thousand gold pieces. That's why I took up adventuring in the first place.~
==BSANDR ~  Where do I find the child and her mother?~
==~BB!GAVIN~ ~Miranda and Lanie live in Beregost, not far from the Travenhurst Manor, in a house that shares a back garden with Roe and Mirianne's house.~
==BSANDR ~  You have my vow that I will do as you requested, just in case. And you have my complete commitment that I will do anything to prevent the necessity for this arrangement to ever arise.~
EXIT

CHAIN
IF ~ Global("SanGavLivDream","LOCALS",1)~ THEN BSANDR GavMrn2
~ Good morning, my darling, Gavin Mor.~
DO ~ SetGlobal("SanGavLivDream","LOCALS",2)~
==~BB!GAVIN~ ~Good morning, my ever cheerful love.~
==BSANDR ~ If you call me that, it means the situation does not deserve such an attitude?~
==~BB!GAVIN~ ~ Mh, yes...no...I mean - it is wonderful, this life with you - every new day together and such. But it is also every day a new danger and new challenges.~
==BSANDR ~ You yearn for a bit of quietude, a bit of rest, probably a bit of time with Lanie as well.~
==~BB!GAVIN~ ~ Not to forget yourself with us, of course. Yes, you read my thoughts well, Sandrah.~
==BSANDR ~ We have talked about it before and you know that I like the perspective...~
==~BB!GAVIN~ ~ ...but with every day it moves farther and farther away from our reach. This quest we follow already appears to be endless, and the more we move on the more I have the feeling that much more will still reveal itself.~
==BSANDR ~ You are right. This goes beyond any idea the little girl that left Waterdeep not so long ago had ever imagined. Even with a glimpse into the schemes of the Realms I could get when travelling with my father, I had never anticipated I would one day - hm, play a part in the Realm's history.~
==~BB!GAVIN~ ~ You have hit the mark exactly, sweetheart and counselor. We have become an important group in the history currently written for the Realms. And you and <CHARNAME> appear to meet your fate here in some way. While an insignificant Dawnbringer tries his best to keep pace with you.~
==BSANDR ~ My heroic partner (she takes both his hands with a smile), you do that quite well. But see, none of us were born into this, we all grow with the tasks put in front of us each day. Where it all will lead us, I cannot say and I doubt any prophesy that suggests it knows.~
==~BB!GAVIN~ ~ You radiate so much strength, Sandrah, that it is convincing me again and again. I am not sure if you and <CHARNAME> were not born for this, with the blood you have inherited and the foes and alliances gained by that. But I am just a simple man and not a great hero.~
==BSANDR ~ Do you not see that your *simple* attitude gives us the necessary strength and the grounding we need more than anything else these days? I love your practical thoughts, Gavin, and there is no reason to belittle yourself - especially not by comparing us in this way. You are important for our quest - but most of all you are important to me!~
==~BB!GAVIN~ ~ Again you have made me feel so good that I lack words, my sweet love. And again I am afraid that the quiet days in a nice little place of our own have slipped a bit more from my grip. No use for complaining on this morn, let us face whatever this day brings.~
==BSANDR ~ And let us enjoy the fact that we do this together.~
EXIT

CHAIN
IF ~ Global("SanGavLA","GLOBAL",14)~ THEN BSANDR GavEnqM7
~Gavin, the city athmosphere is obviously giving you some thoughts. ~
DO ~ SetGlobal("SanGavLA","GLOBAL",15) RealSetGlobalTimer("SanGavLATime","GLOBAL",10000)~
==~BB!GAVIN~ ~ And I want to share them with you, my love...you can imagine they are about Lanie and you and me and the future.~
==BSANDR ~ Yes?~
==~BB!GAVIN~ ~ Lanie's education was the one matter about which both her mother and I agreed. Lanie is a bright girl, and is beginning to show signs of magical ability, even at her young age. It is important that she learns to control her abilities now. This is probably just the bitterness talking, but Lanie's mother was not willing to make the sacrifices involved in raising money to pay for Lanie's education. So here I am. ~
==BSANDR ~ With a father like you she will miss nothing, so much is clear.~
==~BB!GAVIN~ ~ I've been thinking about what I'm going to do, when this is over. I keep thinking that I want nothing more than to go back to Lanie, see if I can find a way to raise her myself, away from that lying mother of hers, and see her grow up to be wise and happy. ~
==BSANDR ~ I hope you will see someone else in that picture as well...(Sigh.)~
==~BB!GAVIN~ ~ But then, where will I find a home for us? Beregost is a nice enough town, but there are a lot of unpleasant memories there. Ulgoth's Beard is nice, or was, when I was a boy, but I'm not sure Lanie would be happy there, or I, anymore. And then I think about all the things I've seen and done, and how I'd like to see more of the world. I could never bring a child into that kind of life, though.~
==BSANDR ~ How about Waterdeep, then. You would be close enough to visit Lanie, but not so close that you would stifle her education - and I could be able to pursue my own studies. Elminster's house has space without end to house a little family.~
==~BB!GAVIN~ ~ Oh, Sandrah. (Gavin quickly pulls Sandrah close and kisses her so she cannot see the tears welling up in his eyes.)~ EXIT

CHAIN
IF ~ Global("SangavNoHurtM","GLOBAL",1)~ THEN BSANDR GavHurM1
~ Gavin?~
DO ~ SetGlobal("SangavNoHurtM","GLOBAL",2)~
==~BB!GAVIN~ ~ Yes, M'..yes, Sandrah, my friend?~
==BSANDR ~ Gavin, you know that I care about you very deeply.~
==~BB!GAVIN~ ~ Eh, yes, I..I observed as much already (Blushes.)~
==BSANDR ~ Gavin, that is not exactly what I wanted to detail right now. I was aiming at something else, my dear friend.~
==~BB!GAVIN~ ~ *My dear friend*?~
==BSANDR ~ I do not want you to get hurt. I mean hurt by any woman.~
==~BB!GAVIN~ ~ You would never do that! Others did and maybe will again...~
==BSANDR ~ You are no novice to life, Gavin. You have a past and you have a right to it. It is part of you and I accept that. I will have an open ear and an open mind if you want to talk about anything from the time before we met each other.~
==~BB!GAVIN~ ~ Sandrah, you are so honest, and caring, and lovely, eh, you have no reason to apologise for your suspicion. I guess you are referring to that little encounter at my old home in Beregost.~
==BSANDR ~ This, yes, and some others, and the whole reason why you joined us - initially. But I admit, everybody has the right to have some little secret. I have no right to mistrust you and insist any further.~
==~BB!GAVIN~ ~ You are a real friend and you understand well. There is a time to tell you about an episode in my past and I hope I will find the right moment and the right words. Thank you so much for your trust. (Gavin gives Sandrah a light kiss on the forehead.)~
EXIT

CHAIN
IF ~ Global("SanGavLA","GLOBAL",16)~ THEN BSANDR GavEnqM8
~ (Sandrah and Gavin have sat together in a long conversation about what obviously was a severe topic. They embrace long and kiss each other again and again . Now they finally both move up to you.) ~
DO ~ SetGlobal("SanGavLA","GLOBAL",17) ~
==~BB!GAVIN~ ~ <CHARNAME>, give us a minute please. Sandrah and I have discussed our further way of action quite deeply and we have consented to a way to serve my dedication to my daughter and our commitment to your quest at the same time.~
==BSANDR ~ We hope our solution is acceptable to everybody and none of our priorities goes amiss by our plan.~
==~BB!GAVIN~  ~ <CHARNAME>, I will need to leave yours and Sandrah's company for a time. Now that the present crisis is resolved, Baldur's Gate will be more peaceful. I must go back to Beregost and get Lanie. I will bring her to Waterdeep, so I can get her enrolled in school. She will not be at liberty to return home for several months, so I will be able to bear you company a while, after that. If you're still in Baldur's Gate, I'll rejoin you.~
END
++  ~You two have been faithful to me through all of this quest and I cannot but thank you again and again. I see that in your responsible fashion you have looked at all the pros and cons and have come up with a solution acceptable for all. I sure loose a valuable companion, Gavin, but I look forward to meet you again soon. Farewell.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",3)~ + GavEnqM9
++ ~ What? You desert me after all we have been through! And, Sandrah, you agree to that selfish proposal, you of all my companions? Traitors! (You stamp away from the couple agrily)~ DO~ IncrementGlobal("Sanpoints","GLOBAL",-3)~ + GavEnqM9
++ ~ Hm, I saw that coming for some time...but yes, your solution is far better than what I was fearing - to loose you both. Once again my lovely clever counselor has found a way out of our dilemma. Gavin, I will miss you as a valuable companion but I look forward to meet you again soon. Farewell.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",3)~ + GavEnqM9

CHAIN
IF ~~ THEN BSANDR  GavEnqM9
~ Be quick to go, Gavin, before we regret our choice. (She gives him a last quick kiss on the mouth and turns away.)~
==~BB!GAVIN~  ~ Fare you well, all. (As Gavin turns away with determined steps you can see that he fights the impulse to turn back to Sandrah again. A moment later he is out of sight.)~
DO ~ SetGlobal("GavinJoined","GLOBAL",0) ChangeAIScript("",DEFAULT) SetDialog("B!GavinP")LeaveParty() EscapeAreaMove("BG0700",2488,222,0)~ EXIT


// Heal Gavin

CHAIN
IF~~ THEN BSANDR SanHealGavi
~ Sure, and I do not doubt your skills, dear friend. Excuse me if I am so impatient as not to wait until you finished complaining about your hurts, discussing the pros and cons of methods to heal them - and die bleeding in the meantime.~
DO ~ SetGlobal("SanHealgav","GLOBAL",6) ~
==~BB!GAVIN~ ~ Oh, Sandrah, please do not make your jokes on me this way. I know I am a bit hesitant sometimes, but I try to improve. Do not measure everyone against your own standards.~
== BSANDR ~ I am not joking about you at all. At times I even admire your thoughtful ways, and I enjoy our discussions about all those topics that you mind about. This time, my words were part of the healing process, my dear.~
==~BB!GAVIN~ ~ I see, you envolve me in this light converation and - swoosh - my pain from a moment ago is forgotten as your spell works on the physical wounds.~
== BSANDR ~ Has this psychological aspect not been part of your clerical education, Gavin?~
==~BB!GAVIN~ ~ Yes and no. I guess to give some blessing and educational words of Lathander to your patients serves the same purpose. As always with you, your ways seem to be so natural and easy. One easily forgets how much skill and care is really hidden behind the cheerful facade.~
== BSANDR ~ (Blushes) Please, Gavin, stop it. Do not put me on such a high pedestal. (Mumbles) I want to stay in reach for you.~
EXIT

CHAIN
IF~Global("SanGavHurt1","LOCALS",1) ~ THEN BSANDR SanHealGavang
~ By Mystra! Can you not be more careful, Gavin! Blood all over, and there...hold still, will you!~
DO~ SetGlobal("SanGavHurt1","LOCALS",2) ReallyForceSpell("B!Gavin",CLERIC_HEAL)~
==~BB!GAVIN~ ~ Ooouch...what has got into you, dear Sandrah? I am hurt already, don't try to make it worse.~
== BSANDR ~ I see that you are hurt, you fool, you! I am a healer, have you forgotten? (She is almost yelling at the perplexed Gavin) And why are you in that state? Why do you not take care of yourself a bit better, you selfish, ignorant...~
==~BB!GAVIN~ ~Sandrah, Sandrah, please stop it. What has come over you?~
== BSANDR ~ (Takes a deep breath and professionally takes care of Gavin's wounds.) All this blood...oh, Gavin, all will be good...hold still, let me take care of this bit here too.~
==~BB!GAVIN~ ~(Gavin brushes a loose lock of hair out of Sandrah's face seeing that she has calmed down again.) Whatever I did wrong, I'm ready to apolgize if you tell me for what.~
== BSANDR ~It is me who has to say I am sorry, Gavin. When I saw all the blood on you I suddenly realised how fast it could happen to loose the one you love. Please, please be more careful - for Lanie...and for me.~
==~BB!GAVIN~ ~I promise from my heart, Sandrah.~
== BSANDR ~(She quickly kisses him so he does not see the tears in her eyes.)~EXIT

// Jolun in BG1
CHAIN
IF ~ Global("SanJolSolo","LOCALS",1) ~ THEN BSANDR SanJlunElfSong
~ Jolun! It is really you.~
DO~ SetGlobal("SanJolSolo","LOCALS",2) ~
==IF_FILE_EXISTS  ~B!JOLUN~ ~Sandrah of Waterdeep, the one and only...~
== BSANDR  ~ (Kisses Jolun quickly) Hello, sweetheart, a place like this here is an endless source of inspirations for an artist like you.~
== IF_FILE_EXISTS ~B!JOLUN~ ~ Of course, sweetest priestess, all the faces I see passing through - but mind one thing, the face of my goddess of Magic on the fresco in the ducal palace is already chosen. How great to meet the original now for a direct comparison!~
== BSANDR  ~ You are painting my face onto that piece of art, Jolun?~
==IF_FILE_EXISTS  ~B!JOLUN~ ~ Where it belongs, sweetheart. And what role would suit you better than that of the goddess you follow.~
== BDYNAH  IF~ InParty("Dynaheir")~ THEN ~ Prophetic, I'd dare to say.~
== BXANNN IF ~ !InParty("Dynaheir") InParty("XAN")~ THEN ~ Prophetic, I'd dare to say.~
EXIT



APPEND  ~BB!GAVIN~
IF WEIGHT #-9 ~ Global("SanHealgav","GLOBAL",5) ~ THEN BEGIN SanHealedGav
SAY ~ I admire your straight forward acting, Sandrah. At least, most of the time. But casting your healing on me is really not necessary, remember I am a cleric myself.~
IF~~ THEN EXTERN BSANDR SanHealGavi
END
END

INTERJECT_COPY_TRANS IF_FILE_EXISTS ~B!DARLOS~  4 GavIntroSan
== ~BB!GAVIN~ IF ~ InParty("CVSandr") GlobalGT("Sangavla","GLOBAL",8)~ THEN~ This is Sandrah of Waterdeep whom I met in the party of <CHARNAME> I am travelling with.~
== ~B!EVIE~ IF ~ InParty("CVSandr") GlobalGT("Sangavla","GLOBAL",8)~ THEN~ My, heard that, Pa? The Realms are but a village - you, my lovely, must be the same Sandrah whom Jolun was talking about without end when he was here two moons back.~
== BSANDR IF ~ InParty("CVSandr") GlobalGT("Sangavla","GLOBAL",8)~ THEN~ (Blushes) He really talked about me?~
== ~B!DARLOS~ IF ~ InParty("CVSandr") GlobalGT("Sangavla","GLOBAL",8)~ THEN~Talked? Not only that, he said he'd have none else but ya face for the fresco they make him paint at the Ducal palace at the Gate. Said all the city ladies and their rich husbands couldn't pay him so much as not to use the most beautiful gal in the Realms for his Mystra.~
== ~B!EVIE~ IF ~ InParty("CVSandr") GlobalGT("Sangavla","GLOBAL",8)~ THEN~ 'n right he was, if the critics asked me - now that I see her there can be no other...~
== ~BB!GAVIN~ IF ~ InParty("CVSandr") GlobalGT("Sangavla","GLOBAL",8)~ THEN~ So Jolun finally gets credits as an artist.~
== BSANDR IF ~ InParty("CVSandr") GlobalGT("Sangavla","GLOBAL",8)~ THEN~  No need to be jealous, my dear, he really is talented and deserves the recognition.~
== ~BB!GAVIN~ IF ~ InParty("CVSandr") GlobalGT("Sangavla","GLOBAL",8)~ THEN~ How could I be jealous when he just got the inspiration while I got the real girl. (Smiles happily at Sandrah.)~
== ~B!DARLOS~ IF ~ InParty("CVSandr") GlobalGT("Sangavla","GLOBAL",8)~ THEN~'twas about time we lost them two boys to the ladies, wasn't it, Ma? Only strange it's both of 'em to the same gal...~
END

INTERJECT_COPY_TRANS ~B!GavinJ~ 2180 SanGavCongrate
== BSANDR IF ~ InParty("CVSandr") ~ THEN~Congratulution, <CHARNAME> of Candlekeep, or do I better say Lady <CHARNAME> Mor. Congratulation, Gavin, after all you really managed to follow your heart and become the happy husband of the wonderful <CHARNAME>. (She kisses both of you tenderly.)~
END
