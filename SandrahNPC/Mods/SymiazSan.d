APPEND CVSANDRJ
END

//Simyaz if not Salinithyl
INTERJECT_COPY_TRANS UDSIMYAZ 20 SanprophGyth1
== UDSIMYAZ IF ~InParty("CVSandr") Global("SanProph","GLOBAL",0)~ THEN~ But before the warder calls us I must talk to you, Sandrah, daughter of Khalindra and Elminster. Come aside with me.~
== CVSANDRJ IF ~InParty("CVSandr") Global("SanProph","GLOBAL",0)~ THEN~ You are not mistaken even though I have no idea how you come to know me. ~
== UDSIMYAZ IF ~InParty("CVSandr") Global("SanProph","GLOBAL",0)~ THEN~ I will explain - from priest to priest if you trust to come aside with me for a moment.~
==CVSANDRJ~ I have no reason to mistrust you.~
==UDSIMYAZ~ Come, it is not for all ears what I will tell you.~
DO~ SetGlobal("SanProph","GLOBAL",5) StartCutSceneMode() StartCutScene("Sahui7")~
END

INTERJECT_COPY_TRANS UDSIMYAZ 22 SanprophGyth2
== UDSIMYAZ IF ~InParty("CVSandr") Global("SanProph","GLOBAL",0)~ THEN~ But before the warder calls us I must talk to you, Sandrah, daughter of Khalindra and Elminster. Come aside with me.~
== CVSANDRJ IF ~InParty("CVSandr") Global("SanProph","GLOBAL",0)~ THEN~ You are not mistaken even though I have no idea how you come to know me.~
== UDSIMYAZ IF ~InParty("CVSandr") Global("SanProph","GLOBAL",0)~ THEN~ I will explain - from priest to priest if you trust to come aside with me for a moment.~
==CVSANDRJ~ I have no reason to mistrust you.~
==UDSIMYAZ~ Come, it is not for all ears what I will tell you.~
DO~ SetGlobal("SanProph","GLOBAL",5) StartCutSceneMode() StartCutScene("Sahui7")~
END

INTERJECT_COPY_TRANS UDSIMYAZ 36 SanprophGyth3
== CVSANDRJ IF ~InParty("CVSandr") PartyHasItem("Misc8u")~THEN~ There is really no reason for hostility, priestess. The Elder Brain is no more as we defeated the brain eaters once we had commonly surprised the Illithids and escaped the arena. We are sufficiently equipped and have no reason to withhold a holy artefact from you. <CHARNAME>, I suggest to give them what they need and fought for and go our separate ways in peace.~
== UDSIMYAZ IF ~InParty("CVSandr") PartyHasItem("Misc8u")~THEN~You do your race much honor, Sandrah, let us hear if <CHARNAME> is of the same nature.~
END

//Simyaz if not Salinithyl
CHAIN
IF WEIGHT #-13~ Global("SanProph","GLOBAL",5)~ THEN UDSIMYAZ GythProf1
~ You are part of a prophesy my ancestors and me have known for a long time. I knew you would come and I recognised you among your company immediately.~
DO~SetGlobal("SanProph","GLOBAL",6)~
==CVSANDRJ~ Please, go on.~
==UDSIMYAZ~ I know who you are and who was before you in your line from the *Book That Writes Itself* which we had to consult for my own line when I wanted to become a priest.~
==CVSANDRJ~ Slowly, please. The book you talk about, it is a record of the heritage of all of us?~
==UDSIMYAZ~ You do not know it? Maybe you had not a teacher like I had in my hive? The Book records the Gods and their servants since the beginning and tells you of all those that were before. It writes itself with every change in the pantheon and the priests that serve. I was born in troubled times and the priests who envied me made doubt to my origin and my right to belong among the ranks. The book confirmed I was a rightful adept.~
==CVSANDRJ~And how do you know about me then?~
==UDSIMYAZ~ You are on the same page as me along with those before you. Your fate is told with mine, as you are entwined with me by the prophesy that has come true today with your being here.~
==CVSANDRJ~ My fate. The book tells you that as well, not only the past things?~
==UDSIMYAZ~ No - but sometimes where you come from tells you were you will go.~
==CVSANDRJ~ That is a valid observation.~
==UDSIMYAZ~ You come directly from the one you serve and her line. Your path therefore is clear.~
==CVSANDRJ~ You probably only had a short glance at my entries in the book, being more interested in your own record, I assume. I am only the grandchild of Mystra and I am that by my father Elminster, not by the motherline. Anyway, thank you for telling me. I will beg to <CHARNAME> to aid your people in your goal.~
==UDSIMYAZ~ I err not but you may not know all about yourself as you have not seen the Book. Maybe you will see one day.~
==CVSANDRJ~ Is it possible for me to see it?~
==UDSIMYAZ~ It is found in a different place for every seeker who has a right to see. I cannot help you to find your path to it. This is all I can tell you, I know not more.~
==CVSANDRJ~ Thank you for sharing it with me, Simyaz.~
==UDSIMYAZ~ I like how you speak my name, Sandrah, daughter of Khalindra and Elminster.~
DO~ StartCutSceneMode() StartCutScene("Sahui6")~EXIT
 