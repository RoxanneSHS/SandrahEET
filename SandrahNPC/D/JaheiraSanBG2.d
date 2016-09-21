APPEND BSANDR

IF ~ Global("SanJaheirPCBG2","LOCALS",1) ~ THEN BEGIN SanPCJaheirBg210
SAY ~ You have not only become a very competent leader by now, <CHARNAME>, but even a true friend to those who have stayed faithful to your quest.~
IF~~THEN REPLY ~ Yourself included of course. But you were probably referring to somone else right now.~ GOTO SanPCJaheirBg211
END

IF ~~ THEN BEGIN SanPCJaheirBg211
SAY~ Jaheira is not among those who let down their defenses easily even to a longterm companion. You have succeeded in that by your continous loyalty and care. She seems to return that now to you, finally.~
IF~~THEN REPLY ~What do you imply by that.~ DO ~ SetGlobal("SanJaheirPCBG2","LOCALS",2)~GOTO SanPCJaheirBg212
END

IF ~~ THEN BEGIN SanPCJaheirBg212
SAY~ You are no longer her old friend Gorion's ward she tries to mother and protect. You have earned her respect by the way you have grown during our adventures. (Mumbles) With Khalid gone she may be a bit lonely now.~
IF~~THEN REPLY ~ She has friends who love her, Sandrah, friends like you - and me...~ DO~SetGlobal("CheckJaheiraMatch","GLOBAL",1)SetGlobal("JaheiraMatch","GLOBAL",1)~
EXIT
END
END

CHAIN
IF~ Global("SanJaheirBG2","GLOBAL",2) ~ THEN BSANDR SanJahRomPC1
~ (Your young companion Sandrah and the older but agelessly attractive Jaheirah walk hand in hand in front of you, unaware that you are within hearing distance.)~
DO~ SetGlobal("SanJaheirBG2","GLOBAL",3) ~
== BJAHEIR ~...sure that Khalid would have wanted it that way.~
== BSANDR ~ I think I knew him well enough to agree, my friend. The endless cycle of life continues when one of us is gone and nature itself makes her demands. He would surely not want his wife to wither away in solitude.~
== BJAHEIR ~ It was right to seek this conversation with you, Sandrah. Even in your youth you have proven to be a very understanding and caring person, I would almost say a *wise* companion if that would not seem strange on one who would declare herself as a student of life still.~
== BSANDR ~ Jaheira, you have much to give to someone you care for, as a companion, a friend, and even as a lover.~
== BJAHEIR ~So you would not think it to be a bit too early to consider such things already, my dear?~
== BSANDR ~ You feel it yourself, do you not? This is not a matter of time, as Khalid will always remain at his place in your heart - but he is not crowding it completely and we both know he himself would be more than willing to accept another one by his side.~
== BJAHEIR ~It does good to have someone to confide to in those matter and be it only to confirm what my heart has told me already...Hm...now comes the more delicate...hm...aspect of that...~
== BSANDR ~ You are not obliged to reveal to me the name of the person you have in mind.~
== BJAHEIR ~ (Laughs.) Oh, Sandrah, as if I didn't know you well enough! I surely do not need to tell you, my wise friend...~
EXIT

CHAIN
IF~ Global("SanJaheirBG2","GLOBAL",4) ~ THEN BSANDR SanJahRomPC2
~ (Sandrah has observed the long pensive look she had received from Jaheira. She arranges her steps to come alongside the elder woman and silently takes her hand.)~
DO~ SetGlobal("SanJaheirBG2","GLOBAL",5) ~
== BJAHEIR ~ Sandrah, I remember an occasion when me and Khalid have talked about you - and about having our own children one day...~
== BSANDR ~ (Sandrah listens silently.)~ 
== BJAHEIR ~ If we were to have a daughter, we discusssed on that day, she should have become like you (sigh).~
== BSANDR ~ I never had a mother to talk to, Jaheira. Even if she should be alive today, I can imagine our relationship would by now be a bit different than from child to parent, maybe a bit more like close confidants - she may be something like my best friend to share my thoughts and feelings with and to learn and participate from her experience.~
== BJAHEIR ~ Your words soothe and hurt at the same time, Sandrah. Your image brings to live a picture for both of us that we will never experience.~
== BSANDR ~ Are you so sure, Jaheira? Do you not see a young woman and and experienced woman walking side by side sharing their views, their losses and their hopes - even if they are not related by their blood?~
== BJAHEIR ~ I must confess I feel very close to you, my young friend, and I have the desire to share so much of my knowledge and experience with you.~
== BSANDR ~ I have told you before that I am always willing to learn. And maybe I am even able to give something back to you in return (She kisses the druids cheek.)~
== BJAHEIR ~ Thank you, my dear.~
= ~ (Murmurs outside of Sandrah's hearing.) But which mother would cast an eye on her daughter's loved one herself...What a mess life is...~
EXIT

CHAIN
IF~ Global("SanJaheirBG2","GLOBAL",6) ~ THEN BSANDR SanJahRomPC3
~ You seem to be very concerned, Jaheira.~
DO~ SetGlobal("SanJaheirBG2","GLOBAL",7) ~
== BJAHEIR ~ Concerned or maybe out of balance, my young friend.~
== BSANDR ~ It is understandable with everything that has happened to you in such a short time. I hope I can be a bit of help to you, despite the fact that it is usually you who assumes such a role. ~
== BJAHEIR ~ (Smiles.) Thank you, Sandrah. I just learned another lesson right now - it is not so easy for one like me to accept the hand stretched out to help.~
== BSANDR ~ In this case, I offer you my ear to listen rather than my helping hand.~
== BJAHEIR ~ You have already pointed out to me how important the nearness of those who befriend and who love me really is after my recent loss. I have always considered the brotherhood of us Harpers in the same way.~
== BSANDR ~ Our visit to the Harper's building has disturbed you rather more than being helpful, so much is obvious. It is hard for an outsider to understand the reasons for that.~
== BJAHEIR ~ I cannot really put my finger on the problem I have sensed, maybe my view is a bit unfocused, maybe my feelings are in turmoil still. Your analytic skills may be helpful here, if you are willing to share them with me.~
== BSANDR ~ The building of the Harpers itself?~
== BJAHEIR ~ Yes, the existence of such a thing is already a curiosity.~
== BSANDR ~ Gorion, Winthrop, my father, even Khalid and yourself - the Harpers I know had no such meeting place, they visited each other for consultation.~
== BJAHEIR ~ Act unseen and unnoticed to regulate the balance is our credo.~
== BSANDR ~ No need for emblems or other signs of identification, one Harper knows the other without that. Harpers are friends of Mystra as well but an oversized statue is not the way to appreciate my goddess. ~
== BJAHEIR ~ Right, my friend. The statue and those amulets were strange. As much as the Spectral Harpists and their aggressive actions.~
== BSANDR ~ They cared little for you, being a sister Harper after all. Your loss of Khalid appeared to be unknown to them.~
== BJAHEIR ~ Yes, you are correct. Why did they know nothing about that?~
== BSANDR ~ Probably because they are concentrating too much on their internal affairs not noticing what goes on outside of their secret circles.~
== BJAHEIR ~ Your view is unblurred, Sandrah, yes, why could they not tell us anything about the current status of this town? Instead they try to conceal their activities with absurd measures like the treatment of a silly little thief like Montaron.~
== BSANDR ~ Mmmh. So what may this internal activity be that seems to consume all of their interest and focus?~
== BJAHEIR ~ <CHARNAME>?~
== BSANDR ~ <CHARNAME> and the one who persues the power so much, this Irenicus. Do they want this power for themselves maybe?~
== BJAHEIR ~ With you and me by <CHARNAME>'s side it looks like Bhaal's power is in perfect balance, as much as any Harper could wish it to be.~
== BSANDR ~ I agree. Unless you are one to whom the power is of more importance than the balance. We must be very careful, Jaheira, to trust the Harpers of this region too much.~
EXIT

CHAIN
IF~ Global("SanGalvFi","LOCALS",1) ~ THEN BSANDR SanJahRomPCGalv
~ (Sandrah silently has taken Jaheira in her arms.)~
DO~ SetGlobal("SanGalvFi","LOCALS",2) ~
== BJAHEIR ~ (Sigh) Even if it is hard to believe...I had nothing to do with this trap...I thought they were interested to restore the balance...~
== BSANDR ~ They have misused you and the whole concept of the Harpers badly, Jaheira. If you can no longer trust those who allegedly share the same ideals with you, things have indeed become bad. But we had already sensed it on our first visit here - those Harpers do not deserve the name, they have separated themselves from anything the brotherhood stands for.~
== BJAHEIR ~ You believe me, Sandrah, I feel that and I thank you for it. But <CHARNAME>?~
== BSANDR ~ Your feelings for <PRO_HIMHER> are much too deep and true to expect betrayal from you. ~
== BJAHEIR ~ But can <CHARNAME> probably feel the same for me after this event?~
== BSANDR ~ If ever any doubt had existed you have clarified with your action where you stand and how you feel. <CHARNAME> would be blind not to see your feelings...and a caring person like <PRO_HIMHER> is unlikely of such a blindness.~
== BJAHEIR ~ You have soothed my soul once again, my young healer. Now, what about the Harpers? They have been my family and my stronghold until now. They have become strangers if not enemies for me now, they will hunt me - hunt us - for this deed.~
== BSANDR ~ Those were no true Harpers, Jaheira. Sooner or later, the truth will become aparent. None of the Harpers I know, including my own father, would condemn you for your deed. Do not loose your faith just because of this misled branch we found here.~
== BJAHEIR ~ Yes, Sandrah, deep in my heart I know you are right. Still it will take some time to restore the balance that was distorted today. We may have some of the Harpers at our heels until we will be able to clarify the whole affair.~
== BSANDR ~ We will all stand by you, my friend. You can count on <CHARNAME>'s loyalty and...love.~
== BJAHEIR ~(Mumbles) Loyalty and love...too good to be true...~
EXIT

CHAIN
IF~Global("SanGalvFi","LOCALS",4) ~ THEN BSANDR SanJahRomPCGal2
~ You know your decision already, Jaheira, do you not?~
DO~ SetGlobal("SanGalvFi","LOCALS",5) ~
== BJAHEIR ~ (Smiles) To think how I once underestimated you, my young friend. Yes, you may well be right, Sandrah, it seems to me my heart knows it already a long time. Just my stupid brain will not accept it yet.~
== BSANDR ~ You have given up everything else for the trust you have in <PRO_HIMHER> - and the love.~
== BJAHEIR ~ You trust <PRO_HIMHER> as much yourself, don't you? And you love <PRO_HIMHER>, too.~
== BSANDR ~ Jaheira there have been and are still others who believe in <PRO_HIMHER> and <PRO_HISHER> importance for the Realms just like we do. Gorion, your old friend, and...my father, Elminster himself. We are right in our assumptions and <PRO_HESHE> has proven it in <PRO_HISHER> deeds over and over again.~
== BJAHEIR ~ Everything you say is right, Sandrah, just so right...but falling in love so unexpectedly does not make things easier it seems.~
== BSANDR ~ Does it not? What are you afraid of, my friend? Love is a power that makes all of us loose control sometimes, nobody is strong enough to withstand it. Just let yourself fall and enjoy it - you will get out stronger and more confident than ever before.~
== BJAHEIR ~ I am afraid I have already lost my control completely...(Laughs nervously) Thank you for making me accept this. A harper in love cannot be a harper in balance - a *hasbeen* harper, that is.~
== BSANDR ~ (Takes Jaheira by the hand.) It is your resistance against your own heart and will that has inbalanced you. Once you admit that your feelings are right and wonderful, you will find your balance and peace again and at a higher level of intensity.~
== BJAHEIR ~ You are the most wonderful friend I can imagine, Sandrah. (She kisses the younger woman on the forehead.) Let us continue now. (As her eyes meet you in turning you see a warmth in them like you have never seen before from your wonderful druid.)~EXIT

CHAIN
IF~Global("SanJahMiss","LOCALS",3)~ THEN BSANDR SanJahRomPCRet
~It feels good to have you walking amidst us again, Jaheira.~
DO~SetGlobal("SanJahMiss","LOCALS",4)~ 
== BJAHEIR ~ I am glad as well, my friend. <CHARNAME> has made a decision that I was too afraid to make myself all the time...or did he have some counselor to assist him with that?~
== BSANDR ~ A counselor cannot change what is deep inside you, Jaheira, she can only make visible what maybe you yourself do not see too clearly at the moment.~
== BJAHEIR ~ You have really grown in your role since I first met - and distrusted - you. I will not hide my feelings for <CHARNAME> anymore, not from myself nor from anyone else. And I will admid my feelings for you as well. (She kisses Sandrah's forehead and embraces the younger woman for a while.)~
=~ Let us move on - my steps will be light from now on.~
EXIT

CHAIN
IF~ Global("SanGalvFi","LOCALS",7)~ THEN BSANDR SanJahRomPCFin
~ Your steadfast belief in what is right was obviously beyond the imagination of those false Harpers lusting for power.~
DO~ SetGlobal("SanGalvFi","LOCALS",8)~
== BJAHEIR ~ Oh, my friend, I was right, yes, but it is no triumph just pain. Even my trusted mentor has tried to deceive me. Now I really feel how <CHARNAME> suffers - to be misunderstood and hunted while being innocent.~
== BSANDR ~ You have the same that <CHARNAME> has in this situation, the trust and the love of those who really count. You have proven that to <PRO_HIMHER> and you receive the same.~
== BJAHEIR ~ From <PRO_HIMHER> and also from you, Sandrah. It feels good and it gives me the strength I need now - now, that I have lost all I had before.~
== BSANDR ~ I do not believe you have lost the Harpers as your family, Jaheira. I know my own father good enough to know that he will eventually take care of such a situation among the ranks himself. You will come out of this with a reputation as the true Harper you really are. You have done what needed to be done.~
== BJAHEIR ~ I trust your word, Sandrah, even if by now I have learned enough to stand my own ground in case the Harpers do not agree with my judgement on the Athkatla deviants.~
== BSANDR ~ But they will, be assured, my friend, and your course of action will be an example for all that follow the Harp from now on.~
== BJAHEIR ~ (Jaheira and Sandrah embrace each other long. You can see the strength and confidence built up in your beloved druid with each hug they exchange.)~ DO~AddXPObject("CVSandr",11000)~ EXIT

CHAIN
IF~Global("SanJaheirBG2","GLOBAL",9)~THEN BSANDR SanJahRomPCRose
~ Jaheira, let me tell you about an observation I once made when I accompanied my father on one of his trips to the Calim Desert.~
DO~ SetGlobal("SanJaheirBG2","GLOBAL",10)~
== BJAHEIR ~You are a very observant one, dear Sandrah, be it on Nature or on people.~
== BSANDR ~ Here it applies to both. There is a very rare flower in that desert, the Yandria Rose, that to the desert wanderer often just looks like a ruffled bushel of grass. Every now and then even in the desert there falls a bit of rain or comes some morning dew. It is then that the Yandria Rose shows its real face and blooms in a distinguished light blue that is visible in the desert across a large distance.~
== BJAHEIR ~And you see some resemblance in me with that rose.~
== BSANDR ~ Surely a woman like you is as rare as the Yandria Rose, Jaheira. Where the flower needs water, you need love.~
== BJAHEIR ~I have found that and I am sure it will last longer than just the one season granted to your flower. (She laughs kindly and embraces Sandrah.)~
== BSANDR ~ Love can turn any grim desert into a blooming oasis.~
EXIT

CHAIN
IF~ Global("JahSanMama","CVDre1",1)~ THEN BSANDR JarWDGardn
~ Jaheira, from you long acquaintance with the Harpers and with my father I have deducted that you have known my mother still alive. ~
DO ~SetGlobal("JahSanMama","CVDre1",2)~
== BJAHEIR ~Well, you have probably heard a thousand times already how much you resemble her, so you surely want to hear something else this time. ~
= ~ She has loved your father with all her heart, although some people were looking strangely at their apparent difference in age.~
== BSANDR ~ But you know well, that my father is blessed by Mystra with a prolonged life and has the heart, strength and soul that many younger men are lacking.~
== BJAHEIR ~ True, and you yourself are the best proof of his capabilities and also the love between your parents.~
== BSANDR ~ Not even the devilish plan of the murderous God has ever lessened father's love for my mother, he still adores her every single day. But how was she in her daily life?~
== BJAHEIR ~She loved all living things, plants and animals, not like a druid does, more from her heart, if you know what I mean. And she loved to sing. Your garden at Waterdeep was always resounding with her songs. We all have lost so much with losing her...~
=~Khalid...she was among the few who really saw into the purity of his heart and soul. He was always changed in her presence, that blind romantic fool. Lovely fool.~
== BSANDR ~Really?~
== BJAHEIR ~Oh, don't misunderstand me - your mother was as true to your father as Khalid was to me, still there was a very deep friendship and understanding between them. They were both persons like that...too good for this cruel plane.~
EXIT

CHAIN
IF WEIGHT #-31~Global("SanJaheirBG2","GLOBAL",11)~THEN BJaheir SanJahRomPCEnd
~ Sandrah, my dear...your father, *Terminsel*, has reminded me of my tasks and duties as a harper once again.~
DO~ SetGlobal("SanJaheirBG2","GLOBAL",12)~
== BSANDR ~Your persistence has gained you much, my friend, <CHARNAME>'s love and the acceptance of the harpers - and your acceptance of them.~
== BJAHEIR ~The true ones, yes.~
=~This is why I seek your conselling right now. I think I have to go back to the building in the docks one more time to restore what those false harpers have imbalanced. Do you think that <CHARNAME> will understand this, I mean now in the middle of our quests?~
== BSANDR ~You know the answer, Jaheira. He has understood you all the time and supported you through all those struggles. Your love for each other is strong enough even if you will be apart for a short while.~
== BJAHEIR ~You are right, I knew this answer already.~
=~<CHARNAME>, it will take only a few days in Athkatla to organise the restoration of the harpers in Amn. I wait for you to pick me up again whenever you need my support in your company again.~
END
++~I love you, Jaheira, I started to count the days already.~+ SanJahRomPCEnd2
++~Take your time, my love. I know you do the right thing. There is no need to hurry, we will be together again when the time is right.~ + SanJahRomPCEnd2

CHAIN
IF~~THEN BJaheir  SanJahRomPCEnd2
~Take good care - both of you, until we meet again.~
DO~ChangeAIScript("",DEFAULT) LeaveParty() SetLeavePartyDialogFile() MoveGlobal("AR0309",Myself,[776.706])~EXIT

APPEND JAHEIP
IF WEIGHT #-11~Global("SanJaheirBG2","GLOBAL",12) AreaCheck("ar0309")~THEN BEGIN RetBG2Love
SAY~Oh, <CHARNAME>! My work here is completed.~
IF~~THEN GOTO 13
END
END