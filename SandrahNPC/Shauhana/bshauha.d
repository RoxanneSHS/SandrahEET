BEGIN BSHAUHA

// First Goodnight
IF ~Global("ShauGN","GLOBAL",1) Global("ShauGN1","GLOBAL",0)~THEN BEGIN ShauGn
SAY~Good night <CHARNAME>, thank you for this day.~
IF~~THEN REPLY ~Good night, Shauhana, dream well.~
DO ~SetGlobal("ShauGN","GLOBAL",2) SetGlobal("ShauGN1","GLOBAL",1) RestParty()~EXIT
END

// Shauhana Story Begin

IF ~Global("SanShauMeet","GLOBAL",8)~THEN BEGIN ShauStor1
SAY ~You obviously have a lot of questions to your new companion, <CHARNAME>. Maybe now is a good time to ask one of them.~
IF ~~THEN REPLY ~Shauhana, you emphasised you orcish heritage, although this is not really obvious. You look like a very pretty human woman to me.~GOTO ShauHer1
IF ~~THEN REPLY ~It probably will hurt you to stir up unpleasant memories, Sandrah, but your scar is too obvious to be ignored. Do you mind to talk about it?~GOTO Shausca1
IF~~THEN REPLY ~What is really your relation to this orc clan that is hunting you - and now us as well? You said you are one of them, but also you were their slave and made to fight in the arena pits.~GOTO Shauslav1
END

IF~~THEN BEGIN ShauHer1
SAY ~My father was an orc chieftain of the Clan that is now hunting me. My mother had human blood in her, although she fought hard all her life to deny it. She was a half-orc but tried to compensate for that by being more *orcish* than any pure-bred.~
= ~Both of them were fully orcish in their hatred for me and my being so much human.~
IF~~THEN REPLY ~I see. That does not sound like a promising start into life. Did they mistreat you for not being one of them, I mean at least from the outside?~GOTO ShauStor2
END

IF~~THEN BEGIN Shausca1
SAY ~It would hurt me more if you had not asked but stared at it all the time and wondered what was the story behind it. The scar is the memory my father left me before he died. My father was an orc chieftain of the Clan that is now hunting me. My mother had human blood in her, although she fought hard all her life to deny it. She was a half-orc but tried to compensate for that by being more *orcish* than any pure-bred.~
= ~Both of them were fully orcish in their hatred for me and my being so much human.~
IF~~THEN REPLY ~I see. That does not sound like a promising start into life. Why have your parents hurt you in this way?~GOTO ShauStor2
END

IF~~THEN BEGIN Shauslav1
SAY ~My father was an orc chieftain of the Clan that is now hunting me. My mother had human blood in her, although she fought hard all her life to deny it. She was a half-orc but tried to compensate for that by being more *orcish* than any pure-bred.~
= ~Both of them were fully orcish in their hatred for me and my being so much human. The scar is the memory my father left me before he died.~
IF ~~THEN REPLY ~Please tell us your story then, Shauhana, we sympathise with you, be sure.  ~GOTO ShauStor2
END

IF~~THEN BEGIN ShauStor2
SAY ~I am the sixth child born to my parents and the only one that was *cursed* from their viewpoints with not only halfbreed appearance but revealing my human roots. I was an outcast with the Clan as well as within my own family.~
= ~The winter when I was twelve was the worst the Clan had to encounter in our mountains since many generations. The Clan came near extinction from the famine and the enduring cold. It was then, that my father who was one of the few who had managed to keep his family alive as a whole, decided to slaughter me on behalf of the rest.~
IF~~THEN REPLY ~Barbaric. You were his own child after all.~GOTO ShauStor3
END

IF~~THEN BEGIN ShauStor3
SAY ~Barbaric? It is the life in these mountains, the old and the sick and the unusable are sacrificed for the Clan to remain. That is how we survive. Only, I am not weak and I was not weak back then.~
IF~~THEN REPLY ~You say *we* and you mean your Clan? ~GOTO ShauStor4
IF~~THEN REPLY~You have an understanding for the acts of those murderous orcs? ~GOTO ShauStor4
END

IF~~THEN BEGIN ShauStor4
SAY ~The murderous orc Clan as you see it, is my world, my heritage - it is all I have ever known until seven moons ago, when I met the first outsider ever. A human. But this is another story. I will tell you now of my father's death.~
= ~The family had decided my death and my father came with his scimitar to execute the deed. But Shauhana is no lamb waiting to be slaughtered. I received the blow that cut my face, but the assault ended with the scimitar in my hand and my dead father lying to my feet.~
IF~~THEN REPLY ~You did not lack courage and skill even then - remarkable.~GOTO ShauStor5
END

IF~~THEN BEGIN ShauStor5
SAY ~Remarkable? It is orc, if you ever doubted I am one. Let me continue.~
= ~Of course I was overwhelmed by my brothers and other orcs and immediately sentenced to death for murder. It was then, that my mother intervened to save my life and send me to the arena pits instead.~
IF~~THEN REPLY ~So an act of caring for her daughter after all.~GOTO ShauStor6
END

IF ~~THEN BEGIN ShauStor6
SAY ~Baah, don't be a fool, <CHARNAME>. An additional revenge for the dead of her beloved husband it was. To let me suffer endlessly as a slave instead of a sudden death. ~
= ~She could see me during my training period how I had to pleasure the male orcs and satisfy their lust for a human woman - or an orcish one that looked like one. To see me fighting in the pit for my life again and again with only one means to escape - to lose my final fight.~
IF ~~THEN REPLY ~All of that is now over, Shauhana. You have escaped this life. I will not let it happen to you again, I swear that.~DO ~SetGlobal("SanShauMeet","GLOBAL",9)~EXIT
END

IF ~Global("SanSharkta","GLOBAL",8) ~THEN BEGIN Shautemp1
SAY ~Oh, <CHARNAME>, we are so near the temple now. There is a crack in those icy walls a bit north of here. When we pass that, we are at the temple of Sharkta Fai.~
IF ~~THEN REPLY ~I can see that it gets you excited. Understandable. All will be well in a short while. (Squeeze her hand reassuringly.)~GOTO K3
IF ~~THEN REPLY ~Yes, we have made it so far. Now you see what friends are for, Shauhana. (Give her a kiss on the forehead.)~GOTO K2
IF ~~THEN REPLY ~Love and friendship make everything possible. They are powers to change the world as well as ourselves. (You gently touch her scar and then caress the other side of her face.)~GOTO K1
END

IF ~~THEN BEGIN K1
SAY ~(She closes her eyes and half opens her lips while her face remains turned upwards to you in anticipation.)~
IF~~THEN REPLY ~(You gently follow her moist upper lip with your finger, and as her mouth opens a bit further, you finally kiss her.)~DO ~SetGlobal("SanSharkta","GLOBAL",9)~EXIT
END

IF ~~THEN BEGIN K2
SAY ~(She hugs both arms around you and embraces you with all her orcish strength. She leans her head a bit backwards so her lips now touch yours.)~
IF~~THEN REPLY ~(You respond to her with a passionate kiss to her eagerly parted lips.) ~DO ~SetGlobal("SanSharkta","GLOBAL",9)~EXIT
END

IF ~~THEN BEGIN K3
SAY ~(She keeps your hand and moves it up to her battered face. She leads your fingers across her scar and then to her other cheek. She opens your palm and kisses its inside with her eyes now closed.)~
IF~~THEN REPLY ~(You let your hand sink down and respond to her with a passionate kiss to her eagerly parted lips.)~DO ~SetGlobal("SanSharkta","GLOBAL",9)~EXIT
END

// Find Myrkul's Amulet
IF ~Global("Shamyrkfound","GLOBAL",1)~THEN BEGIN GetAmul
SAY ~Wait, <CHARNAME>! Before I may use the pool, we should look around a bit, whether we can find something useful or magic here.~
IF~~THEN REPLY ~Always a good idea. But on the other hand, places like this are often heavily guarded against intruders who want to take something away.~DO ~SetGlobal("Shamyrkfound","GLOBAL",2)~EXIT
IF~~THEN REPLY ~Good hint. Do you know about something specific that could be here?~DO ~SetGlobal("Shamyrkfound","GLOBAL",2)~GOTO GetAmul2
END

IF~~THEN BEGIN GetAmul2
SAY ~Not really, just a vague hint from my late mentor. My grandfather may not have gone through the portal but left something behind in this cave.~
IF~~THEN REPLY ~Your grandfather? After all, your family bounds seem to be strong.~EXIT
END

CHAIN
IF ~Global("SanShauOrcStaff","GLOBAL",6) ~THEN BSHAUHA GodChi1
~Sandrah, what did the shaman mean, calling me a godchild? What Clan secrets do I know of?~
DO ~SetGlobal("SanShauOrcStaff","GLOBAL",7) ~
== BSandr ~You surely are different from your Clan and your family. Maybe there is an explanation that goes deeper than just part of your mother's blood being human.~
== BSHAUHA ~My old shaman teacher was sensing a difference as well. He told me about our history, the caves, Sharkta Fai. He also discovered that I was able to learn magic, even though my learning was interrupted by my slavery then.~
== BSandr ~Would it be a great shock for you to think that your father maybe was not your blood father?~
== BSHAUHA ~I am ork!!! If I were not, what would I be then?~
== BSandr ~After the Time of Troubles many an unwed mother claimed her offspring to be god's blood. The same for mothers that were not always true to their husbands.~
== BSHAUHA ~Ha, forget it. Not my mother. She was my father's wife truly, I give you an oath on that. But still I am so different. Which god would leave his child with the orcs and let it become a pit slave? Urrgh. This is all a bad dream.~
== BSandr ~(Takes Shauhana in her arms.) If there is any truth in it, we will find out. Maybe it was just that arch shaman's trick to hit a weak spot in you. ~
== BSHAUHA ~You are right. Whatever - I am what I am. And I will leave Clan's land behind me now. With you.~
EXIT

// Sharkta Fai 1

CHAIN
IF ~Global("SanSharkta","GLOBAL",2) ~THEN BSHAUHA Sharkta1
~Sandrah, you know so very much, more than anyone I ever have known.~
DO ~ SetGlobal("SanSharkta","GLOBAL",3) ~
== BSandr ~(Laughs gently) You have not known many people up to now, Shauhana. Anyway, my knowledge is always for the sake of <CHARNAME>'s group and you are one of us now. Ask me anything you want. If you want me to continue what Brage began to teach you, I will do that gladly.~
== BSHAUHA ~Oh, Sandrah, it is so wonderful, these new feelings I now have. Receiving friendliness is so new for me. Yes, I want to learn happily, but this time I have another thing to ask you.~
== BSandr ~Just ask and we will see if I can help you.~
== BSHAUHA ~It is about Brage's book. The one he used to teach me the signs. Look here, it has the signs I know that speak human language. And it has the other signs speaking some language he has not known.~
== BSandr ~(Sandrah studies the worn and torn tome for some time, jumping backwards and forwards through the pages. She reads some words, then goes to another part of the books to read some other words. Her concentrated look suddenly turns into a smile.)~
== BSHAUHA ~Have you found something, Sandrah.~
== BSandr ~Yes, it is a very strange tome indeed and a very rare and and powerful item. Did Brage ever mention where he got it from?~
== BSHAUHA ~He used strange words. What is an ocean?~
== BSandr ~A very, very large water, like a sea you can journey on for many, many days. When you go to the Sword Coast, it is bounded in the west by an ocean that goes for weeks of travel, all water.~
== BSHAUHA ~(Laughs harsh) Those bloody foolish orcs! They want to rule Toril and have not even heard of the *ocean*. Brage said he found the book on a prat that came from the ocean and he killed him in a fight.~
== BSandr ~A prat?~
== BSHAUHA ~Another strange word, yes. Brage said those are thieves and murderers.~
== BSandr ~A pirate? A thief on the sea and the ocean.~
== BSHAUHA ~Yes, yes. Makes that sense to you?~
== BSandr ~Mmm. A book of this kind found on a pirate. Pirates rob anything they can get. So that does not mean much of a trace. This book is strange for its contents and its two languages. As far as I see, it is a very old elfish book - or rather a copy of it. Someone started to translate the old language that is not even spoken by the elves of today to human language. But the translation has not been finished.~
== BSHAUHA ~I see. You need time to study it closer, yes? I will ask you later. Thank you, Sandrah.~EXIT

CHAIN
IF ~Global("SanSharkta","GLOBAL",4) ~THEN BSHAUHA Sharkta2
~Sandrah, are you making progress with Brage's book?~
DO ~ SetGlobal("SanSharkta","GLOBAL",5) ~
== BSandr ~It will take long. Is there anything specific that you hope can be found in these pages?~
== BSHAUHA ~Brage thought, it would lead him to Sharkta Fai. That is why he came to Clan's land. To be restored in his heart and mind from the kiss of the stars.~
== BSandr ~(Leafs through the book again) I find the elvish symbols for Sharkta Fai in the part that is not translated.~
== BSHAUHA ~What does it say? Oh, Sandrah please?~
== BSandr ~You are trembling all over Shauhana. What excites you so about the old legend?~
== BSHAUHA ~Does it...does it tell you how I can get restored by Sharkta Fai?~
== BSandr ~It will take me some time to decipher the old text. I have to compare each symbol to a symbol from an ancient relict that may exist elsewhere and for which we know what it means. Nobody knows the ancient signs any more.~
== BSHAUHA ~You must find it out, Sandrah! PLEASE! I may get healed and be a real being. We must find out how to get inside!~
== BSandr ~Get inside? It is a very old legend. Who knows if it really exists. I have sworn to find a way to help you, Shauhana, but do not set your hopes on the dreams of an old race.~
== BSHAUHA ~It is also knowledge of the Clan. It exists. I know where it is but not how to get inside.~
== BSandr ~You know where it is?~
== BSHAUHA ~Almost. I know where the temple is that guards the entrance. Sharkta Fai is in the Clan's land. I am one of the few to know. I have been with my old shaman teacher to bring some fallen to the fountain. I was small then, but an orc never forgets a trail she has wandered once in her life. I can always find it again. ~
== BSandr ~That is indeed interesting. I must decipher those parts. It must be more than an orcish burial ground, if even the old elves had written about it.~
== BSHAUHA ~The shaman left me in the temple back then while he went to the ritual that opened the gate of Sharkta Fai. It cannot be far from the temple considering the time it took him to get there with the fallen and to return.~
== BSandr ~I will start my work at the next rest. But I cannot promise you if I can do it with the little of information we have out here in the wilderness. Do not raise your hopes too high, my friend.~
== BSHAUHA ~Sandrah, I have lived long like this and I can live on like this much longer. But hope and dreams have come back to me since I met my new friends. If this is all I get in the end, it is still so much more than I had before.~
EXIT

CHAIN
IF ~Global("SanSharkta","GLOBAL",6) ~THEN BSHAUHA Sharkta3
~At this crossroad the way to Sharkta Fai begins. We need to go north from here.~
DO ~SetGlobal("SanSharkta","GLOBAL",7) ~
== BSandr ~The jewel we have gathered from Vennegrat is the key to the pool. I have made some progress with the translation of Brage's tome.~
== BSHAUHA ~(The good side of her face seems to glow with hope and joy) I knew you would, Sandrah, I trust you so much. Is there help to be expected from Sharkta Fai?~
== BSandr ~The ritual seems to be easy. Once we are at the temple, we need to open the altar and put the jewel inside. It will then reveal and open a cave. Inside the cave is supposed to be the Sharkta Fai Pool and the entrance to the Other World.~
== BSHAUHA ~We have the jewel and I can lead us to the temple - but, <CHARNAME>, it is not an easy road.~
END
++ ~You seem to be determined to go there, Shauhana. Tell us of the road.~+ Sharkta4
++ ~We have promised to do anything to restore you, Shauhana. What awaits us on that road?~+ Sharkta4

CHAIN
IF~~THEN BSHAUHA Sharkta4
~The road goes up into the mountains and the endless ice. It starts in the north of the old way sign. My tutor used an orcish amulet to hold off the creatures of the ice. I was small then and the monsters seemed enormous. We do not have the amulet but we are a strong party.~
== BSandr ~None of us would be scared by creatures of the ice. We have fought many types of monsters for a just purpose. Still it would help to be prepared if we knew what to face.~
== BSHAUHA ~Yetis. Enormous creatures of incredible strength. And ice creatures, golems that freeze you but maybe can be destroyed with your hammer. Fierce winter wolves and a tribe of hunter orcs.~
== BSandr ~Sounds like nothing we cannot overcome, have faith, Shauhana.~
== BSHAUHA ~I do have. It will just take us a lot of fighting, as the road is long and there are many opponents to be met. But we will succeed in the end.~
END
++ ~I agree. But what is the purpose in the end? Sandrah, what does the book tell us about Sharkta Fai? I will not risk all of our lives to chase a legend.~+ Sharkta5
++ ~(Sigh.).~+ Sharkta5

CHAIN
IF~~THEN BSHAUHA Sharkta5
~(All of Shauhana's hopes and dreams are expressed in the look she gives to Sandrah.)~
== BSandr ~You are wise, <CHARNAME>, to consider the goal. My studies have revealed that there might be a good purpose for us to go there. Not only the orcs but also the elves tell the same about the pool of Sharkta Fai.~
= ~The cave is the entrance to the Other World which awaits those fallen in honour in their battles. To get inside, the bodies of the fallen must be restored. This is done by stepping into the fountain pool. There is only one way out from the pool - to the Other World.~
== BSHAUHA ~But I am not fallen and my time for the Other World is not now! The fountain will restore me and then kill me afterwards?~
== BSandr ~The ritual states, that the fountain is only for the fallen. The Fountain's Guardian welcomes them when restored and lets them into the Other World. He does not allow a living to perform the ritual.~
== BSHAUHA ~So it is all in vain. Brage was indeed kissed by the stars to believe he would find healing in Sharkta Fai.~
== BSandr ~There is another paragraph on that topic in the book, that gives me some hope. And also another lore I found in my own encyclopaedia about a necromancer's analysis on Sharkta Fai. They believe, that a living who goes into the fountain time after time will gain eternal life. If the Guardian does not insist on his right to take him to the Other World, that is.~
== BSHAUHA ~But, but I do not want eternal life, I just want to be healed for the rest of what is this life.~
== BSandr ~Right. And this is why I think we can succeed. We will bring your orc teacher's body for his journey to the Other World. He has fallen while defending you, a glorious deed for which he deserves the entry. If we persuade the Guardian that he died for you and that you need just a drop from the fountain to be healed, we will be heard. The necromancers are greedy, they just want too much. We only ask for little and have earned it.~
END
++ ~We will do as Sandrah proposed. Even if the Guardian refuses this little gift, you will have done your last service for your teacher who gave his life for you.~EXIT
++ ~I hope all of the will turn out profitable in the end.~EXIT
++ ~I can't await the bloodshed.~DO~IncrementGlobal("Sanpoints","Global",-2)~EXIT

CHAIN
IF ~Global("SanSharkta","GLOBAL",12)~THEN BSHAUHA Sharkta10
~I feel it all over, something has happened!~
DO~SetGlobal("SanSharkta","GLOBAL",13)~
== BSandr ~OH - Yes, Shauhana, what a joyful day! You look perfect, so wonderful, it has all worked!~
== BSHAUHA ~(Looks down into the clear water of the pool.) SANDRAH!!! <CHARNAME>!!! Is that me? Yes, it must be, there is no other around...~
END
++~Yes, Shauhana, you are...what is this? The guardian?~
EXIT

// Shauhana's Roots

CHAIN
IF~Global("Shamyrkfound","GLOBAL",3)~THEN BSHAUHA MyrkamSt
~<CHARNAME>, may I please have the amulet we found in the cave? It somehow belongs to me, as it is a heritage from my grandfather.~
DO ~SetGlobal("Shamyrkfound","GLOBAL",4)RealSetGlobalTimer("ShaktTime","GLOBAL",2000)~
== BSandr ~Your grandfather worshipped Myrkul then, one of the Dead Three? Or is that the belief of all of your Clan - and yours?~
== BSHAUHA ~I don't know if my grandfather *worshipped* Myrkul. My Clan no longer does after my grandfather died, defeated in the end. And me, I surely not follow the Lord of the End of Everything - baah.~
== BSandr ~I sense from your words, that your grandfather was somehow special among your Clan.~
== BSHAUHA ~Oh, yes, he was the last of the great Orc leaders, the mightiest warrior in our history. Not like my father, who got killed by a child daughter. Grandfather nearly came to rule Faerun with the greatest Orc force ever seen. But he was defeated at last at the Fields of Dead.~
== BSandr ~The Fields of Dead? We have been there ourselves during our adventures on the Sword Coast.~
== BSHAUHA ~Then you have surely seen my grandfather's empty mausoleum, that the stupid orcs built for him afterwards - to cover the shame of the loss they had caused themselves by their cowardice.~
END
++~Hold on for a second! The empty mausoleum on the Fields of Dead? It wasn't so empty when we were there.~+ MyrkamSt1
++~(Remain silent and let Sandrah continue with the inquiry. You know her talent to extract secrets in her seemingly harmless manner.)~+ MyrkamSt1
++~We laid that ghost over there to rest long ago.~+ MyrkamSt1

CHAIN
IF ~~THEN BSHAUHA MyrkamSt1
~My grandfather is not buried there, he is not buried at all.~
== BSandr ~So he really went to Sharkta Fai - but why did he not take his amulet with him?~
== BSHAUHA ~He was brought to Sharkta Fai of course, as he died gloriously in battle, having slain hundreds of humans and elves himself on that battle day. But some rumours say he did not pass the portal. They say he left the pool restored and even dared to battle the Guardian. There are orcs who believe he returned to the Fields of Dead to continue the battle.~
== BSandr ~Shauhana, so it is Ghotal's blood that is in you and that makes you so strong?~
== BSHAUHA ~My all-knowing friend, I should have guessed you have heard about my grandfather. Sure. You know so much, so you must know about General Ghotal as well.~
== BSandr ~Then know, Shauhana, that those rumours about him were true. There was a sect of orc priest that had ressurected your grandfather.~
== BSHAUHA ~You defeated them, right? Only you and <CHARNAME> are strong and courageous enough for such a deed.~
== BSandr ~We laid him to his final rest, yes. The battle on the Fields of Dead is over.~
== BSHAUHA ~That is good. Orcs are not to rule Faerun - ever.~
EXIT

CHAIN
IF~Global("Shamyrkfound","GLOBAL",5)~THEN BSHAUHA MyrkamSt2
~(Sandrah and Shauhana have sat together for a while with a book. Sandrah has taken up Shauhana's education from the deceased Brage.)~
DO~SetGlobal("Shamyrkfound","GLOBAL",6)RealSetGlobalTimer("ShaktTime","GLOBAL",2000)~
== BSandr ~Tell me, Shauhana, even though you said you never want to have orcs rule Toril, you still seem to be proud of your grandfather Ghotal.~
== BSHAUHA ~You have fought against orcs and you have fought against orcs of my Clan, Sandrah. You must know yourself what the difference is.~
== BSandr ~That is true, your Clan has the toughest and best fighters we have encountered. They never give up and are fearless and strong willed.~
== BSHAUHA ~Ha, they are decaying already. The Clans were much stronger in my grandfather's days. You must know, we Clan orcs are different from those weaklings you may have encountered elsewhere. The Clans are organised and well trained, mighty warriors and feared battle priests. But they no longer have a leader, like Ghotal was. Even if his visions of an Orc nation were determined to fail.~
== BSandr ~He was the son of a god after all, even if it was a god that even you despise.~
== BSHAUHA ~Yes, he was Myrkul's son - and I have his blood in me.~
END
++~So we know now, why the Guardian and others called you a godchild, Shauhana.~+ MyrkamSt3
++~(Shake your head in disbelief) Is there anyone left in the Realms these days not claiming to be a godchild?.~+ MyrkamSt3

CHAIN
IF ~~THEN BSHAUHA MyrkamSt3
~You think it is because of Myrkul's blood in me?~
== BSandr ~I doubt that, <CHARNAME>. They call you a godchild because you are a direct spawn. But Shauhana has human blood from her mother and Myrkul would be her great grandfather only. If you follow that vein, nearly everybody in Faerun would be a godchild in some way.~
== BSHAUHA ~Sandrah, once you asked me about Ghotal *worshipping* Myrkul, and I tried to avoid a direct answer then.~
== BSandr ~And now?~
== BSHAUHA ~I don't know what <CHARNAME>'s heritage is, but I know that godchilds not always follow their parents. Because of the strength and will they inherit, they very often do not what their godly parents expected them to do.~
== BSandr ~And you think that is true for General Ghotal who brought such massive destruction to the realms?~
== BSHAUHA ~That is your view - from the side of the attacked. But grandfather did not intend to bring the End of Everything. He rather wanted to bring a beginning, a beginning for the united Clans. But he failed, as orc's, even Clan orcs, are too stupid to work united and forget their little greed for a moment.~
END
++ ~That is some food for thought, Shauhana. It is late already. Let us continue our talk another time.~EXIT
++ ~(Yawn.).~EXIT

// Entering Amn

CHAIN
IF ~Global("Shaucity","GLOBAL",1)~THEN BSHAUHA CityG1
~(Shauhana has grabbed your arm and holds steadily on to it. As you look at her questioningly, you have the impression that your fearless orc warrior seems to be almost terrified by something. Sandrah has stopped as well, startled by Shauhana's reaction.)~
DO ~SetGlobal("Shaucity","GLOBAL",2)~
== BSandr ~Have you seen something we have not recognised, Shauhana?~
== BSHAUHA ~Oooh!!~
END
++ ~What is wrong, Shauhana? Hold on to me, you seem to be trembling.~+ CityG2
++ ~Get yourself together, Shauhana? Pretend you're orc, heh.~+ CityG2

CHAIN
IF ~~THEN BSHAUHA CityG2
~(Shauhana shakes her head a few times as if to get something out of her hair. In another moment she has steadied herself again.)~
== BSandr ~Are you fine, my friend? Can you tell us what has happened?~
== BSHAUHA ~Oh, <CHARNAME>, I am sorry - it is - I was...I had not expected it to be like this. I mean Anm, the city. Actually I had no idea what it would be like.~
== BSandr ~Yes, we have seen your land which is all you have known up to now. And now Athkatla, a city that even amazes people that are otherwise used to town's life.~
== BSHAUHA ~For a moment I had this strange vision of what would happen if all those many people would discover that I am orc. It caught me somewhat unaware.~
END
++ ~(You try to let your laughter sound gentle and reassuring) But, Shauhana, nobody here will think that you are orc. Just compare your features to the Clan folk you have known. I assure you that when you walk up to someone and tell them you are orc, they will just shake their head in disbelief.~+ CityG3
++ ~You really have a lot to learn still.~+ CityG3

CHAIN
IF ~~THEN BSHAUHA CityG3
~You mean they will not inquire on people they do not know until they find out the truth?~
== BSandr ~Take your time and look around you, Shauhana. See all these people that are strangers to each other. Did you see the dwarf over there? And here comes a Svirfneblin.~
== BSHAUHA ~What a strange creature? You think an orc could just walk in that crowd without being noticed?~
== BSandr ~I am sure we will see one sooner or later. I mean one that looks a bit more orcish than you do. All these people and different races live here together.~
== BSHAUHA ~And they do not fight and kill each other right away? How does that work? Is that the laws that Brage told me about - the laws he had broken so he had to flee from his clan?~
== BSandr ~Partly that is because of the laws, yes. And partly it is because everybody profits from being part of the city's community. And, by the way, there are crimes and killings among the citizens, thiefs and robbers or jealous husbands.~
== BSHAUHA ~(Suddenly Shauhana laughs out loud.) Oh, my poor ignorant orcs! I learned more in just a few days travelling with you than all of them together will ever forget in their lifetimes. They know so little, these wannabe world rulers. It is clear that grandfather had to fail with them.~
END
++ ~Your grandfather seems to be very important for you, Shauhana? He comes to your mind on many occasions.~+ CityG4
++ ~Grandfather here, Grandfather there...~+ CityG4

CHAIN
IF ~~THEN BSHAUHA CityG4
~Ghotal is my blood, <CHARNAME>, and that part orc I can be proud of. Had he succeeded, the Clans would not be that primitive murderous hords that you see now. He would have given them cities like this and knowledge of what is really all over Toril.~
== BSandr ~But he tried to achieve that by gathering the largest orc army that ever was united and started a war to conquer the realms.~
== BSHAUHA ~You know much, Sandrah - most of the time. But your knowledge about Ghotal comes from second hand sources, that paint this cruel picture of him. My old mentor had other things to tell about that time long ago. In his version, my grandfather united the clans to defend our lands against the aggressors from the south.~
END
++ ~Let us put this interesting debate on hold for a minute, girls. Let Shauhana get her own impression of the town to lose her fears. Maybe we can find some time to inquire a bit of your history in the temples of wisdom of Athkatla.~EXIT
++ ~Maybe that old blind shaman we found in the Slums knows a bit more. I have the impression he wanted me and Shauhana to meet each other.~
EXIT

CHAIN 
IF ~~THEN BSHAUHA ShauWallCall1
~Not all orcs are enemies for me. There seems to be some interest for me from those who have not forsaken my grandfather and his visions.~
== BSandr ~There is again emphasis on your nature as a godchild as well as on your progeny from Ghotal. The Clans can surely not harm you here in the city, but you may be able to find out more about your background.~
END
++ ~We have our own mission, Shauhana, and maybe it is not possible to follow the requests of that blind seer and the warlord. But we will accompany you at least to the slums to find out what they really know and want.~+ ShauWallCall2
IF~!InParty("Minsc")~THEN REPLY~This is leading us too far off from our own mission, Shauhana. I hope you understand that you will be on your own when you follow the seer's request.~+ ShauWallCall3
IF~InParty("Minsc")~THEN REPLY~This is leading us too far off from our own mission, Shauhana. I hope you understand that you will be on your own when you follow the seer's request.~+ ShauWallCall4
++ ~I agree with Sandrah, but the decision is yours, Shauhana.~+ ShauWallCall2

CHAIN
IF ~~THEN BSHAUHA ShauWallCall2
~Thank you, <CHARNAME>, you understand my need to learn about my strange heritage, as you share my fate. If our way could be together after we have talked to the seer, I do not know - but I wish it to be.~
EXIT

CHAIN
IF~~THEN BSHAUHA ShauWallCall3
~I had hoped that you would understand my need to learn about my strange heritage, as you share my fate. As you do not even want to see the seer, our way can no longer be together as I had wished it to be. I will find the man Minsc and his friend Boo - they will help us for sure. Farewell.~DO ~SetGlobal("ShauhanaJoined","GLOBAL",0) SetGlobal("ShauMeetAmn","GLOBAL",1) EscapeAreaMove("AR0406",1215,1459,11)~EXIT

CHAIN
IF~~THEN BSHAUHA ShauWallCall4
~I had hoped that you would understand my need to learn about my strange heritage, as you share my fate. As you do not even want to see the seer, our way can no longer be together as I had wished it to be. Minsc and me will leave you, <CHARNAME> and search my fate on our own. We will return to my village then, our place and destiny lies there. You may find us in my old teacher's house.~
END
IF ~~THEN REPLY  ~Oh no, sorry, that was a mistake!~DO ~JoinParty()~EXIT
IF ~~THEN REPLY  ~All the best to you both, we will see each other again.~DO~
SetGlobal("ShauhanaJoined","GLOBAL",4)
ActionOverride("Minsc",LeaveParty())
ActionOverride("Minsc",SetDialog("MINSCP"))
ActionOverride("Minsc",EscapeAreaMove("CVSHA8",578,721,13))
EscapeAreaMove("CVSHA8",478,748,13)~EXIT
 

// Shauhana and Minsc

CHAIN
IF ~Global("SanShauMinsc","GLOBAL",2)~THEN BSHAUHA ShauMinsSeek
~Sandrah, you and <CHARNAME> have travelled lots of strange lands and met many different people, I think. Maybe you can help me once again.~
DO ~SetGlobal("SanShauMinsc","GLOBAL",3)~
== BSandr ~I will try to help you best as I can, Shauhana. Everything must seem to be very puzzling to you.~
== BSHAUHA ~Maybe the strange thing I want to ask you about will be even puzzling to you in your knowledge, let's see.~
= ~Have you ever met a big, strong and proud warrior on your journeys that has befriended a very special animal?~
== BSandr ~Hm - can you be a bit more specific, my friend?~
== BSHAUHA ~My old teacher gave me little more in his hour of death. He said I would need to find a man, a human, strong of statue but pure as a child in his mind. His mind, my teacher said, would be shared with his animal companion, whatever that may mean. I would possess what it takes to make him hale again and he would be the key to my destiny.~
== BSandr ~You seem to be the subject of many prophesies, Shauhana. I know a man who would fit to your description, but before I would dare to raise any hope in you I want to be sure we do not miss any detail you can tell me about that man.~
== BSHAUHA ~A big man who has lost everything he ever cared for except for his little animal friend. Someone to protect the growing magical skills I start to discover. He has no hair. His animal friend is only as big as one hand but powerful and witted. It is a creature that talks to those who are supposed to understand.~
== BSandr ~I think we know the man and his little animal, and we even know where he is. He was a companion of our group at one time.~
== BSHAUHA ~Really? Oh, Sandrah, I knew it would be right to talk to you. Please, please tell me who it is, what is his name, where is he?~
== BSandr ~Come sit down with me, Shauhana. I will tell you his story - or better what I know about it. His name is Minsc...the little animal is his hamster companion Boo.~
== BSHAUHA ~Minsc. (Her eyes take on a dreamily gaze.) Minsc and Boo...~DO ~ StartCutSceneMode()  SmallWait(4) FadeToColor([20.0],0) Wait(4) FadeFromColor([20.0],0)  EndCutSceneMode() ~EXIT

CHAIN
IF ~Global("SanShauMinsc","GLOBAL",4)~THEN BSHAUHA ShauMinsHint
~Sandrah, you told me that you know where the man Minsc and his companion Boo is.~
DO ~SetGlobal("SanShauMinsc","GLOBAL",5)~
== BSandr ~Yes, my friend, we last have seen him in Athkatla. He mourns the death of his former companion, the witch he has guarded with all his power and blood.~
== BSHAUHA ~This must be terrible...I mean to be somebody's guardian and to lose that one nevertheless.~
== BSandr ~You are very caring, Shauhana, unlike any orc I have ever met. Yes, it must be the worst experience one can have, especially as Minsc is totally blameless for the loss of Dynaheir, his witch. (Sandrah and Shauhana walk together for a long time in which your lover tells the half-orc girl the story of Dynaheir and Minsc.)~
== BSHAUHA ~Maybe the only way to help him is to give him a new task in protecting a mage?~
== BSandr ~The strange prophecy you have mentioned - in combination with the fact that you have started to develop your magical skills recently... You are a strong warrior, Shauhana, but that does not mean you cannot need a bit of protection on the way that lies before you.~
== BSHAUHA ~Not only that, Sandrah, I will have a task once we succeed in leaving my Clan's land. I must find Minsc and find out what is behind the words of my old teacher.~
== BSandr ~I very much hope that <CHARNAME> and the rest of us can be part of that mission and our way will be together.~
EXIT

CHAIN
IF ~Global("SanShauMinsc","GLOBAL",6)~THEN BSHAUHA ShauMinsSeek1
~Sandrah, you and <CHARNAME> have travelled lots of strange lands and met many different people, I think. Maybe you can help me once again.~
DO ~SetGlobal("SanShauMinsc","GLOBAL",7) RealSetGlobalTimer("SanShauMinTi","GLOBAL",800)~
== BSandr ~I will try to help you best as I can, Shauhana. Everything must seem to be very puzzling to you.~
== BSHAUHA ~Maybe the strange thing I want to ask you about will be even puzzling to you in your knowledge, let's see.~
= ~Let me ask you about Minsc and Boo then. Have you ever met another big, strong and proud warrior on your journeys that has befriended a very special animal?~
== BSandr ~Hm - can you be a bit more specific, my friend?~
== BSHAUHA ~My old teacher gave me little more in his hour of death. He said I would need to find a man, a human, strong of statue but pure as a child in his mind. His mind, my teacher said, would be shared with his animal companion, whatever that may mean. I would possess what it takes to make him hale again and he would be they key to my destiny.~
== BSandr ~You seem to be the subject of many prophesies, Shauhana. I know no other man than Minsc who would fit to your description, but before I would dare to raise any hope in you I want to be sure we do not miss any detail you can tell me about that man.~
== BSHAUHA ~My teacher described a big man who has lost everything he ever cared for except for his little animal friend. Someone to protect the growing magical skills I start to discover. His animal friend is a creature that talks to those who are supposed to understand.~
== BSandr ~Yes, my friend, Minsc mourns the death of his former companion, the witch he has guarded with all his power and blood.~
== BSHAUHA ~This must be terrible...I mean to be somebody's guardian and to lose that one nevertheless.~
== BSandr ~You are very caring, Shauhana, unlike any orc I have ever met. Yes, it must be the worst experience one can have, especially as Minsc is totally blameless for the loss of Dynaheir, his witch. (Sandrah and Shauhana walk together for a long time in which your lover tells the half-orc girl the story of Dynaheir and Minsc.)~
== BSHAUHA ~Maybe the only way to help him is to give him a new task in protecting a mage?~
== BSandr ~The strange prophecy you have mentioned - in combination with the fact that you have started to develop your magical skills recently... You are a strong warrior, Shauhana, but that does not mean you cannot need a bit of protection on the way that lies before you.~
== BSHAUHA ~Minsc. (Her eyes take on a dreamily gaze.) Minsc and Boo...~DO ~ StartCutSceneMode()  SmallWait(4) FadeToColor([20.0],0) Wait(4) FadeFromColor([20.0],0)  EndCutSceneMode() ~EXIT

CHAIN
IF ~Global("SanShauMinsc","GLOBAL",12)~THEN BSHAUHA ShauMinscLT1
~Minsc, do you know that I have heard about you and Boo already before we have met?~
DO~SetGlobal("SanShauMinsc","GLOBAL",13)~
== BMINSC~Minsc and Boo are famous heroes, so much is true. Orcs fear us all over Toril.~
== BSHAUHA ~(Smiles at Minsc.) That may well be true, although this orc girl here is not afraid of the great hero. Boo will prevent me from such harm. ~
== BMINSC~You say you are orc but you don't look like one and you don't talk like one and you don't act like one.~
== BSHAUHA ~And maybe I have killed more of them than even you, Minsc. But now I am alone and far from my Clan trying to find out more about myself and my destiny.~
== BMINSC~I have observed that you are starting to read magic scrolls. I have never heard...I mean Boo has never heard...of an orc girl trying to become mage.~
== BSHAUHA ~You are right...eh, I mean Boo is right on that. I am the only one I have ever heard of myself. It is a strange gift I have discovered only lately.~
== BMINSC~Do you know that Rashemen berserkers are destined to protect witches?~
== BSHAUHA ~Yes...Sandrah has told me the sad story of how you lost your...Dynaheir. (Shauhana has taken Minsc's trembling hand.) She has also told me that you are not to blame for this. (Boo purrs softly at Shauhana's words.)~
== BMINSC~You understand much...strange orc girl...I must...Boo and I must think a bit now...~
EXIT

CHAIN
IF~Global("SanShauMinsc","GLOBAL",14)~THEN BSHAUHA SanShauMysAniMessg
~(As the dusk begins to gather around your party's camp, you observe a strange scene. Later on you will be unable to assure whether it was reality or just imagination fuelled by your exhaustion.)~
DO~SetGlobal("SanShauMinsc","GLOBAL",15) RealSetGlobalTimer("SanShauMinTi","GLOBAL",600)~
==Pellig ~(At first you think that Pelligram is luxuriously nibbling at a piece of her booty held between her front paws.)~
== Boo ~(At a second glance you recognise that the object there is really Boo, but the small hamster is in no danger at all. The two animals almost seem to be conversing with each other.)~
== Pellig~(The telepathic voice hits you unaware and your head almost seems to burst from the intensity of the waves.)~
== Boo ~I need your advice, old friend, now that my mission seems to near its end.~
== Pellig~You think I will be able to provide you with such, Boolerion?~
== Boo ~You are the oldest and highest ranked of our Goddess' commissaries, Pelligram, closer to her than anyone else among us.~
== Pellig~ Tell me and we will see.~
== Boo ~My mission to unite my ward with the godchild appears to be successful.~
== Pellig~Congratulations for that, Boolerion - even if I sense that you may not be as happy about it as one would be in your place. ~
== Boo ~You may be able to understand that, Pelligram, as it may be the same to you. After such a long time I feel like I cannot or want not to leave my entrusted. Do you think the Goddess will insist on my return? Can she not easily replace one such as me?~
== Pellig~ Purr!! One like you is hard to replace, my friend. Nevertheless she may grant you your wish in return for your excellent service. But you must be aware of the price for it. ~
== Boo ~You mean I will become mortal and end when Minsc ends? Sigh. If that is so, it is acceptable. Tell me, Pelligram, would your choice not be the same with Sandrah?~DO~DestroySelf()~
== Pellig~ Mmmh. You know, Boolerion, I will not need to make that choice. I either fail my mission and perish - or I succeed, which means I return with her to the Goddess anyway.~DO ~ RestParty()~EXIT

CHAIN
IF ~Global("SanShauMinsc","GLOBAL",16)~THEN BSHAUHA ShauMinscLT2
~Minsc, we are both very far away from our homelands and surrounded by strangers. Are you a bit homesick sometimes?~
DO~SetGlobal("SanShauMinsc","GLOBAL",17) RealSetGlobalTimer("SanShauMinTi","GLOBAL",600)~
== BMINSC~Far from home we are but surrounded by strangers? We have found new friends, haven't we.  Ah, yes, I always thought I need to prove my manhood to be accepted to my berserker's lodge at home. Maybe with all I have done on my travel I could tell the boys back home a lot of story over some kegs of ale.~
== BSHAUHA ~Ha, you sure can, no doubt, mighty warrior. But where I come from manhood is also proven in another way...~
== BMINSC~...mmmh, yes...I guess I know what you mean...eh, yes.~
== BSHAUHA ~There is not a fair Rashemen damsel waiting for the returning hero?~
== BMINSC~(Blushes) There is none, Shauhana. I was Dynaheir's guardian and I was like a brother for her. And Sandrah very much cared for me and taught me about...love. But Sandrah always insisted that one day I would find the maid that was meant for me and it was not herself.~
== BSHAUHA ~And no one will be there to greet you in your home should you ever return to there?~
== BMINSC~No family is left. And the boys? Will they still remember old Minsc and Boo? They are all berserkers, I wonder if all of them are still around. I tell you something now, Shauhana. Maybe my place is really now here, with our comrades like they were our family.~
=~(Mumbles) ...and then there is an orc witch needing protection and care.~
EXIT

CHAIN
IF ~Global("SanShauMinsc","GLOBAL",20)~THEN BSHAUHA ShauMinscLT3
~A strange custom of these lands to sell ribbons on the street.~
DO~SetGlobal("SanShauMinsc","GLOBAL",21) RealSetGlobalTimer("SanShauMinTi","GLOBAL",600)~
==x#setta~Look a' the ribbons,
m' gentle ladies,
I've every pattern
an' color an' length
Silks o' the Orients, 
Cormyrian velvets
purpl' o' Chessenta,
an' Amnish lace...' ~
== BMINSC~Not strange, Shauhana, but very wonderful. Let me tell you, nice orc girl, you cannot know such, poor thing that you were.~
=~Every good Rashemi girl needs a lot of ribbons to put in her hair to dance at Midsummer Festival! Ah, the Midsummer Festivals! Minsc misses them a lot! Minsc drank more sweet meads than everyone else and jumped the highest. O, jump over the tall bonfires, holding a nice girl by her hand...~
== BSHAUHA ~For an orc girl to be decorated with a ribbon would mean she will be sacrificed to Gruumsh.~
== BMINSC~Orcs should be kicked in the butt for doing such a thing to a girl. There are nice orc girls who deserve to be treated much better than any orcman can. Think of nicer things, Shauhana, think of a festival that is great fun for all good folk. But the crones back in Rahemen always try to find Minsc a betrothed after the bonfire dance. They say that no big and strong man like me should be without a good woman to look after him. I had to go to my dajemma before that. A married man cannot travel far from his home, and no berserker is a berserker, if he does not go to a dajemma. I think they would have me wed the first Midsummer after I return. Minsc looks even bigger in his armour than naked.~
== BSHAUHA ~(Blushes) Your customs are truly nicer than orcish ones, for a girl, I mean.~
== BMINSC~For a man as well.~
==x#setta~A blue one like the eyes of this northern girl, sir? Trust an expert, it will look just sooo beautiful on her.~
== BSHAUHA ~You mean me, lady?~
== BMINSC~It is for all loved girls at the Midsummer Festival in Rashemen to wear such a ribbon in their hair, given to them by their boy. Boo and I would be ashamed if our girl would be seen there without our colour in her hair.~
== BSHAUHA ~Your girl...(Blushes even deeper)~
==x#setta~It's just fifteen gold for you, sir, just look at those blue eyes sparkle like a glacier on the Spine of the World.~DO~TakePartyGold(15)~
== BMINSC~(You are astonished how expertly Minsc ties the ribbon to Shauhana's locks. Even more you are puzzled of how willingly the orc girl accepts Minsc's little gift.)~
== BSHAUHA ~Thank you, strong hero. (She closes her eyes and quickly kisses Minsc's cheek before she dashes away.)~
== BSandr ~(You see Shauhana remove her helmet at every possible occasion during the next days displaying the blue ribbon. You also observe by her little side glances that she makes sure Minsc sees it every time.)~
EXIT

CHAIN
IF~Global("SanShaubogon","LOCALS",2)~THEN BSHAUHA BooKidnap1
~I wonder if the mighty warrior would pursue another being apart from Boo in the same way, should he ever lose it...~
DO~SetGlobal("SanShaubogon","LOCALS",3)~
== BMINSC~There is at least one for whom Minsc would go down to the Nine Hells and kick every Demon's butt until he gets her back.~
== BSHAUHA ~Her?~
== BMINSC~This berserker will never again lose anyone he cares for - hamster or witch. I swear that, my orc girl.~
== BSHAUHA ~I wonder whom you care more about, the orc girl or the witch?~
== BMINSC~Is there a difference, my Shauhana? Not for me.~
==Pellig~(Was that whole orchestration really necessary, Boolerion?)~
==Boo ~(Probably not, but I get a bit cutty with my slow ward to get things moving ahead to the obvious.)~DO~DestroySelf()~
EXIT

CHAIN
IF~Global("SanShauMinsc","GLOBAL",22)~THEN BSHAUHA MinscHurt
~Oh, if I only could learn some healing spells like Sandrah has them to help my wounded berserker!~
DO~SetGlobal("SanShauMinsc","GLOBAL",23)RealSetGlobalTimer("SanShauMinTi","GLOBAL",1200)~
== BMINSC~(Minsc carelessly smears the blood from the small wound at his eyebrow all over his forehead.)~
== BSHAUHA ~(Shauhana dashes to him, hastily tearing out a cloth and her water bottle on the way.) Hold still, Minsc, let me take care of it with the little paraphernalia I have got to help you.~
== BMINSC~But, Shauhana, this is nothing - just a tiny scratch...~
== BSHAUHA ~Ssssh, do not resists or you will lose even more precious blood, my hero.~
== BMINSC~I will let you have it your way, dear, still I guess you overreact a bit.~
== BSHAUHA ~Better this than losing one I...I...I cannot stand to lose...~
== BMINSC~It feels much better already (Minsc tenderly takes hold of the orc girl's hand tending his forehead. He kisses her fingertips with closed eyes.) Such caring hands...~
== BSHAUHA ~Minsc...~
== BMINSC~Shauhana...~
== BSHAUHA ~(Her hands now explore Minsc's face all over while the mighty warrior stands with his eyes still closed. She offers him her fingertips one after the other to receive a kiss on each one.)~
== BMINSC~You still wear my blue ribbon all the time...~
== BSHAUHA ~I will continue to wear it until you give me something else to show everybody that I am your girl, Minsc.~
== BMINSC~(He kisses her locks where she wears his ribbon.) You will not need to wait long for such, my orc princess...~DO ~ StartCutSceneMode()  SmallWait(4) FadeToColor([20.0],0) Wait(4) FadeFromColor([20.0],0) EndCutSceneMode() ~EXIT

CHAIN
IF~Global("SanShauMinsc","GLOBAL",26)~THEN BSHAUHA MinscHurt
~(Shauhana bends over to pick up a strangely formed stick from the road that way exposing her shapely posterior to the view.)~
DO~SetGlobal("SanShauMinsc","GLOBAL",27)RealSetGlobalTimer("SanShauMinTi","GLOBAL",1200)~
== BMINSC~Not all orc's butts are for buttkickin', it seems. (Laughs and smacks Shauhana's behind playfully.)~
== BSHAUHA ~I knew you kissed the stars, you silly berserker! (She hits Minsc's forehead with the stick she has still in her hand.) I will teach you some manners! (In another second she has the warrior in a stranglehold.)~
== BMINSC~What do orcs know about manners, hahaha...(He loses his balance under Shauhana's attack and they both tumble down the slope beside the road.)~
== BSHAUHA ~(When the bundle of the entwined bodies comes to a halt in the ditch below, you see that both have started to laugh and a second later they start to exchange kisses.)~
END
++~(You lead your party onwards.) I hope those two will catch up with us before nightfall.~DO ~ StartCutSceneMode()  SmallWait(4) FadeToColor([20.0],0) Wait(4) FadeFromColor([20.0],0) EndCutSceneMode() ~EXIT

CHAIN
IF~Global("SanShauMinsc","GLOBAL",28)~THEN PELLIG PellBooShau
~Boolerion, old friend, are you looking for a place to rest?~
DO~SetGlobal("SanShauMinsc","GLOBAL",29)~
==Boo~Yes, Pelligram, it seems that Minsc' bedroll will be occupied from now on and not a very save place for me in my miniature body any more - not with those activities going on there almost the whole night.~
==Pellig~Love making between the creatures of the prime is like that, I can tell you stories...~
==Boo~With your Sandrah I can imagine that. But I am not complaining, it is what was needed for my ward and I am satisfied very much with the outcome.~
==Pellig~Now that those two have found each other, do not think your mission is complete - I guess it may just have begun.~
==Boo~I told you before I am not eager to part from my ward.~
==Sanmyst~And there is no need for that, Boolerion. Our friend Pelligram is quite right in her statement that your task has just begun.~
==Boo~Mystra!~
==Pellig~Greetings, my goddess.~
==Sanmyst~You two have done our work quite well until now and I set my confidence in you for the future. Boolerion, your wish to stay with Minsc further is granted. Take good care of him and the godchild Shauhana. Their common way will be dangerous - but together and with the help of their friends they will succeed.~
==Boo~I thank you, goddess, you have made me a very happy, ehm, hamster.~
==Sanmyst~A hamster you will stay, Boolerion, and the young couple and their offspring will be your occupation. ~
=~So much for now, my blessings on you both.~DO~EscapeArea()~
==Boo~Thank you, Mystra.~DO~DestroySelf() ~EXIT

CHAIN
IF~Global("SanShauMinsc","GLOBAL",31)~THEN BSHAUHA Minscgod
~Minsc, do you follow any of the gods of your pantheon?~
DO~SetGlobal("SanShauMinsc","GLOBAL",32)~
== BMINSC~Mh, I have never thought of such things before, honestly. I have always seen which was the evil butt that needed kicking - do you think that I was secretly guided by one of those celestials in doing so?~
==BSHAUHA~(Smiles) Maybe some furry small messenger of one of them has helped you with that.~
=~Honestly, from the description Sandrah gave us about my...father...Arvoreen...I thought that he may be your god.~
== BMINSC~I never thought much about him thinking he was some halfling only. But now that I know more about him I think he would suit me well. Maybe I should actually become a follower, my orc princess, it may help me with some future deed I must accomplish.~
==BSHAUHA~A plan? Would you tell me about it?~
== BMINSC~No, it will still be a secret. But having Arvoreen's favour will surely help me...I know not orcish habits in that respect, but in Rashemen an man must ask the father for the hand of the daughter he wants to marry.~
==BSHAUHA~The same is the habbit with the orcs - but...my father is dead...is Arvoreen...oh, Minsc...~
== BMINSC~Do you think I am not worth to ask a god for the hand of his daughter?~
==BSHAUHA~If not you, my wonderful hero, than nobody ever will proof worth. Also, I heard it say often that godchilds have their own opinion about their choices.~DO ~ StartCutSceneMode()  SmallWait(4) FadeToColor([20.0],0) Wait(4) FadeFromColor([20.0],0) EndCutSceneMode() ~EXIT

CHAIN
IF~Global("Orcbandits","LOCALS",1)~THEN BSHAUHA MinscRolfB
~Those orcs fight good and strong even if they are misled in their goals.~
DO~SetGlobal("Orcbandits","LOCALS",2)~
== BMINSC~You kick their butts and kill many, orc princess, still you have respect for those nasties?~
==BSHAUHA~They are well trained and organised, Minsc. Their leader must be strong and capable. I wonder why he has chosen to be a bandit leader so much feared?~
== BMINSC~Maybe he has not chosen but had no other way?~
==BSHAUHA~I heard he is half-orc like me - I know what it means to belong neither here nor there and be either feared or hunted by everyone. Maybe he would rather be a free man and a bandit leader than to hide and run away.~
== BMINSC~It is strange not to hate such a bad orc. I would have sentenced him for being orc any time - before I met you. You do strange things to me.~
==BSHAUHA~Things often look different if we get a chance to see them once from the other side. One advantage of being half-orc maybe is to be able to change one's perspective.~
== BMINSC~...and the attitude of those who listen to you.~
==BSHAUHA~(Sighs) In the end we face bandits here. I wished there was another solution but it looks like all we can do is what we have done all the time - to fight them.~
== BMINSC~(Sounds half-assed.) Let's kick some butts, damn it.~EXIT

CHAIN
IF ~Global("SanArenIde","RA4300",3)~THEN BSHAUHA atharena
~I was forced to fight in the orc pits for too long as not to associate the worst of feelings with this type of entertainment.~
DO~SetGlobal("SanArenIde","RA4300",4)~
==BSandr ~Your feelings are understandable, my friend, but it is surely not entertainment I seek here.~
==BSHAUHA~You do and risk a lot for a friend in need.~
==BSandr~I consider you as my friend as well.~
==BSHAUHA~Nobody has ever done for me anything except for Brage - until you and <CHARNAME> came.~EXIT