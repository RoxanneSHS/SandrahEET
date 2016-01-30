BEGIN CVMinsc

//Minsc Training Orcs
CHAIN
IF~NumTimesTalkedTo(0) AreaCheck("CVSH15")~THEN CVMinsc WelcomeM
~Berserkers, attack!~
==CVorwarl~Quite promissing the progress you make, Minsc.~
==CVMinsc~Ha, when our Berserker Lodge is ready for celebration then our men will be ready to win the battle to be celebrated.~
==CVorwarl~I believe you, my friend, as long as the foe to fight is not supernatural...~
==CVMinsc~Show them how we kick butts, my Berserkers!!~
==Shaorc7~ For Shauhana!!~ 
==Sanboy1 IF~InMyArea("sanboy1")~THEN~For Minsc and Shauhana and the Clan Orcs!~
==Shaorc8~For the Clan!!~
==Shaorc9~For Clan and Queen!!~
DO~
SetGlobal("Orcshow","CVSH15",1)
ClearAllActions()
StartCutSceneMode()
StartCutscene("MinOrc1") ~EXIT

CHAIN
IF~Global("Orcshow","CVSH15",3)~ THEN BSandr Minorc
~My friend, you have found your occupation. You are an excellent trainer, Minsc. Your orc berserkers are much more than a wild horde of brutes.~
DO~SetGlobal("Orcshow","CVSH15",4)~
==CVMinsc~ We learn quickly, Sandrah, they have it all inside and just need me to channel their fighting abilities and vigor into the right direction.~
==BSandr~It sounded like you founded your own Lodge for them?~
==CVMinsc~You have always understood me well, sweet Sandrah. I may never return to Rashemen and the boys - even if some may still be alive. I have a home now, Hai 'Ulthak, ...and maybe a wife soon.~
==Sanboy1 IF~InMyArea("sanboy1")~THEN~ Don't forget the boy and future berserker you promised to take care of.~
==CVMinsc IF~InMyArea("sanboy1")~THEN~Ha, Giran, I won't, you'll see, you will become a capable fighter in no time - once this spook is over.~
==CVMinsc~Tell me, Sandrah, it will be over soon, yes?~
==BSandr~If you and Wallrick and Shauhana defend the village and destroy Vennegrat, his ally in the background will be unaware of the second force that will enter his lair and get him. Together we have a chance to make the future you envision become reality.~
==CVMinsc~We'll celebrate in the Lodge once the work is done.~EXIT

CHAIN
IF WEIGHT #-3~AreaCheck("cvsh11")Global("SanHintFactory","GLOBAL",23)~ THEN Sanboy1 retbelw
~Look, look, there they are! <CHARNAME> and Miss Sandrah and all your friends, mam...Shauhana.~
DO~ SetGlobal("SanHintFactory","GLOBAL",24)~
==CVorwarl~ They have ended the supply of reinforcements for Vennegrat. Just in time, <CHARNAME>.~
==cvminsc~ Boys, you have done a fabulous fight. The Clan Orc Berserkers celebrate their first victory.~
==Shaorc8~For the Clan!!~
==Shaorc9~For Clan and Queen!!~
==CVGhatle~ Very soon a new time will start in these mountains. We must end this quickly now, my queen.~
==CVShauq~ You return to the light, <CHARNAME>, and the light returns for the Clans. You must tell us all about your adventures and findings inside Sharkta Fai soon, Sandrah - but Ghatlenk is right...~
=~The enemy is almost defeated but we must take the chance now and end this war of Orc against Orc. The traitor and his remaining forces have retreated to the old Icebear Clan village. I will restore peace again and I must follow them.~
==CVorwarl~ It is the scenery of the Battle of the Frozen Waterfall, my queen.~
==CVShauq~ It is good you remind me, Wallrick. It is there that Ghotal has defeated Murantku who stood against the union of the Clans. I know the method he has used...~
==CVorwarl~...but Vennegrat knows it not. The coward was in his tent on the bloodstained day. It is a good idea to use the old tactic again.~
==CVShauq~ My friends, you have done so much for us, for the Clans but also for Minsc and me. I know you will not reject my final plea to come with me to the Frozen Waterfall and be witness to the events that will write a new chapter in the Clan's history.~
END
++~Vennegrat still has forces, but he cannot reinforce them anymore. What is this mysterious method you and Wallrick referred to?~ + retbelw2
++~You do not need us anymore for the few orcs that are still against you, mighty queen, we wish you good luck.~EXTERN CVSandrJ Chablowhead

CHAIN
IF~~THEN CVSandrJ Chablowhead
~I forgot to cast another healing spell on <CHARNAME>, this blow to the head was more severe than I had estimated. Of course we are at your side in this.~
END
++~ Eh, yes, eh, sure, I was a bit confused for a moment...~EXTERN Sanboy1 retbelw2


CHAIN
IF~~THEN Sanboy1 retbelw2
~Pa...Minsc, please, I must witness it too - we are orc now, aren't we and witnesses of the new start, right?~
==cvminsc~ Stay where I can see you, Giran, learn and look to become a great hero.~
==CVShauq~ Oh, Minsc. It is the queen's verdict that you bring our boy home uninjured.~
==cvminsc~Our word of honor on that, beloved queen.~
==CVShauq~We will venture with just a small but well-chosen group, <CHARNAME>. I will move ahead to the waterfall with Minsc and Wallrick - yes, and Giran.~
==sanboy1~ Hurray!~
==CVShauq~ Use our small camp north of here to rest and heal and then follow us so we can once and for all end this war - side by side, my friends.~ EXIT

CHAIN
IF~Global("SanHintFactory","GLOBAL",31)~THEN CVSandrJ ShauHornDone1
~From this icy grave he may not return to disturb the peace again.~
DO~SetGlobal("SanHintFactory","GLOBAL",32)AddexperienceParty(72000) AddXPObject("CVSandr",105000)~
END
++~A quest that has brought us many new insights - and new friends as well as foes.~+ ShauHornDone2

CHAIN
IF~~ THEN CVSandrJ ShauHornDone2
~We should heed Shauhana's advice to see Nib Jansen to take us back to Amn now.~ EXIT

REPLACE_ACTION_TEXT Minsc ~Enemy()~ ~EscapeArea()~
