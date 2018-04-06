CHAIN
IF WEIGHT #-2~Global("SanHealValri","GLOBAL",3)~THEN BT2Val Sanheal1
~You're magnificent, a great healer - that part of magic was not taught by my tutors in the the cowled wizards. ~
DO~SetGlobal("SanHealValri","GLOBAL",4)~
==Bsandr~(Cold) Clearly not.~
==BT2Val~Did I do anything wrong? ~
==Bsandr~No, at least not yet. I just do not appreciate the activities of the cowled wizards in general. It is not my interpretation of how one should act with the gifts of the Weave.~
=~Still, I try not to judge anyone prematurely just because of race, class or social background. I know not how deeply you identify yourself with the cowls.~
==BT2Val~My heart follows Torm, the Loyal Fury, god of duty, obedience, and loyalty. Also I do pray to Mystra on occasion.~
==Bsandr~Praying to my goddess is something I do not.~
==BT2Val~I envy you a bit for being so close to the Weave and its keeper.~
==Bsandr~It is my dedication and nothing that is restricted to others if they wanted to, unless some self declared arcane policemen keep them off.~EXIT

CHAIN
IF WEIGHT #-2~Global("SanHealValri","GLOBAL",5)~THEN BT2Val Sanheal2
~The Weave is a dangerous and unpredictable power to handle. ~
DO~SetGlobal("SanHealValri","GLOBAL",6)~
==Bsandr~(Laughs).~
==BT2Val ~For you it seems a pretty easy and totally natural thing to do, you can easily laugh.~
==Bsandr~Oh, no, you misunderstood. I had to laugh about myself because the answer I was about to give you would have sounded like I were some dusty old teacher in the cowled wizards.~
==BT2Val ~You got me interested, (laughs) dusty old priestess.~
==Bsandr~The power to handle the Weave lies within yourself, your concentration and imagination. Any time you try to manage the Weave you need the same dedication and concentration to do it.~
=~The Weave is in everything and around everything, it is the many energies and forces that exist around the planes.~
=~Casting a spell is equivalent to telling the Weave to rearrange itself to create a specific effect. I connect to the portion of the Weave I want to alter and tell it of its new form, so to say.~
==BT2Val ~No, you're not dusty and old, Sandrah. Nobody before explained it to me in such an easily understandable way. Wizards and sorcerers seem to bury the natural aspect of the art underneath layers of artificial complexity. If I listen to you, it sounds like all I need is a very clear picture of what I want the Weave to do for me?~ DO~AddSpecialAbility("SPIN147")~
==Bsandr~Try it.~EXIT

CHAIN
IF WEIGHT #-2~Global("SanHealValri","GLOBAL",9)~THEN BT2Val Sanheal3
~Sandrah, I feel more and more confident with my skills since you helped me find the right attitude towards my spells.~
DO~SetGlobal("SanHealValri","GLOBAL",10)~
==BSandr~In the end this is your own success, my dear. There is no defined method for a sorcerer and each one has to develop the way suiting her best.~
==BT2Val~I have thought about what you told me about the Weave and I was wondering how your healing abilities fit into this scheme.~
==BSandr~Healing is a bit more complex than other ways of using magic and manipulating the Weave. A sick or injured body can be seen as an object where the natural order of matter and energy and thus the Weave itself is distorted. In order to *repair* it you must have the knowledge of its original design and order.~
==BT2Val~I can understand that...you must know what you want to achieve just like with a spell, only you must first have a good knowledge of the sane form of what or whom you heal. ~
==BSandr~As a healer you are not alone in your task, I would even say you play a secondary role only.~
=~If you cut your finger, just to take an example, you know that your body will heal by itself within a few days. So there is a mechanism within a patient which is the Weave trying to re-order itself from the distortion.~
=~When an injury is significant, those powers however may not be able to heal the body within some time - or in other cases they need guidance. Take a broken limb, without the surgeon or healer to fix it correctly it may heal in some way but you may stay crippled or hindered to some extend.~
==BT2Val~The more you tell me about it the more I admire your abilities.~
==BSandr~Oh, there is not so much magic involved, it is more the knowledge of how the elements involved in the healing process work together. Much depends on the will of the patient itself. The best healer is helpless when an injured person has given himself up.~
==BT2Val~I am glad I have not given up my belief that my talent has some virtue, regardless of my parent's rejection.~
==BSandr~(Smiles) Your persistence is your strength.~ EXIT

CHAIN
IF WEIGHT #-2~Global("SanHealValri","GLOBAL",7)~THEN BT2Val Sanheal4
~Sandrah, I wonder - with you being so close to <CHARNAME> and being a priestess of the goddess of all magic, too - eh...you must have your own ideas about <PRO_HISHER> sudden magical abilities.~
DO~SetGlobal("SanHealValri","GLOBAL",8)~
==BSandr~ Did <PRO_HESHE> tell you about the dreams that accompany this development of skills?~
==BT2Val~They are full of blood, murder and darkness - you think there is some dark vicious power at the source of it all?~
==BSandr~There is also the notion of a choice that <CHARNAME> has to do. A choice between the dark calling and the warning voices against it. The power has a high price. Too high.~
==BT2Val~This dark power...what is it?~
==BSandr~I am not yet ready to share my suspicions, Valerie. I may be wrong and I do not want to reveal something I am not yet completely sure about myself. All I can say is that I am by <CHARNAME>'s side to aid in the struggle.~
==BT2Val~...but what if the darkness would get the upper hand?~
==BSandr~I will do what must be done - it is for you to decide on your own action in such a case.~EXIT

CHAIN
IF WEIGHT #-2~Global("SanHealValri","GLOBAL",11)~THEN BT2Val Sanheal5
~(Sandrah sits at a table in the inn studying her toom, a glass of burgundy red thick wine next to her, fingers caressing thoughtfully the stem of the glass.)~
DO~SetGlobal("SanHealValri","GLOBAL",12)~
==BT2Val~Sandrah, I never would have guessed to see you in a desperate mood...you of all people I know.~
==BSandr~(Irritated) Eh? What do you mean, Valerie?~
==BT2Val~You surely have observed me taking a glass or two to calm my nerves after one of those disturbing days we spent at <CHARNAME>'s side. But you??~
==BSandr~(Laughs) Oh, you are mistaken, my friend. This is an excellent cuvee from a very good year - I drink it just for its taste...(laughs) if at all, it helps me to digest this rather dry material I study tonight.~
=~Get yourself a glass, dear, you should not miss it, it is not easy to find such stuff in the places we rest and dine these days.~
==BT2Val~I am relived, I'd rather have you as a connoisseur sharing a nice experience with me than as a drinking companion to share gloomy views on our current situation.~EXIT

CHAIN
IF WEIGHT #-2~Global("SanHealValri","GLOBAL",13)~THEN BT2Val Sanheal6
~Sandrah, sometimes I think you could conquer all of Faerun with your charm and your beauty. ~
DO~SetGlobal("SanHealValri","GLOBAL",14)~
==BSandr~(Sighs) I wish I could accomplish our current mission by those means - but I'm afraid I need to revert to my hammer and offensive spells even more often.~
==BT2Val~They rarely fail even if they overshadow your nicer sides at times.~
==BSandr~You are making a lot of compliments today...~
==BT2Val~(Blushes) Your beauty and charm and personality work on a lot of people - definitely I'm not immune to it.~
==BSandr~I have observed that your interest in the men we meet is rather low for a girl of our age.~
==BT2Val~Well, yes...I do prefer women, yes. Exclusively so. Never did understand the girls who found men attractive, sorry, not trying to insult you. Then again, not like I had a lot of time for dating, as Emma and I found out. Before you ask, she's my ex-girlfriend. We broke up a couple of years ago due to being teenagers and thus by definition idiots. ~
==BSandr~Idiot years behind you now, you know what you want today, right?~
==BT2Val~I know that if YOU want something, you just take action.~
==BSandr~Yes?~
==BT2Val~ (Valerie quickly steps up to Sandrah and embraces her with surprising energy.)~
=~ (After a long moment, their lips part and she smiles. Her voice is much huskier than usual) I've wanted to do that for a while now, but guess I never had the courage. It looks like we have something to talk about when this quest over, now. I'm looking forward to it.~DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~ EXIT

CHAIN
IF WEIGHT #-2~Global("ValJenB","LOCALS",2)~THEN BT2Val JenDuty
~I learned that you came from very far away on a mission of duty.~
DO~SetGlobal("ValJenB","LOCALS",3)~
==BJenli~Jen'lig need restore honor of her city and race. Thief with sword will disgrace all githyanki by use for evil deeds.~
==BT2Val~I follow Toril's god of duty, obedience, and loyalty. Can you really be an evil creature when you follow the same principles?~
==BJenli~Manling sorceress cites main principles of githyanki. (Hiss) Why manling need god for what is inside every true blood creature? Manlings too weak without their god crutches?~
==BT2Val~Spare me your blasphemies - I was mistaken to think we could find common ground in why we both have come from far places to the Sword Coast.~
==BJenli~ Common ground is duty. Common ground not has need for gods. (Hiss!)~EXIT