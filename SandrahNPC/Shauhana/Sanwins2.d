BEGIN Sanwins2

CHAIN
IF~Global("CVWinsSh20","CVSH20",2)~THEN Sanwins2 helloAgain
~So we meet once again in a desolate place, <CHARNAME>.~
DO~SetGlobal("CVWinsSh20","CVSH20",3)~
==CVNarga~That cute little cleric girl isss really asss exquisite asss the master hasss promised.~
==CVSandrJ~The *master* must have promised a lot - before he made his urgent departure seeing that things down here did not work out as planned.~
==Sanwins2~I had already lost everything a man can possibly lose when we met last. The master restored me against my will and would not let me go again. So what, I am still a man with nothing to lose.~
==CVNarga~And a man wisss everything to win, now the massster hasss let thisss place to usss.~
==CVSandrJ~I wonder what they will do with you in the Nine Hells with you drooling constantly into the hellfire. Well, you will find out in some minutes.~
==CVNarga~You will learn to like it, to love it, my lovesssslave. There isss no escape from here for you.~
==Sanwins2~Perverted slobbering fool, she and <CHARNAME> have ended my disciple Sarevok and now the master himself has chosen to leave this place. They are our end, Narghal Rasz - and I welcome them.~ DO~Enemy()~EXIT
