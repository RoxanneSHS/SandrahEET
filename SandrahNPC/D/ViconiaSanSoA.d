CHAIN
IF~Global("spawnDrow1","AR2100",2) ~THEN BSandr VicciUD
~Is is bittersweet to be here, am I right?~
DO~SetGlobal("spawnDrow1","AR2100",3)~
==BViconi~I have long given up the hope to ever fool you in any way. For a moment the beauty of this world has overwhelmed me - it's the only thing I will ever miss concerning the Underdark.~
==BSandr~You would only fool yourself not to admit it. The Underdark is far behind you and still you will never loose it inside.~
==BViconi~I realise the difference there is for me this time. I always was alone - even before I broke with my cursed family and the damned Spider Queen.~
==BSandr~You are not alone this time.~
==BViconi~I am not alone and I am stronger through this than I ever was. Those pathetic drow have no idea whom they are facing.~
==BSandr~Please...you are not here on a crusade against your kin. It would not help us or yourself to seek confrontation.~
==BViconi~I am no fool, Sandrah - and - believe it or not, I'm here on the same mission as you - to punish Irenicus and to regain <CHARNAME>'s soul...and, mh, the soul of that babbling idiotic sister as well.~EXIT

CHAIN
IF WEIGHT #-19~Global("Vicstake","LOCALS",2) ~THEN BViconi VicciStake
~Why that questioning look you give me, Sandrah?~
DO~SetGlobal("Vicstake","LOCALS",3)RealSetGlobalTimer("SanVicBG2Plot","LOCALS",1800)~
==BSandr~We have learned to trust each other during our time on the Sword Coast, Viconia.~
==BViconi~Yes...we have...why do you come up with that?~
==BSandr~Maybe to encourage you to reveal how you REALLY ended up tied to that stake. You are on the surface long enough not to be trapped by a silly coincidence.~
==BViconi~Why must you be so clever all the times?...baah, it makes no sense to hush it up, I guess...~
==BSandr~A male?~
==BViconi~I have my needs like any woman...any real female drow...aargh that lousy jaluk!~
==BSandr~Do you - do we - still have something to fear from him?~
==BViconi~Bah, I fear nothing of him in your company...still...that wael may be stupid enough to try something...~
=~I will tell you what happened some time soon. Yes, we have learned to trust each other.~EXIT

CHAIN
IF WEIGHT #-19~Global("Vicstake","LOCALS",4) ~THEN BViconi VicciStake2
~I owe you a story, don't I?~
DO~SetGlobal("Vicstake","LOCALS",5)RealSetGlobalTimer("SanVicBG2Plot","LOCALS",1800)~
==BSandr~You do not owe me anything but I will listen if you think you are ready to share it with me.~
==BViconi~I was alone in this town for quite a while and was looking for a suitable male to fulfil my needs.~
==BSandr~You are not one to suit yourself with just anyone, you want someone to match you in power and in passion - you made a wrong choice?~
==BViconi~Ha, not with respect to power nor with respect to passion but with respect to bigotry. The jaluk feasted with me - yes, I confess he gave me pleasure enough.~
=~His powers however are with this town and its administration. After a while his fear of his fellow men overcame his pleasure with me. He was afraid  his involvement with a drow would get him in trouble, the weak wael, Shar curse him and embrace him in her darkness!~
==BSandr~You got involved with one of the nobles of Athkatla?~
==BViconi~Ha, why should I go for less? But, my friend, my definition of *noble* would not fit for Acton Balthis.~
==BSandr~Is that not one of the Council members of Amn? I see - those bigot nobles have their oh so *lawful* ways to dismiss an unsuitable ex-lover.~
==BViconi~It is easy in this town full of fools to mobilize against a single drow.~
==BSandr~That makes our task in Amn not easier. I hope your former lover will have enough wit to restrain himself from any foolish action now that you are in our company.~
==BViconi~(Laughs harshly) Restraint was not among his virtues when my dark skin was tempting him, ha. We are surely not afraid of him, I just hope he has enough insight to leave the case untouched. Any action from his side would neither help him nor us.~EXIT