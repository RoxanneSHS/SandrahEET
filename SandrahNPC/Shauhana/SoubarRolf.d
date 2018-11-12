APPEND CBROLFSB
END

CHAIN
IF~Global("SanShauRSure","GLOBAL",1)~THEN CBROLFSB RolfShau1
~Bhaalspawn, hold it for a minute! I must talk to your half-orc companion for all our sake.~
DO~SetGlobal("SanShauRSure","GLOBAL",2)~
==CVSHAUJ~What do we have in common, murderer?~
== CBROLFSB~Call me that and worse if you like. But mind you, YOU of all creatures must know how I became such. Outcast by both our folks, hunted and hated. You know that fate, girl.~
==CVSHAUJ~I was a slave among my own kin. But now I am free and with friends.~
== CBROLFSB~Lucky one - each of us has to find a hard road to survive what our blood curses upon us. Mine was to be stronger than those who would otherwise kill me.~
==BSANDR~Is there anything that would prevent us from ending your regime of terror today?~
== CBROLFSB~Other than the fact that your half-orc friend may have been here on my side if you had not found her? Other than that she had to choose a Bhaalspawn or an outcast bandit for survival? - YES, there is.~
END
++~Then make it quick to tell us, Sureblade, it may mean your life.~+ RolfShau2
++~You would say anything to save your life at this moment. But as you have addressed Shauhana for mercy I leave it to her to decide if she wants to listen.~+ RolfShau2

CHAIN
IF~~THEN CBROLFSB RolfShau2
~There is a prophesy, Shauhana, one that involves the likes of you and me and the Clan Orcs that rejected us...~
==CVSHAUJ~You are Clan Orc? Oh, you must be - only one of us can be so strong and so capable of building up what we have destroyed today.~
== CBROLFSB~You know the story then, the story of Ghotal's successor. I declare that I believe in it and it would be the one orc I would agree to follow.~
==BSANDR~With the skills you have shown in organising this bandit army, Sureblade, you have proven yourself as a capable leader, even if your motifs and methods were wrong. Such a man provided with the right objectives could be a great general, Shauhana.~
==CVSHAUJ~If all the hints and prophesies I have listened to recently have a bit of truth in them I may be in need of such a man soon.~
== CBROLFSB~Are you...Can it be...?~
==CVSHAUJ~You mentioned Ghotal's blood, Sureblade. He was my grandfather.~
== CBROLFSB~I would swear you my allegiance with all the honor that a half-orc has, Shauhana. Spare my life and I will give it to your cause, the cause of the Clan Orcs.~
==CVSHAUJ~Sandrah, what do you say?~
==BSANDR~His reasoning is valid. He has come here by the same reasons that caused your grief in your clan. You found us - maybe now he has found what he needed to steer his course better than his fate until now. His talents as an organiser and troup leader are impressive.~
==BMINSC IF~InParty("Minsc")~THEN~I warn you Sureblade, Minsc and Boo will kick your ass to the Seven Hells if you lie to my half-orc girl!~
== CBROLFSB~I will hide myself here until the time comes that you call me to aid, Shauhana, this is my oath. I hand you the sword that gave my name for pledge. ~DO~ChangeEnemyAlly(Myself,NEUTRAL) GiveItemCreate("cbrolfsw","CVShau",1,0,0)  EscapeAreaMove("cvsha3",857,927,12)~
==CVSHAUJ~So be it. ~
END
++~We will report your defeat and your death to Soubar, Sureblade. Hide yourself well but I do not think they will take the castle under too close inspection, you should be save here.~EXIT

CHAIN 
IF~Global("RolfJoin","cvsha3",1)~THEN CBROLFSB RolfShauJoin1
~I greet you, Shauhana, Ghotal's successor, Ilneval's own daughter.~
DO~SetGlobal("RolfJoin","cvsha3",2)~
==CVSHAUJ~Rolf! You have kept your word. It was right to have trusted you. You are an orc of honour.~
== CBROLFSB~A half-orc like yourself, my queen. You were the first one ever to trust me and to give me a chance to proof my value. You - and your advisor, whom I have to thank for this second chance of a life.~
==BSANDR~Shauhana needs friends and followers like you, Rolf. You have just witnessed how things stand. Given that, will you ally with her course and task?~
== CBROLFSB~I am here already sometime, counsellor. I have acquainted myself with the situation - and with the Clan. I cannot call them my kin yet but I found they accept my skills and my devotion to Shauhana.~
=~Believe it or not, I have found a course and a reason for my skills other than destruction.~
==BSANDR~I wish you will soon find more, Rolf, a clan and a home - before such can happen we need to act to preserve this Realm.~
==CVSHAUJ~You gave me a pledge and you kept your promise, Rolf. Allow me to return your sword to you.~DO~GiveItem("cbrolfsw","CBROLFSB")~
== CBROLFSB~I will wield it in your name, my Queen.~
=~Please allow me now to return to the Clan's village where I started to train a group of swordsmen for the coming fights.~
==CVSHAUJ~Do so. And - you will be their lieutenant to lead them into battle in the Clan's name.~
== CBROLFSB~For Clan and Queen!~EXIT