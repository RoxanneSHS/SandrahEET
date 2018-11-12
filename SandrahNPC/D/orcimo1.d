BEGIN orcimo1

CHAIN
IF ~Global("OrcimoTalk","GLOBAL",1)~THEN orcimo1 Ini1
~Good ---- ~
=~Eh --- Not good, this Red Head.~
DO~SetGlobal("OrcimoTalk","GLOBAL",2)~
==Bimoen ~Yes, me Red Head. Mighty angry Red Head, orc! And even more angry Red Head if ya don't tell me of my Henning's whereabout quickest.~
== orcimo1 ~You heal Garrtik just to torture him more.~
==Bimoen ~Just talk and keep telling us what you know and we may not torture you. Maybe.~
== orcimo1 ~Human-man with Knowlod gone again from here. Left Garrtik to die. Boss here not like orcs with human-man. Boss here think that Red Head will come for boy and find camp and all. Told orcs move on.~
==BSANDR~Tazok has told Knowlod the way to the Cloakwood mines then?~
== orcimo1 ~Not torture Garrtik, you know all already.~
==BSANDR~What has Tazok told about the way to the mines? If you tell us, orc, it may be that Red Head spares your life.~
== orcimo1 ~Garrtik not know way, only Knawlod know.~
==Bimoen ~Oh, damn and damn. Is there never any good news for us?~
== orcimo1 ~Knowlod and Boss here go in big tent to look at map for way to mines.~
==BSANDR~A map in Tazok's tent? That is some good news, Imoen, what do you think?~
==Bimoen ~Why are we still standing here, <CHARNAME>, no wasting time anymore, let's get that map.~
END
++ ~What about that orc? If we let him live, he will warn the others.~+ Ini2

CHAIN
IF~~THEN orcimo1 Ini2
~No tell. Knowlod knows you on trail without Garrtik need tell.~
==Bimoen ~<CHARNAME>, we healed him just a minute ago, we shouldn't kill him now. We are no orc monsters after all. He is right, everybody already knows we are hot on their trail. Just let us go to the tent quickest.~
== orcimo1 ~Red Head not monster. Garrtik go east, swear, always east. Never see again, swear.~DO~EscapeArea() ~
== BSANDR~(Sandrah has put her arm around Imoen's shoulder as her friend starts to weep unstoppable.) Psst, Imoen, it will all be good. They will not escape us.~
==Bimoen ~Oh, Sandrah, it is so unfair. We are the adventurers, fine. But why must innocents suffer because of us. Henning has done nothing never to anybody.~
== BSANDR~We have not chosen this road, Imoen, remember. <CHARNAME> was forced to follow this life against <PRO_HISHER> will. And we carry <PRO_HISHER> burden with <PRO_HIMHER>, right?~
==Bimoen ~Yes, right, it's right for me and I don't complain. Only they needed to keep Henning out of this.~
== BSANDR~Hey, come on, Imoen the Magnificent! We will teach them this lesson, so they will never forget it.~
==Bimoen ~HA, orcs, now comes a lesson you will never forget!~DO ~AddexperienceParty(5000)~
EXIT