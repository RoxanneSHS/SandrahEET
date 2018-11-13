APPEND BTSUJAT
IF WEIGHT #-19~Global("SanHealTsuja","GLOBAL",3)~THEN BEGIN SanHealTsu1
SAY~You are skilled in what you do, woman.~
IF~~THEN DO~SetGlobal("SanHealTsuja","GLOBAL",4) RealSetGlobalTimer("SantsuInt","GLOBAL",3000)~EXTERN BSandr HealTsu
END
END

CHAIN
IF~~THEN BSandr HealTsu
~Your physique resembles that of the elves of our plane to a large extend. Sufficient for a skilled healer to do her task - *man*.~
==BTSUJAT~I am Tsujatha Melalor of Girlalion, in case you missed that, woman.~
==BSandr~I am Sandrah of Waterdeep as you very well are aware, man.~
==BTSUJAT~A name of no significance as far as I know.~
==BSandr~As far as you know...~EXIT

CHAIN
IF WEIGHT #-20~Global("SanHealTsuja","GLOBAL",5)~THEN BTSUJAT HealTsu2
~Who is that Elminster I hear mentioned so often? ~
DO~SetGlobal("SanHealTsuja","GLOBAL",6)RealSetGlobalTimer("SantsuInt","GLOBAL",3000)~
==BSandr~(Sandrah studies in her large toom as Tsujatha squarely approaches her.) ~
==BTSUJAT~Obviously the author of that book you study all the time.~
==BSandr~(Sandrah does not look up from her page.) A well-known mage here on that plane.~
==BTSUJAT~What is he to you, your teacher?~
==BSandr~Yes, he taught me much and I still learn a bit more from his written experience every day.~
==BTSUJAT~Are you renowned on Toril as well?~
==BSandr~Not enough for my name to have reached your ears, it seems.~
==BTSUJAT~Sandrah of Waterdeep, a cleric of Mystra.~
==BSandr~Aah, you heard of her?~
==BTSUJAT~A student of some Elminster who apparently has some reputation in these Realms.~
==BSandr~Anything else you think you must know about me?~
==BTSUJAT~Not at the moment. I am not even sure whether what I know now is of any relevance to me.~
==BSandr~(Sandrah has not once lifted her gaze from her toom and pays no further attention to the elf who still lingers nearby.)~EXIT

CHAIN
IF ~Global("SanHealTsuja","GLOBAL",7)~THEN BSandr HealTsu3
~(Sandrah slightly lifts her eyebrow as she sees Tsujatha approach her.)~
DO~SetGlobal("SanHealTsuja","GLOBAL",8)RealSetGlobalTimer("SantsuInt","GLOBAL",3000)~
==BTSUJAT~I have found out that this Elminster of yours is one of the great mages of this plane, equal to the highest rulers and respected by all.~
==BSandr~Has he become relevant to you now due to this insight?~
==BTSUJAT~Maybe it is worth to mention that I am the son and heir of the greatest wizard from my plane, even if that man has not the high reputation of that Elminster.~
==BSandr~Mmh. Do you feel this heritage as a blessing or a curse?~
==BTSUJAT~You seem to have a fine understanding of what such a situation and heritage can do to a man.~
==BSandr~Or a young woman respectively.~
==BTSUJAT~Is that relevant?~
==BSandr~Probably not for you - I am Elminster's daughter.~EXIT

CHAIN
IF ~Global("SanHealTsuja","GLOBAL",9)~THEN BSandr HealTsu3
~(Sandrah has taken the opportunity of your stop to deal with some of her medical essences.)~
DO~SetGlobal("SanHealTsuja","GLOBAL",10)RealSetGlobalTimer("SantsuInt","GLOBAL",3000)~
==BTSUJAT~Elminster's daughter, I have heard many episodes about your father and also about yourself during the last days.~
==BSandr~Anything of *relevance*?~
==BTSUJAT~You are strong and determined. I do in a way admire goodness--when it is strong--even if I have no goodness of my own. ~
==BSandr~You always tell me things I already know in the most arrogant fashion. Do you ever consider whether any of your conclusions or insights have any *relevance* for me?~
==BTSUJAT~Should I?~EXIT

CHAIN
IF ~Global("SanHealTsuja","GLOBAL",11)~THEN BSandr RomTsuSan1
~(Raises an eyebrow to indicate her mild interest as Tsujatha approaches her.)~
DO~SetGlobal("SanHealTsuja","GLOBAL",12)RealSetGlobalTimer("SantsuInt","GLOBAL",3000)~
==BTSUJAT~(Nodding politely at the priestess the strange mage sits down beside Sandrah and studies the darkening sky.)~
=~The nights of Gilalion are much brighter than those here. My world has two moons, one red and one blue, and they are both ever in the night sky.~
==BSandr~This sounds beautiful and surely is something you would miss about your home. Those who care about beauty may also find it in our sole pale one, it is different but soothing nonetheless.~
==BTSUJAT~(Sighs) In the right company anything can reveal its own kind of beauty...Do you see a *relevance* in two strangers of different worlds to talk about some lights in the sky, Sandrah of Waterdeep?~
==BSandr~(Smiles) Knowledge of foreign worlds - beauty - or the true feelings that such a conversation between said *strangers* may imply...loads of relevance can be detected in that.~
==BTSUJAT~That is good to know. I have learned that the healers of this plane can take care of more than just bodily sufferings, but such counselling would require some trust between the patient and the healer.~
==BSandr~Yes, it does. (She faces Tsujatha and returns the stare of his silver eyes.)~
==BTSUJAT~There is nothing left for me there on Gilalion except memories.~
==BSandr~You will tell me when you think the time is right for it and I will listen.~
==BTSUJAT~(He nods quickly and in leaving kisses Sandrah's hand in an old fashioned manner. His expression is both fierce and grateful.)~EXIT

CHAIN
IF ~Global("SanHealTsuja","GLOBAL",13)~THEN BSandr RomTsuSan2
~That scar on your forearm is not from a weapon or an accident, Tsujatha. (Sandrah touches his forearm with her fingertips.) ~
DO~SetGlobal("SanHealTsuja","GLOBAL",14)RealSetGlobalTimer("SantsuInt","GLOBAL",3000)~
==BTSUJAT~A professional remark or a question, healer?~
==BSandr~(Smiles) A ritual - one where blood is drawn and maybe mixed...ah, and it was an invitation to talk if you want.~
==BTSUJAT~On my own world I was a magician of well-known prowess, and I was the Prince of my nation. I adventured with the Princess Sillara, and she swore the blood-oath of kinship with me. ~
==BSandr~I do not know the customs of your world, I have to confess. To swear a blood-oath however sounds not like a small thing - in any world.~
==BTSUJAT~I was not born of the royal House of Tamar. Together with the Princess, I slew an ancient Dragon before the gates of the royal city. ~
==BSandr~Yes?~
==BTSUJAT~(Tsujatha looks up at Sandrah's face and smiles.) Sillara loved me as a brother.
After we defeated the Dragon, the Princess left to marry a nobleman of another land, and I remained behind to be the High Councilor and Prince.~
==BSandr~It was her decision...not a mutual one. Was is because of your heritage and her -  duties as a princess?~
==BTSUJAT~She loved me enough to do this ritual, but she wed another. *He* was the one whom she truly loved. I was always second for her.~
==BSandr~Would any other woman who cares for you suffer the same fate - to be second behind Sillara?~
==BTSUJAT~I am just three hundred summers young, Sandrah of Waterdeep. Much can happen in a man's life...~EXIT

CHAIN
IF ~Global("SanHealTsuja","GLOBAL",15)~THEN BSandr RomTsuSan3
~(Sandrah nibbles on some dried berries she has found in her backpack.) ~
DO~SetGlobal("SanHealTsuja","GLOBAL",16)RealSetGlobalTimer("SantsuInt","GLOBAL",3000)~
==BTSUJAT~I learned a bit about that rich city you hail from, Sandrah, the City of Splendour.~
==BSandr~I hope you are not misled to draw false conclusions from what you heard about Waterdeep to your companion, my friend. Even if I love my hometown for what it is - home - I am not a typical citizen of that city.~
==BTSUJAT~You wouldn't be a typical citizen of any city or plane, my lady. Even as an outsider it is plain that you are special wherever you are.~
==BSandr~Well, I would be satisfied to be a bit special for one or the other person I really care for...~
==BTSUJAT~(With a quick move Tsujatha grabs the berry from Sandrah's hand and throws it behind his shoulder.)~
==BSandr~Ooops...~
==BTSUJAT~You will like this much better. (A small yellow light lingers on Tsujatha's fingertips for a moment before it jumps into Sandrah's still open palm. A second later it has turned into a piece of chocolate there.)~
==BSandr~(Bites off a small bit from the chocolate.) My favourite - thank you, how could you know?~
==BTSUJAT~Patient observation of one having become very *relevant* these days.~
==BSandr~(Smiles gently at the mage.) You deserve your share. (She puts another bit of the chocolate into his astonished mouth.)~
==BTSUJAT~Hmm - good.~DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~EXIT

CHAIN
IF ~Global("SanHealTsuja","GLOBAL",17)~THEN BSandr RomTsuSan4
~(Sandrah has taken out her toom for study before bedtime.) ~
DO~SetGlobal("SanHealTsuja","GLOBAL",18)RealSetGlobalTimer("SantsuInt","GLOBAL",3000)~
==BTSUJAT~You prefer facts to poetry, Sandrah?~
==BSandr~And deeds to the word, Tsujatha.~
==BTSUJAT~I came to like the poetry of the prime a bit. It often expresses feelings very similar to my own.~
==BSandr~How about the poets of your own world?~
==BTSUJAT~*One shade the more, one ray the less,
 Had half impaired the nameless grace
 Which waves in every auburn tress,
 Or softly lightens over her face;
 Where thoughts serenely sweet express
 How pure, how dear their dwelling-place.*~
==BSandr~(She has put her book aside and moves up close to the mage) A poet from your world? Women have dark hair on Girlalion...~
==BTSUJAT~Some travel far to find grace and beauty on other planes, Sandrah of Waterdeep.~
==BSandr~(She expectantly looks up to Tsujatha, now standing very close to him.) On this plane it would now be the moment for a small deed, my poet.~
==BTSUJAT~Our worlds are not that different in that.~
=~(He bends forward until his lips almost touch Sandrah's mouth.)~
==BSandr~(She puts her arm around his neck and with a slight pull closes the gap.)~
==BTSUJAT~A woman of deeds...(Their lips finally meet for the first passionate kiss...)~DO~RestParty()~EXIT

CHAIN
IF~Global("SanFlirtTalk","LOCALS",1)~THEN TSJFlirt Wanthim
~Say, you there! I simply *must* know who that scrumptious elf is with you!~
DO~SetGlobal("SanFlirtTalk","LOCALS",2) ~
==CVSandrJ~Lady Arlluvia? You wander far off from Waterdeep nowadays to...hunt for men.~
==TSJFlirt~The impertinent Sandrah of all people!! I have no dealings with you, I am just interested in that two meter elf with the golden skin.~
==CVSandrJ~He may not share that interest...~
==TSJFlirt~Hush, let the man speak for himself. ~
=~Listen, elf, I am *The* Lady Arlluvia of Waterdeep, the wealthiest heiress this side of Calimport, and what I want is simple! YOU - I always liked elves, but they were too small for my tastes. You are perfect!~
==BTSUJAT~(Tsujatha looks at Sandrah with a perplexed expression.) I had not this impression of the Waterdeep manners from our relationship, Sandrah.~
==CVSandrJ~Oh, my sweet Tsujatha, your feelings do not betray you. This lady is...well, make up your own mind about her if you want.~
==TSJFlirt~Tsujatha, what an exotic name! Boy, I hope you are intelligent enough to see your chances regardless what spell this burgeois wannabe beauty put on you. She is not even of noble blood! When such charms and rewards as mine are before you, any previous infatuation would simply die away!~
==BTSUJAT~Is that person real, Sandrah?~
==CVSandrJ~I am sure you can reveal that for yourself, sweetling.~
==TSJFlirt~What do you say, lovely Tsujatha? I can make your life perfectly easy from now on! Everything you ever wanted, you could have.~
==BTSUJAT~I have all I want, lady. And I have never met a lady more noble of heart than Sandrah of Waterdeep. (He turns to Sandrah and kisses her long and passionately.)~
==TSJFlirt~Humph. Well, there's no accounting for taste. And I suppose the peasantry are better off together.~DO~EscapeArea()~EXIT

CHAIN
IF~Global("Tsuguild","GLOBAL",2)~THEN BSandr SanTsuWhyTh1
~You seem to be distressed by something, Tsujatha. Maybe I can help you with my advice if you care to share your thoughts with me.~
DO~SetGlobal("Tsuguild","GLOBAL",3)~
==BTSUJAT~I have somehow misjudged you and <CHARNAME> and your thriving for goodness. Now I see that you are not as honest and pure as I thought.~
== BSandr ~Is that so? Be assured that this company destroys evil where we find it. But often things are different from what they appear to be at first glance.~
==BTSUJAT~I trust you very much, Sandrah, and if you follow <CHARNAME> in this action then there might be a cause I do not see. You are <PRO_HISHER> counsellor and would deny loyalty to an unjust act. So how come <CHARNAME> accepted to lead a thieves guild?~
== BSandr ~We have destroyed this guild that was led by the evil Mae'Var. <CHARNAME> has taken control of the activities now as the group itself cannot be completely destroyed. Instead of letting another criminal murderer gather these thieves it is now us who lead the activities and thus control them. Admitted, it is not the clear righteous road we are taking, but since we cannot destroy the evil it is the second best solution to control it and minimise the harm done to innocents.~
==BTSUJAT~Life on this plane is more complicated than it appears from the outside. I am used to think in good or bad only - so where is this behaviour to be classified?~
== BSandr ~Sometimes on our plane here it is the only way to fight a fire with fire.~
==BTSUJAT~Or to control the criminals by enforcing your reign over them? I will contemplate on your words, Sandrah, and I thank you for them as I was about to judge <CHARNAME> prematurely.~
EXIT
