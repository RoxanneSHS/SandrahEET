CHAIN
IF~Global("SanCorwin","Global",3)~THEN BDCORWIJ Corwiheal1
~In times like these it is good to have comrads who can repair and not only destroy.~
DO~SetGlobal("SanCorwin","Global",4)~
==CVSandrJ~Travelling with <CHARNAME> has required both my talents to a large extend.~
==BDCORWIJ~I have seen that you can be quite destructive in our battles. I wonder if this is why <PRO_HESHE> has chosen your companionship rather than due to your healing skills.~
==CVSandrJ~Neither of those, our common adventures and relationship started before any of us became aware of <PRO_HISHER> heritage or quest. This is the background of your inquiry, if I am not mistaken, the Bhaal blood.~
==BDCORWIJ~It seems to impact you little - well, that is not expressed correctly...you are concerned about it obviously. But not so much because of what it does to <CHARNAME>, you are bothered more about what people see in <PRO_HIMHER> because of it.~
==CVSandrJ~I think that I know <CHARNAME> well enough to have an idea of what we - I mean, <PRO_HESHE> - will do with that *potential*. I do not know all those people and powers who now take an interest in the Bhaalspawns. It is hard to protect a friend against such unknown threats.~
==BDCORWIJ~You make it sound like <CHARNAME> may be more in danger because of this heritage than others are endangered by <PRO_HIMHER>. And interesting point of view.~EXIT

CHAIN
IF~Global("SanSarevCorw","Locals",1)~THEN BDCORWIJ CorwiCand1
~So, Sandrah, we feel the same when we see Sarevok - but how much do you actually know?~
DO~SetGlobal("SanSarevCorw","Locals",2)~
==CVSandrJ~I know that he is a bhaalspawn and I know that he was leading those operations we stopped in Nashkel and Cloakwood.~
==BDCORWIJ~That's not all, am I right?~
==CVSandrJ~I have sufficient evidence to think that he was raised and educated by an Othlor named Winski...~
==BDCORWIJ~Winski Perorate, a mage serving Sarevok's stepfather Rieltar Anchev.~
END
++~We had some unpleasant visits from the guy already.~+ CorwiCand2
++~We met Winski even before we met Sarevok alias Koveras. Neither encounter was pleasant.~+ CorwiCand2
++~More likely he serves Sarevok from all we know.~+ CorwiCand2

CHAIN
IF~~THEN BDCORWIJ CorwiCand2
~I know little of Winski as he doesn't seek the public. He's been around the Iron Throne as long as I can think back. His nor Sarevok's activities are not easy to follow. There are indications of all matters of dark deeds but no real proof.~
==CVSandrJ~We have reason to think that originally Winski pursued and found Sarevok because of his heritage. The mage intended to use his disciple against his former homeland Rashemen.~
==BDCORWIJ~I doubt that Sarevok will let himself be used like a toy or a weapon.~
==CVSandrJ~I agree. Like I said, that was the Othlor's intent. But long the tables have turned and Sarevok has outgrown his teacher and probably also his father's organisation.~
==BDCORWIJ~Sarevok's activities seem far too focussed to be taken as a youngster's wildness or escapades. But what is he after?~
==CVSandrJ~We are at Candlekeep, Corwin, here they sing out Alaundo's prophesies daily...~
==BDCORWIJ~Are you...you mean...he's a bhaalspawn, he's gaining power and he's ruthless. But - he's far from becoming a god of murder, that's just absurd.~
==CVSandrJ~Corwin, it is not important if we believe it or call it absurd. What matters is that Sarevok may think he is the one mentioned in the prophesy and that he and Winski and his followers believe in it.~
==BDCORWIJ~If such is really true, then more than <CHARNAME> is in danger. Baldur's Gate, the Dukes...Scar...and Rohma.~EXIT

CHAIN
IF~Global("DauShield","GLOBAL",2)~THEN BDCORWIJ CorwiDad
~I've seen that man with Scar already but he didn't introduce us.~
DO~SetGlobal("DauShield","GLOBAL",3)~
==CVSandrJ~My father? Elminster - yes, he has his secrets, he never told me about Scar.~
=~Anyway, this is a sign that things of some magnitude are going on here. Not that we doubted it.~
==BDCORWIJ~Now, Elminster's daughter, that shield he gave you looks pretty special, for one using shields I mean.~
==CVSandrJ~It belonged to my grandmother during her mortal adventuring days. As such it is already special to me without needing to know what special magic it may hold. My grandmother is my guidance and the standard I measure myself against.~
==BDCORWIJ~And I thought that would be Mystra, your goddess?~
==CVSandrJ~(Laughs) Often that means one and the same, but Midnight has always been the aspect that was more virtual for me. A goddess is far too abstract for everyday use.~EXIT
