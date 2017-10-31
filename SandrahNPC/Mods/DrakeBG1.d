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