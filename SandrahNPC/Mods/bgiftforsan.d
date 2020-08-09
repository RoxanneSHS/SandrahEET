EXTEND_BOTTOM ~B!Gift~0
IF~Global("B!GiftSandrah","AR0700",0) InParty("CVSandr")InMyArea("CVSandr") !StateCheck("CVSandr",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",19)~THEN REPLY@0GOTO GroSangift
END

CHAIN
IF~~THEN ~B!Gift~GroSangift
@1
==CVSandrJ@2
==~B!Gift~@3
END
++@4DO~SetGlobal("B!GiftSandrah","AR0700",1) GiveItemCreate("bmysgf","CVSandr",0,0,0) TakePartyGold(2400)
DestroyGold(2400)~EXTERN CVSandrJ GroSangift2
++@5EXIT

CHAIN
IF~~THEN  CVSandrJ GroSangift2
@6
=@7EXIT
