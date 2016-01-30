CHAIN
IF WEIGHT #-3~Global("SanHealSkie","GLOBAL",3)~THEN 1xSkieb Sandrah1
~Brilliant, a healer with your skills makes life of an adventurer a bit more bearable.~
DO~SetGlobal("SanHealSkie","GLOBAL",4)RealSetGlobalTimer("SanSkieT","LOCALS",2000)~
==BSandr~This life of an adventurer is what you chose over the dull life of the aristocracy on the Sword Coast, *mylady*.~
==1xSkieb~Ah, well...that is no excuse for the dirt and inconvenience and...the hurt and blood.~
==BSandr~I like comfort and a warm bath myself, when the time for it is right. If we cannot have that every single day on the road, we have no one but ourselves to blame.~
==1xSkieb~Ah, but how practical to have one with your abilities in the group. Even better - you know how a well manicured toe nail needs to look like - see, not like this one right here.~
==BSandr~And you ask me to repair it with a spell while our comrades are suffering and requiring my attendance. No, Lady Silvershield, definitely not!~
==1xSkieb~We should go. Eh...do you by any chance have any spell for a headache? ~EXIT

CHAIN
IF WEIGHT #-3~ Global("SanHealSkie","GLOBAL",5) ~ THEN 1xSkieb Sandrah2
~Ah, at last some prospect of a civilized lifestyle...~
DO ~ SetGlobal("SanHealSkie","GLOBAL",6)RealSetGlobalTimer("SanSkieT","LOCALS",2000)~
==BSANDR~ (Sandrah appears in the public room out of her armour and dressed up in a wonderful new gown, embroidered richly and embellishing every aspect of her marvellous body.)~
==1xSkieb~ Must you REALLY display your beauty and wealth in such a SHAMELESS way, Sandrah?~
==BSANDR~ Shameless? Yes, if you mean to say that I am neither ashamed of my beauty nor of my wealth than you are correct. I have gained none of them by exploiting poor peasants or robbing honest people.~
==1xSkieb~ Are you implying that's how my family came to its status and wealth!~
==BSANDR~ Not all of the rich make their thieving as obvious as you do. Many of them do not waste their time with the few coins they can grab by burglering simple locks.~
==1xSkieb~Who must be silly, girl, to accuse the rich of stealing when you dress up in a gown worth more than needed to feed a poor large family for over a year.~
=~Did you ever think of the poor seamstress who had to spend endless hours of labour in an ill lit cold chamber to manufacture it?~
==BSANDR~ The woman who made it, a lone mother of six children by the way, spent onehundred and seven days to make it. Take a look, every stitch is perfect - it really is more than a gown, it is a work of art.~
==1xSkieb~ You're the worst kind of hypocrite I ever encountered!~
==BSANDR~ The woman received a payment that let herself and her children live well for two whole years.  In addition, her reputation in Waterdeep became such that she never runs out of customers now and last time I met her she had engaged two young neighbour girls for her assistance with all the orders she receives.~
==1xSkieb~ You try to convince me that your vanity is really charity in disguise?~
==BSANDR~ An example of a fair deal I would call it. When she saw me wearing the gown one day at the Waterdeep temple she was beaming with pride and told me I was exactly matching the vision she had of how it would look when worn that she had during the production.~
==1xSkieb~ (Skie probes Sandrah's sleeve with her fingertips.) The fabrique is fantastic - it is indeed a work of art. You look wonderful in it.~ DO~RestParty()~
EXIT

CHAIN
IF WEIGHT #-3~ Global("SanHealSkie","GLOBAL",8) ~ THEN 1xSkieb Sandrah3
~Gods, what a fight...say, Sandrah, how come it looks like not a single hair in your arrangement has gone astray?~
DO ~ SetGlobal("SanHealSkie","GLOBAL",9)RealSetGlobalTimer("SanSkieT","LOCALS",2000)~
==BSANDR~Has it not? Amazing.~
==1xSkieb~You don't even care? I'm afraid my whole make-up is smeared and I look like some old hag - while you just stand there and sparkle!~
==BSANDR~Are you really implying there is nothing better to do at this moment than to care about our looks?~
==1xSkieb~ Don't underestimate the power of a good make-up!!~
==BSANDR~(Sigh) I wish I could win more battles with my charm than with my hammer.~EXIT

CHAIN
IF WEIGHT #-3~ Global("SanHealSkie","GLOBAL",10) ~ THEN 1xSkieb Sandrah4
~Say, Sandrah, do you stumble sometimes?~
DO ~ SetGlobal("SanHealSkie","GLOBAL",11)RealSetGlobalTimer("SanSkieT","LOCALS",2000)~
==BSANDR~(Shrugs her shoulder) I probably did occasionally. I do not recall any significant event connected to that.~
==1xSkieb~Admirable, I sometimes think I was born with two left feet, really.~
==BSANDR~In combination with two left hands that makes the ideal thief.~
==1xSkieb~What??...Oh, you don't take me seriously, don't you?~
==BSANDR~Should I? Honestly I cannot say you appear to be any clumsier than any other normal person.~
==1xSkieb~(Sigh) How frustrating! I'm just a normal person for you after all.~
==BSANDR~Do you mean that stumbling more often than others would make you special?~
==1xSkieb~Maybe - maybe not. We have to distinguish ourselves from the masses, don't we.~
==BSANDR~By stumbling over the surface of Faerun? A brilliant idea. I will start to practice right away.~EXIT

CHAIN
IF WEIGHT #-3~ Global("SanHealSkie","GLOBAL",12) ~ THEN 1xSkieb SandrahL1
~Your choice in men is much smarter than mine, Sandrah.~
DO ~ SetGlobal("SanHealSkie","GLOBAL",13)RealSetGlobalTimer("SanSkieT","LOCALS",2000)~
==BSANDR~In case you refer to your past experience, I tend to agree, but if you refer to your present interest I cannot say he is a bad choice.~
==1xSkieb~Not the man himself...maybe the trouble I get myself into should I persue that romance, eh?~
==BSANDR~Do you mean the trouble to get involved with a Bhaalspawn or the trouble to show interest in another woman's lover.~ DO~AddSpecialAbility("cvknok")AddSpecialAbility("cvtrap")~
==1xSkieb~YOU would not constrain yourself due to such considerations, am I right.~
=~...eh...~
=~To hell, why should I...?~EXIT

CHAIN
IF WEIGHT #-3~Global("DesignItem","LOCALS",1) ~ THEN 1xSkieb SandrahL2
~ Do you visit fashion shows frequently, Sandrah?~
DO~SetGlobal("DesignItem","LOCALS",2) ~
==BSANDR~(Blushes) I love them - and I guess with this confession my reputation as heroine of the Sword Coast is ruined forever.~
==1xSkieb~Oh, why? Not at all, not at all. The first thing I admired when I saw you was your style - and now that I got to know you better, on the road and on the battlefield..., well, I admire you even more and how you are able to maintain that standard.~
=~You look just sooo great in armour just as you do in the evenings in your gowns and high heels.~
==BSANDR~For once you are right - I do not try to hide my faible for fashionable clothes and I should not be ashamed for it. I am what I am.~
==1xSkieb~You are the person to understand best of all that we MUST find those gems for my designer, you do? Don't you?~
==BSANDR~It is no big issue to produce those few gems - and appreciate a fantastic fashion show as a reward. (Looks at you) I had little chance for this hobby since I travel with <CHARNAME>.~
END
++~Oh, Mystra! Now I have to cope with TWO of them!!~ EXTERN BSANDR SandrahL2b
++~Just a thought, Sandrah, your parcel should be able to retrieve those three gems from your collection.~EXTERN BSANDR SandrahL2b
++~I guess if I said NO to Skie's task I will have two harpies, eh, beauties against me, mh.~ EXTERN BSANDR SandrahL2b
++~Why should you want to go chasing after that *ladies man* when someone more interesting is standing right in front of you?~ EXTERN BSANDR SandrahL2b

CHAIN
IF~~THEN BSANDR SandrahL2b
~I have a pearl, a diamond and a rogue stone in my jewelry collection. I can access them with my parcel any time if you want me to. Otherwise we need to get hold of the thief before he can make it past the city gates and escapes into the wide land of Amn.~EXIT

CHAIN
IF WEIGHT #-3~Global("DesignItem","LOCALS",3) ~ THEN 1xSkieb SandrahL2a
~ Do you visit fashion shows frequently, Sandrah?~
DO~SetGlobal("DesignItem","LOCALS",4) ~
==BSANDR~(Blushes) I love them - and I guess with this confession my reputation as heroine of the Sword Coast is ruined forever.~
==1xSkieb~Oh, why? Not at all, not at all. The first thing I admired when I saw you was your style - and now that I got to know you better, on the road and on the battlefield..., well, I admire you even more and how you are able to maintain that standard.~
=~You look just sooo great in armour just as you do in the evenings in your gowns and high heels.~
==BSANDR~For once you are right - I do not try to hide my faible for fashionable clothes and I should not be ashamed for it. I am what I am.~
==1xSkieb~You are the person to understand best of all that we HAD find those gems for my designer, you do? Don't you?~
==BSANDR~Too bad your friend in his excitement forgot to invite us to a fantastic fashion show as a reward. (Looks at you) I had little chance for this hobby since I travel with <CHARNAME>.~
END
++~Oh, Mystra! Now I have to cope with TWO of them!!~ EXIT

CHAIN
IF WEIGHT #-11~Global("SkieRomanceActive","GLOBAL",2) Global("SkieRomanceC6","GLOBAL",3) InParty("CVSandr") RealGlobalTimerExpired("SkieTimerC6","GLOBAL") ~THEN 1xSkiej SanAspar
~(Skie seems to be happy you two are going to have a baby. She begins to stroke her belly and croons some happy melody.)~
DO~SetGlobal("SkieRomanceC6","GLOBAL",4)~
=~(After a second she starts eating asparagus. You have no idea how it happened to be there or how and when it was prepared.)~
==CVSandrJ~(You look questioningly at Sandrah and her slight smile provides you with the explanation.)~
==1xSkiej~Mppf, that was just what I needed most at this moment...you're a genius, Sandrah...and it's really delicious, yummy.~
==CVSandrJ~I will be here for you and <CHARNAME>, do not forget that Skie. You can stay with us still for quite some months even in your current state.~ DO~AddSpecialAbility("CVBabbl")~
==1xSkiej~You hear that, my love? There are no things your pregnant woman can't do with the Realm's best healer close at hand, right?~
END
++~I'm not foolish enough to object two determined women, be assured...~ EXIT
++~We will make marvelous parents! I'm sure of that! Nothing will go wrong with this company protecting you and the baby.~ EXIT