BEGIN BLOOMW

CHAIN
IF ~Global("Bloomw","GLOBAL",1)~THEN BLOOMW BloReUn
~O Great Deneir, that is our girl Finch!~
DO~SetGlobal("Bloomw","GLOBAL",8)~
== IF_FILE_EXISTS BSUFINCH ~Clarissa, old bookworm, so good to see you. How is everybody?~
== BLOOMW ~Old bookworm yourself, we are all so busy all the time, nothing has changed at all. But you, what has happened to you in all the time?~
== IF_FILE_EXISTS BSUFINCH ~I am travelling with the party of <CHARNAME>. I have scribbled tomes full of our glorious deeds along the Sword Coast. I am setting up my own library for the people in Nashkel with the help of my friends.~
= ~(Blushes red) I am an adventurer for the good in the name of Deneir now, gone is the old bookworm.~
== BLOOMW ~Wow, you seem to have GROWN a bit, little former bookworm. So you have all this adventures now in your daily life instead of just on paper. But is that not very dangerous?~
== IF_FILE_EXISTS BSUFINCH ~I have to use my cleric skills now and then, yes. But it is worth it for all the knowledge I gain and preserve here on my scrolls.~
== BLOOMW ~How about giving me some to copy them for our own library, Finch?~
== IF_FILE_EXISTS BSUFINCH ~What a great idea. It will spread our knowledge in the name of Deneir. And it will make the names of my friends popular throughout Faerun.~
== BIMOEN2 IF ~InParty("Imoen2") ~THEN ~Wow, <CHARNAME>, we will be heroes in books now! Remember, Finch, I was always nice to you, yes, only goodest things in the book about Imoen the Magnificent...~
== IF_FILE_EXISTS k-roseB  IF~InParty("k-rose") ~THEN ~Our names in books first and then bard songs and stage plays will be made out of this. And the money all comes back to us, hehe.~
== BSandr ~Finch, so you are related to Clarissa Bloomwhiffler, our book merchant. The world is but a small village.~
== BLOOMW ~In deed.~
END
++ ~Nice to meet you, Clarissa, Finch is such a valuable member of our group, your family can be really proud of her. ~+ BloRePr
++ ~Finch, you have warned me about your family already, I hope we can avoid to meet more of this clan here in Waterdeep. Let us move on.~+BloReInp

CHAIN
IF ~~THEN BLOOMW BloRePr
~I will tell that to the rest, thank you, <PRO_SIRMAAM>.~
DO ~ReputationInc(1) EscapeAreaMove("CVEBS1",294,355,5)~EXIT

CHAIN
IF ~~THEN BLOOMW BloReInp
~You are a nasty person, I am sorry for poor Finch for having to endure you.  ~
DO ~ ReputationInc(-1) EscapeAreaMove("CVEBS1",294,355,5)~EXIT

CHAIN
IF ~Global("Bloomw","GLOBAL",2)~THEN Bloomw BloSUQ
~Books for Adventurers, books for mages, bard song books, maps, Bloomwhiffler's has it all!~
== BSandr ~Bloomwhiffler? Do you know by any chance a Finch Bloomwhiffler?~
== BLOOMW ~My name is Clarissa Bloomwhiffler, have you maybe met my wandering cousin during your travels?~
== BSandr IF~Global("SUSanKnowsFinch","GLOBAL",1)~THEN~Oh, yes, she was travelling with our party for some time.~
== BSandr IF~!Global("SUSanKnowsFinch","GLOBAL",1)~THEN~<CHARNAME> has probably met her at Candlekeep before <PRO_HESHE> had to leave there.~
== BLOOMW ~How is the old bookworm doing, where is she now?~
END
IF ~!Dead("Sufinch") ~THEN REPLY~Well, she is setting up a library for the miners of Nashkel in the name of her God Deneir. ~+ BloSUQ1
IF ~Dead("Sufinch") ~THEN REPLY~I am sorry to tell you that Finch has found her death. Not as a bookworm but as a heroic fighter for the good of Faerun. Your family should keep her memory alive like that.~ + BloSuDe

CHAIN
IF ~~THEN BLOOMW BloSuDe
~My, now she is herself a hero in a book she might have liked, poor girl.~
= ~I have got hands on a very rare edition of Monteelah's essay on the Virtue of Wisdom. I know that Finch would be have been dying to get her hands on the tome. Oh my what am I saying there. I'd like to give you the booklet as a token to preserve her memory, will you?~ DO~EscapeAreaMove("CVEBS1",294,355,5)~
END
++~Another piece of crap to fill our backpacks...Fine, fine. (You decide to take the booklet to end this conversation and intend to throw it away when out of sight of Clarissa.)~DO ~GiveItemCreate("SuSaBo",Player1,0,0,0) SetGlobal("Bloomw","GLOBAL",5) RealSetGlobalTimer("BloomwT","GLOBAL",4800) ~EXIT
++~We will keep your gift as well as the memory of a good companion, thank you.~
DO ~GiveItemCreate("SuSaBo",Player1,0,0,0) SetGlobal("Bloomw","GLOBAL",5) RealSetGlobalTimer("BloomwT","GLOBAL",4800) ~EXIT

CHAIN
IF ~~THEN BLOOMW BloSUQ1
~I want to ask you for a favour then, you will probably meet her again on your travels along the Sword Coast.~
= ~I have got hands on a very rare edition of Monteelah's essay on the Virtue of Wisdom. I know that Finch would be dying to get her hands on the tome. Please deliver it to her, so she can use it in her further work for Deneir.~
END
++ ~Do I look like your errand boy? Give it to any ordinary messenger that comes you way. We have more important tasks at hand. ~+ BloSuErr
++ ~Of course, such a worthy and rare tome is save with us. With the bandit threat along the roads, you are wise not to give it to a simple messenger. Be assured that it will get to Finch.~+ BloSuQeY

CHAIN
IF ~~THEN BLOOMW BloSuErr
~Poor Finch, how could she ever have mistaken you for friends!~
DO ~SetGlobal("Bloomw","GLOBAL",5) ReputationInc(-2) CreateItem("SuSaBo",0,0,0) DropItem("SuSaBo",[-1.-1])RealSetGlobalTimer("BloomwT","GLOBAL",4800) EscapeAreaMove("CVEBS1",294,355,5)~EXIT

CHAIN
IF ~~THEN BLOOMW BloSuQeY
~You are really a friend. Give all of the families greetings to Finch together with the book.~
DO ~GiveItemCreate("SuSaBo",Player1,0,0,0) SetGlobal("Bloomw","GLOBAL",5) AddJournalEntry(@111,QUEST) RealSetGlobalTimer("BloomwT","GLOBAL",4800)EscapeAreaMove("CVEBS1",294,355,5)  ~
EXIT

CHAIN
IF ~Global("Bloomw","GLOBAL",3)~THEN BLOOMW BloSUCoI
~Books for Adventurers, books for mages, bard song books, maps, Bloomwhiffler's has it all!~
== BSandr ~Bloomwhiffler? Are you by any chance acquainted with Finch Bloomwhiffler?~
== BLOOMW ~My name is Clarissa Bloomwhiffler, have you maybe met my wandering cousin during your travels?~
== BSandr ~Oh, yes, I met her at Candlekeep a while back, she was copying some of the tomes there.~
== BLOOMW ~A dream come true for her then. Imagine, Candlekeep, all the books, all the knowledge...~
END
++~I had to spent all my life at that boring place, no reason to get enthusiastic.~+ BloSUQ1
++~I called Candlekeep my home but circumstances forced me to leave.~+ BloSUQ1


CHAIN
IF ~Global("Bloomw","GLOBAL",4)~THEN BLOOMW BloSUInB
~Hello again. ~EXIT

CHAIN
IF ~Global("Bloomw","GLOBAL",6)~THEN BLOOMW BloQDone
~Hello again, you have really delivered the book I gave you to Finch, my friends. Everybody in Waterdeep will hear my praise of you, gentle heroes. Here is the original issue of it for your own studies, you deserve to have it. ~DO ~ReputationInc(1)SetGlobal("Bloomw","GLOBAL",7) ~ EXIT

CHAIN
IF ~OR(2) Global("Bloomw","GLOBAL",5) Global("Bloomw","GLOBAL",7)~THEN BLOOMW BloSUInB
~Hello again, my friends. ~
END
++~Greetings, Clarissa, let us take a look at your wares.~DO ~StartStore("CVClar",LastTalkedToBy(Myself))~EXIT
IF~Global("WDFishermen","GLOBAL",3) !PartyHasItem("CVWDFi2") ~THEN REPLY ~Have you heard about a Sea Summoning Scroll by any chance?~+ BloFiMe
IF~InParty("CVSandr") Global("SanKhalBlood","GLOBAL",4) ~THEN REPLY ~Have you ever heard about a book that is called *The Book that Writes Itself*?~+ BlBoowr
++~Hello, little one, we're just passing through.~EXIT

CHAIN
IF ~Global("Bloomw","GLOBAL",8)~THEN BLOOMW BloSuQWF
~Hello again, Finch, good you drop by before the next adventure starts. ~
== IF_FILE_EXISTS BSUFINCH ~Did you find anything useful on my scrolls already, Clarissa?~
== BLOOMW ~Girl, you are joking. Find! There is no need to search for it, it jumps upon you the very instant you start to read. Magnificent!~
== IF_FILE_EXISTS BSUFINCH ~Really, Clarissa?~
== BLOOMW ~Finch, I tell you, you were made for this life and you were made to write about it. Sandrah, excuse me, but if your father had just a little more talent for writing, my what could HE tell the rest of us. But at least we now have Finch to witness and document the deeds of his daughter and of <CHARNAME>, this generation's hero of the Sword Coast.~
== BSandr ~Clarissa, you'd better stop now, or we will all explode from too much pride right here and now. It is nice to be recognised, but it is not really what we are aiming for. And too much publicity may even be dangerous in our case. Please mind that.~
== BLOOMW ~My, my, I see your point. Such is life. There you have a true famous hero in your own family and you are not supposed to tell the world about it. Can't be helped. But then, reading is something to be done alone anyway.~
= ~Which leads me to another topic. Something special for you and your friends, Finch.~
== IF_FILE_EXISTS BSUFINCH ~Do not worry, <CHARNAME>, I WILL CARRY IT. It will not hamper the group in any way. (Laughs silently at her version of a joke.)~
== BLOOMW ~I have got hands on this very rare edition of Monteelah's essay on the Virtue of Wisdom. I know that you would be dying to get your hands on the tome. Please accept the gift for your further work for Deneir.~ DO ~GiveItemCreate("SuSaBo","Sufinch",0,0,0)SetGlobal("Bloomw","GLOBAL",9)AddJournalEntry(@212,QUEST) RealSetGlobalTimer("BloomwT","GLOBAL",4800)~
== IF_FILE_EXISTS BSUFINCH ~I am speechless...~
== BLOOMW ~Do not worry. You have given so much already with your journals of <CHARNAME>'s quest. And you will have more next time you come to Waterdeep. Have a good journey.~
EXIT

CHAIN
IF ~Global("Bloomw","GLOBAL",9)~THEN BLOOMW BloSUInC
~Hello again, my friends. ~
END
++~Greetings, Clarissa, let us take a look at your wares.~DO ~StartStore("CVClar",LastTalkedToBy(Myself))~EXIT  
IF~InParty("CVSandr") Global("SanKhalBlood","GLOBAL",4) ~THEN REPLY ~Have you ever heard about a book that is called *The Book that Writes Itself*?~+ BlBoowr
++~Hello, little one, we're just passing through.~EXIT
IF~Global("WDFishermen","GLOBAL",3) !PartyHasItem("CVWDFi2") ~THEN REPLY ~Have you heard about a Sea Summoning Scroll by any chance?~+ BloFiMe

CHAIN
IF~~THEN  BLOOMW BlBoowr
~A strange name for a book but if such a thing existed it were of great value.~
== BSandr ~From your answer I sense that you have no knowledge about it?~
== BLOOMW ~It sounds like a very magical tome, if it writes itself it must have a topic that is constantly amended by what is going on, right?~
== BSandr ~A valid observation, thanks for now, Clarissa.~
== BLOOMW ~Hey, I know of some very learned old guy who should know about it, he lives just a stone throw up the road from here, hihihi, maybe you know him by chance?~
EXIT

CHAIN
IF~~THEN  BLOOMW BloFiMe
~A strange coincidence, my friends. A mysterious mage sold one to me only a few days ago. I hope nothing is wrong with it? I had my doubts first as I don't want to buy any illegal stuff but then...I know of no one whom the mage might have robbed it from.~
== BSandr ~Do you still have it? That mage might have been one of Khattark's associates.~
==BLOOMW ~Great Deneir!! I had no idea...just look around, it must be on one of the shelves. Please, take it into custody if you find it, I want to have nothing to do with it.~
== BSandr ~Do not worry, Clarissa. It is better you had it secured than those bandits destroyed it. We need it for some task to help Waterdeep's fishermen.~
==BLOOMW ~Puuh, what a relief...my, I'm glad it didn't get me into trouble.~EXIT

