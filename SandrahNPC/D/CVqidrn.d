BEGIN CVQidrn

CHAIN
IF~OR(2) Global("SanQuiNash","BG5404",1) Global("SanQuiNash","BG1903",1)~THEN CVQidrn FirstV
~ Greetings, you need not venture further, surfacers. You have found what you needed and may continue your own quest now.~
DO~SetGlobal("SanQuiNash","BG5404",2) SetGlobal("SanQuiNash","BG1903",2)~
==CVSandrJ~ You are not in league with those drow we met I presume?~
==CVQidrn~We have persued those intruders from the Underdark ourselves. You can see we are not following Lolth's path.~
==CVSandrJ~ I can see dark and surface elves in union among your ranks. Who are you, priestess?~
==CVQidrn~Believe me if I say that we both have a common goal.~
=~For today accept my oath as a servant of Eilistraee that we will seal and guard the path from below that was used by the invaders. Your mines will be save from now on.~
END
++~Drow is drow - and only a dead drow is a good drow.~+FirstVh
++~Eilistraee?~+FirstVf

CHAIN
IF~~THEN CVQidrn FirstVh
~Your heritage requires strict control, Bhaalspawn. I expect the counselor at your side will look into that. We will do what I have promised. There is no need for hostility today.~
==CVSandrJ~Stay your wrath, <CHARNAME>. A priestess of Eilistraee is not a foe regardless of her race.~ 
==CVQidrn~It was good to see you, priestess. Go in peace, with Eilistraee's blessing.~DO~AddexperienceParty(3000) ~EXIT

CHAIN
IF~~THEN CVQidrn FirstVf
~ I expect the counselor at your side will explain the nature of my goddess to you. We will do what I have promised and depart peacefully now.~
==CVSandrJ~I assure you of our full trust in your words, my friend.~ 
==CVQidrn~It was good to see you, priestess. Go in peace, with Eilistraee's blessing.~DO~AddexperienceParty(12000)~EXIT



