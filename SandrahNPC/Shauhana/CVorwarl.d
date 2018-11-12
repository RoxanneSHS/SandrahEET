BEGIN CVorwarl

CHAIN
IF ~Global("shauorcboy","GLOBAL",1)~THEN CVorwarl CVorwarl1
~Excuse me, <PRO_LADYLORD>, I was sent to find the Godchild Shauhana.~
DO~SetGlobal("shauorcboy","GLOBAL",2)~
== BSHAUHA ~Again I am called godchild? Who would send a poor little orc boy to find me in a large hostile city like this?~
== CVorwarl~Lady, I AM ORC, even if I am still small, I have no fear in this city.~
== BSHAUHA ~(Laughs) Right, my boy, you are orc. So who sends you?~
== CVorwarl~The blind seer in the slum district. You know him? He has urgent need to talk to Shauhana. It is in the interest of all Clan Orcs, please.~
== BSHAUHA ~The Clan Orcs, little one, have expelled me and they hunt me like a criminal. Do you want to trick me into a trap with that?~
== CVorwarl~Is the mighty granddaughter of Ghotal afraid of a little boy and a blind old man? We do not have an army hidden as would be required to catch one like you, Shauhana. We really humbly request you just to listen to us.~
== BSHAUHA ~(Laughs again) My boy, you are truly orc. ~
END
++ ~Shauhana, you are orc as you always stated it. You have our support if you decide to listen to the blind seer. ~EXIT
++ ~Boy, you have heard Shauhana, the Clan Orcs are her enemies and as such they are our enemies. Their wickedness is emphasised by the fact that they send a child to trick us into some kind of trap.~
EXIT

CHAIN
IF ~Global("shauorcboy","GLOBAL",3)~THEN CVorwarl CVorwarl2
~Shauhana, I am not representing the ones that hunt you. Those traitors who already have betrayed your grandfather and are the real source of the current problems we like to present to you.~
DO~SetGlobal("shauorcboy","GLOBAL",4)~
== BSHAUHA ~Who are you really, and do you have a name *boy*?~
== CVorwarl~I am Wallrick.~
== BSHAUHA ~I am delighted to meet you, Wallrick.~
=~<CHARNAME>, this heroic orc warlord was my grandfather's adjutant and the one to stay true to him and his vision until the end. I excuse for all the rudeness I have shown to you before, Wallrick, and I beg <CHARNAME> to listen to your appeal.~
== CVorwarl~I suggest to go to the seer as he will brief us all to the case and to Shauhana's involvement in it.~
== BSHAUHA ~So my orc blood calls me back to the Clans I have just left behind me?~
== CVorwarl~This is probably your fate, godchild.~
END
++ ~We will come to meet the seer immediately.~EXIT
++ ~We will come soon to see you and the seer then.~EXIT
++ ~Please leave us now, Wallrick, I will consult with Shauhana and my friends to come to a decision. You must understand that Shauhana is a bit reluctant to follow the call of her kin after the treatment she has received.~EXTERN BSHAUHA ShauWallCall1

CHAIN
IF~Global("shauorcboy","GLOBAL",5) !InParty("CVShau") ~THEN CVorwarl ShauMissfq
~The fate of the Clan Orc will be decided by the godchild's actions, <CHARNAME>. And for you - well, the fate of that mighty nation in the north will impact your society as well.~
== CVGHATLE~Find Shauhana, young <PRO_RACE> . ~
END
++~I will come back to you with Shauhana.~
EXIT

CHAIN
IF~Global("shauorcboy","GLOBAL",5) InParty("CVShau") ~THEN CVorwarl ShauOrcWar1
~Father, it is the <PRO_RACE>'s party.~
DO~SetGlobal("shauorcboy","GLOBAL",6) SetGlobalTimer("ShauToClan","GLOBAL",TEN_DAYS)~
== CVGHATLE~Shauhana, godchild, you have come with the young <PRO_RACE> again. That is good. There is a mighty task waiting for both of you together.~
== CVorwarl~The fate of the Clan Orcs will be decided by the godchild's actions, <CHARNAME>. And for you - well, the fate of that mighty nation in the north will impact your society as well.~
==BSHAUHA~My life is guided by prophesies of all kind. So many mysterious creatures know about me and my fate - so many, but not me.~
== CVorwarl~(Turns to the blind seer) Father, do you not think she deserves to know a bit more about herself and what we have been revealed about her task?~
==BSANDR~Your son is right, Ghatlenk, you ask for Shauhana's assistance in important matters. Do not try to withhold information that may be crucial to her and to the companions that might be needed to assist her.~
== CVGHATLE ~Sandrah of Waterdeep, your name rings through the Realms already loudly. Yes, she shall know as she will need a counsellor like you by her side as well as the power of the Bhaalspawn that is with you.~
== CVorwarl~Shauhana, you already know how your grandfather Ghotal lost his final battle...~
==BSHAUHA~...by orcish betrayal! Not defeated by his enemies but by his kin!~
== CVorwarl~Your anger is understandable, but it was more than the selfish orcs that led to his downfall. As you know your grandfather was Myrkul's own son, with a task to unite the clan orcs and to establish a balance again in the Realms where the southern cities and folk where expanding more and more into clan's lands.~
==BSANDR~It was a council decision of the Gods themselves to establish balance in the Realms between the great nations of Faerun?~
== CVGHATLE ~You know much and understand well, Sandrah of Waterdeep, yes it was, with Myrkul chosen to lead the operation.~
==BSANDR~I see. But then the Time of Troubles started, gods were fighting among themselves for more power...the Dead Three were slain, one of them being Myrkul.~
== CVorwarl~(Looks at his father again) She is indeed clever and knowing. She understands a lot of our history.~
== CVGHATLE ~So Myrkul was no more when the final hour for his son's battle had come. The traitors from his own ranks did their part to make the already doomed operation a failure.~
== CVorwarl~Shauhana, your grandfather was a strong fighter and a strong personality even without the support of his father. He may have succeeded against the open opponents, but not against the hidden foe.~
==BSHAUHA~And now it is up to me to finish what he was tasked to do?~
== CVGHATLE ~In some way, yes.~
=~With the Time of Troubles ended, new gods were established and took their reign. Once again they cast their gaze over the Realms and found that the situation for the orcs had even worsened meanwhile. In their next council the Gods decided that the operation had to be done again. One of them was to spawn a child again to the mortals. But this time not just a single one of them was to supervise the task but to make sure there are two this time.~
==BSANDR~That explains it! Oh, Mystra, how blind can one be while having all the pieces of knowledge at hand...~
==BSHAUHA~Sandrah? You mean your own goddess is involved in this?~
==BSANDR~Yes. She and the other one who is your father.~
==BSHAUHA~And who is the other one?~
== CVGHATLE ~You and your friends come to Clan land. We will tell you what we know up there. This town is not the place to reveal more at the moment. Meet us at the crossways to Sharkta Fai after a tenday when you are ready to pick up your quest.~
== CVorwarl IF~!InParty("Minsc")~THEN~Find the warrior and his animal companion that was prophesied to you, Shauhana, and bring him with you.~
== CVorwarl IF~InParty("Minsc")~THEN~Make sure you bring your mighty warrior friend and his animal companion with you, Shauhana.~
EXIT

CHAIN
IF ~Global("ShauOrcWar","GLOBAL",1)~THEN CVorwarl ShauOrcWar2
~She has come, father.~
DO~SetGlobal("ShauOrcWar","GLOBAL",2)~
== CVGHATLE ~Your land, Shauhana, Clan's land, your home and your destiny. You are orc.~
==BSHAUHA~That is what I thought. But am I orc any more, I do not know?~
== CVGHATLE ~Your heart knows better, godchild. You are orc and that is why you have come today.~
==BSHAUHA~Even if my thinking is orc, Ghatlenk, my blood maybe is not. My mother was a half-orc only and my father...you know better than me who we are talking about here.~
==BSANDR~Probably it is a valid time to solve this mystery so we can concentrate on the mission that lies ahead with all the knowledge at hand.~
== CVorwarl~Sane advice, counsellor. It is good you are by her side with your knowledge, as the name may come as a shock to her.~
== CVGHATLE ~(Silence)~
== CVGHATLE ~Arvoreen.~
==BSHAUHA~WHAT? A halfling's god! Is there anything less orcish on Toril than that!~
==BSANDR~(Sandrah lays her arm around her friend.) You follow a general error about the god of warriors, Shauhana. Arvoreen is a noble and vigilant god adopted by many of the halflings. but he is neither a halfling's god nor is he himself a halfling.~
==BSHAUHA~Tell me, Sandrah. I trust your knowledge.~
==BSANDR~Arvoreen's origin, just like Mystra's, is human but even in his mortal form he was a righteous fighter who knew enemies not because of race but only for their evil alignment. He is also known as The Defender because he defends all that is right and good and destroys those who are evil. ~
==BMinsc IF~InParty("Minsc")~THEN~Ha, I like that guy - kicking evil's butt just like we do.~
==BSANDR ~When Ao raised Arvoreen to the pantheon, his mortal origins were soon forgotten and many races of Toril devoted to him. Yes, many halflings worship him and his virtues, and over time he became one of their race when they imagine him.
The humans soon forgot that warriors shall always fight for a just and right course and so they separated into followers of Tempus when it comes to the fighting virtues and followers of Helm when it comes to righteousness and law. 
The orcs, of course, believe that any fight that gains something for orcs is by definition a righteous fight and he became Ilneval in their pantheon.~
== CVGHATLE ~However the question of Arvoreen's race is not important in spawning Shauhana. The god never lay with your mother, my child, but he made your orcish father the instrument for spawning you. Other than Bhaal, he implanted his godly semen into your father who lay with your mother to sire you. You are orc.~
==BSHAUHA~I AM ORC! I AM GHOTAL'S GRANDCHILD! Shauhana, Arvoreen's daughter, Ilneval's daughter.~EXIT

CHAIN
IF~Global("ShauOrcWar","GLOBAL",4)~THEN CVorwarl ShauOrcWar3
~Now, Shauhana, Arvoreen's daughter, Ilneval's daughter, know that my father and me swear you our loyalty like we have done to Ghotal and his dream.~
DO~SetGlobal("ShauOrcWar","GLOBAL",5)~
==BSHAUHA~We have already found that things will not be that easy to unite our people and prepare them for the future and for survival.~
== CVGHATLE ~True, our princess. Exactly that is the reason why you and Minsc as well as the other godchild and your friends are required here.~
== CVorwarl~The old traitors will not remain quiet - they have already started their actions against the Clans.~
==BSANDR~We have already eliminated Vennegrat, such must have been a blow against them.~
== CVGHATLE ~The dead that will not remain dead are the problem we face here, Sandrah of Waterdeep. Myrkul, Vennegrat - deemed defeated and dead - and Clan's land is swarming with undead now.~
==BSANDR~Vennegrat has returned?~
== CVGHATLE ~He has an unknown and most powerful ally, Sandrah. Yes, he has come back and with him a daily growing army of undead. Our own long gone fighters are rumoured to be among them.~
==BSANDR~Vennegrat is restoring fallen orc heroes? (Mumbles to herself) Maybe those assumed to have gone through Sharkta Fai?~
== CVorwarl~Vennegrat is or rather was our most potent mage and priest but an army restored of that size would be beyond his skills even. That is why we assume there is a mightier foe behind him.~
== CVGHATLE ~We need our new leader and her fighter companion to organise our defences against that army gathering in the former village of the Icebear Clan.~
==BSANDR~And you need <CHARNAME> and us to investigate the background meanwhile and eliminate possibly the source of that supply with undead fighters.~
== CVorwarl~You say it, Sandrah, let us all go to the Crossroad of the Iceroads a bit to the west of here and I will explain you the situation further. You have been there before on your way to our village.~
== CVGHATLE ~We await you desperately, friends.~
EXIT


