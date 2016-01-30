EXTEND_BOTTOM ~B!Gift~ 0
IF~ Global("B!GiftSandrah","AR0700",0) InParty("CVSandr")InMyArea("CVSandr") !StateCheck("CVSandr",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",19)~THEN REPLY~I'm looking for a gift for Sandrah.~GOTO GroSangift
END

CHAIN
IF~~THEN ~B!Gift~ GroSangift
~A magical gift for a priestess of the Goddess of All Magic...that's a tough challenge. Hm - what about this, it gives you some good protection against the undead, level drain, and the like, and it lets you get off your own spells a little faster.~
==CVSandrJCVSandrJ~I am content with the daily gift of your love, <CHARNAME>, it is really all I need.~
==~BB!Gift~ ~ANY lady needs a sign of her lover's appreciation from time to time - and a lady like this is probably worth much more than the 2400gp I must ask you for this rare oddity.~
END
++~Oh, Sandrah, neither me nor you can say no to such a gift.~DO~SetGlobal("B!GiftSandrah","AR0700",1) GiveItemCreate("bmysgf","CVSandr",0,0,0) TakePartyGold(2400)
DestroyGold(2400)~EXTERN CVSandrJ GroSangift2
++~Huh, I cannot afford that much right now.~EXIT

CHAIN
IF~~THEN  CVSandrJ GroSangift2
~I will make the best use of it in our search for Imoen to compensate for the monitary loss. Do not do such foolish deeds again, my love...at least not too often.~
=~*Her eyes when kissing you seem to betray her rational words.*~EXIT
