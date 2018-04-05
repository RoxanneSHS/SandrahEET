BEGIN SANSUWL


CHAIN
IF ~ Global("SanSuBH","GLOBAL",1)~ THEN SANSUWL SuBH1
~ Ah, booklovers where one would hardly expect them. And interested in advanced questions of philosophy as I can see.~
DO ~ SetGlobal("SanSuBH","GLOBAL",2) RealSetGlobalTimer("BloomwT","GLOBAL",6000)~
== IF_FILE_EXISTS BSUFINCH IF~ InParty("Sufinch") ~ THEN ~ You can see a lot of things by just looking at people for a glance, or do you know us, sir?~
== BSANDR IF ~ !InParty("Sufinch") ~ THEN ~ You can see a lot of things by just looking at people for a glance from the outside, or do you know us by any chance?~
== SANSUWL ~ A mutual friend has provided me with the information, that you are an adept of the philosophy of the Great Monteelah, and you may even be in the possession of one of his rare writings.~
== IF_FILE_EXISTS BSUFINCH IF~ InParty("Sufinch") ~ THEN ~ Rare the writings are, but I have never heard him be named *the Great*. Not to insult a devoted follower, if one you may be, but he is normally addressed rather as *the mad*, *the weird* or *the absurd*. ~
== BSANDR IF ~ !InParty("Sufinch") ~ THEN ~ I heard him named *the mad*, *the weird* or *the absurd*, but never before *the Great*. You must be a devoted follower to use this phrase, or you are simply a liar jumping here out of the bushes with your croonies and trying to talk with us about a subject you do not know anything about.~
END
++ ~ What did you say the name of our *friend* was?~ + SuBH12
++ ~ I guess you are addressing the wrong people. I am no adept of any Monty, be he mad, great or whatever. I propose to let us continue our way in peace.~ + SuBH13
++ ~ We are on the road long enough to smell a rat from a mile away. Who are you really and why are you holding us up?~ + SuBH12

CHAIN
IF ~~ THEN SANSUWL SuBH12
~ Peace, my friends, book-lovers like us should deal with each other in a civilized way. All we are interested in is a small booklet that you may carry with you.~
== IF_FILE_EXISTS BSUFINCH IF~ InParty("Sufinch") ~ THEN ~ Oh, we can easily help you, good man. I always make my own copies of any valuable book, just in case, you know. I can give you my transcription of the Monteelah for your studies~ 
== BSANDR IF~ !InParty("Sufinch") ~ THEN ~ (Bluffs) Rare tomes like that are not subjects to be carried across the country in a backpack. However we can offer you this transcription I have made before we left the original at the library in Nashkel.~
END
++ ~ The real enthusiast will find the toom at the Nashkel library. So hopefully our copy will be sufficient for you.~ + SuBH13
++ ~ What is your answer? Will we part peacefully?~ + SuBH13


CHAIN
IF ~~ THEN SANSUWL SuBH13
~ You are LIARS. The toom is much more than the idiot babbling on its pages and you know it just too well. For our purpose no cheap copy will do and you know that well. Hand it over NOW!~
END
++ ~ An interesting argument from a real devotee of philosophy. But I guess we have run out of time to discuss this any further.~   + SuBH14
++ ~ As the philosopher said *the right piece of knowledge at the right place and the right time can make anything possible, but in real life the coincidence of such a situation is very rare.* Right he was, as this is the wrong place and the wrong time for you - and knowledge you possess none.~ + SuBH14

CHAIN
IF ~~ THEN SANSUWL SuBH14
~ You had your chance and you missed it. Which philosopher said that? Guess it was me.~ EXIT
  
CHAIN
IF ~ Global("SanSuBH","GLOBAL",6)~ THEN SANSUWL SuBH20
~ You still keep the book we asked you about in a friendly way before. Deliver it now before more blood will be flowing.~
DO ~ SetGlobal("SanSuBH","GLOBAL",7)~
== BSANDR ~ The bloodshed was started by your side, and the asking was all but friendly. You never gave us any reason to consider your request.~
== SANSUWL ~ Stubborn, stubborn. It is just a bit of paper covered with a fool's babbling.~
END
++ ~ And your companions and you are willing to give and take lives for this bit of paper. We get nowhere with this type of discussion.~ EXIT

