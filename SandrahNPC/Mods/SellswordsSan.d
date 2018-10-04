I_C_T O#LLMESS 0 Sansellswordmod
==CVSandrJ IF~InParty("CVSandr")~THEN~I should have known it...it was silly to assume that we killed that cat with his nine lives already.~
==O#LLMESS IF~InParty("CVSandr")~THEN~So you know our leader from past events, I see. You are the ones who... well, he must have his reasons to select you for this purpose.~
==CVSandrJ IF~InParty("CVSandr")~THEN~He will know that we cannot say no to any of his invitations. Only when being close to him we can spoil his plans best.~
END

I_C_T O#LLKIMM 1 Sansellswordmod2
==O#LLKIMM IF~InParty("CVSandr")~THEN~I have my doubt about your advisor though. It's much deeper in you than just the dragon's spell, priestess. Who are you?~
==CVSandrJ IF~InParty("CVSandr")~THEN~I am part of the bargain, Kimmuriel. You want <CHARNAME> but you need to accept <PRO_HISHER> companions just the same.~
==O#LLKIMM IF~InParty("CVSandr")~THEN~Stakes are high but be sure that Jarlaxle will be warned about your presence. And my eyes will be on you.~
END

INTERJECT O#LLBrow 10 SanSellEilles
==CVSandrJ IF~InParty("CVSandr")~THEN~You are in danger, there are forces here that want your demise and they have asked us, the outsiders, to eliminate you.~
==O#LLBrow IF~InParty("CVSandr")~THEN~(Sigh) We have anticipated that the matron's protection cannot last forever.~
==CVSandrJ IF~InParty("CVSandr")~THEN~Her own position is not stable, no matron's ever is.~
==O#LLBrow IF~InParty("CVSandr")~THEN~You follow Mystra, don't you. Our goddesses have always been allies. You will not act against us for some coin and doubtful privileges.~
==CVSandrJ IF~InParty("CVSandr") OR(2) GlobalGT("SanIntEllesInt2","Global",0) GlobalGT("SanIntEllesInt1","Global",0)~THEN~We have found an enclave of other followers of Eilistraee in the Tethyr forest. Contact a woman named Fall and tell her we sent you.~
==CVSandrJ IF~InParty("CVSandr") Global("SanIntEllesInt2","Global",0) Global("SanIntEllesInt1","Global",0)~THEN~I hail from Mystra's temple in Waterdeep. There are rumours that an enclave of other followers of Eilistraee exists somewhere in Undermountain. I have never seen it but if anyone knows, the priests in the temple will help you. Tell them that Sandrah sent you.~
END
++~Eilistraee wants to allow her worshippers to become true dark elves and to live on the surface? I happen to agree: it's a noble goal.~+ 11
++~I don't like what my counsellor proposes, but I'm not foolish enough to have her and you against me here. I will not kill you.~+ 11