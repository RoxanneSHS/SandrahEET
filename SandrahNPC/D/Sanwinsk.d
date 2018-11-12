//Winski Perorate
BEGIN SANWINSK

CHAIN
IF ~Global("WinskApp1","GLOBAL",2)~THEN SANWINSK WinskiApp1
~Stand!~
DO~SetGlobal("WinskApp1","GLOBAL",3) RealSetGlobalTimer("WiItemR","GLOBAL",1200)~
== BDYNAH  IF~InParty("Dynaheir") ~THEN ~An Othlor? ~
== BMINSC IF ~InParty("Minsc") ~THEN ~A mighty Othlor, see Boo.~
== BSANDR ~A Rashemen wizard?~
== SANWINSK ~So you know what or who I am. Good. That will make everything easier.~
== BSANDR ~Not really. I can see you are a Rashemen wizard, an Othlor, but that explains nothing. What do you want of us?~
== SANWINSK ~Little girl, whoever you are, you have stirred up something you should have left at rest. You are searching for someone who is in turn searching for you - or really for the one you try to ward.~
== BSANDR ~Very good, then maybe we can clarify some things right now.~
= ~Who are you and who is the one who is searching for <CHARNAME>?~
== SANWINSK ~Slowly, little clericgirl. I am the one who asks the questions here. You have found an item that was lost long ago. It has no significance at all, but it may lead you on a trail that is far too dangerous for you. Continue and it will lead to your destruction.~
== BSANDR ~What has Rashemen to do with the events on the Sword Coast? That is very strange, we are not in league with your enemies of Thay.~
== SANWINSK ~Blind stumbling fools that you are. Greater forces than the damned Three and the foolish Wychalarn are at work here. Do not try to stop the rising God. You will be destroyed in due time!~
EXIT

CHAIN
IF ~Global("SanOrDiEarly","GLOBAL",1)~THEN SANWINSK WinskiAppEar2
~You did not heed my warning, <CHARNAME>.~
DO ~SetGlobal("SanOrDiEarly","GLOBAL",2)RealSetGlobalTimer("WiItemR","GLOBAL",1200)~
== BSANDR ~Orloth, you know very well that it is impossible. If you are who I assume you are, then you must know that <CHARNAME> has little choice other than to chase the one you try to protect.~
== SANWINSK ~Ha, and I know who you are, little girl, my divinings have not been in vain, Elminster's daughter!~
== BSANDR ~Right. If you know that, then you are aware that it was him who defeated you last time.~
== SANWINSK ~Defeated me? You know less than you think you know, cleric baby.~
== BSANDR ~You did not get the one whom you were pursuing so hard back then.~
== SANWINSK ~Fool, that was just one of a number of possibilities. Right, I did not get the one your father had shielded already, but what did it matter. There was enough material around to suit me.~
== BSANDR ~I have my doubts you really found what you needed. You are not really the one who controls the current events, I am sure.~
==BDYNAH IF ~InParty("Dynaheir") ~THEN~Thou art the Old One then who set the gnoll troupes against me. I knowest who you are, I witnessed at the trial whence you were exiled from Rashemen.~
== SANWINSK ~YOU! You just blindly stumble around in your limited circles. You have no idea about the global picture at all.~
EXIT

CHAIN
IF ~Global("SanOrDiId","GLOBAL",5)~THEN SANWINSK WinskiApp2
~You again did not heed my warning, <CHARNAME>.~
DO ~SetGlobal("SanOrDiId","GLOBAL",6)RealSetGlobalTimer("WiItemR","GLOBAL",1200)~
== BSANDR ~Orloth, you know very well that it is impossible. If you are who I assume you are, then you must know that <CHARNAME> has little choice other than to chase the one you try to protect.~
== SANWINSK ~Ha, and I know who you are, little girl, my divinings have not been in vain, Elminster's daughter!~
== BSANDR ~Right. If you know that, then you are aware that it was him who defeated you last time.~
== SANWINSK ~Defeated me? You know less than you think you know, cleric baby.~
== BSANDR ~You did not get the one you were pursuing so hard back then.~
== SANWINSK ~Fool, that was just one of a number of possibilities. Right, I did not get the one your father had shielded already, but what did it matter. There was enough material around to suit me.~
== BSANDR ~I have my doubts you really found what you needed. You are not really the one who controls the current events, I am sure.~
== SANWINSK ~YOU! You just blindly stumble around in your limited circles. You have no idea about the global picture at all.~
== BSANDR ~A merchant crisis on the Sword Coast, even a war with Amn, how will they help you in your goal against Rashemen? It all will feed your spawn Sarevok until he is too strong for your leash, even if that is not already the case by now.~
== SANWINSK ~You cannot deny your heritage, I see. You have come far already, I have to admit. You even know about Sarevok. But YOUR spawn seems to be weak enough to be under your control. Still you have come too close now for my liking. It has to end now.~EXIT

CHAIN
IF WEIGHT #-2~Global("ENDOFBG1","GLOBAL",1) InParty("CVSandr") !InParty("dynaheir")
GlobalLT("X#DynaJournal","GLOBAL",9) ~THEN Winski Orlend
~So... you killed him, did you?  I didn't know who would be the victor, but I should have assumed it would be you.  You were the thorn in his side all along, and his victory would have been hollow anyway.~
==CVSandrJ~You had lost him already long ago and with that you had lost whatever plans you once might have had for him.~
==Winski~What a bad joke, priestess...cough...as so many times before you are right - even if you only have vague ideas about the background off those events you are involved in.~
==CVSandrJ~You are right in that I do not know what grudge you bear against your former homeland - it is not even relevant for me or for <CHARNAME>.~
==Winski~Rashemen may have driven me into the shadows, but I have had my revenge. I was Sarevok's mentor, and tutored him in the blackest of rituals. If he were to succeed there is no doubt I would be among the dead, but my name would live on in his wake. ~
=~There are things beyond death if you die in the right fashion, and how could there not be a place in history for the architect that shaped the actions of the ascending Lord of Murder? You would not understand; you were born to affect the Realms. The rest of us must carve our own place by whatever means necessary.~
=~Bhaal has abandoned me as did the Three. Nobody loves traitors. Neither would you, priestess, and your comrades. I do want to die in peace... In peace, Elminster's daughter, not spitting out all I know of my master Bhaal to his foes. I can still send you all to your graves...  ~
=~I call on your blood contract, nabassu, tanar'ri. By your true name, get rid of them, "Aravaata"!~ DO~SetGlobal("X#DynaJournal","GLOBAL",9)
CreateCreatureObjectDoor("X#TANARI",Player1,0,0,0)~EXIT