BEGIN CVSHAUJ

//Road Out of Clan's Land

IF~ Global("SanShauMeet","GLOBAL",4)~THEN BEGIN ShauDeadEnd1
SAY ~ <CHARNAME>, we are still in Clan's land here, where I know every way. I was forced to this area here by the ones that hunted me. But I know this is a bit of a dead end.~
IF~~THEN REPLY ~ We want to make it to the south and out of your land as fast as possible. I do not anticipate you will be homesick.~  GOTO ShauDeadEnd2
IF~~THEN REPLY~ A dead end. In which way, Shauhana?~  GOTO ShauDeadEnd2
END

IF~~THEN BEGIN  ShauDeadEnd2
SAY ~ Directly to the south is only the Hornswamp, a swamp without any road or path from which none has ever returned. Both ways that lead out of here will lead us at first through Clan's land again and both are very dangerous. But you are a fearless company, or you would not be here.~
IF~~THEN REPLY ~ This is your ground, so I trust your advice to your new friends in this.~ GOTO ShauDeadEnd3
END

IF~~THEN BEGIN  ShauDeadEnd3
SAY ~ The one way leads directly back to my Clan's settlements. Even for our joint forces that would be mere suicide, facing hords and hords of orc warriors, their dreaded Clan's Hounds, the priest battalions and the traps.~
IF~~THEN REPLY ~ Sounds like whatever the second option is, it must be the one to take.~  GOTO ShauDeadEnd4
IF~~THEN REPLY ~ Let us hear about the other possibility then, so we can make a decision.~ GOTO ShauDeadEnd4
END

IF~~THEN BEGIN ShauDeadEnd4
SAY ~ A bit to the north of here are two caves. One is the home of a mighty and old dragon that in your tongue would be named Velvetfoot. But it is not there I recommend to go.~
= ~ Very close by is the entry to a system of caves and tunnels. It is only known to few orc priests at all. With my old shaman teacher - way before I was enslaved - I have been there to pay the novice's respect to Velvetfoot. So I know where the entrance is, but I do not know what is behind it.~
IF~~THEN REPLY ~ But you said it would be a way out of here as well. How was that meant?~ GOTO ShauDeadEnd5
END

IF~~THEN BEGIN ShauDeadEnd5
SAY ~ Through these tunnels and caves the Clan has long ago come to the Stormhorns from the south, after the Troll invasion of the Sunset Mountains drove them to move. The tunnels pass the Hornswamp to the west, it is said. None has used them since six generations of orcs, but the lore talks of all kinds of dangers and creatures that lurk down there.~
= ~ With you by my side I would not be afraid to venture there. Stupid orcs always exaggerate the dangers they do not know. Any cave and tunnel has hords of monsters according to the tales told around campfires. I fear them not.~
IF~~THEN REPLY ~ Neither do we. If it turns out wrong, we can still change our plan and face those orc hords on the other road. But I would rather try those caves - you are right, not only orcs but also humans and half-elves see monsters in every dark hole. Maybe it is all just stories. So lead us to these caves.~
GOTO ShauDeadEnd6
END

IF~~THEN BEGIN ShauDeadEnd6
SAY ~ Here, I marked them on your map.~
IF~~THEN DO ~ SetGlobal("SanShauMeet","GLOBAL",5)
TriggerActivation("Swamp",TRUE)
AddMapNote([681.431],@295)
DisplayStringWait(Player1,@199)~EXIT
END

IF~ Global("ShauVelvft","LOCALS",1)~ THEN BEGIN Velvft1
SAY~ (Whispers) Kuleera.~ 
IF~~THEN REPLY ~ Is that orcish? What does it mean?~ GOTO Velvft2
IF~~THEN REPLY ~ Velvetfoot? Is Kuleera his orc name?~ GOTO Velvft2
IF~~THEN REPLY ~ Sounds nice. Is that your nickname for me?~ GOTO Velvft2
END

IF ~~ THEN BEGIN Velvft2
SAY ~ This is Velvetfoot's lair. If we step further we will surely meet him. He is very old and powerful - and very intelligent.~
IF~~THEN REPLY~ If he is an intelligent dragon, we maybe can make a deal with him.~ GOTO Velvft3
IF~~THEN REPLY~ Intelligent or not, it is a dreadful dragon and therefore must be defeated.~ GOTO Velvft3
END

IF ~~ THEN BEGIN Velvft3
SAY ~ You maybe can deal with him one way or another - by power or by wit. My shaman teacher could. But the conditions of such a deal may have a high risk.~
IF~~THEN REPLY~ No gain without some risk, let us see what awaits us.~ DO~ SetGlobal("ShauVelvft","LOCALS",2)~ EXIT
IF~GlobalLT("SanShauOrcStaff","GLOBAL",2) ~THEN REPLY~ Why wake a sleeping dog..eh..dragon. We will just retreat and search for the other cave you told us about.~ DO~ SetGlobal("ShauVelvft","LOCALS",2)~ EXIT
IF~GlobalGT("SanShauOrcStaff","GLOBAL",1) ~THEN REPLY~ Why wake a sleeping dog..eh..dragon. We will just retreat and continue our trail.~ DO~ SetGlobal("ShauVelvft","LOCALS",2)~ EXIT
IF~~THEN REPLY~ Such a dragon has always an enormous treasure he has gathered during his long existence - weapons, armours and scrolls not existing elsewhere. It is worth any risk.~ DO~ SetGlobal("ShauVelvft","LOCALS",2)~ EXIT
END

IF ~ Global("SanShauOrcStaff","GLOBAL",1)~ THEN BEGIN StaffGet1
SAY ~ It is not as easy as I thought to get through these caves, <CHARNAME>. The exit is guarded by a sacred orc rune, probably to close it to creatures to follow the orc trail in older times.~
IF ~~ THEN REPLY ~ Do you have any idea how it can be opened?~ GOTO StaffGet2
IF ~~ THEN REPLY ~ The option to get back the way we came has vanished as well. Shauhana, do you have anything in your knowledge that might help? ~ GOTO StaffGet2
END

IF ~~ THEN BEGIN  StaffGet2
SAY ~ There is only one thing that can remove an orc rune of this kind. That is the sacred staff of the head priest of my clan. It goes from one priest to the next with each generation and it must be the one which has sealed these caves. Only the same staff can unseal it again. I am afraid we need to return to Clan's land to get it.~
IF ~~ THEN REPLY ~ The way we came in is blocked and this one as well. There must be another exit into Clan's land. We need to find it.~ DO ~ SetGlobal("SanShauOrcStaff","GLOBAL",2) ~ EXIT
END

IF~ Global("SanShauOrcStaff","GLOBAL",3)~ THEN BEGIN  StaffGet3
SAY ~ <CHARNAME>, we are on the outskirts of my Clan's village now. Please let me advise you on behalf of our party. We should avoid to get into a real fight against the full Clan's forces, we will loose that.~
IF~TimeOfDay(DAY)~ THEN REPLY ~ You are no coward, Shauhana, so if you advise me of being careful, I trust you. But we need that staff. What do you propose? ~ GOTO StaffGet4D
IF~ !TimeOfDay(DAY)~ THEN REPLY ~ You are no coward, Shauhana, so if you advise me of being careful, I trust you. But we need that staff. What do you propose? ~ GOTO StaffGet4N
END

IF ~~ THEN BEGIN StaffGet4D
SAY ~ Even this remote part of the village will be heavily guarded in the daytime. It will be easier to wait until night. Still we will meet heavy opposition. The Shaman's hut we need to reach is in the north.~
= ~ We should stay on this side of the gorge and move north to the last of the bridges. If we move along the hillside then on the other side, we will reach the hut with minimum encounters. It will still be no easy way, but any other is suicide.~
IF ~~ THEN REPLY ~ Let us clear out the vicinity and look for a place to wait until dark.~ DO ~ SetGlobal("SanShauOrcStaff","GLOBAL",4)~EXIT
END

IF ~~ THEN BEGIN StaffGet4N
SAY ~ Even this remote part of the village will be heavily guarded in the daytime. It will be easier now at night. Still we will meet heavy opposition. The Shaman's hut we need to reach is in the north.~
= ~ We should stay on this side of the gorge and move north to the last of the bridges. If we move along the hillside then on the other side, we will reach the hut with minimum encounters. It will still be no easy way, but any other is suicide.~
IF ~~ THEN REPLY ~ Fine. Let us make haste then to get this done before the night is over and the village awakes.~ DO ~ SetGlobal("SanShauOrcStaff","GLOBAL",4)~EXIT
END

IF~Global("SanShauOrcStaff","GLOBAL",14) ~ THEN BEGIN ShauJwlhint
SAY ~ Look, <CHARNAME>, Vennegrat has the jewel that my old shaman teacher used to preserve for the Clan's sake. I think we should take it with us.~
IF ~~ THEN REPLY ~ Yes, let me search his body then, Shauhana.~ DO~  SetGlobal("SanShauOrcStaff","GLOBAL",15)~EXIT
END

// Shauhana PID 1

IF ~IsGabber(Player1) Global("ShauPid","GLOBAL",0) ~ THEN BEGIN ShauPID0
SAY ~ (As Shauhana sees you approaching, she turns her head a bit sideways and looks at you expectantly.)~
IF ~ Global("HoundTro","LOCALS",0) ~ THEN REPLY ~ I am wondering what kind of creatures your Clan Hounds really are.~ GOTO HoundTro1
IF ~~ THEN REPLY ~ You are a remarkable fighter, Shauhana.~ EXIT
END

IF~~THEN BEGIN HoundTro1
SAY ~ These hounds are bred by our Shamans. They took the strongest worgs that the clan orcs captured and they fed them with Troll flesh only. This has been done for many generations now and those hounds have gained the regeneration abilities of the trolls. Only our shamans can control them with their mind power.~
IF ~~ THEN REPLY ~ Do they attack orcs as well?~ GOTO HoundTro2
END

IF~~THEN BEGIN HoundTro2
SAY ~ Not clan orcs, but others that are not of the clan they would attack. And they would now attack me. When I became a slave, the shamans cut a piece of flesh from my arm and conditioned the hounds to it. For them I am no longer clan orc but special enemy and preferred target. This is done for all slaves to prevent any chance to escape.~
IF ~~ THEN REPLY ~ Barbaric. I am glad to help you leave all of this behind.~ DO ~ SetGlobal("HoundTro","LOCALS",1)~ EXIT
END


IF ~ IsGabber(Player1) Global("ShauPid","GLOBAL",1)~ THEN BEGIN ShauPID1
SAY~ You want to continue our talk about my past, <CHARNAME>?~
IF~ Global("Shausc","LOCALS",0) InParty("CVSandr") ~ THEN REPLY ~ Yes. I anticipate that the wound you received during the fight with your father was not taken care of by your priests? ~ GOTO Shauscheal
IF~ Global("ShauBrag","LOCALS",0)GlobalLT("Sansharkta","GLOBAL",1) ~ THEN REPLY ~ Yes. You mentioned your isolated youth, Shauhana, but also a human that you met not long ago. And you speak our language very well.~ GOTO Shaubrag1
IF ~ Global("HoundTro","LOCALS",0) ~ THEN REPLY ~ I am wondering what kind of creatures your Clan Hounds really are.~ GOTO HoundTro1
IF~ Global("ShauBrag","LOCALS",0)GlobalLT("Sansharkta","GLOBAL",1) ~ THEN REPLY ~ Yes. How did you manage to escape the pits that enslaved you for so long, Shauhana?~ GOTO Shaubrag1
IF ~~ THEN REPLY ~ Maybe another time, Shauhana.~ EXIT
END

IF ~~ THEN BEGIN Shaubrag1
SAY ~ The story of my escape, the reason I speak your language and know about the world outside the Clan's land and the reason why I am the only orc I know who can read and write all have the same reason. The human that was captured one day by the Clan. Brage.~
IF~~THEN REPLY ~ Brage of Nashkel. The captain of the guard? ~ GOTO Shaubrag2
END

IF~~THEN BEGIN Shaubrag2
SAY ~ You know him? He came from very far away. Nashkel, yes he said so even if I did not know what he meant. A mighty warrior. My people did not dare to kill him because he had kissed the stars.~
IF ~~ THEN REPLY ~ Kissed the stars?~ GOTO Shaubrag3
END

IF~~THEN BEGIN Shaubrag3
SAY ~ Those who have kissed the stars are blessed by those who have gone to the Other World. You do not kill them or the Other World will revenge them and take you from life early.~
= ~ Brage talked to those in the Other World, those he had killed and those who chased him. Only he could see or hear them. My Clan put him in the pits but dared not touch him otherwise. ~
= ~ When he was not in the stars he was my teacher. He talked to me and I learned. He showed my his signs in the book and I learned. When the stars called him he would fight me - and I learned again.~
IF~~THEN REPLY ~ We met him once, when on the Sword Coast. They tried to cure him, but he must have escaped. He must have wandered for a long time to end in your land.~ GOTO Shaubrag4
END

IF~~THEN BEGIN Shaubrag4
SAY ~ He came in search of Sharkta Fai. Either to be cured from the stars or to be taken to the Other World.~
IF~~THEN REPLY ~ Sharkta Fai? ~  GOTO Shaubrag5
END

IF~~THEN BEGIN Shaubrag5
SAY ~ Sharkta Fai is where the orcs go when they die. Sharkta Fai restores them and heals them, so they are whole when they go to the Other World. Brage's book has told him about Sharkta Fai and how to find it. He wanted to be restored there.~
IF~~THEN REPLY ~ Did he find it? Where is he now?~ GOTO Shaubrag6
END

IF~~THEN BEGIN Shaubrag6
SAY ~ He is now in the Other World of your people. On the day of my escape he was in the stars again but he did not return that time. He killed the pit priests and the overseers and most of the gladiators before they brought him down in a rainfall of arrows. There was nothing I could do for him anymore - but I took his last gift to me and escaped in the uproar he had caused.~
= ~ I went to the hut of the old orc shaman who once was my teacher before I killed my father. He gave me his bow and reminded me of the tunnels out of the Clan's land. Soon my escape was recognised and they sent the hunters after me. That is how we met then.~
IF~~THEN DO ~ SetGlobal("ShauBrag","LOCALS",1) SetGlobal("SanSharkta","GLOBAL",1)~ EXIT
END

IF~~THEN BEGIN  Shauscheal
SAY~ That was part of my punishment, I guess.~
IF~~THEN EXTERN CVSHAUJ Scarheal2
END

//  Shauhana and Minsc
IF~ Global("ShauPCRejMinsc","LOCALS",1)~ THEN BEGIN ShauReturnM1
SAY~ <CHARNAME>, I have felt it deep inside of me when we met Minsc. What my old teacher told me in his hour of death must be true. His fate and mine are connected. I must...I must return to that man and find out.~
IF~~THEN REPLY ~ What do you mean, Shauhana?~ DO~ SetGlobal("ShauPCRejMinsc","LOCALS",2)~ GOTO ShauReturnM2
END

IF~~ THEN BEGIN ShauReturnM2
SAY ~ I am grateful for all you have done for me to get me out of Clan's land. Your are forever my true friend...but...my leaving of my land and my Clan has a purpose. I must find it out, and the man Minsc is a part of it. I had hoped that we would all continue together. As you decided otherwise I cannot but leave you and return to Minsc. I will go and talk with him and tell him my story. If you want us, you may find us in the Copper Coronet. (She kisses your cheek in farewell.)~
IF~~THEN REPLY ~ I am sad you leave but I understand your reason. I will find you and Minsc there if my quest allows your return to the group.~ GOTO ShauReturnM3
END

IF~~ THEN BEGIN ShauReturnM3
SAY ~ Thank you again, <CHARNAME>. If later you no longer find us in Amn we will have moved to my old teacher's house in my village. (She smiles at you and turns to leave.)~
IF~~THEN DO ~ SetGlobal("ShauhanaJoined","GLOBAL",0) SetGlobal("ShauMeetAmn","GLOBAL",2) SetGlobal("SanShauMinsc","GLOBAL",13)LeaveParty() EscapeAreaMove("AR0406",1215,1459,11)~ EXIT
END

IF~Global("ShauRemSH","LOCALS",1) ~THEN BEGIN ShauSHReminder1
SAY~My friend <CHARNAME> the time has come that Gathlenk asked us to come to Clan's land for my task. Please stand by me and Minsc for that quest - you and all my friends I have found in your company.~
IF~~THEN REPLY ~ Thanks for reminding me, we will get on our way to the Stormhorns now.~DO~SetGlobal("ShauRemSH","LOCALS",2)~EXIT
IF~~THEN REPLY ~ I have not forgotten it, we will start our journey as soon as our current task will allow it.~DO~SetGlobal("ShauRemSH","LOCALS",2)~ EXIT
IF~~THEN REPLY ~ Shauhana, you are aware of our current task - you help me with it and I will gladly accompany you to the Stormhorns when we have the opportunity.~DO~SetGlobal("ShauRemSH","LOCALS",2)~EXIT
END

IF~Global("ShauSkin","LOCALS",1)~THEN BEGIN Skinner1
SAY~ Skinning another person and using the skin as it if were an animal's hide - that is what I call barbaric. No Clan Orc would do such a deed!~
IF~~THEN REPLY~ Until we met and I got to know you and your orcish pride I would have thought of something like that as very orcish. I learned to see things differently through your influence.~DO~SetGlobal("ShauSkin","LOCALS",2)~ GOTO Skinner2
END

IF~~THEN BEGIN Skinner2
SAY~ Is that how you *civilized* races anticipate us orcs? I am afraid the answer will be yes.~
IF~~THEN REPLY~Is it so wrong? You are different, so much is true - but then you are extraordinary among your kin, and even exiled by your own tribe.~GOTO Skinner3
END

IF~~THEN BEGIN Skinner3
SAY~ It is a strange thing, but orcs think the same way about <PRO_RACE>s. And the ones that showed me the error of this were also outcast among their people, the hunted Brage and the Bhaalspawn. Beeing a bit apart from the mainstream lets you see things from a different perspective it seems.~
IF~~THEN REPLY~You are probably the firts orcish philosopher the Realms have known, Shauhana.~EXIT
IF~~THEN REPLY~People like you or me may be the hope for races to understand each other better.~EXIT
IF~~THEN REPLY~If we were not like that, I would probably never have taken on orc into my party - and you would never have followed a <PRO_RACE>.~EXIT
END



//_______________________________CHAINS_____________

//Shauhana's Scar
CHAIN
IF ~Global("SanShauMeet","GLOBAL",6) ~THEN  CVSHAUJ ShauScar1
~ (You have observed that Shauhana always keeps on your right side when walking, so the right side of her face has not been visible to you until now. In addition her helmet hides much of her beautiful face anyway.)~
= ~ (As you come across a part of the cave where the ground is covered with a kind of slimy moss, her foot loses its grip for a second and she tumbles against you.)~
= ~ Hoops, sorry, <CHARNAME>, watch out, this stuff is slippery.~
= ~ (While she regains her balance you get a glimpse of the right side of her face. The shock almost makes you loose your balance as well.)~
= ~(A long nasty scar runs down from her hairline across her cheek and down to her chin. It is obvious that the wound is old and had been neglegted for a long time without a chance for real healing while among the orcs as a slave.)~
DO ~ SetGlobal("SanShauMeet","GLOBAL",7)~
== BSANDR~ (Whispers) So you have seen it at last. The poor girl must have suffered hard from that injury. And now she suffers even more pain from the stares she receives.~
END
++ ~ I did not intend to stare. It just caught me totally unaware. She is so beautiful otherwise, so non-orcish.~ + ShauScar2

CHAIN
IF ~~ THEN CVSHAUJ ShauScar2
~ (Shauhana has observed your look and smiles invitingly at you - with the good side of her face.)~
END
++ ~ Thank you for the warning with that moss, Shauhana, what an end for an adventurer to break his neck on slime instead of losing his life in a glorious fight, hahaha.~ + ShauScar3
++ ~ This scar must be a real curse for you, Shauhana, it has never been really taken care of, it seems. Sandrah is our skilled healer, you should ask her to take a look at it when we rest.~ + ShauScar3

CHAIN
IF ~~ THEN CVSHAUJ ShauScar3
~ I do not blame you to be shocked, <CHARNAME>. Every human is, or so I am told by the only one I have ever met.~
== BSANDR ~ The only one? Of course, you must have learned our language somehow.~
== CVSHAUJ ~ It seems there is a lot I need to tell you at that next rest. The scar, my orcish heritage, the human who taught me the language and other things, my escape and flight from my own Clan.~
== BSANDR ~ Your orcish heritage? You already mentioned they are your people. But we have often heard of human babies that have been taken by the orcs and raised among them.~
== CVSHAUJ ~ (Laughs harsh) Yes, those poor creatures. I have seen some of them. They never live long with us. No, I am not one of those. I am of orcish blood. None of these babies would survive the orc arena pits when thrown in there at the age of twelve winters.~
END
++ ~ There is obviously a lot to tell, once we made it out of these caves. Let us move on.~ EXIT
++ ~ I am glad you are with us now, Shauhana. Your life must have been hell until now. Let us make haste to get away from Clan's land as soon as possible.~ EXIT


CHAIN
IF~~ THEN CVSHAUJ Scarheal2
~ The priests overseeing the gladiator slaves only cared to heal you for the next fight. As my eye was not damaged, they never cared about the ugly scar that would remain. In my duties as a pleasure girl, I was made to wear a veil. The orc males wanted by body, not my face.~
DO ~ SetGlobal("Shausc","LOCALS",1) ~
== BSANDR ~ Will you allow me to take a look at it, Shauhana. I am a healer of some ability.~
== CVSHAUJ ~ Yes, Sandrah, look at it, feel it, inspect it. But I have no hope. It has been like this for so long. (Still her eyes show some expectation to Sandrah's skills.)~
== BSANDR ~ (It takes a long time for Sandrah to carefully and gently inspect the half orc girl's face.)~
== CVSHAUJ ~ Your look answers all my questions, Sandrah. But thank you for the good intention anyway.~
== BSANDR ~ This injury had been done when you were so much younger, Shauhana. Not only it has healed badly and opened many times in the neglection - it is also that you have grown into a woman since then. The bones and flesh of your face have grown with you and with the imbedded destruction.~
= ~ (She takes out some bottles and flasks from her backpack.) Sit down here in the light. It will not hurt what I do.~
== CVSHAUJ ~ I am orc, I fear no pain. But tell me, what are you doing?~
== BSANDR ~ I cannot heal you with what means I have out here. But maybe I can make you feel a little bit better, my friend.~
== CVSHAUJ ~ Don't worry, it stopped hurting long time ago.~
== BSANDR ~ Yes, but only the flesh. I will try to do something to you soul. Something to make you feel more the person you are.~
= ~(Sandrah skillfully applies some creamy substances and other mysterious cosmetica to Shauhana's face. After a while she steps back to take a look at her work and then goes back for some finishing touches.)~
= ~ (Finally she takes a small hand-mirror from her pack and gives it to Shauhana.)~
== CVSHAUJ ~ Is that...Oh...Oh, Sandrah...(She bursts into tears.)~
== BSANDR ~ My, Shauhana, no tears, please, you wash it all away again. Hey, stop, stop.~
== CVSHAUJ ~ That was my human part, I guess. Orcs don't cry. Could I have really been so beautiful - in another life?~
== BSANDR ~ I promise you one thing, Shauhana. You will be like that one day. Trust me. I will find a way. It will not be today or tomorrow, but it will be. Until then, please allow me to use my little Waterdeep methods on you.~
== CVSHAUJ ~ Always. (She inspects herself for a long time in the mirror afterwards.)~ EXIT

EXTEND_BOTTOM TRGyp02 2
IF~ !InPartySlot(LastTalkedToBy,0) Name("CVShau",LastTalkedToBy) ~THEN GOTO GypShauFortn
END

CHAIN
IF~~THEN TRGyp02 GypShauFortn
~Impressive...your heritage is indeed very special and it is the source of your future.~
==CVShauJ~ Another of those prophesies then (sigh), will I ever find out what it all means?~
==TRGyp02~Nothing to be afraid of, right? Orcs are strong, one like you is even stronger and...you are among friends who will make you succeed, have faith in yourself.~
==TRGyp02 IF~ InParty("Minsc")~THEN~(Her eyes wander to where Minsc is standing nearby) Hold on to those you have found and trust your heart.~
==CVShauJ~I will. What else can I do anyway?~ DO ~ActionOverride(Player1,SetDialogue("Player1"))~EXIT
