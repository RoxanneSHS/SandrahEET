BEGIN CVSamhu

CHAIN
IF~NumTimesTalkedTo(0)~THEN CVSAMHU hints
~ Ahhh! (The turmoil of the battle has brought the wounded man back to consciousness.)~
==CVSandrJ ~ (Your healer casts a quick spell on the man to ease his visible pains.)~
==CVSAMHU~ -cough- -cough-  Who... are you.  Where is Lena.  -cough-.  Uhhhhh.?~
==CVSandrJ ~Lena is save, do not worry. We will take you to the temple of Wisdom as fast as we can. All will be well.~
==CVSAMHU~ Nothing will be well as long as corruption rules the Flaming Fist..cough.~
==CVSandrJ ~ You must not agitate yourself, your wounds will open again.~
END
++~Can you do not more for him, Sandrah, he suffers badly?~+ hints2
++~Oh, Sandrah, just cast sleep on him. If we are to carry him all that length he needs to keep still else he'll attrack every bandit and fist along the road.~ + hints2

CHAIN
IF~~THEN CVSAMHU hints2
~Cough...~
==CVSandrJ ~I am doing what is possible here in the field. We must bring him to the temple where he can get the rest and care he needs.~
==CVSAMHU~ Beware of the Flaming Fist...are no longer a force of law and order...Angelo Dosan has sold them to the service of the Iron Throne...~
==SHARTJ IF~InParty("SHARTEEL")~ THEN~ Ah, the maggot, the scumbag - that's how the *great hero* ends, a bloody traitor.~
==CVSAMHU IF~InParty("SHARTEEL")~ THEN~ You must hate him worse than I do for what he did to me.~
==SHARTJ IF~InParty("SHARTEEL")~ THEN~That's nothing compared to what he did to me, the scoundrel who copulated with that whore who called herself my mother.~
==CVSAMHU IF~InParty("SHARTEEL")~ THEN~ You are his daughter? Poor girl, you suffer indeed worse than me.~
==BDCorwiJ IF~InParty("Corwin")~ THEN~ Our suspicions were correct, damn it. That weasel Dorsan, Scar already suspected him. I didn't trust myself in his case, this man just turns my stomach. Good to know that my guts told me the truth.~
==CVSAMHU IF~InParty("Corwin")~ THEN~ You're Schael Corwin...cough...make sure Scar's warned...~
==CVSandrJ ~You should not lose more strength in talking, friend. Sleep now. (She casts *sleep* on her patient.)~
==CVSAMHU~ Beware of the traitors...*snooze*~ DO~ DestroySelf()~EXIT


EXTEND_BOTTOM Flam4 3
  IF ~  PartyHasItem("MISC13L")
~ THEN UNSOLVED_JOURNAL ~Flaming Fist deserter.

A Flaming Fist soldier told us that there was a reward out for a man who deserted his unit.  The reward is for 50 gold, and the man's name is Samuel.~ GOTO 43
END

ADD_TRANS_TRIGGER Flam4 8
~!PartyHasItem("MISC13L")~

EXTEND_BOTTOM Flam4 8
  IF ~  PartyHasItem("MISC13L") ~ THEN REPLY ~Okay, bye.~ GOTO 41
  END

ADD_TRANS_TRIGGER Flam4 10
~!PartyHasItem("MISC13L")~

EXTEND_BOTTOM Flam4 10
  IF ~  PartyHasItem("MISC13L") ~ THEN REPLY ~Okay, we do have Samuel.  Take him and give us our 50 gold.~ GOTO 40
  IF ~PartyHasItem("MISC13L")~ THEN REPLY  ~You'll have to take him by force.  Sorry.~ GOTO 42
END

APPEND Flam4
IF WEIGHT #2
~  PartyHasItem("MISC13L")
~ THEN BEGIN 39
  SAY~So we meet again.  Sorry, but I don't... hey, who are you carrying there?~
  IF ~~ THEN REPLY ~It's one of our companions; he was wounded.~ GOTO 10
  IF ~~ THEN REPLY ~A hobgoblin we killed.  We think he's a member of the Chill, so we're taking him back to Beregost for identification.~  GOTO 10
  IF ~~ THEN REPLY  ~He's a merchant we found.  His caravan was attacked by bandits, and he was badly wounded.  He paid us to take him back to Beregost.~  GOTO 11
  IF ~~ THEN REPLY ~This is Samuel.  We want to turn him in for the 50 gold.~ GOTO 40
  IF ~Global("X#KivanSamuel","GLOBAL",0) InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("X#KivanSamuel","GLOBAL",1)~ EXTERN ~KIVANJ~ 218
IF~InParty("jaheira") InMyArea("jaheira") StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN EXTERN ~BJAHEI~ 294
END

IF~~THEN BEGIN 40
SAY~Good job, here's your reward.~
  IF ~~ THEN DO ~TakePartyItem("MISC13L") ReputationInc(-2) IncrementGlobal("Sanpoints","GLOBAL",-7)
GivePartyGold(50)
EraseJournalEntry(106102)
EraseJournalEntry(106103)
~ SOLVED_JOURNAL  ~Flaming Fist deserter.

I turned Samuel in to the Flaming Fist soldier, and got a paltry 50 gold for it.  Hell, might buy me a sword...~  EXIT
END

IF~~THEN BEGIN 41
SAY~But...hey, who are you carrying there?~
  IF ~~ THEN REPLY ~It's one of our companions; he was wounded.~ GOTO 10
  IF ~~ THEN REPLY ~A hobgoblin we killed.  We think he's a member of the Chill, so we're taking him back to Beregost for identification.~  GOTO 10
  IF ~~ THEN REPLY  ~He's a merchant we found.  His caravan was attacked by bandits, and he was badly wounded.  He paid us to take him back to Beregost.~  GOTO 11
  IF ~~ THEN REPLY ~This is Samuel.  We want to turn him in for the 50 gold.~ GOTO 40
  IF ~Global("X#KivanSamuel","GLOBAL",0) InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("X#KivanSamuel","GLOBAL",1)~ EXTERN ~KIVANJ~ 218
IF~InParty("jaheira") InMyArea("jaheira") StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN EXTERN ~BJAHEI~ 294
END

IF~~THEN BEGIN 42
SAY~I'd rather not...you seem to be determined to prove your point by all means.~
IF~~THEN DO~EscapeAreaDestroy(15) AddexperienceParty(900)~EXIT
END

IF ~~ THEN BEGIN 43
  SAY ~Actually, I just wanted to ask you one question.  Who is it that you have with you?~
  IF ~~ THEN REPLY~It's one of our companions, he was wounded.~ GOTO 11
  IF ~~ THEN REPLY  ~A hobgoblin we killed.  We think he's a member of the Chill, so we're taking him back to Beregost for identification.~ GOTO 10
  IF ~~ THEN REPLY ~He's a merchant we found.  His caravan was attacked by bandits, and he was badly wounded.  He paid us to take him back to Beregost.~  GOTO 11
  IF ~~ THEN REPLY ~This is Samuel.  We want to turn him in for the 50 gold.~ GOTO 40
END
END
