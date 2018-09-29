APPEND BSANDR

// Drizzt

IF ~ Global("SanDrizzt2","GLOBAL",1)~ THEN BEGIN SanAwaitsDr201
SAY ~ <CHARNAME>, I am so happy you have agreed to help Drizzt.~
IF~~THEN REPLY ~ Hey, I've never seen you like this, you are nervous like a little girl on the eve before her birthday.~ GOTO SanAwaitsDr202
IF~~THEN REPLY ~ You told me he was your teacher and tutor for melee fighting. He seems to mean much to you.~ GOTO SanAwaitsDr202
END

IF~~ THEN BEGIN  SanAwaitsDr202
SAY ~ Oh, I adore him - mmh, maybe not quite the right expression... But he was my teacher and my idol in my days back at Waterdeep.~
IF~~THEN REPLY ~Hahaha, and he gave little Sandrah some sleepless nights,mmh?~GOTO SanAwaitsDr203
IF~~THEN REPLY ~ But I cannot imagine Drizzt Do'Urden to misuse the trust of a young girl even when he needs to get very close to her to show her the right moves.~ GOTO SanAwaitsDr203
END

IF~~ THEN BEGIN  SanAwaitsDr203
SAY ~ I have to confess that when he came near to me and held my hand to show me how to use my hammer in combat, it was hard for me to concentrate on the lesson. My, I was so young then and he the greatest hero I ever met, and a really handsome and intelligent man.~
IF ~~ THEN REPLY ~ And what happened? ~ DO ~ SetGlobal("SanDrizzt2","GLOBAL",2) RealSetGlobalTimer("SanDrizztInterv","GLOBAL",1200) ~GOTO SanAwaitsDr204
END

IF~~ THEN BEGIN  SanAwaitsDr204
SAY ~ Nothing happened, of course. I had nice dreams and some sleepless nights. I guess totally normal for a young girl at that age given the presence of Drizzt. I am sure, he never even realised what his presence did to me.~ 
IF ~~ THEN REPLY ~ And what will happen this time? ~GOTO SanAwaitsDr205
END

IF~~ THEN BEGIN  SanAwaitsDr205
SAY ~ Oh, <CHARNAME>, nothing will happen. I was just sharing some memories of my youth with you. And the image of a man who somehow formed my expectation for the kind of man I would look for.~
IF ~ Global("SanRomPath","GLOBAL",1)~ THEN REPLY ~I should have known that before I lost my heart to you. Now it is too late and I will never be able to meet your expectations.~ GOTO SanAwaitsDr206
IF ~ Global("SanRomPath","GLOBAL",2)~ THEN REPLY ~But you never met one like him, it seems.~ GOTO SanAwaitsDr207
IF~Global("SanRomPath","GLOBAL",1)~ THEN REPLY ~ But you never met one like him, it seems.~ GOTO SanAwaitsDr206
IF ~ Global("SanRomPath","GLOBAL",2)~ THEN REPLY ~And as such a man does not exist you decided on another opportunity. Do I have to thank Drizzt Do'Urden for my wonderful lover?~ GOTO SanAwaitsDr209
END

IF~~ THEN BEGIN  SanAwaitsDr206
SAY ~ (Laughs) Like in the old saying about a sparrow in your hand and a dove on the roof. I am not totally unhappy with what I have got. (Laughs again) You have a lot of potential and are growing daily, who knows...maybe one day <CHARNAME> of Candlekeep will be one recognised alongside such a hero as Drizzt Do'Urden. And this hero will be mine.~
IF~~THEN REPLY ~ (Your lips melt together in a kiss that seems endless.)~ DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~ EXIT
END

IF~~ THEN BEGIN  SanAwaitsDr207
SAY ~ Drizzt was just a nice dream of a young girl. I never applied that standard to reality but was really open to whatever my heart would find. Like the wonderful <CHARNAME> of Candlekeep. ~
IF~~THEN REPLY ~ (Your lips melt together in a kiss that seems endless.)~ DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~ EXIT
END

IF~~ THEN BEGIN  SanAwaitsDr209
SAY ~ You have to thank only the wonderful <CHARNAME> of Candlekeep for this. You are my first choice, darling, and Drizzt is just a nice dream of a young girl.~
IF~~THEN REPLY ~ (Your lips melt together in a kiss that seems endless.~ DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~ EXIT
END
END

CHAIN
IF~ Global("SanHealDriz2","GLOBAL",5) ~ THEN BSANDR DrizhealBG2
~ Better, my friend?~
DO~ SetGlobal("SanHealDriz2","GLOBAL",6) RealSetGlobalTimer("SanDrizztInterv","GLOBAL",900) ~
== Driz2J~ Not only your fighter skills have improved magnificently since you left your father's house, Sandrah.~
== BSANDR~ Fighting skills are a necessity to survive. Healing is the occupation that I have really chosen to be my goal in life.~
== Driz2J~ To repair rather than to destroy, my young friend. A good choice if I might say.~
== BSANDR ~ Not so remote from the one you have chosen for yourself, my elf.~
== Driz2J~ Your chances are better than mine to actually succeed. So far my reputation is more for my fighting skills than for my achievements for peace.~
== BSANDR ~ Your reputation is surely a bit overshadowed by the fact that most people first see the drow and the fighter, and only few see the ambassador of a peaceful Toril when it comes to you. But I assure you that the second aspect is most important to those you study you more closely.~
== Driz2J~ Like you, little heroine?~
== BSANDR ~ Yes, Drizzt. You, my father, my grandmother Midnight - those are the ones I want to be measured against when my own achievements will be finally judged.~
== Driz2J~ You are surely on the right path for that. I am proud to be able to call myself one of your teachers. You have come a long way already. (Drizzt's earnest face really shows a smile for Sandrah.)~
== BSANDR ~ (Sandrah lifts herself to her toes and quickly places a kiss on the drow's cheek. She is actually quick enough to escape Drizzt's impulsive reaction to defend himself against this *attack*)~
EXIT


CHAIN
IF ~ Global("SanDrizzt2","GLOBAL",3)~ THEN BSANDR SanDriBG2In
~ Drizzt, Somehow I have always hoped the day would come when I could join you in one of your missions.~
DO ~ SetGlobal("SanDrizzt2","GLOBAL",4) RealSetGlobalTimer("SanDrizztInterv","GLOBAL",1200)~
== Driz2J~ (Smiles down at his former student) I was always sure that day would come, having had the opportunity to to form your skills and to see you grow and develop yourself over the time since we first met. It is not a blatant compliment if I say that you have exceeded even the most optimistic expectation.~
== BSANDR~ Be aware, my friend, that the rest of <CHARNAME>'s companions including <PRO_HIMHER> are a competent team in which I am but one of the parts.~
== Driz2J~ Granted. Still you will always remain someone special to me, my girl. But let us move now and talk at another occasion. ~
EXIT

CHAIN
IF ~ Global("SanDrizzt2","GLOBAL",5)~ THEN BSANDR SanDriBG2Olddays
~ Recently I had to confess to <CHARNAME> my feelings for you while I was your student, Drizzt.~
DO ~ SetGlobal("SanDrizzt2","GLOBAL",6) RealSetGlobalTimer("SanDrizztInterv","GLOBAL",1200)~
== Driz2J~ Well...you were young and a romantic girl...it was to be expected and I understood from your father's advice that it was quite normal for a human teenager. As irritating as this time might have been for you, I am content we managed to get through it well.~
== BSANDR~ I was not aware that you really noticed it - and even talked to my father about it. It would make me ashamed, but, I think you are right, it was totally normal in my development.~
== Driz2J~ Things are different now, Sandrah, you have really become the woman that was visible back then in the blooming young girl. Comparison to your mother is unavoidable for anyone who has known her.~
== BSANDR~ You knew her, you did? Yes, sure. Strangely we have never talked about her before.~
== Driz2J~ (The colour that the dark elf's face takes on, is hard to describe - maybe avocado?) Eeh, she was a remarkable woman.~
== BSANDR~ (Looks questioningly at Drizzt - then she laughs) Drizzt!~
== Driz2J~ Well, yes. I really admired her secretly in those days when she first came to Waterdeep. Few women like her grace the surface of Toril. But you have surely heard that fact about her before. I am open to you, her daughter, there is really not much more to tell about it, as she finally chose your father. We stayed friends and that is the whole story.~
== BSANDR~ Thank you, Drizzt, your secret is safe with me. Your reputation of the lone chaste drow warrior for righteousness is not endangered.~
== Driz2J~ (Puzzled) Such is my reputation? One rarely hears the stories told by others about oneself, so much is true.~
== BSANDR~ I am seldom blinded by prejudice, Drizzt. I will make up my mind based on my own findings about you (Smiles at Drizzt in her undecipherable way.)~
EXIT

CHAIN
IF ~ Global("SanDrizzt2","GLOBAL",7)~ THEN BSANDR SanDriz2JMat
~ (Sandrah has sat down near Drizzt in her usual leisure dress that looks so innocent and so seductive at the same time.)~
DO ~ SetGlobal("SanDrizzt2","GLOBAL",8) RealSetGlobalTimer("SanDrizztInterv","GLOBAL",1200)~
== Driz2J~ I have to admit, Sandrah, that you have quite advanced from the student I had the pleasure to educate. How time flies when the little kitten suddenly emerges into a graceful but dangerous felidae.~
== BSANDR~ (Smiles) You have known Pelligram since her early days...~
== Driz2J~ You know well I was not referring to THAT cat, Sandrah.~
== BSANDR~ And you know well that knowing you has forever shaped my standards for men. Maybe even it has set them a little bit too high.~
== Driz2J~ A dangerous cat...~
== BSANDR~ And now I am sitting here next to one of the few - if not the only one - to meet these standards.~
== Driz2J~ We have talked recently about your mother Khalindra and many have surely told you how much you resemble her. I see her in you as well but I also see someone else I have known a long time ago. Someone with your power and your will, someone from whom you maybe have inherited more than you know.~
== BSANDR~ You have known my grandmother Midnight, Drizzt?~
== Driz2J~ I see you are quite aware of her role for you.~
== BSANDR~ Her way is the guidance for my own, yes. Did you...~
== Driz2J~ Yes, I did. She was one who took what she wanted and she was quite irresistible, as if I would have wanted to resist.~
== BSANDR~ And would you want to resist one who has learned from her as well as from a teacher of your own kin in the other art the drow have perfected?~
== Driz2J~ You are a woman now, Sandrah, and you know quite well what you are doing. (Sandrah has already pulled the drow down to her lips...)~ DO ~  RestParty() ~ EXIT

CHAIN
IF ~ Global("SanDrizzt2","GLOBAL",10)~ THEN BSANDR SanDriz2JMid
~ Come and sit down by my side, Drizzt, I want to share some of your older memories with you.~
DO~ SetGlobal("SanDrizzt2","GLOBAL",11) RealSetGlobalTimer("SanDrizztInterv","GLOBAL",1200) ~
== Driz2J~ (Again you observe how Drizzt's face lightens up as he willingly sits down beside Sandrah and takes her hand.) I imagine my knowledge of Midnight interest you some, my dear.~
== BSANDR~ You are the only one I know who can give me some insight into her more private aspects - I mean except my father, but his perspective is that of a son who rarely had his mother at home.~
== Driz2J~ She was independent and strong, following no one and listening only to her own judgement on things. She followed a righteous path of her own and therefore Ao chose her in the Times of Trouble to fight the renegade gods, as she was not tainted by religious conviction or bonding.~
=~ Love meant a lot for her, love for her fellow beings, love for our animal companions, (smiles) and of course the physical aspects of love. Before she finally chose her companion Cyric, she had a number of lovers, which was easy for her with her charm and her beauty.~
== BSANDR~ And that included you, Drizzt, regardless of your race or your reputation.~
== Driz2J~ Yes, and we both enjoyed it while it lasted and never forgot what we had. Although it was clear for both of us that it was nothing to endure as we both were too restless to move on and to move things on Toril.~
== BSANDR~ She had a practical view on life and she never neglected the easier and joyful side even in the Times of Trouble.~
== Driz2J~ In all the long wandering years since then I have only once again met a woman like her...~
== BSANDR~ You did, you lucky man?~
== Driz2J~ Lucky indeed, Sandrah. (He leans over to her and kisses her.)~ DO ~  StartCutSceneMode()  SmallWait(4) FadeToColor([20.0],0) Wait(4) FadeFromColor([20.0],0)  EndCutSceneMode() ~ EXIT

CHAIN
IF ~ Global("SanDrizzt2","GLOBAL",12)~ THEN BSANDR SanDriz2JCyr
~ Drizzt, as you have known Midnight in her time, and maybe even Cyric in his human form, you can surely help me solve a question that long has worried me. ~
DO~ SetGlobal("SanDrizzt2","GLOBAL",13) RealSetGlobalTimer("SanDrizztInterv","GLOBAL",1200) ~
== Driz2J~ (Laughs) I am sure I can - Midnight and the half-mad Prince of Lies - that makes no sense, right Sandrah?~
== BSANDR~ It would not, if this were the story. Obviously our today's perception of past events lacks some details.~
== Driz2J~ You are a wise person, to judge thus, knowing your own limits. So here is the eye witnesses' report.~
= ~ Cyric was a competent and *honest* thief as every adventuring party needs to open locks and to find and disable traps. A cheerful man of many talents, intelligent and attractive. Not an odd choice for your grandmother. However what made him special and won him her heart was his sacrifice of the own self when the final battle neared.~
== BSANDR~ It was him, not Midnight that ended the God of Murder.~
== Driz2J~ Exactly. It was Cyric with the help of Mask in the form of the sword Godsbane that backstabbed the God of Murder as the pair had tracked him down and cornered with no means to escape. With all her power and weapon craft, Midnight could not hit the final blow against him. Only the skilled noiseless assassin with the unbeatable sword could backstab and murder this god.~
= ~ But more important - just like Midnight took Mystra's mantle and sacrificed her humanity and her womanhood to take the duties of a goddess, Cyric did likewise. His burden was heavy as he had to become the new god of murder by Ao's verdict and the great schemer and plotter we recognise in him today.~
== Driz2J~ Understandable that a man of integrity who has to take on the duties of such deities will appear broken in his personality. A short step from the thief with his tricks and masquerades to the mad god of strive, lies and illusions, but a thin line easily overstepped.~
== Driz2J~ (Drizzt looks at Sandrah in deep thought.) You see what only she was able to see before. Another indication of your resemblance. May you be very careful for how far you will follow her way.~
== BSANDR~ Is this a warning for my choice of men, mh, it may just come too late. (She kisses him.)~
== Driz2J~ (Smiles) Keep in mind where Midnight's way finally led for herself.~
== BSANDR~ Do not worry, Drizzt, there are no vacancies caused by slain gods around these days.~ EXIT

CHAIN
IF~ Global("SanDrizBG2","LOCALS",1)~ THEN BSANDR SanDriBG2Plot1
~ How did you fare since we parted, my sweet dark hero? It has been an eternity, it seems to me (sigh).~
DO~ SetGlobal("SanDrizBG2","LOCALS",2)~
== Driz2J ~ Many fights and many victories, just like yourself, my sweet apprentice. And another meeting with my arch enemies.~
== BSANDR~ Entreri and Jarlaxle, they are not dead and defeated then? Please tell me, Drizzt.~
== Driz2J ~ They are not dead, and neither am I, as you see and feel yourself. But hopefully it is finished by now. Entreri and me had a final battle and he killed me - or so he thinks. In truth, a mage had interfered our battle and, of all people, Jarlaxle resurrected me afterwards.~
== BSANDR~ That is strange - and wonderful, as I have you by my side once again. Do you have any idea why the drow thief should have acted like that?~
== Driz2J ~ Not at all. At least I am free now from from Entreri's constant pursuit.~
== BSANDR~ Hm, but at which price, my dear? I cannot imagine that the Bregan D'aerthe do anything for free. We must be very careful as to what Jarlaxle may demand of you some day.~
== Driz2J ~ Are we not always careful, Sandrah? It is our common fate to sleep with one eye open, constantly under the suspicious glance of our foes. Does it prevent us from enjoying the moments together that are granted to us?~
== BSANDR~ You are right, Drizzt. How can I neglect my duties to my lover so! It will be corrected this very instant...(Her armour and shield fly to the ground as the attacks the willing drow fighter with all her passion.)~ DO ~  StartCutSceneMode()  SmallWait(4) FadeToColor([20.0],0) Wait(4) FadeFromColor([20.0],0)  EndCutSceneMode() ~ EXIT

CHAIN
IF~ Global("SanDrizBG2","LOCALS",3)~ THEN BSANDR SanDriBG2Plot2
~ Have we not anticipated that, Drizzt? Jarlaxle would come to demand his payment for your ressurection.~
DO~ SetGlobal("SanDrizBG2","LOCALS",4)~
== Driz2J ~ His cunning plots and traps are undecipherable. Yet I have no choice but to play along his lines for the moment as my friends from Icewind Dale are endangered.~
== BSANDR~ <CHARNAME> and me have crossed his plans already twice. It is clear to me, that this trap is set for you, lovely. And it is also clear that those two have lost your trace, otherwise they would have no need to set up this trap.~
== Driz2J ~ Moreover they do not know that I am accompanied by the most intelligent and lovely advisor in the Realms.~
== BSANDR~ (Sandrah blushes like a debutante.) Oh, Drizzt!~
=~ Do not forget <CHARNAME> and our other companions. We have a pretty good chance to defeat your arch enemies once and for all as they are completely unaware of the force they face this time.~
== Driz2J ~ Our joint capabilities have been successful against them in the past and I am content they will be again. (He puts his arm around Sandrah and pulls her close.) It is so good not to be alone.~
== BSANDR~ (She lies her head onto his shoulder as they continue their walk arm in arm.) Yes, it is.~
EXIT

CHAIN
IF~Global("SanDrowHerD","GLOBAL",1)~ THEN BSandr SanQilDri
~Is something wrong, Drizzt?~
DO~SetGlobal("SanDrowHerD","GLOBAL",2) SetGlobal("SanDrowHerV","GLOBAL",2) SetGlobal("SanDrowHerY","GLOBAL",2)~
==Driz2J ~ I am confused because I always thought that you were a friend to those drow who despise the wickedness of the Underdark - and a friend of mine.~
==BSANDR ~And what have I done that makes you think I am not?~
==Driz2J ~  You are a descendant of Eresseae Qilue but you denied your drow heritage to <CHARNAME>.~
==BSANDR ~Oh, no, my friend, I would never deny my heritage from one as great as *The Dark Sister*. I was just referring to the historical fact that it does not make me more drow than anyone else on the surface.~
=~ Qilue like her elder sisters was born to a human couple, as you know. Her father had killed her mother when he had found out that she had been possessed by Mystra, the goddess of magic. Mystra, seeking to keep the child alive, came upon a pregnant drow priestess of Eilistraee whose child had died in her womb, and made a pact with Eilistraee that served both their intentions. ~
==Driz2J ~  This is the history I know as well.~
==BSANDR ~ Veladorn has become a fair and mighty priestess of both Mystra and the good drow goddess Eilistraee. She is one that gives me much inspiration of how the races can come together and live peacefully.~
==Driz2J ~  (The drow embraces his human friend) I had hoped that I was mistaken and your reasons would be sound. Yes, Sandrah, you proof your birthright every single day on which I have the pleasure to observe you.~
==BSANDR ~ (Sandrah kisses the drow.)~ DO~RestParty()~EXIT

CHAIN
IF~ Global("SanDrizBG2","LOCALS",5)~ THEN BSANDR SanDriBG2Plot3
~ (Sandrah has silently taken her drow friend's hand. You can observe that she looks troubled herself with the news Drizzt has received.)~
DO~ SetGlobal("SanDrizBG2","LOCALS",6)~
== Driz2J ~ Sandrah? Normally you would be the strong one to comfort me in such a case. But this time you seem to be more concerned than I am. Fear nothing, we are together and we are in strong company.~
== BSANDR~ (Sandrah smiles ar Drizzt.) Yes, we are, Drizzt, I am not concerned about that. With <CHARNAME> and our friends by our side, Entreri does not scare me. ~
== Driz2J ~ So what is on our mind, Sandrah?~
== BSANDR~ I am sometimes too confident in my own abilities and my strength, Drizzt. But however much I develop my skills, I will never be able to defend myself against such attacks as you have to face right now. As long as I love and care for others who are close to my heart, I make them a target for my foes.~
== Driz2J ~ That much is true as well for <CHARNAME> or for me. Our foe may as well target on you in order to strike a blow against us.~
== BSANDR~ Mmh...you are right, my wise friend. I make you a target for my foe just as me or Imoen have become the target of <CHARNAME>'s enemies. There is only one way to defend us against that.~
== Driz2J ~ Yes, that is to stay together and stand side by side against them. None of them must get a chance to weaken our friendship and solidarity. It is our common power that makes us so strong regardless how weak or strong we are individually.~
EXIT

CHAIN
IF~ Global("SanDrizBG2","LOCALS",7)~ THEN BSANDR SanDriBG2Plot4
~ (Sandrah has studied her tome for several times during the last rests of the party.)~
DO~ SetGlobal("SanDrizBG2","LOCALS",8)~
== Driz2J ~ You seem to be searching for something in your knowledgeable book, my little sparrow? Maybe I can help you with it.~
== BSANDR~ It was rather that I intended to help you, my drow prince. And maybe I can but then again I cannot really...~
== Driz2J ~ A riddle?~
== BSANDR~ Rather a mystery or even something that is hardly believable. Listen - that demon Errtu mentioned the crystal relict that seems to provide your enemies with the means to act against you once again.~
== Driz2J ~ And you found the answer in your book, no, it really looks like you found something more weird, hm?~
== BSANDR~ There once was an evil relict, the dark counterpart of my father's crystal shard. The powers accosted to it match Errtu's description of the item Jarlaxle and Entreri seem to use. But - the relict was destroyed long ago.~
== Driz2J ~ Hm...hm...I see why you are confused, dear. Anyhow those two must have gained possession of something similar or just a slight splinter left of it after the destruction.~
== BSANDR~ I have been thinking in that direction as well. Now, the book says the destruction was through the breath of an ancient unbeatable dragon, which means that there should be no trace of that relict be left on the material plane. (Sigh.) I am not as helpful as I should be for my lover in his time of need.~
== Driz2J ~ Sandrah, don't say such a thing. Of course you are. One can simply not expect to be successful all the times. It helps so much to know you invest all your ability in aiding me and my Icewind Dale friends.~
= ~ (Drizzt gently removes the book from Sandrah's arms and takes up the space himself.) You have much needed means to restore this old warrior's body and soul again...~ DO ~  StartCutSceneMode()  SmallWait(4) FadeToColor([20.0],0) Wait(4) FadeFromColor([20.0],0)  EndCutSceneMode() ~ EXIT

CHAIN
IF~ Global("SanDrizBG2","LOCALS",10)~ THEN BSANDR SanDriBG2Plot5
~ I can understand that you look so concerned, Drizzt, after the newest piece of information we have gained about Jarlaxle and Entreri.~
DO~ SetGlobal("SanDrizBG2","LOCALS",11)~
== Driz2J ~ Oh, Sandrah, this intrigue goes further and deeper into dangerous territories than I would ever have dreamed.~
== BSANDR~ Yet once again be assured that you are not alone in this. Our joint forces have brought us this far already and we have overcome any resistance with ease. Do not be doubtful, my wise teacher - it is you who has taught me the two biggest mistakes in a combat are to over estimate your own powers as well as not to know how to use them.~
== Driz2J ~And my best and wisest student will tell me now that our strength is the combination of our joint forces - and of course you are right in this. But we are not alone here, Sandrah, you and I. We are surrounded by friends that have aided us so far but still have their own obligations - and we have sworn to contribute to their quest as well.~
== BSANDR~ Your considerations are valid, Drizzt, but no reason to be worried. We have learned to trust <CHARNAME> as the most competent leader we could wish to have. I have no doubt that together we will find a way to manage successfully the various tasks we have before us as companions.~
END
++ ~ Drizzt, Sandrah, there is no use to worry. We will find a way to get to Cadderly and we will not forget our main quest meanwhile. Both tasks have one thing in common - we have the best chances for success if we aim at them together.~ EXIT
++ ~ You are correct, my counsellor. We have wandered far from our main task by now to aid Drizzt. It is my duty as this company's leader to steer our course back to it as fast as possible.~ + SanDriBG2Plot6

CHAIN
IF~~ THEN BSANDR SanDriBG2Plot6
~ Maybe that does not really contradict each other, <CHARNAME>. We have no evidence to conclude that one task excludes the other and we therefore need to split up the company we have established.~
== Driz2J ~Sandrah, your loyalty and your love are at a hard test right now. I hope <CHARNAME> considers your point very carefully. It would fall hard onto my soul if my task to my friends would be the reason for you two to split...~
== BSANDR~ (Smiles at Drizzt.) You will not turn my aid away, my love, even if it would be the highest price I would have to pay to leave <CHARNAME>.~
== Driz2J ~ Such a move means a black day for Toril. I hope it can be avoided by all means. Let us move on, friends. Which ever way we decide to follow from here, there is no time to tarry.~
EXIT

CHAIN
IF~Global("SanDrBremen","LOCALS",1) ~ THEN BSANDR SanDriBrem
~ (Sandrah tilts her head sideways as she looks at Drizzt with a smile.)~
DO~ SetGlobal("SanDrBremen","LOCALS",2)~
== Driz2J ~ My sweetest priestess, are you mocking me or is this the smile of my loving little girl?~
== BSANDR~ All of that. I am just shaking my head about your talent to attract any kind of trouble again and again.~
== Driz2J ~ Sandrah, you are an experienced adventurer by now with our good <CHARNAME> already having gained a name of <PRO_HISHER> own. So you should know that for us there is no way to get out of the way of danger and trouble.~
== BSANDR~ So much is true, dear. Still your name surely is best known throughout the Realms and the cases you encounter are a bit more random than ours. Today I have the feeling of entering another training course with my old teacher again.~
== Driz2J ~ Then expect the unexpected any second.~
= ~ (In the blink of an eye Drizzt has pinned Sandrah's arms to her body with his embrace and attacks the mouth of the helpless girl with a series of kisses.)~
== BSANDR~ Mmh. Unexpected but not undesired...~
EXIT

CHAIN
IF~ Global("SanDrBryn","LOCALS",2)~ THEN BSANDR SanDriBry1
~ We should have a lookout for the priest Martin. Was it not here that he was supposed to be found?~
DO~ SetGlobal("SanDrBryn","LOCALS",3)~ 
== Driz2J ~ You are right, Sandrah. Finally we have found the way to get to this cursed island where <CHARNAME>'s quest and mine require our attention.~
== BSANDR~ Both tasks are OUR tasks, not yours alone or <CHARNAME>'s alone. You have ventured on your own for so long that you tend to forget that you are now among friends, Drizzt.~
== Driz2J ~ Your nearness never lets me forget this, Sandrah. The companionship of this party - and the stubborn love of the Realm's most wonderful girl - both have changed this old campaigner completely.~
END
++ ~ Ah, your quest or mine, Drizzt - but as Sandrah has reminded us we are in this as a company of friends. Let's see if we can trace this priest.~ DO~IncrementGlobal("Sanpoints","GLOBAL",2)~ EXIT
++~ We are near to Imoen right now. This comes first and everything else has to wait for its chance.~ DO~IncrementGlobal("Sanpoints","GLOBAL",-2)~EXIT


CHAIN
IF~ Global("SanDrClob","LOCALS",1)~ THEN BSANDR SanDriSlv1
~ (Sandrah is pale and her hand slightly trembles as she clutches her hammer.)~
DO~ SetGlobal("SanDrClob","LOCALS",2)~
== Driz2J ~ Sandrah, that is very bad news. You hate those damned slavers just as badly as I do. But see the chance we have today with their hot trail in front of us.~
== BSANDR~ You are right, my drow, as bad as this news is it gives us the opportunity to strike another massive blow against this town's slave trade. I will swallow my anger and replace it by cold blooded determination.~
== Driz2J ~ With me by your side and with <CHARNAME> the victory will soon be ours. Your cold blood will soon be heated by the battle - and afterwards by the even purer heat of love...~
END
++~ There is nothing more to be added, Drizzt. We will follow them immediately.~ EXIT
++~ You are really two forces of righteousness but this is leading us further from our trail than I can allow...~ + SanDriSlv2

CHAIN
IF~~ THEN BSANDR SanDriSlv2
~ Do not even try to finish this sentence, <CHARNAME>.~
DO~ SetGlobal("SanDrClob","LOCALS",3) StartCutScene("SanDrSl")~EXIT

CHAIN
IF~ Global("SanDrClob","LOCALS",4)~ THEN BSANDR SanDriSlv3
~ I dearly apologise, <CHARNAME>, I had to do it...we had to do it...it is a fate nobody deserves...~
DO~ SetGlobal("SanDrClob","LOCALS",5)~
== Driz2J ~ (Drizzt has put his arm around Sandrah to shelter her as the two come towards you.)~
== BSANDR~ By now you know my position towards slavers - I cannot look away if we can put things right, like in this case. I have proven my loyalty to you and our common path time and time again. I am sure you can forgive me my little intervention.~
END
++~ What's done is done and I am happy with the outcome. Just let this not become a habit, my dear. I still lead this party (wink).~ DO~IncrementGlobal("Sanpoints","GLOBAL",2)~ EXIT
++~ Be glad you have Drizzt to protect you, you little misfit. You know very well I will not start a fight with the two of you. Baah, let's forget about it quickly - and I expect a very obedient lamb following my orders now.~ DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~ EXIT
++~ Hm, in the end I am glad you did that, Sandrah. Maybe it was me who had set priorities wrong for a moment. Next time please provide me with your council instead of plunging us into an accomplished situation.~ DO~IncrementGlobal("Sanpoints","GLOBAL",2)~ EXIT


CHAIN
IF~ Global("SanDriLeaveWD","GLOBAL",1)~ THEN BSANDR SanEndPlot1
~ Oh, Drizzt, how glad I am we have finally solved this issue that has fiercely gripped your sweet heart for so long.~
DO~ SetGlobal("SanDriLeaveWD","GLOBAL",2)~
== Driz2J ~ And how could I have saved everyone and freed the enslaved souls of so many in this *Region of Terror* without <CHARNAME>'s help - and without the most wonderful companion of all by my side. (He kisses Sandrah long and passionate.]~
END
++~ I am glad we were of help. So let us now return to our other problems.~ + SanEndPlot2

CHAIN
IF~~ THEN BSANDR SanEndPlot2
~ (Smiles) You do not give us much time to rest a bit after all we have been through. (Sigh) The boss-man calls and the love nest waits empty.~
== Driz2J ~ Please, <CHARNAME>, Sandrah, give me a minute.~
== BSANDR~ Are you well, dear, you look tired and exhausted?~
== Driz2J ~ That is exactly how I feel, Sandrah, and only your strength keeps me going at the moment. That is why I want to ask a favour of <CHARNAME>. The recent events have stressed me to the limit and I need a bit of time to restore and to contemplate over it all. My lifetime enemies have finally been destroyed with your help and a new future lies open for me.~
== BSANDR~ What is your plan, sweetheart?~
== Driz2J ~ I am an old friend of your father, Sandrah, and of your teachers back at the Waterdeep temple. It is there I want to go for a while and it is there you will find me should <CHARNAME> require my services again. Allow me a tenday of rest and meditation at the Temple of Mystra.~
== BSANDR~ A decision that your healer would recommend to prevent your burnout, Drizzt. I am sure <CHARNAME> will understand your decision.~
END
++~ Your well being is important to us all, my friend. Farewell for now.~ DO~ ActionOverride("Driz2",LeaveParty())
ActionOverride("Driz2",MoveBetweenAreas("CVelm3",[352.380],12))~
EXIT
++~ If it is your will and you have as well Sandrah's support it makes little sense to object. (Sigh) It is a temporary loss for the group but what must be must be. Good journey, Drizzt.~ DO~ ActionOverride("Driz2",LeaveParty())
ActionOverride("Driz2",MoveBetweenAreas("CVelm3",[352.380],12))~
EXIT

APPEND DRIZ2P

IF WEIGHT #-5~ Global("SanDriLeaveWD","GLOBAL",2)!InParty(Myself) ~ THEN BEGIN WDMeetAgain
SAY~ It has been a good time for me here among friends and I hope it was the same for you. Do we continue our travel together?~
IF~~THEN REPLY~ I came by to see you are well. We cannot journey together for the moment so you can stay here in peace another while.~ EXIT
IF~~THEN REPLY~ It is good to see you restored and willing to join us, my friend. Welcome back.~ DO~ ActionOverride("Driz2",JoinParty())~EXIT
END
END

APPEND EntDjin
IF WEIGHT #-1 ~ Global("EntDjin11","LOCALS",0) InParty("CVSandr") !InParty("Driz2") ~ THEN BEGIN SanDo
SAY ~ Sandrah of Waterdeep? I have a message for you from Artemis Entreri.~ 
IF~~THEN GOTO 10
END

IF~~ THEN BEGIN 10
SAY ~ He wants nothing from you, just this message concerning Drizzt. *I have captured his friends, he cannot rescue them alone*.~
IF~~THEN GOTO 11
END

IF~~ THEN BEGIN 11
SAY ~ Drizzt's friends are Artemis' prisoners. *Go to Arlax to learn more*, so speaks Artemis Entreri.~
IF~~THEN DO~ SetGlobal("SanRotRepl","GLOBAL",3)	~ EXIT
END
END

APPEND BRUE2

IF WEIGHT #-6 ~ Dead("Shadar")Dead("MalVamp2")Dead("MalVamp3")Dead("FemVamp2")Dead("FemVamp3")Global("FTlkBr","LOCALS",0) !InParty("Driz2") InParty("CVSandr")~THEN BEGIN SanNoDrizB
SAY~ Who are you? If you see Drizzt Do'Urden tell him I am here.~
IF~~THEN REPLY~ I am Drizzt's friend <CHARNAME> and this is Sandrah by my side.~
GOTO SanBrueNoDriz
END

IF~~THEN BEGIN SanBrueNoDriz
SAY ~ Oh, the wonderful Sandrah, you hear old Drizzt talking of no one else, provided the old guy talks at all. So you get me out of this hole?~
IF~~THEN REPLY~ We cleared the way out here. A warrior like you will be able to get to the Copper Coronet from here. We send everyone we find there to gather with Drizzt once we finished this battle.~ GOTO SanBrueNoDriz1
END

IF~~ THEN BEGIN SanBrueNoDriz1
SAY~ Sure, I can't wait to get fresh air again. Good luck to you, <CHARNAME> - and to you, Sandrah.~
IF~~THEN DO~ SetGlobal("FTlkBr","LOCALS",1)
SetGlobal("BruKickedOut","LOCALS",1)
SetGlobal("BruenorOut","GLOBAL",1)
SetGlobal("FDlGu","GLOBAL",2)
AddXPObject(Player1,15000)
AddXPObject(Player2,15000)
AddXPObject(Player3,15000)
AddXPObject(Player4,15000)
AddXPObject(Player5,15000)
AddXPObject(Player6,15000)
EscapeAreaMove("AR0406",1400,1735,0)~EXIT
END
END

APPEND CADDERLY
IF WEIGHT #-2~ Global("DlCadd","GLOBAL",0) !InParty("DRIZ2") InParty("CVSandr") ~ THEN BEGIN SanRepl1
SAY~ Welcome, traveller. I hope you enjoy your stay.~ 
IF~~THEN REPLY~ Thanks for the warm words, but we come on a grave mission. We are friends of Drizzt Do'Urden.~ GOTO SanRepl2
END

IF~~ THEN BEGIN SanRepl2
SAY~ Drizzt? Friends  of him are friends to us. But you spoke of great problems.~
IF~~THEN REPLY~ An old artefact you both dealt with in the past has re-emerged - a broken crystal.~ GOTO SanRepl3
END

IF~~ THEN BEGIN SanRepl3
SAY~ I do not understand - the crystal has been destroyed. Entreri and Jarlaxle did it themselves. They came here in search for help and together we succeeded.~
IF~~THEN EXTERN CVSANDRJ SanCadder1
END

IF WEIGHT #-3~ Global("DlCadd","GLOBAL",3) !InParty("DRIZ2") InParty("CVSandr") ~ THEN BEGIN SanRepl4
SAY~I have finished my research and found some interesting facts.~
IF ~~ THEN GOTO 18
END

IF WEIGHT #-6 ~  Global("DlCadd","GLOBAL",4)!InParty("DRIZ2") InParty("CVSandr") ~ THEN BEGIN SanRepl5
SAY  ~Are you ready to depart?~
IF ~~ THEN REPLY ~Yes, let us go immediately.~GOTO 29
IF ~~ THEN REPLY ~No, i need to do some preparations still.~EXIT
END
END

APPEND IF_FILE_EXISTS DRMESS
IF~~THEN BEGIN 100
SAY~ Sandrah, ah...yes, the name was mentioned as well. I am the contact person.~
IF ~~ THEN REPLY ~And what kind of message did Entreri send?~ GOTO 101
IF ~~ THEN REPLY ~Oh, you are. What is the information you have? Speak up!~ GOTO 101
END

IF~~THEN BEGIN 101
SAY~ One of Drizzt Do'Urden's friends is held in a cave not far from here, Monzuma's Cave that is. He is tortured and will continue to be until you free him.~
IF ~~ THEN REPLY ~What is the intention behind this. It's a trap for Drizzt!~ GOTO 102
IF ~~ THEN REPLY ~This is but a trap for us. What is the purpose of this plump intrigue?~GOTO 102
END

IF~~THEN BEGIN 102
SAY~ Do not ask me, I'm but the messenger. You will need to go and find out yourself. Here is the location on your map. ~
IF ~~ THEN DO ~RevealAreaOnMap("RR3200") SetGlobal("MesDriz","LOCALS",1)~ EXIT
END
END

APPEND ERRTU
IF WEIGHT #-6 ~ !IfValidForPartyDialogue("Driz2") NumberOfTimesTalkedTo(0) Global("FirstEr","GLOBAL",0) InParty("CVSandr")~ THEN BEGIN 100
SAY~ YOU ARE NOT THE EXPECTED!!! WHERE IS DRIZZT?~
IF~~THEN EXTERN CVSANDRJ SanErrtu
END
END

APPEND HENMAN
IF WEIGHT #-6~  NumberOfTimesTalkedTo(0)!InParty("Brue2")!InParty("Wulfg2") !InParty("Driz2") InParty("CVSandr") ~ THEN BEGIN 100
SAY ~Sandrah! I have an important message for you! Actually it is for Drizzt but he cannot be found anywhere. I was told you may act on his behalf in this case. The Icewind Dale is under attack. The Dale has been turned into a Region of Terror.~
IF ~~ THEN EXTERN CVSANDRJ Sanhenman
END
END

APPEND MARTTIN2

IF WEIGHT #-6~  !InParty("Driz2") InParty("CVSandr") Global("DlgWmar","GLOBAL",0) ~ THEN BEGIN 100
SAY~The little Sandrah, Elminster's daughter! You cannot conceal the heritage of your wonderful mother...Ah, I see you are puzzled. Obviously you were too young back then to remember me. Anyway, how can I be of help?~
IF ~~ THEN REPLY ~ We assume you have some means of transportation we require for an urgent mission on behalf of Drizzt Do'Urden.~ GOTO 2
END
END

APPEND REG2
IF WEIGHT #-6~NumberOfTimesTalkedTo(0) Global("RegTalk","GLOBAL",0) Dead("Tannar2") Dead("Tannar3") Dead("Errtu") !InParty("Driz2") InParty("CVSandr")~ THEN BEGIN 100
SAY~ Whoever you are, I am glad to see human faces once more.~
IF~~THEN REPLY~ I am <CHARNAME>, a friend of Drizzt. We fight against Entreri.~EXTERN CVSandrJ Regis1
END
END

CHAIN
IF~~ THEN CVSandrJ Regis1
~Have you encountered Entreri since you were separated from Drizzt?~
==REG2~ He sent me here together with the demons you just killed...they tortured me..~
== CVSandrJ~ I am a competent healer, Regis, but you do not seem to be injured.~
==REG2~They always healed me immediately after the torture just to start anew.~
== CVSandrJ~Creatures without a heart - or with a dark black one.~
==REG2~It may help you to learn what has really happened. You must know that our whole company around Drizzt had urgent business at Mithril hall. We used a mage's skill to transport us to there from Icewind Dale but something went wrong.~
=~I found myself stranded in some foreign forest. After a couple of days I was captured by some drow and brought to the crystal tower where I got a glimpse Bruenor, Catti-Brie, Artemis Entreri and that drow, Jarlaxle.~
== CVSandrJ~Did you learn more from them?~
==REG2~Jarlaxle and Entreri used some crystal shard to detect and capture us. They referred to us as *bait*.~
== CVSandrJ~Hm, it is not hard to imagine that they expect Drizzt to come searching after you...or maybe even Drizzt and <CHARNAME>.~
==REG2~Just before we were separated and Entreri gave me to those demons he said something about the *Umar Hills*. What could it mean?~
== CVSandrJ~The Umar Hills in Amn, the next station on this hunt - the next trap for us.~EXTERN REG2 12


CHAIN
IF~~THEN CVSANDRJ SanCadder1
~ That is not possible. We have freed Bruenor and Regis and both have claimed they saw the crystal with their own eyes when they were imprisoned in the Crystal Tower for a while.~
DO~SetGlobal("DlCadd","GLOBAL",1)~
== CADDERLY~ But they brought it here, probably having recognised how dangerous the thing was. It is mysterious...but there is no doubt that the crystal has been destroyed. Maybe the tower was an illusion.~
== CVSANDRJ~ Possible - but it would not explain how those two traced and captured Drizzt's friends. (Sandrah provides a summary of the recent events.)~
== CADDERLY~ I see...maybe they found a similar artefact with comparable features. The crystal was not the only evil object on Toril. Our plane is full of them. They are rare but occasionally detected.~
== CVSANDRJ~ And this new crystal? We have no idea how to destroy it. I studied my father's tome and all I found was your name recommended for such a case.~
== CADDERLY~ Your father's book? The only man I know...is it?...are you...Elminster.~
== CVSANDRJ~ I am his daughter and I own a very special personal copy of his encyclopaedia.~
== CADDERLY~ Well, then, Elminster's daughter, know this. The crystal was destroyed by the breath of the ancient red dragon Hephaestus. The creature is still alive. Probably his breath could do the same on this new artefact.~
=~ The problem is that the object is in the hands of your enemies. Not even the cleverest thief could remove it from the Crystal Tower.~
== CVSANDRJ~ We will not give up so easily. If we join forces we surely will detect a possibility.~
== CADDERLY~ Hmm... I must consult the elder scrolls...In a day or two I may have found an answer. You are welcome to gather your strength here or simply rest a while in the temple and its surrounding.~EXIT

CHAIN
IF ~~ THEN CVSANDRJ Sanhenman
~Under attack you say? By whom?~
DO~SetGlobal("Driknicd","GLOBAL",1)~
==HENMAN~ Giants, Orcs, Goblins... All monsters from the mountains have united for the attack.~
== CVSANDRJ~ Then there must be someone who organises these attacks. I think we know you is behind it, a common foe now also for us.~
==HENMAN~ I see. I will gladly return to the Dale to bring the good news of your help.~DO ~EscapeArea()~EXIT

CHAIN
IF~~THEN CVSANDRJ SanErrtu
~Errtu!? Drizzt send you to the Abyss already twice! You should not be able to return to the surface for at least a hundred summers. How did it happen you are here?~
==ERRTU~ I HAD SOME HELP...DRIZZT's OLD FRIEND, ARTEMIS.~
== CVSANDRJ~ Among all demons of the Abyss he had to chose you.~
END
++~ You or any other demon will not stop us. We will get Artemis for that.~ EXTERN ERRTU 3

CHAIN
IF~~ THEN CHAUNTI 21
~ I cannot say exactly. One moment I was asleep, the next I found myself expelled from the Temple. Demons had overtaken it, I was told. Some of the brothers were dead, others had managed to seal the doors for the time being. I was immediately equipped with haste and transportation scrolls and sent out to look for you.~
== CVSANDRJ~ This sounds pretty urgent, <CHARNAME>.~
==CHAUNTI~ We do not possess enough power to take back the Temple. Everybody is needed to protect the seals. I know not how long they will hold the demons up. Your help is desperately required.~
== CVSANDRJ~We owe it to Drizzt, do you not think so?~
END
++~ (You nod in agreement.)~ +3
++~ This is all we need to know, let's not waste time.~ +3
++ ~ Wait a minute, this is not the only task we have at hand. In a calm thoughts, how much time do you think we may have?~+22

CHAIN
IF~~THEN CHAUNTI 22
~ Five days, no more...you must meet me here within five days or all will be lost.~
== CVSANDRJ~ I would prefer to do it right away, <CHARNAME>, but it is you to make the final decision.~
END
++~We will go right now.~ +3
++~We will return in time, I give you my word.~ DO~ SetGlobal("CQuestActive","GLOBAL",4)~EXIT

CHAIN
IF~~THEN CADDER3 101
~ We must now rest often and guard the seal in shifts but we are too few who are still left. This is the last chance to act.~
== CVSANDRJ~ Chaunticleer was rather vague in his report about the events. Can you give us a clearer picture before we set out to act?~
== CADDER3~ Yes, yes, sure. It was a normal night at the temple and I was preparing to go to sleep when a young priest came running to notify me. ~
=~ An inexperienced acolyte had activated a ritual circle of the highest order and thus opened a portal directly to the Abyss. How he got inside the ritual chamber at all...we will never know as he as well as the guards  died in the initial onslaught from hell.~
=~ Demons started to appear one by one, faster than the fearless brothers could fight them back. Many lost their life as we failed - until we finally could install the seals to keep them at bay.~
=~ How long those hastily summoned seals can hold those demons back we don't know...but if they escape...oh, Deneir...Something must be done quickly.~
== CVSANDRJ~ When the reinforcement from the Abyss is stopped, <CHARNAME> and us should be able to eliminate those creatures that have come up already. But we must first close that portal again. ~
== CADDER3~ You have exactly described your role here. It needs a human sacrifice to close that portal and one of our fearless brothers has volunteered for that. Unfortunately all attempts to reach the portal have failed so far.~
=~ We can hear the noise of the fighting as Deneir himself tries to activate the tortured and dead to fight the hellish minions. But even a God's powers on the primary plane are not sufficient.~
== CVSANDRJ~ The Gods need the powers of the mortals when they come to Faerun themselves. Only with our aid Deneir may have enough power to hold back the demons until your priest can close the portal.~
== CADDER3~ Much depends on your success, Sandrah. If the demons escape the temple nothing will stop them to bring immense destructions to our Realms.~
END
++~ Let us go to see the priest who will close the portal. We have little time to waste.~
DO ~SetGlobal("CQuestActive","GLOBAL",7)~ EXIT

EXTEND_TOP DRIZ2 25 #1
IF~InParty("CVSandr") GlobalGT("SanDrizzt","GLOBAL",7)~ THEN REPLY~ I propose that we operate separately to increase our chances to succeed. I know Sandrah will take care that we do everything necessary to help you and your friends in time. ~ GOTO 27
END

EXTEND_TOP DRIZ2 27 #1
IF~InParty("CVSandr") GlobalGT("SanDrizzt","GLOBAL",7)~ THEN REPLY~ I propose that we operate separately to increase our chances to succeed. I know Sandrah will take care that we do everything necessary to help you and your friends in time.~ DO ~SetGlobal("Drizztiwdornot","GLOBAL",1) SetGlobal("DrizztKickedOut","GLOBAL",1) SetGlobal("SanRotRepl","GLOBAL",1) SetLeavePartyDialogueFile() EscapeAreaMove("RR4002",1027,1088,8) ~ EXIT
END

EXTEND_TOP DRMESS 1 #0
IF~InParty("CVSandr")!InParty("Driz2")~ THEN REPLY ~ He is not with us this time but me and his friend Sandrah are following his trace closely.~ GOTO 100
END

EXTEND_TOP DRMESS 3 #0
IF~InParty("CVSandr")!InParty("Driz2")~ THEN REPLY ~ He is not with us this time but me and his friend Sandrah are following his trace closely.~ GOTO 100
END

APPEND IF_FILE_EXISTS C6DRIZZ1

IF WEIGHT #-6~InParty("CVSandr") GlobalGT("SanDrizzt","GLOBAL",7)~ THEN BEGIN Sanc6RU1
SAY~ Sandrah! Hm, <CHARNAME>, how unexpected and how wonderful! (Drizzt kisses Sandrah briefly.) Later, my love, let us first look at why we all are here.~
IF~~THEN REPLY~ (You give Drizzt an overview of the recent events and the mission that is now at hand.)~ GOTO Sanc6RU2
END

IF~~THEN BEGIN Sanc6RU2
SAY~ Grave news, my friends. A war between the elves and drow, the one thing I tried to prevent all my lifetime. How can we be best of help?~
IF~~THEN REPLY~ We need to go where the elves cannot go themselves - to Athkatla to retrieve the Lathorne that has been stolen by Jon's vampiric sister Bodhi.~ GOTO 33
IF~~THEN REPLY ~ Do not get involved, Drizzt, neither party will accept you in their ranks.~ GOTO 42
END
END

APPEND CHAUNTI
IF WEIGHT #-6~  Global("CQuestActive","GLOBAL",2) !InParty("Driz2")InParty("CVSandr")~ THEN BEGIN 20
SAY ~Finally I found you, friends of Drizzt! Deneir smiles upon me! You remember me? Cadderly of the Spirit Soaring Temple! Demons have overrun us, we need your help. <CHARNAME>? Sandrah?~
IF ~~ THEN REPLY ~ Sure, sure, just calm down good man, and tell us what has happened.~ EXTERN CHAUNTI 21
END
END

APPEND CADDER3
IF WEIGHT #-6~  Global("CQuestActive","GLOBAL",6) !InParty("Driz2")InParty("CVSandr")~ THEN BEGIN 100
SAY ~ Friend, it is a great relief to see you have come. With Drizzt's absence I knew of no one else with the abilities to help us. We cannot hold back the demons much longer - only six of us are still left to guard the seals. We are at the end of our resources.~
IF~~ THEN EXTERN CADDER3 101
END

IF WEIGHT #-5~  Global("CQuestActive","GLOBAL",8) !InParty("Driz2")InParty("CVSandr")~ THEN BEGIN 102
SAY ~ This is brother Lucus, Sandrah, <CHARNAME>, those will accompany you to the portal chamber.~
IF~~THEN REPLY~ I am honoured to meet you, brother Lucas. Not many would have the courage to do for others what you will do.~ GOTO 17
END
END

APPEND CADDER5
IF WEIGHT #-1~Global("CQuestActive","GLOBAL",17)!InParty("Driz2")InParty("CVSandr")~ THEN BEGIN 10
SAY~Success! You have really done it. You will be always welcome here as our heroes.~
=~ Now it is time to bury and mourn our dead and to rebuild the Temple. Thank you, Sandrah, thank you <CHARNAME>. You have substituted Drizzt well.~
=~Brother Chaunticleer will transport you from here whenever you wish to return to Amn.~
IF~~THEN DO~ SetGlobal("CQuestActive","GLOBAL",18)
ActionOverride("CVSandr",AddSpecialAbility("CVVeto"))
AddXPObject(Player1,50000)
AddXPObject(Player2,50000)
AddXPObject(Player3,50000)
AddXPObject(Player4,50000)
AddXPObject(Player5,50000)
AddXPObject(Player6,50000)~EXIT
END
END

// Drizzt
INTERJECT DRIZ2 0 SanDriMA
==  CVSandrJ IF ~ InParty("CVSandr") GlobalGT("SanDrizzt","GLOBAL",7)~ THEN ~ Drizzt!!~
==  DRIZ2 IF ~ InParty("CVSandr") GlobalGT("SanDrizzt","GLOBAL",7)~ THEN ~ Sandrah, how unexpected and how wonderful!~
= ~ (They embrace each other like in a whirlwind.)~
==  CVSandrJ IF ~ InParty("CVSandr") GlobalGT("SanDrizzt","GLOBAL",7)~ THEN ~Yes, unexpected and wonderful and just like we knew it was going to happen. Let us talk about what happened to each of us once we have escaped this hole.~
END DRIZ2 7

//Cult of the Beast
CHAIN
IF ~ Global("SanDestBeastCult","GLOBAL",1) ~ THEN CVSANDRJ DestBeastCult
~ It is time to stop with this, <CHARNAME>! These children you are asked to kill are real this time. We will not spill their blood.~
DO~ SetGlobal("SanDestBeastCult","GLOBAL",2) ~
==CultBeH ~ Silly girl, who are you to interfere with this most holy ritual?~
== CVSandrJ ~ Holy? I have never encountered a gang of miscreants worse than you and the Beast you worship. We have played along your lines until now to learn all about your cult and its belief. We know enough now and we will end it.~
==CultBeH ~ You have no idea of the holy powers you are facing.~
== CVSandrJ ~ You and your beast will scare Toril no longer. It is you who errs about whom he is facing today.~
==CultBeH ~ (The Highest priest seems to fall into a kind of trance for a minute. As he opens his eyes again you can swear you see sheer panic in his gaze at Sandrah for an instant.) ~
=~ You. you...who are you really...what amount of power...~
== CVSandrJ ~ I am Sandrah, priestess of Mystra, and I am your destructor.~
==CultBeH ~ A mere priestess...I see...not the goddess herself? Not all is lost then, my fellows.~
END
++~ He took you for Mystra herself? It is time to end this bloody experience.~ EXTERN CULTBEH 53
++~ You are right, Sandrah, we can learn no more and must stop this cult.~  EXTERN CULTBEH 53

CHAIN
IF WEIGHT #-2~Global("CattiBrieOut","GLOBAL",3) AreaCheck("CVElm3") ~THEN Driz2J JoinTempl
~Are we travelling together again, <CHARNAME>?~
END
++~We have finished our common task for the time, Drizzt. Just enjoy yourself.~EXIT
++~It will be my pleasure, my friend. Come with me again.~DO~SetGlobal("CattiBrieOut","GLOBAL",4) JoinParty()~EXIT
