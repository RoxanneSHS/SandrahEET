CHAIN
IF WEIGHT #-2~Global("SanAdrianH","LOCALS",3)~THEN BRH#ADR Heal
~Mystra grants you powers that Azuth, her servant, does not provide to me.~
DO~SetGlobal("SanAdrianH","LOCALS",4)~
==BSandr~No worry, I will share it with my companions best I can. It is not a skill I possess just for my own benefit.~
==BRH#ADR~If you think that makes you my superior, you err.~
==BSandr~(Puzzled) We are companions and even if we decided to follow <CHARNAME>'s quest, I see us all at equal terms within this group.~
==BRH#ADR~Uh? Her majesty has spoken.~DO~IncrementGlobal("SanAdrianL","Global",1)~EXIT

CHAIN
IF WEIGHT #-2~Global("SanAdrianA","LOCALS",1)~THEN BRH#ADR Azuth
~Azuth, a dark spot on your goddess' glorious mantle.~
DO~SetGlobal("SanAdrianA","LOCALS",2)~
==BSandr~Or a symbol of her flexibility and openess.~
==BRH#ADR~Some say you resemble her in many aspects.~
==BSandr~She knows more about us mortals than any other god or goddess - and she knows what it means to be woman.~
==BRH#ADR~Ah, maybe I shall start to seek the woman in her priestess as well...~
==BSandr~Some say that Mystra and Azuth once were lovers - even if that was an older incarnation of the goddess.~DO~IncrementGlobal("SanAdrianL","Global",1)~EXIT

CHAIN
IF WEIGHT #-2~Global("SanAdrianR","LOCALS",1)~THEN BRH#ADR Redwi
~For some reason you seem to despise the red wizards more than your goddess herself would allow.~
DO~SetGlobal("SanAdrianR","LOCALS",2)~
==BSandr~Yes.~
==BRH#ADR~Willing to reveal your reason for that?~
==BSandr~You do not love them either, willing to reveal your reason for that?~
==BRH#ADR~I asked first~
==BSandr~But you are unwilling to pay the price of admission, I presume.~
==BRH#ADR~Maybe I wasn't *that* interested...~DO~IncrementGlobal("SanAdrianL","Global",1)~EXIT

CHAIN
IF WEIGHT #-2~Global("SanAdrianC","LOCALS",1)~THEN BRH#ADR Commo
~So it seems that overall we hate the same things, Sandrah.~
DO~SetGlobal("SanAdrianC","LOCALS",2)~
==BSandr~It does not necessarily mean that we would love the same things, though.~
==BRH#ADR~I think I've seen one or two we might share.~
==BSandr~Yes?~
==BRH#ADR~We both represent aristocracy in this rag tag party, don't we.~
==BSandr~I am a merchant's daughter's child, if you insist to know details of my heritage.~
==BRH#ADR~Do you take me for a fool? I know that Waterdeep's rulers love to veil their faces and hide their identity.~
==BSandr~I neither veil my face nor hide who I am. I am the offspring of commoners and I am not ashamed of that nor see any reason to be. Nobility may have other sources than heritage and heritage has to prove itself before I would call it noble.~
==BRH#ADR~You either have reasons to stay incognito or you are a really proud woman who has emancipated herself from such social distinctions like aristocracy or rank.~
==BSandr~Would that be the common thing we might have you were seeking?~
==BRH#ADR~I have no problem to see you as my equal, if that's what you meant.~
==BSandr~It is not what I meant - but still worthwhile to know.~DO~IncrementGlobal("SanAdrianL","Global",1)~EXIT

CHAIN
IF WEIGHT #-2~Global("SanAdrianY","LOCALS",1)~THEN BRH#ADR Cyric
~Sandrah. You have not spoken much with me recently.~
DO~SetGlobal("SanAdrianY","LOCALS",2)~
==BSandr~I still have to digest that you once followed Cyric.~
==BRH#ADR~Good you said *once*...still...I did not follow the mad Prince of Lies, I just made a living by working for his followers - if that makes a difference for you.~
==BSandr~It makes a world of a difference. There may have been circumstances that forced you to do certain things to make a living - or to survive, it is quite different from conviction.~
==BRH#ADR~I assume that we share a common attitude towards Cyric - you hate him just like I do, right?~
==BSandr~Yes.~
==BRH#ADR~I can't imagine you worked for him...so why the hatred?~
==BSandr~(Hesitant) I am very fond of my grandmother...~
==BRH#ADR~She had to suffer from him, he?~
==BSandr~He...he is my grandfather.~DO~IncrementGlobal("SanAdrianL","Global",1)~EXIT

//Being Evil
CHAIN
IF WEIGHT #-2~Global("SanAdrianL","Global",6)~THEN BRH#ADR Final
~My evil character seems to repel you, Sandrah.~
DO~SetGlobal("SanAdrianL","Global",7)~
==BSandr~Your contributions to our group have not been that *evil* in my perspective.~
==BRH#ADR~I was about sure you'd say something like that. Maybe you just don't care about my conduct at all.~
==BSandr~I do not care if others call you evil. You are an interesting man of many facets, Adrian, that is all that counts for me. Some of those aspects may be judged as evil by some who do not see the man as a whole.~
==BRH#ADR~Do you know I dreamt about you recently - not that you're the woman of my dreams...or my nightmares...~
==BSandr~You mean that certain kind of dreams that men have of women?~
==BRH#ADR~Yeah, hormones or such.~
==BSandr~(Laughs) If you think I am offended to be subject of your fantasies, you are wrong.~
=~If you want to find out the difference between your dream and reality I will not fight you too hard.~
==BRH#ADR~Good to know I'm safe from your hammer should I silently slip into your bedroll tonight to find out...~DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~EXIT


EXTEND_BOTTOM RH#ADRJ 1874
IF~InParty("CVSandr")~THEN REPLY~What do you think of Sandrah?~DO~SetGlobal("AskSanPid","LOCALS",1)~GOTO JuSandr
END

APPEND RH#ADRJ
IF~~THEN BEGIN JuSandr
SAY~She's a mysterious as Mystra herself and still very much real. I'm an elitist bastard, but I admit she's among the very few I can respect. ~
IF~~THEN REPLY~Once in while we seem to see things the same, my, what a change.~ EXIT
IF~~THEN REPLY~Did you really say that - or are you a doppelganger?~EXIT
END
END