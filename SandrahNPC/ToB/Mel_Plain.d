//Melissan Showdown
INTERJECT_COPY_TRANS2 Finmel01 8 SanOddElement1
==CVSan25J IF ~InParty("CVSandr") OR(2) InMyArea("CVQidr") PartyHasItem("CVQCall")~THEN@0
==Finmel01 IF ~InParty("CVSandr")OR(2) InMyArea("CVQidr") PartyHasItem("CVQCall")~THEN@1
==CVSan25J IF ~InParty("CVSandr")OR(2) InMyArea("CVQidr") PartyHasItem("CVQCall")~THEN@2
==Finmel01 IF ~InParty("CVSandr")OR(2) InMyArea("CVQidr") PartyHasItem("CVQCall")~THEN@3
==CVQidr IF~InParty("CVSandr") InMyArea("CVQidr")~THEN@4
==CVSan25J IF ~InParty("CVSandr")OR(2) InMyArea("CVQidr") PartyHasItem("CVQCall")~THEN@5
==Finmel01 IF ~InParty("CVSandr")OR(2) InMyArea("CVQidr") PartyHasItem("CVQCall")~THEN@6
==CVSan25J IF ~InParty("CVSandr")!InMyArea("CVQidr") PartyHasItem("CVQCall")~THEN@7
==CVQidr IF ~InParty("CVSandr")InMyArea("CVQidr") ~THEN@8END
