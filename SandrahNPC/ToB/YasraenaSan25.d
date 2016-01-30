//Yasraena
CHAIN
IF~Global("SanYasArk","ar5202",1)~ THEN BSandr25 Ysmomdefeat
~ (Sandrah has embraced her drow friend and strokes her long hair gently.) All is good now, Yasraena.~
DO~SetGlobal("SanYasArk","ar5202",2)~
==BYASRA25~ It is strange...I feel nothing, just emptiness inside.~
==BSandr25~ Still, with this threat removed your new life can now be fully accomplished.~
==BYASRA25~With the matron dead a bloody struggle among my sisters will now commence where hundreds will be senselessly slaughtered to Lolth's perverted delight.~
==BSandr25~You had no choice in what had to be done nor do you have any means to prevent what will happen in the Underdark from now on.~
==BYASRA25~It is soothing to think that I will no longer be of any interest to the one finally succeeding my mother. I feel...free.~
==BSandr25~You are, my friend. You cannot change the ones who will fight now but you will be an example for all those who seek a way out of the bloodshed of your kin. It can be done and you have done it.~
==BYASRA25~Thanks to the friends I have found up here. (She kisses Sandrah.)~
=~(Yasraena quickly moves up to you. Before you realise it she kisses your lips which seem to melt under her intensity and nearness. You close your eyes and deliver yourself fully to her.)~
=~ (Suddenly it is over. As you open your eyes you see the drow at her usual place in the formation. Was that kiss real or just an illusion fuelled by your heated imagination?)~
EXIT

CHAIN
IF~ Global("SanYasSeeUM","cvumo4",1)~ THEN BSandr25 YsSeeUM
~ All over this place there are signs and ornaments from an age when elves and drow where one united race.~
DO~SetGlobal("SanYasSeeUM","cvumo4",2)~
==BYASRA25~A wonderful place - even more with the people who live here again. Just see, Sandrah, drows and elves together...the elf over there just kissed his drow companion...Divalir, (sigh) i miss him...~
==BSandr25~I am so glad to see this with you. Should the elves at Divalir's home be suspicious to your union then here would be a place to live a peaceful life for you.~
==BYASRA25~You have read my thoughts, my friend. Maybe even better as here I would have the closeness of caves and walls that suit me even after my long time on the surface - and he will have the surface and the gardens not far away to soothe his soul.~
==BSandr25~My father's grounds would always welcome the two of you in their seclusion away from the bustle of the metropole itself.~
==BYASRA25~ Your sister has accomplished much.~
==BSandr25~My sister maintains this place today, however the foundation was laid long ago by Eiliestraee and her priestess Qilue.~
==BYASRA25~You sister lives well to that part of her heritage - just like yourself, beloved.~
==BSandr25~(Your companions stand for a long time arm in arm to observe the peaceful scenery of everyday life before them - peace between races you so far have only encountered in merciless hate and battle against each other.)~ DO~ClearAllActions() StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~EXIT