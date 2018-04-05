APPEND  BVALYGA

IF WEIGHT #-17~ Global("SanHealvaly","GLOBAL",3)~THEN Sanheal1
SAY~ Your use of magic for healing differs much from the way my family has dealt with that skill in the past.~
IF~~THEN DO~SetGlobal("SanHealvaly","GLOBAL",4)RealSetGlobalTimer("SanValgyTime","LOCALS",600)~ EXTERN BSANDR HealValgy1
END
END

CHAIN
IF~~THEN BSANDR HealValgy1
~I hope I am not suspicious to you just because I am a priestess of the Goddess of All Magic?~
==BVALYGA~ Not at all, lady Sandrah. I am well aware that it is how the people make use of the gift granted to them by your goddess that defines their own attitude. The power granted by Mystra is in itself neither good nor bad.~
==BSANDR~ It is not often that I meet people with that insight, Valygar. More often my goddess is blamed for all the misuse that is done with her gift.~
==BVALYGA~Maybe, my lady, the reason for that is the misconception of the roles of the gods for the mortals that most people inherit.~
==BSANDR~ I would be very much interested in your view on that topic. From your initial words I have the feeling that it is very close to my own attitude.~
==BVALYGA~I will gladly come back to that invitation of a longer talk with you, my lady. I hope you will share some hours with me on one of those evenings.~
==BSANDR~ I look forward to it - but, please, do not call me *my lady* all the time. We are comrades following <CHARNAME> and I am simply Sandrah for you.~
==BVALYGA~Agreed, Sandrah.~EXIT

CHAIN
IF~Global("SanValgyR","GLOBAL",2)~ THEN BSANDR SanValgy1
~(Sandrah has sat down in the shade of a tree and Pelligram cuddles at her side resting her enormous head in Sandrah's lap.)~
DO~SetGlobal("SanValgyR","GLOBAL",3)~
==BVALYGA~I have spent quite some time in the wilderness and have learned to adore the beauty of nature and its creatures. But I have not seen such grace and power assembled in one place before.~
==BSANDR~ Pelligram is a very special creature, my friend. Come sit down with us if you like.~
==BVALYGA~(He sits down on Pelligram's other side and slowly strokes the large cat's fur at her neck.)~
==Pellig~Purr (She closes her eyes in delight.)~
==BVALYGA~Talking of grace and beauty I was not only referring to the panther, Sandrah.~
==BSANDR~ Thank you, my friend, I do what I can to match with her.~
==BVALYGA~You do not fail...~
==BSANDR~ (You miss the rest of their talk as the warmth of the sun and your own exhaustion lets you doze off.)~ DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT

CHAIN
IF~Global("SanValgyR","GLOBAL",4)~ THEN BSANDR SanValgy2
~Do you feel like continuing our recent talk, Valygar?~
DO~SetGlobal("SanValgyR","GLOBAL",5)~
==BVALYGA~ With the greatest pleasure, Sandrah.~
==BSANDR~ You said that it depends much on what we ourselves do with the gifts and talents we have and not really on the intentions of the gods.~
==BVALYGA~ I have inherited the tragic history of the Corthala Family, Sandrah, but I hope very much that my own fate is not settled because of the mistakes my ancestors have made.~
==BSANDR~ I share your belief that our life and our way is generally in our own hands and no fate is prescribed for anyone. Would you share your story with me or am I intruding too deeply into your privacy with that question?~
==BVALYGA~ Mh, I have carried my thoughts and doubts with me for too long already. Maybe it is a good way to gain my own clarity if I expressed them in words to somebody else.~
==BSANDR~ You have observed that I am primarily a healer with the gifts my goddess gave me. It is my experience that shadows over our soul can be expelled very often when shared with a person of your trust.~
==BVALYGA~ It is good to know that you would be such a person, Sandrah. It is getting late today but I will come back on your offer to share my thoughts with you another day.~
==BSANDR~ I am here, my friend, whenever you need me.~ DO~RestParty()~
EXIT

CHAIN
IF~Global("SanValgyR","GLOBAL",6)~ THEN BSANDR SanValgy2
~You seem to seek my company, Valygar?~
DO~SetGlobal("SanValgyR","GLOBAL",7)~
==BVALYGA~ I do, Sandrah, I seek your counselling both as a friend and as a priestess of Mystra.~
==BSANDR IF~ GlobalLT("TalkedLavok","GLOBAL",2)~ THEN~ Is it about your family and its relation to magic?~
==BSANDR IF~ GlobalGT("TalkedLavok","GLOBAL",1)~ THEN~ Is it about Lavok Corthala and his relation to magic?~
==BVALYGA~ You guessed right, my friend.~
==BSANDR IF~ GlobalLT("TalkedLavok","GLOBAL",2)~ THEN~ It was not so hard as the first thing we heard about you was that you were chased by the cowled wizards.~
==BSANDR IF~ GlobalGT("TalkedLavok","GLOBAL",1)~ THEN~ Or better to say his abnormal relation to what is not really magic. ~
==BVALYGA~ What is yours and your goddess' attitude towards necromancy?~
==BSANDR~ Mystra and thus her priestess oppose to those practices. I would not accept the idea of Necromancy being one of the magical arts under the guard of my Goddess. It is a sacrilege and a blasphemy trying to break the boundaries of our existence on the material plane and gaining prolongation to life in a way that is not part of our nature. You see the failed results of those who fumble with it - the liches and rotting undead, the vampires and worse.~
==BVALYGA~ But you yourself have resurrected our fallen comrades many time from the dead, Sandrah.~ 
==BSANDR~  My Goddess allows me to use the power of the Weave to do so, for one whose life was taken prematurely before his or her time on Toril has come. It is an act of healing in this case and can only be applied before the soul has left the body completely and when the flesh has not decayed beyond a certain amount. It has nothing to do with the acts of Necromancers and their foul practices. The powers they use are not of the Weave but mostly drained from the life power of other creatures, just like a vampire drinks the blood of the living. ~
==BVALYGA~ But who if not Mystra provides those powers then?~
==BSANDR~  Today most scholars think that Velsharoon is the deity supporting Necromancy. But scratch the surface just a bit and you find that he is just the lesser successor who came into power after the downfall of the Dead Three.~
==BVALYGA~ Bhaal?~
==BSANDR~ Not directly - although the thousands of dead sacrificed to the God of Murder were part of the fuel provided for necromantic acts. But the God in question this time is Myrkul, Bhaal's close companion in the dark deeds of those evil gods.~
=~ From Myrkul the Dark Magic Societies of the east learned their skills and were inflicted with their maddening hunger for eternal life.~
==BVALYGA~ In a way I am very much relieved to hear that Mystra is not involved with that hateful aspect that is not even magic...and neither is her priestess...~
==BSANDR~ And I am glad you talked to me and we clarified it rather than you would withdraw from me based on false assumptions.~
==BVALYGA~ (Valygar nods thoughtfully and even manages to get his face to display an expression never shown before - a smile.)~ EXIT

CHAIN
IF~Global("SanValSph","LOCALS",1)~THEN BSANDR SanValgyShRisk
~  You took a high risk to restore your family's reputation - knowing that the necromancer might have been after your body to continue his existence.~
DO~SetGlobal("SanValSph","LOCALS",2)~
==BVALYGA~ It had to be done and it had to be done by me.~
==BSANDR~ The curse caused by Lavok must have weighted heavily on your family for a long time already.~
==BVALYGA~ All my life this part of the family history has hung like a dark shadow over my head. When the sphere materialized in the slums and the cowled wizards came searching for me I ran away.~
==BSANDR~ But now you were here to face the evil.~
==BVALYGA~ I had time to think about everything in my lonely cabin in Umar. I decided I cannot run away from what is my responsibility.~
==BSANDR~ I admire your decision, my friend, but even more I respect you for your choice to help and forgive the one who caused you so much harm.~
==BVALYGA~ You are not innocent in that matter, Sandrah.~
==BSANDR~ Me? In which way?~
==BVALYGA~ I was asking myself *what would she do if she were in my place*? Would my choice not have been your answer as well, Sandrah?~
==BSANDR~ You know me pretty well, Valygar. Still I am puzzled why my opinion on the matter is of such importance to you...~
==BVALYGA~ It is...but - let us focus on this mission now...we may talk another time and in a better place, please. (You notice a warm smile he gives Sandrah before he brusquely turns away and pretends to inspect his weapons.)~EXIT

CHAIN
IF~Global("SanValgyR","GLOBAL",8)~ THEN BSANDR SanValgy2
~Do you like these earrings on me, Valygar?~
DO~SetGlobal("SanValgyR","GLOBAL",9)~
==BVALYGA~ Earrings, what, eh..?~
==BSANDR~ I thought it was them you were staring at for the last couple of minutes, sorry, my mistake.~
==BVALYGA~ Oh, they are beautiful and well chosen to match your hairdo today - like all this fashion stuff you fancy...it makes it even less comprehensible...~
==BSANDR~ I see - how I dress and behave is not much to the liking of a ranger.~
==BVALYGA~ You hit the mark, Sandrah. Anyone would guess such. Then add to it your profession as a priestess of Mystra and my distrust of magic - call it even hate if you like - and you have all the ingredients of the dilemma I find myself in.~
==BSANDR~ You are not trying to tell be that I am the personification of everything you dislike, Valygar?~
==BVALYGA~ That is the point, Sandrah. Given all the circumstances you should be exactly that for me...a fashionable beauty from the city of splendour casting her spells in Mystra's name - it should be enough to keep us apart forever.~
==BSANDR~ I would regret that very much.~
==BVALYGA~ Just like me. Somehow you make it that everything that should be wrong and speak against you suddenly appears to be acceptable - beautiful - adorable...I simply don't know.~
==BSANDR~ With your family history nobody can blame you to mistrust magic. And with your ranger's eyes observing how nature's beauty is mistreated by the big city folks it is clear you dislike them from your heart.~
==BVALYGA~ And all of that has absolutely nothing to do with you, Sandrah. You love nature and its creatures like no one else. You use your magical skills for our benefit and to heal and help a lot of people. ~
==BSANDR~ As counselor and healer I can only advice you to take your time and take a deeper look. Your ranger's skills should enable you to look behind the rich spellcaster's facade and maybe see a girl that is not that bad at all.~
==BVALYGA~ (Mumbles) I-I-I am afraid that this is what I will find out...~EXIT

CHAIN
IF~Global("SanValgyR","GLOBAL",10)~ THEN BSANDR SanValgy3
~Take your seat beside me if you like, Valygar, do not linger there like a shy schoolboy.~
DO~SetGlobal("SanValgyR","GLOBAL",11)~
==BVALYGA~ Thank you. Say, Sandrah, by what do you judge a man? ~
==BSANDR~ I prefer not to be anybody's judge, Valygar, but probably it is not what you meant.~
==BVALYGA~ I have observed that neither status nor reputation make you accept or reject another person, be they good or bad. But you clearly make up your mind about them somehow.~
==BSANDR~ Deeds and attitude, I would say...what a person does or attempts to do and to achieve.~
==BVALYGA~ Attempts to do? You mean failure and missed attempts make the same impact as the successful deed?~
==BSANDR~ (Laughs) Sure - take all those daily attackers we have to fight. I surely take their attempts to kill me as the deed and defend myself by killing them without remorse. It would not be practical to wait for the deed to be accomplished.~
==BVALYGA~ Same in the opposite, I assume. You can appreciate a man trying to do good even if he fails to reach his goal?~
==BSANDR~ I would only criticize him for knowing what to do but not even trying it out of the fear to maybe fail. The intention is the first step, right?~
==BVALYGA~ I see. (He quickly steps forward and kisses Sandrah before he abruptly turns around and vanishes from the room.)~
==BSANDR~ (Shakes her head smiling.) Did he not even want to know if it was success or failure?~EXIT

CHAIN
IF ~Global("SanValgyR","GLOBAL",12)~ THEN BSANDR SanValgy4
~(Sandrah just smiles silently as Valygar moves towards her and takes her hand into his own).~
DO~SetGlobal("SanValgyR","GLOBAL",13)~
==BVALYGA~ (Sigh) How can it be so easy to do what should never be done? ~
==BSANDR~ You are not committing a crime and you will find little resistance should you dare to venture further...~
==BVALYGA~I was afraid you would just say that, Sandrah, inviting me instead of helping me prevent what cannot be. The Corthala line must end with me - I cannot allow myself to pleasure a woman in the way she truly deserves it. ~
==BSANDR~ (Sandrah stops and turns towards the ranger laying her arms around his neck.)~
=~You can make me a happy and satisfied woman without the need to immediately raise a family together, my friend. (She kisses him lightly.)~
==BVALYGA~I never thought of you as a woman for just one night, Sandrah...~
==BSANDR~ Make it two or three or four then...I am not yet ready to continue my line, so we must not ponder the consequences so heavily. But we should be concerned to let a wonderful opportunity slip away that may never repeat itself.~ 
==BVALYGA~You are determined, arent't you? You are not just a light flirt unconscious of the consequences.~
==BSANDR~ I will give you what you want, Valygar, your acceptance will be my reward and my pleasure. I will ask nothing else from you, least of all to become part of the Corthala saga. My interest is solely for the man that stands before me.~
==BVALYGA~Then you shall have what you desire...~DO~ RestParty()~EXIT

CHAIN
IF ~Global("SanJahWarnVal","LOCALS",1)~THEN BSandr ValJah1
~Why do you shake your head, Jaheira? You disapprove one of my actions?~
DO~SetGlobal("SanJahWarnVal","LOCALS",2)~
==BJaheir~We are beyond the stage where I judge your actions still. See the friend in me who is concerned.~
==BSandr~(Smiles) In this case the topic can only be my attitude towards men.~
==BJaheir~(Tries to smile as well but it appears as a rather forced grimace.) You are SO clever, my dear, and then again so foolish. A man like Valygar can only bring grief to you sooner or later.~
==BSandr~Are we just some black and white prototypes in your eyes? The young spellcaster and the old magic hater, the city girl and the ranger?~
==BJaheir~The man living in the past and the young woman with a bright future, that's what I see.~
==BSandr~My future is rooted in the past as well, and Valygar is not as set in the past as you may think. We are both evolving - towards each other and maybe with each other. You know that I am not one to give up my cases easily.~
==BJaheir~(This time her laughter is true.) Fine, then it's the old grumbler and the incurable optimist. Don't blame me for not having warned you.~EXIT