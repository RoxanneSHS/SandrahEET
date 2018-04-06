CHAIN
IF WEIGHT #-1~Global("Sanvyndheal","Global",3)~THEN BGV#Vynd Domina1
~Thank you kindly, mistress.~
DO~SetGlobal("Sanvyndheal","Global",4)~
==BSandr~Mistress? Why do you call me that?~
==BGV#Vynd~Did I? A reflex I'd say, in the presence of a female like you.~
==BSandr~You are getting weirder with every word, Vynd. What is a *female like me*?~
==BGV#Vynd~Seems I got myself in a trap here, mistress.~
==BSandr~Not again, please, I am Sandrah and we are comrades in arms, are we not?~
==BGV#Vynd~(Sigh) It is hard to overcome the habit of how to behave in the presence of a strong dominant woman.~
==BSandr~(Smiles) A drow matron like me, you mean?~
==BGV#Vynd~The skin is a little too rosy for that, I admit, otherwise...~ EXIT

CHAIN
IF WEIGHT #-1~Global("Sanvyndheal","Global",5)~THEN BGV#Vynd Domina2
~I'd rather you don't gave me too much attention, comrades or not, mis...Sandrah.~
DO~SetGlobal("Sanvyndheal","Global",6)~
==BSandr~Your experience with women must have been really bad.~
==BGV#Vynd~You're learned enough to know about how drow women treat my gender, especially when you're not the strongest of the pack.~
==BSandr~It does not help if you are rather handsome on top of that.~
==BGV#Vynd~I was almost fearing you'd noticed that, I had preferred not to be your type, just for luck.~
==BSandr~Poor unlucky boy. Anyway, since I am not the drow matron you seem to sense in me, there is nothing I can do than to restrain my appetite.~
==BGV#Vynd~Is there a chance I've erred in you? You give me a chance to escape?~
==BSandr~(Laughs) Like a cat lets escape a mouse.~
==BGV#Vynd~(Sigh) I'm used to be a toy in cruel games...~
==BSandr~I was never one of the girls who broke their toys, honestly, my doll was the first patient for my fledgling healing skills.~EXIT

CHAIN
IF WEIGHT #-1~Global("Sanvyndheal","Global",7)~THEN BGV#Vynd Domina3
~I really have mistaken you for something you're not...Sandrah.~
DO~SetGlobal("Sanvyndheal","Global",8)~
==BSandr~Are you willing to provide a bit more detail?~
==BGV#Vynd~I finally thought you weren't the strong mistress I guessed you were...I saw your healing and helping and all that weird surfacer stuff you do.~
==BSandr~You think it shows my weakness?~
==BGV#Vynd~That was the mistake I made. No, it doesn't. A drow would put a knife into the heart of those who show weakness - one less potential enemy cheaply disposed.~
=~You raise him and heal him and give him back his strength - because you're not afraid of him, that's why. Should he decide to use the regained strength against you, so what? You know you can face him any time.~
==BSandr~Arrogance?~
==BGV#Vynd~You would call it that name if it were unjustified. Think you know exactly what you do. It's calculated, people owe you something, a lot of people owe you something. Some may forget and be ungrateful - but most will remember. You build yourself a strong backing that way.~
==BSandr~Now you make the mistake, Vynd. Would it work in the Underdark? Probably not. Definitely not on the surface, my friend. People forget much faster when the sun shines again on their happy lives.~EXIT

CHAIN
IF WEIGHT #-1~Global("Sanvyndheal","Global",9)~THEN BGV#Vynd Domina4
~One day I hope I witness you meeting a drow matron, Sandrah.~
DO~SetGlobal("Sanvyndheal","Global",10)~
==BSandr~(Laughs) You gave up that image of me being one in disguise?~
==BGV#Vynd~Definitely - I'm interested to see which concept turns out to be the stronger - that of a regime of fear or that of love and hope.~
==BSandr~I could tell you right away but I am afraid you would call me prejudiced.~
==BGV#Vynd~So why is fear the weaker motivation?~
==BSandr~Both - fear and love - can make us grow stronger. The power you get from fear turns against the source of your fear while the power of love feeds and protects the one you love.~
==BGV#Vynd~Tell you what - I'm sure those matrons have a good reason to fear you. You will have someone standing next to you in the battle when you need them most, they stand alone once they lost the grip of their whip.~EXIT

CHAIN
IF WEIGHT #-1~Global("Sanvyndheal","Global",11)~THEN BGV#Vynd Domina5
~I did some research these days, Sandrah. Reading.~
DO~SetGlobal("Sanvyndheal","Global",12)~
==BSandr~You? Really...something you want me to know?~
==BGV#Vynd~Yeah, your Mystra and her Cyric, guess you know the story well, the priestess and the assassin.~
==BSandr~It is a bit of family history for me, he stole her heart and then betrayed her - some murder of her former lover included.~
==BGV#Vynd~I heard you say once that history never repeats itself exactly the same.~
==BSandr~Is this meant as a kind of offer, Vynd?~
==BGV#Vynd~If you dare...~DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT