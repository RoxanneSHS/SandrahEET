CHAIN
IF~Global("SanAurenB","GLOBAL",2)~THEN BSandr SanAuren1
~What exactly do I have on me that you are looking at with that intensity, Auren?~
DO~SetGlobal("SanAurenB","GLOBAL",3)~
==K#AurenB~Hey, I'm walking in the company of one of the most legendary figures of the Sword Coast, isn't that something all by itself.~
==BSandr~Sure, <CHARNAME> has gained quite some reputation for preventing a bloody war back home...~
==K#AurenB~Yes, yes, that's one story - another is Elminster's beautiful and courageous daughter I was just talking about.~
==BSandr~Auren, you need to stop that attitude. We are companions now, walking, fighting and sleeping side by side, eating our rations out of a single pot. Do not idolize us like that.~
==K#AurenB~Hopefully I can proof my worth soon, it would make things easier for me to accept your proposal.~
==BSandr~(Laughs) I assure you it will not take long. <CHARNAME> attracts danger and quests like a magnet.~EXIT

CHAIN
IF~Global("SanAurenB","GLOBAL",4)~THEN BSandr SanAuren5
~If I understood you right, Auren, you decided on the adventurer's life to earn yourself a name and reputation like those heroes you met in Beregost?~
DO~SetGlobal("SanAurenB","GLOBAL",5)~
==K#AurenB~Well described. But what about you, Sandrah? A heroine like you should be leading her own party instead of playing the role of companion, I mean, you have all it takes to do so.~
==BSandr~All but the ambition for it. I mean, I understand you quite well because one of the reasons to leave my father's house was to be recognised as an own personality and not just Elminster's daughter. However this was never reason enough by itself had it not as well been fuelled by my desire to investigate for my mother's death and the fate of the Bhaalspawn that caused it.~
==K#AurenB~That was back on the Sword Coast, still you are with <CHARNAME> till this day.~
==BSandr~We have learned that our way has much in common and our fate is entwined. And just in case you have not recognised yet, we are bound by the strongest motif of all -love.~
==K#AurenB IF~Global("SanRomPath","GLOBAL",1)~THEN~Priorities are different for everyone. So you sacrifice your own ascension to become the greatest heroine of our age for love?~
==K#AurenB IF~Global("SanRomPath","GLOBAL",2)~THEN~But...you and her...I see. Ah, do not get me wrong, I have no problem with that - what our heart decides is more important than what silly people's rules may want to dictate. So you sacrifice your own ascension to become the greatest heroine of our age for love?~
==BSandr~Sure, can there be anything more worth to pursue?~
==K#AurenB~Maybe I have not yet found the one who would be worth that sacrifice for me. Or maybe you can make such choices as you already have everything else one can desire. I have to think about that for a while.~EXIT