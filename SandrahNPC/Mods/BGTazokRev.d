APPEND TAZOK_
IF~~THEN BEGIN 102
SAY~ Not bad, girl cleric, wish more of my men had some initiative like you. Maybe I start to like your kind some day.~
IF~~THEN DO ~ ClearAllActions() ActionOverride("tazok",DestroyItem("mihp1")) SetGlobal("SanTazPatrl","GLOBAL",2) SetGlobal("JoinedBandits","Global",1) StartCutSceneMode() StartCutScene("SanPatrl") ~EXIT
END

IF WEIGHT #-2 ~Global("SanTazPatrl","GLOBAL",2) ~ THEN BEGIN 103
SAY~ Fools, you think Tazok is fool himself, you think you can trick him to trust you and lead him out of camp to attack alone. But this is not gonna happen.~
IF~InParty("CVJenlig")~THEN GOTO 104
IF ~!InParty("CVJenlig")~ THEN DO ~ SetGlobal("SanTazPatrl","GLOBAL",3)
Enemy()
Attack("CVSandr") ~EXIT
END   
END

INTERJECT TAZOK_ 13 SanTazPatrl
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ Maybe we can take the chance to prove our worth to you by accompanying you on this.~
END TAZOK_ 102

INTERJECT TAZOK_ 27 SanTazPatrl2
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ Maybe we can take the chance to prove our worth to you by accompanying you on this.~
END TAZOK_ 102

INTERJECT TAZOK_ 18 SanCheatKiv
== CVSandrJ IF ~ InParty("CVSandr")InParty("Kivan")Global("P#KivanTazok1","GLOBAL",2)~ THEN ~ *Sandrah has lifted her shield in such a way that Tazok cannot recognize Kivan's face which is twitching in hate and anger.*~
==TAZOK_~ I say now I don't like you!  Give me reason to not have you broth-boiled and use your skin to swaddle my small-kin!  Who are you that I should let you join?!~
END
++~Ahh, go scare some school-girls.  I could bruise you but good, and that's exactly why you need me!~ +105
++ ~We're strong, well armed, and we know opportunity when we see it!  What better job be there for us?  Dungeon crawling?  That's fools' work!~ +105

CHAIN
IF~~THEN TAZOK_ 104
~(He points at Jen'lig) I seen your strange type before, we killed that monster just like I now kill you.~
==CVJenliJ~You kill githyanki? So here we have trace again, you among six to kill Kastya but you not have sword. Just like Mulahey.~
==TAZOK_~Ah, that blasted sword!! I told the sorcerer to leave it be, I knowed it would only be trouble. Mulahey, baah, he just stole the sheath for its glitter!~
==CVJenliJ~Tell Jen'lig who sorcerer, tell where sorcerer?~
==TAZOK_~Baah, strange reptile - I tell you where MY sword will be in a second - it will be in your guts!~
DO~ SetGlobal("SanTazPatrl","GLOBAL",3) Enemy() Attack("CVJenlig") ~EXIT

CHAIN
IF~~THEN  TAZOK_ 105
~Hmmm.  You have some sense, but I have many a strong back here already.  What for I need you?!~
END
++~Surely you must realize you need any help you can get, especially after losing Mulahey in the Nashkel mine.~+106
++~Would you rather have too few and need more, or have too many and not need them at all?~+106

CHAIN
IF~~THEN  TAZOK_ 106
~Heh!  You fight pretty good.  Maybe you're not such weaklings.  I think you make pretty good bandits.  Okay, you have run of camp.  I have business to do at new mine but Ardenor and Taugosz will keep eyes on you!~
== CVSandrJ~ Maybe we can take the chance to prove our worth to you by accompanying you on this.~
==TAZOK_~ Not bad, girl cleric, wish more of my men had some initiative like you. Maybe I start to like your kind some day.~
DO ~ ClearAllActions() ActionOverride("tazok",DestroyItem("mihp1")) SetGlobal("JoinedBandits","Global",1) SetGlobal("SanTazPatrl","GLOBAL",2) StartCutSceneMode() StartCutScene("SanPatrl") ~EXIT

APPEND Ardeno
IF WEIGHT #-2~Global("SanTazDead","BG1900",2) ~THEN BEGIN FoundTaz
SAY~You come into the camp and hours later we find Tazok dead. Who do you think you can fool, he? Not me.~
=~Truly you are a fool! To your weapons, Chill!~
IF~~THEN DO~SetGlobal("SanTazDead","BG1900",3) SetGlobal("JoinedBandits","Global",0) Enemy()~EXIT
END
END
