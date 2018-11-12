BEGIN CVCyr01

CHAIN
IF~AreaCheck("bd7230") Global("CyricVis","bd7230",1)~THEN CVCyr01 AftSare1s
~Since you're HERE today I might as well take the opportunity to meet you, my friend.~
DO~SetGlobal("CyricVis","bd7230",2)~
=~I thank you, my friend, I really thank you for your help today.~
=~But most of all I thank you for your great deed at Baldur's' Gate.~
==CVSandrJ~A thief who has an interest in Sarevok's death?~
==CVCyr01~Anyone who works against that former God of Murder's return does me a personal favour.~
==CVSandrJ~I can think of only one creature to say such a thing...~
==CVCyr01~I was paying my respect to <CHARNAME> not to some over-eager follower of that silly goddess.~
END
++~I don't like the way you call me *friend*.~+ AftSare2
++~You warned me about the interest I would now attract, Sandrah. Do you know this new *friend*?~+ AftSare2
++~Who the hell are you to know things that just happened in a secret place mere minutes ago?~+ AftSare2

CHAIN
IF~AreaCheck("BG0153") Global("CyricVis","BG0153",1)~THEN CVCyr01 AftSare1
~I thank you, my friend, I really thank you for your great deed.~
DO~SetGlobal("CyricVis","BG0153",2)~
==CVSandrJ~A thief who has an interest in Sarevok's death?~
==CVCyr01~Anyone who works against that former God of Murder's return does me a personal favour.~
==CVSandrJ~I can think of only one creature to say such a thing...~
==CVCyr01~I was paying my respect to <CHARNAME> not to some over-eager follower of that silly goddess.~
END
++~I don't like the way you call me *friend*.~+ AftSare2
++~You warned me about the interest I would now attract, Sandrah. Do you know this new *friend*?~+ AftSare2
++~Who the hell are you to know things that just happened in a secret place mere minutes ago?~+ AftSare2

CHAIN
IF~~THEN CVCyr01 AftSare2
~Enough for this time. It is unavoidable that our paths will cross again...(looks like some long dismissed family started to mingle with the topic as well...)~DO~ReallyForceSpell(Myself,DRYAD_TELEPORT) ~EXIT

CHAIN
IF ~AreaCheck("ar0304") Global("CyrDisg","ar0304",1)~THEN CVCyr01 DisgVis1
~(The figure standing before you glances quickly at your party and you think you can see a small change in his face towards a smile, when his eyes rest upon one of the members of your party - Sandrah.) ~
==CVSandrJ~Do we know each other? You resemble some distant relative or is it just a strange feeling?~
==CVCyr01~Fine senses, my dear. Oh, you have talent aplenty, little one, and that is what makes you so dangerous, daughter of that ever-meddlesome Harper. ~
==CVSandrJ~So you know me - how about introducing yourself, not-my-usual-thief?~
==CVCyr01~I had the feeling your blood itself was already telling you about our relationship to each other, even if you follow your grandmother on her *ha oh so glorious path*!~
==CVSandrJ~Have you come just to tell me that?~
==CVCyr01~Who would ever accuse me of sentimental feelings, hihi, or expect me to be a family man...~
=~You and the Bhaalspawn make a strange couple to be watched carefully.~
==CVSandrJ~Like maybe someone in former times? How about a woman named Midnight and a thief named...~
==CVCyr01~Enough for today - I am convinced we will meet again.~DO~SetGlobal("CyrDisg","ar0304",2) ReallyForceSpell(Myself,DRYAD_TELEPORT) ~EXIT

CHAIN
IF~AreaCheck("ar0400") Global("SanCyricAng","ar0400",2)~THEN CVCyr01 WhoDone
~Tsss, tsss, let me take a look at those imbeciles that dare to interfere with Cyric's glorious plans.~
==CVSandrJ~Do we know each other? You recall some vague memory or is it just a strange feeling?~
==CVCyr01~Fine senses, my dear. Oh, you have talent aplenty, little one, and that is what makes you so dangerous, daughter of that ever-meddlesome Harper. ~
==CVSandrJ~So you know me - then you are aware that the plans of the Prince of Lies will not flourish in this town.~
==CVCyr01~Hahaha, do you think anyone cares about those idiots you just fooled with your little farce. You follow your grandmother in her stupid belief that you can change something on this plane without being a god.~
==CVSandrJ~Were you not yourself witness of what a determined mortal can achieve - even against gods?~
==CVCyr01~And it seems that even gods cannot get fully rid of their family affairs.~
=~Anyway, interesting meeting, hihihi, it remains to be seen what this strange combination of such controversial bloodlines as <CHARNAME>'s and yours will be capable of.~
==CVSandrJ~(Mumbles.) Maybe much more than you would wish to know, madman.~
==CVCyr01~Enough fun for today - I am convinced we will meet again.~DO~SetGlobal("SanCyricAng","ar0400",3) ReallyForceSpell(Myself,DRYAD_TELEPORT) ~EXIT