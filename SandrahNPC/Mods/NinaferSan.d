CHAIN
IF WEIGHT #-11~Global("SanNinaf","GLOBAL",1)~THEN BCMNINAF TwoMyst1
~Would you allow me to join you in your evening prayer to our goddess, Sandrah?~
DO~SetGlobal("SanNinaf","GLOBAL",2) RealSetGlobalTimer("SanNinaInT","LOCALS",1800)~
==BSandr~My eve...oh...~
==BCMNINAF~I apologise, I thought that's what you were preparing for when I saw that you were just sitting down with your tome. But silly elf I am, a priestess of your rank surely needs no book for her prayers.~
==BSandr~To avoid misunderstanding, my friend, I have no intention to reject your good intention - simply...I never pray to our Mystra.~
==BCMNINAF~You...what? But, but the canon of our faith? Do not the rules apply to all her servants, even the high and mighty ones?~
==BSandr~Canon? Rules? Ranks? We surely had different lecturers and advisors that helped us to become Mystra's servants.~
==BCMNINAF~Either mine were really strict or yours very lax, it seems.~
==BSandr~(Smiles) I was taught that Mystra does not like The Weave to be abused by evil doers with their abusing magic, but she cannot really do anything about in sake of the other gods. She relies on her followers to do such at her behalf. To avoid permanent brawl among the Gods and even with AO she did not specify rules to observe but rather gave us examples throughout the ages.~
==BCMNINAF~(Cheerfully) My preferred one has always been Elminster!~
==BSandr~Then we are definitely following the same codex, Nina.~
==BCMNINAF~Pooh, I am so reliefed, you really shocked me for some moments. So whom are you following?~
==BSandr~Midnight, the woman she was during her adventuring days. But let us continue that on another eve, otherwise it will get too late for YOUR prayers. Goodnight, my friend.~
DO~RestParty()~EXIT

CHAIN
IF WEIGHT #-12~ Global("SanHealNina","GLOBAL",3)~THEN BCMNINAF SanNinaPH
~You are blessed by our Mystra with those skills that can actively repair what was destroyed. I envy you for this nearness to the Weave's power, I wish I could do so much good. ~
DO~ SetGlobal("SanHealNina","GLOBAL",4)RealSetGlobalTimer("SanNinaInT","LOCALS",1800)~
==BSandr~It was the healing aspect that finally made me become her priestess. Without this blessing my choices in life might have been quite differently.~
==BCMNINAF~I have already noticed we are quite different in our education and the way we look at our Goddess. She has many ways to make her plans work out.~
==BSandr~(Laughs) Her plans? You are right we are quite different.~
==BCMNINAF~Had I not been witness to the countless deeds you do in Mystra's name I would call you a heretic, really! Of course, Her plans.~
==BSandr~Probably both our education is not yet finished. For myself I have already declared that learning will take all our lifetime - regardless if we talk of elven or human lifespan. I have made my experience with paladins of the various gods. You would make one of Mystra, while I tend to think that such a constellation as Paladin of Mystra cannot exist by definition. But I do not claim to be right all of the time.~
==BCMNINAF~I would object that it does exist and that you are one without knowing it - or without accepting the fact for some stubborn reason I still need to find out.~EXIT

CHAIN
IF WEIGHT #-13~Global("SanNinaf","GLOBAL",3)~THEN BCMNINAF TwoMyst2
~May I have some of your time apart from the others, please, Sandrah?~
DO~SetGlobal("SanNinaf","GLOBAL",4) RealSetGlobalTimer("SanNinaInT","LOCALS",3600)~
==BSandr~ Sure.~
==BCMNINAF~You know <CHARNAME> for so much longer, you have been through the Sword Coast adventures together, despite the facts that you swore loyalty to Mystra and <CHARNAME> is a Bhaalspawn.~
==BSandr~Add the fact that Bhaal insaminated my own mother with one of his children and thus murdered her in childbirth, Nina. Yes, the constellation is unlikely at first glance - yet, here you are yourself in the same company.~
==BCMNINAF~Bhaal murdered your mother? Good to know, it makes my talk a bit easier. I trust on your confidence in Mystra's name.~
==BSandr~I am loyal to <CHARNAME> and we love each other, take this into account as well before you decide to continue.~
==BCMNINAF~Duty directs me to go ahead. You have assessed <CHARNAME>'s characted and alignment by the past deeds. You have been a closer witness than anyone else as to the underlying motifs and I trust your judgement not to be blinded by your feelings.~
==BSandr~(Nods in agreement.)~
==BCMNINAF~You came to <CHARNAME>'s side for some purpose, even before you discovered your love, isn't it so? I wonder if we have some common goal to do such and we need to share it for our goddess.~
==BSandr~I see it was not chance that brought you to this party...Well...I told you about my loyalties - on the other hand I have nothing to hide, Mystra or no Mystra...~
==BCMNINAF~Puuh..!~
==BSandr~Calm down - what do you know about Aloundo?~
==BCMNINAF~That prophet? Well, it has to do with the Bhaalspawns and a fight over the God of Murder's heritage and such - great destruction and bloodshed.~
==BSandr~I see. Before we can come to the subject of your interest there need to come a few more sessions from the history department on the next rests. Without background knowledge you cannot understand what you are involved in here.~EXIT

CHAIN
IF WEIGHT #-14~Global("SanNinaf","GLOBAL",5)~THEN BCMNINAF TwoMyst3
~After what we have studied together, now tell me honestly, do you think <CHARNAME> is the one to prevent Bhaal's return?~
DO~SetGlobal("SanNinaf","GLOBAL",6) RealSetGlobalTimer("SanNinaInT","LOCALS",1800)~
==BSandr~ I am sure that <PRO_HISHER>'s role is a very important one in those events to come, Nina. From the potential I have witnessed and also the rapid way the abilities are developping it points to the one you have identified.~
==BCMNINAF~ Your reason to be by <PRO_HISHER>'s side is this?~
==BSandr~ It is Mystra's ultimate goal to prevent the return of the one she once aided to remove. The one to threaten the Weave should he get another chance.~
==BCMNINAF~ This motivation would still be applicable if <CHARNAME> would fail - or not be the one you assumme at all...~
==BSandr~Yes.~
==BCMNINAF~With all the possible implications?~
==BSandr~Yes.~
==BCMNINAF~May Mystra bless you, Sandrah!~
==BSandr~She does - every day.~EXIT