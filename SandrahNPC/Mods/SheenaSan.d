APPEND BSHEENA
IF WEIGHT #-11~Global("SanHealShena","GLOBAL",3)~THEN BEGIN SanHeal
SAY~Sandrah, you are a magnificent healer, I observed it repeatedly. May I ask you something?~
IF~~THEN EXTERN BSandr SanHealShena
END
END

CHAIN
IF~~THEN BSandr SanHealShena
~Sure. I will not only care for the health of your body but my ear is always open for anything that may weight on your soul as well.~
DO~SetGlobal("SanHealShena","GLOBAL",4) RealSetGlobalTimer("SanSheenaInt","LOCALS",1000)~
==BSheena~You know about my state and that I stabilize my form with my own spells most of the time. However there are situations where I loose control over this and transform to my dragon appearance unwillingly.~
==BSandr~ You manage it quite well, Sheena. It is part of your own self and your personality, like we all have something inside of us we cannot and maybe should not have complete control of.~
==BSheena~(Sighs) I think I have learned to live as what I am despite the hardships and mistrust from the people I sometimes experienced - until recently. I mean...until I found the origin of my state in the hateful Firkraag. Is there no way to cure me from what he gave me?~
==BSandr~ It is your heritage even if you have trouble accepting it at the moment. It is not a desease that can be cured, it is a part of you - it is you.~
==BSheena~(Sheena collapses onto Sandrah's breast and embraces the priestess frantically.) But I don't want it, it is evil as the source it comes from.~
==BSandr~ Your father may have been evil but that does not affect you. You shape your own alignment by the choices you make and the deeds you do. Look at <CHARNAME>, Sheena, a Bhaalspawn but far from being a monstrous killer due to that.~
==BSheena~You speak true and wise, Sandrah. Before I knew its origin I had found a way to accept and even like my dragon self.~
==BSandr~ Let us try to find that attitude again, my friend. You are very beautiful in that form, an adorable creature. The dragon's wisdom and courage remains with you even in your human form. Those who know you well can see that the real Sheena remains the same regardless of the appearance.~
==BSheena~(Sheena lifts her gaze from Sandrah's bossom and looks her straight in the eyes.) It means very much to me that you see me this way, it feels very good...~
==BSandr~ (Sandrah keeps the half-dragon girl in her embrace and gently caresses her hair while continuing her soothing counsel.)~ DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF~Global("SanSheena","GLOBAL",1)~ THEN BSandr sanSheena1
~(Sandrah smiles encouragingly as she sees Sheena's hesitation to question her.)~
DO~SetGlobal("SanSheena","GLOBAL",2)RealSetGlobalTimer("SanSheenaInt","LOCALS",1000)~
==BSheena~ You seem to be well acquainted with <CHARNAME> and know <PRO_HISHER> intentions better than any.~
==BSandr~ We travel together since a long time. What do you want to know, Sheena?~
==BSheena~ I still wonder how <CHARNAME> could take one like me into the company so easily.~
==BSandr~ Oh, you fit well into the collection of pretty girls that are <CHARNAME>'s obsession...~
==BSheena~ WHAT?~
==BIMOEN2 IF~InParty("Imoen2")~ THEN~Hahaha, that was a good one, Sandrah, look at Sheena's face, hahahah.~
==BSandr~ (Laughs) Just a little joke to cheer you up a bit after that dungeon.~
=~But earnestly now, <CHARNAME> knows better than any the burden of a heritage like yours.~
==BSheena~ Is it comparable to mine?~
==BSandr~ To call the god of murder your father is maybe even worse than being an evil dragon's daughter. But the relationship is comparable as <CHARNAME> was raised by a wise mage and Harper named Gorion who really is *father* just like the one you call by that name.~
==BSheena~Thank you for that information, Sandrah - and also for your little attempt to cheer me up a bit.~
==BSandr~It was not really a joke, Sheena, you are a beauty in both of your bodies.~
==BSheena~You were not repelled by my dragon form?~
==BSandr~Dragon's are old, wise and beautiful creatures, powerful and elegant, even if some possess an evil heart and soul. The same is true however of beautiful maidens, is it not?~
==BSheena~I hope I can convince you that I belong to the other category - in both of my incarnations.~EXIT

CHAIN
IF~Global("SanSheena","GLOBAL",3)~ THEN BSandr sanSheena2m
~Do not be so shy, Sheena, I see your questioning look, just ask me whatever you have on your mind.~
DO~SetGlobal("SanSheena","GLOBAL",6)~ 
==BSheena~The relationship between you and <CHARNAME>...you travel together for a long time already and...He is...is he...~
==BSandr~We love each other if that is what you meant to ask.~
==BSheena~I was afraid you would say that - even if I observed that other men interest you just as well.~
==BSandr~He knows what I am doing and he knows that in the end it will always be him who counts for me. We both make our experiences and contribute them to our relationship.~
==BSheena~You allow him to have other girls beside you? Really?~
==BSandr~I do not own him and I have never felt any neglection from his side when I shared his heart with another. Actually it has always been a wonderful experience for all who are involved.~
==BSheena~You are a very perculiar couple I must say, very interesting...and attractive.~
==BSandr~(Laughs) Perculiar says the girl who morphs into a red dragon at will.~
==BSheena~It shows I may fit pretty well into your company.~EXIT

CHAIN
IF~Global("SanSheena","GLOBAL",4)~ THEN BSandr sanSheena2f
~Do not be so shy, Sheena, I see your questioning look, just ask me whatever you have on your mind~
DO~SetGlobal("SanSheena","GLOBAL",6)~ 
==BSheena~The relationship between you and <CHARNAME>...you travel together for a long time already and...you are very close..I mean in a physical sense as well...~
==BSandr~We love each other if that is what you meant to ask.~
==BSheena~I see - even if I observed that men interest both of you just as well.~
==BSandr~She knows what I am doing and she knows that in the end it will always be her who counts for me. We both make our experiences and contribute them to our relationship.~
==BSheena~And what if one of your other choices would not be male as well?~
==BSandr~I do not own her and I have never felt any neglection from her side when I shared her heart with another regardless of the gender. Actually it has always been a wonderful experience for all who are involved.~
==BSheena~You are a very perculiar couple I must say, very interesting...and attractive.~
==BSandr~(Laughs) Perculiar says the girl who morphs into a red dragon at will.~
==BSheena~It shows I may fit pretty well into your company.~EXIT

CHAIN
IF~Global("SanSheena","GLOBAL",7)~ THEN BSandr sanSheena2
~You wield that extremely large sword quite well, Sheena. I assume it was forged for you by your father?~
DO~SetGlobal("SanSheena","GLOBAL",8)~ 
==BSheena~You are right, it was crafted by my stepfather, a renowned weaponsmith in Faerun. Even if I like it that you call him my father as that is still how he feels to me. ~
==BSandr~He has always treated you like his beloved daughter, did he not?~
==BSheena~Oh, yes, this sword is a symbol for his love to me besides being a mighty weapon. He crafted it by using the tentacle of an illithid and the heart of a fire giant, but how he acquired such precious and rare artifacts I do not know.~
==BSandr~The fact alone that he did it is proof of what his daughter means to him.~
==BSheena~What about your father, Sandrah?~
==BSandr~He is no weapon smith but it is right to say that he provided me with almost everything I call my own. He gave me his wisdom and knowledge, his attitude, his love...~
==BSheena~You love him dearly - just I love my father. And your mother?~
==BSandr~I never knew her conciously, she died before my first birthday. Nevertheless I discover more and more of the heritage she has left me and within me. Those who have known her say that I look exactly like her.~
==BSheena~Which would mean she was one of the most beautiful and loveable women of the Realms.~
==BSandr~Thank you for this compliment, Sheena, it means a lot to me.~EXIT

CHAIN
IF~Global("SanSheena","GLOBAL",11) ~THEN BSandr sanSheena3
~Regardless of what others may say it is your belief that a half-dragon, even a red one, can be a creature striving to do good, Sheena.~
DO~SetGlobal("SanSheena","GLOBAL",12)~
==BSheena~Is that so absurd in your eyes?~
==BSandr~Not at all, my friend. I have great respect for your willingness to overcome what prejudiced minds would call your destination. I truely believe you can and will succeed.~
==BSheena~ Your words are valuable and encouraging, Sandrah. You do so much all the time and if you say I can do as well this really means something, not just hollow words.~
==BSandr~<CHARNAME> is the best example or not? And then my own father as well.~
==BSheena~ Elminster? What is wrong with his heritage?~
==BSandr~His father was the man who later became the god Cyric, an incarnation of evil in many ways.~
==BSheena~ Then Cyric is your grandfather and you yourself are another valid example that our heritage is not something we cannot overcome if we want it truely.~
==BSandr~(Your two companions continue to walk arm in arm for some time exchanging further their opinions on the subject.)~
EXIT

CHAIN
IF~Global("SanSheenaLTTrigger","LOCALS",1)~ THEN BSandr SanSheenRomTrig
~Hello, Sheena, still pondering the questions of love and partnership?~
DO~SetGlobal("SanSheenaLTTrigger","LOCALS",2)~
==BSheena~Adventure is hardly propitious in helping one find a soul mate - or keeping one, it seems.~
==BSandr~Travelling gives us every opportunity to meet new people- something it is unlikely you would achieve if you stayed in one place.~
==BSheena~Those new people always remain perfect strangers, their faces slowly disappearing from our memories with the passage of time. It is always the same.~
==BSandr~ Do you see us in such a way, my friend? I had hoped our company would mean more to you than passing strangers. You have not even started to explore all the opportunities.~
==BSheena~You mean like finding a beautiful, sensitive, caring and loving half dragon knocking on my bedroom door tonight?~
==BSandr~ Why focus on your own kind? Your disguise is not unpleasing to the eye.~
==BSheena~Are you suggesting I start a serious relationship based on a deceit?~
==BSandr~ There cannot be deceit when the truth is already known to your counterpart.~
==BSheena~My heart tells me this is awfully wrong, but yet still it yearns for love.~
==BSandr~ What your heart tells you can never be wrong, trust me in that.~
==BSheena~You would not encourage me so if you knew whom I think courageous enough to venture into such a liason with me...~EXIT

EXTEND_BOTTOM Sheena 21
IF ~InParty("CVSandr")AreaCheck("ar1202")~ THEN REPLY ~We have cleared the way out of this dungeon, you can safely get to Garren Windspear's hut nearby. I will join you there later.~GOTO SanIn
END

EXTEND_BOTTOM Sheena 22
IF ~InParty("CVSandr")AreaCheck("ar1202")~ THEN REPLY ~We have cleared the way out of this dungeon, you can safely get to Garren Windspear's hut nearby. I will join you there later.~GOTO SanIn
END

EXTEND_BOTTOM Sheena 23
IF ~InParty("CVSandr")AreaCheck("ar1202")~ THEN REPLY ~We have cleared the way out of this dungeon, you can safely get to Garren Windspear's hut nearby. I will join you there later.~GOTO SanIn
END

APPEND  Sheena
IF~~THEN BEGIN SanIn
SAY~Very well, I can need a bit of rest. (Smile) I will await you in that hut.~
IF~~THEN DO~EscapeAreaMove("AR1204",360,350,14)~EXIT
END

IF WEIGHT #-3~AreaCheck("ar1204") Global("SheenaJoined","GLOBAL",0)~THEN BEGIN SanIn2
SAY~Good to see the ones who free me from the dungeon. Can I do something for you in return?~
IF~~THEN REPLY~I'm always in need of able companions skilled in the art combat, magic or both. Can I tempt you to travel in my company?~ GOTO 21
IF~~THEN REPLY~I was just checking that you are well. Goodbye for now.~EXIT
END
END

