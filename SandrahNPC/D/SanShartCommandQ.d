BEGIN CVShacom
BEGIN CVWDBoss

IF~AreaCheck("CVRoa1")~THEN BEGIN Hello1
SAY~Look who's coming to dinner. Nice surprise. The paladin girl is mine, friends, haha.~
IF~~THEN REPLY~None of the girls will be yours, scoundrel.~EXIT
IF~~THEN REPLY~All that will be yours tonight are our blades. In your flesh!~EXIT
END

CHAIN
IF~Global("SanSharCom","GLOBAL",2) AreaCheck("CVElm5") ~THEN CVShacom WestGate1
~...as cowardish as this snobbish Commander in his fine house over there!!~
DO~SetGlobal("SanSharCom","GLOBAL",3)~
==WDWatch~If the commander's rejected you why should we follow you?~
==WDWatch~You don't look like not much coin to me.~
==CVShacom~Male idiots. Wait until that old Khattark's gang is too strong and will terrorize the streets again...Wait!~
=~Hey you, adventurers and well armed, you come just in time.~
==CVSandrJ~Shar-Teel?~
==CVShacom~Pussycat...<CHARNAME>...never thought I'd say it but I'm glad to see your faces, really.~
==CVSandrJ~It sounded like you have a little problem here, Wildcat?~
==CVShacom~It's not ME who has the problem, It's THEM. The militia and their stubborn over-fed MALE commander fail to understand the threat that is on this town again.~
==CVSandrJ~This is my home town, so be sure that I care. Someone mentioned Khattark but he is killed by our own hands long ago, along with most of his followers.~
==CVShacom~Most, that's the point, Pussycat. Enough were left and new are recruited. As far as I found there is a new strong hand in town, some half-orc who seized the chance of the vacancy here in Waterdeep.~
END
++~As you have investigated the case already, what do you propose, Shar-Teel?~+ WestGate2
++~I know Sandrah well enough - we will not leave Waterdeep without having solved the issue. So what do you propose, Shar-Teel?~+ WestGate2

CHAIN
IF ~~THEN CVShacom WestGate2
~The trail leads to an abandoned wood keeper's shack near Old Waterdeep Road...~
==CVSandrJ~We know the place - it used to be one of Khattark's old hideouts.~
==CVShacom~There is supposed to be some gathering there this eve, all the new important guys and the boss will be there if my informants are to be trusted.~
==CVSandrJ~Are they trustworthy?~
==CVShacom~(Laughs harshly) They know what to fear if they fool me...~
=~Anyway, can I count on your presence at the place after dark? I will await you to blow them a strike that will free Waterdeep of this new threat.~DO~EscapeArea()~
END
++~Count on us, we will be there.~EXIT
++~Don't dare to start the fun without us.~EXIT

CHAIN
IF~Global("SanSharCom","GLOBAL",3) AreaCheck("CVRoa1") ~THEN CVShacom Hut1
~Good you have come. We will not have to wait long. Some are already inside the hut.~
DO~SetGlobal("SanSharCom","GLOBAL",4)SetGlobal("ShaFollow","CVRoa1",1) RealSetGlobalTimer("Wave","CVRoa1",50)~
==CVSandrJ~We will watch out with you.~
==CVShacom~Let's seek a place where we can observe the hut's door. It won't be too long.~EXIT

CHAIN
IF~Global("SanSharCom","GLOBAL",7) AreaCheck("CVRoa1") ~THEN CVShacom Hut2
~I will return now to Waterdeep and have a few words with that arrogant Commander of the Forces for his doing absolutely nothing in this case.~
DO~SetGlobal("SanSharCom","GLOBAL",8) SetGlobal("ShaFollow","CVRoa1",2)~
==CVSandrJ~Good luck with those tinheads. Do you really want to waste your time with those administrators?~
==CVShacom~He was a renown fighter once, I heard. Must have gone a bit rusty.~
END
++~I am sure he will be up and running again after your treatment.~EXIT
++~Don't forget to ask him for some reward for our services.~EXIT
++~Why don't you join forces with us. We were a good team in this battle already?~+ Hut3

CHAIN
IF~~THEN CVShacom Hut3
~At a time I would've followed your invitation, <CHARNAME>. You run a good and also profitable course. But I left the Sword Coast to find some more stable occupation for a time. ~
==CVSandrJ~You have proven your worth today. Maybe the stubborn Commander has some use for you. If you bite granite with him ask for Elminster's house. My father would be helpful to open some doors all over town.~
==CVShacom~We will see each other again, I'm sure, when you come through Waterdeep on your quests.~EXIT

CHAIN
IF WEIGHT #-2~Global("SanSharCom","GLOBAL",1)~THEN WATCH SharQStart1
~Watch out, they say that Khattark himself has returned and threatens peace in Waterdeep again.~
DO~SetGlobal("SanSharCom","GLOBAL",2)~
==CVSANDRJ~We have destroyed him and most of his gang long ago. If what you say is true it must be some imposter.~
==WATCH~Ah, you must be <CHARNAME> then, the one who did the deed.~
END
++~Khattark was destroyed beyond any chance of resurrection, so much is for sure.~+ SharQStart2
++~Maybe some of his gang survived and YOU let them come to power once more.~+ SharQStart2
++~What do I care...it's your duty to keep up safety here, isn't it?~+ SharQStart2

CHAIN
IF~~THEN WATCH SharQStart2
~Should you have any interest in the matter - there is that incredible fighter lady from the Sword Coast currently trying to motivate the Commander or other guys she can recruit to help  her track down the gang.~
==CVSANDRJ~A fighter from the Sword Coast? Maybe someone we know <CHARNAME>! ~
=~Where can she be found?~
==WATCH~I saw her passing by on the way to the West Gate and the Commander's house just half an hour ago.~EXIT