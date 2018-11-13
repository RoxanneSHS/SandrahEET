CHAIN
IF WEIGHT #-11~Global("SanQualHeal","GLOBAL",3)~THEN BQUAYL SanHeal
~I want to thank you. Shake a paw. My intellect is as big as your help. Because of you I am hale and on the road again, so I will meet new people and perhaps visit old friends.~
DO~SetGlobal("SanQualHeal","GLOBAL",4)RealSetGlobalTimer("QuaySanInt","LOCALS",600)~
==BSandr~As a cleric you chose a different path from mine, you have neglected the healing aspect of our gift, it seems.~
==BQUAYL~In case you have missed it, dumb girl, I am the greatest gnomish illusionist on Toril. Healing can be left to the less talented.~
==BSandr~Looks to me that it is a skill that is in higher demand these days than *illusions* - those manifest by themselves in some brains...~
==BQUAYL~Pfah! I thought you were smarter than that, you donkey. Now leave me be! This talk is only taxing my brain, which is better employed for more important things.~EXIT

CHAIN
IF WEIGHT #-11~Global("SanQualHeal","GLOBAL",5)~THEN BQUAYL SanSong
~*As so often on a nice sunny day Sandrah walks beside you humming one of her melodious tunes.*~
=~*Quayle picks up a simple blade of grass and plays along on it. His tone is pure and calm. It it reminiscent of the whispering of the forest.*~
DO~SetGlobal("SanQualHeal","GLOBAL",6)RealSetGlobalTimer("QuaySanInt","LOCALS",1000)~
==BSandr~That is very handy, Quayle, a musical instrument that can be found where ever you go.~
==BQUAYL~Another proof of the Ever Intelligent Quayle.~
==BSandr~Can you show me how you do it?~
==BQUAYL~*Quayle selects a blade of grass and shows her how to hold it. He uses two hands. The blade is between his thumbs.* ~
= ~And now we try to blow. You should remember that you have to control the strength of blowing. This will change the type of melody!~
==BSandr~*Sandrah's melody cuts the air. It is not a good and pure tone, but you recognise her melody nonetheless*~
=~Well, with a little more practice it will sound great.~
==BQUAYL~The pure genius of a great brain shows in every detail.~
==BSandr~I first heard this from a little shepherd boy outside of Waterdeep but failed to ask him for the trick back then.~
==BQUAYL ~This is stupid. Shepherd boys...paah, Shut up, roach!~
==BSandr~An example of practical intelligence nonetheless.~
==BQUAYL ~Hah! So come on. Standing in one place is so... brainless!  You've got charming eyes...! Oh, why I am saying this... ~EXIT

CHAIN
IF WEIGHT #-11~Global("SanQualHeal","GLOBAL",7)~THEN BQUAYL Sanenvy
~Say, young one, your goddess of all magic supplies you with her gifts quite generously.~
DO~SetGlobal("SanQualHeal","GLOBAL",8)RealSetGlobalTimer("QuaySanInt","LOCALS",1000)~
==BSandr~Right, it is a natural talent, I guess, which I was able to channel and focus by my training - and of course the constant use I have of those skills since I travel with <CHARNAME>.~
==BQUAYL ~I was pretty sure it was that and not some overhelming intellectual capacity that enables your spellcasting.~
==BSandr~Correct - my spellcasting is almost instinctively. Which allows me to use my *overwhelming intellectual capacity* for supporting the group in other aspects.~
=~That reminds me, I should not waste my *overwhelming intellectual capacity* for discussions with self-centred gnomes of questionable abilities, be it intellectual or arcane.~
==BQUAYL ~Ah...ah..oh, arrogant wench!!~EXIT
