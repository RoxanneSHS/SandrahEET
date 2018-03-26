BEGIN SHAUGUA

CHAIN
IF ~ Global("SanSharkta","GLOBAL",14) ~ THEN SHAUGUA Godchild1
~ You have come here at last, mortal.~
DO~ SetGlobal("SanSharkta","GLOBAL",15)~
== BSHAUHA ~ Have you expected me, Guardian?~
== SHAUGUA ~ I have expected one godchild, I felt it would come, but not many.~
= ~ You are fearless, mortal girl, to enter Sharkta Fai alive. You cannot leave other than by the portal behind me.~
== BSHAUHA ~ Guardian, I have brought you the body of this mighty hero. You must know him, he was a true servant. He has brought many of our Clan to your threshold. Today is his time to make the journey.~
== SHAUGUA ~  Can you witness his deeds? Has he fallen in fearless battle?~
== BSHAUHA ~ I witness that, Guardian. He gave his life so that mine could continue.~
== SHAUGUA ~ I take him then. If he gave his life for yours, then today is not the day for you to give yours. He has paid for your way to continue. Leave now!~
== BSHAUHA ~ Wait, Guardian. Why did you call me a godchild again? What do you know about me? Am I not orc?~
== SHAUGUA ~ I give you your way to continue, child. Use it well. Use it to find your answers. Use it with the one I sense present here as well. It is time to go.~
EXIT

CHAIN
IF~Global("SanHintFactory","GLOBAL",15)~ THEN SHAUGUA ComeForEnd1
~And so the godchild has finally found <PRO_HISHER> way to this station of your way. I welcome you, my redeemer.~
=~(The creature leans towards Sandrah.) You have guided well, as a daughter of the long line was expected to do.~
DO~SetGlobal("SanHintFactory","GLOBAL",16)~
==CVSandrJ~ I have heard me named in a lot of ways before but not like this. You have expected a descendent of Midnight and a Bhaalspawn to come. It is redemption you expect from us?~
== SHAUGUA ~ Midnight? I know her not...you...follow Mystra...no one else was supposed to come...~
==CVSandrJ~I am Mystra's priestess and you are correct in that <CHARNAME> was sired by Bhaal. From your words I deduct that you have nothing to do with the activities of this place.~
END
++~Are you a prisoner here?~ + ComeForEnd2
++~Be quick to tell us what all of this about - if you hope to receive any mercy from us.~+ ComeForEnd2

CHAIN
IF~~ THEN SHAUGUA ComeForEnd2
~I have become a prisoner of the new master in the place once given to me by the god I have truely served.~
==CVSandrJ~Myrkul is dead, he has left you long ago.~
== SHAUGUA ~I know that and I know that I have been forsaken and cursed by him to this existence. Unable to follow him, supposed to be waiting for a dead god who will not return.~
==CVSandrJ~You were forced to keep up the facade of the door to the other world for the world outside.~
== SHAUGUA ~I am cursed with a hunger that cannot be saturated to keep me from the death I so desire.~
==CVSandrJ~You claimed not to know Midnight, the one who has slain the dead god you follow.~
== SHAUGUA ~Aaah, the light at the end of my endless sufferering - know this, I was left here to do Myrkul's work long before my master fell, thus I know not of who ended his existence.~
=~ But you claimed to be of her descendance, priestess...do for me what the one before you did for Myrkul.~
END
++~She may grant you that, Watcher, provided you cooperate in telling us about that new master who rules here now.~+ ComeForEnd3

CHAIN
IF~~ THEN SHAUGUA ComeForEnd3
~A dark wizard from the east, corrupted by a knowledge of the Dark Weave. He needs what Myrkul had needed, the souls of the fallen - only he will not wait until the harvest is brought to him, he wants to reap himself.~
==CVSandrJ~Szass Tam uses the power of the Dark Weave here on the primary plane!! <CHARNAME>, we must end this quickly - this usurper has no idea what he is causing.~
== SHAUGUA ~He is not attempting to follow the fallen god...~
==CVSandrJ~Oh, no, he wants much more...Where do we find him?~
== SHAUGUA ~ He took my former habitation in the north east of these caves. You need my wardstone to enter it. I doubt that you can even get near to him, shielded by his Dark Matter he brought down here, I wish you could...~ DO~ GiveItemCreate("CVDaWard","CVSandr",0,0,0)~
==CVSandrJ~I will now do for you what my grandmother Midnight did for Myrkul.~
== SHAUGUA ~ Your grandmother - I see. I welcome my end.~ DO~ CreateVisualEffectObject("SPHOLY","CVSandr") Kill("Shaugua")~EXIT
