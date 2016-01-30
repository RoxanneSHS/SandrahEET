BEGIN CVMerch
APPEND BNalia

IF~ Global("SanHealNalia","GLOBAL",3)~THEN BEGIN SanHeal
SAY~ You magical skills are enormous compared to my own little attempts in this art. You mentioned you father was a mage, did he teach you?~
IF~~THEN DO~ SetGlobal("SanHealNalia","GLOBAL",4)~ EXTERN BSandr sanHealNalia
END
END

CHAIN
IF~~THEN BSandr sanHealNalia
~I learned some from him but most at the Temple of Mystra at Waterdeep. My skills are those of a priestess and my goddess grants them to me.~
==BNALIA~ You must be one of her favourites then.~
==BSANDR~ Actually the true development only started after my training at the Temple itself - when I met and accompanied <CHARNAME>. I had to constantly use my abilities in our combats and the healing after battle and became more confident and skilled by it. It looks like a day of practice in real life is worth a tenday of study, I mean - if you survive it.~
==BNALIA~ In this case I may now have the chance to develop myself as well, growing each day with the challanges at <CHARNAME>'s side. Even if I will probably never reach your level as you serve the goddess of all magic herself.~
==BSANDR~ No need to envy me, Nalia, Mystra's servants do not have an advantage over other true scholars of the magic arts - they just have more responsibilities to see that those skills are used for an acceptable purpose.~
==BNALIA~ I see. In this case your abilities surely indicate that you must be a very high ranked priestess in her services.~
==BSANDR~ No, I am not, but that is a different story altogether.~DO~RealSetGlobalTimer("SanNalInterv","LOCALS",300)~EXIT


CHAIN
IF~ Global("SanNalia","GLOBAL",1) ~ THEN BSANDR SanNalGown
~ (Sandrah appears in the public room out of her armour and dressed up in a wonderful new gown, embroidered richly and embellishing every aspect of her marvellous body.)~ DO ~ SetGlobal("SanNalia","GLOBAL",2)~
==BNALIA~ Must you REALLY display your beauty and wealth in such a SHAMELESS way, Sandrah?~
==BSANDR~ Shameless? Yes, if you mean to say that I am neither ashamed of my beauty nor of my wealth than you are correct. I have gained none of them by exploiting poor peasants or robbing honest people.~
==BNALIA~ It makes me weep to think of the poor seamstress who had to spend endless hours of labour in an ill lit cold chamber to manufacture it.~
==BSANDR~ The woman who made it, a lone mother of six children by the way, spent onehundred and seven days to make it. Take a look, every stitch is perfect - it really is more than a gown, it is a work of art.~
==BNALIA~ Exploitation of the worst kind!~
==BSANDR~ The woman received a payment that let herself and her children live well for two whole years, Nalia. In addition, her reputation in my hometown became such that she never runs out of customers now and last time I met her she had engaged two young neighbour girls for her assistance with all the orders she receives.~
==BNALIA~ An exception then...~
==BSANDR~ An example of a fair deal I would call it. When she saw me wearing the gown one day at the Waterdeep temple she was beaming with pride and told me I was exactly matching the vision she had of how it would look when worn that she had during the production.~
==BNALIA~ (Nalia probes Sandrah's sleeve with her fingertips.) The fabrique is fantastic - it is indeed a work of art. You look wonderful in it.~ DO~RestParty()~
EXIT

CHAIN
IF~Global("SanNaliaMarket","LOCALS",2)~THEN BSANDR SanNalMrkt
~This seems to be true Calimshan silk, good man. Very fine quality indeed - just the colour would not really fit me.~
DO~SetGlobal("SanNaliaMarket","LOCALS",3)~
==CVMerch~I could only offer this yellow...but, no it would really bite with your hair. Maybe next time when the caravan comes through from the south. I expect new merchandise in just a tenday, mylady.~ DO~EscapeArea()~
==BSANDR~Thank you, good to know. I will find the time to take another look then.~
==BNALIA~ You reveal an expert view with those fine things, Sandrah. Your style is almost perfect, even in the combat wear that was made for you.~
==BSANDR~Well, I hail from the City of Splendor after all. It probably had some influence on my tastes.~
==BNALIA~ That explains why I could not identify yet from which family of the noblesse you come, I know not many of the nobles of Waterdeep.~
==BSANDR~You are mistaken, Nalia, I am not of noble birth at all.~
==BNALIA~ Oh...I would have sworn you were. Your behaviour and your language, your clothes and the way you deal with people...~
==BSANDR~I truely hope I do not come across so snobbish and arrogant.~
==BNALIA~Not at all, not every noble shows off like my aunt Delcia or my wanna-be bethroted Isaea. Yours is the true manners and noble behaviour that made me think you were of noble birth.~
==BSANDR~Then all of it can be found in the offspring of a mage and a merchant's daughter just as well.~
==BNALIA~It is hard to believe but your education must have been exquisite then.~EXIT

CHAIN
IF~ Global("SanNalia","GLOBAL",3) ~ THEN BSANDR SanNalscl
~ Is something wrong with that scroll, Nalia?~
DO ~ SetGlobal("SanNalia","GLOBAL",4)~
==BNALIA~ Good you ask, maybe you can help me with that spell here. Either I am too dumb or it is written down incorrectly.~
==BSANDR~Hm. It looks to me as something is missing here at the end. But then I am not an expert for learning spells from a scroll, it is not a priestess' way to add to her skills. I am afraid you need to wait until you find a correct version of it.~
==BNALIA~ Thank you anyway. I have observed that your spellcasting is much different from what I do. ~
==BSANDR~Mystra is the servant and the guardian of the Weave. She has granted me more and more insight and access to that power over time.~
==BNALIA~ Very special indeed - especially as you have denied to hold any high rank in her temple or such.~
==BSANDR~Oh? Has <CHARNAME> not told you? I am the granddaughter of Midnight.~
==BNALIA~But...then the mage you called your father must be...Elminster.~
==BSANDR~Yes.~
==BNALIA~But you have denied to be of any noble blood the other day.~
==BSANDR~The mage of Shadowdale who settled down at Waterdeep to marry a merchant's daughter is neither one of *noble blood* as you call it nor does he hold any rank or position in the Realms.~
==BNALIA~You mean to say that one of the most respected and influential personalities of our time is nothing but a plain commoner?~
==BSANDR~Just like his daughter if you like to call her this. His name alone and what it stands for is all the reputation and rank he needs.~
==BNALIA~A man to be taken and accepted by what he is by his deeds not by his blood or birthright. It is possible then. It should be the same for everyone, do you not think so?~
==BSANDR~Not everyone can be Elminster. Some farmer may just be a farmer and be happy for it all his life.~
==BNALIA~Should we not encourage him to strive for more?~
==BSANDR~If he is a happy farmer why try to make him an unhappy failed paladin? However if he had the ambition and the ability to become paladin nobody has a right to deny it to him just because he was a farmer's son.~
==BNALIA~He maybe will never try it if not somebody encourages him first.~
==BSANDR~Not all of us can be king and many of us do not even want to be.~EXIT

CHAIN
IF~ Global("SanNalia","GLOBAL",5) ~ THEN BSANDR SanNalIse
~ You are not yet ready to go to bed, Nalia?~
DO ~ SetGlobal("SanNalia","GLOBAL",6)~
==BNALIA~ I am still rolling around this question in my head from one side to the other and back again. Maybe...~
=~...you grew up alone with your father, I learned, not unlike myself.~
==BSANDR~(Smiles) I was spared the equivalent to your terrible aunt - anyway, I hope I can help you if you told me what the problem is that gives you so much headache.~
==BNALIA~ My father...the Roenalls...I mean, he made this stupid promise...I still have no idea what made him do such a thing - so unlike himself and so...so degrading for me. Can you imagine your father to have done such a thing?~
==BSANDR~He never tried to influence my love life in any way. But then I guess this was not what your father had in mind as well. From everything you have told us about him there may be only one possible reason - responsibility.~
==BNALIA~ Sure this was a prime factor for him, responsibility for the Keep, the land, the people - but also for me, Sandrah!~
==BSANDR~(Sandrah has taken Nalia's hand as the young aristocrat has sat down by her side.)~
=~It must surely have been a terrible choice for your father having to decide between the two, the love for his only child and the responsibility for the land and its people. Having to evaluate the fate of the one against the wellfare of so many. ~
==BNALIA~ It makes sense what you say. If those were his choices I were the lamb to be sacrificed...~
==BSANDR~You were his heir, Nalia, and as such you inherited the responsibility for your people and shared it with him. In his eyes it was your duty to take the burdon to live with Isaea for the wellfare of your father's lands - your lands - and the people on it.~
==BNALIA~ Do you think your father would have been able to do such a thing to you?~
==BSANDR~My father would have known that I am no *lamb* waiting just patiently for its fate. He would have known I would use my own wit and strength to find a solution. Your father surely thought likewise of you, Nalia, considering what you inherited from him and - from your mother.~
==BNALIA~ Again I think you are right.~
=~Thank you, Sandrah. You are truely the friend I needed tonight.~DO ~RestParty()~EXIT