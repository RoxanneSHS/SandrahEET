CHAIN
IF~ Global("SanFabioBH","GLOBAL",1)~THEN BFabio SanFabio1
~You are not really THAT angry with me, sweety, aren't you?~
DO~SetGlobal("SanFabioBH","GLOBAL",2)~
==BSandr~ You did not really hurt me or anything else, Fabio, just gave me a lesson of what to expect of a bard.~
==BFabio~Mmh, I somehow don't like the way you say that. Anyway, why not just forget the past and start a new song altogether?~
==BSandr~ I hope it will be a new song, Fabio, not just the type *Variation on a Theme*.~
EXIT

CHAIN
IF~ Global("SanFabioBH","GLOBAL",3)~THEN BFabio SanFabio2
~Ah, the forest with plenty of privacy.  If only I had a lady to enjoy it with...~
DO~SetGlobal("SanFabioBH","GLOBAL",4)~
==BSandr~ Little birds sing to me that it may be the little Lady Andrella you have in mind, Fabio.~
==BFabio~Andrella, oh, the birdy may try to test her wings soon. A real gentleman will gallantly see to it that she does not hurt herself too much with the first attempt.~
==BSandr~ In this case it may just be good that you are out here with us...~
==BFabio~Oh, pretty Sandrah, you know too well yourself that I'm not one to take advantage of such a situation.~
==BSandr~ I know oh *too well* that you do just that.~
==BFabio~If you refer to your own little experience than please be fair - you have learned a bit from that.~
==BSandr~I learned how to deal with one like you, if that is what you mean.~
==BFabio~Well, then, this time we would meet on even terms then, right?~
==BSandr~(Laughs) An invitation, Fabio?~
==BFabio~A challenge, if you like.~EXIT

CHAIN
IF~ Global("SanFabioBH","GLOBAL",5)~THEN BFabio SanFabio3
~Good morning, my swan, you look fresh as this morning's dew.~
DO~SetGlobal("SanFabioBH","GLOBAL",6)~
==BSandr~Not to affront you, Fabio, but I cannot return the compliment. Have you slept at all?~
==BFabio~Not much, I confess, but it was worth it for the inspiration you gave me, my sleeping beauty.~
==BSandr~Inspiration to your bard's talent? Like being the topic of a song?~
==BFabio~Exactly, my once-duckling turned to magnificent swan.~
==BSandr~(Blushes) Probably all I can do now is to beg the artist for a performance.~
==BFabio~(Starts to strum his lute.)
         The swans of the north come once again to the island
         On their journey for some days of rest.
         We adore their beauty and grace while they stay
         Knowing it is elsewhere that they nest.
         Lady, my swan from far away, you returned again
         While you are here I give you my best.~
==BSandr~ While I am here I give my bard my best. (She kisses Fabio.)~
==BFabio~Well worth a sleepless night, I'd say. Maybe your next night will be sleepless, too.~ DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~ EXIT

CHAIN
IF~ Global("SanFabioBH","GLOBAL",8)~THEN BFabio SanFabio4
~Good morning, my swan, you look once again fresh as the morning dew, even as I know how little sleep you got last night.~
DO~SetGlobal("SanFabioBH","GLOBAL",9)~
==BSandr~I do not mourn my lost sleep when I think of the pleasures I received instead.~
==BFabio~ Oh, my swan, those *experts* that try to tell you about a sparrow in your hand...well, they never encountered the real thing most probably.~
==BSandr~(Smiles at Fabio.) It takes two to make this experience such a pleasant one, so do not give all the credit to me alone.~
==BFabio~ I have plenty material for a new song or two now.~
==BSandr~You will find an open ear with me any time you are ready for another verse.~EXIT

CHAIN
IF~ Global("SanFabioBH","GLOBAL",10)~THEN BFabio SanFabio4
~My swan, I have promised you another verse to the song we started to sing together as a duet.~
DO~SetGlobal("SanFabioBH","GLOBAL",11)~
==BSandr~And what will it be tonight, bard of the isle?~
==BFabio~ A nocturnal lullaby of longing and sweet satisfaction.~
==BSandr~Just what I need now after this long day of running to and fro across your island. (She lays down at Fabio's side and places her head into his lap.)~
==BFabio~I cannot strum my lute this way...~
==BSandr~...mmh, just hum your tune while I play your instrument right here...~
DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~ EXIT

CHAIN
IF~Global("SanFabioAndrella","LOCALS",1)~ THEN BFabio SanFabioAndr
~Eeh...~
DO~ SetGlobal("SanFabioAndrella","LOCALS",2)~
==BSandr~There is really no need to explain anything, my bard. By the way, she is really charming.~
==BFabio~ No comparison to you, my swan...but...we both know you will move on sooner or later...~
==BSandr~Like I said, there is really no need to explain to ME. What she will make out of it is something completely different.~
==BFabio~ Mmh, I guess there is no real need for her to know, isn't that so?~
==BSandr~ She will not learn anything from me, Fabio.~
==BFabio~ I am not used to such a practical approach...usually the ladies are falling for that whole romantic stuff all the time, they seem to need it before they can give in to the sheer joy of...you know what.~
==BSandr~ I prefer the *sheer pleasure* to the rendering of second rate bards.~
==BFabio~ Second rate bards?~
==BSandr~ (Laughs) Did you take that personal? (Kisses him) There is still the first rate lover boy I can entertain this evening.~
==BFabio~ I take this as a promise, my swan.~EXIT

ADD_TRANS_TRIGGER BHPell 64
~!InParty("CVSandr")~

EXTEND_BOTTOM BHPell 64
IF~InParty("CVSandr")~ THEN REPLY ~ You know it, too? Does everyone but me know my life? (Sigh.) Yes, I have to stop Sarevok. ~ EXTERN BSandr SanGoodbyeFab
END

CHAIN
IF~~THEN BSandr SanGoodbyeFab
~(Sigh) Back to the road.~
DO~SetGlobal("BHAllDone","GLOBAL",1)~
==BHFabioJ IF~InMyArea("Fabio") GlobalGT("SanFabioBH","GLOBAL",5)~ THEN~ And there she spreads her wings again, my lovely swan, and continues her flight for the far coasts and lands.~
==BSandr IF~InMyArea("Fabio") GlobalGT("SanFabioBH","GLOBAL",5)~ THEN~ With some some sweet memories that will remain in her heart and dreams. We knew that it would end this way, Fabio, so I will neither suffer nor regret a single kiss.~
==BHFabioJ IF~InMyArea("Fabio") GlobalGT("SanFabioBH","GLOBAL",5)~ THEN~  Then take this last one so the taste of your lips will linger until the next...eh, drink.~
==BSandr IF~InMyArea("Fabio") GlobalGT("SanFabioBH","GLOBAL",5)~ THEN~ (Laughs) Or the next maid. Goodbye.~
END
++~(You are amazed once again how your reliable counsellor is able to squeeze her longing for *entertainment* in between all the turmoil of your quests.)~ EXTERN BHPell 65

CHAIN
IF WEIGHT #-19~Global("SanFabEdBH","bh0500",1)~THEN BEDWIN FabioJeal
~I am very much concerned about you, dear Sandrah, and the obvious mistake you are about to make.~
DO~SetGlobal("SanFabEdBH","bh0500",2)~
==BSandr~Concerned?? Dear Sandrah?? Well, the obvious mistake is that I listen to you, but I have to admit you got me interested.~
==Bedwin~ That windy bard is no match for you, mylady, and your heart will only suffer from going further with him.~
==BSandr~Fabio is windy and superficial and entertaining - and he surely will not affect my heart in any way. If he did would not that be a feast for you, mageling.~
==Bedwin~ To see you suffer from inferior men's maltreatment gives me no pleasure. (They only ruin this precious gem for me.)~
==BSandr~Uh, I thought it would. Anyway, it will not happen, Edwin, be assured, whatever that may mean to you.~
==Bedwin~ It always leaves me in deep bewilderment how a lady of such distinction and taste like yourself can make such choices when it comes to men. (Especially when the sole proper candidate in this damned hole called Sword Coast is standing right in front of you.) ~EXIT