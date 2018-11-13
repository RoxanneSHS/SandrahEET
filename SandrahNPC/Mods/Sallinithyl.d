ADD_TRANS_TRIGGER SAHPR4 2
~!InParty("CVSandr")~

EXTEND_BOTTOM SAHPR4 2
IF ~InParty("CVSandr")GlobalLT("SanProph","GLOBAL",2)~THEN GOTO Prophki
IF ~InParty("CVSandr")GlobalGT("SanProph","GLOBAL",2)~THEN GOTO 3
END

CHAIN 
IF~~THEN SAHPR4 Prophki
~May Sekolah hunt you to your dark grave in the ocean's depth, except for you, Priestess, even if you failed this time to prevent what your companions foolishly did.~
DO~SetGlobal("SanProph","GLOBAL",2) SetGlobal("RebelsHostile","AR2300",2) SetGlobal("Hostilecity","GLOBAL",2)SetGlobal("LeavingSahuagin","AR2300",0)~
=~Wait, Sandrah!~
==CVSANDRJ IF~!InParty("O#Xan")~THEN~Yes, Sallinithyl?~
==CVSANDRJ IF~InParty("O#Xan")~THEN~Yes, Sallinithyl?~DO~SetGlobal("O#XanKilledPrinceSahuagin1","GLOBAL",1)~
==SAHPR4~You speak my name well for one of your race, Sandrah of Waterdeep, daughter of Elminster and Khalindra.~
==CVSANDRJ~You are not mistaken even though I have no idea how you come to know me.~
==SAHPR4~I will explain - from priestess to priestess if you trust to come aside with me for a moment.~
==CVSANDRJ~I have no reason to mistrust you.~
==SAHPR4~Come, it is not for all ears what I will tell you.~
DO~StartCutSceneMode() StartCutScene("Sahui9")~EXIT

CHAIN
IF WEIGHT #-2~Global("SanProph","GLOBAL",1)~THEN  SAHPR4 Proph1
~Wait, Priestess!~
DO~SetGlobal("SanProph","GLOBAL",2)~
==CVSANDRJ~Yes, Sallinithyl?~
==SAHPR4~You speak my name well for one of your race, Sandrah of Waterdeep, daughter of Elminster and Khalindra.~
==CVSANDRJ~You are not mistaken even though I have no idea how you come to know me.~
==SAHPR4~I will explain - from priestess to priestess if you trust to come aside with me for a moment.~
==CVSANDRJ~I have no reason to mistrust you.~
==SAHPR4~Come, it is not for all ears what I will tell you.~
DO~StartCutSceneMode() StartCutScene("Sahui9")~EXIT

CHAIN
IF WEIGHT #-3~Global("SanProph","GLOBAL",2)~THEN  SAHPR4 Proph2
~You are part of the prophesy my mother Senityili and me have known for a long time. I knew you would come and I recognised you among your company immediately.~
DO~SetGlobal("SanProph","GLOBAL",3)~
==CVSANDRJ~Please, go on.~
==SAHPR4~I know who you are and who was before you in your line from the *Book That Writes Itself* which we had to consult for my own line when I wanted to become a priestess.~
==CVSANDRJ~Slowly, please. The book you talk about, it is a record of the heritage of all of us?~
==SAHPR4~You do not know it? Maybe you had not a teacher like my mother in your swarm? The Book records the Gods and their servants since the beginning and tells you of all those that were before. It writes itself with every change in the pantheon and the priests that serve. I was born in troubled times and the priestesses who envy my mother made doubt to my origin and my right to belong among the ranks. The book confirmed I was a rightful adept.~
==CVSANDRJ~And how do you know about me then?~
==SAHPR4~You are on the same page as me along with those before you. Your fate is told with mine, as you are entwined with me by the prophesy that has come true today with your being here.~
==CVSANDRJ~My fate. The book tells you that as well, not only the past things?~
==SAHPR4~No - but sometimes where you come from tells you were you will go.~
==CVSANDRJ~That is a valid observation.~
==SAHPR4~You come directly from the one you serve and her line. Your path therefore is clear.~
==CVSANDRJ~You probably only had a short glance at my entries in the book, being more interested in your own record, I assume. I am only the grandchild of Mystra and I am that by my father Elminster, not by the mother-line. Anyway, thank you for telling me. I will beg to <CHARNAME> to aid your people in your goal.~
==SAHPR4~I err not but you may not know all about yourself as you have not seen the Book. Maybe you will see one day.~
==CVSANDRJ~Is it possible for me to see it?~
==SAHPR4~It is found in a different place for every seeker who has a right to see. I cannot help you to find your path to it. This is all I can tell you, I know not more.~
==CVSANDRJ~Thank you for sharing it with me, Sallinithyl.~
==SAHPR4~I like how you speak my name, Sandrah, daughter of Khalindra and Elminster.~
DO~StartCutSceneMode() StartCutScene("Sahui8")~EXIT

