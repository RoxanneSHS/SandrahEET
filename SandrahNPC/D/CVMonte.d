BEGIN CVMONTE

CHAIN
IF ~ Global("monteedebut","LOCALS",1) ~ THEN CVMONTE BookHE1
~ Greetings. You stubbornly have refused to hand something that belongs to me to any of those poor messengers I have sent to retrieve it. So it seems that this time I needed to come in person to stress the urgency of my request.~
== BSANDR ~ I assume that you refer to the little philosophical treaty you have written before your untimely death, Monsieur Monteelah?~
== CVMONTE ~ A well learned scholar, little one. But it is not necessary to prolong our little interchange here with stories we both know are not true. Just as you know about my forged death, I know about your deciphering of the true nature of that booklet.~
== BSANDR ~ Then you know we cannot return it anymore as it was destroyed in the process of its deciphering.~
== CVMONTE ~ Well, so now we can concentrate on what the book revealed to you.~
== BSANDR ~ You come to claim the treasures from that island?~
== CVMONTE ~ Oh, clever little girl. You want to make me believe you came this far without finding the papers that are the real treasure I care about.~
== BSANDR ~ You are right, we figured out they are of some importance, even if we have not found a way to find out why.~
== CVMONTE ~ What? What do you mean, girl?~
== BSANDR ~ Those strange papers, a riddle inside of a riddle. They are old and foreign. But why are people dying for them? They are useless.~
== CVMONTE ~ Useless? Did you not see what they grant you? Etern...- You did not read them?~
== BSANDR ~ How could we? Not even I know the scripture and the language they are written in. No one can decipher them. Those who knew are dust since long.~
== CVMONTE ~ (A bright smile appears on the pirat's face.) You cannot help me then to decipher them,hm? Some learned scholar more knowledgable than even you will need to do it then. So there will be no problem for you to hand them over. NOW!~
END
IF ~ PartyHasItem("CVFARKPA") ~ THEN REPLY ~ Well, fine. But you will understand that we will keep the rest of the loot as a little compensation for our efforts. ~ DO~ TakePartyItem("CVFARKPA") SetGlobal("SanGavMontPapers","GLOBAL",1)~+ BookHE2
IF ~ PartyHasItem("CVFARKPA") ~ THEN REPLY ~  Sandrah, that was a nice attempt. But if he finds out about those missing parts he will asume we have them and come again. I prefer to end this here and now.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",-1)~+ BookHE3
IF ~ !PartyHasItem("CVFARKPA") ~ THEN REPLY ~ You heard my cleric already. The papers were useless, we do not possess them anymore.~ + BookHE4

CHAIN
IF ~~ THEN CVMONTE BookHE2
~ The papers - finally. So I give you my fond *adieu*. My friends here will make sure you understand that it is of no use pursuing this hunt any further.~
DO ~ SetGlobal("monteedebut","LOCALS",3)~ EXIT


CHAIN
IF ~~ THEN CVMONTE BookHE3
~ Missing parts, how can you know if you cannot decipher...Girl, you would have made a fine pirate, I assure you. Too bad you made a wrong choice in your comrades.~
DO~  SetGlobal("monteedebut","LOCALS",2) ~EXIT

CHAIN
IF ~~ THEN CVMONTE BookHE4
~ The papers - I have screened you. You bloody fools, you do not even know what you have thrown so carelessly away. So I give you my fond *adieu*. My friends here will make sure you understand that it is of no use pursuing this hunt any further.~
DO ~ SetGlobal("monteedebut","LOCALS",3)~ EXIT