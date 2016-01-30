//Neh'taniel
INTERJECT_COPY_TRANS SK#Neht 22 SanKnowAmau
== CVSANDRJ IF ~InParty("CVSandr")~ THEN~ You worship the ancient sun god Amaunator then, Neh'taniel?~
== SK#Neht IF ~InParty("CVSandr")~ THEN~ (Looks at Sandrah fully astonished.) Your lore is exceptinal for one so young. Indeed Amaunator is the only god of the sun I know of, but where you come from he may be forgotten by most. (Sighs) Like by those cursed worshippers down here.~
== CVSANDRJ IF ~InParty("CVSandr")~ THEN~ It is the nature of those we call *gods* to exist only as long as they have followers believing in them. A forgotten god is a dead god. Consequently Amaunator is not dead as you are still here.~
== SK#Neht IF ~InParty("CVSandr")~ THEN~ Priestess, you impress me again. What you say is the truth. In your knowledge then, are there others like me?~
== CVSANDRJ IF ~InParty("CVSandr")~ THEN~ Not many today have a knowledge of the ancient god, but any follower of the lightbringer Lathander shares part of your belief in the sun just as any paladin of Helm is your companion in the fight against evil.~
== SK#Neht IF ~InParty("CVSandr")~ THEN~ Soothing words indeed, young healer. I would wish you belonged to one of those fellowships.~
== CVSANDRJ IF ~InParty("CVSandr")~ THEN~ I am a priestess of Mystra, elf, however that does not mean that I turn my face away from the sun.~
END

CHAIN
IF ~Global("SanNeth","GLOBAL",1) ~THEN BSK#NEHT Sandrah1
~ You heal me instead of fighting me. A strange action of a priest towards an undead I must say.~
DO~SetGlobal("SanNeth","GLOBAL",6) ~
==BSandr~ You are in that cursed state but I cannot condemn you for it as you have neither chosen it nor have you apparently deserved it.~
==BSK#NEHT~Most of your kind would fight me on sight nevertheless.~
==BSandr~ I am foremost a healer, Neh'thaniel, and the union of body and soul is my domain. Your soul is clearly suffering.~
==BSK#NEHT~Your soul is surely a kind one. Have you an idea what may cure me?~
==BSandr~ Amaunator.~
=~Your state is related to the almost dead god you follow. An obligation needs to be fulfilled. Do you have any idea what it may be?~
==BSK#NEHT~It was Amaunator himself who lent me his strength to help many of my people escape the fall of Ascalhorn, though it cost me my life.~
==BSandr~The obligation may not lie with you then but with him...Is there something you would petition from him if you could?~
==BSK#NEHT~We faithful of Amaunator believe that souls journey to the Citadel of the Eternal Sun after death, where they are judged. They reside there evermore. It is all I still require for myself.~EXIT

CHAIN
IF~Global("SanNeth","GLOBAL",5) ~THEN BSK#NEHT Sandrah2
~ Are you a priestess of whoever guards the Weave in these times, Sandrah?~
DO~SetGlobal("SanNeth","GLOBAL",6) RealSetGlobalTimer("SanNetInt","LOCALS",2760)~
==BSandr~Yes, I follow the Mistress of the Weave and all Magic, Mystra.~
==BSK#NEHT~It is strange, as you are quite reliable and balanced in your temper to follow a goddess like Mystryl.~
==BSandr~ You go a long way back in your memory, Neh'thaniel. In deed it is said that her first incarnation, Mystryl, was almost unpredictable in her temper and her provision of the Weave's power. However she was reliable in the way that she sacrificed herself when the mightiest of all human sorcerers that ever existed threatened the Weave in his attempt to gain godhood.~
==BSK#NEHT~And that has changed, you claim, when she was reincarnated from a human priestess by AO himself?~
==BSandr~So it is true!! Mystra has human origins ever since the days of Netheril's downfall. You are a witness of those times!!~
==BSK#NEHT~I have not much followed the history of the Gods, I must confess, suffering much from the fate of my own god Amaunator. But I can assure you that it was a human and it have been human priestesses who ascended ever since to serve and guard the Weave.~
==BSandr~So it was not at the Times of Trouble when Midnight took Mystra's coat and name that the first human was granted such an ascencion by AO!~
==BSK#NEHT~You are correct, Sandrah, they have all come from one of the oldest bloodlines on Toril already before that. I can see that this is of great interest to you who follows her as a priestess.~
==BSandr~It is utmost important to Midnight's granddaughter as well.~
==BSK#NEHT~(Neh'thaniel stands in wonder upon those last words but recognises that Sandrah has finished the conversation walking away in deep reflection of his previous statements.)~
=~Who might Midnight's granddaughter be?~EXIT

CHAIN
IF~Global("SanNeSlav","LOCALS",1)~ THEN BSK#NEHT SanSlaves
~Mylady Sandrah?~
DO ~ SetGlobal("SanNeSlav","LOCALS",2)RealSetGlobalTimer("SanNetInt","LOCALS",2760)~
==BSandr~It seems we have more in common than would be expected - hateful things that have not changed throughout the ages - slavers and necromancers.~
==BSK#NEHT~You seem to be in deed more agitated than I learned to know you at other times. Such creatures anger you much?~
==BSandr~You can say that aloud, Neh'thaniel, my hammer is twitching already in my hand to crush them.~
==BSK#NEHT~An unusual attitude for one who follows Mystryl, almost suitable for a paladin.~
==BSandr~You do not need to be paladin to be disgusted by the evil that lies in slavery as well as necromancy - and my goddess, know that necromancy is not using the gifts of the Weave that she guards - its an anomalous use of forbidden sources.~
==BSK#NEHT~You are a person of many surprises, young one.~EXIT

CHAIN
IF~Global("SanNeSlav","LOCALS",3)~ THEN BSK#NEHT SanSlaves2
~Mylady Sandrah, you do not seem to be as satisfied with the outcome of this adventure as I would have expected?~
DO ~ SetGlobal("SanNeSlav","LOCALS",4)RealSetGlobalTimer("SanNetInt","LOCALS",2760)~
==BSandr~ Hm, you are a fine observer...(smiles) you had time to learn it. Oh, we have surely dealt the slave trade in Athkatla a mighty blow today. It will take some time to recover and many happy lives will remain untroubled meanwhile.~
==BSK#NEHT~But? You cannot hide the small sadness I hear in your voice - I have not learned to know you as being pessimistic, Mylady Sandrah.~
==BSandr~ Pessimistic, my friend? No, just realistic. See, this town is corrupted through and through. That slaver's network has operated under the eyes of the guards and even priests who turned a blind eye to the business. Even if there is some good will in the magistrate at the moment, I think it is just a matter of time until things start anew.~
==BSK#NEHT~More work for your hammer then, mylady.~
==BSandr~ You are a paladin and you told me we have some things in common. We will both keep our eyes open and act wherever it is required.~
==BSK#NEHT~(Sighs) I guess you are right. The fight against evil is a permanent one and you cannot rest on your victories for long. Anyway it is good to find the spirit to do so in one so young and determined like you are.~EXIT

CHAIN
IF~Global("SanNeth","GLOBAL",7) ~THEN BSK#NEHT Sandrah3
~ I had the chance to talk about you with our comrads a bit, Sandrah?~
DO~SetGlobal("SanNeth","GLOBAL",8) RealSetGlobalTimer("SanNetInt","LOCALS",2760)~
==BSandr~Did you? I was unaware that I would be of such interest to a paladin.~
==BSK#NEHT~You are a fascinating person, even more since I learned about your magnificent heritage.~
==BSandr~Even if my own interest in my family's history is deep, I would prefer to be accepted by my companions for what I am myself.~
==BSK#NEHT~One would not exclude the other, young one. I see you as one who is without a prejudice towards others. You took me from the beginning for the person I am and I was rather than for the strange abnormity my current state implies.~
==BSandr~(Smiles) From one person to another then, history may establish as an interesting topic between us. I study it and you have witnessed it. Maybe we can both gain something by sharing our views on it.~
==BSK#NEHT~I have the slight hope that your remarkable knowledge may even find a way to...change my state. Only too bad for you that by doing that you may loose a friend.~EXIT

CHAIN
IF~Global("SK#Stronghold","GLOBAL",3)~ THEN BSandr SanNethWhyTh1
~ You seem to be distressed by something, Neh'thaniel. Maybe I can help you with my advice if you care to share your thoughts with me.~
DO~ SetGlobal("SK#Stronghold","GLOBAL",4)~
== BSK#NEHT~ I will not aid someone who routinely breaks the law. Now I see that you are not as honest and pure as you need to be.~
== BSandr ~ Is that so? Be assured that this company destroys evil where we find it. But often things are different from what they appear to be at first glance.~
== BSK#NEHT~ I trust thee very much, Sandrah, and if you follow <CHARNAME> in <PRO_HISHER> action then there might be a cause I do not see. You are <PRO_HISHER>'s counsellor and wouldst deny loyalty to an unjust act. So how come <CHARNAME> leads a thieves guild?~
== BSandr ~ We have destroyed this guild that was led by the evil Mae'Var. <CHARNAME> has taken control of the activities now as the group itself cannot be completely destroyed. Instead of letting another criminal murderer gather these thieves it is now us who lead the activities and thus control them. Admitted, it is not the clear righteous road we are taking, but since we cannot destroy the evil it is the second best solution to control it and minimise the harm done to innocents.~
== BSK#NEHT~ Life in these times is more complicated than it appears from the distance from which I observed so far. I am used to think in good or bad only - so where is this behaviour to be classified?~
== BSandr ~ Sometimes here it is the only way to fight a fire with fire.~
== BSK#NEHT~ Or to control the criminals by enforcing your reign over them? I will contemplate on your words, Sandrah, and I thank you for them as I was about to judge <CHARNAME> prematurely.~
EXIT
