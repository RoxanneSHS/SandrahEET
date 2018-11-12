APPEND CVLEYG
END

CHAIN
IF~Global("SanWDTemplWi","GLOBAL",11)~THEN CVLEYG SanRetHero
~Do you remember me, Goddess?~
DO~SetGlobal("SanWDTemplWi","GLOBAL",12)~
==BSANDR~You are Leyala, the girl we healed in the Temple of Mystra quite a while ago. And I am still Sandrah, Mystra's priestess, not a goddess.~
==CVLEYG~(Mumbles) I know what I saw when I was laying there on the altar...~
==BSANDR~And how have you fared since then, you look good and healthy, my dear?~
==CVLEYG~I feel like that myself - even when some say I shouldn't with the bad blood that is inside me.~
==BSANDR~I think we have cured that back then, you need not to be afraid, it cannot return again.~
==CVLEYG~(She glances fearfully at you.) They say you used evil blood as well to heal me, Sandrah.~
==BSANDR~Oh, now I see what you mean. Yes, <CHARNAME> gave quite an amount of <PRO_HISHER> own blood to save you as it matched to your own the best, you are of one kin.~
==CVLEYG~That would be a great gift to someone you don't even know if it were not from one like <PRO_HIMHER>. A Bhaalspawn.~
==BSANDR~(Laughs.) And now you think you will be evil because of that? Do you think that <CHARNAME> is evil because of inherited blood? Can someone who gives the own blood to a stranger in need be an evil person?~
==CVLEYG~You are right, it cannot be so...and me, I feel nothing bad inside me. And I hear many tales of the great deeds you two do everywhere.~
==BSANDR IF ~Global("SanRomPath","GLOBAL",1) ~THEN~<CHARNAME> is the greatest hero the Realms have known for some time.~
==BSANDR IF ~Global("SanRomPath","GLOBAL",2) ~THEN~<CHARNAME> is the greatest heroine the Realms have known for some time.~
==CVLEYG~And all deeds are courageous and good ones - Sandrah, you are right.~
= ~(Leyala turns to you, now with her blue eyes shining at you.) I have the blood of a good and great hero in me, thank you, <CHARNAME>. I will be proud of it now.~DO~EscapeAreaDestroy(60)~EXIT