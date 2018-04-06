CHAIN
IF WEIGHT #-2~Global("Sanhealhex","GLOBAL",3)~THEN BHexxat Vamphe1
~I never imagined a priestess of Mystra would heal a creature like I am.~
DO~SetGlobal("Sanhealhex","GLOBAL",4)~
==Bsandr~It is correct that I hate few things worse than I hate the necromancers and their deeds, the undead, vampires and other unnatural beings.~
==BHexxat~You do what <CHARNAME> commands you to do.~
==Bsandr~I do what my own principles command me to do. At least as long as I am not sure that you chose your current state voluntarily.~
==BHexxat~You think I am a victim myself?~
==Bsandr~Be glad I give you that credit of doubt.~EXIT

CHAIN
IF WEIGHT #-2~Global("Sanhealhex","GLOBAL",5)~THEN BHexxat Vamphe2
~You are an intriguing character, priestess of Mystra.~
DO~SetGlobal("Sanhealhex","GLOBAL",6)~ 
==Bsandr~If I would say the same about you, I hope I am not misunderstood.~
==BHexxat~Could you see the girl I am and forget about the state you so despise?~
==Bsandr~I know the one - but I do not know much about the other - yet.~
==BHexxat~This could change...What do you know about Chult?~
==Bsandr~It lies off the shores of Calimshan, it is a mountainous jungle with little population, Chultans distrust power and wealth, preferring to live simple.~
=~So, what do you know about Waterdeep?~
==BHexxat~It is the direct opposite of what you just said about my homeland, it is the City of Splendour, isn't it.~
==Bsandr~First of all - for me it is home, just like Chult may still be home for you deep in your...heart?~
==BHexxat~You think, I have none...a heart, I mean, nor a home any more, right?~
==Bsandr~In a way your words make me think that I maybe have erred about that.~
EXIT

CHAIN
IF WEIGHT #-2~Global("Sanhealhex","GLOBAL",7)~THEN BHexxat Vamphe3
~(Sigh) We all serve someone aside <CHARNAME>, don't we?~
DO~SetGlobal("Sanhealhex","GLOBAL",8)~
==Bsandr~You cannot compare my voluntary service to my goddess with the slavery in which your master L holds you.~
==BHexxat~Slavery...I...you...You probably have no idea what you are talking about.~
==Bsandr~You are fully correct. I have no idea by what means L keeps you under his thumb, still I have eyes to see, ears to hear - and a heart that feels that you suffer from it.~
==BHexxat~Talking to you makes it more bearable. Yes, you are a healer. A caring woman.~
==Bsandr~There is a power in the multiverse that can heal a lot of pain. I am not sure it will help your case, however.~
==BHexxat~You talk in riddles.~
==Bsandr~(Laughs) Yes, love is a riddle by itself.~EXIT

CHAIN
IF WEIGHT #-2~Global("Sanhealhex","GLOBAL",9)~THEN BHexxat Vamphe4
~Sandrah, did someone already tell you how beautiful your neckline looks with your hair done up like this?~
DO~SetGlobal("Sanhealhex","GLOBAL",10)~
==Bsandr~Honestly, yes, I heard that before. (Laughs) But it gets a different meaning when receiving such a compliment from a vampire.~
==BHexxat~For a moment I had hoped you might forget about that...~
==Bsandr~For a moment I might have wished I could...~
==BHexxat~And could not a healer like you attempt to end this condition?~
==Bsandr~The method I know to accomplish this would be by driving a wooden stake through your heart. I am not sure this is the solution we both wish for.~
==BHexxat~If one day I would ask you for that *cure*, would you deny it to me? Would you do it out of...love?~
==Bsandr~I would do it - out of mercy.~EXIT

CHAIN
IF WEIGHT #-2~Global("SanVampHex","LOCALS",1) ~THEN BHexxat Vamphwd
~They are not like us...I mean not like me...not natural.~
DO~ SetGlobal("SanVampHex","LOCALS",2)~
==Bsandr~With *natural* you mean those vampires are of a different type than you and others we have met.~
==BHexxat~(Sigh) I know you think of us as being unnatural beings, Sandrah. These creatures here are nothing I recognise of being related to my state.~
==Bsandr~A different *breed* of vampires. This gets interesting.~
==BHexxat~(Sigh) Too bad the vampire next to you never triggered this interest in you.~
==Bsandr~The woman who once was may have done so. To restore her would be a challenge - but I would not do that against her will.~
==BHexxat~Let us solve this riddle at hand. Maybe we can come back to this other topic sometime.~EXIT

REPLACE_ACTION_TEXT  ~renal~ ~SetGlobal("PlayerHasStronghold","GLOBAL",1)~ ~~

EXTEND_BOTTOM Renal 48
IF~InParty("Hexxat") OR(2) Global("PlayerHasStronghold","GLOBAL",1) !Class(Player1,THIEF_ALL) ~THEN DO~AddXPObject(Player1,11375)
AddXPObject(Player2,11375)
AddXPObject(Player3,11375)
AddXPObject(Player4,11375)
AddXPObject(Player5,11375)
AddXPObject(Player6,11375) SetGlobal("RenalJob","GLOBAL",4)~GOTO RenalHex1
END

CHAIN
IF~~THEN Renal RenalHex1
~You may find the reward I am about to offer to be as much a blessing as a curse. I know that I have felt as such on occasion. Listen to what I am about to say.~
=~I require someone to take the position left vacant by Mae'Var. It must be someone I can trust, so they cannot be too mired in the politics of the region.~
=~Your companion Hexxat is qualifying in all ways for such a position and with your guiding hand in the background, she will make our guild prosper.~
==BHexxat~This is a good chance to raise the money we need and get the influence we deserve, <CHARNAME>. I am willing to take on this job if you agree.~
END
++~I will consider your words, Hexxat.~EXTERN Renal 64