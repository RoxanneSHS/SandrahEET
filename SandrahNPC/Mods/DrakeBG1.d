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
==CVSandrJ~I mean that you should not neglegt youself the way you do, that is all.~
==C0DrakeJ~I easily can as long as there's always the *good* companion to take care of me.~EXIT

CHAIN
IF~Global("SanDrakeChic","BG3700",1)~ THEN C0DrakeJ Mellil
~So...you're acquainted with talking chicken. I saw you having a glass of wine now and then but I never thought your drinking was that hard..eh, like mine for example. ~
DO~SetGlobal("SanDrakeChic","BG3700",2)~
==CVSandrJ~It is not chicken in general, it is this particular one alone. And with respect to the drinking, I wish I had this excuse. I fear the truth is worse.~
==C0DrakeJ~I see. If it's not the booze that makes the graetest fools out of us, there's only one other thing. A man, a woman, gosh, priestess...who am I to judge.~
=~(Winks) We all have our weak spots,~EXIT