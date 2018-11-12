CHAIN
IF WEIGHT #-2~Global("SanAranH","GLOBAL",3)~THEN C-ARANB Sanheal
~Ah, good! Wish we had some like yours in th' Cloakwood Campaign when I was in th' Fist.~
DO~SetGlobal("SanAranH","GLOBAL",4)~
==BSandr~You had no healers?~
==C-Aranb~Too few - but on top of that they wouldn't be in the middle of the battle like you. Girl, few of your gender can fight like that. And even if, they weren't in th' Flaming Fist.~
==BSandr~Aran, <CHARNAME> and me were fighting against the Flaming Fist most of the time we spent at Baldur's Gate, even if against our will.~
==C-Aranb~Hate to say it but I guess we might've lost that battle. Glad I wasn't there any more.~
==BSandr~We are on the same side now.~
==C-Aranb~Good to know, really good to know.~EXIT

CHAIN
IF WEIGHT #-2~Global("SanAranH","GLOBAL",5)~THEN C-ARANB Sanwine
~Hey, Sandrah, here's a really good wine tonight, come move over, I know you like that stuff.~
DO~SetGlobal("SanAranH","GLOBAL",6)RealSetGlobalTimer("SanAranT","GLOBAL",5000)~
==BSandr~I was not aware you had a taste for it, Aran. I thought quantity means more to you than quality.~
==C-Aranb~In wine 'n' in gals, yeah, maybe. But try a lot of both an' you find there's good 'uns and bad 'uns all by yourself.~
==BSandr~(Takes a sip from the offered glass.) Maybe I was prejudiced. This is a good one.~
==C-Aranb~Like th' gal that keeps me company...~EXIT

CHAIN
IF WEIGHT #-2~Global("SanAranH","GLOBAL",7)~THEN C-ARANB Sanjob
~Hope I haven't challenged your job here in that troupe, Sandrah gal.~
DO~SetGlobal("SanAranH","GLOBAL",8)RealSetGlobalTimer("SanAranT","GLOBAL",5000)~
==BSandr~Which *job* do you refer to, Aran?~
==C-Aranb~Thought you're keepin' accounts in that mighty book of yours.~
==BSandr~Oh, no, that job may be all for you. This tome here holds a lot of useful knowledge and has helped us already quite a bit in our past adventures.~
==C-Aranb~Aye, useful lore's a good thing - I mean, if ya can trust the source. There's an awful lot of windbag storytellers 'round.~
==BSandr~My father has written most of it and I complete it with my own observations.~
==C-Aranb~An' yours father's been adventurin', yes? Hey, maybe I met him even?~
==BSandr~Elminster.~
==C-Aranb~Mystra's Doubtful Virginity, he's your father? ~
==BSandr~Yes.~
==C-Aranb~Huh - that tome's def'nitly worth its weight.~EXIT

CHAIN
IF WEIGHT #-2~Global("SanAranH","GLOBAL",9)~THEN C-ARANB Sanbunk
~I see you dig girls and men alike, Sandrah. Per'nally I prefer girls only. But knowin' both - which ones do you like better?~
DO~SetGlobal("SanAranH","GLOBAL",10)RealSetGlobalTimer("SanAranT","GLOBAL",5000)~
==BSandr~The one willing to suit my needs tonight.~
==C-Aranb~Ha, say no more...~DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~EXIT


INTERJECT_COPY_TRANS C-Aranb 54 Sanaranhaer
== C-ARANB IF ~InParty("CVSandr")~THEN~Enigmatic Sandrah. they say in ol' Times o' Trouble there was goddesses walkin' round here.~
== BHAERDA IF ~InParty("CVSandr")~THEN~Seems AO left one of them here for us.~
END

INTERJECT_COPY_TRANS C-Aranj 553 Sanaranud
== C-ARANJ IF ~InParty("CVSandr")~THEN~Sandrah gal seems to be th' only one who's no trouble with this place.~
== CVSandrJ IF ~InParty("CVSandr")~THEN~I am not really enjoying myself here. We must stand together and give each other strength.~
== C-ARANJ IF ~InParty("CVSandr")~THEN~Th' strength of one of theirs matron mothers, yeah. Looks like you really fool 'em into thinkin' you're one. Mystra's Soaked Panties, we should be outa here before th' hype's up.~
END