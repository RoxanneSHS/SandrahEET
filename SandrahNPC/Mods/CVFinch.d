BEGIN CVFINCH

IF~NumberOfTimesTalkedTo(0) ~ THEN BEGIN 0
SAY  ~Let's see... "The Lord of Murder shall perish, but in his death, he shall spawn a score of mortal progeny..." Hmm.~
IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
SAY  ~Ooh! I'm sorry. I wasn't watching where I was going!~
IF ~~ THEN REPLY ~It is of no consequence. What is that you are reciting? It sounds intriguing.~ GOTO 2
IF ~~ THEN REPLY ~Haven't I seen you wandering around Candlekeep the past tenday? Who are you?~ GOTO 4
IF ~~ THEN REPLY ~I suggest you start watching, squirt.~GOTO 5
IF ~~ THEN REPLY~It's okay, Finch, old pal! What's new in the world of literature?~ GOTO 8
END

IF ~~ THEN BEGIN 2
SAY ~Oh, that? I simply scribed the monks' singing. I am fairly certain their words come from the volume of Alaundo's writings inside the citadel.~
IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
SAY ~How I wish I had found the opportunity to study them first-hand this past tenday! Alas, such a rare edition proves popular among the curious. I never had a chance!~ 
IF ~~ THEN REPLY ~If you could not study the rarest books, what did you do instead?~ GOTO 10
IF ~~ THEN REPLY ~Tough break, but I am pleased to meet you! My name is <CHARNAME>. What's yours?~  GOTO 4
IF ~~ THEN REPLY ~You came to Candlekeep to study? On purpose?~ GOTO 11
IF ~~ THEN REPLY ~That was from a book of prophecies? How disappointing. The past and future are inconsequential. I like living in the here and now.~ GOTO 12
IF ~~ THEN REPLY ~That was from a book of prophecies? Yuck. From the way it started, I was hoping for one of those wild stories filled with violence and sex. The best parts of life, know what I mean?~ GOTO 14
END

IF ~~ THEN BEGIN 4
SAY ~I am Finch, Finch Bloomwhiffler. So grand to make your acquaintance! I must say I am truly envious of you having the good fortune to live here in Candlekeep.~
IF ~~ THEN REPLY~Why do you say that? It is a simple walled village, hardly filled with the wonders of cities such as Baldur's Gate or Waterdeep.~  GOTO 17
IF ~~ THEN REPLY ~I cannot imagine why.~ GOTO 17
IF ~~ THEN REPLY ~I agree. The people are kind, if a bit regimented, and the weather is always nice.~GOTO 18
IF ~~ THEN REPLY ~I am a lucky <PRO_MANWOMAN>, yes, but my time in Candlekeep is coming to an end. I have recently gotten word that I must soon take a trip away from here.~GOTO 19
END

IF ~~ THEN BEGIN 5
SAY ~Oh! Oh, I promise that I regret my inattention. I did not meant to cause offense! Please! Accept my apology!~
IF ~~ THEN REPLY ~Do not get so flustered; I should not have made such an issue of a slight bump. Consider it forgotten. Say, what is that you are reciting? It sounds intriguing.~ GOTO 2
IF ~~ THEN REPLY  ~Worry your head no further. I accept your apology. Say, haven't I seen you wandering around Candlekeep the past tenday? Who are you?~ GOTO 4
IF ~~ THEN REPLY ~Oh, it's you, Finch. I did not recognize you with your head out of a book. I thought you were leaving Candlekeep soon, or was that wishful thinking?~ GOTO 7
END

IF ~~ THEN BEGIN 6
SAY ~Hmmph. For all the wealth of books and knowledge Candlekeep has to offer, your manners make me begin to appreciate the end of my pilgrimage here. May Deneir guide my journey so that, if we meet again, you have learned a lesson or two about a kind disposition!~  
IF ~~ THEN DO ~MoveBetweenAreas("BG3357",[515.405],0)~ EXIT
END

IF ~~ THEN BEGIN 7
SAY  ~Hmph. If you must be rude, better to write down your insults for posterity. Then generations can learn how <CHARNAME> was a jerk.~
IF ~~ THEN REPLY ~You try my patience. Move on, little one, lest you want me to kick you out of my way.~GOTO 6
IF ~~ THEN REPLY ~I was just kidding, Finch, old pal! Don't be so sensitive! What's new in the world of literature?~ GOTO 8
IF ~~ THEN REPLY ~Or they can learn just how thin-skinned you can be. You really should spend more time with people and less with books, Finch. Perhaps then, you wouldn't take a joke so seriously.~ GOTO 22
IF ~~ THEN REPLY ~No, I really want to know. When are you leaving Candlekeep? I take a trip soon with my foster father, Gorion. I am anxious to venture outside these walls, but it might be nice to have additional familiar company.~ GOTO 25
IF ~~ THEN REPLY ~No, I really want to know. When are you leaving Candlekeep? I take a trip soon with my foster father, Gorion, and I'd hate to wind up traveling the road alongside a bore like you.~ GOTO 6
END

IF ~~ THEN BEGIN 8
SAY ~I have been scribing the monks' singing, <CHARNAME>. I am fairly certain their words come from the volume of Alaundo's writings inside the citadel.~
=~How I wish I had found the opportunity to study them first-hand this past tenday! Alas, such a rare edition proves popular among the curious. I never had a chance!~
IF ~~ THEN REPLY ~If you could not study the rarest books this tenday, what did you do instead?~ GOTO 10
IF ~~ THEN REPLY ~Those are the breaks! Still, you have managed to add a number of works to your copy book over your visit, correct? I have hardly seen you with your head out of a cloister.~ GOTO 11
IF ~~ THEN REPLY ~I still find it amazing that people like you come to Candlekeep to study on purpose. Lessons are not the same as living, to my mind.~ GOTO 28
IF ~~ THEN REPLY ~Scribing a book of prophecies? How disappointing. The past and future are inconsequential. I like living in the here and now.~ GOTO 12
IF ~~ THEN REPLY ~Scribing a book of prophecies? Yuck. From the way it started, I was hoping for one of those wild stories filled with violence and sex. The best parts of life, know what I mean?~ GOTO 14
IF ~OR(4)
Race([PC],HUMAN)
Race([PC],ELF)
Race([PC],HALFORC)
Race([PC],HALF_ELF) ~ THEN REPLY ~Of course you never had a chance, Finch! You couldn't reach the top shelf!~GOTO 16
END

IF ~~ THEN BEGIN 10
SAY ~Well, I copied a treatise on Tethyrian border history, duplicated a few volumes of Lliiran hymns, and transcribed an entire Hin cookbook with the most illuminating recipe for stewed goat. All things considered, a successful amount of information to share across the land. I have high hopes Deneir will be proud of the efforts of his new initiate, even if I did not copy the entire works of Alaundo.~
IF ~~ THEN REPLY ~Deneir? Who is that?~  GOTO 29
IF ~~ THEN REPLY ~Ah, you are a cleric of Deneir. No wonder you love this place.~ GOTO 33
END

IF ~~ THEN BEGIN 11
SAY ~What else would a cleric of Oghma's Scribe do? The halls of Candlekeep are a paradise for lovers of the written word! Why, in the past tenday, I have copied a treatise on Tethyrian border history, duplicated a few volumes of Lliiran hymns, and transcribed an entire Hin cookbook with the most illuminating recipe for stewed goat. All things considered, a successful amount of information to share across the land. I have high hopes Deneir will be proud of the efforts of his new initiate, even if I did not copy the entire works of Alaundo.~
IF ~~ THEN REPLY ~Deneir? Who is that?~ GOTO 29
IF ~~ THEN REPLY ~Ah, you are a cleric of Deneir. No wonder you love this place.~ GOTO 33
END

IF ~~ THEN BEGIN 12
SAY ~Then how can you possibly learn from your past so as to forge your future? There is more than just this moment, but a legacy a knowledge to be passed down for generations to come!~
=~Ah, enough of my tittering! If you live in the moment, my sentiments are of no consequence to you. I have dallied in Candlekeep longer than I should have in service of my temple, though I am certain Deneir would understand.~
IF ~~ THEN REPLY ~Deneir? Who is that?~ GOTO 29
IF ~~ THEN REPLY ~Ah, you are a cleric of Deneir. No wonder you love this place.~GOTO 33
END

IF ~~ THEN BEGIN 14
SAY ~No, not really. I have seen violence, of course -- one must in the world in which we live. As for the other... I have read things. I do not leave my cloisters much, unless it is a mission of educational importance.~
=~Ah, enough of my tittering! If you appreciate earthly passions so greatly, my faith is of no consequence to you. I have dallied in Candlekeep longer than I should have in service of my temple, though I am certain Deneir would understand.~
IF ~~ THEN REPLY~Deneir? Who is that?~ GOTO 29
IF ~~ THEN REPLY ~Ah, you are a cleric of Deneir. No wonder you love this place.~ GOTO 33
END

IF ~~ THEN BEGIN 16
SAY ~Making sport out of another's race or stature is one of the lowest forms of humor. The shortcomings of that comedic strategy are well-documented in Sir Feliks Jongleur's compendium on the subject, "Funny Stuff, Volumes One through Twenty-Nine and Three-Quarters." I highly recommend them to anyone short on wit.~
IF ~~ THEN REPLY ~Shortcomings? Did you just make a pun?~  GOTO 40
IF ~~ THEN REPLY ~Congratulations. You have succeeded in sucking all sense of humor and fun out of me in five seconds flat.~ GOTO 36
IF ~~ THEN REPLY ~Sir Feliks Jongleur...? Did you just make that up?~ GOTO 44
IF ~~ THEN REPLY ~All right! All right! That was a lame joke! I apologize!~ GOTO 48
END

IF ~~ THEN BEGIN 17
SAY ~The wondrous books! Rows and stacks of scroll casings and leather-bound volumes covering every subject under the sun and stars! I can imagine no greater joy than the opportunity to learn something new with each passing day. Perhaps that explains why I found my heart's home in the service of Deneir.~
IF ~~ THEN REPLY  ~Deneir? Who is that?~ GOTO 29
IF ~~ THEN REPLY~Ah, you are a cleric of Deneir. No wonder you love this place.~ GOTO 33
END

IF ~~ THEN BEGIN 18
SAY ~How could you leave out the wondrous books? Rows and stacks of scroll casings and leather-bound volumes covering every subject under the sun and stars! I can imagine no greater joy than the opportunity to learn something new with each passing day. Perhaps that explains why I found my heart's home in the service of Deneir.~
IF ~~ THEN REPLY  ~Deneir? Who is that?~   GOTO 29
IF ~~ THEN REPLY  ~Ah, you are a cleric of Deneir. No wonder you love this place.~   GOTO 33
END

IF ~~ THEN BEGIN 19
SAY  ~Not as soon as I, I wager. I have dallied in Candlekeep longer than I should have in service of my temple, though I am certain Deneir would understand.~
=~Anyhow, I leave with all haste. I have a list of works needed to establish a new library on the Amnish border. I located a likely seller of one volume in Beregost, so off I go!~
IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
SAY ~Perhaps we shall meet again. I bid you a fair journey!~
IF ~~ THEN DO ~MoveBetweenAreas("BG3357",[515.405],0) ~ EXIT
END

IF ~~ THEN BEGIN 22
SAY ~I enjoy life as I am, <CHARNAME>. Truly, I can imagine no finer occupation than living with my nose in a book! Alas, I have dallied in Candlekeep longer than I should have in service of my temple, though I am certain Deneir would understand.~
=~Anyhow, I leave with all haste. I have a list of works needed to establish a new library on the Amnish border. I located a likely seller of one volume in Beregost, so off I go!~
=~Perhaps we shall meet again. I bid you a fair journey!~
  IF ~~ THEN DO ~MoveBetweenAreas("BG3357",[515.405],0)~ EXIT
END

IF ~~ THEN BEGIN 25
SAY ~I am sorry, <CHARNAME>, but I leave even now. Alas, I have dallied in Candlekeep longer than I should have in service of my temple, though I am certain Deneir would understand.~
=~Anyhow, I have a list of works needed to establish a new library on the Amnish border. I located a likely seller of one volume in Beregost, so off I go!~
=~I do appreciate our brief acquaintance. Perhaps we shall meet again? I bid you a fair journey!~
  IF ~~ THEN DO ~MoveBetweenAreas("BG3357",[515.405],0) ~ EXIT
END

IF ~~ THEN BEGIN 28
SAY ~Yet living without care for the lessons it teaches is a wasted opportunity for wisdom! I can imagine no greater joy than learning something new with each passing day. Perhaps that explains why I found my heart's home in the service of Deneir.~
IF ~~ THEN REPLY ~Deneir? Who is that?~   GOTO 29
IF ~~ THEN REPLY~Ah, you are a cleric of Deneir. No wonder you love this place.~   GOTO 33
END

IF ~~ THEN BEGIN 29
SAY ~Deneir is the Scribe of the Great Oghma, Lord of All Glyphs and Images. How ever did you manage to grow up in a treasure house of such wondrous books and not learn of my deity? Amazing!~
=~I would love to speak on the subject longer. Alas, I have dallied in Candlekeep longer than I should have in service of my temple, though I am certain Deneir would understand.~
=~Anyhow, I leave with all haste. I have a list of works needed to establish a new library on the Amnish border. I located a likely seller of one volume in Beregost, so off I go!~
=~Perhaps we shall meet again. I bid you a fair journey!~
  IF ~~ THEN DO ~MoveBetweenAreas("BG3357",[515.405],0) ~ EXIT
END

IF ~~ THEN BEGIN 33
SAY ~Truly, my brief time here in your home town has been a great joy. I can imagine no finer occupation than living with my nose in a book! Alas, I have dallied in Candlekeep longer than I should have in service of my temple, though I am certain Deneir would understand.~
=~Anyhow, I leave with all haste. I have a list of works needed to establish a new library on the Amnish border. I located a likely seller of one volume in Beregost, so off I go!~
=~Perhaps we shall meet again. I bid you a fair journey!~
  IF ~~ THEN DO ~MoveBetweenAreas("BG3357",[515.405],0) ~ EXIT
END

IF ~~ THEN BEGIN 36
SAY ~Oh, I was actually trying to be funny, myself. I made a pun, you see...? Though not a very good one, I admit. (sigh) I am not very skilled at talking to people.~
=~Alas, I have dallied in Candlekeep longer than I should have in service of my temple, though I am certain Deneir would understand.~
=~I must leave with all haste. I have a list of works needed to establish a new library on the Amnish border. I located a likely seller of one volume in Beregost, so off I go!~
=~Perhaps we shall meet again. Mayhaps I will be more entertaining next time. I bid you farewell!~
IF ~~ THEN DO ~MoveBetweenAreas("BG3357",[515.405],0) ~ EXIT
END

IF ~~ THEN BEGIN 40
SAY ~Yes. I am sorry. Puns are a poor sort of humor, as well. I really should know better. Still, it was fun to talk to you!~
=~Alas, I have dallied in Candlekeep longer than I should have in service of my temple, though I am certain Deneir would understand.~
=~Anyhow, I leave with all haste. I have a list of works needed to establish a new library on the Amnish border. I located a likely seller of one volume in Beregost, so off I go!~
=~Perhaps we shall meet again. I bid you farewell!~
  IF ~~ THEN DO ~MoveBetweenAreas("BG3357",[515.405],0) ~ EXIT
END

IF ~~ THEN BEGIN 44
SAY ~Deneir is the Scribe of the Great Oghma, Lord of All Glyphs and Images. How ever did you manage to grow up in a treasure house of such wondrous books and not learn of my deity? Amazing!~
=~I would love to speak on the subject longer. Alas, I have dallied in Candlekeep longer than I should have in service of my temple, though I am certain Deneir would understand.~
=~Anyhow, I leave with all haste. I have a list of works needed to establish a new library on the Amnish border. I located a likely seller of one volume in Beregost, so off I go!~
=~Perhaps we shall meet again. I bid you farewell!~
  IF ~~ THEN DO ~MoveBetweenAreas("BG3357",[515.405],0) ~ EXIT
END

IF ~~ THEN BEGIN 48
SAY~How nice of you! You can certainly be charming when you choose to be. I am so happy we part on kind terms. I have dallied in Candlekeep longer than I should have in service of my temple, though I am certain Deneir would understand.~
=~Anyhow, I leave with all haste. I have a list of works needed to establish a new library on the Amnish border. I located a likely seller of one volume in Beregost, so off I go!~
=~Perhaps we shall meet again. I bid you farewell!~
  IF ~~ THEN DO ~MoveBetweenAreas("BG3357",[515.405],0) ~ EXIT
END

IF~Global("SURedSheafMeet","GLOBAL",1)Global("Nashtalk","LOCALS",0)~THEN BEGIN 50
SAY~<CHARNAME>! 'Tis a devilish turn of events! Attacked by an assassin in a public house!~
IF~~THEN REPLY~I wish I could say it was my first assassin, but such events grow common for me as of late.~ GOTO 51
IF~~THEN REPLY~Your name is Finch, isn't it? Thank you for your timely assistance. The locals seem happy enough to stand around and gape at strangers being hacked to death. ~ GOTO 51
IF~~THEN REPLY~Hail and well met, Finch! 'Tis good to see you again outside the walls of Candlekeep!~ GOTO 51
END

IF~~THEN BEGIN 51
SAY~'Tis a devilish turn of events when you can see good folk accosted by assassins in a common taproom before you can even have a cup of tea!~
IF~~THEN REPLY~I would not boast of being good folk, but thank you for your assistance, all the same.~GOTO 52
IF~~THEN REPLY~With or without the support of friends and strangers, I can defend myself when needed.~GOTO 52
END

IF~~THEN BEGIN 52
SAY~Don't mind me. I am just having a pot of tea before I set out on the road again. Life as an adventurer: busy, busy!~
=~You remember me? My name is Finch Bloomwhiffler. We met briefly when I visited Candlekeep to study and copy some the the citadel's literature for my temple. I am a Deneirrath, you see, and my god encourages the spread of the written word. ~
=~To that end, I have traveled here. I have a list of works to collect for a new library in Nashkel. With all the focus on the mines there, the people are woefully illiterate. I have my latest pile of books in hand, and I am now free to continue my journey to a rich mansion down there - they volunteered to host my library.~
IF~~THEN REPLY~Good luck and thanks again for your help. Maybe we'll see you again should we come to Nashkel by chance.~DO~SetGlobal("Nashtalk","LOCALS",1)MoveBetweenAreas("BG4804",[300.225],13)~EXIT
END

IF~!PartyHasItem("SuSaBo") Global("Nashtalk","LOCALS",1) ~THEN BEGIN 61
SAY~ Hello, fellow bookworms, how did you fare?~
IF~~THEN REPLY~Hello again, we are just passing through. Maybe there is time to trade some stories some other day.~EXIT
END

CHAIN
IF WEIGHT #-2~PartyHasItem("SuSaBo") Global("Nashtalk","LOCALS",1) ~THEN CVFINCH 62
~ Hello, fellow bookworms, how did you fare?~
DO~SetGlobal("Nashtalk","LOCALS",2)~
==BSANDR~ Finch, you will not believe it, but we have met your cousin Clarissa Bloomwhiffler in Waterdeep.~
==CVFINCH ~ The little old sweet bookworm Clarissa. Just to think I could be like her if I had not gone out to the road. All theories, no practical experience at all.~
== BSANDR ~ Yes, Finch, you have emerged quite a bit. But back to Clarissa, she gave us a book to deliver to you.~ DO ~ TakePartyItem("SuSaBo")  ~
==CVFINCH ~ Great Deneir, it is really Monteelah's famous essay on the Virtue of Wisdom. Excuse me, I have to get back into my shell as a bookworm - (laughs)- at last for a little while. This book is not too thick. It takes mere minutes for me to copy it. Keep the original for your studies, will you.~ DO~EscapeArea()~
== BSANDR ~ (Laughs)~
DO ~ EraseJournalEntry(@111) GiveItemCreate("SuSaBo","Sufinch",0,0,0) SetGlobal("Bloomw","GLOBAL",6) AddexperienceParty(5000) RealSetGlobalTimer("BloomwT","GLOBAL",4800)~ EXIT

