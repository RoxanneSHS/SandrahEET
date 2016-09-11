BEGIN CVGHATLE

IF ~ Global("NoShau","LOCALS",0) Global("ENDOFBG1","GLOBAL",2) !InParty("CVShau") ~ THEN BEGIN ShauHint1
SAY ~ Godchild, do you know where to find your kin?~
IF~~THEN REPLY ~ A blind orc shaman? And still you see who I am. Speak, if you have something to say to me.~ GOTO ShauHint2
IF~~THEN REPLY ~ Do not get me angry, orc. I killed hundreds of your nasty kin.~ GOTO NoShauHint
END

IF~~THEN BEGIN  NoShauHint
SAY ~ That is true, but they were not of the Clans. One may be waiting for you whom you cannot kill and want not kill. The one you may not even search may be in the Stormhorns, way in the north...~
IF~~THEN REPLY ~ What do you know about the one I search...(It is useless. The blind orc stands in front of you as if he had frozen to a statue.) ~ DO ~ SetGlobal("NoShau","LOCALS",0) RevealAreaOnMap("ar3520") AddJournalEntry(@349,QUEST)~ EXIT
END

IF~~THEN BEGIN  ShauHint2
SAY ~ You look for another godchild and you may find one waiting for you in the Stormhorns, way in the north...~
IF~ GlobalLT("KnowStorm","GLOBAL",1)~THEN REPLY ~ What do you know about the one I search? You are not talking about Imoen, old man? ...(It is useless. The blind orc stands in front of you as if he had frozen to a statue.) ~ DO ~ SetGlobal("NoShau","LOCALS",1) RevealAreaOnMap("ar3520") AddJournalEntry(@349,QUEST) SetGlobal("KnowStorm","GLOBAL",1)~ EXIT
IF~ GlobalGT("KnowStorm","GLOBAL",0)~THEN REPLY ~ What do you know about the one I search? You are not talking about Imoen, old man? ...(It is useless. The blind orc stands in front of you as if he had frozen to a statue.) ~ DO ~ SetGlobal("NoShau","LOCALS",1) RevealAreaOnMap("ar3520") AddJournalEntry(@349,QUEST) ~ EXIT
END

CHAIN
IF~ Global("SanBG1ShauPrev","GLOBAL",4) !Global("ENDOFBG1","GLOBAL",2) ~ THEN CVGHATLE ShauBG1Prev
~ Is it really true, Wallrick, we have found a godchild? Tell me what you see.~
DO~ SetGlobal("SanBG1ShauPrev","GLOBAL",5)~
== CVORWARL ~ Maybe not the one we came for, master, <PRO_HESHE> is a <PRO_RACE>, and none of the party with <PRO_HIMHER> is Clan Orc.~
== CVGHATLE ~ We have been misled then! Now that the godchild is nearer I can feel it, too. The presence of an evil dead god indeed - but not that of Myrkul.~
== CVORWARL ~ Other gods have their spawns wander our plane as well, master?~
== CVGHATLE ~ The dead three - Myrkul, Bane and Bhaal - have seeded before their termination with mortal women of all races. We have found one here. It is perhaps of Bhaal. But we do not care, it is not the one we seek. We seek none of the evil spawns, boy, we seek hope for our kin.~
== CVORWARL ~ This was the last of the ones the Guardian has located on the Sword Coast. None of them was the girl we search.~
== CVGHATLE ~ Do not loose your hope, Wallrick. The prophesies cannot not be wrong. We will continue our search in Amn.~
EXIT



CHAIN
IF ~ Global("ENDOFBG1","GLOBAL",2) Global("SeeShau","LOCALS",0) InParty("CVShau") ~ THEN CVGHATLE ShauFo1
~ You have found each other, godchilds.~
DO ~ SetGlobal("SeeShau","LOCALS",1)~
==BSHAUHA~ A blind orc shaman? You must be a holy man if my kin has let you live to such an old age. Do you know who I am?~
== CVGHATLE ~ The grandchild of Myrkul's son walks with the spawn of the God of Murder and the realms will tremble. But it will not be destruction that the pairing will bring.~
==BSHAUHA~  The God of Murder? You cannot be talking of <CHARNAME>, old man, <PRO_HESHE> is certainly not of such origin.~
END
++ ~ It is true, Shauhana, I am a Bhaalspawn. And it was you yourself who said that the children of the gods are strong at will and often do not follow their parents, just like Ghotal did not follow Myrkul.~+ ShauFo2

CHAIN
IF~~ THEN CVGHATLE ShauFo2
~ The young <PRO_RACE> speaks wise, orc girl. You yourself may or may not be following the one that has spawned you. We can only hope for the best. Use your powers but use them well. You have found the example by your side. Heed the words of Ghatlenk.~
==BSHAUHA~ Tell me then who has spawned me. I am not my father's child and somehow that makes me happy. But who am I then?~
== CVGHATLE ~ Ask your companion, <PRO_HESHE> will tell you that you have to find that out by yourself. Find your way and find your answers, more I cannot reveal to you today.~
==BSHAUHA~ You cannot leave me like that, Ghatlenk, I have a right to know who I really am!~
== CVGHATLE ~ You have the right to find out by yourself, Shauhana. The seers and prophets can make out only schemes and shadows. Too often their visions mislead them or are misunderstood. Only you can see the true plan when your time has come.~
END
++ ~ Somehow Ghatlenk is right, considering my own way to find out about my heritage. I grew up with Aloundo's prophesies about the God of Murder's return. And I found out that they were true, but not in the way that most of the mortals who had heard them understood it. I think we cannot learn anything more from Ghatlenk today.~ DO~AddJournalEntry(@468,QUEST)SetGlobal("Shaucity","GLOBAL",3)~
EXIT

CHAIN
IF~Global("shauorcboy","GLOBAL",5) !InParty("CVShau") ~ THEN CVGHATLE ShauMissfq
~ Find Shauhana, young <PRO_RACE> . ~
== CVorwarl~ The fate of the Clan Orcs will be decided by the godchild's actions, <CHARNAME>. And for you - well, the fate of that mighty nation in the north will impact your society as well.~
END
++~ I will come back to you with Shauhana.~
EXIT

CHAIN
IF~Global("shauorcboy","GLOBAL",5) InParty("CVShau") ~ THEN CVGHATLE ShauOrcWar1
~ Shauhana, godchild, you have come with the young <PRO_RACE> again. That is good. There is a mighty task waiting for both of you together.~
DO~ SetGlobal("shauorcboy","GLOBAL",6)SetGlobalTimer("ShauToClan","GLOBAL",TEN_DAYS)~
== CVorwarl~ The fate of the Clan Orcs will be decided by the godchild's actions, <CHARNAME>. And for you - well, the fate of that mighty nation in the north will impact your society as well.~
==BSHAUHA~ My life is guided by prophesies of all kind. So many mysterious creatures know about me and my fate - so many, but not me.~
== CVorwarl~ (Turns to the blind seer) Father, do you not think she deserves to know a bit more about herself and what we have been revealed about her task?~
==BSANDR~ Your son is right, Ghatlenk, you ask for Shauhana's assistance in important matters. Do not try to withhold information that may be crucial to her and to the companions that might be needed to assist her.~
== CVGHATLE ~ Sandrah of Waterdeep, your name rings through the Realms already loudly. Yes, she shall know as she will need a counselor like you by her side as well as the power of the Bhaalspawn that is with you.~
== CVorwarl~ Shauhana, you already know how your grandfather Ghotal lost his final battle...~
==BSHAUHA~ ...by orcish betrayal! Not defeated by his enemies but by his kin!~
== CVorwarl~ Your anger is understandable, but it was more than the selfish orcs that led to his downfall. As you know your grandfather was Myrkul's own son, with a task to unite the clan orcs and to establish a balance again in the Realms where the southern cities and folk where expanding more and more into clan's lands.~
==BSANDR~ It was a council decision of the Gods themselve to establish balance in the Realms between the great nations of Faerun?~
== CVGHATLE ~ You know much and understand well, Sandrah of Waterdeep, yes it was, with Myrkul chosen to lead the operation.~
==BSANDR~ I see. But then the Time of Troubles started, gods were fighting among themselves for more power...the Dead Three were slain, one of them being Myrkul.~
== CVorwarl~ (Looks at his father again) She is indeed clever and knowing. She understands a lot of our history.~
== CVGHATLE ~ So Myrkul was no more when the final hour for his son's battle had come. The traitors from his own ranks did their part to make the already doomed operation a failure.~
== CVorwarl~ Shauhana, your grandfather was a strong fighter and a strong personality even without the support of his father. He may have succeeded against the open opponents, but not against the hidden foe.~
==BSHAUHA~ And now it is up to me to finish what he was tasked to do?~
== CVGHATLE ~ In some way, yes.~
=~ With the Time of Troubles ended, new gods were established and took their reign. Once again they cast their gaze over the Realms and found that the situation for the orcs had even worsened meanwhile. In their next council the Gods decided that the operation had to be done again. One of them was to spawn a child again to the mortals. But this time not just a single one of them was to supervise the task but to make sure there are two this time.~
==BSANDR~ That explains it! Oh, Mystra, how blind can one be while having all the pieces of knowledge at hand...~
==BSHAUHA~ Sandrah? You mean your own goddess is involved in this?~
==BSANDR~ Yes. She and the other one who is your father.~
==BSHAUHA~ And who is the other one?~
== CVGHATLE ~ You and your friends come to Clan land. We will tell you what we know up there. This town is not the place to reveal more at the moment. Meet us at the crossway to Sharkta Fai after a tenday when you are ready to pick up your quest.~
== CVorwarl IF~!InParty("Minsc")~ THEN~ Find the warrior and his animal companion that was prophesised to you, Shauhana, and bring him with you.~
== CVorwarl IF~InParty("Minsc")~ THEN~ Make sure you bring your mighty warrior friend and his animal companion with you, Shauhana.~
EXIT

CHAIN
IF~Global("ShauOrcWar","GLOBAL",7)~THEN CVGHATLE ShauOrcWarBr
~ I know our queen now by her steps, son, lighter than other orcs but without any hesitation.~
DO~SetGlobal("ShauOrcWar","GLOBAL",8)~
== CVorwarl~It is her and her friends in deed, father.~
==BSHAUHA~ Your queen? Is such a title necessary for one who simply will strive to prevent the destruction of her people from the inside as well as from the outside.~
== CVGHATLE ~A task, godchild, that requires a leader with strength and authority - respected by all the Clans she will rule and lead to the new age in the North.~
==BSHAUHA~ Great expectations, let us take the first step of that rocky road before we celebrate anything.~
== CVorwarl~(Nods) Right, we will tell you now about the crisis we face.~
== CVGHATLE ~Vennegrat's dark undead minions have attacked our village - your village - two nights ago. We were able to fight them back at the Old Mill but our weakness in tactics and discipline was obvious to all with a soldier's eye.~
== BMinsc~ Clan Orcs make magnificent berserkers but they need leadership to persist in long hard battles. ~
== CVorwarl~No one could have epressed it better, Minsc, and you are one who can teach them just that. ~
==BSHAUHA~ Where is Vennegrat now? I am sure he will not be defeated yet?~
== CVGHATLE ~You are right. We assume that attack was just a test for his new troups of undead. He has retreated to the west, to the haunted Icebear Clan's village. We have sent our best scouts to the old graveyard road so he cannot advance to our land unnoticed.~
==BSHAUHA~ So I see several tasks before us, Ghatlenk, and I count on yours and Wallrick's advice in that.~
== CVorwarl~Yes, my queen.~
==BSHAUHA~ We must organise and train our fighters, (she looks at Minsc and Wallrick). The next attack will probably not be just a test anymore. And we must fortify the village.~
=~ Additionally we need reconnaissance about our foe, especially where that supply of undead is coming from and how it can be stopped. (She nods in Sandrah's direction.) You seem to have some ideas, my friend.~
==BSandr~ It sounds like we need to split our forces for a while, <CHARNAME>. While Shauhana, Minsc and Wallrick prepare the orcs and the village for the next assault, we do what a small group can do best - espionage.~
== CVGHATLE ~We have not erred, my son. With these new friends and with Shauhana there rises new hope for Ghotal's vision. Know, <CHARNAME>, once the war of orc against orc is ended, a strong leader may want to negotiate terms for orc and your kin in the south to live in peace.~
== CVorwarl~I have a useful bit of information for you, <CHARNAME>. Before you and the remainder of your group go west from here to search for Vennegrat's lair you may go a bit east into the mountains to find an old acquaintance - blown in by the wind.~
END
++~What? Perhaps a gnome in a flying ship?~ + ShauOrcWarBr2
++~Nib - Nib Jansen - Ah, but without him an his invention we all would not be standing here right now, I guess...~ + ShauOrcWarBr2

CHAIN
IF~~THEN CVGHATLE ShauOrcWarBr2
~He brought us here safely from Amn and he swears he has fixed those *initial quirks which accompany new developments* as he stated.~
== CVorwarl~He swears he can bring you to and from Athkatla in no time now, for free and safely.~
==CVSandrJ~It may be good to see him and let us fetch some old friends from Amn to fill up our ranks before facing the enemy, <CHARNAME>.~
==BSHAUHA~ I thank you once again from all my heart, friends. Minsc and me will now go to the village. We will hopefully reconvene there in a couple of days when you finished your task.~ DO~ TakePartyItem("SHAMYRK") LeaveParty() ~
==BMinsc~There will be my very own Berserker Guild of the Stormhorns by then, you will see.~ DO~ LeaveParty()~EXIT

CHAIN
IF ~Global("SanHintFactory","GLOBAL",11)~ THEN CVGHATLE ShauShaTabu1
~Your way leads you to Sharkta Fai again?~
DO~ SetGlobal("SanHintFactory","GLOBAL",12)~
==CVSandrJ~ Yours as well, it seems.~
==CVGHATLE ~Vennegrat's assault on the village has taken its toll among our fighters. A sad duty to be performed.~
==CVSandrJ~Ghatlenk, with what we have discovered it is not a good idea to bring the fallen up there...(She reports the recent events to the orc priest.)~
==CVGHATLE ~What a blasphemy! Our own dead are used against us. Godchild, you must end that soon - your counselor is right, after the orcs the beast will turn onto your people and cities.~
END
++~You must return and prevent the Clans to bring their fallen to Sharkta Fai. Only by this we can cut your enemy's supplies.~+ ShauShaTabu2

CHAIN
IF~~THEN CVGHATLE ShauShaTabu2
~I can assure that for the ones from our village. I will hurry to the other Clans and try to keep them from stupid actions. Know, godchild, that there are still some among the other Clans who reject Shauhana for her *half-orc* heritage. There is occasional fighting among the clans for that.~
==CVSandrJ~You must try to convince them, you and your son. Only in union the Clan Orcs can face a foe as powerful as Szass Tam.~
==CVGHATLE ~And only one as powerful and fearless as you and the godchild <CHARNAME> would dare to face him directly in his lair. The hope of the Clans and her queen is with you.~
DO~EscapeArea()~EXIT



