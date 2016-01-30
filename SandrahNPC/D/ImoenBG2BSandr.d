APPEND BSANDR
END

CHAIN
IF~~THEN BSANDR ImoHealedReun
~ Yes, it is good we have finally found you, besta friend. <CHARNAME> did all to find your whereabouts and struggled for the passage to here. You were the goal that made us strive onwards.~
DO~SetGlobal("SanHealImo","GLOBAL",8) RealSetGlobalTimer("SanImoNashIntT","GLOBAL",600)~
==BIMOEN2~ (Smiles) Good to know <CHARNAME> was not alone to rescue poor me but there was also someone *competent* to work on the job, haha.~
== BSANDR~ Good to see old Imoen is still alive and has not lost her humor. The madman's work could not destoy the real you, just like Bhaal could not grow strong inside of you before. Still there is  the harm he and Bhodi have done to you both.~
==BIMOEN2~ The emptiness...oh, Sandrah, how can I feel a loss when what's gone never was mine really.~
== BSANDR~The Bhaal part of you did not take over much of the goodhearted Imoen, that is true. Still it is part of your soul, even if its just the dark side of it. To survive in the long term you need that part and you need to regain it same as <CHARNAME>. ~
==BIMOEN2~ It's so strange and strange, Sandrah, I never ever want that Murder God in me and now he's gone it's not good as well.~
== BSANDR~Both sides of you are real and they make what is Imoen the Magnificent, Imoen my besta friend. One part of you cannot be long without the other, even if that one part needs to be put in a cage and controlled.~
==BIMOEN2~ I don't need it but I still need to have it, great gods, what a mess. Tell you what, at least we have a very, very good reason to hunt that nasty Irenicus and his pale sister to the ends of Faerun.~
== BSANDR~We will get them.~ EXIT


CHAIN
IF~Global("SanHealImo","GLOBAL",9)~THEN BSANDR ImoHealedReun2
~ Henning will be so happy to hear the news of your rescue, besta friend.~
DO~SetGlobal("SanHealImo","GLOBAL",10) RealSetGlobalTimer("SanImoNashIntT","GLOBAL",600) RealSetGlobalTimer("SanCloeInterv","LOCALS",300)~
==BIMOEN2~Was he very...he did not join you to look for me?~
== BSANDR~<CHARNAME> would not allow him to come with us, you know. He is a good man and not a coward, but he...has his limits as a fighter and adventurer.~
==BIMOEN2~It is strange and I tell only you and you - never tell it to no one - swear!~
== BSANDR~I swear.~
==BIMOEN2~ It is...I loved and loved him so much I thought. And then I was in that prison and tortured and all - well, I thought of <CHARNAME> and I thought of you and how you would come - just like you did, and it helped me through the dark hours...~
== BSANDR~ And you never thought of Henning?~
==BIMOEN2~I do not deserve him, Sandrah, do I? It is true, I never thought of him...what does that mean?~
== BSANDR~Those were extreme circumstances, Imoen. You were not under your own control - not really yourself at all.~
==BIMOEN2~Guess that's true...still, I was enough of myself to think of you and to trust in you and <CHARNAME>, I just dunno. Shouldn't I have done so of the man I so love - or was thinking I did love...Am I bad inside after all?~
== BSANDR~ No, you are not. Good or bad has nothing to do with it. I propose to think about your relationship in some quiet hours, my friend. We will not be able to get to Waterdeep for some time. I am always there if you need a friend to talk to, you know that.~
==BIMOEN2~ Yeah, guess that's what to do...~EXIT

CHAIN
IF~Global("SanHealImo","GLOBAL",12)~THEN BSANDR ImoHealedMessy
~ You look so depressed lately, besta friend.~
DO~SetGlobal("SanHealImo","GLOBAL",13) RealSetGlobalTimer("SanImoNashIntT","GLOBAL",1600) ~
==BIMOEN2~ Do I...yes, certainly,...I...my mind is so full...~
== BSANDR~ It may help to talk about it with a friend before it eats you up.~
==BIMOEN2~Yeah, sure, it does...but no friend will understand...it's so wrong, it's so messy - everything is so spoiled...~
== BSANDR~ It is not Bodhi's taking of your soul that concerns you, right?~
==BIMOEN2~Now that you mention it...maybe. Kinda guess it made me weak...maybe...I dunno, it's all a big big mess!~
== BSANDR~ It is not what happened in the dungeon but afterwards. You have changed since you travel with <CHARNAME> again - both of you have changed.~
==BIMOEN2~It's a mess...we're brother and sister, aren't we...in a way or whatever.~
== BSANDR~ Imoen you are not brother and sister and you know it. Bhaal's heritage does not make you siblings. But it is in yourself, in your feeling towards <CHARNAME>. You love <PRO_HIMHER> and you are confused because you grew up like a sister to <CHARNAME>, with sisterly feelings and all.~
==BIMOEN2~But we have destroyed it...Sandrah, you can't imagine what we done...it's all so wrong.~
== BSANDR~ You are very close to each other, you always were. You committed no crime, you have just reached clarity - once and for all. It is one of the many experiences you have made, not all of them were good, but think of this one not as bad.~
==BIMOEN2~You say...it kinda had ta happen sooner or later with us so close and all?~
== BSANDR~Now you know your true feelings, besta friend, and now you can live on with a happy heart for the next experience.~
==BIMOEN2~But I destroyed...Henning...<CHARNAME>...Imoen the Magnificent...it's all ruins.~
== BSANDR~Oh, no, not this self-destruction, please, my friend. You are strong and healthy, you will both recover your soul, a lifetime is still ahead of you. You will still love <CHARNAME> and you will now know the nature of this love.~
==BIMOEN2~...and Henning?~
== BSANDR~Your question reveals how much you care for him and now you see clearer about all your feelings. You made your choice even if your consciuosness is not yet aware of it.~
==BIMOEN2~But will he...?~
== BSANDR~Does he need to know? I mean, you need not to lie to him, just show him the true feelings you have for him - now after all you have been through.~
==BIMOEN2~Heya...I will...eh, did I say thank you, count-sellor?...~EXIT

CHAIN
IF~Global("SanHealImo","GLOBAL",15)~THEN BSANDR ImoHealedMessy
~ We have much more in common than we ever had imagined, besta friend.~
DO~SetGlobal("SanHealImo","GLOBAL",16) RealSetGlobalTimer("SanImoNashIntT","GLOBAL",1600) ~
==BIMOEN2~ Yeah, certainly sure...only this time I guess I was the slowpoke to never know.~
== BSANDR~ You could not see what was not there before, like a flower that grows under the ground until it comes out of the earth to emerge, first as a tiny little plant and later getting into bloom. It is only then when most of us are able to see its true nature.~
==BIMOEN2~ Oh, my, (giggles) all your affairs with bards have left their mark onya, no doubt. ~
=~But my, that was beautiful and...so true.~
=~We have much more in common than we ever had imagined, besta friend, like really loving <CHARNAME>.~
== BSANDR~It is good that you finally realized it and are yourself again - no, I have to correct myself, you are a new mature Imoen by now.~
==BIMOEN2~Hey, silly, you make me sound like some oldish matron...it's me if ya wanna take a look, it's Imoen the Magnificent.~
== BSANDR~It truely is. (She kisses Imoen's forehead lightly.) I am glad it is you again.~EXIT


//__________APPENDS__________________//

APPEND BIMOEN2
IF WEIGHT #-10 ~ Global("SanHealImo","GLOBAL",7)~ THEN BEGIN SanHealImo
SAY ~ Oh, besta friend, how I would had needed your healing and such in that dungeon. Anyway, you couldn't have done it better than ya did to come and now you're here again and we're together. So very good and good.~
IF~~ THEN EXTERN BSANDR ImoHealedReun
END
END

INTERJECT Imoen2 25 SanSendWD
==CVSandrJ IF~InParty("CVSandr") GlobalGT("SanImoRetWD","GLOBAL",3)~  THEN ~Imoen, remember that there is somebody else waiting for you.~
END
++~Oh, how could I forget..!!~ +SandSendWD2

CHAIN
IF~~THEN IMOEN2 SandSendWD2
~(Sigh) If I could only join him in Waterdeep, besta Sandrah...~
==CVSandrJ ~You can, do not despair. I had prepared a contingency escape for us should things get awfully wrong here in Spellhold. Now - with <CHARNAME>'s decision the case has appeared , at least for you. With Bodhi's game started I am sure we have a good chance to fight our way out of here, so my spell is for you now to be sent to Henning in Waterdeep.~
==Imoen2~Gee, I knew and knew and knew always all the time you would be there for me if all else failed, Sandrah. Yes and yes, please send me to Henning!~ DO ~SetGlobal("KickedOut","LOCALS",1) SetDialogue("IMOENP_") EscapeAreaMove("cvebs1",318,220,12)~ EXIT
