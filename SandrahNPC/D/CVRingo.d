BEGIN CVRingo

CHAIN
IF~NumTimesTalkedTo(0) !AreaCheck("CVElm1")~THEN CVRingo WDret1
~Sandrah! What a splendid surprise to see you at your temple, my child.~
== BSANDR~Ringhontal, dear, it is nice to be here once more and see you all again.~
== CVRingo ~As far as we hear out here, you are faring well in your missions of Mystra on the Sword Coast. And, let your old tutor add this, you have become a really wonderful young woman.~
== BSANDR~(Blushes slightly) I never knew you could be so charming, Ringhontal. Let me introduce you to <CHARNAME> then, if you heard of my deeds you have surely heard about <PRO_HIMHER> as well.~
END
IF~GlobalLT("KatDef","GLOBAL",2) !Dead("Kattah") ~THEN REPLY~It is a pleasure to be welcome here so warm, Ringhontal.~+ WDretkhatliv
IF~GlobalLT("KatDef","GLOBAL",2) Dead("Kattah") ~THEN REPLY~It is a pleasure to be welcome here so warm, Ringhontal.~+ WDretkhatdedH
IF~GlobalGT("KatDef","GLOBAL",1)~THEN REPLY~It is a pleasure to be welcome here so warm, Ringhontal.~+ WDretkhatdedS

CHAIN
IF ~~THEN CVRingo  WDretkhatliv
~Since you are here now with your heroic reputation you may want to help the city with a small problem.~
== BSANDR~You are referring most likely to the Bandit Khattark. We had an encounter with him already before we even reached town.~
== CVRingo ~He and his gang are a real threat and as it seems a foe too big for our local militia. With no armed forces at our disposal at the moment any help from your side would be welcome.~
== BSANDR~We had to save the life of Lady Hillath's little boy when we met him. <CHARNAME> wisely decided the boy's life to be more valuable than to defend the villain at that moment. But we feel we have an obligation to track him down now.~
END
++ ~Is there any information about his hiding place? We had the impression that he uses the anonymity of the big city to hide right here.~DO ~AddexperienceParty(500)~+ WDretKhatfind


CHAIN
IF ~~THEN CVRingo  WDretkhatdedS
~Since you are here now with your heroic reputation you may want to help the city with a small problem.~
== BSANDR~You are referring most likely to the Bandit Khattark. We had an encounter with him already before we even reached town.~
== CVRingo ~He and his gang are a real threat and as it seems a foe too big for our local militia. With no armed forces at our disposal at the moment any help from your side would be welcome.~
== BSANDR~We had to save the life of Lady Hillath's little boy when we first met him. <CHARNAME> wisely decided the boy's life to be more valuable than to defend the villain at that moment. But we felt we had an obligation to track him down and we found him an his gang hiding in the sewers right next to the garrison.~
==CVRingo ~That villain really has a nerve! Right before our very noses!~
END
++ ~You need to worry no more, Ringhontal, he and his cronies will hurt no one evermore.~DO ~AddexperienceParty(9000)~ + WDret2
++ ~It was a bloody and heroic battle down there, but it is US who emerged victorious from it. Waterdeep is saved.~DO ~AddexperienceParty(200)~+ WDret2

CHAIN
IF ~~THEN CVRingo  WDretkhatdedH
~Since you are here now with your heroic reputation you may want to help the city with a small problem.~
== BSANDR~You are referring most likely to the Bandit Khattark. We had an encounter with him already before we even reached town.~
== CVRingo ~He and his gang are a real threat and as it seems a foe too big for our local militia. With no armed forces at our disposal at the moment any help from your side would be welcome.~
END
++~We met him alone in a hut outside of town where he held Lady Hillath's baby at ransom. We had to act quickly and we killed him.~+ WDret3

CHAIN
IF ~~THEN CVRingo WDret2
~That is good to hear. Your reputation is not exaggerated then, <CHARNAME>.~
= ~Sandrah, if you find the time during your stay here in town, it would be highly appreciated if you could assist us with your healer skills. Come to me when your time allows for that. Goodbye, my friends, for now.~DO ~SetGlobal("SanWDTemplWi","GLOBAL",3)SetGlobal("SanWDTempleHint","GLOBAL",3)~EXIT

CHAIN
IF ~~THEN CVRingo WDret3
~That is a bit of a relief to hear. Even if the rest of the gang will be still about, they have lost their mastermind and will now be easier to defeat by our men. It would have been better to find them together in their lair, but this is still good news, <CHARNAME>.~
END
++ ~Is there any information about his former hiding place? We had the impression that the gang uses the anonymity of the big city to hide right here.~DO ~AddexperienceParty(500)~+ WDretKhatfind2

CHAIN
IF ~~THEN CVRingo  WDretKhatfind
~There are some rumours that this fiend really resides inside the town limits using the city's anonymity. Reports say he has been seen in Waterdeep at dusk but disappears as if vanishing in the ground.~
== BSANDR~Or rather, the underground...~
== CVRingo ~Oh, Sandrah, as always, my clever disciple, why have we not thought of that ourselves. Girl, you see how much we need your viewpoint of looking at problems sometimes...~
== BSANDR~Would the sewers below the city not make a good place for such a man. He can appear and disappear at will and a supply of victims is always within reach for him.~
==CVRingo ~Sandrah, if you find the time later during your stay here in town, it would be highly appreciated if you could assist us with your healer skills. Come to me when your time allows for that. Goodbye, my friends, for now.~
END
++~You have our word, Ringhontal, we will have a lookout for Khattark.~EXIT

CHAIN
IF ~~THEN CVRingo  WDretKhatfind2
~There are some rumours that this fiend really resided inside the town limits using the city's anonymity. Reports say he has been seen in Waterdeep at dusk but disappears as if vanishing in the ground.~
== BSANDR~Or rather, the underground...~
== CVRingo ~Oh, Sandrah, as always, my clever disciple, why have we not thought of that ourselves. Girl, you see how much we need your viewpoint of looking at problems sometimes...~
== BSANDR~Would the sewers below the city not make a good place for such a man. He can appear and disappear at will and a supply of victims is always within reach for him.~
==CVRingo ~Sandrah, if you find the time later during your stay here in town, it would be highly appreciated if you could assist us with your healer skills. Come to me when your time allows for that. Goodbye, my friends, for now.~
END
++~You have our word, Ringhontal, we will have a lookout for Khattark's remaining gang.~EXIT

CHAIN
IF~NumTimesTalkedToGT(0) GlobalGT("KatDef","GLOBAL",1) GlobalLT("SanWDTemplWi","GLOBAL",3)~THEN CVRingo WDret11
~Sandrah, I hope you return with good news, beautiful child?~
== BSANDR~We have found and eliminated the bandit gang, Ringhontal, the citizens may sleep savely tonight.~
== CVRingo ~That is good to hear. Your reputation is not exaggerated then, <CHARNAME>.~DO ~AddexperienceParty(2000)~
== BSANDR IF~Global("SanWDTempleHint","GLOBAL",2)~THEN~The Chosen Priestess Rhathona has mentioned another issue that I may help you with.~
== CVRingo ~Sandrah, if you find the time during your stay here in town, it would be highly appreciated if you could assist us with your healer skills. Come to me when your time allows for that. Goodbye, my friends, for now.~DO~SetGlobal("SanWDTempleHint","GLOBAL",3) SetGlobal("SanWDTemplWi","GLOBAL",3) ~EXIT

CHAIN
IF~NumTimesTalkedToGT(0) GlobalLT("KatDef","GLOBAL",2) ~THEN CVRingo WDret12
~Sandrah, I hope you return with good news, beautiful child?~
END
++~We are still looking to find the villain Khattark. See you later.~EXIT

CHAIN
IF~Global("SanWDTemplWi","GLOBAL",3)Global("SanWDTempleHint","GLOBAL",3)~THEN CVRingo WDTempHeal
~Sandrah, are you willing to assist us with a problem case that requires healing skills and blessings from the goddess that only one like you possesses?~
== BSANDR~Oh, my friend, do you really have to ask for that? My skills are granted to me for such service and are at your disposal without doubt.~
== CVRingo ~Sure, dear Sandrah, it was not my intention to insult you with expressing doubt to your dedication. However, the case at hand according to our analysis is one of those that require the healer to directly communicate with the Weave...~
END
++~What does that mean? It sounds like a dangerous thing.~+ WDTempHeal2

CHAIN
IF ~~THEN CVRingo WDTempHeal2
~Yes, the healer performing the ritual will indeed be required to sacrifice a part of herself to repay to the balance of the Weave. And maybe here even more is required. That is why we are in need  of Sandrah here.~
== BSANDR~My dearest teacher, enough of the preliminaries. I am blessed by Mystra to aid in cases like the one you describe and there is no discussion necessary at all...~
== CVRingo ~Oh, child, I tend to forget how direct and forceful you act. So well. This girl child Leyala over there on the altar has been brought to us a couple of days ago. The disease it suffers from is beyond any of our skills, it seems her whole blood has been tainted by a dark illness. We only barely keep her alive but unconscious by the force field of the altar itself.~
== BSANDR~(Sandrah has already moved to Mystra's Altar during Ringhontal's speech and carefully inspects the girl's body.)~
=~...~
== CVRingo ~Do you see what we think we see?~
== BSANDR~Yes, you were right with your assumption. Her blood is contaminated.~
== CVRingo ~Can you do anything for her?~
== BSANDR~*WE* can do something for her. It would require the help of my comrades as she is of <PRO_RACE> blood like <CHARNAME> and we also need some other blood to complement the transfer.~
== CVRingo ~What do you intend to do?~
== BSANDR~I will need some of <CHARNAME>'s blood and I will need to connect to the Weave for some while for the transfusion which will weaken me significantly.~
== CVRingo ~But both of you will recover, right?~
== BSANDR~If all goes well, yes. One more thing, <CHARNAME>, we will need to analyse the blood of our comrades to find some matching one. I can only take a small bit of yours as I do not intend to hurt you more than absolutely necessary.~
END
++ ~This is madness! I will not sacrifice mine or any of my comrade's blood and life force for an unknown girl. If the gods want her life we are not to interfere!~DO~SetGlobal("SanWDTemplWi","GLOBAL",4)~EXIT
++ ~Sandrah, I trust you as much as Ringhontal does. We will help you in any way we can. Do what must be done.~DO ~SetGlobal("SanWDTemplWi","GLOBAL",5)~+ WDTempHeal3

CHAIN
IF ~~THEN CVRingo WDTempHeal3
~Mystra's blessing on all of you.~
=~Sandrah, you will find the girl's body on the altar and Mystra's sacred knife on the table nearby. Pick up both and begin the healing ritual.~
== BSANDR~I have never loved you more than at this moment, <CHARNAME>. As you stand by me in this hour of my ordeal I will stand by your side forever. Let me take the body and the knife now.~ EXIT

CHAIN
IF~Global("SanWDTemplWi","GLOBAL",9)~THEN CVRingo WDTempHealDone
~Dearest Sandrah, I am so glad to see you and <CHARNAME> well again. You have both taken quite a risk to help poor Leyala.~
DO~SetGlobal("SanWDTemplWi","GLOBAL",10)~
== BSANDR~Mystra's powers are in deed immense. I am content that the goddess has protected her servant this time. So how is the little girl, Ringhontal?~
== CVRingo ~Your sacrifice has completely restored her. She has returned to her happy grandmother, her parents having been killed recently by the bandit Khattark. I have anticipated your decision, my lady, and provided the grandmother with a feasible sum from the Temple's resorts. The poor family has suffered hard recently.~DO~TakePartyGold(2000)~
== BSANDR~Splendid, good Ringhontal. Is that all we can do this time at Waterdeep?~
== CVRingo ~Yes, that is all this time. And let me say, brave girl, it was not little that you accomplished during this brief stay. Our goddess smiles upon you and blesses you. I am entitled to give you this item from Mystra's own travelling days to aid you in the times ahead of you, my child.~
== BSANDR~One of Midnights's own items. I will wear it proudly, Ringhontal. Farewell, my friend.~DO~AddSpecialAbility("cvdrag2") AddSpecialAbility("sanhand") GiveItemCreate("cvmybelt","CVSandr",0,0,0) AddSpecialAbility("sanhand") AddSpecialAbility("spin101")~
EXIT

CHAIN
IF~Global("SanKhalBlood","GLOBAL",4)~THEN CVRingo BookWrite
~Dearest Sandrah, I am so glad to see you and <CHARNAME>. Your visit serves a purpose, my girl, I can sense it from your tension.~
DO~SetGlobal("SanKhalBlood","GLOBAL",5) ~
== BSANDR~You are right, dear friend, you could always read me like an open book.~
== CVRingo ~It is simple as you never closed your pages to my eyes. So?~
== BSANDR~We are already at the topic - books. Or rather one particular book - the one which writes itself.~
== CVRingo ~(His eyes widen.) The goddess herself has talked to you, she must have, as she has sealed our lips by her oath on it - until now, that is.~
== BSANDR~Honestly, she did not mention the book itself, rather she hinted at the fact that all the reigns of the incarnations of Mystra are not eternal but a succession chosen from the bloodline of the very first of them all. Through the book I hope to learn about those bloodlines.~
== CVRingo ~The Seeker has found the trail and follows the scent. It is early but you have grown faster than anyone could have expected.~
== BSANDR~Will you be able to help me, Ringhontal? Have you ever seen that book?~
== CVRingo ~I know my record is in it as is yours and any other who serves the goddess. No, I had never a reason to search for it. Even if I did it would not help you as it is said it appears in a different place for every seeker.~
== BSANDR~(Sigh) I heard the same. But maybe there is a hint of where the trail may lead?~
== CVRingo ~Keepers of knowledge have been at all times. The knowledge you seek goes to the beginning of time since when the lines of the Gods have been recorded in the book.~
== BSANDR~Hmm, such a book cannot be mere parchment, it would not endure. It must be in a sacred place as old as the gods themselves, older even than Oghma who was not from the beginning.~
== CVRingo ~The Seeker has found the trail and follows the scent. The place you may find the book must be one that can be deducted by lore. You will succeed.~
== BSANDR~Farewell, my friend.~
EXIT

CHAIN
IF~Global("SanVampWDQuest","GLOBAL",8)~THEN CVRingo StartVampQ1
~Sandrah, my girl, I thank you for coming so quickly with your friends. We know well that it is not easy for you all in your current situation to take on this extra task. However we have no other option at this time as you will see in a minute.~
DO~SetGlobal("SanVampWDQuest","GLOBAL",9)~
== BSANDR~Ringhontal, the temple allows me extremely great freedom in my actions, but still I am a disciple of our Goddess and I serve this temple. If you call me there must be such need.~
== CVRingo ~This is what has happened.~
=~A few days ago, fishermen sighted a ship adrift not far from our harbour. There was no sign of a crew but also no sign of average or battle on the ship. When the harbour master brought it on anchor it was found to be our own merchant ship *Harare* that was expected home already one month ago from Port Nyranzaru.~
= ~Further investigations showed no trace of what had happened on board, everything was intact with the only exception that there was no trace of the crew. The only living things on board were masses of rats, but even an attack of those on the crew could be excluded.~
=~The ship was left well outside the harbour at anchor and the harbour master ordered a quarantine on that area. Starting from the following night we have received a couple of alarming reports from up and down the coast. People swear they have seen nightly creatures roaming - and we found the body of a curious fisherman who must have gone near that ship in the dark disregarding the strict orders to keep away. The body was bloodless.~
== BSANDR~Vampires?~
== CVRingo ~We think so, and pretty mighty ones as it seems. However, neither our searching of the ship again nor our divination has revealed any trace of vampires or any other creature on that ship. There is no hiding place or sarcophagus where any such creature could spend the hours of daylight.~
== BSANDR~You were right to call us, Ringhontal, and I am glad you have not traced the creatures, whoever they are. Do not forget they have eliminated a whole crew of able seamen without the trace of a fight. You would have been in great danger if they had confronted you.~
== CVRingo ~You are right, Sandrah. We are not completely helpless with our magic and the weapons of the militia but we do not possess your or <CHARNAME>'s skills with such quests.~
END
++~I suggest to get to that ship as soon as possible and end the spook.~+ StartVampQ2
++~Looks like the only way we can learn more is by paying that strange ship a visit.~+ StartVampQ2

CHAIN 
IF~~THEN CVRingo StartVampQ2
~The harbour master will get you on board of the vessel. He will await you at the docks near the *coq*. Good luck. I am content you can shed some light into that matter, <CHARNAME>.~EXIT

CHAIN
IF~Global("SanVampWDQuest","GLOBAL",24)~THEN CVRingo StartVampQ3
~A victorious return, Guardian of the Cloak, I can see it by the expression on your face already.~
DO~SetGlobal("SanVampWDQuest","GLOBAL",25)~
== BSANDR~You read me well, my friend. (Sandrah and you report of your investigation and the destruction of the portal.)~
== CVRingo ~And even ol' Reagan is back again. I just pity the poor crew of the Harare and the families they left behind.~
== BSANDR~Take this donation from my own purse, Ringhontal, and make sure they will receive the support of our Temple in any way.~
== CVRingo ~Well done, my girl. If you care to see a bit of a spectacle, <CHARNAME>, come to the harbour when you are ready. The destruction of the the ship and the portal by Mystra's powers will be a symbol for the people of Waterdeep that the threat on the town is over.~DO~AddexperienceParty(5500)~EXIT

CHAIN
IF~GlobalGT("SanWDTemplWi","GLOBAL",9) ~THEN CVRingo WDTempHealDoneF
~Dearest Sandrah, I am so glad to see you and <CHARNAME>. There is nothing you can do in the service of the Temple at this time.~
== BSANDR~Farewell, my friend.~
EXIT