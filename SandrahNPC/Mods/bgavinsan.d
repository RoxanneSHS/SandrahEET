//Gavin Meeting

INTERJECT_COPY_TRANS ~B!GAVIN~0 HelloGav
== CVSandrJ IF ~InParty("CVSandr")~THEN ~Hello, Dawnbringer Gavin. Or maybe Gavin Mor of Ulgoth's Beard?~
==~B!GAVIN~IF ~InParty("CVSandr")~THEN ~My lady, I must admit I am confused. I would surely remember if I had ever met someone as beautiful as you are (blushes).~
== CVSandrJ IF ~InParty("CVSandr")~THEN ~Your memory does not betray you, we have never met. I was just guessing, the name Gavin is not that common in these areas.~
==~B!GAVIN~IF ~InParty("CVSandr")~THEN ~But then I am anything but famous, how can a lady such as you have heard of me -- oh, let me guess, you are from Waterdeep?~
== CVSandrJ IF ~InParty("CVSandr")~THEN ~Right.~
==~B!GAVIN~IF ~InParty("CVSandr")~THEN ~Then my brother Jolun must have mentioned my name...but you? You have met Jolun...~
== CVSandrJ IF ~InParty("CVSandr")~THEN ~You are right, I know your brother, but that is a different story for another day. Nice to meet you, Gavin (shakes Gavin's hand smiling.)~
==~B!GAVIN~IF ~InParty("CVSandr")~THEN ~Oh, eh, yes, thank you my lady, (blushes again), oh my, Jolun...I fear the worst...~
END

// Reed
INTERJECT_COPY_TRANS IF_FILE_EXISTS ~B!REED~12 SanMetreedGav
== ~B!GAVINJ~IF ~InParty("CVSandr")~THEN ~This is Sandrah of Waterdeep, Elminster's own daughter.~
== IF_FILE_EXISTS~B!REED~IF ~InParty("CVSandr")~THEN ~The beautiful Sandrah, Jolun has told stories on end about you as he met you at Waterdeep. The poor boy, you have really turned his head, and now I see why.~
== BSANDR IF ~InParty("CVSandr")~THEN ~Yes, we had a bit of fun up there, but nothing too serious. You have a pair of nice brothers, Reed.~
== IF_FILE_EXISTS~B!REED~IF ~InParty("CVSandr")~THEN ~You enjoy travelling with Gavin then?~
== BSANDR IF ~InParty("CVSandr")~THEN ~Oh, yes, he is a wonderful companion and friend.~
== ~B!GAVINJ~IF ~InParty("CVSandr")~THEN ~Sandrah is a caring and lovely person, Reed, and not the least arrogant or distant like you would expect from one of her heritage.~
== IF_FILE_EXISTS~B!REED~IF ~InParty("CVSandr")~THEN ~ Wow, Gavin, what do I hear there between your words, she has entangled you already just like Jolun.~
== ~B!GAVINJ~IF ~InParty("CVSandr")~THEN ~Eh, I would not go so far, Reed.~
== ~B!GAVINJ~IF ~InParty("CVJenlig")~THEN ~This is Jen'lig. Can you imagine that, Reed, I'm travelling in the company of a githyanki planewalker?~
==BJenli IF ~InParty("CVJenlig")~THEN ~(Hiss) Too much talking on Prime Plane, too much family concept. Cadre is what counts.~
== IF_FILE_EXISTS~B!REED~IF ~InParty("CVJenlig")~THEN ~A bit scary...but surely interesting...~
== ~B!GAVINJ~IF ~InParty("CVJenlig")~THEN ~She is exotic, for sure, but her race has a deep respect for loyalty and duty - even if they have no gods like Lathander to guide them.~
END

//Jolun if with Gavin
INTERJECT_COPY_TRANS IF_FILE_EXISTS ~B!JOLUN~23 SanJolInto
== ~BB!GAVIN~IF~InParty("CVSandr")~THEN ~And this beautiful lady...~
==  ~B!JOLUN~IF~InParty("CVSandr")~THEN ~...is Sandrah of Waterdeep, the one and only...~
== ~BB!GAVIN~IF~InParty("CVSandr")~THEN ~Oh, yes, I forgot you had - I mean you are - I mean you met before.~
== BSANDR  IF~InParty("CVSandr")~THEN ~(Kisses Jolun quickly) Hello, sweetheart, a place like this here is an endless source of inspirations for an artist like you.~
==  ~B!JOLUN~IF~InParty("CVSandr")~THEN ~Of course, sweetest priestess, all the faces - but mind one thing, the face of my goddess of Magic on the fresco in the ducal palace is already chosen. How great to meet the original now for a direct comparison!~
== BSANDR  IF~InParty("CVSandr")~THEN ~You are painting my face onto that piece of art, Jolun?~
==  ~B!JOLUN~IF~InParty("CVSandr")~THEN ~Where it belongs, sweetheart. And what role would suit you better than that of the goddess you follow.~
== BDYNAH  IF~InParty("CVSandr") InParty("Dynaheir")~THEN ~Prophetic, I'd dare to say.~
== BXANNN IF ~InParty("CVSandr") !InParty("Dynaheir") InParty("XAN")~THEN ~Prophetic, I'd dare to say.~
== ~BB!GAVIN~IF~InParty("CVJenlig")~THEN ~And this exotic creature is Jen'lig, a Githyanki Planewalker.~
==  ~B!JOLUN~IF~InParty("CVJenlig")~THEN ~I will make a sketch of her immediately. She must be on that fresco as well. A thrilling experience indeed.~
==BJenli IF ~InParty("CVJenlig")~THEN ~(Hiss) Make counterfeit is manling silly concept. Keep picture in mind if need to remember.~
END


//Gavin First
CHAIN
IF ~Global("SanGavBant","GLOBAL",1)~THEN BSANDR GavJolu
~(Gavin has made several attempts during the last hour to approach Sandrah, but has always decided otherwise at the last moment.)~
= ~Gavin, I guess you surely like to know about my encounter with your brother?~
DO ~ SetGlobal("SanGavBant","GLOBAL",2)RealSetGlobalTimer("SanGavLATime","GLOBAL",3600)~
==~BB!GAVIN~~Um, ah, I do not want to bother you too much, my lady.~
==BSANDR ~Gavin, (laughs lightly), I am a healer. I cannot watch while people suffer. ~
= ~So - Your brother is a talented artist and he did a bit of work for the academy at Waterdeep last year. And yes, of course he advanced me the very moment I caught his eye.~
==~BB!GAVIN~~I cannot blame him for that...I hope he did not...embarrass you too much.~
==BSANDR ~Oh, Gavin, do not think too badly of your brother. He is straight forward and upright, something you could need maybe now and then. Yes, his manners are not extremely gentleman-like, but he is not a wrong person at all.~
==~BB!GAVIN~~I am glad, my lady, you take it humorously and do not blame him too much.~
==BSANDR ~What is there to blame? He met a young beautiful girl and started to flirt a bit. I have suffered worse, dear Gavin. Your brother has his charm and I enjoyed his attention for what it was, a little flirt.~
==~BB!GAVIN~~Maybe I am just old fashioned and you are a modern girl, playing with the boys hearts like that.~
==BSANDR ~You worry too much, Gavin. I am not toying with boys hearts like that. But I like to have a little fun sometimes just like your brother does. We met on equal terms without spectacular expectations and we enjoyed it. That is all. No tragedy, nobody hurt, no broken hearts.~
==~BB!GAVIN~~Then I was mistaken, my lady, I did not think you step through life that lightly.~
==BSANDR ~You are mistaken now! I do not dance through life like a careless plaything. But let seriousness reign where it is necessary, and have some fun where it is allowed.~
==~BB!GAVIN~~And once again I have made a complete fool of myself, I guess.~
==BSANDR ~(Sandrah touches Gavin's cheek gently.) Not at all, my friend. You only showed what a caring and goodhearted person you are. Just do not forget the lighter sides of life exist as well.~
EXIT

CHAIN
IF ~Global("SanGavkilBant","GLOBAL",3)~THEN BSANDR GavEnq4
~(Smiles invitingly as Gavin approaches her in his usual hesitant way.)  ~
DO ~SetGlobal("SanGavkilBant","GLOBAL",4)~
==~BB!GAVIN~~M'lady Sandrah?~
==BSANDR ~Sandrah, Gavin, just plainly Sandrah. We are comrades in arms, friends.~
==~BB!GAVIN~~Is that how you see me, hm Sandrah, as a friend.~
==BSANDR ~Yes, my friend. So what is bothering you at this moment?~
==~BB!GAVIN~~Your perception of the fighting we do, of all this killing. I have observed you - I mean as far as the heat of a battle allows such a thing. You are quite different from all other fighters I have observed.~
= ~I know you will not take it as a compliment of course. You do not seem proud of what you do in battle, not like others of our party.~
==BSANDR ~Philosophy for philosophy's sake, my friend, or real interest in the one you want to discuss it with?~
==~BB!GAVIN~~Yes. - I mean, yes, both. I want to learn about your motivation. ~
==BSANDR ~I do what needs to be done. Too easy? Well, it would sum it up quite well nevertheless. But to satisfy you, I must add more detail, right?~
= ~Fighting itself is an art. Do not look at me so sceptical, my friend. I really mean what I say. It is an art involving both the body and the mind. It includes force and power, but also tactics, and a bit of reading your enemy's mind in the blinking of an eye. All of that is challenging and arousing. But we both know, it does not end with that.~
= ~You could say, the arena would be the place for me. It is not. It is a show and a carnival at best, or a bloody exploit at worst. It has no worthwhile motivation. ~
==~BB!GAVIN~~You hate the killing, right Sandrah. Somebody looses his one and only life at the end of the challenge and that overshadows everything else.~
==BSANDR ~You understand it well. We can congratulate ourselves in the end, saying that we once again have crushed evil. And that is true most of the time, and it may be satisfactory for some of us.~
==~BB!GAVIN~~Not enough for you? Is that not a worthy goal, Sandrah.~
==BSANDR ~It would be, if our definition of evil is true and it would be, if there would exist no other means to stop evil. But you know as well as I know it is not so, there is not only black and white in this world - unless you have the view of a helmit.~
==~BB!GAVIN~~You were right. You do what needs to be done. But many questions are left open. It soothes me that I am not the only one that is seeking for answers where many people stop at the first idea that pleases their mind. ~
==BSANDR ~You are right, my friend. I am a seeker. I am the daughter of the most famous seeker of the Realms. I can assure you that even he still has a lot of questions. But one great thing I have learned from him is that we nevertheless can do a lot of things and be sure that they are at least not wrong.~
==~BB!GAVIN~~Thank you for that, Sandrah. - My friend.~
EXIT

// Gavin Secret

CHAIN
IF ~Global("SangavNoHurt","GLOBAL",1)~THEN BSANDR GavHur1
~Gavin?~
DO ~SetGlobal("SangavNoHurt","GLOBAL",2)~
==~BB!GAVIN~~Yes, M'..yes, Sandrah, my friend?~
==BSANDR ~Gavin, you know that I care about <CHARNAME> very deeply.~
==~BB!GAVIN~~Eh, yes, I..I observed as much already (Blushes.)~
==BSANDR ~Gavin, that is not exactly what I wanted to detail right now. I was aiming at something else, my dear friend.~
==~BB!GAVIN~~*My dear friend*?~
==BSANDR ~I do not want <CHARNAME> to be hurt. I mean hurt by you.~
==~BB!GAVIN~~I would never do that! I respect and love her too much to ever do that!...~
==BSANDR ~Hm, you love her, secret lover. Do not worry, your secret is safe with me, until you decide to tell her yourself. So maybe I was just mistaken and I need to apologize for the doubts I was having about you just moments ago.~
==~BB!GAVIN~~Sandrah, I guess you are referring to that little encounter at my old home in Beregost.~
==BSANDR ~This, yes, and some others, and the whole reason why you joined us - initially. But I admit, everybody has the right to have some little secret. If you tell me that <CHARNAME> will not be hurt, I have no right to mistrust you and insist any further.~
==~BB!GAVIN~~You are a real friend and you understand well. There is a time to tell her about an episode in my past and I hope I will find the right moment and the right words. Thank you so much for your trust. ~
EXIT

CHAIN
IF ~Global("SanGavMorn","GLOBAL",1) ~THEN BSANDR SanGavMor1
~Hailing the sunrise and Lathander, Gavin?~
DO ~SetGlobal("SanGavMorn","GLOBAL",2) ~
==~BB!GAVIN~~You are right, Sandrah, such is the duty of a Morninglord. But what about you? Mystra does not require a morning service from her priests if I know correctly.~
==BSANDR ~No, it is part of my own weird habits. I just like these calm hours, with the world awakening, the birds rising and  then the sun. The prospect of a day ahead that can bring so much - just about everything.~
==~BB!GAVIN~~(Smiles) Almost the view of a priest of Lathander. I have already realised that you have this optimistic view on life - I mean that in a very positive way. You are not optimistic in a foolish or ignorant way, still you always try to see the positive side of things. Hm, I am probably not expressing myself very well.~
==BSANDR ~(Smiles back) That is just how I am - not so very easy to define in a few words, I guess.~
==~BB!GAVIN~~Like getting to bed late, getting up early, and generally doing things more or less just how you like them to do.~
==BSANDR ~That is most likely due to my upbringing by my always busy father. There was never this *bedtime for the little one* or *tidy your room now* or any of that organised lifestyle.~
==~BB!GAVIN~~But your father has surely not neglected you, Sandrah?~
==BSANDR ~Oh no, not at all. He was always there for me and caring and loving. We just never lived this routine type of life. Every day was different and a new adventure. Nothing was set, a new experience could be gained any moment. Even your judgement on a thing, person or situation could change any time - the praised hero turned out to be the villain, the apparently mighty ruler just a puppet on somebody's strings.~
==~BB!GAVIN~~It explains quite a bit about you. Your flexible views and your tolerant lifestyle. But I observe that you still follow some rules, even if they might be not be so strict and apparent than those of Helm and Lathander.~
==BSANDR ~In this aspect we are very similar, Gavin. Just like you, I try to do what is good - and just like you I can spend hours in trying to explain what *good* really means, or if it could be defined at all.~
==~BB!GAVIN~~You are a seeker, Sandrah, and one with open heart and an open mind. What I envy in you is the courage you show in that. I am sometimes reluctant to open a door as it may hide something I'd rather not find. You would simply open it because it is the only way to find out.~
==BSANDR ~(Laughs) But not without having my hammer ready to strike if necessary...But, let us hurry now to get the breakfast ready, those sleepyheads are beginning to stir.~
==~BB!GAVIN~~You are right. I forget time and space when I talk to you, Sandrah. I look forward already to another morning.~
EXIT

CHAIN
IF ~Global("SanGavMorn","GLOBAL",3) ~THEN BSANDR SanGavpray
~Sorry, Gavin, I did not see you do your prayer.~
DO ~SetGlobal("SanGavMorn","GLOBAL",4) ~
==~BB!GAVIN~~Sandrah, please stay. You did not disturb me, actually this type of prayer is really more a kind of contemplation for me than a religious service. I am not that type of fanatic.~
==BSANDR ~But you rise before sunrise to greet your god every morning.~
==~BB!GAVIN~~Yes, but we talked about that before, in a way that is also a kind of preparation for the coming day. But you have hopefully observed that I am always willing to put my prayers aside when I can have one of our talks instead.~
==BSANDR ~You are about to give me a guilty conscience, dear.~
==~BB!GAVIN~~Not my intention at all. Our relationship gives me as well insight and reassurance, the same things I seek in my prayers. But let us not always talk about me alone. I never see you praying to your goddess.~
==BSANDR ~Mystra is not one who can be petitioned with prayer, nor does she grant me any insight when I kneel before her as her disciple. Following her is expressed through what you do and think any moment.~
==~BB!GAVIN~~I would say that is true for Lathander as well, the service is one thing but the obedience of the rules and the way are a permanent duty for his clerics.~
==BSANDR ~Mystra's way is not so obvious as it is not expressed by rules to obey and such. You often have to seek in in your heart and your consciousness.~
==~BB!GAVIN~~What I know of Mystra is, that she was human once, an adventurer actually, even if you might call her a crusader as well.~
==BSANDR ~You hit the point exactly, Gavin. Her name was Midnight, and she is really my guidance and my inspiration.~
= ~It has taken me long to decide on that way, as you know I am not very good at obedience and following rules. It was her example and her way of making her choices rather than my interest in her arts that convinced me. And besides that my natural instinct to heal.~
==~BB!GAVIN~~Is it right to say that your goddess' human period is more important to you than the goddess she became?~
==BSANDR ~A valid observation, my friend. By the way, Midnight was my grandmother.~
EXIT

CHAIN
IF ~Global("SanCldKBo","LOCALS",4) ~THEN BSANDR SanGavSpiMin
~Worry not, we will go through this together, one for all and all for one.~
DO ~SetGlobal("SanCldKBo","LOCALS",5) ~
==~BB!GAVIN~~I am so ashamed you all see me this way.~
==BSANDR ~These spiders are extremely dangerous and nasty, Gavin, and I will not even try to convince you they are not. I call you a hero, because I have witnessed you facing foe of all nature before with courage. And I know we can rely on you down here as well, even being a greater hero by facing those monsters and your own phobia at the same time.~
==~BB!GAVIN~~I suppose you're right. It simply has to be done and we have to go on. Without that book <CHARNAME>'s quest will fail and I will surely not take the blame for that.~
==BSANDR ~Hero.~
EXIT

// Heal Gavin

CHAIN
IF~~THEN BSANDR SanHealGavi
~Sure, and I do not doubt your skills, dear friend. Excuse me if I am so impatient as not to wait until you finished complaining about your hurts, discussing the pros and cons of methods to heal them - and die bleeding in the meantime.~
DO ~SetGlobal("SanHealgav","GLOBAL",6) ~
==~BB!GAVIN~~Oh, Sandrah, please do not make your jokes on me this way. I know I am a bit hesitant sometimes, but I try to improve. Do not measure everyone against your own standards.~
== BSANDR ~I am not joking about you at all. At times I even admire your thoughtful ways, and I enjoy our discussions about all those topics that you mind about. This time, my words were part of the healing process, my dear.~
==~BB!GAVIN~~I see, you involve me in this light conversation and - swoosh - my pain from a moment ago is forgotten as your spell works on the physical wounds.~
== BSANDR ~Has this psychological aspect not been part of your clerical education, Gavin?~
==~BB!GAVIN~~Yes and no. I guess to give some blessing and educational words of Lathander to your patients serves the same purpose. Your ways seem to be so natural and easy. One easily forgets how much skill and care is really hidden behind the cheerful facade.~
EXIT

// Jolun in BG1
CHAIN
IF ~Global("SanJolSolo","LOCALS",1) ~THEN BSANDR SanJlunElfSong
~Jolun! It is really you.~
DO~SetGlobal("SanJolSolo","LOCALS",2) ~
==IF_FILE_EXISTS  ~B!JOLUN~~Sandrah of Waterdeep, the one and only...~
== BSANDR  ~(Kisses Jolun quickly) Hello, sweetheart, a place like this here is an endless source of inspirations for an artist like you.~
== IF_FILE_EXISTS ~B!JOLUN~~Of course, sweetest priestess, all the faces I see passing through - but mind one thing, the face of my goddess of Magic on the fresco in the ducal palace is already chosen. How great to meet the original now for a direct comparison!~
== BSANDR  ~You are painting my face onto that piece of art, Jolun?~
==IF_FILE_EXISTS  ~B!JOLUN~~Where it belongs, sweetheart. And what role would suit you better than that of the goddess you follow.~
== BDYNAH  IF~InParty("Dynaheir")~THEN ~Prophetic, I'd dare to say.~
== BXANNN IF ~!InParty("Dynaheir") InParty("XAN")~THEN ~Prophetic, I'd dare to say.~
EXIT


APPEND  ~BB!GAVIN~
IF WEIGHT #-9 ~Global("SanHealgav","GLOBAL",5) ~THEN BEGIN SanHealedGav
SAY ~I admire your straight forward acting, Sandrah. At least, most of the time. But casting your healing on me is really not necessary, remember I am a cleric myself.~
IF~~THEN EXTERN BSANDR SanHealGavi
END
END


INTERJECT_COPY_TRANS ~B!GavinJ~2180 SanGavCongrate
== BSANDR IF ~InParty("CVSandr") ~THEN~Congratulation, <CHARNAME> of Candlekeep, or do I better say Lady <CHARNAME> Mor. Congratulation, Gavin, after all you really managed to follow your heart and become the happy husband of the wonderful <CHARNAME>. (She kisses both of you tenderly.)~
END

//Keldath & Red Wizards
INTERJECT_COPY_TRANS KELDDA 20 SanRedWizHateK
== CVSandrJ IF ~InParty("CVSandr")~THEN ~The red scum! Dealing with demonic powers they can hardly control at all - but what do those Thayans care about the consequences of their misuse of magic!~
==KELDDA IF ~InParty("CVSandr")~THEN ~A priestess of Mystra will surely make them aware of what evil they do.~
== CVSandrJ IF ~InParty("CVSandr")~THEN ~It will be a lesson that will come too late for them, good Keldath, as they cannot make any use of it after I have dealt with them.~
==KELDDA IF ~InParty("CVSandr")~THEN ~Your hatred for them seems to root deeper than usual with the servants of Mystra.~
== CVSandrJ IF ~InParty("CVSandr")~THEN ~(Calm) Yes, it does.~
END
