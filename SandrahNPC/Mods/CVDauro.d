BEGIN CVDauro

CHAIN
IF~Global("SanDauroQ","GLOBAL",1)~THEN CVDauro Traceddem1
~Oh, how good to see familiar faces out here in the wilderness!~
DO~SetGlobal("SanDauroQ","GLOBAL",2)~
==BSandr~ You are the paladin we met in Baldur's Gate, the poor and brave man who had to kill the child befallen from a demon. Dauron, was that not your name?~
==CVDauro~ Completely correct, mylady, and I have to thank you kind people again for what you did for me.~
==BSandr~ Have you found a trace of that demonic beast, Dauron, and a chance to regain you honor and reputation?~
==CVDauro~ (The paladin's face brightens for a moment...) Sigh, I hesitate to tell you - but...you have aided me before...~
==BSandr~ We will aid you again if need be and a mistake can be corrected by it.~
==CVDauro~I am relieved to hear these kind words, mylady. I have indeed found a trace of the demon on my persuit of him to Luskan. He has not reached that town yet but is right here in these woods at the moment.~
END
++~That's your chance, man, get out and kill it.~+ Traceddem2
++~Not to insult you, Dauron, you may be courageous but perhaps a bit weak alone against such a creature.~+ Traceddem2

CHAIN
IF~~ THEN CVDauro Traceddem2
~I have seen a glimpse of the beast, my friends. It needs more than one man's courage and sword to defeat the hellish creature.~
==BSandr~ Have you consulted the Temple of Helm in the Northern Citadel nearby?~
==CVDauro~The Citadel has its own problems going on and their current forces are not even enough to defend the place itself should the roaming hordes around here come for an attack. I could get nothing but a few potions and a long sermon of good advice from them.~
==BSandr~ <CHARNAME>, this demon has already destroyed the lives of two children and led to Dauron's fall from Helm's grace. It is on its way to another major city to continue its devilish tricks. Unless we stop it.~
==CVDauro~Mylady, you would not just support this poor fallen paladin in front of you but as you rightfully pointed out, you and your friends are the only ones who could prevent the demon from reaching the Northern Towns.~
END
++~Righteous and pretentious - those paladins! But when the real deeds must be done we are welcome all of a sudden. Fine, fine, just try not to stand in the way while WE do YOUR work.~ + Traceddem3
++~The situation is clear. Just lead on to where you think the foul creature dwells and we will join our forces to defeat it.~ + Traceddem3

CHAIN
IF~~ THEN CVDauro Traceddem3
~ There is a graveyard and a tomb not far away to the north east. The demon has found that place much to his liking and I suspect that he uses his powers to raise some of the fallen from their graves to gather a party of undead thralls.~
==BSandr~ <CHARNAME>, we should act quickly before this force becomes to powerful even for us. I propose you lead us to the lair right now.~EXIT

CHAIN
IF~Global("SanDauroQ","GLOBAL",5)~THEN CVDauro Traceddem4
~The deed is done - thanks to you, my friends.~
DO~SetGlobal("SanDauroQ","GLOBAL",7)~
==BSandr~ What will you do now, Dauron?~
==CVDauro~I will report to the temple in the Citadel so they can send the word back to Baldur's Gate and restore my reputation before Helm. Myself, I will continue on to Luskan and see what could be done to the family of that other girl up there. Farewell, your heroic deeds will grant you Helm's blessing on your further journeys.~
DO~AddexperienceParty(9000) EscapeArea()~EXIT

