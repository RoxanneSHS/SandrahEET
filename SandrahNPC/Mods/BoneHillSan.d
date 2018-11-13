// Lendore + Bone Hill 1
INTERJECT_COPY_TRANS BHPELL 11 BHArrival
== CVSandrJ IF ~InParty("CVSandr") InParty("Imoen2") AreaCheck("bh0100") ~THEN ~Imoen, I am sorry to disappoint you. Lendore, although far in the south, has not really beaches to lie on. I was disappointed myself, when my father first took me here.~DO ~RealSetGlobalTimer("BH1EvenT","GLOBAL",345) ~
==IMOEN2_ IF ~InParty("CVSandr") InParty("Imoen2") AreaCheck("bh0100") ~THEN ~Puuh, then let's finish this thing here quick. Never any fun for us. An island without beach, who makes such silly landscapes, ha? We coulda stayed at Candlekeep looking at a cold uninviting sea all day.~
== BHPELL  ~Sandrah, Sandrah. And now accompanied by such a lively redhead. One will see what that means for the quietude of our island...~
END

INTERJECT_COPY_TRANS BHFABIO 0 SanFab1
== CVSandrJ IF ~InParty("CVSandr") ~THEN ~Did you have much success then in Ankhapur and Hlondeth, Fabio? At least you returned savely.~
==BHFABIO IF ~InParty("CVSandr") ~THEN ~I have never been to...little Sandrah?..eh...~
== CVSandrJ IF ~InParty("CVSandr") ~THEN ~Little angry Sandrah with a mighty angry hammer in her hand. So, you have never made it to Ankhapur, I guess - nor to any other place outside of this tavern!~
==BHFABIO IF ~InParty("CVSandr") ~THEN ~I-I-I was about...believe me..Oh, no, you won't believe me any more, I guess...~DO ~SetGlobal("SanFab2","GLOBAL",1)~
== IMOEN2_ IF ~InParty("CVSandr") InParty("Imoen2")~THEN ~So you know some more people on this island, Sandrah?~
END

INTERJECT_COPY_TRANS BHGRELUS 4 Sangrel
== CVSandrJ IF ~InParty("CVSandr") ~THEN ~Greetings, Baron Grellus.~
== BHGRELUS IF ~InParty("CVSandr") ~THEN ~What a pleasant surprise, Sandrah. My, you are really growing to be an extraordinary beauty, little one. And not only that, it seems.~
== CVSandrJ IF ~InParty("CVSandr") ~THEN ~It came a bit of a surprise to me to find myself back here in the island again.~
== BHGRELUS IF ~InParty("CVSandr") ~THEN ~Pelltar mentioned that he was looking for help from a party recommended by Elminster himself, but he had not reported that you would be with them yourself. So I rest assured that the problems of our little community are well dealt with. Good luck, my friends.~
== CVSandrJ IF ~InParty("CVSandr") ~THEN ~(The Baron leans towards Sandrah and places a kiss on her cheek before returning to business.)~
END

INTERJECT_COPY_TRANS BHFAIR 0 Sanfair
== BHFAIR IF ~InParty("CVSandr") ~THEN ~And the sweet little Sandrah has returned. Now, sweetheart, are you trying again to provide our boys and men with sleepless nights. I can still hear their lovesick moaning at the moon from your last visit, hahaha.~
END

INTERJECT_COPY_TRANS BHFELWIN 1 amosbew
== BHFELWIN IF ~InParty("CVSandr") ~THEN ~Oh, beware, my Amos, where is he, I have to keep him out of sight from you.~
== CVSandrJ IF ~InParty("CVSandr") ~THEN ~Please, Felwin, calm yourself, I have never done anything wrong to your Amos.~
== BHFELWIN IF ~InParty("CVSandr") ~THEN ~Sandrah, I am not accusing YOU of anything. It is just - hm - your being around seems to be just enough to get the whole male population of this islands go out of bounds. You do not even need to do anything at all, but they just follow you like a pied piper.~
== CVSandrJ IF ~InParty("CVSandr") ~THEN ~Then it probably makes little sense if I openly proclaimed that my heart is not free and any attempts are in vain. The only comfort I can give you is that it is just a temporary thing. We will leave as soon as we have done our investigation for Pelltar.~
END


//Sir Billy Bob

INTERJECT_COPY_TRANS BHBBOB 4 BHBBSan
== CVSandrJ IF ~InParty("CVSandr")~THEN ~Hello, Uncle Billy Bob, or is it Sir Billy Bob now. ~
== BHBBOB IF ~InParty("CVSandr")~THEN ~Oh, talking of Elminster and voila. Welcome, little Sandrah, or is it Lady Sandrah now? ~
== CVSandrJ IF ~InParty("CVSandr")~THEN ~(Gives Billy Bob a kiss on the cheek) I am still Sandrah for you, Uncle Billy Bob?~DO ~IncrementGlobal("ElmHint","GLOBAL",1) ~
END

// Meet Pelltar
CHAIN
IF ~Global("SanPellQ0","LOCALS",1)~THEN CVSANDRJ MeetPell
~Pelltar? Pelltar of Lendore Island?~
DO~SetGlobal("SanPellQ0","LOCALS",2) ~
== BHPELL  ~Sandrah? Sandrah of Waterdeep? What are you doing here on the Sword Coast?~
== CVSandrJ ~I was about to ask you the same. I travel with <CHARNAME> of Candlekeep.~
== BHPELL  ~What a coincidence! <CHARNAME> was exactly the person that was recommended to me to seek out for the purpose for which I came to the Sword Coast. I seek the help of a competent party such as yours.~
== BIMOEN IF ~InParty("Imoen2") ~THEN ~Great, <CHARNAME>, we are famous even in places like Lendore...where is that, by the way?~
END
++ ~Sounds like we have gained ourself a name already.~EXTERN BHPELL 1
