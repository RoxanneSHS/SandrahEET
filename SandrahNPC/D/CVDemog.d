BEGIN CVDemog

IF~OR(2)!InParty("CVSandr") StateCheck("CVSandr",CD_STATE_NOTVALID)~THEN BEGIN fail0
SAY~You have come in vain, mortal. Only the young priestess of Mystra can come to the market place to deal with Demogorgon.~
IF~~THEN EXIT
END

IF~!PartyHasItem("AlzaHrt1") InParty("CVSandr") !StateCheck("CVSandr",CD_STATE_NOTVALID)~THEN BEGIN fail1
SAY~You have come in vain, young goddess. You come with empty hands to the market place.~
IF~~THEN EXIT
END

CHAIN
IF~PartyHasItem("AlzaHrt1") InParty("CVSandr") !StateCheck("CVSandr",CD_STATE_NOTVALID)~THEN CVDemog succ
~You impress me, young goddess. I am even willing to forgive you your intrusion into my domain and the slaughtering of some useless minions in that process.~
DO~SetGlobal("SanHaerRel1","GLOBAL",34)~
==CVSandrJ~I have freed you of two of the worst troublemakers. They must have been a nuisance even down here.~
==CVDemog~IMPERTINENT...and amusing, that is what you are. And fearless.~
==CVSandrJ~I rely on a power that can overcome even the barriers that you put around your realms, Demogorgon.~
==CVDemog~Ha, no such power exists. Not even your head fool AO can grant you such.~
==CVSandrJ~I do not need any god to provide me with it, demon. It is in my own heart and soul and it's the greatest force in the Multiverse and it is unlikely that you possess it.~
==CVDemog~What?~
==CVSandrJ~I am talking about the power of love.~
==CVDemog~The power of...aaargh, I cannot speak that cursed word! Anyway, you have done me a favour and you have acted according to the rules of the Nine Hells. The thief may be yours again. Give me that heart.~
==CVSandrJ~Here it is...just to satisfy my curiosity, tell me, what was my tiefling able to steal from you?~
==CVDemog~Eh...now, why not tell you? He stole the virginity of my favourite Cambion girl...~DO~TakePartyItem("SanHaer") TakePartyItem("AlzaHrt1") ~
==CVSandrJ~Oh, you fool, hahaha, that is impossible.~
==CVDemog~What?~
==CVSandrJ~Trust me, Demogorgon, Haer'Dalis does not need to steal what any woman is willing to give to him anyway. I must know, I am one myself as you may perceive without doubt.~
==CVDemog~Hmm. Beheading her was justified then...as if I needed a justification.~
=~Now take him and begone quickly before I find a new reason to keep all of you.~DO~Activate("Haerdalis") Wait(6) ReallyForceSpell(Myself,DRYAD_TELEPORT)~EXIT
