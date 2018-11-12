BEGIN   Capholg

CHAIN
IF~GlobalGT("SanSuBH","GLOBAL",18) Global("SanGetSwill","GLOBAL",0) ~THEN Capholg Swill
~So what, wench, got my refill?~
DO~SetGlobal("SanGetSwill","GLOBAL",1) ~
==CVSandrJ~Ay, Captain, on its way. Say, do me a favour and take a look at mine map meantime.~
==Capholg ~Map, hey, for the finest cap'n' off sea, no problem no, aah...~
==CVSandrJ~Any idea what it is, captain?~
==Capholg ~Any idea where me drinkin' is, gal?~
==CVSandrJ ~Sure, on its way.~
==Capholg ~You said likewise earlier, but I not see it. Kant decipher map with tank all empty, gotme, wench?~
==CVSandrJ~Helps not, <CHARNAME>, we got to find the captain something to drink.~
END
++ ~Oh, no, not another of those run and fetch tasks. I am so tired of that!~+ Swill2

CHAIN
IF~~THEN Capholg Swill2
~Where's my drink, ya said?~
END
IF ~PartyHasItem("sanparc") ~THEN REPLY~Sandrah, can you take a look for some drink in your magic parcel?~EXIT
IF ~!PartyHasItem("sanparc") ~THEN REPLY~I am afraid it looks like we have to find something, unless we find it in our inventories.~EXIT

CHAIN
IF ~Global("SanGetSwill","GLOBAL",1)
OR(7)
PartyHasItem("Misc97")
PartyHasItem("dgxq1")
PartyHasItem("Misc1a")
PartyHasItem("Misc61")
PartyHasItem("Ntpotn03")
PartyHasItem("Ntpotn04")
PartyHasItem("Ntpotn01")~THEN Capholg Readchar
~Aaaaah, good. The map becomes visible, my sweetheart.~
DO~SetGlobal("SanGetSwill","GLOBAL",2) ~
==CVSandrJ~Ay, Captain, any ideas?~
==Capholg ~(Strangely enough the drink seems to have made the captain - sober. He looks very concerned at Sandrah and then at you.)~
=~I will better not ask how you come to possess this map, madam. But you look competent and determined. You know that enourmous dangers lurk for you, probably even death?~
END
++ ~Sandrah, we really should leave this case on its own. I can see no way how we can put his to any good end.~+ ReadcharD1
++ ~Captain, tell us what you know. I grant you, you will not regret your cooperation.~+ ReadcharD2

CHAIN
IF~~THEN Capholg ReadcharD1
~I can see no way out for you, <PRO_LADYLORD>. You know, and probably they know you know. Or at least he knows.~
END
++~Go on, Captain.~+ Readchar2

CHAIN
IF~~THEN Capholg ReadcharD2
~Might as well, as now I am in this just like you are. Probably they know you know, and they know I know. Or at least he knows.~
END
++~Go on, Captain.~+ Readchar2

CHAIN
IF~~THEN Capholg Readchar2
~Monteelah. The island, the mysterious treasure.~
==CVSandrJ ~Ay, Captain, so you know what we know.~
== Capholg ~And I know a little bit more. I know where it is - the island. The deadly trap.~
==CVSandrJ ~You do not look to me like you were one of them, with all respect, sir.~
==Capholg ~(Spits angrily on the ground.) Right you are, lady. But I am a man of the sea and an explorer. Sometimes one finds what he's not supposed to find. Like Glorhan - Zombie Pirate's Island.~
==CVSandrJ ~As you said, we are all in the same boat somehow, we all know about it now. So you might as well tell us the rest.~
==Capholg ~I will tell you, and then we can discuss the way ahead.~
= ~You are aware that Monteelah hid the greatest treasure a pirate has ever gained on that Island, Glorhan, off the routes any decent merchant ships would ever sail. What it really is, nobody but himself knows, but it is clearly more that just mountains of gold and jewellery. Something so precious that he killed his whole crew on that island so only he will know about it.~
==CVSandrJ ~And they are still all out there, zombies by now?~
==Capholg ~You are quite clever, lady. Sure, otherwise you would not have found out so many things already.~
= ~Yes, they are there, killed by him and suffering his curse. They cannot die but are turned to zombies. Zombies cursed to watch over his treasures in the hope he might return to remove their curse and let their souls free. They were the most feared crew of pirates on all seas while alive, and they are now even stronger in their zombie form.~
==CVSandrJ ~We have seen a bit of the power of Monteelah ourselves.~
== Capholg ~Ha, I have not estimated you wrong, lady. So you know he is still alive. And, of course hunting you - and me now as well.~
END
++ ~Sandrah thinks, our only way to get rid of that persecutor is to find his treasure first.~+ Readchar3

CHAIN
IF~~THEN Capholg Readchar3
~Again she is right. I agree to that. So it seems to be clear, you have the map of the island, I know where the island is. We need to arrange for the journey then.~
==CVSandrJ ~You have a ship, captain?~
==Capholg ~I can arrange for some. But we need to be very secret. We can charter no crew, so I will have to do it with you landlubbers. And it will cost.~
==CVSandrJ ~We can surely be your deckhands on that, if you advise us right. We are experienced adventurers even if we are no sailors. But you are acting in your own interest, so why the cost?~
==Capholg ~Lady! I might have been a bit drunk when you found me - but now I am sober. I am a captain of honour and no pirate...~
==CVSandrJ ~I am sorry, captain, I was not trying to insult you.~
==Capholg ~Good. You are right, it is in my own interest as I am in it now same as you. The money is not for me at all. But we need the ship and some equipment. And I need to shake some hands to get the paperwork done secretly and quick.~
==CVSandrJ ~Understood. So, how much are we talking about here?~
==Capholg ~20000 Gold.~
END
IF ~PartyGoldLT(20000)~THEN REPLY ~We do not have the money at the moment. We will come back when we are ready to do the journey~DO~SetGlobal("SanGetSwill","GLOBAL",3) ~EXIT
IF ~PartyGoldGT(20000)~THEN REPLY ~Fine, the money is no problem. But we need some preparations on our own. We will come back when we are ready to do the journey.~DO~SetGlobal("SanGetSwill","GLOBAL",3) ~EXIT
IF  ~PartyGoldGT(20000)~THEN REPLY ~Fine, the money is no problem. The sooner we get this whole thing done, the better. We are ready to go right away.~DO ~
SetGlobal("SanGetSwill","GLOBAL",4)
SetGlobal("SanSuBH","GLOBAL",25) 
TakePartyGold(20000)
ActionOverride("capholg",EscapeArea())
ActionOverride(Player1,LeaveAreaLUA("CVPIR1","",[750.298],2))
ActionOverride(Player2,LeaveAreaLUA("CVPIR1","",[750.298],2))
ActionOverride(Player3,LeaveAreaLUA("CVPIR1","",[750.298],2))
ActionOverride(Player4,LeaveAreaLUA("CVPIR1","",[750.298],2))
ActionOverride(Player5,LeaveAreaLUA("CVPIR1","",[750.298],2))
ActionOverride(Player6,LeaveAreaLUA("CVPIR1","",[750.298],2))
~EXIT

CHAIN
IF ~Global("SanGetSwill","GLOBAL",3) ~THEN Capholg Leave
~I see you are back. Everything is ready, my friends.~
END
++ ~The sooner we get this whole thing done, the better. We are ready to go right away.~DO ~SetGlobal("SanGetSwill","GLOBAL",4) SetGlobal("SanSuBH","GLOBAL",25) TakePartyGold(20000)
ActionOverride("capholg",DestroySelf())
ActionOverride(Player1,LeaveAreaLUA("CVPIR1","",[750.298],2))
ActionOverride(Player2,LeaveAreaLUA("CVPIR1","",[750.298],2))
ActionOverride(Player3,LeaveAreaLUA("CVPIR1","",[750.298],2))
ActionOverride(Player4,LeaveAreaLUA("CVPIR1","",[750.298],2))
ActionOverride(Player5,LeaveAreaLUA("CVPIR1","",[750.298],2))
ActionOverride(Player6,LeaveAreaLUA("CVPIR1","",[750.298],2))
~EXIT

CHAIN
IF ~Global("SanGetSwill","GLOBAL",5) AreaCheck("CVPIR1") ~THEN Capholg waitboat
~Everything is ready, just come on board.~
DO~SetGlobal("SanGetSwill","GLOBAL",6)~
END
++ ~We are sailing out in THIS boat? ~+ waitboat2

CHAIN
IF ~~THEN Capholg waitboat2
~Oh, mercy, landlubbers! This BOAT will take us out to that SHIP which rides at anchor yonder, you see. We don't want to see all prying eyes that we're sailing out, right folks?~
EXIT



CHAIN
IF ~Global("SanGetSwill","GLOBAL",6) AreaCheck("CVPIR2") ~THEN Capholg waitisl
~I will not set a foot on this island. And we cannot leave the ship unattended. I will wait here for your return. Good luck, my friends.~EXIT





