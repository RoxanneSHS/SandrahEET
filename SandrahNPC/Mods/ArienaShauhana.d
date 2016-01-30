
CHAIN
IF ~Global("MWArShauha","LOCALS",1)~THEN MWBarn TwoOrcs1
~You fight good, mage girl.~
DO~SetGlobal("MWArShauha","LOCALS",2)~
== BSHAUHA ~I fight like an orc because I am an orc.~
== MWBarn~ You no look orc, you no think orc, orc girl no cast spells. - You no orc.~
== BSHAUHA ~You call the granddaughter of Ghotal not orc. You must have kissed the stars, half-orc.~
== MWBarn~ Ghotal granddaughter? He was son of Myrkul. Clan orcs are weaklings without him.~
== BSHAUHA ~At least to this I can agree, Ariena.~EXIT

CHAIN
IF ~Global("MWArShauha","LOCALS",3)~THEN MWBarn TwoOrcs2
~You were slave, Ghotal granddaughter?~
DO~SetGlobal("MWArShauha","LOCALS",4)~
== BSHAUHA ~I was. I was fighting in the pits of my own Clan.~
== MWBarn~Slave of own Clan Orcs - you bad?~
== BSHAUHA ~I killed my father.~
== MWBarn~Ariena kill own mother if I find her, she sold me to the pit master. Did your mother sell you.~
== BSHAUHA ~No, I was sentenced to death for defeating my own life against my father. My mother thought that execution would be a much too easy death for me. She had rather I should fight for my life in the pits day and day again.~
== MWBarn~You survive Clan Orc pits and stay sane in mind and body. You strong, Shauhana. Your grandfather would be proud for you.~
== BSHAUHA ~I hope he would. I will do much more if all these prophesies are correct.~
== MWBarn~You will need strong arms by your side - like <CHARNAME> - like Ariena.~EXIT

CHAIN
IF WEIGHT #-14~Global("MWarsanbount","LOCALS",1)~ THEN MWBarn Bountfriend
~ Is your woman god who make Sandrah hate so much slavers?~
DO~SetGlobal("MWarsanbount","LOCALS",2)~
==BSandr~ It is what I have seen with my own eyes, Ariena. My goddess gives me the strength and the confidence and the means to fight them whenever I get a chance to cross their path.~
== MWBarn~Your woman god hates slavers also then. Maybe she not so bad god after all. Maybe Ariena think about her again before decide to spit on her.~
== MWBarn IF~ InParty("CVShau")~ THEN ~ You half-orc prove that know about why Ariena had to do what has done.~
==BShauha IF~ InParty("CVShau")~ THEN ~ I certainly do. You had to overcome and kill only strangers to gain your freedom. I had to fight and kill many of my own Clan for it.~
== MWBarn IF~ InParty("CVShau")~ THEN ~I see you are strong, Shauhana. Think you of be friend now to Ariena. You had to kill Clan but you at least had Clan - Ariena never had.~
EXIT

INTERJECT_COPY_TRANS  MWBOHUL 0 SanArienSlaveHate
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~Ariena told us of her fate as a slave forced to fight for other people's *amusement*. The killing of her owner and her deeds to survive were pure self defence. You have just made yourself a group of strong enemies. I can only warn you to venture any further.~
== CVShauJ IF ~ InParty("CVShau")~ THEN ~ I was a slave and fought in the pits myself. Anyone trying to enforce the *justice* of slave owners will need to get through me first.~
== MWBOHUL IF~OR(2)InParty("CVShau")InParty("CVSandr")~ THEN~This seems to get much more interesting than I had hoped. I just love to teach such slave-freers and do-gooders the real force of the true law - the law of the strongest.~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~We will soon see you fall to your own *justice* then - if you want to feel the law of the strongest we will be your executioners.~
==MWBarn IF~OR(2)InParty("CVShau")InParty("CVSandr")~ THEN~Ariena happy to see that friends are not only talking great words - they stand to Ariena when need.~END