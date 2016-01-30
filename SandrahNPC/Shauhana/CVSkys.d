BEGIN CVSKYS

IF ~ InParty("CVSandr") NumInPartyLT(6)GlobalLT("ShauOrcWar","GLOBAL",6) ~ THEN BEGIN NibReady
SAY ~ Do you want to travel with Nib's skyship now.?~
IF ~~THEN REPLY ~ Yes, we will risk it.~ DO~ 
ActionOverride(Player1,LeaveAreaLUA("CVSKYS","",[912.857],3))
ActionOverride(Player2,LeaveAreaLUA("CVSKYS","",[912.857],3))
ActionOverride(Player3,LeaveAreaLUA("CVSKYS","",[912.857],3))
ActionOverride(Player4,LeaveAreaLUA("CVSKYS","",[912.857],3))
ActionOverride(Player5,LeaveAreaLUA("CVSKYS","",[912.857],3))
ActionOverride(Player6,LeaveAreaLUA("CVSKYS","",[912.857],3))
ActionOverride("haiass",LeaveAreaLUA("CVSKYS","",[912.857],3))
ActionOverride("Pellig",LeaveAreaLUA("CVSKYS","",[912.857],3))~ EXIT
IF ~~ THEN REPLY ~ Not now, maybe another time.~ EXIT
END

IF ~ InParty("CVSandr") NumInParty(6) GlobalLT("ShauOrcWar","GLOBAL",6)~ THEN BEGIN TooMany
SAY ~ There are too many people in your party. I can admit only five intelligent creatures and three semi-intelligent ones. Try again when you meet the requirements.~
IF ~~ THEN EXIT
END

IF ~ !InParty("CVSandr") ~ THEN BEGIN NoSandr
SAY ~ Sandrah of Waterdeep is not with you. Try again when you meet the requirements.~
IF ~~ THEN EXIT
END

IF ~ InParty("CVSandr") GlobalGT("ShauOrcWar","GLOBAL",5)~ THEN BEGIN ClanLand
SAY ~ Do you want to return to Orc Clan's land?~
IF ~~ THEN REPLY ~ Yes, take us to the Stormhorns.~DO~ 
ActionOverride(Player1,TakePartyItem("CVSkys"))
ActionOverride(Player1,DestroyItem("CVSkys"))
ActionOverride(Player1,LeaveAreaLUA("CVSH13","",[82.479],13))
ActionOverride(Player2,LeaveAreaLUA("CVSH13","",[82.479],13))
ActionOverride(Player3,LeaveAreaLUA("CVSH13","",[82.479],13))
ActionOverride(Player4,LeaveAreaLUA("CVSH13","",[82.479],13))
ActionOverride(Player5,LeaveAreaLUA("CVSH13","",[82.479],13))
ActionOverride(Player6,LeaveAreaLUA("CVSH13","",[82.479],13))
ActionOverride("haiass",LeaveAreaLUA("CVSH13","",[82.479],13))
ActionOverride("Pellig",LeaveAreaLUA("CVSH13","",[82.479],13))~ EXIT
IF ~~ THEN REPLY ~ Not now, maybe later.~ EXIT
END