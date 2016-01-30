BEGIN BENTLY2

IF~ NumTimesTalkedTo(0) ~ THEN BEGIN SanWDHi
SAY ~ So many mysteries here, so much old lore...~
IF ~~ THEN REPLY ~ Are you referring to anything specific, Sir?~ GOTO SanWDHi2
IF ~~ THEN REPLY ~ Oh, just shut up, old wreck.~ GOTO SanWDHi2
END

IF ~~ THEN BEGIN  SanWDHi2
SAY ~ Maybe another time, maybe when you have proven your worth.~ 
IF ~~ THEN DO ~ MoveToPoint([913.760]) Face(13)~EXIT
END

IF ~ Global("SanNarQ","GLOBAL",7) InParty("CVSandr")Global("SanWDHi","GLOBAL",1) ~ THEN BEGIN SanWDMap
SAY ~ I hear you are always on the lookout for something special, <SIRMAAM>?~
IF ~Global("SanMapFAI","GLOBAL",1)~ THEN REPLY ~ Maybe a bit of lore from days of old, when the coast and Waterdeep were trading frequently? ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanWDMap2
IF ~Global("SanMapFAI","GLOBAL",0)~ THEN REPLY ~ I can think of nothing I need at the moment, thank you. (Sandrah looks at you expectantly, maybe she has something to say to you.) ~ DO ~ SetGlobal("SanWDHi","GLOBAL",2)~ EXIT
END

IF ~ Global("SanWDHi","GLOBAL",2) Global("SanMapFAI","GLOBAL",1)~ THEN BEGIN SanWDMap
SAY ~ I hear you are still on the lookout for something special, <SIRMAAM>?~
IF ~~ THEN REPLY ~ Maybe a bit of lore from days of old, when the coast and Waterdeep were trading frequently? ~ GOTO SanWDMap2
END

IF ~~ THEN BEGIN SanWDMap2
SAY ~ Oh, yes, those golden days! Travellers were a lot going to and fro the great city, customers were standing in double row here at the inn. Beer and gold were flowing day and night. Yeah, those were the days.~
IF ~~ THEN REPLY ~ Stop babbling, old fool, what we need is one of those maps to take us to the town, that is all.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",-1)~GOTO SanWDMapBuy
IF ~~ THEN REPLY ~ I can imagine that. I have heard some of the lore about it and the old maps they used to travel Old Waterdeep Road.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanWDMapFree
END
                       
IF ~~ THEN BEGIN SanWDMapBuy
SAY ~ No reason to get rude here. If it is one of those maps you want. 2000GP and you have one.~
IF ~~ THEN REPLY ~ Too much. ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",-1)~EXIT
IF ~~ THEN REPLY ~ Deal. ~ DO ~ SetGlobal("SanWDHi","GLOBAL",3) SetGlobal("SanMapFAI","GLOBAL",2) TakePartyGold(2000) EraseJournalEntry(@132) GiveItemCreate("Sanmap","CVSandr",0,0,0)~ EXIT
END

IF ~~ THEN BEGIN SanWDMapFree
SAY ~ You know your lore well. It does an old man good to talk about times well remembered. Just for a souvenir, you may be interested in this. (Retrieves an old torn piece of parchment from below his greasy shirt.) Here is one of those maps you mentioned, you may keep it and do not forget old Jopi.~
IF ~~ THEN REPLY ~ Thank you so much, good Sir.~ DO ~ SetGlobal("SanWDHi","GLOBAL",3) SetGlobal("SanMapFAI","GLOBAL",2) EraseJournalEntry(@132) GiveItemCreate("Sanmap","CVSandr",0,0,0) ~ EXIT
END

EXTEND_BOTTOM Gellan 0
IF ~Global("SanMapFAI","GLOBAL",1)~ THEN REPLY ~With your long history here at the Friendly Arm, have you ever heard about Old Waterdeep Road by any chance?~GOTO JopHi
END

APPEND Gellan
IF~~THEN BEGIN JopHi
SAY~Hm, not sure I did...sounds a bit like them ancient stories old Jopi over at the Inn likes to tell to those who care to listen and buy him a drink. Anything else I can do for you, my dear?~
IF~~THEN REPLY ~What sort of cures do you have available?~DO~StartStore("tem2304",LastTalkedToBy(Myself)) ~EXIT
IF~~THEN REPLY ~ Thank you, but we may go visit that man Jopi you just mentioned.~EXIT
END
END