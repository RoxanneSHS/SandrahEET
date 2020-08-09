APPEND ESXMH
END

INTERJECT_COPY_TRANS ESXMH 19 SanIntEllesInt1
== ESXMH IF ~InParty("CVSandr")~THEN@0
==CVSandrJ IF ~InParty("CVSandr")~THEN@1
== ESXMH IF ~InParty("CVSandr")~THEN@2
==CVSandrJ IF ~InParty("CVSandr")~THEN@3
== ESXMH IF ~InParty("CVSandr")~THEN@4
==CVSandrJ IF ~InParty("CVSandr")~THEN@5
=@6
== ESXMH IF ~InParty("CVSandr")~THEN@7
END

INTERJECT_COPY_TRANS ESXMH 20 SanIntEllesInt2
== ESXMH IF ~InParty("CVSandr")~THEN@0
==CVSandrJ IF ~InParty("CVSandr")~THEN@8
== ESXMH IF ~InParty("CVSandr")~THEN@2
==CVSandrJ IF ~InParty("CVSandr")~THEN@3
== ESXMH IF ~InParty("CVSandr")~THEN@4
==CVSandrJ IF ~InParty("CVSandr")~THEN@5
=@6
== ESXMH IF ~InParty("CVSandr")~THEN@9
END

EXTEND_BOTTOM ESXJoi 16
IF~InParty("CVSandr") PartyHasItem("Sandoll")~THEN REPLY@10EXTERN CVSandrJ EilToy1
IF~InParty("CVSandr") !PartyHasItem("Sandoll")~THEN REPLY@11EXTERN CVSandrJ EilToy1
END

CHAIN
IF~~THEN CVSandrJ EilToy1
@12
DO~ActionOverride("CVSandr",GiveItem("Sandoll","ESXJoi"))~
==ESXJoi@13
=@14
=@15
END
++@16EXTERN ESXJoi 21

CHAIN
IF~~THEN CVSandrJ EilToy2
@17
DO~ActionOverride("CVSandr",GiveItemCreate("Sandoll","CVSandr",1,0,0)) ActionOverride("CVSandr",GiveItem("Sandoll","ESXJoi"))~
==ESXJoi@13
=@18
=@15
END
++@16EXTERN ESXJoi 21