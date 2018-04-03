APPEND BSANDR

IF ~ Global("SanKivReuBG2","LOCALS",1)~ THEN BEGIN SanKivReuBG2t
SAY~ I am so glad you took Kivan back into our group.~
IF~~ THEN REPLY~ Could I deny that pleasure to you, my love? It's my warm heart and my love for you that made me do it. (Lean forward and kiss her.)~ DO~ SetGlobal("SanKivReuBG2","LOCALS",2)~ EXIT
END
END

CHAIN
IF ~ Global("SanKivBG1End","GLOBAL",1)~ THEN BSANDR SanKivLeaveShil
~ Deheriana is at rest now, Kivan.~
DO~ SetGlobal("SanKivBG1End","GLOBAL",2)~
==BKIVAN ~ Mela en'coiamin is at rest now as she is avenged.~
==BSANDR ~ And you, my love? Are you at rest now in your soul as well?~
==BKIVAN ~ Almost, sweet Sandrah, almost. There is one final deed I need to execute before the past can be buried at last. I must return one more time to Shilmista to mine and her parents for the recollection of all the past events.~
==BSANDR ~ I fully understand this, my elf, and it would be my greatest wish to be able to accompany you on that journey which is not an easy one for you.~
==BKIVAN ~ You will be by my side every single moment, mela Sandrah, my love of the material plane. But we both know it is not this time for you to go to Shilmista with me. Your place currently is here by <CHARNAME>'s side, where I will find and join you as soon as I can. My ranger's abilities will allow me to track you as soon as my mission is accomplished.~
==BSANDR ~ My heart will shout your name loud enough, Kethvan, you will not be able to miss us.~
==BKIVAN ~ (His eyes are filled with tears as the elf embraces Sandrah dearly to kiss her goodbye.)~ DO ~ LeaveParty() EscapeArea()~
END
++ ~ May your journey be safe, Kivan, and your return soon.~ EXIT



CHAIN
IF ~ Global("PKivshil","GLOBAL",1) ~THEN BSANDR PSanKiv1
~  Kethvan - the 'forest wind'. A name like a poem.~
DO ~SetGlobal("PKivshil","GLOBAL",2) SetGlobal("Kivshil","GLOBAL",2) RealSetGlobalTimer("KivshilT","GLOBAL",1200)~
== BP#KIV ~ I never heard anybody say my name like that since I left Shilmista. One does not get that pronounced right just from learning, Sandrah. Have you really been to my home then - few humans are ever granted admission?~
== BSANDR ~ My father is one of then, Kivan. He once took me with him, and the elves did not protest agains the little girl I was back then. They even showed me around a bit, they are very proud of Shilmista. ~
== BP#KIV ~ *sighs* Shilmista is the most beautiful place in the world...What do you think, melamin?~
== BSANDR ~ It is indeed very special. You must forgive me, I was just a child then and everything appeared to me like in a fairy tale. But I liked it as a visitor.~
== BP#KIV ~ You sound a bit reserved. But you must have been all over Faerun and seen so much. It must be hard to impress you with something.~
== BSANDR ~ It is very different whether you are just a passing visitor in a place or whether you call that place home. In Shilmista, I felt more like a spectator than any place else. I could not imagine that real people have real everyday lifes in such a place.~
== BP#KIV ~ Then in some way you have felt it right, melamin, it is indeed no place for the profane things in life, it is our haven, our dream....sorry, let us follow the others. ~
= ~ (Kivan shyly takes Sandrah's hand and they follow the group hand in hand for a while without the necessity for further words.)~
EXIT

CHAIN
IF ~ Global("PKivshil","GLOBAL",3) ~ THEN BSANDR PSanKiv9
~ Kivan, I know it is silly to ask if you are awake. I know about the elves' reverie, at least in theory - I have never known an elf privately enough to experience it.~
DO ~ SetGlobal("PKivshil","GLOBAL",4) SetGlobal("Kivshil","GLOBAL",4)RealSetGlobalTimer("KivshilT","GLOBAL",1200)~
== BP#KIV ~ You are not one for idle chatter, Sandrah, so I will forgive you these clumsy opening lines.~
== BSANDR~ You really found them clumsy? It hurts me, Kivan, I am known for my eloquent conversation on all the important social events in the big towns. ~
== BP#KIV ~ (Smiles.) Eloquent indeed, Sandrah, I just found myself caught in your trap.~
== BSANDR~ Which is?~
== BP#KIV ~ You entangled me already in your conversation and lead me away from the thoughts I was having.~
== BSANDR~ Then I will guide you back to them now again, but this time you will not be alone facing the loss and the void. ~
== BP#KIV ~ What do you think you know about this?~
== BSANDR~ About your own personal one - nothing. An elf I knew once told me that you relive memories during the reverie in a very life-like, vivid way. It does not need much observation to see yours are what we humans would call nightmares.~
== BP#KIV ~ Deheriana is mela en'coiamin... the love of my life. It is the loss I morn.~
== BSANDR~ You say *She is*. ~
== BP#KIV ~ Humans would call her dead. But elves do not die. They venture from this being. She waits for me to join her in Arvanaith. ~
== BSANDR~ We all need to remember our past, our desires and those who have departed.~
== BP#KIV ~ But not all have lost the one who trusted them in the way I did.~
== BSANDR~ Kivan, I spent all my life until recently with a man who lives beside and with his dead mela en'coiamin. I know about those beasts on Toril who stay single after losing their mate.~
== BP#KIV ~ You know a lot for a young girl, I saw that already. You will never be accused of idle chatter by me. - Good night, Sandrah, you are no elf, you need your sleep to fight by my side again tomorrow.~
== BSANDR~ Good night, Kivan.~
== BP#KIV ~ *Kivan sits long beside Sandrah's side after she has closed her eyes.*~
EXIT

CHAIN
IF ~ Global("PKivshil","GLOBAL",5) ~ THEN BSANDR PSanKiv10
~ (Kivan has purchased some apples from a merchant and distributes them among the group. He hands the last one to Sandrah, remaining silently at her side afterwards.)~
= ~ Delicious and healthy, a ranger's gift. - You want to talk about the man I know that shares a fate like yours, Kivan.~
DO ~ SetGlobal("PKivshil","GLOBAL",6) SetGlobal("Kivshil","GLOBAL",6)RealSetGlobalTimer("KivshilT","GLOBAL",1200)~
== BP#KIV ~  Your father, melamin?~
== BSANDR~ Yes, you are a good observer.~
== BP#KIV ~  You are very close to him, that is easy to see. Like one that had to grow early out of childhood with a single adult. I am glad, we had no children.~
== BSANDR~ Kivan, I was a very happy child with my father. He had his grief and his wrath but it did not blacken my days with him. I dearly love him for all he was and is.~
== BP#KIV ~  A happy man, even in his loss. I served Khalreshaar, the Lady of the Forest once, Sandrah. After my loss it was Shevarash, the Black Archer, I said my prayers to. Those who serve Shevarash lose the ability to feel pain, as all that was dear to them had been taken away. Your father had you, which may have saved him. ~
== BSANDR~  So, my friend, we need to find such a solution for you as well.~
== BP#KIV ~  As Tazok is dead, I will return to Shilmista soon to start my journey to Arvanaith. I was but a black arrow on Shevarash' bow but I am not needed by him any more. ~
== BSANDR~  My father was not granted the chance to avenge his beloved wife. The vile deed of the God of Murder was done from even beyond the murderer's grave. And still he gave meaning to his life, to my life and too many, many others throughout Faerun.~
== BP#KIV ~  * Kivan's face shows his deep thoughts, but also for the first time you know him, he seems to be content, almost relaxed, as he silently walks beside Sandrah with his arm around her shoulder and a tender side look to her every now and then. They walk like that a bit behind the group for a long while.* ~
EXIT

CHAIN
IF ~ Global("PKivkill","GLOBAL",2) ~ THEN BSANDR PSanKiv11
~ Aah, Kivan, please, do you have a drop of water for me?~
DO ~ SetGlobal("PKivkill","GLOBAL",3) SetGlobal("Kivkill","GLOBAL",3)RealSetGlobalTimer("KivshilT","GLOBAL",1200)~
== BP#KIV ~Here - Lle naa belegohtar... you are a mighty warrior, Sandrah.~
= ~ I must admit, I completely took you for a weekend warrior, in your shimmering chain mail and those robes that the merchants in Waterdeep may advertise as "adventurer's brown", "Cormanthyr green" or "road mud brown". (Kivan's laughter is hoarse, but, yes, it is really laughter.)~
== BSANDR~ That means quite something from a man with your experience. Not that it matters in case of an elf, but, how old are you, Kivan?~
== BP#KIV ~I had seen two hundred and twenty four summers before Deheriana was killed. I have not counted any more afterwards.~
== BSANDR~ (Sandrah holds the water bag to Kivan's lips and lets him drink in return.)~
== BP#KIV ~ But that was just yesterday, wasn't it, so what is there to count.~
== BSANDR~ Yesterday, Kivan, was the day when we rescued that little boy from the Ogres, remember. And the day before was when we discovered and prevented the bandit ambush on the caravan. A lot of travellers could have lost their lives. Remember, dear, none of these days was in vain.~
== BP#KIV ~ And the night before was the one we both saw this falling star, you remember that as well, Sandrah.~
== BSANDR~ Oh, yes my dear Kivan, and also the wish that I made upon it.~
== BP#KIV ~ Will you tell me?~
== BSANDR~ No.~
== BP#KIV ~ ??~
== BSANDR~ Sweet Kivan, with your two hundred and twenty four summers you should know, that those wishes on falling stars can only come true if you tell them to no one!~
== BP#KIV ~ Sandrah and being superstitious...(This time the bursting sounds from Kivan can no longer be mistaken. It is laughter - again.)~
EXIT

CHAIN
IF ~ Global("PKivkill","GLOBAL",4)~ THEN BSANDR PSanKiv12
~ (Sandrah walks silently beside Kivan a bit ahead of your group both scouting for possible dangers.)~
DO ~ SetGlobal("PKivkill","GLOBAL",5) SetGlobal("Kivkill","GLOBAL",5) RealSetGlobalTimer("KivshilT","GLOBAL",1200)~
== BP#KIV ~ Sandrah belegohtar... ~
== BSANDR~ You called me that before, a mighty warrior, but not with this sadness in the tone of your voice, my dear.~
== BP#KIV ~ I already loved and lost a mighty fighter in my life. Your capabilities may one day not be enough. We can never rely on fighting skills alone.~
== BSANDR~ Absolutely right, Kivan. Did I give you any reason to think that I did?~
== BP#KIV ~ (Kivan laughs) Oh, melomania of the thousand talents. Your resources will not be so easily drained. If your hammer fails you, you may revert to peanut throwing. (Laughs again)~
== BSANDR~I love this sound so dearly, Kivan. ~
== BP#KIV ~ Which sound? I do not hear anything.~
== BSANDR~Your laughter. It is wonderful to hear it again.~
== BP#KIV ~ My laughter...Somebody's magic must have returned it to me.~
== BSANDR~ Somebody's magic or somebody's...(Kisses Kivan quickly before she turns and moves away away, blushing like a little girl,). ~
== BP#KIV ~ (Mumbles to himself) Somebody's magic or somebody's stubborn love.~
EXIT

CHAIN
IF ~ Global("PKivNakD","GLOBAL",1) ~THEN BSANDR PSanKiv13
~ ...sure, I follow you wherever you lead me. I am neither afraid of the dark nor of you.~
DO ~ SetGlobal("PKivNakD","GLOBAL",2) SetGlobal("KivNakD","GLOBAL",2)~
== BP#KIV ~ Do you know how it feels to dance in a moonlight like this, naked and free, with nature and night talking to you in all their languages?~
==BSANDR~ You may think of me still as some city girl, but the largest part of my father's grounds was the wild garden over-looking the cliffs and the sea. All the animals there were my companions and friends.~
== BP#KIV ~ Amazing, once again, it explains what I have seen in you but could not name.~
==BSANDR~ I loved to go there, yes, nude and free, to feel the wind from the sea touching me everywhere, delivering messages from far away regions I would one day see. Carrying voices of people I might meet. Dwarfs, maybe even elves.~
== BP#KIV ~ Tell me more, Sandrah.~
==BSANDR~ I will rather show you than tell you. (Sandrah slowly drops the light gown she had put on after you had stopped for the rest. You see her slender feminine body lighted by the pale light of the half moon. She takes some first hesitant steps to begin a dance to a music you cannot hear - maybe it is whispered in the wind.)~
== BP#KIV ~ (Now the tune becomes audible. Low, sad and longing. Sandrah's figures and movements become more confident as they follow the melody like in a trance. You suddenly recognize that it is Kivan who is humming this mesmerising tune.) ~
==BSANDR~ (Sandrah's eyes are closed and her lips are slightly parted as if awaiting a lover to join her dance.)~
== BP#KIV ~ (You see Kivan's muscular body now come out of the shade to join Sandrah. He has dropped his clothes completely as well. He starts to encircle her movements without ever touching her.)~
==BSANDR~ (Sandrah feels the presence of the naked elf. Without opening her eyes her movements react to his. He never touches her at all, just seems to direct her with his tune alone.)~
== BP#KIV ~ (A small cloud cuts out the moonlight for a moment. When the light appears again, the scene of the dance is vacated. The melody is gone as if it had never been. Has the whole scene maybe just been your imagination?)~
EXIT

CHAIN
IF ~ Global("PKivshil","GLOBAL",7) ~THEN BSANDR PSanKiv14
~ (Whispers) Kivan...~
DO ~ SetGlobal("PKivshil","GLOBAL",8) SetGlobal("Kivshil","GLOBAL",8) RealSetGlobalTimer("KivshilT","GLOBAL",500)~
== BP#KIV ~  Sandrah, you are wiser than young girls of your age normally are...~
==BSANDR~...and therefore I know what my two hundred and five summers older elf wants to tell me. And my answer is, I do not even try to replace her in your heart - I never could and I never would attempt to. She is yours forever and she is a large part of what you are. ~
== BP#KIV ~ So, if you know that already...~
==BSANDR~...it does not mean that what you feel for me and with me cannot be felt and not be part of your life - the life that is still happening. You are not dead and you will not die just because Tazok is eliminated. You have lived on afterwards, with her and your deed in your heart. And with the need for others by your side.~
== BP#KIV ~ All of that is so right. And it still cannot be.~
==BSANDR~My dear, do not think about what it cannot be - think of what it can be.~
== BP#KIV ~  I wish I had never met you, Sandrah. I mean, even in my pain and my hunger for revenge, my life was easy then. I am afraid of more pain and hurt to come - for you as well.~
==BSANDR~Any human woman loving an elf will have to face the fact she will only be one episode in his life. It will be you to face pain and hurt once again.~
== BP#KIV ~ But what if it is worth it? If every moment before that end will be one I do not want to miss?~
==BSANDR~ I know of one who would not forgive you for not having tried at least to find that out. ~
== BP#KIV ~ I have told you so much of Deheriana and you listened so closely, Sandrah. Yes, she would not forgive me for taking what maybe is the second chance she has begged Khalreshaar to grant me.~
==BP#KIV~ (This night you miss Sandrah's nearness - but you also rejoice while the look of Kivan's eyes, you saw before he lead Sandrah into the darkness of the nightly forest, follows you into your dream. A wonderful dream.)~ DO~ RestParty()~
EXIT

CHAIN
IF ~ Global("PSanKivTaz","GLOBAL",1) ~THEN BSANDR PSanKiv15
~ (Sandrah has sat down beside Kivan and has silently removed the hunter's gloves from his hands. She gently moves her fingers along the bruises and scars of his battered hand.)~
DO~ SetGlobal("PSanKivTaz","GLOBAL",2) SetGlobal("SanKivTaz","GLOBAL",2) RealSetGlobalTimer("KivshilT","GLOBAL",880)~
== BP#KIV ~ It is in vain, Sandrah, no healer's skills can repair these fingers anymore. Tazok and his men did their job well that night. The only job they knew and could perform well.~
==BSANDR~ There is no real healing required here, Kivan. (She kisses the battered hand lightly.) You manage your bow and sword quite well with this hand. The healing has already come from your inside. It has you made go on and continue your live.~
== BP#KIV ~ It is not healing, you talk about, melamin, it is the strength that was provided by Shevarash to avenge Deheriana. Now the Black Archer is satisfied by Tazok's dead, he has no need for his tool any more.~
==BSANDR~ My friend, we need to find another source of strength for you then.~
== BP#KIV ~ That will not be necessary any more, as I told you before, my way is now to Arvanaith.~
==BSANDR~ Your way was always to Arvanaith, every elf's way is. But there may be well another two-hundred fourty and something years to be covered until you get there. At first, there is <CHARNAME>'s quest to finish. ~
== BP#KIV ~ You are right to remind me, this is an obligation that needs to be fulfilled. These old wounds again trouble me. (Kivan flexes his fingers.) I had been shooting more since I have joined this group, and the body protests by reminding me more avidly where it was broken and burnt. But I will not let it slow me, for our battles are the just ones. ~
==BSANDR~ (Sandrah has put Kivan's hand into her lap and starts to apply some cool smooth salve to the bruises. Kivan's eyes close to the gentle motions of Sandrah's fingers on the burned scars.) Healing needs to come from inside, melamin. (Her other hand, that is moist from the salve as well, has moved to Kivan's pointed ears in slow caress.)~
== BP#KIV ~ Aah, elves are very sensitive in this area.~
=~ (He whispers:) Cormlle naa tanya tel'raa - your heart is that of a lion. I never see you scared, not even by me. Can you be the source of strength I now require?~
==BSANDR~ You underestimate my healer's skills, my still inexperienced elf, I can heal more than just a few bruises or ressurect a fallen friend. (Her fingers now caress Kivan's closed eyelids, her mouth is close to Kivan's lips.)~
== BP#KIV ~ (He feels her breath close to his lips and opens his own in expectation.) Wisdom is no matter of age, let me taste your strength.~  DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF ~ Global("PSanKivTaz","GLOBAL",3) ~THEN BSANDR PSanKiv16
~So what will happen, Kivan. What do we have to expect? Will some ship come out of Arvanaith and pick you up or something similar? ~
DO~ SetGlobal("PSanKivTaz","GLOBAL",4) SetGlobal("SanKivTaz","GLOBAL",4) RealSetGlobalTimer("KivshilT","GLOBAL",1200)~
== BP#KIV ~ We? Sandrah, sweet friend, that does not concern you.~
== BSANDR~It does not concern me? Are you for real, Kivan? Do you expect me to turn around and go and tell myself, *huh, so what? he is gone.* ~
== BP#KIV ~I, I- I admit I have not thought of this. I thought it would be clear. I kill Tazok and I go to Arvanaith. I am not sure how it will be achieved. But I feel you should not be here when it happens. ~
== BSANDR~As you say you do not know it yourself, then there is not a reason why we should not wait together.~
== BP#KIV ~What do you intend to do? ~
== BSANDR~ I sit here and wait with you. That is what friends are for. Wait with you for the ship, or the rainbow or the majestic eagle to come and take you away.~
== BP#KIV ~But that is impossible, you are no elf. You are not supposed to be here. You - you do not even believe in Arvanaith. You think that nothing will happen because it just does not exist for you. ~
== BSANDR~ This is the way it is for all of us that are not elves. We just have to carry on. Life is cruel to us. ~
== BP#KIV ~You are not very good at sarcasm, sweet Sandrah. Your loving eyes give you away.~
== BSANDR~Will you really be so cruel as to send me away without knowing what really happens to you. Do you want me to spend the rest of my life imagining this and that and something else, just because you had not let me see it with my own eyes. Just to see it and accept it and have my peace.~
== BP#KIV ~ You are stubborn. ~
== BSANDR~Yes.~
== BP#KIV ~ mmh..~
== BSANDR~...~
== BP#KIV ~What now? ~
== BSANDR~I will not be a spoilsport and tell you how it will end.~
== BP#KIV ~So you know what is coming?~
== BSANDR~Nothing is coming, Kivan. This is not your fate. This is not what Deheriana intended for you. This is not why you survived and are still here on Toril. ~
== BP#KIV ~You mean it is my fate to have to endure on this plane here without her. Without the hope to see her ever again. Alone? ~
== BSANDR~You are not alone. ~
== BP#KIV ~No, I am not, you crazy, stubborn human girl, even if I wished I were. ~
== BSANDR~Then it is good that you do not really wish it. Now let us go, it is getting cold. <CHARNAME> is waiting for us yonder. (She takes Kivan's hand and he follows her without resistance towards your camp.)~
EXIT

CHAIN
IF ~ Global("P#SpeakUp","GLOBAL",7)~ THEN BSANDR PKiv17
~ Secretive elf, do you trust me as much as to share a bit of lore with me?~
DO ~ SetGlobal("P#SpeakUp","GLOBAL",8)~
== BP#KIV   ~ How can I not trust the one that gives me so much every moment since I met her?~
== BSANDR ~ This mage's name, Jon Irenicus, I heard it before. He has done more with his magical powers than we have seen so far. Something much more evil and destructive.~
== BP#KIV   ~ It appears that he is a man you should not get into trouble with. But how am I to help you in that matter, sweet Sandrah?~
== BSANDR ~ The context in which I remember his name had to do with something done to an elf community. But like all these things, the elves hide it in the mist they love to surround what they consider their internal affairs.~
== BP#KIV   ~ Sandrah, I swear that I am hiding nothing from you, beloved. I have never heard the name before. What I can assure you, that he is not from Shilmista. That makes the man even more suspicious.~
== BSANDR ~ In which way, Kivan?~
== BP#KIV ~ If he is such a powerful mage and he has really misused his powers like you assume, then whatever he has done must be a crime so enormous, that it is kept secret even among the elves themselves. I can only honestly proclaim to you that I do not even have a glimpse of information what or where he has done it.~
== BSANDR ~ Thank you, Kivan. ~
EXIT

CHAIN
IF ~ Global("PSanKevStay","LOCALS",1) ~ THEN BSANDR PSanKiv18
~ Say, why do you continue to stay with <CHARNAME>. ~
DO ~ SetGlobal("PSanKevStay","LOCALS",2) SetGlobal("SanKevStay","LOCALS",2)~
== BP#KIV ~ (Kivan lies on his back in the grass gazing dreamily into the warm sun. Sandrah lies beside him with her head resting on his bare chest while he dreamily strokes her hair.)~
= ~ Hm, <PRO_HESHE> has taken me in when I was blindly following my revenge and has lead me onto a course where my own fate has become part of our overall concern. And mind, sweetheart, her and my task is not yet done.~
== BSANDR ~ I see. Quite a list of reasons.~
== BP#KIV ~ (Kisses her forehead.) You are not trying to hear me say, my one and only reason to continue on this plane is the love of some silly little stubborn human girl, don't you?~
== BSANDR ~ I would not hurt to hear it, if you would find the time to use a bit of nicer words, others than *silly* and *stubborn*. But, anyway, you are here and it is good.~
== BP#KIV ~ This time we will make sure our enemy will be dead and will stay dead.~
== BSANDR ~ Will you put a stake through his heart, like you do with a vampire, or something the same?~
== BP#KIV ~ Do think I am cruel when I say, yes, I would if it is what Shevarash, the Black Archer, advises me as necessary to end this beast once and for all.~
== BSANDR ~ No, I would not call it cruel. It is no longer personal revenge for the one who tortured and murdered our friend, but it will be preventing a raging monster from roaming Toril in a bloody crusade. Sometimes such things must be done, like a healer must have the courage to cut a rotten limb before the whole body is contaminated from bad blood.~
== BP#KIV ~ It soothes me to hear these words from you. I know you do not issue them lightly but will be one to execute such a deed yourself if it is necessary. ~
=~ Now, melamina, let us look at this sunny bright day with other than these dark thoughts in mind. There is more to enjoy our life on Toril...~
== BSANDR ~ Like silly little stubborn human girls for example.~
= BP#KIV ~ Wonderful, steadfast, caring human girls, beautiful as the snow on the Spine of the World and a blooming apple tree in the gardens of Shilmista.~
== BSANDR ~ You can really find nicer words, Kivan, if one gives you the time. Nice, sweet and romantic. (She turns to face him and they end the conversation in a series of passionate kisses.)~ 
EXIT

CHAIN
IF ~ Global("PSanKivTaz","GLOBAL",5) ~THEN BSANDR PSanKiv19
~Kivan, my sweetheart, are you looking at me so dreamily - or do you see another? ~
DO~ SetGlobal("PSanKivTaz","GLOBAL",6) SetGlobal("SanKivTaz","GLOBAL",6) RealSetGlobalTimer("KivshilT","GLOBAL",1200)~
== BP#KIV ~ Your question is the answer already, my knowing and understanding healer. Truth is that I see both. Can you stand that truth, Sandrah?~
== BSANDR ~ I can and I have accepted it from the beginning. I do not even want you to loose her or forget her. She will always be within you and a part of you.~
== BP#KIV ~ Are you really so selfless and understanding, Sandrah?~
== BSANDR ~ I love you as you are and I am surely not jealous for someone who is gone. There is so much love in your heart, enough for me any time. The fact that she will always be there as well only shows who you are Kivan, how much you care and that you never forget. It is exactly that devotion I so much admire in you.~
== BP#KIV ~ Long time ago you made me think about why Deheriana wanted me to continue on this plane for any other reason than to revenge her. A good friend tried to convince me that she wanted me to continue and seek another chance. I struggled to disagree but now I tend to think otherwise. Do you think she wanted me to find someone to take her place by my side?~
== BSANDR ~ No.~
== BP#KIV ~ But...~
== BSANDR ~ Have you not yet understood, my elf? I will not take *her* place. She will always be with you - with us. But I have found *my* place by your side, with her and not instead of her.~
== BP#KIV ~ Yes. Deheriana, I thank you for this. (He kisses Sandrah again and again.)~
EXIT

CHAIN
IF ~ Global("PSanKivBtlAh","GLOBAL",1) ~THEN BSANDR PSanKiv20
~There is a battle ahead today, my love. Be careful and have faith.~
DO~ SetGlobal("SanKivBtlAh","GLOBAL",2) SetGlobal("PSanKivBtlAh","GLOBAL",2) RealSetGlobalTimer("KivshilT","GLOBAL",800)~
== BP#KIV ~ My eyes will be on you. Cormlle naa tanya tel'raa. I have lost one strong spellcaster and fighter in my life. You know the price I have paid to risk it with another again. I will not survive it a second time.~
== BSANDR ~ It would be foolish to beg you not to have these thoughts clouding your mind. You have them and we will bare them. I will not be careless or foolish in battle, I want to taste your sweet lips again tonight. And I will.~
== BP#KIV ~ You are stubborn and you always get what you want. (He laughs) That gives me hope for the coming event.~
EXIT

CHAIN
IF ~ Global("PSankivRab","LOCALS",1)~ THEN BSANDR PSanKiv21
~ Look, Kivan, even here nature has found her way to establish her beauty and her creatures.~
DO ~ SetGlobal("SankivRab","LOCALS",2) SetGlobal("PSankivRab","LOCALS",2)~
== BP#KIV ~ Those poor rabbits must feel as lost and alone here as I do.~
== BSANDR ~ Oh, come on, sweetheart, do not get solemn. You are neither alone with me by your side, nor are you lost with your beautiful companion being able to show you everything you need in the city as you would do for me in the forest.~
== BP#KIV ~ An old rusty elf is no longer as flexible in his ways as you are, young rabbit. I see you at home in the city's bustle just the same as on a cool eve beneath the larches. I envy you for your ability to feel at home wherever you are.~
== BSANDR ~ I think nature is everything that surrounds us and we are her children where ever we are. The druids are in error when they think only a lonely wood grove allows us such a perception. A sunset over the city's chimneys can be as beautiful as the sunrise over a lonely lake on the Spine of the World.~
== BP#KIV ~ You must know, as I am sure you have seen them both. With you at my side, Sandrah, I can imagine I will be able to feel the same everywhere.~
== BSANDR ~ That sounds promising. I prefer that to limiting ourselves to one choice only, my love.~
== BP#KIV ~ Then let us hurry. Show me the beautiful sides of *our* city!~
END
++ ~ *It is amazing to see your once moody elf companion gaining his new will to life at Sandrah's side. How you love her for her ability to create such small wonders.*~
EXIT

CHAIN
IF ~ Global("PSankivRab","LOCALS",3)~ THEN BSANDR PSanKiv22
~ You seem to be more relaxed out here in nature again, sweetling, even though you put on quite a good fight with the city ways.~
DO ~ SetGlobal("SankivRab","LOCALS",4) SetGlobal("PSankivRab","LOCALS",4) RealSetGlobalTimer("KivshilT","GLOBAL",1200)~
== BP#KIV  ~ It must have been your soothing presence that made me stand it, my love. Such a big city normally puts me more to unease.~
== BSANDR ~ Still there is a significant difference, something to be considered for the future.~
== BP#KIV  ~ You do not need to set your stays in the city aside because of me, Sandrah. As you have seen, with you by my side I can manage everything.~
== BSANDR ~ That is good to know, as we will eventually do that, like shopping for things we cannot get in the woods and such. Maybe meet some old friends from time to time, buy a book, eat out at a restaurant.~
== BP#KIV  ~ Mmm?~
== BSANDR ~ Is it not handy that I am quite flexible, my sweet elf? I can live in the city or outside, although I would prefer some view of the sea. But a lonely lake would do just as well.~
== BP#KIV  ~ I once found a vacated cabin by a sunlit lake, with a veranda to sit in the evening sun, extended woodland for hunting nearby, a silhouette of mountains in the distance.~
== BSANDR ~ (She has closed her eyes, leaning against Kivan's shoulder.) I can see it, darling, yes, that is the place. I am sure a ranger like you finds the path to it again.~
== BP#KIV  ~ Sure, sweetheart. So what is this all about then?~
== BSANDR ~ One day, Kivan, this quest will be done. And as you have missed your ship to Arvanaith by now, we need to think about our place here on Toril for that time. It is good to know there will be one that we both will love.~
== BP#KIV  ~ I have the feeling that any objection against my stubborn little human lovebird will be utterly useless. (He lifts her chin with his forefinger to kiss her.)~
EXIT

CHAIN
IF ~ Global("PSankivRab","LOCALS",5)~ THEN BSANDR PSanKiv23
~ (Sandrah gently pulls Kivan down into the grass beside her where she has opened her large book at one of the pages displaying a map.)~
DO ~ SetGlobal("SankivRab","LOCALS",6) SetGlobal("PSankivRab","LOCALS",6)RealSetGlobalTimer("KivshilT","GLOBAL",1200)~
== BP#KIV ~ Do you want to show me something, my heart.~
== BSANDR ~ No, Kivan, I want you to show ME something. Where approximately would our future home, that cabin at the lake, be found?~
== BP#KIV ~ Eh, mmh...(Kivan looks at the book irritated, then at Sandrah), well...~
== BSANDR ~ What is it, Kivan? Please, tell me.~
== BP#KIV ~ Oh, Sandrah, I am sorry, but...~
== BSANDR ~ Yes?~
== BP#KIV ~ It is just - I have no idea about maps. As a ranger I navigate with patterns in the trees, the stars, the wind, even the smells and the sounds of a landscape. I cannot match these impressions to what is shown on your page.~
== BSANDR ~ Darling, close your eyes and tell me of the journey as if we would take it. I will follow your words with my finger on my map.~
== BP#KIV ~ From Baldur's Gate we will follow the Chionthar for six days walking at good pace...~
== BSANDR ~ We will need a stop from time to time, I get so easily hungry for you, sweet tease.~
== BP#KIV ~ Agreed, seven days. We will pass through the green lands off from Iriaebor without touching the village. We will start to smell the new freshness in the air cleansed by the Sunset Mountains. The fir needles soften our steps as we continue through the woods moving slightly upwards but not very steep. Birdsong surrounds us and a shy deer observes us from a save distance. No animal will flee us, as they know no hunters here.~
== BSANDR ~ The journey is already worth it alone, my ranger.~
== BP#KIV ~ You seem to really feel it already. But we are almost there, as the woods open to a sunlit meadow that slightly slopes down to the lake. Halfway between the wood's edge and the shore you see our cabin, it looks so natural as if it was not built there but has somehow grown there as part of the landscape. - So where are we on your map?~
== BSANDR ~ Exactly here.~
== BP#KIV ~ But there is nothing?~
== BSANDR ~ Then it must be the right place. A place of our own, not known to the outsiders and not charted on any map, just like you described it.~
== BP#KIV ~ Who would have thought how fine we match, *my love of this plane*...~ DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF~Global("SanKivRepl","ar1100",2)~ THEN BSANDR PSanKivUmarRepl
~Why do we not tell <CHARNAME> about what you told me, my love?~
DO~SetGlobal("SanKivRepl","ar1100",3)~
== BP#KIV ~ I can rely on the understanding and help of a friend.~
END
++~Sure you can, Kivan, what is it?~ + PSanKivUmarRepl2
++~Secrets?~+ PSanKivUmarRepl2

CHAIN
IF~~ THEN BSANDR PSanKivUmarRepl2
~It is an event that happened in the time period between our separation from Kivan on the Sword Coast and our reunion here in Amn.~
== BP#KIV ~ Amongst other things I occupied my time with the guarding of travellers from the Sword Coast to Amn and vice versa. Payment was good and xvarts, kobolds and bandits no match for a skilled scout. Organised Orcs are a different story.~
=~One of the caravans I helped guarding was ambushed by about forty orcs accompanied by several shamans a few weeks ago. Even our fierce defence could not prevent the orcs from capturing the lady and her money that were the caravan's treasure. ~
== BSANDR ~ You have found a trail of the missing woman?~
== BP#KIV ~I pursued their trail into these very hills around here. They vanished from the surface and the area is covered by too many footprints for me to track them.~
== BSANDR ~ What do you propose, my dear?~
== BP#KIV ~They must be hiding in one of the caves of this area. I swear, I must find and avenge on them, <CHARNAME>!~ EXIT


// Kivan
INTERJECT_COPY_TRANS P#KIVAN 0 SanKivProm
==  CVSandrJ IF ~ InParty("CVSandr") GlobalGT("Kivshil","GLOBAL",1)~ THEN ~ (Whispers dreamily) Kethvan.~
== P#KIVAN IF ~ InParty("CVSandr") GlobalGT("Kivshil","GLOBAL",1)~ THEN ~ (Whispers) Sandrah, the sea breeze carried your voice to me.~
END

CHAIN
IF WEIGHT #-4~Global("P#SanSupport","GLOBAL",2)~THEN BP#Deh SanDeher1
~Kivan told me that you have travelled together for long time now, he actually talks a lot about you.~
DO~IncrementGlobal("P#SanSupport","GLOBAL",1)RealSetGlobalTimer("P#DeherSanTalks","LOCALS",1000)~
==BSandr~We met long ago on the Sword Coast - before we defeated your murderer. And not a day has passed without him mentioning your name several times.~
==BP#Deh~He... he is a good man...~
==BSandr~Please treat Kethvan like he deserves it.~
==BP#Deh~You speak about him...so full of care...so full of - love.~
==BSandr~This is not easy for any of us. I never met a man who loves a woman the way Kivan loves you. And you should not punish him for that.  Open your heart to him he never gave you up.~
==BP#Deh~You tried to make him do so, am I right?~
==BSandr~No.~
=~I never attempted to be what I could not be for him. I could not take a place in his heart that was already taken. I made him happy and encouraged him to rejoin the world of the living but I never took him from you.~
==BP#Deh~I have been away from this plane while he had to live on. I have been wrapped up in self-pity for very long. I have never had strength to pity him until now. I will try to see his side of the time when we were apart.~
==BSandr~I will help you - for Kethvan's sake.~ EXIT

CHAIN
IF WEIGHT #-4~Global("P#SanSupport","GLOBAL",4)~THEN BP#Deh SanDeher2
~You speak Kethvan's name like none of your race would. Am I mistaken, or I detect great care in your voice?~
DO~IncrementGlobal("P#SanSupport","GLOBAL",1)RealSetGlobalTimer("P#DeherSanTalks","LOCALS",1000)~
==BSandr~I loved him since the moment I met him in a place called the High Hedge. I tried to give him a perspective, a future, something to live for apart from the Dark Archer. I always knew I would have to accept your presence in his heart but I never foresaw that he would try to bring you back.~
==BP#Deh~So, you do love him... Love is a scary thing sometimes, is it not? ~
==BSandr~I do not approve to what he did, I think it is not right for neither you nor him - nor me. It is unnatural but it has been done. He never lied to me nor to himself. My dream of a future at his side was just that - a dream. We have shared this dream and maybe it is part of the reason why we are all here today. I cannot condemn him for what he did - neither should you.~ EXIT






