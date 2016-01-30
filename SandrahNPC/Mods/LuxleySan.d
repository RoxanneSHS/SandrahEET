CHAIN
IF WEIGHT #-7~Global("SanLuxley","GLOBAL",1)~THEN BFHLSEB Luxsan1
~So - you're that famous heroine of the Sword Coast...you look far more *petite* than your reputation had suggested - very delicate.~
DO~SetGlobal("SanLuxley","GLOBAL",2)~
==BSandr~You have a slight advantage here, you seem to know more about me than I do about you.~
==BFHLSEB~We must change that! Care to learn more?~
=~I surely have to rewrite some stuff concerning Sandrah of Waterdeep.~
==BSandr~Rewrite? Do not tell me I am contained in a script you are working on.~
==BFHLSEB~If you were...which I do not confirm...I would probably have to start anew anyway. The battleship fighter blasting through the lines of her foes has just deceased.~
==BSandr~(Laughs) Let us bury her then. Let each of us get out a blank sheet of parchment - or maybe I should take two, one for you and one for your cousin...~
==BFHLSEB~If you're interested in HIM, go and find out for yourself, provided you want to waste your time. I definitely will not assist you in such boredom.~EXIT

CHAIN
IF WEIGHT #-7~Global("SanLuxley","GLOBAL",3)~THEN BFHLAND Luxsan2
~I saw you talking to my cousin recently. Did he tell you something...about me?~
DO~SetGlobal("SanLuxley","GLOBAL",4)RealSetGlobalTimer("SanLuxleytime","GLOBAL",3000)~
==BSandr~No, he did not.~
=~...~
=~Actually he told me I had to find out for myself if I wanted to.~
==BFHLAND~And do you want to?~
==BSandr~You both try to be mysterious, do you? Well, in a playwright I can understand it...~
==BFHLAND~And in a monk?~
==BSandr~You are both new members of this group, Andrei, it would be strange if I were NOT interested to get a better acquaintance with BOTH of you.~
==BFHLAND~True, I had not looked at it that way - it seems so...practical...so normal...~
==BSandr~Still such *normal* behaviour puzzles you? (Laughs) Now you got me puzzled, too.~EXIT

CHAIN
IF WEIGHT #-7~Global("SanLuxley","GLOBAL",5)~THEN BFHLSEB Luxsan3
~He approached you already, didn't he? I know he did.~
DO~SetGlobal("SanLuxley","GLOBAL",6) RealSetGlobalTimer("SanLuxleytime","GLOBAL",3000)~
==BSandr~He? You must be talking of Andrei, right?~
==BFHLSEB~Of course- your innocent girl play is not convincing...he...he has no experience with your gender at all.~
==BSandr~Not like you, his teacher and mentor when it comes to affairs of everyday life.~
==BFHLSEB~You may call me rightfully so. I feel like a guardian to him like you just described.~
==BSandr~In romance, nobody can guard or guide another. Your heart commands under such circumstances rather than your brain.~
==BFHLSEB~An experienced teacher may still be helpful - someone like you.~
==BSandr~Do you have this impression of me? And if so, who would the pupil be, him or you?~
==BFHLSEB~Psst! He's looking our way with that suspicious glance he can put on. Let's not be seen together so obviously.~EXIT

CHAIN
IF WEIGHT #-7~Global("SanLuxley","GLOBAL",7)~THEN BFHLAND Luxsan4
~Sandrah, are you much of a family person?~
DO~SetGlobal("SanLuxley","GLOBAL",8) RealSetGlobalTimer("SanLuxleytime","GLOBAL",3000)~
==BSandr~Hm...my family only consists of my beloved father and one...hm, strangely remote grandmother. Anyway, my family history seems to play an important role in my life.~
==BFHLAND~I cannot imagine a day in my life without connection to my family.~
==BSandr~(Laughs) The one representative I came to know does not seem to go along with you so smoothly.~
==BFHLAND~Ah...Sebastian, he's...he is...he is Sebastian.~
==BSandr~(Laughs again) He is an artist, a bard. Believe me, I knew some of them - yes, they are...like that, like Sebastian.~
==BFHLAND~You seem to be quite fond of that type.~
==BSandr~Artists aim to entertain people. I like entertainment when the time is right. If you know what to expect from a bard you will not be frustrated by what you receive.~
==BFHLAND~Somehow I think Sebastian deserves a lesson from you, he's used to consider himself to be too important and irresistable.~
==BSandr~Now, it seems he is truely important to you - and at least interesting for me to have some entertainment at the proper time.~EXIT

CHAIN
IF WEIGHT #-7~Global("SanLuxley","GLOBAL",9)~THEN BFHLSEB Luxsan5
~No...you will not ask her about that!~
=~*Sebastian tries to grab Andrei's robe as the monk approaches Sandrah. With a quick move Andrei frees himself from Sebastian.*~
DO~SetGlobal("SanLuxley","GLOBAL",10) RealSetGlobalTimer("SanLuxleytime","GLOBAL",3000)~
==BFHLAND~Oh, yes, I will and you will not interfer!~
==BSandr~What is it between you once more? Andrei, you want to ask something?~
==BFHLSEB~No, he doesn't...~
==BFHLAND~I can speak for myself, Sebastian - yes, Sandrah I do...~
=~Why is a priestess of Mystra following a Bhaalspawn?~
==BSandr~So you know about <CHARNAME>'s heritage.~
==BFHLSEB~No, we don't...~
==BFHLAND~I did not until recently, but Sebastian did when he suggested to join this party.~
==BSandr~Interesting. However, before I talk to you about my motifs, I suggest you settle your little family dispute about the subject first.~
==BFHLAND~There you have it.~
==BFHLSEB~She's gone without an answer.~  EXIT