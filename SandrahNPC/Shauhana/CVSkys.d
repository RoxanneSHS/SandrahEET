BEGIN CVSKYS

IF ~InParty("CVSandr") NumInPartyLT(6)GlobalLT("ShauOrcWar","GLOBAL",6) ~THEN BEGIN NibReady
SAY @0
IF ~~THEN REPLY @1DO~
ActionOverride(Player1,LeaveAreaLUA("CVSKYS","",[912.857],3))
ActionOverride(Player2,LeaveAreaLUA("CVSKYS","",[912.857],3))
ActionOverride(Player3,LeaveAreaLUA("CVSKYS","",[912.857],3))
ActionOverride(Player4,LeaveAreaLUA("CVSKYS","",[912.857],3))
ActionOverride(Player5,LeaveAreaLUA("CVSKYS","",[912.857],3))
ActionOverride(Player6,LeaveAreaLUA("CVSKYS","",[912.857],3))
ActionOverride("haiass",LeaveAreaLUA("CVSKYS","",[912.857],3))
ActionOverride("Pellig",LeaveAreaLUA("CVSKYS","",[912.857],3))~EXIT
IF ~~THEN REPLY @2EXIT
END

IF ~InParty("CVSandr") NumInParty(6) GlobalLT("ShauOrcWar","GLOBAL",6)~THEN BEGIN TooMany
SAY @3
IF ~~THEN EXIT
END

IF ~!InParty("CVSandr") ~THEN BEGIN NoSandr
SAY @4
IF ~~THEN EXIT
END

IF ~InParty("CVSandr") GlobalGT("ShauOrcWar","GLOBAL",5)~THEN BEGIN ClanLand
SAY @5
IF ~~THEN REPLY @6DO~
ActionOverride(Player1,TakePartyItem("CVSkys"))
ActionOverride(Player1,DestroyItem("CVSkys"))
ActionOverride(Player1,LeaveAreaLUA("CVSH13","",[82.479],13))
ActionOverride(Player2,LeaveAreaLUA("CVSH13","",[82.479],13))
ActionOverride(Player3,LeaveAreaLUA("CVSH13","",[82.479],13))
ActionOverride(Player4,LeaveAreaLUA("CVSH13","",[82.479],13))
ActionOverride(Player5,LeaveAreaLUA("CVSH13","",[82.479],13))
ActionOverride(Player6,LeaveAreaLUA("CVSH13","",[82.479],13))
ActionOverride("haiass",LeaveAreaLUA("CVSH13","",[82.479],13))
ActionOverride("Pellig",LeaveAreaLUA("CVSH13","",[82.479],13))~EXIT
IF ~~THEN REPLY @7EXIT
END