I_C_T C0Drake 15  SanMeetC0Drake
==CVSandrJ IF~InParty("CVSandr")~THEN~And in those two weeks he did not do you the favour to step into this tavern? ~
==C0Drake IF~InParty("CVSandr")~THEN~You...shouldn't a priestess of Mystra be the first one to wish a Cyricist necromancer dead?  ~
==CVSandrJ IF~InParty("CVSandr")~THEN~This is correct.~
 END

CHAIN
IF~Global("SanMeetC0Drake","Global",3)~ THEN C0DrakeJ Whyheal
~Healing a healer, woman? That ain't...well, it helped.~
DO~SetGlobal("SanMeetC0Drake","Global",4)~
==CVSandrJ~In the...heat of the battle it happens that a priest forgets to care for himself even if he could.~
==C0DrakeJ~Heat of the battle, hm. You don't believe that yourself, don't you? I know very well what you mean.~
==CVSandrJ~I mean that you should not neglect yourself the way you do, that is all.~
==C0DrakeJ~I easily can as long as there's always the *good* companion to take care of me.~EXIT

CHAIN
IF~Global("SanDrakeChic","BG3700",1)~ THEN C0DrakeJ Mellil
~So...you're acquainted with talking chicken. I saw you having a glass of wine now and then but I never thought your drinking was that hard..eh, like mine for example. ~
DO~SetGlobal("SanDrakeChic","BG3700",2)~
==CVSandrJ~It is not chicken in general, it is this particular one alone. And with respect to the drinking, I wish I had this excuse. I fear the truth is worse.~
==C0DrakeJ~I see. If it's not the booze that makes the greatest fools out of us, there's only one other thing. A man, a woman, gosh, priestess...who am I to judge.~
=~(Winks) We all have our weak spots,~EXIT

CHAIN
IF~Global("C0DrakeBassilus","GLOBAL",5)~ THEN C0DrakeJ WhyBasil
~So, that was a strange remark on Bassilius' demise. Followers of Mystra and Cyric despise each other, so much is clear. You seem to take that more personal?~
DO~SetGlobal("C0DrakeBassilus","GLOBAL",6)~
==CVSandrJ~You know why Mystra became Cyric's enemy even after they ventured together during the Time of Troubles, right?~
==C0DrakeJ~Yeah, I heard he killed her lover Kelemvor or such? And he's evil and mad and all. And she's all but forgiving, not that I say she should be.~
==CVSandrJ~Well, then you know all there is to know.~
==C0DrakeJ~Do I? Which of them is family to you?~
==CVSandrJ IF~GlobalGT("Chapter","Global",3)~THEN~Cyric claims to be my grandfather. But enough of that for now.~
==CVSandrJ IF~GlobalLT("Chapter","Global",4)~THEN~Enough of that for now. Maybe once we know each other a bit better.~
==C0DrakeJ~Just as mylady commands.~EXIT

CHAIN
IF~ Global("SanMeetC0Drake","Global",5)~ THEN C0DrakeJ Drink
~How about sharing a glass of wine, Sandrah, I noticed you like some every now and then.~
DO~ SetGlobal("SanMeetC0Drake","Global",6) ~
== BSANDR~ But not that one you chose, Drake! I saw a '69 Plains of Akanal on the menu. A brilliant choice, at least according to lore. I never had the privilege yet to taste even a lesser vintage from that region. ~
== C0DrakeJ ~ How it's found its way to this forlorn inn will probably remain one of the mysteries of our life. ~
== BSANDR ~ Such will remain the famous taste it is supposed to have, Drake, until you start to buy and open it. ~
== C0DrakeJ ~ (Drake's eyes move to the stately tavern girl who serves them some glasses and a bit of cheese to accompany the wine. His gaze follows her as she wiggles self-consciously away from their table.)~
== BSANDR ~ You may however choose to leave this precious bottle unopened and get yourself some cheap substitute, if it is just to get drunk.~
== C0DrakeJ ~ With the very precious things it's difficult, my friend. One can indeed be afraid to cherish them because of the fear of loss by consumption. Imagine we drink and enjoy that bottle now. It'll be lost forever while we gain only this little bit of joy that'll be gone by the morning. There's no way to keep it for longer. ~
== BSANDR ~ And so we have the continuing dream of what it could have been. An imagination that may grow to undeserved expectations but will never be fulfilled. ~
== C0DrakeJ ~ (His eyes find the tavern wench again who is already flirting with a fat drunken guest at another table.) *Sigh*, is '69 maybe your birth date? ~
== BSANDR ~ No it is not. For the connoisseur, there was an even better year during that decade. ~
= ~(With a quick move she has pulled the cork from the bottle and the thick red wine pours into their glasses.) Raise your glass with me, Drake, drink to the joys life holds for us, even if they cannot last forever. Carpe diem.~
EXIT
