CHAIN
IF WEIGHT #-3~Global("SanAerJon","LOCALS",2)~THEN Baerie25 MetJon1
~That horrible mage always sends a shiver down my spine when he comes too close.~
DO~SetGlobal("SanAerJon","LOCALS",3) RealSetGlobalTimer("SanAerieToBT","LOCALS",1800)~
==BSandr25~Do not forget he is an elf - or was one, just like you.~
==Baerie25~This is...he is further from elvish than anyone I can imagine.~
==BSandr25~You of all should be able to understand what pain and loss can cause to an elvish soul. I can remember a time when you felt not being part of your kin any more.~
==Baerie25~As always...you are right. But I cannot really compare myself to that terrible being he has become.~
==BSandr25~We never gave up hope for your case.~
==Baerie25~Oh, Sandrah, I know YOU never give up hope, not even here. I wish often I had your strength.~
==BSandr25~You have proven more than once the strength you possess.~EXIT

CHAIN
IF WEIGHT #-3~Global("SanAerPre","LOCALS",2) ~THEN Baerie25 SanCongra
~*Aerie catches up with the group again after she was fallen a bit behind for a moment.*~
DO~SetGlobal("SanAerPre","LOCALS",3) ~
==BSandr25~Here drink this, you will feel better in just a second. After all, this is not some disease or ailment you have.~
==Baerie25~Th..thank you.~
==BSandr25~Did you talk to the happy father already about it?~
==Baerie25~How can...oh, sure...a healer like you must know it at first glance already. Thank you for keeping it to yourself.~
==BSandr25~A healer knows and another woman just feels the happiness you radiate. It is still some time to go, so hopefully we will have ended this quest before the happy moment arrives.~
==Baerie25~Do you think...will there be a quiet time someday for us to enjoy the new life in peace?~
==BSandr25~I am sure there will be one for you and the little one...~
==Baerie25~And <CHARNAME>? Will we all be together, you think?~
==BSandr25~He will be a good father, so much I know for sure - whether a quiet family life may be granted to him is another question. Do not worry too much, Aerie, when the time comes you will have friends and support to find a solution.~
==Baerie25~I knew it would not be easy, Sandrah, I'm not the little girl any more. I am aware of <CHARNAME>'s heritage even if both of us cannot tell where it will lead any of us. But I am confident, yes, ...and we are not alone. There will  be a good ending.~DO~ActionOverride("CVSAndr",AddSpecialAbility("CVDra26")~EXIT

