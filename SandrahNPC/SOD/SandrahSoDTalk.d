CHAIN
IF WEIGHT #-2~Global("SanSodPamp","BD0130",1)~THEN CVSandrJ Sanpamp1
~Those pamphlets all speak of a big crusade against something in the north. It seems to be as important as the so-called war against Amn was just days ago.~
DO~SetGlobal("SanSodPamp","BD0130",2)~
=~Once we are finished down here, we may investigate what is going on.~
END
++~We are not mercenairies who hire out for any odd job.~ + Sanpamp2
++~You seem to be utterly restless, my dear.~+ Sanpamp2

CHAIN
IF~~THEN CVSandrJ Sanpamp2
~I am not seeking just another adventure. I am just pretty sure that important tasks are rarely accomplishes by mercenairies.~
==CVSandrJ IF~Global("SanRomPath","Global",1)~THEN~ Sooner or later they will find the need to seek aid from competent side - like the new *hero* of Baldur's Gate.~
==CVSandrJ IF~Global("SanRomPath","Global",2)~THEN~ Sooner or later they will find the need to seek aid from competent side - like the new *heroine* of Baldur's Gate.~
END
IF~Global("SanRomPath","Global",1)~THEN REPLY~(Laugh) And said hero's companion and counselor, I presume.~EXIT
IF~Global("SanRomPath","Global",2)~THEN REPLY~(Laugh) And said heroine's companion and counselor, I presume.~EXIT

CHAIN
IF WEIGHT #-2~Global("Sansusp","bd0102",1)~THEN CVSandrJ Sanpamp3
~Excuse my behaviour, <CHARNAME>, but I did not want to add to the tension in town with my initial suspicion.~
DO~SetGlobal("Sansusp","bd0102",2)~
=~The words of the dukes have confirmed that the targets of this Shining Lady were Imoen and - you.~
END
++~I am convinced that is no coincidence.~ + Sanpamp4
++~Her activities were up north until my presence here in town became widely known after we defeated Sarevok.~+ Sanpamp4

CHAIN
IF~~THEN CVSandrJ Sanpamp4
~A little while ago I warned you that by now you would become the target of people with a certain interest in your heritage.~
END
++~You mean she attacked here because I am a bhaalspawn.~ + Sanpamp5
++~Mine and Imoen's heritage play a role here, you mean.~ + Sanpamp5
++~It was good that you did not bring that topic into the discussion with the dukes.~+ Sanpamp5

CHAIN
IF~~THEN CVSandrJ Sanpamp5
~It may as well be some hint to her own origins, but it is far too early to tell yet.~
END
++~Another bhaalspawn?...~EXIT
++~(Remain silent.)~EXIT
++~Even better that you kept THAT from the dukes.~DO~IncrementGlobal("Sanpoints","Global",1)~EXIT

CHAIN
IF WEIGHT #-2~Global("SanSodQuest","Global",1)~THEN CVSandrJ SodImoMiss1
~(Sigh) I am at the same time happy and sad that Imoen is not with us this time.~
DO~SetGlobal("SanSodQuest","Global",2)~
END
++~*Sad* I understand, given she's your *bestest* friend, but *happy*?~+ SodImoMiss2
++~I think I understand well, somehow I feel the same.~+ SodImoMiss2

CHAIN
IF~~THEN CVSandrJ SodImoMiss2
~We received more and more hints that the Shining Lady may be a bhaalspawn herself, like the both of you. We may find ourselves fighting at two fronts in the end.~
END
++~You're saying that the dukes may need me but don't trust me?~+ SodImoMiss3
++~If anything goes wrong in our fight against her crusade, the *good* people may turn against us, saying we're traitors and the common blood was thicker.~ + SodImoMiss3

CHAIN
IF~~THEN CVSandrJ SodImoMiss3
~You read my mind, love.~
=~I feel a bit lighter having to look only after one of you this time. (She smiles again but you can see that she is still concerned.)~EXIT

CHAIN
IF WEIGHT #-2~Global("SanSodQuest","Global",3)~THEN CVSandrJ SodDreams1
~You have this worried look after a sleep, <CHARNAME>, your healer knows it just to well.~
DO~SetGlobal("SanSodQuest","Global",4)~
END
++~Ah, it's nothing new, dreams like I had them before.~ + SodDreams2
++~I will not even attempt to hide it, you know me too well - it's dreams again.~ + SodDreams2
++~Oh, just shut up!~DO~IncrementGlobal("Sanpoints","Global",-1)~ + SodDreams2

CHAIN
IF~~THEN CVSandrJ SodDreams2
~Tell me what the dream was about. Just share it with me.~
END
++~Sarevok, he told me that it's not over, that it will never be over.~ + SodDreams3
++~Sarevok but he was telling me what you told me before, that it's not over and it will probably never be.~ + SodDreams4

CHAIN
IF~~THEN CVSandrJ SodDreams3
~Like many times before, Sarevok was not exactly right. It is not over yet and it will not end soon - but there will be an end as Bhaal will never return.~
END
++~You just sound like the Hooded Man now...~+ SodDreams5

CHAIN
IF~~THEN CVSandrJ SodDreams4
~That is not exactly what I told you. It is not over yet and it will not end soon - but there will be an end as Bhaal will never return.~
END
++~You just sound like the Hooded Man now...~+ SodDreams5

CHAIN
IF~~THEN CVSandrJ SodDreams5
~The Hooded Man was in your dream as well? Interesting...It is hard to believe that Sarevok gave you that dream - the Hooded One however is alive...~
=~...and he knows about your heritage...~
=~...and that heritage is what interests him. Or better, what you make out of that heritage. He observes you and he stimulates you.~
=~There are many bhaalspawns but he is focussing on you, or better said, you and Imoen. He wants to see how you develop, what your potential is.~
END
++~Stop it - you start to sound like him already!~+ SodDreams6

CHAIN
IF~~THEN CVSandrJ SodDreams6
~Good if I do - to protect you and Imoen from him, we must start to THINK like him. If we find out what he wants, we may prevent it.~EXIT

CHAIN
IF~ Global("SanPilRidl","BD1200",1)~THEN CVSandrJ Pillrid1
~"Sometimes it is wise to think backwards."~
DO~SetGlobal("SanPilRidl","BD1200",2)~
=~It is a quote from that Tome of Ancient Knowledge that we found in the library earlier on this level.~
END
++~(Ironic) Very helpful, thank you.~DO~ IncrementGlobal("Sanpoints","Global",-1)~EXIT
++~You see a connection to this pillar riddle here?~ DO~ IncrementGlobal("Sanpoints","Global",1)~ + Pillrid2

CHAIN
IF~~THEN CVSandrJ Pillrid2
~These carvings on the pillars describe the progress of seasons - the first leaf in spring, the sun of summer, a cracked leaf in autumn, a snowflake...~
END
++~...and now we activate them in reverse order, good idea.~EXIT
++~...and now we think backwards, I see.~EXIT

CHAIN
IF WEIGHT #-2~Global("SanSodQuest","Global",5)~THEN CVSandrJ SodHeph1
~*Sandrah studies the annotated crusader tract you found on a dead woman.*~
DO~SetGlobal("SanSodQuest","Global",6)~
END
++~What do you make out of that?~ + SodHeph2
++~You see something that I have missed?~ + SodHeph2

CHAIN
IF~~THEN CVSandrJ  SodHeph2
~Just like the mighty bhaalspawn from Baldur's Gate is not alone, this is true for the Shining Lady as well. We should not ignore those close to her.~
END
++~The Hooded Man?~ + SodHeph3
++~That mage who seemed to be her advisor?~ + SodHeph3
++~Whom do you talk of?~ + SodHeph3

CHAIN
IF~~THEN CVSandrJ  SodHeph3
~The only one we have seen until now to have some influence on her seems to be this Hephernaan who is also mentioned here in the pamphlet.~
=~If what is written here is true, he has triggered a large part of the events we see unravel. And he may have his own agenda...~
END
++~I will try to remember the name.~EXIT
++~I count on MY advisor to keep her eyes open for more facts about the guy.~DO~IncrementGlobal("Sanpoints","Global",1)~ EXIT
++~We neither know enough about any of our opponents yet, it seems.~EXIT

CHAIN
IF WEIGHT #-2~Global("SanSoDBook","LOCALS",1)~THEN CVSandrJ Portal1
~We should take some time to dig into history a bit. The answers we seek today are often found in the past, this has been helpful in our quest against Sarevok already.~
DO~SetGlobal("SanSoDBook","LOCALS",2)~
=~Drangonspear Castle is a place with a long history and our opponent has chosen it for what has happened there long ago.~
END
++~Not a bad idea - you would not issue it if you had not something more specific in mind already. Right?~ + Portal2
++~I saw you study that book we found, did it tell you something worthwhile sharing with us?~ + Portal2
++~Your tome? It has something to tell that appears to be useful for us today?~ + Portal2

CHAIN
IF ~~THEN CVSandrJ Portal2
~The castle was infiltrated more than once from creatures out of Avernus. There is a portal connecting the planes and although it is dormant, it can be reactivated again. Just like the Shining Lady would be required to do for her crusade against the Abyss.~
END
++~We must prevent that. Once opened, creatures can use it in both directions, Avernus will infiltrate Toril.~ + Portal3

CHAIN
IF ~~THEN CVSandrJ Portal3
~It has happened like this before, so much is history. What I was aiming at was the method required to activate the portal again. This may be why she is so much interested in you.~
END
++~I have this key, you mean?~ + Portal4

CHAIN
IF ~~THEN CVSandrJ Portal4
~The key is tainted blood.~
END
++~Blood from a bhaalspawn.~EXIT
++~If she needs my blood then she cannot be a spawn herself.~EXIT
++~Like mine, like Imoen's - but she cannot use her own...~EXIT

CHAIN
IF WEIGHT #-2~Global("SanBhaal","bd2000",2)~THEN CVSandrJ BhalBri1
~(You catch Sandrah's thoughtful glance at Bhaal's death site on the bridge.)~
DO~SetGlobal("SanBhaal","bd2000",3)~
==CVSandrJ IF~Global("SanRomPath","Global",1)~THEN~Here we are, Cyric's granddaughter and a son of Bhaal...~
==CVSandrJ IF~Global("SanRomPath","Global",2)~THEN~Here we are, Cyric's granddaughter and a daughter of Bhaal...~
END
++~Here it all begun - or ended.~ + BhalBri2
++~Here it all begun - or ended. And we are holding each other's hand where they battled for life and death.~DO~IncrementGlobal("Sanpoints","Global",1)~+ BhalBri2

CHAIN
IF ~~THEN CVSandrJ BhalBri2
~Only - it did neither begin here nor did anything end. We know that just too well. It has not ended and it is part of our common path.~
=~We have come a long way already and together we were strong enough to be here today.~
END
++~And together we will master what remains to be done. (You kiss her.)~+ BhalBri4
++~Your presence gives me strength even now as I see how much awaits me still. (You tell her of your vision and the hooded man's visit.)~+ BhalBri3

CHAIN
IF ~~THEN CVSandrJ BhalBri3
~(She nods) After all, it is just another bridge we cross. We do what must be done.~EXIT

CHAIN
IF ~~THEN CVSandrJ BhalBri4
~(She responds passionately to your kiss.)~
=~ After all, it is just another bridge we cross. We do what must be done.~EXIT

CHAIN
IF WEIGHT #-2~Global("SanBDdream2","LOCALS",1) ~THEN CVSandrJ BDdream2a
~Another meaningful dream, my love?~
DO~SetGlobal("SanBDdream2","LOCALS",2)~
END
++~How can it be meaningful if the meaning escapes me?~ + BDdream2b
++~You read me more and more like an open book, is that good or bad?~  + BDdream2b

CHAIN
IF ~~THEN CVSandrJ BDdream2b
~If you share your vision with me, we may find it out together.~
END
++~Not this time, I'm too tired to talk.~DO ~IncrementGlobal("Sanpoints","Global",-1)~ EXIT
++~What do you make out of this...(You tell her the dream.)~ + BDdream2c

CHAIN
IF ~~THEN CVSandrJ BDdream2c
~Someone is out there observing you, even beyond this current quest. Someone waiting for your success, someone interested in your potential.~
=~You have gained his interest by your success over Sarevok. Now he wants to know how large your power really is growing.~
END
++~But why?~+ BDdream2d

CHAIN
IF ~~THEN CVSandrJ BDdream2d
~That someone, that hooded man, has interest in a bhaalspawn. He wants to make sure he gets hold on a strong and potent one. There can be many reasons - good or evil - for such interest, but from the way he acts, I would say we better beware of him.~
END
++~It's either avoid him or face him...sooner or later. I am not one to run away, you know that well.~EXIT
++~He has to lift that hood at one time or I will remove it. Sooner or later he needs to come close enough. I will face him - we fill face him.~EXIT

CHAIN
IF WEIGHT #-2~Global("SanBdInfiltrate","Global",1)~THEN CVSandrJ BDInfil2
~(Sandrah shakes her head and mumbles to herself) He did not want you there...~
DO~SetGlobal("SanBdInfiltrate","Global",2)~
END
++ ~You somehow convinced me it would be right to go with Caelar.~ + BDInfil3
++ ~You really want us to step right into the dragon's mouth, right.~ + BDInfil3

CHAIN
IF~~THEN CVSandrJ BDInfil3
~It would have been the safest place you could be in the storm that is now coming. No stray arrow or misfired spell would have had a chance to hit you, she would have prevented it.~
=~But HE spoiled it.~
END
++~Your *friend* de Lancie?~ + BDInfil4
++~The dwarven tin head?~ + BDInfil4
++~Whom are you accusing?~ + BDInfil4

CHAIN
IF~~THEN CVSandrJ BDInfil4
~I am talking of her advisor, this Hephernaan. He does not want you and her to meet.~
=~I mean, we already assume he has his own plans and he manipulates her. He needs your blood but he does not need you, especially he has no need for her and you to come too close to each other.~
END
++~Means, that is what we need to achieve, now even more than before. Hope we get another chance to do it.~EXIT
++~An interesting analysis, only there is nothing we can do at this moment to spoil his plan.~EXIT
++~Mnh, I had the impression that our side did nor want to let me go.~EXIT

CHAIN
IF WEIGHT #-2~Global("SanSodQuest","Global",7)~THEN CVSandrJ BDFin1
~We have seen awfully little from Hephernaan recently. Is he preparing his trap for you - and for her?~
DO~ SetGlobal("SanSodQuest","Global",8)~
END
++~He is after my bhaalblood and so is she, what may be his hidden agenda you wish so much to believe in?~+ BDFin2
++~Both of them want me to open that damned portal, I fail to see the difference.~ + BDFin2

CHAIN
IF~~THEN CVSandrJ BDFin2
~I have been a bad counselor, just once again. I should have seen it earlier.~
END
++~Seen what? ~ + BDFin3
++~Spit it out before it consumes you!~ + BDFin3

CHAIN
IF~~THEN CVSandrJ BDFin3
~We know Hephernaan serves some other dark master...a portal works in two directions...she wants to go down to bring destruction to Avernus - he wants the opposite.~
END
++~Eh? You mean he wants to open the door for those dark forces to come once again to the Prime?~+ BDFin4
++~You may be right, anyhow, our action is the same in both cases - we must prevent it.~ + BDFin4

CHAIN
IF~~THEN CVSandrJ BDFin4
~Exactly.~EXIT

CHAIN
IF WEIGHT #-2~Global("SanSodQuest","Global",9)~THEN CVSandrJ BDJail1
~My besta friend Imoen - there are still friends you can always count on.~
DO~ SetGlobal("SanSodQuest","Global",10)~
END
++~Yes, there are. Imoen - and you.~DO~IncrementGlobal("Sanpoints","Global",1)~ EXIT
++~I never doubted her loyalty, my *sister* will always be there for me.~EXIT
++~I never doubted her loyalty, hers and yours.~ DO~IncrementGlobal("Sanpoints","Global",1)~ EXIT


//______________________________________________________________________

ADD_TRANS_TRIGGER BDLiia 0
~!InParty("CVSandr")~

EXTEND_BOTTOM BDLiia 0
IF~InParty("CVSandr")~THEN REPLY~Duke Jannath, what is all this about?~ DO~SetGlobal("bd_001_plot","bd0103",9) TriggerActivation("TranBD0100a",TRUE) TriggerActivation("TranBD0100b",TRUE) TriggerActivation("imoeninfo1",TRUE) AddMapNoteColor([505.225],64543,GREEN) AddMapNoteColor([1275.760],64543,GREEN)~GOTO 1
END

I_C_T BDLiia 1 BDImoenSanHurt
==CVSandrJ IF~InParty("CVSandr")~THEN~*Sandrah has already knelt down inspecting Imoen's body. Her face shows a desperate expression due to the condition of her *bestest* friend.*~
==BDLiia IF~InParty("CVSandr")~THEN~You are a healer of some renown, I am aware, but those are not easy cases.~
==CVSandrJ IF~InParty("CVSandr")~THEN~Poisoned weapons as far as I can say.~ END

EXTEND_BOTTOM BDeltan 4
IF~InParty("CVSandr")~THEN REPLY~ That would be a question for my learned counselor, Sandrah of Waterdeep, right?~EXTERN CVSandrJ BDeltantalk
END

CHAIN
IF~~THEN CVSandrJ BDeltantalk
~Not to be impolite, but it is an issue better discussed in privacy with <CHARNAME>.~
==BDEltan~Mylady, are you withholding important information in this case?~
==CVSandrJ~Be assured that I do no such thing, Duke Eltan, the slight suspicion I have would not help us currently and rather confuse some people. It would not concern your city but only <CHARNAME> anyway.~
==BDEltan~I trust Elminster's daughter to make the right choices here. So where were we?~EXTERN BDEltan 1

ADD_TRANS_ACTION BDMadele BEGIN 7 END BEGIN 0 END ~ SetGlobal("SanMadele","Global",1)~

I_C_T BDKhalid 36 SanSodHarpHere
==CVSandrJ IF~InParty("CVSandr") CheckStatLT(Player1,15,INT)CheckStatLT(Player1,14,WIS) !Class(Player1,BARD_ALL)~THEN~Khalid, I know that you and Jaheira are Harpers. Do you really expect me to believe you are here by coincidence?~
==BDKhalid IF~InParty("CVSandr") CheckStatLT(Player1,15,INT)CheckStatLT(Player1,14,WIS) !Class(Player1,BARD_ALL)~THEN~I, uh, I d-don't know what you mean. We were just looking for a p-picnic spot... Sandrah?!! The good counselor of <CHARNAME>! (As always with Sandrah, you observe that Khalid's stuttering ceases immediately.)~
==BDKhalid IF~InParty("CVSandr") CheckStatLT(Player1,15,INT)CheckStatLT(Player1,14,WIS) !Class(Player1,BARD_ALL)~THEN~Blast, I can't lie to you. The Harpers had word that the crusade might be heading this way. They sent us here to intercept the crusade and delay them until the Flaming Fist arrived.~
==CVSandrJ IF~InParty("CVSandr") CheckStatLT(Player1,15,INT)CheckStatLT(Player1,14,WIS) !Class(Player1,BARD_ALL)~THEN~Khalid, the Harpers have trusted a valid man. You will be a good commander in these troubled times.~
==BDKhalid IF~InParty("CVSandr") CheckStatLT(Player1,15,INT)CheckStatLT(Player1,14,WIS) !Class(Player1,BARD_ALL)~THEN~This means much to me from your lips, thank you, Sandrah.~
END

EXTEND_BOTTOM BDDOsia 6
IF~InParty("CVSandr")Global("SanHelpIlm","bd3000",0)~THEN REPLY~ That would be a task for my experienced healer, Sandrah of Waterdeep.~EXTERN CVSandrJ Ilmheal1
END

CHAIN
IF~~THEN CVSandrJ Ilmheal1
~I will do my best. Do not worry Dosia.~
DO~SetGlobal("SanHelpIlm","bd3000",1) ClearAllActions() wait(1) StartCutSceneMode() StartCutScene("SanIlmH1") ~EXIT

CHAIN
IF~Global("SanHelpIlm","bd3000",2)~THEN CVSandrJ Ilmheal2
~I have taken a look at your patients. The afflicted are running high fevers and becoming sicker when they are in close proximity to one another. Give them herbal salves to reduce their fever and move them farther apart.~
=~However, this is just an intermediate help. We need to find a permanent cure. I believe the blackthorn tree might have the qualities needed to concoct a cure. We will seek one in the woods.~
==BDDOsia~It's a plan, a glimpse of hope. Please hurry. I fear we haven't much time left. ~DO~SetGlobal("bd_sdd302_uncommon_cold","global",2) SetGlobal("bd_sdd302_blackthorn","global",1) SetGlobal("SanHelpIlm","bd3000",3) AddJournalEntry(@968,QUEST) ~EXIT

I_C_T BDNuber 2 SanNubSod
==CVSandrJ IF~InParty("CVSandr") Global("BD_Skie_Plot","Global",1)~THEN~We are looking for a girl who is almost babbling as much as you do. Have you seen her?~
==BDNuber IF~InParty("CVSandr") Global("BD_Skie_Plot","Global",1)~THEN~ We have a common goal, oh heroes, I'm looking for such a girl myself.~END

I_C_T BDCaelar 39 SanBdInfiltrate
==CVSandrJ IF~InParty("CVSandr")~THEN~(She speaks loud enough for your allies to hear but not as loud as for the enemies to catch her words.)~
= ~<CHARNAME>, I propose to agree to go with her...~
==BDDelanc ~I'm glad we are in agreement, Lady Sandrah, your father would be proud of you.~
==CVSandrJ IF~InParty("CVSandr")~THEN~Shut up, de Lancie! We are not in agreement and my father would not even care to notice one like you.~
=~<CHARNAME>, this whole action of the Crusade, of Caelar, had but one goal - to have you, respectively your blood, here today. We now have the chance to find out why and we have the chance to infiltrate the enemy right from the inside. Grab this chance, rely on our forces, you and your comrads - we need no army to win.~
==BDDelanc IF~InParty("CVSandr")~THEN~Your arrogance shall be your downfall but my men and me will stay alive.~
END

I_C_T BDImoen 93 SanBDImoReunite
==BDImoen IF~InParty("CVSandr")~THEN~At least you got my besta friend to take some care of ya. Oh, Sandrah, soooo good to see you again - and the big ol' pussycat.~
==Pellig IF~InMyArea("Pellig")~THEN~Purr.~
==CVSandrJ IF~InParty("CVSandr")~THEN~We have a lot of tales to tell, but now is not the time. You know better than we do, how bad things are.~
==BDImoen IF~InParty("CVSandr")~THEN~Even you couldn't keep <CHARNAME> outa trouble forever, tssst. Any idea what's really up, Miss Clever?~
==CVSandrJ IF~InParty("CVSandr")~THEN~Just the usual sequence of events. We defeated one foe and up jumps the next one - a mysterious hooded man who framed the murder of Skie on <CHARNAME>. We have to be cautious, I assume he wants us out of the shelter of Baldur's Gate to have better access on us for whatever his intentions are.~END