APPEND BSANDR

IF~Global("SanKelMaria","LOCALS",1)~THEN BEGIN SanKelMar1
SAY~(Sandrah makes some steps towards Keldorn - then she stops and turns away shaking her head in silence.) ~
IF~~THEN REPLY~(You decide not to interfer with Keldorn at the moment.)~DO~SetGlobal("SanKelMaria","LOCALS",2) IncrementGlobal("Sanpoints","GLOBAL",-2)~EXIT
IF~~THEN REPLY~(You take Sandrah out of Keldorn's earshot.) You decided not to give your council to Keldorn, understandable. Maybe you can give this party's leader some advice still?~DO~SetGlobal("SanKelMaria","LOCALS",2) IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SanKelMar2
END

IF~~THEN BEGIN SanKelMar2
SAY~I am afraid my own perception of love and responsibility are not compatible with a paladin's view. And especially Keldorn would just be offended if I tried to council him in that. For the party's sake I decided not to fuel the discrepancy between the two of us even more. Still my heart is with the poor Maria and HER struggle for recognition of her needs.~
IF~~THEN REPLY~Is there anything I could do here?~GOTO SanKelMar3
IF~~THEN REPLY~Probably I should keep myself out of this family affair as well.~GOTO SanKelMar3
END

IF~~THEN BEGIN SanKelMar3
SAY~You are a responsible leader, <CHARNAME>, and in a way you also have some influence on Keldorn. Allow not this stubborn notion of law, justice and honour to destroy a much more precious good - love. Try to open Keldorn's eyes when he confronts his rival. Force him to care for his family, his children.~
=~My father ,as you know well, takes care of a lot of things all over the Realms - but he always took care of me so I missed nothing of his love. A paladin, even if of some rank, should also be able to adjust his priorities.~
IF~~THEN REPLY~Thank you. And by the way...a Bhaalspawn with loads of tasks, enemies and quests on <PRO_HISHER> hands will always find the time for the beloved. (You kiss her.)~EXIT
IF~~THEN REPLY~Sure, even a Bhaalspawn with loads of tasks, enemies and quests on <PRO_HISHER> hands will always find the time for the beloved. (Wink at her.) Like you will see tonight.~EXIT
END
END



CHAIN
IF~Global("SanKeldorn","GLOBAL",2) ~THEN BSandr SanKeldInq
~Being an inquisitor does not give you the right to stare at people that inquisitive, Keldorn.~
DO~SetGlobal("SanKeldorn","GLOBAL",3)~
==BKeldor~Ehhm...did I? In this case take my apologies, fair lady, I had no intention to embarrass you.~
==BSandr~Fine. (She is about to turn away brusquely.)~
==BKeldor~If you do not mind, Sandrah, may we take the time to correct our little false start? We are <CHARNAME>'s companions now and should try to get along as good as we can.~
==BSandr~As good as we can? Have I done anything to offend you or to make you criticize me?~
=~(You know your beloved well enough to see her anger build up inside her as so often with bigot paladins.)~
==BKeldor~You are still young, my lady, but your enormous power and potential both as a fighter and a cleric is obvious. Eeh...Mystra is a goddess who...~
==BSandr~Tread carefully, paladin!! Insult me as you wish but do not even dare to issue your unwanted opinion about Mystra!! ~
==BKeldor~I do not see why you try to misunderstand me the best you can. Magic is granted to good and evil alike, so being her disciple does leave it open towards which side your trend is. You follow and support a Bhaalspawn, my lady.~
==BSandr~As do you, obnoxious paladin. You know absolutely nothing but still try to play judge and jury. Does following the god of justice give you such rights? I doubt it.~
EXIT

CHAIN
IF~Global("SanKeldorn","GLOBAL",4) ~THEN BSandr SanKeld2
~(Sandrah has taken a couple of potion bottles from her backpack and inspects their contents) I will need a couple of ingrediences in the near future, <CHARNAME>. My reserves of some of the medicines are running short.~
DO~SetGlobal("SanKeldorn","GLOBAL",5)~
==BKeldor~You do not rely on your spells alone when it comes to healing, Sandrah?~
==BSandr~For most cases I could but for some injuries or diseases I meet along our way a longer therapy is required. As we rarely have the time to stay long enough with a patient I must sometimes leave them some means to continue the cure on their own.~
==BKeldor~I have not met a priest of Mystra before who has emphasised the helping and healing aspects of the goddess' gifts like you do.~
==BSandr~There are many things you do not know about my goddess, that is for sure. Badly enough such ignorance does not keep you from your judgement on her disciples.~
==BKeldor~Believe me, girl, I have seen much more of Toril than you have in your short life yet. I have made my experiences that justify my opinions.~
==BSandr~Some people can live for a hundred years without knowing anything afterwards. I would be grateful if you could keep your prejudices and single-minded opinions to yourself.~
==BKeldor~You have no idea what faith or rules are, you arrogant...ah, you're not worth my anger, silly little girl...~EXIT

CHAIN
IF~Global("SanKeldorn","GLOBAL",7) ~THEN BSandr SanSlavChiHunt1
~OH NO! That poor child. It is not dead long but already beyond the reach of my skills.~
DO~ SetGlobal("SanKeldorn","GLOBAL",8) ~
==BKeldor~Is there nothing your significant healer skills can do here, Sandrah?~
==BSandr~(She sadly shakes her head.) The poor one was totally exhausted already when she fell down to die. She must have greeted death as the release from her martyrdom.~
==BKeldor~What can happen to a child that she will greet death so willingly?~
==BSandr~(She has knelt down by the dead body and closes the girl's starry eyes.) Look at these marks and bruises on her ankles and her wrists, they are fresh. She must have been in chains!~
==BKeldor~A prisoner? - NO, a slave!~
==BSandr~I am sure of that, Keldorn, and she is dead not longer than an hour. She cannot be the only one in this forsaken area, look at the broken wagon here, it bears no marks of decay.~
==BKeldor~A slaver's caravan must have come through here and left its horrible trail.~
==BSandr~They cannot be far. <CHARNAME>, we must make haste and follow them. We cannot let them escape.~
==BKeldor~I agree with Sandrah - we must destroy them and free their prisoners by all means!~
END
++~Well...~+ SanSlavChiHunt2

CHAIN
IF~~THEN BSandr SanSlavChiHunt2
~You hesitate?~
==BKeldor~You hesitate, <CHARNAME>?~
END
++~Consent between you two? A new and welcome situation. Fine, let us waste no more time with talk. The road goes west - they must have followed it otherwise we should have seen a sign of them on the way we came.~EXIT

CHAIN
IF~Global("SanKeldorn","GLOBAL",10)~THEN BSandr SanKeldPe
~Are you satisfied with the outcome of our adventure, Keldorn.~
DO~SetGlobal("SanKeldorn","GLOBAL",11)~
==BKeldor~Your motivations and lines of action are not always easy to comprehend, Sandrah. Ah, but, yes, I think in the end I am convinced that you try to do the right things - in your way.~
==BSandr~I take this as a *yes* then in answer to my question.~EXIT

