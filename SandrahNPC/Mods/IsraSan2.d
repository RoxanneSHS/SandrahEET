CHAIN
IF WEIGHT #-5~Global("SanIsraTalk","GLOBAL",2)~THEN BRH#ISR Sanfirst2
~Seeing thee interact so easily and still passionately with the other gender make me consider thou wouldst make a valid disciple of Sune yourself.~
DO~SetGlobal("SanIsraTalk","GLOBAL",3) RealSetGlobalTimer("SanIsraDel","GLOBAL",800)~
==BSandr~I have difficulties to accept the regime of a celestial for things that should be a natural right for us mortals - like love and the pleasure of sharing oneself with another.~
==BRH#ISR~And whatst about thine own service of Mystra?~
==BSandr~My goddess is rather a reference for me than a superior. She is the guardian of the Weave and I use the powers of the Weave for the benefits of the Prime.~
==BRH#ISR~Many are healers but few have your dedication - many interact between the sheets but few make it an art like thou dost and I do. ~
==BSandr~I agree that we share an attitude in doing the things we do with compassion and dedication, regardless our roles as priestesses. This is not to say that Mystra, or rather Midnight is not of utmost importance for how I live my life. Just like the Lady Firehair is for you. ~
==BRH#ISR~See - calling Sune by that name shows thou canst relate to her attitude after all.~
==BSandr~Oh, I never denied that. There is just no need for me to see her as a celestial to relate to the things she represents.~EXIT

CHAIN
IF WEIGHT #-5~Global("SanIsraTalk","GLOBAL",4)~THEN BRH#ISR Sansecond2
~*Isra stops combing her long braids for a moment to observe Sandrah who just lays the finishing touches on her own hairdo for the day.*~
DO~SetGlobal("SanIsraTalk","GLOBAL",5) RealSetGlobalTimer("SanIsraDel","GLOBAL",1100)~
==BSandr~(Smiles) Any suggestions, Isra?~
==BRH#ISR~*Isra expertly fastens a stray lock of Sandrah's hair to a circlet the priestess has chosen to wear this day.*~
==BSandr~Thanks...there is nothing I can do in return for you. You are just perfect in your style as always.~
==BRH#ISR~This is a most welcome compliment as I admit thou are among the few I wouldst accept as judge on such issues as hairstyle and clothing.~
==BSandr~A paladin and utterly seductive, you manage to keep your high standard daily.~
==BRH#ISR~It is part of my service to my goddess, Sandrah. But thou dost the same - for Mystra?~
==BSandr~No, for myself and for all that can relish it. And...in a way...well, you may remember that Mystra once was a human woman, one known for her style and beauty as well.~
==BRH#ISR~(Laughs out loud) Oh, yes, Midnight is told to have broken some men's hearts in her time - just as her priestess seems to do these days.~
==BSandr~I am rather trying to be a healer than a heartbreaker, my dear. And love is a strong healing power all over the multiverse.~EXIT

CHAIN
IF WEIGHT #-5~Global("SanIsraTalk","GLOBAL",6)~THEN BRH#ISR Santhird3
~I was not aware that Mystra was the goddess of healers as well.~
DO~SetGlobal("SanIsraTalk","GLOBAL",7) RealSetGlobalTimer("SanIsraDel","GLOBAL",1100)~
==BSandr~Many judge my goddess by the deeds of the mediocre mages and spellcasters they encounter too often. Mystra is the guardian of the Weave, the power that hold everything in our multiverse together. The Weave provides power to destroy or to repair.~
==BRH#ISR~Obviously you have the gift to use the Weave in both ways at an impressive level.~
==BSandr~(Sigh) I am often forced to use the destructive aspect to help our group, however it is the healer's ability that attracted me to my goddess primarily.~
==BRH#ISR~I have observed that you care much for your fellow beings, the other day I even saw you casting a healing spell on a wounded bird.~
==BSandr~I am aware that the powers of the Weave are a two-sided affair. You have observed well where my priority lies.~EXIT

EXTEND_TOP RH#IsrJ 1669 #1
IF~InParty("CVSandr")~THEN REPLY~Sandrah?~GOTO IsrSanCommt2
IF~InParty("CVJenlig")~THEN REPLY~Jen'lig?~GOTO IsrJenCommt2
END

CHAIN
IF~~THEN RH#IsrJ IsrSanCommt2
~Sune asks us to encourage love and beauty, in ourselves, in others, and in the world at large. Were she not to follow Mystra, I'd think she'd be the ideal Sunit. I enjoy her company.~EXIT

CHAIN
IF~~THEN RH#IsrJ IsrJenCommt2
~A stranger creature I never encountered. Still, she has her own *concepts* of beauty and of honour, so she cannot be as evil as people try to make us think about her race.~EXIT